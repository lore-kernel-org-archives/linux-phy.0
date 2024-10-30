Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B57D3A667
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 09:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/p7/lFMVV7asM8V7i+NTjAXJ8JoRK8O3X7ggqtxSycE=; b=fYisd9n37J9EhKDjjpAkYm5Dfx
	g1Py8jkcePyQ773TMemub1yt0WxOJtSjCqNi/2V2Whba2eTjB+kAoYhG0IujMHp1FkPAHkSiaWRqo
	onE42xkps2I9a1PcpMdMc3HIVJSzIMCUfHr3fGztBFtwYBTH54Gfy0GaOZi1MJVtuMcgCiQtx44t9
	seTlp2GdnCSAQ1z/kfecVSETU1QZJkIldOVIU1cX7Lv3hi5MN/ql53mTBcXooL9fQaiRyQvP0irnT
	Aq4zCDtTLASa+7HkmRYzqBA+UkLniVPtMIrdfpUcX/WDizCzLKJmlSlCKkOSsg9OugTkYv9fglBGI
	UqXOandg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t64aA-0000000HLau-2FHT;
	Wed, 30 Oct 2024 09:01:38 +0000
Received: from mail-am6eur05on2070b.outbound.protection.outlook.com ([2a01:111:f403:2612::70b] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t64a6-0000000HLY9-3elj;
	Wed, 30 Oct 2024 09:01:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJhpQE5ITtJm8EkQcAz6tPVvyg9HcPYafcvoNWVb6HoT+DSRdtTpLHZtcjlr+8wZsCZjjDN/F5OQ82vHvXX3ZaEzRGxK4aCMG8YNWuUdvnNNxLjZ1y9gmWo4Y+OOBuXyJvGsSuqUEHTHBHJnu2rMgK+6R87ZTnFkHpmFbdwdIKpQSm1SMoAXwPIvNum1Uc9ujysBoOXNrHztb9mTtxW5RerSLO/Pk07l+zeJwX3/iTvDxFy9qR7RMFALd2/5XHS6FsvEY7F67nPd89Cib7NNIhYphAaQH4QGyB8shCbBxZDmGPtEecz5CaXTLwdjFaUF9uln9vdxmwQnyf+W4TZTJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pwcCvq+S43YBIJqgdnluBIAC9E3eUJMtuYC0vOKJwbY=;
 b=jF9F8ly+i0pLNXYkjERM8aSkC1mTT1rP3GdGo5EAgxaz4j+yhAjwoiUMwfi66iuObf7qwAiPHMjh5Gx9xIKD0BZarNdpoxXgIkMUyOac/bHztDp5J4K54gKsKGHnRwkAOcO6eZY0yiKrH0Nc9skl0seoL0tMfFl6Ab5RUGeMgZol8hwBMzWGiTEkXDw+aNZgfGpCWbEg/fBvRyts3NGqAYDAImpzzXpgDmWszTzMHrsbscnRGdX/2AY58uYQ2bTRrEx74irxGi/sXID5KAITD8LsUL5KQXzttAiQx4EytcNkPvEg61cxcVNXpEigju8VUIFRRKm98/qsT/usCp2JSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwcCvq+S43YBIJqgdnluBIAC9E3eUJMtuYC0vOKJwbY=;
 b=SKvlRAGJGZce/6qJgA1ygRCtZbrXMpgDGy9EXOj0Mk7pT6SpC52aLoRklSIr5ChTxuKF6N21Ofw4fud2tclZxFBjh2X+/dQFg/03PxAZZqwFAHMu9ntfQ/sVfCO0a0tS8ifVQR2KkDpfNXZTsP/msKQqJXuaEo0kaz75J61aXH8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by AS8PR10MB7475.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5ae::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 30 Oct
 2024 09:01:27 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%4]) with mapi id 15.20.8114.007; Wed, 30 Oct 2024
 09:01:26 +0000
Message-ID: <6d039ecf-0e48-415a-afd8-6bfce60081ae@kontron.de>
Date: Wed, 30 Oct 2024 10:01:24 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: imx8mp: HDMI display blank/black problems
To: mailinglist1@johanneskirchmair.de, aford173@gmail.com
Cc: johannes.kirchmair@skidata.com, Laurent.pinchart@ideasonboard.com,
 airlied@gmail.com, alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com,
 catalin.marinas@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 festevam@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 kernel@pengutronix.de, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 l.stach@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 maarten.lankhorst@linux.intel.com, marex@denx.de, mripard@kernel.org,
 neil.armstrong@linaro.org, p.zabel@pengutronix.de, rfoss@kernel.org,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org,
 tzimmermann@suse.de, ulf.hansson@linaro.org, victor.liu@nxp.com,
 vkoul@kernel.org, will@kernel.org, Saravana Kannan <saravanak@google.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
