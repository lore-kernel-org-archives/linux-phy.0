Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11444CA0ED3
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 14:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oljd1BWzgHigWditZkjOX+fLkw0ovdO2Ddh/aUgiKAA=; b=tg0PiJ6A8tKjrkZl36i4qfCgUk
	WnAckhH1zWYTm861Dkd2S07XnkzjZ1sdUbI8v7/LjnPWBkiDNxMrvFcGIsBGxeks0AZ16wUkXHJx8
	RFGU5vEXNBaO0vhAoh8FD3KaomjwYGSddhU3FaRr3IxwuqBYvlv+TCH2i7svtHYmtML2yXzDQJ3O3
	2IFVG15r2S1/nVm/J+ioN7G9VA+1WiJUrGROcQtlq85R7NXdtjHoaBa2rHaQ+VncR8skUWGsxXcKM
	/MqrNw76cNTEHqtYbCyeefRsKy9bGjLF0piuczMiCaaO67+Xqg+bAvGe0UNLk481+l995lj7XX0t7
	LZ/MddRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqjz-00000004iST-3BWb;
	Wed, 04 Sep 2024 14:12:11 +0000
Received: from mail-dbaeur03on20730.outbound.protection.outlook.com ([2a01:111:f403:260d::730] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqhi-00000004hyk-10X4
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 14:09:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IvuySaiKUXhF9H4EfRSZQXJ42vXZb0aN3ajDwkyHrDkjr+QAB8g0loe4Gk/0M+z23s+nxqyZRyopmKBTRqL3vwAU9xGaaIbSD7lZ3Z9Q7tdIfXmeJMTn6Dw/ARolVShjm9gB4pqPW9JKvYZFq2Oi9rLThFQ3Fxv2wAe/lQwLT8m2GQsCUKy2AJfWHNkDQ+50FVWKC/FitG5/4PwINN3sLpq0P9NTssVf9iH0lsMkALl/V6EGAsuFrO0d2Z/BBi13KO0cZtkMlQJsQYZLazt0/FmIV8hXL5/fZD36iJJk8KM7gJYgbCzZTbV9vVXimUyIrvLvPAGf3W3IcNKjAEpqsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYkJnduJvkNzFGl30LI8R2L3zbAIi6nC1Ak9jJhX2/E=;
 b=PMEBzgbQgSX3Fw0dHWk6bRa8uEt0Ok65PBtYwcxDwvjrIyn+7nOQHjZZ2UltCP9n3G3iRxBK9RxjoQuxQ3npoBHc2hIg8oOHjDGnwNS2J8zmrpLjnknz3BZCG2MpOKNo1SjRFp4X+YSiKhyf/YKJUEHLCy27qwx7BUEe9XuMEE34rhYFknc2Hb4tSEUP4T93upeSmJ6T4KioiAI41UdIF/x0CN1IsRU1+5zTp4e3ReeyPz6H/AzrmT4RFiX79euioUyq+ehbtRf+qGc3vVqq9agI31wiHN37mJR8XLakmc+eJLB4yQsPe1GzDYa/ZhcOg1p0Cd8GcZNux40SeHT+VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYkJnduJvkNzFGl30LI8R2L3zbAIi6nC1Ak9jJhX2/E=;
 b=dkZSUBDmbMCex2QLewtrAdYGBCMj1/0J27WZc6hTvV6GXwBuueWCfmqpCxCRo6bQHd3Fz6i0eRHaX4AJHIE2+fxE7tfT+pRjpabkihj1BFjY1y6VyK5GLl99D5cfIpJYEqpU/755xcBaV6oRcdoivK6ymaFxyaw60Qx6AFUrHEU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by DU0PR10MB6726.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:402::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 14:09:41 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%7]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 14:09:41 +0000
