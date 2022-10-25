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
    /// Логика взаимодействия для ListSuppliersPage.xaml
    /// </summary>
    public partial class ListSuppliersPage : Page
    {
        public ListSuppliersPage()
        {
            InitializeComponent();
            SuppliersDG.ItemsSource = DBEntities.Getcontext().Suppliers
                .ToList().OrderBy(x => x.IdSuppliers);
        }
        private void Ref()
        {
            SuppliersDG.ItemsSource = DBEntities.Getcontext().Suppliers
                .ToList().OrderBy(x => x.IdSuppliers);
        }
        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (SuppliersDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите категорию для удаления");
            }
            else
            {
                try
                {
                    Suppliers suppliers = SuppliersDG.SelectedItem as Suppliers;
                    if (MBClass.QestionMB($"Удалить выбранного поставщика?"))
                    {
                        DBEntities.Getcontext().Suppliers.Remove(suppliers);
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
            Suppliers suppliers = SuppliersDG.SelectedItem as Suppliers;
            VariableClass.IdSuppliers = suppliers.IdSuppliers;
            this.NavigationService.Navigate(new EditSuppliersPage(SuppliersDG.SelectedItem as Suppliers));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddSuppliersPage());
            Ref();
        }
    }
}
