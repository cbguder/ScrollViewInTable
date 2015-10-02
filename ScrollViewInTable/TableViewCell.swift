import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var scrollView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()

        for _ in 0...2 {
            let view = UIView()

            let red = CGFloat(arc4random_uniform(255)) / 255.0
            let green = CGFloat(arc4random_uniform(255)) / 255.0
            let blue = CGFloat(arc4random_uniform(255)) / 255.0

            view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            scrollView.addSubview(view)
        }

    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let width = CGRectGetWidth(contentView.bounds)
        let height = CGRectGetHeight(contentView.bounds)

        for i in 0...2 {
            let view = scrollView.subviews[i]
            view.frame = CGRectMake(width * CGFloat(i), 0, width, height)
        }

        scrollView.contentSize = CGSizeMake(width * 3.0, height)
    }

}
