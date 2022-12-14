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

namespace GorZdraw.PageFolder.StaffFolder
{
    /// <summary>
    /// Логика взаимодействия для SalePage.xaml
    /// </summary>
    public partial class SalePage : Page
    {
        public SalePage()
        {
            InitializeComponent();
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList().
                OrderBy(c => c.IdProduct);
        }
        private void Ref()
        {
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList().
                   OrderBy(c => c.IdProduct);
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }

        private void SellBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(QuantityTb.Text))
            {
                MBClass.ErrorMB("Введите количество");
                QuantityTb.Focus();
            }
            else
            {
                Product product = ProductDG.SelectedItem as Product;
                product.Quantity -= Convert.ToInt16(QuantityTb.Text);
                DBEntities.Getcontext().SaveChanges();
                AddSell();
                Ref();
                MBClass.InformationMB("Успешно");
            }
        }
        private void AddSell()
        {
            Product product = ProductDG.SelectedItem as Product;
            DBEntities.Getcontext().Sell.Add(new Sell()
            {
                IdProductSell = product.IdProduct,
                IdTypesell = 1,
                QuantitySell = Convert.ToInt16(QuantityTb.Text)
            });
            DBEntities.Getcontext().SaveChanges();
        }

        private void MoreInfo_Click(object sender, RoutedEventArgs e)
        {
            Product product = ProductDG.SelectedItem as Product;
            VariableClass.IdProduct = product.IdProduct;
            this.NavigationService.Navigate(new InfoProductPage(ProductDG.SelectedItem as Product));
            Ref();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ProductDG.ItemsSource = DBEntities.Getcontext().Product.Where
                    (u =>u.NameProduct.StartsWith(SearchTb.Text)).ToList();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }
    }
}