Message-ID: <a40d8846-6a6b-4da0-b7d0-dbea1fa76c63@kontron.de>
Date: Wed, 4 Sep 2024 16:09:39 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 3/5] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
 linux-imx@nxp.com, festevam@gmail.com, aford@beaconembedded.com,
 Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach
 <l.stach@pengutronix.de>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20240904023310.163371-1-aford173@gmail.com>
 <20240904023310.163371-4-aford173@gmail.com>
 <c882eed1-9f36-4382-89fe-f56dd457a45f@kontron.de>
 <CAHCN7xL4WikbY+k+QdBS64-Kt2oHTQU1i_G44PGJDZZKkRaymw@mail.gmail.com>
 <739a8732-532c-4ffc-b3ef-d01793c70d4b@kontron.de>
 <CAHCN7xK+JTE=Xdf3m+xyiJ5sjvN0QrZ-VpNnwrD_3XM+LPMHNg@mail.gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <CAHCN7xK+JTE=Xdf3m+xyiJ5sjvN0QrZ-VpNnwrD_3XM+LPMHNg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0141.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::12) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|DU0PR10MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c794efb-cfe6-48cc-3bfd-08dccceb3831
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUtYTUJWR3QyVE9XYXhvSUhXMHlXQ2ZubVhPSUpJS0pDeHI1cTN5SzU5bGVY?=
 =?utf-8?B?RldFcExobDNOaUN2RE80M3QwK2hicGsyczlBcElpRC9SVnNxRGRSL0tkWCtP?=
 =?utf-8?B?MFhTd3JFN3Y3WjhzeFJWcXZKbjhrbEVHWFZnaFdDRWpoQThsZ0RHbUplS0tq?=
 =?utf-8?B?WDhoSXlka21VcmVHSDByeTVyRmxYYkFNcjFSem5TendHZ1RnbmxCVkNpeUVn?=
 =?utf-8?B?emp6U1hPZWtpOUVrU1dObTZ2clRIYkJYVnJkRkpadFVLM1p1NXdURVpjTU5D?=
 =?utf-8?B?Znh0SkpjczN0dVVIUWhrTGh5dThNNzNhaVVXSG42bEl3L1BWUkdDanJUanYv?=
 =?utf-8?B?OFdMdUxZb1c2ZUFoZW5vdkRCMkFoMEg3TE1JNm5rblhBUEd6K0lRY2VVOGRz?=
 =?utf-8?B?OGdMYjBvNXZ4K0ZuUlRiVG1tZk8rOUxFTUVlMHdiYUpVWFR6djBtQklhUDVV?=
 =?utf-8?B?NjJYdWo2SWFkV1I2dTZmdnN0emJBS3ZWWk9jOGNzVVU3Wlk1ZmlzdHcxSHVY?=
 =?utf-8?B?VlFxOVc2Y0UzNkEwNmtSU2s1VXBuSUN4QWZYN3hkRU5qWlZIYngzRkgxamdx?=
 =?utf-8?B?Y2pyakxUTXFkeFRQZzdBbE9weFVzOHhGZEhqcDRhaXFkZHR2Wk1pb0RaQm1E?=
 =?utf-8?B?MlErTFVZVm1xcHdsZEQ4KzNzMXNjK290OTNMRHcrSkk0TU9RQ3hlc0czbGlt?=
 =?utf-8?B?N3VKMHJLVW5mbzRQcFZHMFNZRTVzOEQzSXRndU8rTkJCWjhlek80V1ZMSHBZ?=
 =?utf-8?B?Y29BWlBGTVJKKzBMaXZULzZjZktOcC9aTHVMVzExVFRIYzIyS3FJakFHT1Jy?=
 =?utf-8?B?VzBPSmdpcStodkxFVmQvVCtRNTNISEdHekhPZzQreDBtSXY4ZWxIVFBSRWUz?=
 =?utf-8?B?V0JSUDMvSU92ckZJZXU0dFFLSWk3K1NVRmsxeHFaV0d4V2ZPTlZTRDRXbU1o?=
 =?utf-8?B?SEx0WkxUYzR0WkxEblFxc05kNWZiTVJ0dFF6dTF4Wkk2TkdBL2hVcGFaOVVP?=
 =?utf-8?B?djF6WnRaZ1Fsa2U4bHhyYjlPOG04K1lyUUVVcldQbitJUGpZQzVRWCtPdytL?=
 =?utf-8?B?U3N6MzFaZlZJOWlYVjcxeUNjMDlhUjJRUnppK0RNdHZLbThEMXM5NVQ0bVBF?=
 =?utf-8?B?c0U3K3E2SmJzUXNINUlQczAxbnpMT3d1cStablUvVmQ4NFNITGNHTGFxQnJo?=
 =?utf-8?B?K2tSRzRIK0ZUR2IxQWU4NG1wVkVCUjVFMEN4VWROaWo3S1hPTVY3Skw0SXFV?=
 =?utf-8?B?OVkwU3RNVlBlbk95QkVIMHRMOGdoR1NjZ3AxWm14QzNsUitlMHBJK0RYSzgx?=
 =?utf-8?B?UXFmdXdsK2RNVDdaci8rZXlZcjFacSsySEVocStBWlFBZE1kcWU4WkdXY1k3?=
 =?utf-8?B?WGRXbkM2VXhYN3ZtdCt5RE9mTlE3M0U3Mk9kSVVRcndtT3NGMExIeWpycWJC?=
 =?utf-8?B?cnMxalIrUGw4NzJxRjFudHk0VytrY1dBSTZPcVE0ZmEreU5sVzJXUTJRQlJz?=
 =?utf-8?B?NTR5SjhvWjcvQm9oMyt5SDFjYTRvQ1dEQkxqZG5lVTVXTkN4UUxUZThjaDlR?=
 =?utf-8?B?UnV5WE5XU0lleDVJVll3VENLTWIvdmtmejJ0MndUcnlYUXRYaEdXY1kzamJT?=
 =?utf-8?B?NFp5M2VJVERUYUJWY2hQMmQyeWtJTi9rRkdDUjY4K3IyeEpHTEx0M21mZW9u?=
 =?utf-8?B?QWx3aVdPaUh1S0dwTml5L1FNc2ZaWHl5Qi9CZnRPVElxb3hlS1dPSHZVOVJ0?=
 =?utf-8?B?d2FCbzZsSDFNZVhScnYrTm1IeVNuNG9HM1QyMGxVRThNdGp3NjJPc1liWUdV?=
 =?utf-8?B?SnNUZFQ3dDFNMXQvakVvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3pXTFk1K0F0a0FyS2k5TXpRRjVtRlB5U1hRaUx1WSsrNThPWHptQVI4ZWpS?=
 =?utf-8?B?NDdTckZ2c3UvY3lLRnVFNS9CVWwzblRSZ2JIc2Jkd0RhUmJYdzJ4b3k4bzcy?=
 =?utf-8?B?YWltQlB1S0JQMTFoZEJvWldzZGJwSllOc1RsajNNM2lXaGVnSnBZSkpOV0dm?=
 =?utf-8?B?dFo2WDc1QlZSNEdQci85YzkzRlMvem1NbStqRVpRb2VyL3UvM05meWlZL3Fk?=
 =?utf-8?B?enAxVzVhenlNZmFoWkVucmNWaFR2SHB4MDBJS0RMNUx4ZEt3T0ZjZFRRYURk?=
 =?utf-8?B?aXVCV2d3RjNQRkp1eE9uMmoyL0dJT0laSENoTldhTThxNkhZQ2ZHSG1aajF0?=
 =?utf-8?B?OEVsdnVPN0c4WHp5NmVsbEd6R2FCVHVsTU9QRXUwdDVVNXZCeWtwOGNlL3pH?=
 =?utf-8?B?dGRHSDJhVFZDWDNoODZ4SDRXS2U1TmZzVTgwRzlPUm5TSFBKK2VjRkRNNWJm?=
 =?utf-8?B?a0tSU0xHTlBlMEd0Tmw0Qml3NzMwYkZSbmVZaXJPbTBSQlRlcVQ4Vys0SXl1?=
 =?utf-8?B?THRpRjN3bzA0UjI3dU9GWjNQRWo5WTdGS3ZVYkF6MUFGWFZvN3Qyc0pvTnJs?=
 =?utf-8?B?TFI1VEJ0akFHQjBVSHhUcmNuMm1IUk5KaWFWTGRKWFg5TUg5aUF6YkROU1BP?=
 =?utf-8?B?S0xBM1pHSGJPRHRlQUJ6V1dRVmFZQ3gyRXpBUVlrNGxYcnB2NjRKOG1zbDls?=
 =?utf-8?B?RWorNnk3aTRQZlBhNXpsVFFTZ21YVnI2NUswSGhnWVBReGJQTVB2LzhId3ZP?=
 =?utf-8?B?ZjZnVHI5N0ptMXZGVk1MYlBEVGJMektXenZpYjI5ZjRyQldpZktGMjlGUGhD?=
 =?utf-8?B?Si8xd29GcXZ6SjRTTVlDZk5DTzdmSEM0b2ZhZ25EeWh4aEZjMHdTYnk0TTQw?=
 =?utf-8?B?QTVvR3E5cjBhSDNsUERQZEp4Ny9UQlJaZVV1NlU5SjZsWTVQWHNrLy9OdWVQ?=
 =?utf-8?B?V1FtWlN2SCtZbmI3RGhwMDJJSm0zNUs5VWhSNi9oOThHYi9XWEx5UTRLRFVP?=
 =?utf-8?B?UUp4Y3N6N3Q4Ni9NVnRTZWp0N0pnLzNiRURlbTFLTW1mR2FPb05adTlkb1VD?=
 =?utf-8?B?eXZsWFJZMEdZY1pubGhSakJBa004RnJkUE9NYlo3cjhLZjJUandlL3JscEY4?=
 =?utf-8?B?bHorTmRoalg3RERrSnU3STBzTjY1cmhCU010b3lEQ3NVTUQ2WFZxQWJFZ25D?=
 =?utf-8?B?UGUwd2hobHZ6cUZoamJMTjNYYWJUWGpYQzVndWRZYlQ1MlRzWkxKZGhmTXFt?=
 =?utf-8?B?QTYwTzlGTXZWamU5NzIvL2RTenFjTmRlMVdyWGJodFNhQlJaTnVHS3VMYnls?=
 =?utf-8?B?eWh4NFZmMXZWNEFaM280VjNYYVVqenZtc3BTb0paY3cxTFIwRVkvODhkejlM?=
 =?utf-8?B?dzVzRE1tMFRDc3A4QzlRY0NoeWdIRk9tMFVhUVFyR01GRU5icnBHbGExQ2M1?=
 =?utf-8?B?MVNUcGF0bW5QYk5YSW5KY21aN2I0RVQrclpHcGY2SFgzcE9CR0loRGRiUVRB?=
 =?utf-8?B?SlYzY1p3MXhjcVZ4UFpQZEdqaUErNERJaUdZZkVFS0F1Ti9OZlV3WFZUTW90?=
 =?utf-8?B?cGpzcWxMM2FHZEpEWXMwNGZvUkloUlg4R2tSejZxTnF6Tm5XN0xQeThTc0lK?=
 =?utf-8?B?OEFicVoxL3FiU01mMnNHZ1hpb2NocXRrdzFGV1dXay9NSjdseE1oeDZwSnZ6?=
 =?utf-8?B?R2FabnlsZFE5MTVLeUZCQzFNamdSNzVOVit5YVo0RUdvRVA2cmYrK3pkelRw?=
 =?utf-8?B?cjFGNjFlZmpDNGNmdGREVmRteEFBeUdyYTVDMG9XeEoyejNMVTl6bFI4SDNr?=
 =?utf-8?B?ZWZFcG5hazM1OXpYOHZzM1lHcXdaa2p6SkpkT0U0Zytkd1QwQUZ3MUNwQm0y?=
 =?utf-8?B?dXFremJMNWRjTkVoTVQ1WkNISmh0d0Jub3VyODBmWUpJZElKNDcxWWpNTkNo?=
 =?utf-8?B?NlZsU3RKNUNoU0JrRXdIR1lOWEtJRVBEUUFlSGRYZFh4b0dVR2FHa0N4QlJL?=
 =?utf-8?B?OHBVN0tkSnlpdktUUkRKaExQNHc1VFFVN05USUFvZjZxMk9aa2xJY3BRanBX?=
 =?utf-8?B?cTAxWVZGUlhsZEM5eDFHdnN5elljMXhaSHZ2QUVqT1lLaUU0ZUdCT2FENFBs?=
 =?utf-8?B?NlM5dm5Md1RmRExoMnVIOGNDZlRIOEpXbDk5akp4NTdEVVZZTDZ0cElPbFpI?=
 =?utf-8?B?SFE9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c794efb-cfe6-48cc-3bfd-08dccceb3831
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 14:09:41.2815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MWAeF0PZCQXObAKIjwANnMBfjhXLWh35xvGps5s1BbCcdvab3trK8safVhKtjHcilE63xpVkWnVh92YJJtfNb54L2ZqpDrLNDC3r7IBYR7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_070950_467141_A44E19FE 
X-CRM114-Status: GOOD (  29.77  )
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

