Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 518EAC67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HLqhcoZzmg9b3kVGIAOVmaHFAhTM2s1M8UcCMwFObIM=; b=mLBvNTEjQ2b3xSG2NZdItNxrOW
	YR872R/AJCzrrThqmAF2hfKtRM45eBcYWR2UxdDRaiMPzG33wALS3I/Bdjx/IixAY1JkVWI7R/Apu
	bL0gypNHYPW2TpYmxg7zX9E2Y1CUjh32s5xg0QZnK6EGEu0yAJTAfV/gGSMn/iHCxF7xYy98+mbE8
	J/nsBFvBhXfpfQyLiiMaK4F+CtGBLF/ruFqI4TERvQ20TbFy4c7fCuYHMc8QTzYnvyqTcskBWQ3zy
	978/aQPD9A9hEzQoKZcoCfrSmWaFMk+vWcztYISoDxgA/1MwdRyI5eIokBioTKknCrNX1DE7njh6A
	xYRSZBhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsnl0-00000008Jqd-3lNG;
	Fri, 05 Apr 2024 17:53:42 +0000
Received: from mail-psaapc01olkn20821.outbound.protection.outlook.com ([2a01:111:f400:feae::821] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsnky-00000008Jp3-1aTC
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 17:53:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1jcEbmo9lHROJspvz+uYdoUq3J6CDqkuDnVUIPJ5nIWhcj7jaPWnGRQQHhLv2t8CJIf3ArP/3+DYJ/aPlJBC5Hjc3gSBrNo/KCZq4dRjBhtFAZT54zkQnYPip1NB/V0E/PUGdIHkzSKkbdii5uPb2yJitk9XGWDKDcwwzzf3iyCTq8YyvGgeC2iwaN4fxd3R2WWXjBxpqbhZ0DG3M0DKKC5lgrwFL0OKDaHjMIFgt2W/sqecA+GQn6D1qZcyt7yL1hpnHWmrKXxTLo+lLxmRAlwVp7pPVbSFP7Iw6fWqiiqCtPJ/BtbyEOf+hKbn08ZN/jzt87X6hdgNb37mPzT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvQBDev7zAW7lkoxq9UTxb2zCi+rn2GpRQ217nZWq28=;
 b=DaoXtZpkePVkhQ5QKFRPNb05F9h5YdSyde2JiY1jF7CHoV+o3Wt2WXZSvocf7W4bi8cfu4E8+TwYjpIdAj3ntBhiBhUdIdeH9ttYBgGU1nhkG8bowqdfIu0Z0X4yxrecIMC6ciZrVDdm/gEkYxYa1cdlR940YYlDRihOQs0k6g5jaDJlL4Fp9VIkArolAhPtqIOC7aNsLdxC3rrGsMvp0oQiQnRow6q9XohouzU5BJNRKam7o9pD0/ZnhjdmgyOEbXUrYfEweOruFonqZwpAsQ4cOkwjV2LVcLtAy/TSXKeZLL1DAArQiiSxmTnbEyOkTOmKDIsUSWP46M+I2g61Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nvQBDev7zAW7lkoxq9UTxb2zCi+rn2GpRQ217nZWq28=;
 b=MKZPmf51nw21wCx0P+UqBpy6ifLhBgHfUGxCB92qDTctpfBEW6IDC/B+kOmroSeasvjysfKOJ4vDwlBDmjhyV8Yz2F74q6wdjuff73kfrmVv41KcNkZ8hj6/BhqyNYQFy8LCtNCAMirswhkpT86TSQLcJEeD3/7GGW/JaILvJK0Fw8xXGHZfunhzCrl0fxBKYSJf761ajl4OZcJkBXsfeHDPVyFbry/MRXnhsyjKr6X5fX5k2yjMzuVaz3vO3aWXg3CtPZ5y+zwXJablTYrcj/7hSct6DpIYsGMiW9m5EabCRiEhnbgLJFj7NTZt+zbcZkvj9mE6Qe4sMNQo7ETTIA==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by TYSPR06MB6542.apcprd06.prod.outlook.com (2603:1096:400:481::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 17:53:28 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::aced:cbb9:4616:96d8]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::aced:cbb9:4616:96d8%2]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 17:53:28 +0000
