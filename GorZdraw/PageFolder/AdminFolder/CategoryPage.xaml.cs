using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using GorZdraw.PageFolder.StaffFolder;
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
    /// Логика взаимодействия для CategoryPage.xaml
    /// </summary>
    public partial class CategoryPage : Page
    {
        public CategoryPage()
        {
            InitializeComponent();
            CategoryDG.ItemsSource = DBEntities.Getcontext().Category.ToList().
                OrderBy(c => c.IdСategory);
        }

        private void BacBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (CategoryDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите категорию для удаления");
            }
            else
            {
                try
                {
                    Category category = CategoryDG.SelectedItem as Category;
                    if (MBClass.QestionMB($"Удалить выбранную категорию?"))
                    {
                        DBEntities.Getcontext().Category.Remove(category);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            Category category = CategoryDG.SelectedItem as Category;
            VariableClass.IdCategory = category.IdСategory;
            this.NavigationService.Navigate(new EditCategoryPage(CategoryDG.SelectedItem as Category));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddCategoryPage());
            Ref();
        }
        private void Ref()
        {
        CategoryDG.ItemsSource = DBEntities.Getcontext().Category.ToList().
            OrderBy(c => c.IdСategory);
        }
    }
}