X-ClientProxiedBy: FR4P281CA0222.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::8) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|AS8PR10MB7475:EE_
X-MS-Office365-Filtering-Correlation-Id: 05d9c429-2e83-4871-7da8-08dcf8c16f9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVdVTDlhVXR4UnpNS3hYOXJDODJNUExsRnFqcXlOdk1VOERWRWNqaWQyVW1F?=
 =?utf-8?B?eCtjV2RHNm5UakdkSnRaUGJBcnlzVGdCTnlyb0RjTkp1SHRHQkIrMFNlL1lx?=
 =?utf-8?B?SzUxblQ1d0hHSXdYaHRwMkMwMUNXUkViV29mTFJQWlV3Zm02U0VQWTZDeUsv?=
 =?utf-8?B?Tm9BS2s0M2xXMUxaQWRtZXcwd3ZGOGVrQm1BTFdRbEhjQ1pEY3M5WTdyUWgx?=
 =?utf-8?B?ZVBjVG1xRXBkZjRGenVITlg0UllhV0o0TEFNcUowZDRSSmhmN2FIZVJtdW16?=
 =?utf-8?B?YzA1TUprVU8wL2tIRjZSMDlCYmhJZnc1MkdFOFR6QlQwWWxTWjVJQ1RlVWlW?=
 =?utf-8?B?UEZ3RE9UdmtLMXlOUU9vcVBKSjFvRU1jNVA1ZXJEcVJ2dzdHRW9MMGEvTUtP?=
 =?utf-8?B?dXc4ZXpXaUtQUmovckVhMjAwd0toR3FFUnFla3dpMFdCNzV6QnNMb3JTUVEx?=
 =?utf-8?B?aGlnWlYxdXdoV2ZHQ1Rka2M5NW5HYi8wSXM1ekg1a0Q0Ri9lNklnYXFmaTFN?=
 =?utf-8?B?RlQyV3l5RVNyOWw1VHhUWUFKRGRnOXIzd0R5SURhY2lMTFB5OHo4RFMzYXZS?=
 =?utf-8?B?MFBiRU1SSU1WZU5xSFRsa3dTcGJCRGNzRG12OTI0MUJzRkdZMmNuTlZtekli?=
 =?utf-8?B?UUR1SnF3YTJLeG5TN3YwNFlid0tBdHpncXNtZWc2aWlmK3hrZ2I4SnBHV1oz?=
 =?utf-8?B?aDlmZ1hGUytqdi80LzdqeTFqUDJNVy81QUM0cGQzMnlsdllpRHAvYmFFVzVy?=
 =?utf-8?B?Mnp0L2ZBWmFjSDB0Q1hpVEdobHY2TmVpcDN6cERIblJCK0tLU1NlbDdadlB5?=
 =?utf-8?B?V2FhZ3JzTlZEQzlhMDY3SXFnYzFrQ2U5dG5FcmlOMDVEZWtBblVUZXR5Rkhn?=
 =?utf-8?B?dUJHNFVvQUs4Y2NEcWNBVFZicVVmaXI3djZRUU8vSlRTSFU3enJDRTI5VXJ3?=
 =?utf-8?B?Umc4S3BpVE9PcW9vQ0hkMEVEV2o1MllYZHkrR2FWM0d4L2NtL0xzKzdjM05o?=
 =?utf-8?B?UG1xcCtnemtBRW84K0xza0ZZQ3lKM0RZRDU2MHZtZVk1UkdoSW1OT1Z1SFQ1?=
 =?utf-8?B?VG04RW5DeVRFbTd2WktjV3ZtcmJFTEM1Y0MwNzRmVDRTNzZ0L2ZjSnQxT0VB?=
 =?utf-8?B?b1pRMEpCUjB4WlpKTCtDeEZTWW9NbHdQTUh1M2NjdkZoRytCMEFjSjR4TGps?=
 =?utf-8?B?QmVPOHdkc3AxLzNYOEl0djZWeVhNM1JqMDBOUUxHS29lWUdBczQ3ZlRTbTFX?=
 =?utf-8?B?SkphV1h0VU5LQklLTFAvWjQxaGx3MlA4ckw2OHRzOFdmWmdWaEM0ek5wMlBE?=
 =?utf-8?B?TmxHM3ZZWUtTOVMveCtCZEZnWmdDSzU2MGlKZVZhaWs5TG03cHFHczdLakUv?=
 =?utf-8?B?NkNLYWhYU1puaTJIQ25QcTMwLzVhWEJNZXR5aEZtVXZWR3VxVk8zNHgyOWJB?=
 =?utf-8?B?VkJ2MWFubVU4RFVUeXZaejNvdEJkTmZyVDRLdGp4ZEpqNGdQNkRWaWl0d0Zn?=
 =?utf-8?B?WStjcDV4V2RlRG5LN0lhZFJGUFA5bjZBYXUvU3dBN213WU05R1dQUnByMS8r?=
 =?utf-8?B?ellCRUJoZ1M5RHNsL1R3RGZVakxuaVJ6T29vbklrYXF0bUVBbnVldVArMk8x?=
 =?utf-8?B?U3grQm1PTGIzZVhpaGpINVl4dlVHaGVzNE4vUE1peUlpUUZUTW8xZDN4RDFR?=
 =?utf-8?Q?zzbVtcfuuATlsohRxhck?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzFZRDYxYmpNdm95bmJtZHFkNmR2Q216c01wem41bDA3OTVBWHBUQ2FaTXMy?=
 =?utf-8?B?VDlRMEdJTHZHYnh1ZWFYV0M2dU93Y2cycmVGQzd3VnJIQndpZWhmcXZuU0hR?=
 =?utf-8?B?Nmt0QmdPVXdjWjY0aUMvcEcvYU5PaGR2dCtCUWd6eDg3UlYwYXlzZ3h5VkFl?=
 =?utf-8?B?cWg4eGY5ODJPRDRqdHpqKzBJbUQrVzdONmtYY3MzZ1p4UXFMZFFRaHkwY2kz?=
 =?utf-8?B?RjlGc0dsZTlHdFBmMjNuYVpyRkh0dVBxR3BNb3Zha25yR215dUN1cDkzYUtn?=
 =?utf-8?B?bC96MDVHZnBrbktRbWY1WXFMK1VITmFRS3J4Q2xSSi93WFpGeVZTenVSQ1Vt?=
 =?utf-8?B?emJoQWZ0cERpdXhPaU5WQzVRNHJuNkVnR3VwaVViOU13WC82ODJMaHc4bkZS?=
 =?utf-8?B?clBHWmlpNy91bElKNkxzeTNibEpqMkJNWndQU0NhelRmdmVJQzkrcUFqdFdW?=
 =?utf-8?B?OEp3dTVodHVLR3FaYzV2bFIyRktjRmE0clhQclV6NlpjYytyMFNYNi8wRDYr?=
 =?utf-8?B?VUV2bmYyODVUWW5oeHVmUWNpWUppc3hESStoUG85NmhKYUw5ME9Iei9CSUR4?=
 =?utf-8?B?RXdHZjlPdHBiaTFJOGp0eUJoN2wwTU14bTBTOWYxYm84UXlrYmxBakRJR3Zz?=
 =?utf-8?B?OVJ5d3FxRlZrTmUzWEJUeXlQRHh4ZTM1bCtsa2V4ZnloR0l6MEdwL1pWTnYz?=
 =?utf-8?B?UWNIeXArdXdQelBuSEM5NmFoaW10bVExWWpoZ2QzSmtCTU50THhPaGx4b1Az?=
 =?utf-8?B?KzB3MGlEK2lIaEFTS1ovTjhCNU5XWDRtNUdXNC92d3ZmYlNITVNWMmVBNmRi?=
 =?utf-8?B?eEJiWkFRUHA2Vml3bWE1VkNGUFpOZlpRa0hlNW5MSEVNclo1b2hTNGorUGIw?=
 =?utf-8?B?L0Ivbm9oYUNYNUFqMVJSZVhzVS90RThYd2s0elRVcWhGRk82OGU3QUdZQVAv?=
 =?utf-8?B?KzFoTzlFa05aVkpiUG40Nm8xTERWelR2MzMrN25BcGY2N1NQLzJ1ZmI2VUYw?=
 =?utf-8?B?ZXNiUEIxbWoweUp2V1MybFIxSHYrSHdDaFVaYlBDUjNvQmptMXRIVkdzRmV3?=
 =?utf-8?B?V3NnQmVwR0VCMUVmOEpXSk0wb1pNSHRQbkN2K05iMmtqZ0R3MG1mbGZFbXBk?=
 =?utf-8?B?QnZtRW90WThCZ2NqMmE2MTMvLzVPZUZCb1pSSkxYbHJvQjBoVmZ2dUwrUndL?=
 =?utf-8?B?d2FJRUtLWDBtREVDK05Bdzh5SUUzdnV5L21JRWxvSGJlR3Rud2htdmVKOWhT?=
 =?utf-8?B?TTNZOWFCdURJOE9Fa3ZacVYvYWQvVFlMb0JVMlJHb3NTTG92bVhGN3JNcHVC?=
 =?utf-8?B?a2wxUDF1Q1czQW52SGlaZkJJMjhwRSt1UEFWTHpIUVlVb3lhbmZNWDFFUHpP?=
 =?utf-8?B?WFJUODZyTkpKbmxKakZrYXhuYUU4U3dFL0JtOFhNWWtJREw5R2FJNkg0LzF4?=
 =?utf-8?B?YXg0N1N4MTRLZmc2dFY2U2RXdmV2UjlJWlVZY29IeVp5RFNVWjNrQVQvWnNP?=
 =?utf-8?B?RjVid2pMNHpkYzFDSUw5OTJwcG9Eb3p0Yi9nbTU3WURSdFZWbzR4WjVmbW1u?=
 =?utf-8?B?T2N6UTFURXI2cEM2SHZjMzJ4dklFNXBKTHkvbGkvYmNMdWxrb2puYkEzemNR?=
 =?utf-8?B?M2k5SFp2MlQvblVYNXdFTEFEalA4eGtSK2ViUDZQNHJCQi9uWDRuUVJhT2s3?=
 =?utf-8?B?bkxuS1U1ZFJMSmI0S0VmN09yN2pSUmU3d2FrRkNGcUZFTzJtOWhlYTg3NlRD?=
 =?utf-8?B?TFlVSXBoU1Z0bUgvam4wcTdHS3dUMTB4OVJsWWhjeVROZTR4L211Tmp3T3hT?=
 =?utf-8?B?bXdZR0JPT25rS2hLTlRwV2I3LzIxY0JobHBwcVVHOFNlVGREdGMyTFV4M0dT?=
 =?utf-8?B?VGhmRGZXRzZ5MVIxUEp6eUtreGNvWElqbnQxUlQzRWsvaWozWnZTSzZCbWNL?=
 =?utf-8?B?Mzl3RTA0UlNXWVNqamk5R1dPNDFCU2szRzBwNnpKMlk5aElXeEFBTEtjeHZu?=
 =?utf-8?B?U1FoNmVpRW9PWVppSkFMendFaVJxaEt5Ri9UVVdORUZIVUNKK2JScGs3WWdh?=
 =?utf-8?B?U1c3bGd5TkdDTkxiQytPZWZyTTM2N2pBMGVreDlJejJzemdvZlJmOGM3a2dV?=
 =?utf-8?B?TUdQdTlWNm9mTWpHbnJ6MDN1ZGxYUWxhNkNhWHZsN00yZ3g4MS9ZSzN0c0gr?=
 =?utf-8?B?amc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d9c429-2e83-4871-7da8-08dcf8c16f9b
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 09:01:26.6521
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GpvenMy/dLQOI8ijDo59915Y5BcScOKFvb9t+DXsBqaC9PHqg7uFL6acbTzuU4ziSOpXc5HOe8w9Qv6cEcAynOQq8Nzymi8SvF3IJyL0MWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7475
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_020134_945496_CDDBD4E5 
X-CRM114-Status: GOOD (  16.65  )
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

