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
    /// Логика взаимодействия для EditMunafacturerPage.xaml
    /// </summary>
    public partial class EditMunafacturerPage : Page
    {
        public EditMunafacturerPage(Manufacturer Manufacturer)
        {
            InitializeComponent();
            DataContext = Manufacturer;
            ManufacturerAndQualityControlCb.ItemsSource = DBEntities.Getcontext()
                .ManufacturerAndQualityControl.ToList();
            PackerCb.ItemsSource = DBEntities.Getcontext()
                .Packer.ToList();
            OrganizationAcceptingClaimsCb.ItemsSource = DBEntities.Getcontext()
                .OrganizationAcceptingClaims.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            Manufacturer manufacturer = DBEntities.Getcontext().Manufacturer
                 .FirstOrDefault(s => s.IdManufacturer == VariableClass.IdManufacturer);
            manufacturer.IdManufacturerAndQualityControl = Int32.Parse(ManufacturerAndQualityControlCb.SelectedValue.ToString());
            manufacturer.IdPacker = Int32.Parse(PackerCb.SelectedValue.ToString());
            manufacturer.IdOrganizationAcceptingClaims = Int32.Parse(OrganizationAcceptingClaimsCb.SelectedValue.ToString());
            DBEntities.Getcontext().SaveChanges();

            MBClass.InformationMB("Успешно");
            NavigationService.Navigate(new ListMunafacturerPage());
        }
    }
}
