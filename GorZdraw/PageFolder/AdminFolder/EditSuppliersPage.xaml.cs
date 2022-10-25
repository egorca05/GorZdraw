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
    /// Логика взаимодействия для EditSuppliersPage.xaml
    /// </summary>
    public partial class EditSuppliersPage : Page
    {
        public EditSuppliersPage(Suppliers Suppliers)
        {
            InitializeComponent();
            DataContext = Suppliers;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            Suppliers suppliers = DBEntities.Getcontext().Suppliers.
                FirstOrDefault(s => s.IdSuppliers == VariableClass.IdSuppliers);
            suppliers.NameSuppliers =  SupplTb.Text;
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Поставщик успешно отредактирован");
            NavigationService.Navigate(new ListSuppliersPage());
        }
    }
}
