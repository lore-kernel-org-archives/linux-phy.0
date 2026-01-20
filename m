Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF2CD2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 11:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkY84m7HV83FtmjDhkrrC/pY+QqgPmWXoodlh5lWDoY=; b=Vz/xGyPo1tzjhg
	e/pPtL+wNOzow+LuEk5+IrslyW22E7KymJMeAEhGfpDbignZm5dcA2E9SSf776DPr3ZwFAAijRYI7
	nKDpAzSNZrMcrlwHmb9yZ7L9NlWdnjNJ1dZAAsfnM3O/5AEf6CNDOYWerBGaaRQEwMrb/htra3T7x
	2GyJcjlv11Fte1GpdMbhhPGp3elbZS4hnVfQG9t+07p3nfNqccHIb+aYw9o21Q9H7nybCShzSM2ra
	rBhg+pOXAUkefEwNM3XBZTRCtgcZAcN7VhQTQS83sDxa2c3pA7RnTiq9eHmZ/6iXcf/xZiEQEKR6L
	Rs98vxHws/K94tlsdCXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9gC-00000003gcW-3CL5;
	Tue, 20 Jan 2026 11:13:48 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9gA-00000003gbW-1iBq;
	Tue, 20 Jan 2026 11:13:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GClDlCzz7xU66yLzSzegIOdAL1YmZT1S0jppgjVKZk3+aRAL5dcySN2nQaWWEK1UYere68iIwwh+sdQD4PInYKCYsEn+EQH8jSYYfhqJhD1PYwbhY2Sruk54j3pksgAcsSsQPIpC8A12sHSTniagBN5AfVPNekkyGVgSi0+f3WQnCxsAAjjruoYB6k2seoAooKie+VG6UxilvPNB3X69V6sHqC+Q0CW+VmGJhQPdgZ1lE62eCiLeJmDXkn93XvaPFX8I/FPt6Csid3+sPu67PVGOi+K+y0oNI/U1QqBPX+8sorOEfJbvjz8TN7WcGYHjIrr0Z+/lLV0HSSJFEQ7qiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7BKv5fGtdwoDghtGmHFpFtqygIXZjBb3e+F4RbhCUj8=;
 b=LY3n/RvQTqt8WzEqmDD3XlBn7JXFghmB44GrRbN8q+yoVgxxaipKbxlI8fGzj5CYQRqAVEXbp3Og7ERU1j1kWKh0LQzzH7xAis61sWMoCB5DwXo8SXvbhDjnvG/QwX3A5SajVrBeJTHCtZQylugWrIoqmeBwBWRynu5km6lpiwS4KebofzrkoiDnE2d/BW9x+643iI1kLFeiOto/QcfHmjDDikGVeXA6W3q0pxK1WPQXm2kUsrumsEWwrPGiM70C8wX9onV0UBV+qcyMDeLCY5eiXkCjDewxV6rbN894AEtzbLseSjMiFCQM7Xp7rlBrhLvMa0AyINktbH1Kco5Eww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BKv5fGtdwoDghtGmHFpFtqygIXZjBb3e+F4RbhCUj8=;
 b=Veu1bdA9MYkJSGnyzZZKd6FaiSgrbJtEpSbOVL7ofVSn1gL4LOlGs7j6PeNtKw7kVqu/KP+13lIqV6Nb+NgHjCPl5K+8YkYzg6XIyDCT3KPay+yWA0C+rp7iFx4hTi7GRY8yxxCr9I2A5+CwZeIg/nDyYLUX6ZNOJ9qqLpQz2edvOq0zTXb7Wy5ooQ4BOyUClAPKLeL0jpMEO5uQq1cFifSWqkE2vaDyP0hOUdi0AT1SinbYySt2uj4pEP65q7IUR30LDXNMTeFLoCPmPDv97qF2giYuMbk+NlsuzdDWEsW0ZObiiLlsyxPk8Ve0negcPdS+9q+39ypBj+PlHf2bwA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by AS4PR04MB9363.eurprd04.prod.outlook.com (2603:10a6:20b:4e8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 11:13:39 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce%5]) with mapi id 15.20.9478.004; Tue, 20 Jan 2026
 11:13:39 +0000
