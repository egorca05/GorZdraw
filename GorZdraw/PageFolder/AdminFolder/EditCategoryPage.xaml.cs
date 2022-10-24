using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для EditCategoryPage.xaml
    /// </summary>
    public partial class EditCategoryPage : Page
    {
        public EditCategoryPage(Category Category)
        {
            InitializeComponent();
            DataContext = Category;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(CategotyTb.Text))
            {
                MBClass.ErrorMB("Введите название");
                CategotyTb.Focus();
            }
            else
            {
                Category category = DBEntities.Getcontext().Category
                 .FirstOrDefault(s => s.IdСategory == VariableClass.IdCategory);
                category.NameСategory = CategotyTb.Text;
                DBEntities.Getcontext().SaveChanges();

                MBClass.InformationMB("Успешно");
                NavigationService.GoBack();
            }
        }
    }
}
