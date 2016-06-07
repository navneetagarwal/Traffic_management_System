#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char const *argv[])
{
	double alpha;
	int v = 40;
	//cin>>alpha;

	double t1,t2,t3,t4;

	for (alpha = 10; alpha<31;alpha++) {

		// t2 = 0.2;
		t2 = double(7.0/v);

		double rhs = (v-5.0)/alpha - 1 - (8.0/(v-8.0-40.0/(v-5.0)) )	*(1 + 5.0/(v-5.0));
		double lhs = t2 + (t2 + 35.0/(v*(v-5.0)) )*(8.0/(v-8.0-40.0/(v-5.0)) );

		t1 = double(lhs/rhs);
		t3 = 8.0*(t1 + t2 + 5.0 * (t1/(v-5.0)) + (35.0/(v * (v-5.0)) ) )/( v - 8.0 - (40.0/(v-5.0)) );
		t4 = 5.0*(t1+t2+t3)/(v-5.0);

		//cout<<alpha<<" -> "<<60*t1<<' '<<60*t2<<' '<<60*t3<<' '<<60*t4<<endl;
		double R = t2+t3+t4;
		double G = t1;
		cout<<alpha<<","<<(R*((alpha/v)+1)+G*((alpha/v)-1))*30<<endl;


	}
	return 0;
}