Message-ID: <SEZPR06MB695903034B7404FBEA750A9196032@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Sat, 6 Apr 2024 01:53:23 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] phy: hisilicon: hisi-inno-phy: add support for
 Hi3798MV200 INNO PHY
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
 <20240305-inno-phy-v5-5-dc1cb130ea08@outlook.com> <ZhAsXUjifTD6HeKx@matsya>
Content-Language: en-US
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <ZhAsXUjifTD6HeKx@matsya>
X-TMN: [OlBPrGJeA5NKEgnMfgb89FRx7k+iTlcOvOFtmD2v92WyTFvwWKMSL0gtc0raSFq/]
X-ClientProxiedBy: TYCP286CA0129.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b6::17) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <b775e26d-18ad-4c0d-a012-03b98004cc8d@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|TYSPR06MB6542:EE_
X-MS-Office365-Filtering-Correlation-Id: 800702c8-88d0-46fc-ec71-08dc55994c75
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KMjXYn202Aywyo2iu++yBVb5b4sZAiFUIWm07R6AASOvYvM/E2sipZYSDQAQhEp8v1wPPAvdYi+oGCIAQGJEkzM/lZf/Bh7iAw1uZFc6dftkfosurFz2HoHjhxKPFDtbvNbkZgLAaFqtKoJYrwQlX67e+k5NirtFXwygZNfJCJrcwQZnnxRrWAq9uM4bb8LGMcPKI/trctEY+gUp+UasnhVObFiiwSm7cbj65khRuB+VO6FqJI6Jd5wPhXwpowWrOQoVUwukNvVfSApWPYB1NeofKG3gV9KpQyX9wJX0E49OylHTwa/PmVt6+Llfot+WcV7EMxi+GuO5d+tI3IGtmaOI0f6yvIFBVjVxGsE3mGZYNRk6hH2o6mqTDdJ/aMbfuAD7hU4GncZPM+2ZmmrCpnn94V3qY5T5viSUAMEQC29vxeF+zolWEuFKrre84/69qhhDwzifR+suTCl0Re/DTHpmdWQn2yKJckJXjS85on4SGDZLvjGAXsBMMZFglpmkwctexXg64+pLB5H1e8S9rKfJ9kbWonmkC1S2eQ+RDcTs77wJFSOFBnDMU5yBEajZ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG5iamQrYW1INmhQY3FZVDBvbXVrQ1pjRlk4Z25yckxxc0syRDMxdVB2TUhl?=
 =?utf-8?B?cDd4Wm9OaUUzZ1BMdWRQTU01cnNhQ2F6c1U3eFpaVlBJb2RnRDZYdXNnaUpn?=
 =?utf-8?B?c2k2RXZqZjRnUjdiaDMybHJaOHFKYzJSMWh0NzR1SWNGMVV1TlY1VW5TK3dX?=
 =?utf-8?B?Slp5RzVBVHJ2OE9GZVlEVmVsS01TN2dqWnhIR050MXQrcVFEYi9rUTR1NXJX?=
 =?utf-8?B?OEkxQ3dqTmdoRG0xbXJKMGpIRXVDRkFsekJac1ZEV1hrOHlFb2l2WFZJeW8z?=
 =?utf-8?B?TlhyZkVxelViYVNHOHRTR1U0UlY2dERZeDZJTnk2MS9zMllGYTR1bGt1NUZH?=
 =?utf-8?B?QTZoZUc1bnBQWkExUlpJbDE3TGxpV2RCMnpFaTl1eXQ5bVpSdVVQQmFMVDc4?=
 =?utf-8?B?eDE0TDRadzJaQUlmbE9aeWtoalNlTlZ2TlBwYUt5STd1aEErL2szQm9YUkxu?=
 =?utf-8?B?eW8vbWR6TW42RGJRbXpmdVhlUEFTVDM4REV6QURsZXBFbGwrblphSUZDbnZS?=
 =?utf-8?B?ODQvMUtZRWtVTnc0bW9GSzRHb1dFZVlQcVhCNGJwUGR6VllpWlE5cmdlOUg5?=
 =?utf-8?B?MDZmbGZWdnBYVHpXQjNWMkRwMS9mc3BOUVc2cjZVSjEzSlp2d0o3bE5WWXBT?=
 =?utf-8?B?UW9rZ1BUTXpIVUoxT28rS2lRL3F3L1owSDVqM1ExdG9DZ1hBbTlWZFU5MjNL?=
 =?utf-8?B?TGlBTThnWkdPRXlKc3Z2Q2tUT0lFWVRFZXpEV2dwMEx6eWQ3R2wwSzlrNW9t?=
 =?utf-8?B?SmJpeXR6VlJoUC9tSG9PZ2pNZ0Q4eGpucU4rSUFkenhySi9LbE1EQmgvZ3Bm?=
 =?utf-8?B?TDdON3VsZU1CU3lnSzRjTmlrNEJrMmVDdHI4ZjhFNkpTcnoyMU9yK1BFOThl?=
 =?utf-8?B?TVVtR0VWWGhTaytTMmNrd0ZaUVI3a2pvZEtyQ0xtaXZiQVBJZmlEQUJKTWFy?=
 =?utf-8?B?WnRlL3hMc1kxK2Z3UVpIZkJFdDkyRmo3RHZrelBTY0p5QytNcG41cEhNdnh3?=
 =?utf-8?B?eVpRMWZ3SjA0UUlwYXNaaWdoME90akE3dyt4a2xtbU80ZEE3dTVqdDByaE9O?=
 =?utf-8?B?ajBkZk9uaFpEd2lKZWFuMGprTVpubnhMbitoV1Z2cExNU3lIVnV3MWcxOFp0?=
 =?utf-8?B?YUh4NGd1OHVQdk10WjBDWEQ3NHNjcmxrWTNRTkFzUDZPYmh4RTIwMzdHaHdn?=
 =?utf-8?B?bVQvbnNKYkc2NklqT0Z4dzkrdm1YQ0pDMlFhNWQ2dlNBS2owV0c4NkVSVmJ4?=
 =?utf-8?B?Y2RTalB1LzVPRzVwTzR4Z3c5ZWYvb1VCVjh2U05qK3l6THFXU0s5Rk9yTXFY?=
 =?utf-8?B?NDJOeGdXamR4YVB4Nk4vcEZYb2pZSU96c0RLaHU0QytYVjRjY0p5QlNVRE5w?=
 =?utf-8?B?VElobmdEWk4xVGorVCtCZ2VJczVYTEFCWW5SVWlVTHlFcGJ1cFBzYnBCZzhR?=
 =?utf-8?B?d1VHM2VWdkZNMEpmclBmV3NOdzNrVHRuOUU0SVFEUnNMQVI5eTFQMHkwOWJG?=
 =?utf-8?B?OWNYUHhIKzVzVUxIU1E5M0VqUjBMU1VvdEt0SE9UNmppYzNlU0pidGIrL0xk?=
 =?utf-8?B?anB6RkwvOGN1OG9Lemw0dWd2M0VkRGtOcnJXM254QithQWp6V3NLZm9ZdW5l?=
 =?utf-8?B?SHhOTW1DaUE4a3BibENDY1I2NVFtSGNKbStmQmRXR0ljUUxwbHlINkJSMEFX?=
 =?utf-8?B?VGtTelQ0NitCRkdhOGs2SjhObi9XVDVFdTdkQmpPMFN0VXpvZzJuWHJvZDUy?=
 =?utf-8?Q?gQZcHFCsml5+RsyQPqZ47O34EZizzzi/pM90mlb?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 800702c8-88d0-46fc-ec71-08dc55994c75
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 17:53:28.3792
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB6542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_105340_628630_2B4E6182 
X-CRM114-Status: GOOD (  25.88  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 4/6/2024 12:52 AM, Vinod Koul wrote:
> On 05-03-24, 21:32, Yang Xiwen via B4 Relay wrote:
>> From: Yang Xiwen <forbidden405@outlook.com>
> That is quite an email id!
>
>> Direct MMIO resgiter access is used by Hi3798MV200. For other models,
>> of_iomap() returns NULL due to insufficient length. So they are
> so how is that fixed... Pls describe the change...


The commit log will be rewritten in next revision. I'll try to emphasize 
the PHY and its configuration interface briefly. Though i don't have 
access to the datasheets and TRM so most things can not be verified.


For CV200 and MV100 INNO PHY, the configuration interface is attached to 
PERICTRL(Peripheral Control Block). So we just use a register called 
PERI_USB3 to configure the PHY. The bus reset, clock are all controlled 
in PERI_USB3 register. To read/write to a register of the PHY, a special 
sequence of register writes and reads are needed, which was implemented 
in this driver.


But for MV200 INNO PHY, the configuration interface is attached directly 
to system bus(MMIO). The bus clocks and resets are controlled via Clock 
Reset Generator(CRG). Now we have to control them with the help of linux 
clk and reset framework because they are provided by other modules.


>> unaffected.
>>
>> Also Hi3798MV200 INNO PHY has an extra reset required to be deasserted,
>> switch to reset_control_array_*() APIs for that.


The commit msg is misleading here. There is no extra reset actually. The 
reset also exist for existing users. The initial author just decided to 
manage it in the hisi_inno_phy_write_reg() routine(without using 
reset_control_* APIs) and omit it in the binding.


> That probably should be a different patch


I guess so. From my point of view, the whole patch is to introduce the 
support for Hi3798MV200 variant of the INNO PHY. So i've decided to 
squash the two changes into one single commit.


>
>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>> ---
>>   drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 66 ++++++++++++++++++------------
>>   1 file changed, 40 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
>> index b7e740eb4752..df154cd99ed8 100644
>> --- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
>> +++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
>> @@ -10,6 +10,7 @@
>>   #include <linux/io.h>
>>   #include <linux/module.h>
>>   #include <linux/of.h>
>> +#include <linux/of_address.h>
>>   #include <linux/phy/phy.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/reset.h>
>> @@ -24,6 +25,7 @@
>>   
>>   #define PHY_TYPE_0	0
>>   #define PHY_TYPE_1	1
>> +#define PHY_TYPE_MMIO	2
>>   
>>   #define PHY_TEST_DATA		GENMASK(7, 0)
>>   #define PHY_TEST_ADDR_OFFSET	8
>> @@ -43,6 +45,7 @@
>>   #define PHY_CLK_ENABLE		BIT(2)
>>   
>>   struct hisi_inno_phy_port {
>> +	void __iomem *base;
>>   	struct reset_control *utmi_rst;
>>   	struct hisi_inno_phy_priv *priv;
>>   };
>> @@ -50,7 +53,7 @@ struct hisi_inno_phy_port {
>>   struct hisi_inno_phy_priv {
>>   	void __iomem *mmio;
>>   	struct clk *ref_clk;
>> -	struct reset_control *por_rst;
>> +	struct reset_control *rsts;
>>   	unsigned int type;
>>   	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
>>   };
>> @@ -62,26 +65,31 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
>>   	u32 val;
>>   	u32 value;
>>   
>> -	if (priv->type == PHY_TYPE_0)
>> -		val = (data & PHY_TEST_DATA) |
>> -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
>> -		      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
>> -		      PHY0_TEST_WREN | PHY0_TEST_RST;
>> -	else
>> -		val = (data & PHY_TEST_DATA) |
>> -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
>> -		      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
>> -		      PHY1_TEST_WREN | PHY1_TEST_RST;
>> -	writel(val, reg);
>> -
>> -	value = val;
>> -	if (priv->type == PHY_TYPE_0)
>> -		value |= PHY0_TEST_CLK;
>> -	else
>> -		value |= PHY1_TEST_CLK;
>> -	writel(value, reg);
>> -
>> -	writel(val, reg);
>> +	if (priv->ports[port].base)
>> +		/* FIXME: fill stride in priv */
> when?


I'm not sure. Maybe until some other users with stride other than 3? I 
don't have much knowledge about other SoCs.


Maybe replace the FIXME here with some additional information.


>
>> +		writel(data, (u32 *)priv->ports[port].base + addr);
>> +	else {
>> +		if (priv->type == PHY_TYPE_0)
>> +			val = (data & PHY_TEST_DATA) |
>> +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
>> +			      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
>> +			      PHY0_TEST_WREN | PHY0_TEST_RST;
>> +		else
>> +			val = (data & PHY_TEST_DATA) |
>> +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
>> +			      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
>> +			      PHY1_TEST_WREN | PHY1_TEST_RST;
>> +		writel(val, reg);
>> +
>> +		value = val;
>> +		if (priv->type == PHY_TYPE_0)
>> +			value |= PHY0_TEST_CLK;
>> +		else
>> +			value |= PHY1_TEST_CLK;
>> +		writel(value, reg);
>> +
>> +		writel(val, reg);
> val and value are very helpful variables, do consider naming them
> better!


I'll consider renaming them in the next revision. Maybe val and val2? 
They are just some temp vars to store register values.


>
>> +	}
>>   }
>>   
>>   static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
>> @@ -104,7 +112,7 @@ static int hisi_inno_phy_init(struct phy *phy)
>>   		return ret;
>>   	udelay(REF_CLK_STABLE_TIME);
>>   
>> -	reset_control_deassert(priv->por_rst);
>> +	reset_control_deassert(priv->rsts);
>>   	udelay(POR_RST_COMPLETE_TIME);
>>   
>>   	/* Set up phy registers */
>> @@ -122,7 +130,7 @@ static int hisi_inno_phy_exit(struct phy *phy)
>>   	struct hisi_inno_phy_priv *priv = port->priv;
>>   
>>   	reset_control_assert(port->utmi_rst);
>> -	reset_control_assert(priv->por_rst);
>> +	reset_control_assert(priv->rsts);
>>   	clk_disable_unprepare(priv->ref_clk);
>>   
>>   	return 0;
>> @@ -158,15 +166,16 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>>   	if (IS_ERR(priv->ref_clk))
>>   		return PTR_ERR(priv->ref_clk);
>>   
>> -	priv->por_rst = devm_reset_control_get_exclusive(dev, NULL);
>> -	if (IS_ERR(priv->por_rst))
>> -		return PTR_ERR(priv->por_rst);
>> +	priv->rsts = devm_reset_control_array_get_exclusive(dev);
>> +	if (IS_ERR(priv->rsts))
>> +		return PTR_ERR(priv->rsts);
>>   
>>   	priv->type = (uintptr_t) of_device_get_match_data(dev);
>>   
>>   	for_each_child_of_node(np, child) {
>>   		struct reset_control *rst;
>>   		struct phy *phy;
>> +		void __iomem *base;
>>   
>>   		rst = of_reset_control_get_exclusive(child, NULL);
>>   		if (IS_ERR(rst)) {
>> @@ -174,7 +183,10 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>>   			return PTR_ERR(rst);
>>   		}
>>   
>> +		base = of_iomap(child, 0);
>> +
>>   		priv->ports[i].utmi_rst = rst;
>> +		priv->ports[i].base = base;
>>   		priv->ports[i].priv = priv;
>>   
>>   		phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
>> @@ -205,6 +217,8 @@ static const struct of_device_id hisi_inno_phy_of_match[] = {
>>   	  .data = (void *) PHY_TYPE_0 },
>>   	{ .compatible = "hisilicon,hi3798mv100-usb2-phy",
>>   	  .data = (void *) PHY_TYPE_1 },
>> +	{ .compatible = "hisilicon,hi3798mv200-usb2-phy",
>> +	  .data = (void *) PHY_TYPE_MMIO },
>>   	{ },
>>   };
>>   MODULE_DEVICE_TABLE(of, hisi_inno_phy_of_match);
>>
>> -- 
>> 2.43.0


-- 
Regards,
Yang Xiwen


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
