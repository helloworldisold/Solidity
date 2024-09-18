//SPDX-License-Identifier:MIT
pragma solidity 0.8.18; // solidity version

contract SimpleStorage{

    bool hasFavouritenumber = false;
    uint256 public favnumber = 88;// favnumber initialsed to 0 if no value is given default intsize is 256 uint can take only positive whole numbers 
    string favNumberinText="eighty-eight";
    //address myaddy=0x213341e5E180Fa7B42aCe13DD7d7895855cdb78a;
    bytes32 favbytes="catordogs";

    struct Person {
        string name;
        uint256 favouritenumber;
        
    }

    Person public myfriend = Person ("John",7);

    Person[] public listOfpeople; // this is a dynamic array

    mapping (string => uint256) public nametofavnumber;

 // the argument in function shoud have a different name and not the same as declared earlier
    function store(uint256 _favnumber) public {
        favnumber=_favnumber;
    }

    function retrive() public view returns(uint256){
        return favnumber;
    }

    function addPeople(string memory _name,uint256 _favouritenumber ) public {
        listOfpeople.push(Person(_name,_favouritenumber));
        nametofavnumber[_name]= _favouritenumber;

        //the below is valid too
        // Person memory newPerson = Person (_name, _favouritenumber);
        // listOfpeople.push(newPerson);
    }



}