Date: Tue, 20 Jan 2026 19:06:21 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Frank Li <Frank.li@nxp.com>, vkoul@kernel.org, 
	neil.armstrong@linaro.org, shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com, 
	jun.li@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <fmdje7ftwna5vv5xrzt5e7hpv4juzwjurhvdzzrfeifaeyyblj@givopw2u7vmn>
References: <20260108083641.2119616-1-xu.yang_2@nxp.com>
 <aV/Qha0CQ+LJHo76@lizhi-Precision-Tower-5810>
 <das6ud7gep5hrcdn4bnmoyl2pb7okbxslpnawch2osaezd6xm5@psbizlufjec4>
 <6d27a8b1-1407-40ff-945b-927ef0a39eb1@lunn.ch>
Content-Disposition: inline
In-Reply-To: <6d27a8b1-1407-40ff-945b-927ef0a39eb1@lunn.ch>
X-ClientProxiedBy: AS4P250CA0017.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e3::6) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|AS4PR04MB9363:EE_
X-MS-Office365-Filtering-Correlation-Id: eb40575f-df99-461a-55e0-08de5814f68b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|19092799006|366016|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEhWM3kxck9BU0s1ZUozUzlpRmNtVEVmaGhnendqRUZvU21uenNTU0RSbFlN?=
 =?utf-8?B?RU5HN3VScGEycmRFSTZnTjRSRDNlM0JaYU5iRkZsOFd6SXgxdXVoWmliWVk3?=
 =?utf-8?B?aktTNkhXWG5TT25LRnhITFB5azI3TG1lbkVESUZweVJSMW04OFpUaktsUXFD?=
 =?utf-8?B?N3hZT2dWRE5HYitseG03akpLMFRtK1lwb1lvNEc2ZnljOXZUTzUyRUNucEdB?=
 =?utf-8?B?WEh4U2FNa3JrdnlreUhRVTEyNEpLbUpSUWdQWDVEWGFVMmMvajU5ZlNiT3l5?=
 =?utf-8?B?ZnF5alpGQ25DbURuWnhvbGlMTnJJa3IvOWcreWlWaXlxbmFnTUNnMTlBbEhD?=
 =?utf-8?B?RjFDOW5IbXptS213RlBKUm8vNkVPdnZDRjBZKzZkTkR2dmNtV0NKOFZHZmg1?=
 =?utf-8?B?TnRPbWk0N21hNHdxeCtqNGNNdzI2U2hpbjNoTFNFcU9GZklPV01pZ29UcUh2?=
 =?utf-8?B?bjJjRkQrdFhlMm5NMDNhOGZLK2ppUE16Y1FUR1lhWkRucHRBUmFRMGxubWwy?=
 =?utf-8?B?R1JKdVJpcEoveXhqNE9Pb2d0UHNtQ21XbFdldUhNWWJlTXdyRGJ3MG9UeFFV?=
 =?utf-8?B?NGs0a3BFN2xVdDBzZThVRTM2d3NWd0xpTEdVNDJxdG9WSy8rUE1zL1VxSEFo?=
 =?utf-8?B?d3RVd3JZS296MDNKSEtONTlHbkl6cHNsRndFRHdCLzg4UElodnEreEZ4YmNq?=
 =?utf-8?B?clhvNUJ0eHlKeExrekwwbi95QXdoUkRualN1SEJEOUhwV0FxZ2FCc2F0L0Zy?=
 =?utf-8?B?UFdYWkkzZEl3YkJINUgrRW9Lbkl3ZUNsSEVsWEhBZkdpbGx4QlB6OGtjUGVj?=
 =?utf-8?B?emJvOUowNFVuYVJJRU9uaVNISGpBejhBNjgrcFQwOFFiRmhWcWZ2RTNQc09L?=
 =?utf-8?B?cnU0WnY4NHlVQTFHVVNveHdSTndJR0M1cGlvTTdvbG1uYnB1L0xCb3FpN3Bq?=
 =?utf-8?B?RlRsQkprTTJrSWEvT3g1ekp2aWsrcE1uUEF2N09UVnBRMjVnR0hqMU5hRllH?=
 =?utf-8?B?Y3pWS1ZyWEYrY3ZqV0hsN2JBREpYK2g5enVicWhkRjZjeldRZjBrZHFSVnRZ?=
 =?utf-8?B?QWR1YVdHcmJONExPeU15TE1SUjdzMElnNlFwZWVNVXdrb2ZReVFXOFQvQjhH?=
 =?utf-8?B?Z21tWkMyQkFaMkMzQUVLbEJqOE1la25hZ0JaOHI3WWRFUmJiVHhPb1Bsc0xp?=
 =?utf-8?B?R2tGU0JFM2U0dTJGUmYrb1lNNFVqUjBjZWVhcFRxMlR4UlRoYWFnUE5aZVkx?=
 =?utf-8?B?bVRFajQ0bmlYN1FTRjVlV3luUm5KTzBkNUl3ZzIwQy9uOWNDZG80T0tYQnVW?=
 =?utf-8?B?cm9KZ3MxeE80TFZwaW9VN2V4T3NzN09yeDFLSEprQkNhSTJ3YWVQdmUxTWxK?=
 =?utf-8?B?Q3V0RXlwY2N0MVUyaGRGODlsVW15cFpwSEFXai9RSmNZR1dUOElLSjFaS3I1?=
 =?utf-8?B?THBKdW8xcDdYQU9abTRocWhHUGJVV3dKSTJoMVFITkdEeDc4bSsvL3FZTHdK?=
 =?utf-8?B?ZEFpelgwNlVNWHloSW5pRHV6bTYvOWFzZ0Q1N3d5ekVGVlZWM3l0T3oyRTE2?=
 =?utf-8?B?VU9Rdldvc2hEOE1hYVk1eTlkOVlhVlN4MlZScDhZS24yS01kUHRwRlZJOHYv?=
 =?utf-8?B?ckhyNExjTWxENDhKZ2xxSldrU1puRjMwUFhvbW1DUGlReGdVRlhmYWVmOGh0?=
 =?utf-8?B?TmppbklOTllLbFdweHg2L1JsUExwMktRYzRYWXhSYVpOenhXTkhkbmpoN3N1?=
 =?utf-8?B?ZVh6Ni9sRVM0Mys3TVFHeGV5QzZHK1UweDJWWWhKcSt1MEdzRVdFbExLbmZR?=
 =?utf-8?B?OXJ1ajYyVkQyYjJQc3hQOU9zNzRYNGpUNE93YVRoNC8wUnUrb3NOUkdVSVlF?=
 =?utf-8?B?ODNzU2NLUlhObnhIOXRLWTljQzJydGh3c1dlS2ZyYjVxVnlCeDhXUC93d1B0?=
 =?utf-8?B?amZ2UHFPZG9ERDVNLzYwdnIrbzZEZld5bDc1OW56VzFBVDhxZWExYmJRenph?=
 =?utf-8?B?bmx6NW1DS2Q1bS9xWlk0OGlwRW8yMytPUVJlc2k0VXFzNnd4eVhnc01kbzN0?=
 =?utf-8?B?ek1LRmxTQUsxL1k3YWxLMHZvbmFrMzB6QTA3MjNWQWdiUzlGVnpxR0JCYlVY?=
 =?utf-8?B?NVBEM3h4ekNqM21LT2RJUzRML1BhMVRRK054WllRa2poTm0xemxwVDVZQW5C?=
 =?utf-8?Q?6oJHdKw+jlkOz2HStk8ZOno=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(19092799006)(366016)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U01SUjVFR3dzR2hvdDdhZURJSERnOVBNREZwVUlaSXIzaFV4cjBKVzNNWm9m?=
 =?utf-8?B?L25qaHNtS0xZWGJodm13ell6MDBxQXI3ZWJvYmRwOTN2akRXVlpDbDJ6Wngz?=
 =?utf-8?B?QVZZUTRvK3FGU2JLSjdXaVZNYmszMmE3NG1lMGRqYXJoNTJ4SFJXM01INFpZ?=
 =?utf-8?B?anI4dGxxZTlMTnFLUTI5elVKQmdyV25reTV1c2tsRW9jTWxHb3RsbDhLVTZD?=
 =?utf-8?B?MmR2UktOaHA1STdoN0pyUGtFNjNsRkUvYUR6Z1hTNVhBVWhET1U3bDFGd0s1?=
 =?utf-8?B?dG9rYjhTZ0hYclNjRHZhZjJxdmFxM0g2R3p0Qi9kK0xXbGRtVUZ1Z2lsd1py?=
 =?utf-8?B?NTNzQllxeW1uV0dhOC9tbFZCL0M0TGN2RVhPREw2LzNuRzRBNDBDeHZJMlhS?=
 =?utf-8?B?em9PWTgweTVHNFNBMVFFUzQzS2hpQzVFNDE1aDVFS25yQXZrVDhnaWIzUjNt?=
 =?utf-8?B?MXBvWjAxcnVrNWlLbDc4WVBNMCtOTmlPUDZmS0t4bjZYbXNxYjlpNGRxdUJK?=
 =?utf-8?B?WVZwZ2N4WlEvN1liM3ZIWDcwYUxqcDIzQVFoajFETEFTczZ3RG5tYUJZTzlq?=
 =?utf-8?B?WDNJN25GYnZjVVR6TjA2T291OTdPM1EyRFNNbERHdnYvcGkrUk1Fam92aVJo?=
 =?utf-8?B?RmVuTkxMQ3ZpbjVNRlhHQjB5MmRGckNGSlByaGd0d3NDUnRqZW5rbXo3QWNm?=
 =?utf-8?B?cUZ0TkRmYW9JRWQ5ZWt3dWtuK1VTTmVNN1BqZ0xneExHZDBTVm1SQmJ1bTcx?=
 =?utf-8?B?YklkWENwY1pXY2JtUHdHV0xBdmJNTkJraGFaN282ZGswQ0txVk4wWTQra2hF?=
 =?utf-8?B?TTh4bHI0bHo4U25BYi9LTkFHMGhZVUZtQzdiK3lyNzMzV2hZa3czaFJkb2xG?=
 =?utf-8?B?UXlsNTFKSVB2V3Zac3k5UzEwM0N5bzNuTjZpL2dkUDJ4eVdtNkY0anBJTW5N?=
 =?utf-8?B?TXVUd0NyOW9CZDdzZ09Jc2JxYnA5aUxlVmNPb3JRRmVrZGZPejBFOWpPRUsx?=
 =?utf-8?B?RnFFMWxIQlBod2VhaXkxb0huM2U4dmdzV3ZrTVlmdkdxNXpEelNvVXkrODQv?=
 =?utf-8?B?Sy9wMGlrdHR2ZmtBS0dJR1Vta1pVZEVleXF6bDU0YUNEWm5iTllFdHFpNDVY?=
 =?utf-8?B?L1pURE8yNHdFTmFDaUpMQW53dWRSMjNyRWRPQXlKS05RV08xUDdaSm9yaTBJ?=
 =?utf-8?B?WnlrMis3cElXSHgvUG9FTmVORGx3V3NyaXdLNWpNd3JCNVBxNFNOZmlQZ1I0?=
 =?utf-8?B?R3JaeGs2bjdwenhNZzAxZlZjcTQrTDM5eGVKVWZlNFpNcDMvMFF4R3NSTm40?=
 =?utf-8?B?OTFpKzVBNnNVRHBiMjAwSjBPSS9WZmNMaXg0bXJ6NmZmQmEwcE54WitPYVRq?=
 =?utf-8?B?OE9td1JjZzdTVmczMEpiTG9LOU9PUXB2TEZNS2NUNktDTVZJRythZlF1aVpS?=
 =?utf-8?B?dm1LVjNNOFlaR2VYekQ3TXVyeE5BMXJKdlVjYU84NXVLS3d4VEdEZnRvRENC?=
 =?utf-8?B?N2ZqTHdjS0sxNFowODhRUE1CM2hjOUJWSVZMVkZSU0dreUZtVzMxNjNYOG1r?=
 =?utf-8?B?TktJU0pKK24wNXZma3NOcElvMHV0dmVPRUl6aHBmcUVEL1MxbjgrTUY1WEVn?=
 =?utf-8?B?cTdkRGQyQU5jQWU4K25YbjQxRWtDSU54TEZvS2lBeWszT0hUcFBLeUVjZE5B?=
 =?utf-8?B?N3dyUTRhZ2Vyd3Z6akw1Vk83dzVrMGtWWVp0YStaaVRpY3FPWWZtOWl1YXJ3?=
 =?utf-8?B?cjgzdXFCaFdFTHU5dGNFeFlJSWR4NEZ0SkdiMCs1dm8zNjJMT1hxbktrUEFu?=
 =?utf-8?B?bHpzbm1zNmZseEhhbzN6U2lvK2xyVkF6eVFpaXIxNXVXa0VCT2xSTTVjL21t?=
 =?utf-8?B?dG1EenVhYnVnV3VrUDF2Q1dGQW1NQnJlaXZ0TUNTRHBIU0xwNlZBMWxoWFVZ?=
 =?utf-8?B?K2ozb0tJZ0hVV1BUenRXMGtIRTY2RG9RZ0U2TnlHTFpMalQyd2lhRytCUS9j?=
 =?utf-8?B?YTNaZTJUcEx6aThHeEZnajVFWC9uNytMTW10MlkwUkV6NGRqWVgrRWxZYi9J?=
 =?utf-8?B?K3BvalFVK3Nvc1A0akFOSytHVzlLWjJMd0VRb0lCS0gzWUkrczA5NHhDK0x6?=
 =?utf-8?B?eTZXSktXSTN0dHp0RVhublBZRkpGbHBuWVlYZ3JkekN6ejc3Qk1ETHlwMzJX?=
 =?utf-8?B?UXUzbDVEcjAzYjhUeTJ0Um96WEczSHE0Z2c5eDc2aEI0UlpGb2NZY09tcE52?=
 =?utf-8?B?b2lkSnZSREJBZUJOVGdYRXpoWDdpa2hFaEZnT0RSaElUdXI3RVNNMzZST2Rs?=
 =?utf-8?B?MDl1WkNTNjNYQ1gyN3NBd1lFdHhMMVRPODdiNjJwMkRYb3JsVkZZUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb40575f-df99-461a-55e0-08de5814f68b
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 11:13:39.5372
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EucLfVfBETFPnqBf/O8P033bxW1kvSbBtPkHtaghNz9xr/dV2G4oKhy9wExuzoWGcnih7p3SHnqqTk7ccEVNQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9363
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_031346_471642_64D14E89 
X-CRM114-Status: GOOD (  31.97  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDQ6MTk6MDFQTSArMDEwMCwgQW5kcmV3IEx1bm4gd3Jv
dGU6Cj4gT24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDc6Mjk6MzlQTSArMDgwMCwgWHUgWWFuZyB3
cm90ZToKPiA+IE9uIFRodSwgSmFuIDA4LCAyMDI2IGF0IDEwOjQzOjAxQU0gLTA1MDAsIEZyYW5r
IExpIHdyb3RlOgo+ID4gPiBPbiBUaHUsIEphbiAwOCwgMjAyNiBhdCAwNDozNjo0MVBNICswODAw
LCBYdSBZYW5nIHdyb3RlOgo+ID4gPiA+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJpdCBk
YXRhL2FkZHJlc3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gPiA+ID4gcHJvdmlkZWQgZm9yIG9u
LWNoaXAgYWNjZXNzIHRvIHRoZSBjb250cm9sIHJlZ2lzdGVycyBpbnNpZGUgdGhlCj4gPiA+ID4g
VVNCIDMuMCBmZW10b1BIWVsxXS4KPiA+ID4gCj4gPiA+IAo+ID4gPiA+IFdoaWxlIGFjY2VzcyB0
byB0aGVzZSByZWdpc3RlcnMgaXMgbm90IHJlcXVpcmVkCj4gPiA+ID4gZm9yIG5vcm1hbCBQSFkg
b3BlcmF0aW9uLCB0aGlzIGludGVyZmFjZSBlbmFibGVzIHlvdSB0byBhY2Nlc3MKPiA+ID4gPiBz
b21lIG9mIHRoZSBQSFnigJlzIGRpYWdub3N0aWMgZmVhdHVyZXMgZHVyaW5nIG5vcm1hbCBvcGVy
YXRpb24gb3IKPiA+ID4gPiB0byBvdmVycmlkZSBzb21lIGJhc2ljIFBIWSBjb250cm9sIHNpZ25h
bHMuCj4gPiA+IAo+ID4gPiBTaW1wbGUgc2FpZCAiRXhwb3J0IHRoZXNlIHJlZ2lzdGVycyBieSBk
ZWJ1Z2ZzIHRvIGhlbHAgUEhZ4oCZcyBkaWFnbm9zdGljLiIKPiA+ID4gc2hvdWxkIGJlIGVub3Vn
aAo+ID4gCj4gPiBPSy4KPiA+IAo+ID4gPiAKPiA+ID4gPgo+ID4gPiA+IDMgZGVidWdmcyBmaWxl
cyBhcmUgY3JlYXRlZCB0byByZWFkIGFuZCB3cml0ZSBjb250cm9sIHJlZ2lzdGVycywKPiA+ID4g
PiBhbGwgdXNlIGhleGFkZWNpbWFsIGZvcm1hdDoKPiA+ID4gPiBjdHJsX3JlZ19iYXNlOiB0aGUg
cmVnaXN0ZXIgb2Zmc2V0IHRvIHdyaXRlLCBvciB0aGUgc3RhcnQgb2Zmc2V0Cj4gPiA+ID4gICAg
ICAgICAgICAgICAgdG8gcmVhZC4KPiA+ID4gPiBjdHJsX3JlZ19jb3VudDogaG93IG1hbnkgY29u
dGludW91cyByZWdpc3RlcnMgdG8gYmUgcmVhZC4KPiA+ID4gPiBjdHJsX3JlZ192YWx1ZTogcmVh
ZCB0byBzaG93IHRoZSBjb250aW51b3VzIHJlZ2lzdGVycyB2YWx1ZSBmcm9tCj4gPiA+ID4gICAg
ICAgICAgICAgICAgIHRoZSBvZmZzZXQgaW4gY3RybF9yZWdfYmFzZSwgdG8gY3RybF9yZWdfYmFz
ZQo+ID4gPiA+ICAgICAgICAgICAgICAgICArIGN0cmxfcmVnX2NvdW50IC0gMSwgb25lIGxpbmUg
Zm9yIG9uZSByZWdpc3Rlci4KPiA+ID4gPiAgICAgICAgICAgICAgICAgd2hlbiB3cml0ZSwgb3Zl
cnJpZGUgdGhlIHJlZ2lzdGVyIGF0IGN0cmxfcmVnX2Jhc2UsCj4gPiA+ID4gICAgICAgICAgICAg
ICAgIG9uZSB0aW1lIGNhbiBvbmx5IGNoYW5nZSBvbmUgMTZiaXRzIHJlZ2lzdGVyLgo+ID4gPiAK
PiA+ID4gaG93IG1hbnkgcmVncz8gaG93IGFib3V0IGNyZWF0ZSBmaWxlIHJlZ05OTiwKPiA+IAo+
ID4gPkZyb20gMHgwIHRvIDB4MjAxRi4KPiAKPiBSYXRoZXIgdGhhbiByZWludmVudCB0aGUgd2hl
ZWwsIGNvdWxkIHlvdSB1c2UgcmVnbWFwPwo+IAo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L3Y2LjEyLjEvc291cmNlL2RyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWRlYnVnZnMu
YyNMNTQ2Cj4gCj4gUmVnbWFwIHNob3VsZCBiZSBhYmxlIHRvIHByb3ZpZGUgYSBkZWJ1Z2ZzIGlu
dGVyZmFjZSBmb3IgeW91LCBubwo+IGRyaXZlciBjb2RlIG5lZWRlZC4KPiAKPiBUaGlzIHdpbGwg
YWxzbyBoZWxwIHlvdSB3aXRoIHRoZSBhYnN0cmFjdGlvbiBiZXR3ZWVuIHRoZSBjb3JlIGdlbmVy
aWMKPiBwYXJ0IG9mIHRoZSBQSFkgZHJpdmVyIGFuZCB0aGUgU29DIGludGVncmF0aW9uIGdsdWUu
IFlvdSBwYXNzIHRoZQo+IHJlZ21hcCB0byB0aGUgY29yZSBkcml2ZXIsIGFuZCB0aGUgZnVubnkg
bXV4aW5nIHRocm91Z2ggdHdvIHJlZ2lzdGVycwo+IGlzIGhpZGRlbiBhd2F5IGZyb20gdGhlIGNv
cmUuIElmIHRoZSBuZXh0IFNvQyBpbnRlZ3JhdGVkIHVzZXMgcGxhbgo+IE1NSU8sIHRoYXQgU29D
IGdsdWUgZHJpdmVyIGNhbiBpbnN0YW50aWF0ZSBhbiBNTUlPIHJlZ21hcC4KPiAKPiBVc2luZyBy
ZWdtYXAgaXMgYSBnb29kIGlkZWEgZm9yIGNvcmUgZ2VuZXJpYyBkcml2ZXJzIHdoaWNoIGNhbiBi
ZQo+IGludGVncmF0ZWQgaW50byBTb0NzIGluIGRpZmZlcmVudCB3YXlzLiBJdCBoaWRlcyB0aGUg
U29DIGRldGFpbHMKPiBiZWhpbmQgYSB3ZWxsIGtub3duIEFQSS4KClRoYW5rcyBmb3IgeW91ciBz
dWdnZXN0aW9uLgoKVXNpbmcgcmVnbWFwIGlzIGdlbmVyYWxseSBhIGdvb2QgZml0IGZvciByZXVz
YWJsZSBkcml2ZXIgYW5kIEkgYWdncmUgaXQKaGVscHMgYWJzdHJhY3QgU29jLXNwZWNpZmljIGRl
dGFpbHMuCgpIb3dldmVyLCB0aGUgcmVnbWFwIGRlZmJ1Z2ZzIGhhcyBpdHMgb3duIGxpbWl0YXRp
b25zOgoxLiBCeSBkZWZhdWx0IHRoZSByZWdpc3RlciBpcyByZWFkLW9ubHksIGFkZCB3cml0ZSBv
cGVyYXRpb24gcmVxdWlyZSByZWJ1aWxkCiAgIHRoZSBrZXJuZWwgd2hpY2ggbWFrZSBpdCBpbmNv
bnZlbmllbnQgdG8gZGVidWcgdGhlIGlzc3VlIG9uIHRoZSBzcG90LiAKICAgUmVmZXIgdG86ICIw
OWM2ZWNkMzk0MTAgcmVnbWFwOiBBZGQgc3VwcG9ydCBmb3Igd3JpdGluZyB0byByZWdtYXAgcmVn
aXN0ZXJzCiAgICAgICAgICAgICAgdmlhIGRlYnVnZnMiCgogICAgIyBscyAvc3lzL2tlcm5lbC9k
ZWJ1Zy9yZWdtYXAvMi0wMDUwLyAtbAogICAgdG90YWwgMAogICAgLXItLS0tLS0tLSAxIHJvb3Qg
cm9vdCAwIEphbiAyMCAwNzo0NSBhY2Nlc3MKICAgIC1yLS0tLS0tLS0gMSByb290IHJvb3QgMCBK
YW4gMjAgMDc6NDUgbmFtZQogICAgLXItLS0tLS0tLSAxIHJvb3Qgcm9vdCAwIEphbiAyMCAwNzo0
NSByYW5nZQogICAgLXItLS0tLS0tLSAxIHJvb3Qgcm9vdCAwIEphbiAyMCAwNzo0NSByZWdpc3Rl
cnMKCjIuIEl0IGNhbid0IHJhbmRvbWx5IHJlYWQgc3BlY2lmaWMgb25lIHJlZ2lzdGVyIHdpdGgg
Y29tbW9uIGxpbnV4IGNvbW1hbmRzLiBCZXNpZGVzLAogICB0aGUgcmVhZCBvcGVyYXRpb24gaXMg
aW5lZmZpY2llbnQgZXNwZWNpYWxseSB3aGVuIHRoZSByYW5nZSBpcyBhIGJpdCBsYXJnZSBiZWNh
dXNlCiAgIHdoZW4geW91IGNhdCB0aGUgcmVnaXN0ZXIgaXQgYWx3YXlzIHJlYWQgYW5kIG91dHB1
dCBhbGwgdGhlIHJlZ2lzdGVycy4gCgpUaGFua3MsClh1IFlhbmcKCj4gCj4gICAgICAgQW5kcmV3
Cj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
