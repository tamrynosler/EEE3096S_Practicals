/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
#define MAX_ITER 1000

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
//TODO: Define variables you think you might need
// - Performance timing variables (e.g execution time, throughput, pixels per second, clock cycles)

//Mandelbrot Variables
//********************************************************************
  uint32_t start_time = 0;
  uint32_t end_time = 0;
  uint16_t pin_mask = 0;

  int sizes[] = {128, 160, 192, 224, 256};
  int num_sizes = 5;

   // Arrays to store results
  uint64_t checksums[5];
  uint32_t execution_times[5];

  //*******************************************************************
  //End Mandelbrot variables


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
/* USER CODE BEGIN PFP */
//TODO: Define any function prototypes you might need such as the calculate Mandelbrot function among others

  uint64_t calculate_mandelbrot_fixed_point_arithmetic(int width, int height, int max_iterations);
  uint64_t calculate_mandelbrot_double(int width, int height, int max_iterations);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  //while (1)
  //{
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  //TODO: Visual indicator: Turn on LED0 to signal processing start
	  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_SET);

	  //TODO: Benchmark and Profile Performance

	  //Automatically step through all image sizes
	  for (int i = 0; i < num_sizes; i++)
	    {
	        int current_size = sizes[i];

			  //Start time
			  start_time = HAL_GetTick();

			  //Call mandelbrot function
			  checksums[i] = calculate_mandelbrot_fixed_point_arithmetic(current_size, current_size, MAX_ITER);
			  //checksum = calculate_mandelbrot_double(256, 256, MAX_ITER);

			  //End time
			  end_time = HAL_GetTick();

			  execution_times[i] = end_time - start_time;




			  //TODO: Visual indicator: Turn on LED1 to signal processing start
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_SET);

			  //TODO: Keep the LEDs ON for 2s
				HAL_Delay(2000);

			  //TODO: Turn OFF LEDs
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, GPIO_PIN_RESET);
	    }
  }
  /* USER CODE END 3 */
//}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 15;
  RCC_OscInitStruct.PLL.PLLN = 144;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  RCC_OscInitStruct.PLL.PLLR = 2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7, GPIO_PIN_RESET);

  /*Configure GPIO pins : PB0 PB1 PB2 PB3
                           PB4 PB5 PB6 PB7 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
//TODO: Function signatures you defined previously , implement them here

	//Start Mandelbrot functions
//******************************************************************************************************
	uint64_t calculate_mandelbrot_fixed_point_arithmetic(int width, int height, int max_iterations){
	  uint64_t mandelbrot_sum = 0;



		int s = 10000; //10^4 scale factor (so that overflow doesnt occur on 32bit ints)
		int s3_5 = 3.5*s;
		int s2_5 = 2.5*s;
		int x_0 = 0;
		int y_0 = 0;
		int x_i;
		int y_i;
		uint64_t iteration;
		int64_t temp; //Prevent overflow by making 64bit

		for (uint32_t y = 0; y <= height-1; y++)
		{
			for (uint32_t x = 0; x <= width-1; x++)
			{
				x_0 = ((((x*s)/width))*(s3_5)/s - (s2_5));
				y_0 = ((((y*s)/height))*(2*s)/s - (s));
				x_i = 0;
				y_i = 0;
				iteration = 0;
				while (iteration < max_iterations && (x_i*x_i + y_i*y_i)<= 4*s*s)
				{
					temp = x_i*x_i/s - y_i*y_i/s;
					y_i = 2*x_i*y_i/s + y_0;
					x_i = temp + x_0;
					iteration = iteration+1;
				}
				mandelbrot_sum = mandelbrot_sum + iteration;
			}
		}
		return mandelbrot_sum;

	}




	uint64_t calculate_mandelbrot_double(int width, int height, int max_iterations){


		uint64_t mandelbrot_sum = 0;



		double x_0;
		double y_0;
		double x_i;
		double y_i;
		uint64_t iteration;
		double temp;

		for(uint32_t y = 0; y <= height - 1; y++)
		{
			for(uint32_t x = 0; x <= width - 1; x++)
			{
				x_0 = ((double)(x)/(double)(width))*3.5 - 2.5;
				y_0 = ((double)(y)/(double)(height))*2.0 - 1.0;
				x_i = 0;
				y_i = 0;
				iteration = 0;
				while(iteration < max_iterations && x_i*x_i + y_i*y_i <= 4)
				{
					temp = x_i*x_i - y_i*y_i;
					y_i = 2.0*x_i*y_i + y_0;
					x_i = temp + x_0;
					iteration = iteration + 1;

				}
				mandelbrot_sum = mandelbrot_sum + iteration;
			}

		}
		return mandelbrot_sum;
	}

	//****************************************************************************************************
	//End Mandelbrot functions

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
