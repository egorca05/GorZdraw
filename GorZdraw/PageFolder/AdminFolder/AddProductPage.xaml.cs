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
    /// Логика взаимодействия для AddProductPage.xaml
    /// </summary>
    public partial class AddProductPage : Page
    {
        public AddProductPage()
        {
            InitializeComponent();
            СategoryCb.ItemsSource = DBEntities.Getcontext()
                .Category.ToList();
            ManufacturerCb.ItemsSource = DBEntities.Getcontext()
                .ManufacturerAndQualityControl.ToList();
            RecipeCb.ItemsSource = DBEntities.Getcontext()
                .Recipe.ToList();
            SuppliersCb.ItemsSource = DBEntities.Getcontext()
                .Suppliers.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            AddProduct();
            MBClass.InformationMB("Препарат создан");
            NavigationService.GoBack();
        }
        private void AddProduct()
        {
            DBEntities.Getcontext().Product.Add(new Product()
            {
            NameProduct = NameTb.Text,
            Composition = CompositionTb.Text,
            ReleaseForm = ReleaseFormTb.Text,
            IdСategory = Int32.Parse(СategoryCb.SelectedValue.ToString()),
            IdManufacturer = Int32.Parse(ManufacturerCb.SelectedValue.ToString()),
            IdSuppliers = Int32.Parse(SuppliersCb.SelectedValue.ToString()),
            DosageForm = DosageFormTb.Text,
            ReleaseDate = Convert.ToDateTime(ReleaseDateDp.Text),
            ExpirationDate = Convert.ToDateTime(ExpirationDateDp.Text),
            Price = Convert.ToDecimal(PriceTb.Text),

            Indications = IndicationsTb.Text,
            Contraindications = ContraindicationsTb.Text,
            MethodOfAdministrationAndDosage = MethodOfAdministrationAndDosageTb.Text,
            SideEffects = SideEffectsTb.Text,
            Overdose = OverdoseTb.Text,
            DrugInteraction = DrugInteractionTb.Text,
            SpecialInstructions = SpecialInstructionsTb.Text,
            StorageConditions = StorageConditionsTb.Text,
            IdRecipe = Int32.Parse(RecipeCb.SelectedValue.ToString()),
            Quantity = Int32.Parse(QuantityTb.Text),
        });
            DBEntities.Getcontext().SaveChanges();
        }
    }
}