T24gMDQuMDkuMjQgNDowNSBQTSwgQWRhbSBGb3JkIHdyb3RlOgo+IE9uIFdlZCwgU2VwIDQsIDIw
MjQgYXQgOTowMOKAr0FNIEZyaWVkZXIgU2NocmVtcGYKPiA8ZnJpZWRlci5zY2hyZW1wZkBrb250
cm9uLmRlPiB3cm90ZToKPj4KPj4gT24gMDQuMDkuMjQgMzo1MiBQTSwgQWRhbSBGb3JkIHdyb3Rl
Ogo+Pj4gT24gV2VkLCBTZXAgNCwgMjAyNCBhdCA4OjM14oCvQU0gRnJpZWRlciBTY2hyZW1wZgo+
Pj4gPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiAwNC4w
OS4yNCA0OjMyIEFNLCBBZGFtIEZvcmQgd3JvdGU6Cj4+Pj4+IFRoZXJlIGlzIGN1cnJlbnRseSBh
IGxvb2stdXAgdGFibGUgZm9yIGEgdmFyaWV0eSBvZiByZXNvbHV0aW9ucy4KPj4+Pj4gU2luY2Ug
dGhlIHBoeSBoYXMgdGhlIGFiaWxpdHkgdG8gZHluYW1pY2FsbHkgY2FsY3VsYXRlIHRoZSB2YWx1
ZXMKPj4+Pj4gbmVjZXNzYXJ5IHRvIHVzZSB0aGUgaW50Z2VyIGRpdmlkZXIgd2hpY2ggc2hvdWxk
IGFsbG93IG1vcmUKPj4+Pgo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgXiBpbnRlZ2VyCj4+
Pj4KPj4+Pj4gcmVzb2x1dGlvbnMgd2l0aG91dCBoYXZpbmcgdG8gdXBkYXRlIHRoZSBsb29rLXVw
LXRhYmxlLgo+Pj4+Pgo+Pj4+PiBJZiB0aGUgbG9va3VwIHRhYmxlIGNhbm5vdCBmaW5kIGFuIGV4
YWN0IG1hdGNoLCBmYWxsIGJhY2sgdG8gdGhlCj4+Pj4+IGR5bmFtaWMgY2FsY3VsYXRvciBvZiB0
aGUgaW50ZWdlciBkaXZpZGVyLgo+Pj4+Cj4+Pj4gTml0cGljazogWW91IGhhdmUgdGhyZSBkaWZm
ZXJlbnQgdmVyc2lvbnMgb2YgaG93IHRvIHNwZWxsICJsb29rdXAgdGFibGUiCj4+Pj4gaW4gdGhl
IHBhcmFncmFwaHMgYWJvdmUuIE1heWJlIHlvdSBjYW4gZGVjaWRlIG9uIG9uZS4uLiA7KQo+Pj4+
Cj4+Pj4+Cj4+Pj4+IFByZXZpb3VzbHksIHRoZSB2YWx1ZSBvZiBQIHdhcyBoYXJkLWNvZGVkIHRv
IDEsIHRoaXMgcmVxdWlyZWQgYW4KPj4+Pj4gdXBkYXRlIHRvIHRoZSBwaHlfcGxsX2NmZyB0YWJs
ZSB0byBhZGQgaW4gdGhlIGV4dHJhIHZhbHVlIGludG8gdGhlCj4+Pj4+IHRhYmxlLCBzbyBpZiB0
aGUgdmFsdWUgb2YgUCBpcyBjYWxjdWxhdGVkIHRvIGJlIHNvbWV0aGluZyBlbHNlCj4+Pj4+IGJ5
IHRoZSBQTVMgY2FsY3VsYXRvciwgdGhlIGNhbGN1bGF0ZWRfcGh5X3BsbF9jZmcgc3RydWN0dXJl
Cj4+Pj4+IGNhbiBiZSB1c2VkIGluc3RlYWQgd2l0aG91dCBoYXZpbmcgdG8ga2VlcCB0cmFjayBv
ZiB3aGljaCBtZXRob2QKPj4+Pj4gd2FzIHVzZWQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgo+Pj4+Cj4+Pj4gVGhlIGNvbW1lbnRzIEkg
aGF2ZSBhcmUgb25seSBuaXRwaWNrcyBhbmQgdGhlIHBhdGNoIHNlZW1zIHRvIHdvcmsgZmluZQo+
Pj4+IGZvciBtZS4gU28gZmVlbCBmcmVlIHRvIGFkZDoKPj4+Pgo+Pj4+IFJldmlld2VkLWJ5OiBG
cmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4+Pj4gVGVzdGVk
LWJ5OiBGcmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4+Pj4K
Pj4+Pj4gLS0tCj4+Pj4+IFY1OiAgTm8gQ2hhbmdlCj4+Pj4+IFY0OiAgTm8gQ2hhbmdlCj4+Pj4+
IFYzOiAgQ2hhbmdlIHNpemUgb2YgcGxsX2Rpdl9yZWdzIHRvIGluY2x1ZGUgUEhZX1JFRzAxIChQ
KQo+Pj4+PiAgICAgIENyZWF0ZSBjYWxjdWxhdGVkX3BoeV9wbGxfY2ZnIHRvIGNvbnRhaW5lIHRo
ZSB2YWx1ZXMKPj4+Pj4gICAgICBFbGltaW5hdGUgdGhlIFBNUyBjYWxjdWxhdGlvbiBmcm9tIGZz
bF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZQo+Pj4+PiAgICAgIE1ha2UgdGhlIExVVCBwcmlt
YXJ5IGFuZCBmYWxsIGJhY2sgdG8gaW50ZWdlciBjYWxjdWxhdG9yIGluCj4+Pj4+ICAgICAgcGh5
X2Nsa19yb3VuZF9yYXRlLgo+Pj4+PiAgICAgIENoZWNrIHRoZSByYW5nZSByaWdodCBhd2F5IHRv
IGVuc3VyZSBpdCdzIHJlYW9uc2FibGUgcmF0aGVyIHRoYW4KPj4+Pj4gICAgICB0cnlpbmcgdG8g
ZmluZCBhIGNsb2NrIG9ubHkgdG8gbGVhcm4gaXQncyBvdXRzaWRlIHRoZSByYW5nZS4KPj4+Pj4g
ICAgICBPdmVyYWxsIGFkZGVkIG5vdGVzIGFuZCBjb21tZW50cyB3aGVyZSBzdHVmZiBtYXkgbm90
IGJlIGludHVpdGl2ZS4KPj4+Pj4KPj4+Pj4gVjI6ICBVcGRhdGUgcGh5X2Nsa19yb3VuZF9yYXRl
IGFuZCBwaHlfY2xrX3NldF9yYXRlIHRvIGJvdGggc3VwcG9ydAo+Pj4+PiAgICAgIHRoZSBpbnRl
Z2VyIGNsb2NrIFBNUyBjYWxjdWxhdG9yLgo+Pj4+PiAtLS0KPj4+Pj4gIGRyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIHwgMzQxICsrKysrKysrKysrKystLS0tLS0K
Pj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyMzUgaW5zZXJ0aW9ucygrKSwgMTA2IGRlbGV0aW9ucygt
KQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
c2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhk
bWkuYwo+Pj4+PiBpbmRleCA0ZjY4NzQyMjZmOWEuLjhmMmMwMDgyYWExMiAxMDA2NDQKPj4+Pj4g
LS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPj4+Pj4g
KysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPj4+Pj4g
QEAgLTE2LDYgKzE2LDggQEAKPj4+Pj4KPj4+Pj4gICNkZWZpbmUgUEhZX1JFRyhyZWcpICAgICAg
ICAgKHJlZyAqIDQpCj4+Pj4+Cj4+Pj4+ICsjZGVmaW5lIFJFRzAxX1BNU19QX01BU0sgICAgIEdF
Tk1BU0soMywgMCkKPj4+Pj4gKyNkZWZpbmUgUkVHMDNfUE1TX1NfTUFTSyAgICAgR0VOTUFTSyg3
LCA0KQo+Pj4+PiAgI2RlZmluZSBSRUcxMl9DS19ESVZfTUFTSyAgICBHRU5NQVNLKDUsIDQpCj4+
Pj4+Cj4+Pj4+ICAjZGVmaW5lIFJFRzEzX1RHX0NPREVfTE9XX01BU0sgICAgICAgR0VOTUFTSyg3
LCAwKQo+Pj4+PiBAQCAtMzgsMjgxICs0MCwyOTYgQEAKPj4+Pj4gICNkZWZpbmUgUkVHMzRfUExM
X0xPQ0sgICAgICAgICAgICAgICBCSVQoNikKPj4+Pj4gICNkZWZpbmUgUkVHMzRfUEhZX0NMS19S
RUFEWSAgQklUKDUpCj4+Pj4+Cj4+Pj4+IC0jZGVmaW5lIFBIWV9QTExfRElWX1JFR1NfTlVNIDYK
Pj4+Pj4gKyNpZm5kZWYgTUhaCj4+Pj4+ICsjZGVmaW5lIE1IWiAgKDEwMDBVTCAqIDEwMDBVTCkK
Pj4+Pj4gKyNlbmRpZgo+Pj4+PiArCj4+Pj4+ICsjZGVmaW5lIFBIWV9QTExfRElWX1JFR1NfTlVN
IDcKPj4+Pj4KPj4+Pj4gIHN0cnVjdCBwaHlfY29uZmlnIHsKPj4+Pj4gICAgICAgdTMyICAgICBw
aXhjbGs7Cj4+Pj4+ICAgICAgIHU4ICAgICAgcGxsX2Rpdl9yZWdzW1BIWV9QTExfRElWX1JFR1Nf
TlVNXTsKPj4+Pj4gIH07Cj4+Pj4+Cj4+Pj4+ICsvKgo+Pj4+PiArICogVGhlIGNhbGN1bGF0ZWRf
cGh5X3BsbF9jZmcgb25seSBoYW5kbGVzIGludGVnZXIgZGl2aWRlciBmb3IgUE1TIG9ubHksCj4+
Pj4KPj4+PiBOaXRwaWNrOiBSZW1vdmUgZHVwbGljYXRlICdvbmx5Jwo+Pj4+Cj4+Pj4+ICsgKiBt
ZWFuaW5nIHRoZSBsYXN0IGZvdXIgZW50cmllcyB3aWxsIGJlIGZpeGVkLCBidXQgdGhlIGZpcnN0
IHRocmVlIHdpbGwKPj4+Pj4gKyAqIGJlIGNhbGN1bGF0ZWQgYnkgdGhlIFBNUyBjYWxjdWxhdG9y
Cj4+Pj4KPj4+PiBOaXRwaWNrOiBQZXJpb2QgYXQgdGhlIGVuZCBvZiB0aGUgc2VudGVuY2UKPj4+
Cj4+Pgo+Pj4gR29vZCBjYXRjaC4gIEkgcmFuIHRoZXNlIHRocm91Z2ggY2hlY2twYXRjaCwgYnV0
IEkgbmVlZCB0byB0ZWxsIG15c2VsZgo+Pj4gbm90IGRvIHdvcmsgb24gdGhpcyBzdHVmZiBhdCBu
aWdodCB3aGVuIEkgYW0gdGlyZWQuCj4+PiBTb3JyeSBhYm91dCB0aGF0LiAgTXkgZ3JhbW1hciBp
c24ndCBub3JtYWxseSB0aGlzIGJhZC4gIDotKQo+Pgo+PiBJIGtub3cuIEkgYWxyZWFkeSBhc3N1
bWVkIHRoYXQgeW91IHdlcmUgdGlyZWQgYXMgdGhlIGNvbW1pdCBtZXNzYWdlcyBnZXQKPj4gd29y
c2UgdG93YXJkcyB0aGUgZW5kIG9mIHRoZSBzZXJpZXMgOykKPiAKPiBJIGRvIHRoaXMgc3R1ZmYg
YXMgYSBob2JieSBhdCBuaWdodCBhZnRlciBteSBkYXktam9iIGlzIGRvbmUsIHNvIG15Cj4gYnJh
aW4gaXMgc29tZXdoYXQgc2hvdC4gIE1vc3Qgb2YgdGhlIGFjdHVhbCB3b3JrIHRoYXQgSSBkbyBm
b3IgdGhpcyBpcwo+IGRvbmUgb24gd2Vla2VuZHMgaW4gdGhlIG1vcm5pbmcgd2hlbiBJIGFtIGZy
ZXNoLCBidXQgSSBkbyB0aGUgY2xlYW51cAo+IGF0IG5pZ2h0LiAgSSBzaG91bGQgcHJvYmFibHkg
cmVldmFsdWF0ZSB0aGF0IGRlY2lzaW9uLiAgOi0pCj4gCj4gVGhhbmtzIGZvciB0aGUgdW5kZXJz
dGFuZGluZy4gIDotKQoKTm8gd29ycmllcy4gWW91IGFyZSBkb2luZyBncmVhdCB3b3JrLiBZb3Ug
aGF2ZSBteSBmdWxsIHVuZGVyc3RhbmRpbmcgZm9yCmFueSBvZiBzdWNoIGZsYXdzLiA6KQoKWy4u
Ll0KPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAqLwo+Pj4+PiArICAgICAgICAgICAgICAg
ICAgICAgdG1wID0gKHU2NClfbSAqIDI0ICogTUhaOwo+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgZG9fZGl2KHRtcCwgX3ApOwo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKHRtcCA8
IDc1MCAqIE1IWiB8fAo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgIHRtcCA+IDMwMDAg
KiBNSFopCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Pj4+
PiArCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICB0bXAgPSAodTY0KV9tICogMjQgKiBNSFo7
Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBkb19kaXYodG1wLCBfcCAqIF9zKTsKPj4+Pgo+
Pj4+IHRtcCBhbHJlYWR5IGNvbnRhaW5zIChfbSAqIGZfcmVmKSAvIF9wLCBzbyB3ZSBzb3VsZCBi
ZSBhYmxlIHRvIHJldXNlCj4+Pj4gdGhhdCB2YWx1ZSBoZXJlIGFuZCBzaW1wbHkgZG8gZG9fZGl2
KHRtcCwgX3MpIHdpdGhvdXQgcmVjYWxjdWxhdGluZyB0bXAsIG5vPwo+Pgo+PiBBbnkgcmVwbHkg
dG8gdGhpcyBjb21tZW50PyBDYW4gdGhpcyBiZSBvcHRpbWl6ZWQ/Cj4gCj4gSSB3YXMgZ29pbmcg
dG8gaW52ZXN0aWdhdGUgaXQgYmVmb3JlIGFncmVlaW5nIHRvIGRvIGl0LiBPbiB0aGUKPiBzdXJm
YWNlLCBpdCBtYWtlcyBzZW5zZS4KCkdyZWF0LCBJIGp1c3QgdGhvdWdodCB5b3UgbWF5IGhhdmUg
bWlzc2VkIGl0LiBUaGFua3MhCgpbLi4uXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
