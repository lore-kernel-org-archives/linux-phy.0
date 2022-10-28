Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1A5FA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MisAOwevxsf6UYTsF9wPzyJ4081rlq10bp6RJALGpVE=; b=pj/qDg7AIdmIXGkhygQk4sVcVy
	K1gv95gotoLGcHt6z+cp+LWCnQYs912BEaE0TAH4s5IuAx508pnspadOelhUZg+joczOoSj4ibmEM
	xkyptCcG5v57xoFHb6AO1t4/gZi9ot8MAR/osGqgxRhhmm8AU7d0QcKCY7aJWkPzTWsPspdHEgQh7
	O0/OhpZUjsejsNDR1AcoMNa0+iEEGGUzPnBqvsWVIIFOwu153ZRpFOpJ2nd9jsXd1Lny7TDL/9/Ea
	ZY0hbliyucBbwpKkViL0+83KFonzaJWDi4i7vtz29b6luuRYZbvlqEHIbHTWbBiAFA1ox/A3KNhJM
	VQ9RXbAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooLcY-00GIxi-6h; Fri, 28 Oct 2022 09:25:46 +0000
Received: from mail-bn8nam12on2067.outbound.protection.outlook.com ([40.107.237.67] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooLcB-00GInr-70
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 09:25:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/66i5y/tLPugP05IG89fLx/5EU/NUYigOODr4XrH3uc85SDgM2CpEY2pkDGu3QJ3lPYhNoona+bnTcsQl4QSJeJpxP+webgxN5X82I9aRoxxV+c+vYFFAwVsXDebiGKAPsfnJ36ducwzLbHYkMgq5EaqpRoAadjdJIJI5iTE7SToSdktie2EZ8wb/fTA1NKQJREvpXTZyqRp1GG6IkNcMB1ymLUObaFLb/gT0VoJs+qwCaU0NDfKyEBkllH7a2dkfYQ3UaGAB8kSGFHuk9UAQqBtIYNkRLkmCmWOSQhQIdW09oLlIs+pZcTPhUlAI3PTc0/hDYTR0lWK2dotk8OQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CVMvACxfdGuhnrZ0SOLDq9Cxt78V69uMdoMFp2SWB2g=;
 b=VpBslhjwwQuJXPZdPQzFiYqDZ2QyKFuDWXm8FICHXtbyy4P9ju3EAhYuARNqXl2r5ULWp0eZZQTdeF4fSyCfhhWke+ke7ooay2fG8Fla/jdqJRnQ+3U/iAxyAqHQ/iO6oLEyuL2YuftlTXflIj1GzTBNBhpPVzZQnAhpw/TJ1J8vWV2ucPym/TCKx/iBy/yl8uX0+FIp7wLVynwHnHoweTVcGHDjZTSUAZ7AXEG/pt0Ji8zMfu3Z3rduARFCROQeBBDMJ41K5uGXA7yNi971Yg6kfiRabjjND5sBu8vX/LN5IZ2R0uQczfoUmCAUbSgsxKhy3xMbWlokuW/mXZjTpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVMvACxfdGuhnrZ0SOLDq9Cxt78V69uMdoMFp2SWB2g=;
 b=mb3Wm4irjqpGJdq0PJW2WNruA1ikxD5hl7LhqRoatLhr//dUUjiVL+TUNOU0vYagFHRajyTA6p3AJyjjBe9P2juO+K/Wcz9kHcxamysH5dGMVTE9NbOyReoMHgw8d/IUHURoh/CpEB6SLniXDSt8/h0WXSmLz6ptGfw6O30qHJiepMPWOWe9v331AI0x6NJ64OnCVOY/64zWuHi8X1XpZ6FN93rL4legkripIDxzWp/U5ev7EhO/VbkpvWh7FNuyWGMHFFE4gPa60l8rQ323OExO3pBQXwJB5jg3kYcaGj+QS7MLjijx7Nc1qKDsKddu4XRL21vdJvPYnOR2jkjZJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 PH7PR12MB7235.namprd12.prod.outlook.com (2603:10b6:510:206::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 28 Oct
 2022 09:25:17 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66%6]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 09:25:17 +0000
