
import UIKit

class CashCell: UITableViewCell {
    var data: Cash? {
        didSet {
            refreshUI()
        }
    }
    
    // MARK: - Properties
    public static let identifier = String(describing: CashCell.self)
    
    // MARK: - Views
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var cashImageView: UIImageView = {
        let imageView = UIImageView(image: nil)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        data = nil
    }
    
    private func commonInit() {
        setupView()
    }
    
    private func setupView() {
        contentView.addSubview(containerView)
        containerView.addSubview(cashImageView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
    }
    
    private func refreshUI() {
        guard let data = data else { return }
    }
}