SGkgSm9oYW5uZXMsCgpPbiAyNS4xMC4yNCAxMDowNSBBTSwgbWFpbGluZ2xpc3QxQGpvaGFubmVz
a2lyY2htYWlyLmRlIHdyb3RlOgo+IFtTaWUgZXJoYWx0ZW4gbmljaHQgaMOkdWZpZyBFLU1haWxz
IHZvbiBtYWlsaW5nbGlzdDFAam9oYW5uZXNraXJjaG1haXIuZGUuIFdlaXRlcmUgSW5mb3JtYXRp
b25lbiwgd2FydW0gZGllcyB3aWNodGlnIGlzdCwgZmluZGVuIFNpZSB1bnRlciBodHRwczovL2Fr
YS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQo+IAo+IEhleSwKPiBXZSBoYWQg
c29tZSBwcm9ibGVtcyB3aXRoIHRoZSBoZG1pIG9uIHRoZSBpbXg4bXAgYW5kIHdhbnRlZCB0byBs
ZWF2ZSwgd2hhdCB3ZSBmb3VuZCBvdXQgYWJvdXQgaXQsIHNvbWV3aGVyZSBmb3Igb3RoZXJzIHRv
IGZpbmQgaXQuCj4gCj4gVGhlIHByb2JsZW0gd2FzIHRoYXQgb3VyIGhkbWkgZGlzcGxheSBzb21l
dGltZXMgc3RheWVkIGJsYW5rIGFmdGVyIGhvdCBwbHVnZ2luZyBhbmQgc29tZXRpbWVzIGF0IHN0
YXJ0dXAuIE9uIG9sZGVyIGtlcm5lbCB2ZXJzaW9ucyA2LjYgd2UgZGlkIG5vdCBoYXZlIHRoZSBw
cm9ibGVtIHdpdGggdGhlIG5vdCBtYWlubGluZWQgaGRtaSBwYXRjaGVzLgo+IFdlIHRyYWNrZWQg
dGhlIGNvbW1pdCBkb3duIHRoYXQgaW50cm9kdWNlZCB0aGUgcHJvYmxlbSBmb3IgdXMuIEl0IHdh
cyB0aGUgZm9sbG93aW5nIOKAnGRyaXZlciBjb3JlOiBFbmFibGUgZndfZGV2bGluaz1ycG0gYnkg
ZGVmYXVsdOKAnSAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIzMTExMzIyMDk0OC44
MDA4OS0xLXNhcmF2YW5ha0Bnb29nbGUuY29tLwo+IFNvIHdlIHN3aXRjaGVkIGJhY2sgdG8gRldf
REVWTElOS19GTEFHU19PTiB2aWEga2VybmVsIHBhcmFtZXRlci4gRG9u4oCZdCByZWFsbHkgdW5k
ZXJzdGFuZCB3aGF0IHRoZSBwcm9ibGVtIHdpdGggUlBNIGlzLgo+IAo+IFNvLCB0aGlzIGluZm9y
bWF0aW9uIGlzIGp1c3QgZm9yIHJlZmVyZW5jZS4gTWF5YmUgc29tZW9uZSBoYXMgYW4gaWRlYSB3
aGF0IGlzIGdvaW5nIG9uIGhlcmUuIEFuZCBob3cgdG8gZml4IHRoZSBwcm9ibGVtIGluIGEgbW9y
ZSBwcm9wZXIgd2F5LgoKVGhhbmtzIGZvciBpbnZlc3RpZ2F0aW5nIGFuZCBzaGFyaW5nIHlvdXIg
cmVzdWx0cyEKCkknbSBzZWVpbmcgdGhlIHNhbWUgc3ltcHRvbXMgYW5kIHByZXZpb3VzbHkgZm91
bmQgb3V0IHRoYXQgdGhpcyBpcwpyZWxhdGVkIHRvIExDRElGIHVuZGVycnVuIGVycm9ycy4gU2Vl
IFsxXSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KCkFkYW0gaGFzIGFsc28gc3RhcnRlZCB0aGlzIHRo
cmVhZDogWzJdLgoKQW55d2F5LCBrbm93aW5nIHRoYXQgdGhpcyBpcyByZWxhdGVkIHRvIGZ3X2Rl
dmxpbms9cnBtIGlzIHJlYWxseQpoZWxwZnVsLiBJIGp1c3QgdHJpZWQgd2l0aCBmd19kZXZsaW5r
PW9uIGFuZCB3YXNuJ3QgYWJsZSB0byBzZWUgYW55Cmlzc3VlcyBhbnltb3JlLiBTbyB0aGlzIGNv
bmZpcm1zIHlvdXIgZmluZGluZ3MuCgpJIGhvcGUgdGhhdCBzb21lIG9mIHRoZSBkcml2ZXIgZnJh
bWV3b3JrIGFuZCBydW50aW1lIFBNIGV4cGVydHMgY2FuIGhlbHAKdG8gZmluZCBvdXQgd2hhdCBp
cyBhY3R1YWxseSB3cm9uZyBhbmQgaG93IHRoZSBjb3JyZWN0IGZpeCBtaWdodCBsb29rIGxpa2Uu
CgpJJ20gYWxzbyBDQy1pbmcgU2FyYXZhbmEgd2hvIGF1dGhvcmVkIHRoZSBjaGFuZ2UgZnJvbSBm
d19kZXZsaW5rPW9uIHRvCmZ3X2Rldmxpbms9cnBtIHRvIHNlZSBpZiB0aGV5IGhhdmUgYW55dGhp
bmcgdG8gYWRkLgoKVGhhbmtzCkZyaWVkZXIKClsxXQpodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL3Byb2plY3QvbGludXgtcGh5L2NvdmVyLzIwMjQwOTA0MjMzMTAwLjExNDYxMS0xLWFmb3Jk
MTczQGdtYWlsLmNvbS8jMjYwMTQwNTcKWzJdCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2lteC84
Y2ZkMzA1Mi1jODVhLTQyMzUtYjliOC02ZDI5MjllOWU0NTVAa29udHJvbi5kZS9ULwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
