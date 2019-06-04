<h1 align='center'>
  Bank Tech Test Makers Week 10.
</h1>

- language ``Ruby``.
- Testing ``RSpec``.


<h4 align='center'>
  How To Run This Test
</h4>


- ``Fork`` and ``clone`` Repo.
- cd into ``BankTechTest``.
- Run ``bundle install``.
- To run ``test``  type ``rspec``.


<h4 align='center'>
  Simple User Stroy
</h4>

```
As a User,
So that I can cave some money,
I would like to be able to deposit money at a Bank.
```

```
As a User,
So that I can get money from my account,
I would like to be able to withdraw money from a bank.
```

```
As a User,
So that I know what I have been using my money for,
I would like to be able to print a ``bank statement``.
```
<h1 align='center'>
Initial Domain Model.
</h1>

![bank](https://user-images.githubusercontent.com/37377831/58862124-def88480-86a7-11e9-952f-4efcf856000f.jpg)

> I decided to use ``three`` objects for this tech test to ensure that I was separating concerns with regards to what each class was doing and lastly to group related methods into one class. The main classes as seen in the domain model are ``Account``, ``Statement`` and ``Transactions``.
The sole responsibility of the ``Account`` class is to allow users to ``deposit`` money into their account, ``withdraw `` money from their account, view their account balance and statement. The ``Transactions`` has the responsibility to allow users to make transactions and send the made transactions to the ``Statement``class, which then stored them. Lastly, in order to view the full account transaction history, the ``Transactions`` class makes a query to the ``Statement`` and then send the response to the `` account``.

![done](https://user-images.githubusercontent.com/37377831/58911786-85787000-8710-11e9-9ab6-6c92fa0ba561.png)

> A more detailed steps of how the ``classess`` interact ``together``.

==================

#### Note it raises an error if a user tries to withdraw money from an account without enough funds.

```ruby
  def withdraw(amount)
    raise 'You have 0 balance' unless money?

    @balance -= amount
    @transaction.make('', amount, @balance)
  end
```


<h4 align='center'>
Challenges.
</h4>

The main challenges I faced with tech test were

- Modelling the Application.
  - It seems very very simple, but modelling object into classes and understanding which methods need to be in which class is a skill that I am still working on and I am ``100%`` sure that I will get better and it and be very comfortable at using ``SOLID`` principles.

- Dependency Injection.
  - I thought I understood the concept of dependency injection till I started working on this test, I do now though thanks to ``Marcus`` and ``Chembo``. I found myself hard coding classes into other classes, which led to me having difficulties in testing my classes. But after learning about dependency injection and revising Makers week 2 ``pills`` on ``OOP``, I was able to get going with the tech test.


<h4 align='center'>
What I Learnt.
</h4>

Through this ``tech test``, I learnt about dependency injection, which is a way of injecting one class into the other. This is important becuase it makes tesing expecially when using ``test doubles `` to mock objects very easy. If you would like to understand more ablout dependecy injection please have a look at this [link](https://medium.freecodecamp.org/a-quick-intro-to-dependency-injection-what-it-is-and-when-to-use-it-7578c84fa88f).

<h4 align='center'>
Reflections.
</h4>

> The ``tech test`` was a really good one and I really enjoyed doing it. It came with its own challenges but through that, I learnt and resolidified my knowledge and filled any knowledge gap. I feel very confident of my ability to write ``Isolation test``, ``unit tests``, ``feature tests ``, ``separation of concerns`` and lastly use ``dependency injection``. If I were to approach this challenge again, I would spend more time ``planning ``, ``feature testing`` and ``committing regularly``.