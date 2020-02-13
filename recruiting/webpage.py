from flask import Flask, redirect, url_for, request, render_template
import raw_data.calc_agg_data as agg

app = Flask(__name__)


@app.route('/success/<name>')
def success(name):
	return 'welcome %s' % name


@app.route('/login', methods = ['POST', 'GET'])
def login():
	if request.method == 'POST':
		user = request.form['nm']
		return redirect(url_for('success', name = user))
	else:
		user = request.args.get('nm')
		return redirect(url_for('success', name = user))


@app.route("/index", methods = ["GET"])
def dropdown():
	teamlist = ["Clemson", "LSU", "Oklahoma", "Ohio State"]
	return render_template("index.html", teams=teamlist)


@app.route("/index?dropdown=", methods = ["GET", "POST"])
def chart_team():
	# team_obj = agg.aggregate_data()
	select = request.select.get("dropdown")
	return render_template("index.html", team_selected = select)


if __name__ == '__main__':
	app.run(debug=True)
