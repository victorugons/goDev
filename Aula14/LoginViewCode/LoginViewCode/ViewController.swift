import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 236/255.0, green: 159/255.0, blue: 176/255.0, alpha: 1.0)
        view.addSubviews(mainImageView, formStackView, validateDataButton)
        configureMainImageView()
        configureEmailTextField()
        configurePasswordTextField()
        configureFormStackView()
        configureValidateDataButton()
    }
        
    lazy var mainImageView: UIImageView = {
        let imageView: UIImageView = UIImageView(image: UIImage(named: "bolsa-de-compras"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var emailLabel: UILabel = {
        let label: UILabel = configureLabel(text: "E-mail")
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField: UITextField = UITextField()
        textField.backgroundColor = .systemBackground
        textField.layer.cornerRadius = 5
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textContentType = .emailAddress
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    
    lazy var passwordLabel: UILabel = {
        let label: UILabel = configureLabel(text: "Password")
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField: UITextField = UITextField()
        textField.backgroundColor = .systemBackground
        textField.layer.cornerRadius = 5
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textContentType = .password
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var formStackView: UIStackView = {
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .top
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var validateDataButton: UIButton = {
        let button: UIButton = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private func configureLabel(text: String) -> UILabel {
        let label: UILabel = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .systemBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func configureMainImageView() {
        NSLayoutConstraint.activate([
            mainImageView.widthAnchor.constraint(equalToConstant: 240),
            mainImageView.heightAnchor.constraint(equalToConstant: 180),
            mainImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 52),
            mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 87),
            mainImageView.bottomAnchor.constraint(equalTo: formStackView.topAnchor, constant: -68)
        ])
    }
    
    func configureEmailTextField() {
        NSLayoutConstraint.activate([
            emailTextField.widthAnchor.constraint(equalToConstant: 374)
        ])
    }
    
    func configurePasswordTextField() {
        NSLayoutConstraint.activate([
            passwordTextField.widthAnchor.constraint(equalToConstant: 374)
        ])
    }
    
    func configureFormStackView() {
        formStackView.addArrangedSubviews(emailLabel, emailTextField, passwordLabel, passwordTextField)
        
        NSLayoutConstraint.activate([
            formStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            formStackView.bottomAnchor.constraint(equalTo: validateDataButton.topAnchor, constant: -40),
            formStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configureValidateDataButton() {
        NSLayoutConstraint.activate([
            validateDataButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            validateDataButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -295),
            validateDataButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
    }
}

