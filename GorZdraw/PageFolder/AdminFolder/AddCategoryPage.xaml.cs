using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
    /// Логика взаимодействия для AddCategoryPage.xaml
    /// </summary>
    public partial class AddCategoryPage : Page
    {
        public AddCategoryPage()
        {
            InitializeComponent();
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
                AddCategory();
                MBClass.InformationMB("Категория добавленна");
                NavigationService.GoBack();
            }
        }
        private void AddCategory()
        {
            DBEntities.Getcontext().Category.Add(new Category()
                {
                NameСategory = CategotyTb.Text
                });
            DBEntities.Getcontext().SaveChanges();
        }
    }
}
