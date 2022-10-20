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
    /// Логика взаимодействия для AddOrderPage.xaml
    /// </summary>
    public partial class AddOrderPage : Page
    {
        public AddOrderPage()
        {
            InitializeComponent();
            ProductCb.ItemsSource = DBEntities.Getcontext()
                .Product.ToList();
            SuppliersCb.ItemsSource = DBEntities.Getcontext()
                .Suppliers.ToList();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ProductCb.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите препарат");
                ProductCb.Focus();
            }
            if (SuppliersCb.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите поставщика");
                SuppliersCb.Focus();
            }
            if (string.IsNullOrEmpty(PriceTb.Text))
            {
                MBClass.ErrorMB("Выберите сумму");
                PriceTb.Focus();
            }
            if (string.IsNullOrEmpty(quantityTb.Text))
            {
                MBClass.ErrorMB("Введите количество");
                quantityTb.Focus();
            }
            else
            {
                AddOrder();
                MBClass.InformationMB("Заказ создан");
                NavigationService.GoBack();

            }
        }

        private void AddOrder()
        {
            DBEntities.Getcontext().Order.Add(new Order()
                {
                IdProduct = Int32.Parse(ProductCb.SelectedValue.ToString()),
                DateOrder = DateTime.Now,
                QuantityOrder = Int32.Parse(quantityTb.Text.ToString()),
                Price = Int32.Parse(PriceTb.Text.ToString()),
                IdSuppliers = Int32.Parse(SuppliersCb.SelectedValue.ToString())
            });
            DBEntities.Getcontext().SaveChanges();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