Message-ID: <c8039494-9fb7-c72e-a852-8bde13c0a61d@nvidia.com>
Date: Fri, 28 Oct 2022 10:25:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 02/11] dt-bindings: usb: Add NVIDIA Tegra XUSB host
 controller binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Wayne Chang <waynec@nvidia.com>, Rob Herring <robh@kernel.org>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <treding@nvidia.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>,
 Ajay Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "balbi@kernel.org" <balbi@kernel.org>,
 "mathias.nyman@intel.com" <mathias.nyman@intel.com>,
 Jui Chang Kuo <jckuo@nvidia.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sing-Han Chen <singhanc@nvidia.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-3-waynec@nvidia.com>
 <20221024145446.GA1763588-robh@kernel.org>
 <52ae737e-eb4f-9eb7-8b79-d58251062276@nvidia.com>
 <f5d2c979-a61c-e0d4-7a08-5b6f5b38dffb@linaro.org>
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <f5d2c979-a61c-e0d4-7a08-5b6f5b38dffb@linaro.org>
X-ClientProxiedBy: LO4P123CA0163.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18a::6) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|PH7PR12MB7235:EE_
X-MS-Office365-Filtering-Correlation-Id: 56fed63a-af5f-4f30-c8dd-08dab8c65391
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	FiA94WvW7rUGsS/+Rk7vr8Co1vdc9/Tu6bmb45fOlb+4WBSK2FGOZhO6SxUjnHGH/gxdNTO4dy/BchPhWwidwigD1xIVuP03HI68j6lZECn0yJZeYRvlTVktfqzvFs1ZM0yKvgnCHOr8fyN0MPwSZ/g7loO/PQ1hm7Y/RKHXlw6kUfrwa5fX8DGX8uvNp7Fk87WSPvNhY7med1Z7KBqWRkOKX9waI9WMPIvrP7ae+U81ZBeP2QOSPSCCdkcO2KBjX+DG+FfeOoug7xZwy5UK4NKuZBYtixo3jM+UA2eQ59zUZ+Skbw6O52mkpi46lfzGgPRJ8cFmIQvKeG3oWGzFmSZuEiGZ5ChrrJgPCsTD4EGyplKrHGBJiUqgENHKi0y83Qy5vM9e1e345SK8Ecys8br/e+jkapFreW+zPAOw61THspiu3DHALm+iPMO4umWxaUjMAGKLaYxVSuOimo0AQ7taCYSs4b3q7kOZNfDv6T8PzOJ4xz2zT64e6iXzk9qrJOtJ+RnmBzGCpnXURe81o37KqeZoCfuKNqDy5YrfPKFGFB3qiwEDe78Apmqni4/hlgHZsOAXHoL1to/I40/8cFWt3bd2bKizlPOrW5NfQAtrt5e77kquIzHCdT+KUrXQi1Y8GzKXqCSa8l9MRYSMv0BiwfvXQqDHbzwcum1g0xCexpVkpLCqfRfa5dnL0+CmSX40JqeYVwcPAGJutq1FTX9i/PW5fkTBS1Ju1n+0pBAozkxJxY/ZHyClQcMMGfZBZs1wQmQDCEahMUjKUAmfTcQroU7kDJ9Y26TApvKkQ54=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(346002)(136003)(451199015)(31686004)(36756003)(186003)(54906003)(6486002)(8936002)(8676002)(4744005)(66946007)(2906002)(316002)(5660300002)(7416002)(66476007)(66556008)(41300700001)(4326008)(38100700002)(2616005)(6512007)(86362001)(110136005)(478600001)(31696002)(53546011)(6506007)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?bThqazViUWFTOGVoblF5RGl5UlJoZEhvazBFTDNtRUR6RmNydm9UV1RMb2h5?=
 =?utf-8?B?ZHhNTTBkTjVDR2dRMVJSU2EvclNoNW8wbEdoY2RzblIwSmp3clZFVnh2TGt3?=
 =?utf-8?B?R0lpaXlmWTVYaXFZdFo1Qkl4SVZhVmoralprSjNrMS9yMktndGFmWXBsVTM3?=
 =?utf-8?B?Y1JIUjR3Sm5nVHMySzFONk02UlZEZ1RUMkdackxNVUZ0YUxVS0g2VnROaHJS?=
 =?utf-8?B?QXdXOThFQktYOXp5MkZ4M0twWVowcEwrQjNNZ2RVd3NFbmVlMzdiZy9mbEM5?=
 =?utf-8?B?ZFlmZmVvMC8xVjVhU0l2MUVNbUlpR2F3RDFKVEFvaFl1WWtZOWZoejhrVlY2?=
 =?utf-8?B?RmRtVnljZHJpVW9PaXdvK1BiSUFxbjlKV20vbDd0TzJJUEp4N29lSEFaeHBn?=
 =?utf-8?B?YkQ2Tk1RREprOG1sSEVJcU5KSDJDRklXY01DcVg1K1MwMjhHTG9pS2JjZHRY?=
 =?utf-8?B?RTRwTkNUQnd6azYzc0hRY205VjJIMGtPdGhvTWtvd3k4R3VEQnR3QmFMbzd2?=
 =?utf-8?B?WDdJR0JITXMwUm9EdG1FZDhyM0RxdGxWOHNUKzc3Ly9BamFScDlUUzJ2YlFL?=
 =?utf-8?B?SkJvYUZpcndSeVFZREtsRitqSVNxdEFzZEZYaDliMmRUaUs0eGQxS2IwdSto?=
 =?utf-8?B?akJ2dTZKbCtRcHFFNzBXSitIZ2d2Z3JRWDB1aHVUYjlLQnBsdzh1Vk1WVEdR?=
 =?utf-8?B?Z2RjMm44MEkxT0k2NjkvbEQ5aklJQkhtNGlURXlLdDFlaXlueWg0VDRvRVZQ?=
 =?utf-8?B?M2IrSjF3cVliejZWZlRub2xJU0EyY0xCVTJnSkVPQnV2bDY5NGNSVGxoMEV4?=
 =?utf-8?B?SHR1eFljTDZ5ZXNTN0t3STErWjU0T0pUL0NLQktXaUltSVpXYXhkV05ZeWpO?=
 =?utf-8?B?QTJFUk9Lb2pDdEFPUUxpaTYzUlZzaGJlWmVMWVJ4Z2dJUVh6V1ZPdVRROHFw?=
 =?utf-8?B?b2RhcTJ2cGFYZFY4WVFPWFlJaDJSMStLOVlNWXZkTXpXS05hMi8zK0t1UDZq?=
 =?utf-8?B?TjczZ0xNdTdVRDJlWnYrbGtHVVJWM0w2NVV2dHhUbitjQjZXSDhCYUgyL1VJ?=
 =?utf-8?B?ejIvU2o5R1ltWWZrYnB3Rkk1eHhOLzRUZnNDSjB4amxWQTFpejRsVUx1Q3dU?=
 =?utf-8?B?T3VEOGd0ckhZTWE0RFFQNS9ScElYc3dmMHZtb2dQN2dsOHVHVG4xWnFHRWZu?=
 =?utf-8?B?RFFyaU1VY0JBY05ZVWhDaHR6V0dhZ3gwQ0ljZXpDem1oMTE3enpIc2hwb1Vw?=
 =?utf-8?B?aHBBUXlGK01YR3Q3bG1hYmJZWWVSS1lMQ3ZOMEozMG9ZWjk4cktrVnVFYllX?=
 =?utf-8?B?b21ucmJFOEk2T0I5M3VxTjMxbDFKVGdoU21jdlJyblBiRG85KzZvTTRCUEFo?=
 =?utf-8?B?bnZGcEhkeWlaZWMwRG0yeHNXZ2FYK0pPcVd5UVEwNFBIKzBjMjBtM3RpY2xG?=
 =?utf-8?B?dlNXWCtoK2pzWnZzRTNNbmliaHIyOHArK3V5SWtOMlg5NUVYWG9VNzRlM0pu?=
 =?utf-8?B?UDVQWlpqOHQ3NnBSTHdZTGlVMHJVUlRQNlUrYWxaWDlTRkdXdWtQQ2s3V2Vx?=
 =?utf-8?B?M0lKTEdIR25EVmVXRm85c1lSV3ZkV3Y2MWF0RUpEZXdTckJmRkQ1cjBzVDhQ?=
 =?utf-8?B?blhmbTlFSXRrb1JCWk95SjZmLzFRU255QVVUazFLZHE0UDFxSGVVUzFhZC9H?=
 =?utf-8?B?V1JVS1U4NXpjK0pkN3hiMEJyOEFlSTlXbGRNdG9ScGNrdlp1aVQ5RnhMU1RI?=
 =?utf-8?B?T015WWJPTFRjV0NJcCthOVFEQSt1SlBSVThLaDVDdWdQNkNlWFZvWXFWNkRl?=
 =?utf-8?B?ekI3R0NzeFJHS1o5QUt0ZEN6MzdTajRPdHpLaHZuQTIzTS9tbzFmK01QZU1P?=
 =?utf-8?B?bkFLaTZha2RIdTgxczkzVUpNN2VMcnFnTk0zY0hqMGlHeTVkRit4ekhOTGxp?=
 =?utf-8?B?RU5yLzVLdTBIRkhXdGFSRklVeXM0Yjk0K1ZMcElzQ0IrYzVmbkZubEwzMURF?=
 =?utf-8?B?MVlVaVMvclBHUXhmSTlMU2tOZDZvZFF3MjdZU1hMQUVmQ3UxVjVtWjdBQ09Z?=
 =?utf-8?B?M25FenpPbkxNckt1MDZqMk1GeTY3QVNTcGdocTMwa3YzSFRvaFlkSGVzaU5P?=
 =?utf-8?B?OVc1VHBmUDZJa1MvVFUyTk1tVXJZSFc4V0VoNENvNW1mMXd3cEZSM3lGdC81?=
 =?utf-8?B?cWZOYWdDZk5Za3dKbXFldHNaQXhMS091bnE1a0ttV3dSbDdpRmpvWkhqTWVu?=
 =?utf-8?B?U3Y0UUNlNUh0Wk1JeHFkbXoxa2J3PT0=?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56fed63a-af5f-4f30-c8dd-08dab8c65391
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 09:25:17.4725
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O9Ox6hwtlrI66fE0FEzad3k/rNfhkmciTtNaoNQ73Its7sBqxF5QzwO6CA/WzMYOkBVqq0m+cqZB+6vzcuVXHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_022523_558173_84A24AAF 
X-CRM114-Status: GOOD (  10.08  )
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


On 28/10/2022 03:19, Krzysztof Kozlowski wrote:
> On 25/10/2022 04:02, Wayne Chang wrote:
>>
>>>> +  power-domain-names:
>>>> +    items:
>>>> +      - const: xusb_host
>>>> +      - const: xusb_ss
>>>
>>> Drop 'xusb_'.
>>
>> The properties are constant and we use the name to get the power domain.
>>
>> 	tegra->genpd_dev_host = dev_pm_domain_attach_by_name(dev, "xusb_host");
>> 	
>> 	tegra->genpd_dev_ss = dev_pm_domain_attach_by_name(dev, "xusb_ss");
>> 	
>> we might not be able to drop the xusb_
> 
> These are new bindings, so why do say they are "constant"? New bindings
> means you did not use them. If you used them before bindings... what can
> we say? Don't?

Not exactly. However, what we should do here is convert the legacy 
binding doc [0] and replace with this one. But yes we are stuck with the 
'xusb_host' naming.

Jon

[0] Documentation/devicetree/bindings/usb/nvidia,tegra124-xusb.txt

-- 
nvpublic

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
