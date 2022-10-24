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
    /// Логика взаимодействия для AddMunafacturerPage.xaml
    /// </summary>
    public partial class AddMunafacturerPage : Page
    {
        public AddMunafacturerPage()
        {
            InitializeComponent();
            ManufacturerAndQualityControlCb.ItemsSource = DBEntities.Getcontext()
                .ManufacturerAndQualityControl.ToList();
            PackerCb.ItemsSource = DBEntities.Getcontext()
                .Packer.ToList();
            OrganizationAcceptingClaimsCb.ItemsSource = DBEntities.Getcontext()
                .OrganizationAcceptingClaims.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
