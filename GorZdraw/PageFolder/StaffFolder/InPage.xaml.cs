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

namespace GorZdraw.PageFolder.StaffFolder
{
    /// <summary>
    /// Логика взаимодействия для InPage.xaml
    /// </summary>
    public partial class InPage : Page
    {
        public InPage()
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
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(QuantityTb.Text))
            {
                MBClass.ErrorMB("Введите количество");
                QuantityTb.Focus();
            }
            else
            {
                Product product = ProductDG.SelectedItem as Product;
                product.Quantity += Convert.ToInt16(QuantityTb.Text);
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
                IdTypesell = 2,
                QuantitySell = Convert.ToInt16(QuantityTb.Text)
            });
            DBEntities.Getcontext().SaveChanges();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ProductDG.ItemsSource = DBEntities.Getcontext().Product.Where
                    (u => u.NameProduct.StartsWith(SearchTb.Text)).ToList();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }
    }
}
