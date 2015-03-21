//
//  BNRViewController.m
//  Quiz
//
//  Created by Joel Bateman on 3/4/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "BNRViewController.h"

@interface BNRViewController ()

// Holds index address for current question
@property (nonatomic) int currentQuestionIndex;

// Points to questions array that will hold the questions
@property (nonatomic, copy) NSArray *questions;

// Points to answers array that will hold the answers
@property (nonatomic, copy) NSArray *answers;

// Points to question label object in XIB
@property (nonatomic, weak) IBOutlet UILabel
*questionLabel;

// Points to answer label object in XIB
@property (nonatomic, weak) IBOutlet UILabel
*answerLabel;

@end

@implementation BNRViewController

- (id) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the super class
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        
        // Array that contains questions
        self.questions = @[@"From what is cognac made?",
                           @"What is 7 + 7?",
                           @"What is the capital of Vermont?"];
        
        // Array that contains answers
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    // Return the address of the new object
    return self;
}

// Action method for showQuestion button
- (IBAction)showQuestion:(id)sender
{
    // Step to next question
    self.currentQuestionIndex++;
    
    // Am I past the last question?
    if(self.currentQuestionIndex==0){
        
        // Go back to first question
        self.currentQuestionIndex=0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the string in the questions label
    self.questionLabel.text = question;
    
    // Reset the answer label
    self.answerLabel.text = @"???";
}

// Action method for showAnswer button
- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // Display the answer in the answers label
    self.answerLabel.text = answer;
    
}

@end
