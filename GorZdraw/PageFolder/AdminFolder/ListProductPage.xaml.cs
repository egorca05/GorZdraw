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
    /// Логика взаимодействия для ListProductPage.xaml
    /// </summary>
    public partial class ListProductPage : Page
    {
        public ListProductPage()
        {
            InitializeComponent();
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList()
                .OrderBy(c => c.IdProduct);
        }

        private void CategoryBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new CategoryPage());
            Ref();
        }

        private void Ref()
        {
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList()
                .OrderBy(c => c.IdProduct);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ProductDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите препарат для удаления");
            }
            else
            {
                try
                {
                    Product product = ProductDG.SelectedItem as Product;
                    if (MBClass.QestionMB($"Удалить выбранную категорию?"))
                    {
                        DBEntities.Getcontext().Product.Remove(product);
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

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddProductPage());
            Ref();
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            Product product = ProductDG.SelectedItem as Product;
            VariableClass.IdProduct = product.IdProduct;
            this.NavigationService.Navigate(new EditProductPage(ProductDG.SelectedItem as Product));
            Ref();
        }
    }
}
