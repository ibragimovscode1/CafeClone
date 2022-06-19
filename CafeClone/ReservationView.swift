//
//  ReservationView.swift
//  CafeClone
//
//  Created by Rahmetullah on 17.06.2022.
//

import Foundation
import UIKit
private let  titleLabel = UILabel()
private let nameLabel = UILabel()
private let numberOfGuests = UILabel()
private let numberOfTable = UILabel()
private let reservTableLabel = UILabel()
private let earlyPaymentLabel = UILabel()
private let vipRoomLabel = UILabel()
private let nameTextField = UITextField()
private let nameLine = UIView()
private let guestTextField = UITextField()
private let guestLine = UIView()
private let tableTextField = UITextField()
private let tableLine = UIView()
private let billButton = UIButton()
private let reservTableSwitch = UISwitch()
private let paymentSwitch = UISwitch()
private let vipRoom  = UISwitch()



class ReservationView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.titleView = titleLabel
        view.backgroundColor = .white
        configure()
    }
    
    private func configure() {
        //MARK: TitleLabel
        view.addSubview(titleLabel)
        titleLabel.text = "Red Cafe"
        titleLabel.textColor = .black
        titleLabel.sizeToFit()
        titleLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 35)
        titleLabel.textAlignment = .center
        titleLabel.frame = CGRect(x: 10, y: 0, width: 30, height: 40)
        
        //MARK: NameLabel
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Name Surname"
        nameLabel.textColor = .red
        nameLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40)
        ])
         //MARK: NameTextField
        view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints  = false
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Enter name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        nameTextField.backgroundColor = .white
        nameTextField.textColor = .black
       
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            nameTextField.widthAnchor.constraint(equalToConstant: 350),
            nameTextField.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        //MARK: NameLine
        view.addSubview(nameLine)
        nameLine.translatesAutoresizingMaskIntoConstraints = false
        nameLine.backgroundColor = .lightGray
      
        NSLayoutConstraint.activate([
            nameLine.topAnchor.constraint(equalTo: nameTextField.bottomAnchor),
            nameLine.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            nameLine.widthAnchor.constraint(equalToConstant: 350),
            nameLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        //MARK: NumberOfGuestsLabel
        view.addSubview(numberOfGuests)
        numberOfGuests.translatesAutoresizingMaskIntoConstraints = false
        numberOfGuests.text = "Number of Guests"
        numberOfGuests.textColor = .red
        numberOfGuests.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
      
        NSLayoutConstraint.activate([
            numberOfGuests.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 35),
            numberOfGuests.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor)
        ])
    //MARK: NumberOfGuestTextfield
        view.addSubview(guestTextField)
        guestTextField.translatesAutoresizingMaskIntoConstraints = false
        guestTextField.backgroundColor = .white
        guestTextField.textColor = .black
        guestTextField.attributedPlaceholder = NSAttributedString(string: "Enter number of guests", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
       
        NSLayoutConstraint.activate([
            guestTextField.topAnchor.constraint(equalTo: numberOfGuests.topAnchor, constant: 40),
            guestTextField.leadingAnchor.constraint(equalTo: numberOfGuests.leadingAnchor),
            guestTextField.widthAnchor.constraint(equalToConstant: 350),
            guestTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        //MARK: GuestLine
        view.addSubview(guestLine)
        guestLine.translatesAutoresizingMaskIntoConstraints = false
        guestLine.backgroundColor = .lightGray
       
        NSLayoutConstraint.activate([
            guestLine.topAnchor.constraint(equalTo: guestTextField.bottomAnchor),
            guestLine.leadingAnchor.constraint(equalTo: numberOfGuests.leadingAnchor),
            guestLine.widthAnchor.constraint(equalToConstant: 350),
            guestLine.heightAnchor.constraint(equalToConstant: 1)
        ])
       
        //MARK: NumberOfTableLabel
        view.addSubview(numberOfTable)
        numberOfTable.translatesAutoresizingMaskIntoConstraints = false
        numberOfTable.text = "Number of Table"
        numberOfTable.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        numberOfTable.textColor = .red
       
        NSLayoutConstraint.activate([
            numberOfTable.topAnchor.constraint(equalTo: guestLine.bottomAnchor, constant: 30),
            numberOfTable.leadingAnchor.constraint(equalTo: guestLine.leadingAnchor)
        ])
        
        //MARK: NumberOfTableTextField
        view.addSubview(tableTextField)
        tableTextField.translatesAutoresizingMaskIntoConstraints = false
        tableTextField.backgroundColor = .white
        tableTextField.attributedPlaceholder = NSAttributedString(string: "Enter number of tables", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        NSLayoutConstraint.activate([
            tableTextField.topAnchor.constraint(equalTo: numberOfTable.topAnchor, constant: 40),
            tableTextField.leadingAnchor.constraint(equalTo: numberOfTable.leadingAnchor),
            tableTextField.widthAnchor.constraint(equalToConstant: 350),
            tableTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        //MARK: Table Line
        view.addSubview(tableLine)
        tableLine.translatesAutoresizingMaskIntoConstraints = false
        tableLine.backgroundColor = .lightGray
       
        NSLayoutConstraint.activate([
            tableLine.topAnchor.constraint(equalTo: tableTextField.bottomAnchor),
            tableLine.widthAnchor.constraint(equalToConstant: 350),
            tableLine.leadingAnchor.constraint(equalTo: tableTextField.leadingAnchor),
            tableLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        //MARK: Reserv Switch label
        view.addSubview(reservTableLabel)
        reservTableLabel.translatesAutoresizingMaskIntoConstraints = false
        reservTableLabel.text = "Reserv Table?"
        reservTableLabel.textColor = .red
        reservTableLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        NSLayoutConstraint.activate([
            reservTableLabel.topAnchor.constraint(equalTo: tableLine.bottomAnchor, constant: 60),
            reservTableLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            ])
        //MARK: Reserv Switch
        view.addSubview(reservTableSwitch)
        reservTableSwitch.translatesAutoresizingMaskIntoConstraints = false
        reservTableSwitch.preferredStyle = .sliding
        NSLayoutConstraint.activate([
            reservTableSwitch.topAnchor.constraint(equalTo: reservTableLabel.topAnchor),
            reservTableSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60)
        ])
        
        //MARK: EarlyPayment Label:
        view.addSubview(earlyPaymentLabel)
        earlyPaymentLabel.translatesAutoresizingMaskIntoConstraints = false
        earlyPaymentLabel.text = "Early Payment?"
        earlyPaymentLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        earlyPaymentLabel.textColor = .red
        NSLayoutConstraint.activate([
            earlyPaymentLabel.topAnchor.constraint(equalTo: reservTableLabel.bottomAnchor, constant: 30),
            earlyPaymentLabel.leadingAnchor.constraint(equalTo: reservTableLabel.leadingAnchor)
            ])
        //MARK: PaymentSwitch
        view.addSubview(paymentSwitch)
        paymentSwitch.translatesAutoresizingMaskIntoConstraints = false
        paymentSwitch.preferredStyle = .sliding
        NSLayoutConstraint.activate([
            paymentSwitch.topAnchor.constraint(equalTo: earlyPaymentLabel.topAnchor),
            paymentSwitch.trailingAnchor.constraint(equalTo: reservTableSwitch.trailingAnchor)
        ])
        
        //MARK: VIProomLabel
        view.addSubview(vipRoomLabel)
        vipRoomLabel.translatesAutoresizingMaskIntoConstraints = false
        vipRoomLabel.text = "VIP Room?"
        vipRoomLabel.textColor = .red
        vipRoomLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
        NSLayoutConstraint.activate([
            vipRoomLabel.topAnchor.constraint(equalTo: earlyPaymentLabel.bottomAnchor, constant: 30),
            vipRoomLabel.leadingAnchor.constraint(equalTo: earlyPaymentLabel.leadingAnchor)
        ])

        //MARK: vipRoomSwitch
        view.addSubview(vipRoom)
        vipRoom.translatesAutoresizingMaskIntoConstraints = false
        vipRoom.preferredStyle = .sliding
        NSLayoutConstraint.activate([
            vipRoom.topAnchor.constraint(equalTo: vipRoomLabel.topAnchor),
            vipRoom.trailingAnchor.constraint(equalTo: reservTableSwitch.trailingAnchor)
        ])
        
        //MARK: BillButton
        view.addSubview(billButton)
        billButton.translatesAutoresizingMaskIntoConstraints = false
        billButton.setTitle("Bill", for: .normal)
        billButton.backgroundColor = .red
        billButton.layer.cornerRadius = 20
        billButton.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 25)
        billButton.addTarget(self, action: #selector(billButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            billButton.topAnchor.constraint(equalTo: vipRoomLabel.bottomAnchor, constant: 120),
            billButton.leadingAnchor.constraint(equalTo: guestLine.leadingAnchor),
            billButton.widthAnchor.constraint(equalToConstant: 350),
            billButton.heightAnchor.constraint(equalToConstant: 60)
            
        ])
        
    }
    @objc func billButtonTapped() {
        navigationController?.pushViewController(BillView(), animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    

    
   
}
