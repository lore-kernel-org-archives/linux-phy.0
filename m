Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52550C28B28
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 07:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5YMMci1Zgldsn5fMEvSLB01aTyM57zH38vbua1t0Z40=; b=3Jmqm1y389EVbDPvd6Rtmzelzp
	wPRHoEe5609BJHiMnMABzuq2WkrpXCnBUNaHDOqN3HiyOPg2+iNFmYDL7CNBG6VKZlvgVdLyljOQJ
	n9nKw5jU2tDdG+qtoFEAUbaVKRM/o3WRXl9g7z9D8jhCYLQWHr+U6e21SdsUM09EdVHb6RcBNkc1r
	o/a3S7pHpHI/eKh9/+icjqZHwEa9vj9zYOiXfy7KBbeSZ/Pp8N6aDpXiV0e3xxG4NOQU7vmZhVMqP
	COxJvhNaGtwSk7HdYw0JBEjmehejGWDKA1UMgn1YNLhAlJY9/peRmVsdrAtafWrPZe/ltT3EPdiQM
	oear0PDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuoG6-00000008H6y-2vWn;
	Wed, 19 Mar 2025 07:54:38 +0000
Received: from mail-northeuropeazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuoEP-00000008GpH-101j;
	Wed, 19 Mar 2025 07:52:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E/5WZLSax/VzQmKOjXH6qUBbaHmNvHwrwyFbJLdheRSj5KnYczNLPVZGU3oj4Hwb0d5hdb+C3AILH/CTH7eV19nI2lmJbCXWtL7nuD2wxT1xN8N/KCDjKcr/iFXaE8zH3qnhTdySwYq3deleU2S6pxAZ1hLjCpxadHj+07FiL868fOz9FeHRe4oXbJCIw2eJ7Loy8/+sKtuqONTrxZ7UK2MgrBM/txy15a4AFheit7+obUJAb/3j8QZCtCeFisDpB9wtwEVGq/uqE0+4ERQWCQERJh6S3pWdivSlnKJuhzsRr52pyARtBGu1j/p4TTBWEiVdIvrBeZ/RycvgdYCFtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPESzy1K3lUPYi4FWormCWCnOZcrfT7AR8cTem0xXjI=;
 b=tsS4eT6g2ZMQdwWNo+9AA11Q1HWG9+hBpTDckH7tPg5BysiXDTE10GxsMnQXTLohUJjVzfaDOh5q/gBDBr/rQ/EAZ51BbCc8m0n6zBgGbPagx8nXJT1ox/dxNw+7+/Ka4FzCvDGgQnmaaBk1R18g9+BoPxeGp+t8zA1RKDxeoPWqLQ1R8nhLI0mEiyRqPrVJobTR1aMz01upuSIeNB0wolbQK+RXGZBBsIe9zKOCkN3FyiMMn8Gg6O0/z1JqgY+X+GgiZB0NyhTuxHb4RQBY22JK1D0+4XafuBdZHGMT/bNC55hNEOUgqL/Il/oU8LHOIFHBLpkMPaTgzIgG9yjbug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iPESzy1K3lUPYi4FWormCWCnOZcrfT7AR8cTem0xXjI=;
 b=kPYyRtH1jyTUOq1VFiD8F4CN8TzAOf05etqiMf9Qbxo33jMmDZ9jNK5DTpDIDk9Lu/uV0Q3PnW1Jew0UA1gDyiCXpcQ/ygBlJcvsK2r89vwG0EQ29KbpEC7PDpDcJ0JAnl0ScssAqszaCjwAx5J5/OvpwhPzTROiOHHnt3DkDS8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by DB4PR10MB6288.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:380::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Wed, 19 Mar
 2025 07:52:41 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%4]) with mapi id 15.20.8534.031; Wed, 19 Mar 2025
 07:52:41 +0000
Message-ID: <15acbb84-efa1-4ca6-bbfd-a4c3f17a7d19@kontron.de>
Date: Wed, 19 Mar 2025 08:52:39 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: imx8mp: HDMI display blank/black problems
To: Saravana Kannan <saravanak@google.com>, Adam Ford <aford173@gmail.com>,
 l.stach@pengutronix.de, marex@denx.de
Cc: mailinglist1@johanneskirchmair.de, johannes.kirchmair@skidata.com,
 Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com,
 catalin.marinas@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 festevam@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 kernel@pengutronix.de, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, neil.armstrong@linaro.org, p.zabel@pengutronix.de,
 rfoss@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, tzimmermann@suse.de, ulf.hansson@linaro.org,
 victor.liu@nxp.com, vkoul@kernel.org, will@kernel.org
References: <20240203165307.7806-1-aford173@gmail.com>
 <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
 <6d039ecf-0e48-415a-afd8-6bfce60081ae@kontron.de>
 <CAHCN7xKevGWipBSch6gKVeJRT9Zb8QTchhxg3c=96XhnAvnjZw@mail.gmail.com>
 <CAGETcx-LGZ1k-seh4LkvCobsxUk67QK40swiQvH6Wrzs0Log0A@mail.gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <CAGETcx-LGZ1k-seh4LkvCobsxUk67QK40swiQvH6Wrzs0Log0A@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::14) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|DB4PR10MB6288:EE_
X-MS-Office365-Filtering-Correlation-Id: 68c18fe7-8968-4bba-263d-08dd66bb0682
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUo0L3BnaHVvTGNRQ0FJODdXd3ZSdk1vbng0elRkdDZ1elpLd3FNcWJObzBY?=
 =?utf-8?B?bHp2d2IxR3lCYjNmempWaGI5K1lDZkl2blNYcHdtNmdLYWM3ZldRUUFPQmtm?=
 =?utf-8?B?clRYMmNMZGN3TzhpUWNJV0FEdWd5Q2dhRG5iNWIxZ0tQbGw3c2E0a2NTUkp4?=
 =?utf-8?B?NVVnZzVNMVhhVWlrWnpjL08zUDhGdFlPQmt2UHQ3SlQ1cTJSNlVPTk95ZmRK?=
 =?utf-8?B?eHJKcW5ENVd4eHBtMitGZnRKUXBsNWNVd29zU2pTNVR5WjRkSjdoYUQ1REda?=
 =?utf-8?B?M1VJYkd4cnJLYWpyVWZGNUd6ZHVOWlhXR3hudTZXQWt0UWw4dFdPcEVEN2ZR?=
 =?utf-8?B?MjgvUzcvMW5VQ2RxUlovOHg5aVFkN0cxVDVLYmZ0K1c1UCt5ME00bGFEYVJ3?=
 =?utf-8?B?VFJFMDM5cFI4L0o2cTNJU1pXMWtqRk41Y3NvdFRGL2ZSU2lDY1YyVWZhM1J3?=
 =?utf-8?B?aE8wTnF3NGJOYkpuV3hQaXBjMzkwOW9sRlZQT0R2dGJBRDRPTWxvQlFzcUts?=
 =?utf-8?B?NkhET2RYNzduOEdBc1UzajR4ZkozS1ZqVEFJbUQvOUVOUWhsZEdIZkhoTFpT?=
 =?utf-8?B?Rk51WnkwSkROTG5JTGZrV29mTEt2bTZxZVpYbm0rQmdTRGc1aG5aODIzTEZB?=
 =?utf-8?B?alFBYWxMWkJuazdhTXdxRHhMT3lHNFM2K0FjMkN6Q25xMVNMR0Fkbkl1d1BI?=
 =?utf-8?B?UTV3TzB0bVZLWUVqZWxpVjZlOS9JengxcURDR0w2Sjg4OWgwVDJRMitzSnRY?=
 =?utf-8?B?WWtQRzNNYkxYazJ5MUpLN2FrY05PK1h4YkcvM1pxV2NqOWRFaUsyckZmdXJF?=
 =?utf-8?B?ZU81SnZqRDEwK2ZobzZRTnJMNDNpbHlXS28vSU44VUU2UHBGV1k2L2krSWpL?=
 =?utf-8?B?cUgzMzQ3dUFEdm5vRVFnbkxuTG10K253dWNaUTlZRkZvV2ZybmhLVXdMRVBT?=
 =?utf-8?B?NnBKZldPY0xrN0c5Qy8yS3ZzYmR1UFg1L0lid3FoajJEcHZQb3pieFdVRG02?=
 =?utf-8?B?aG9HVUp6bU9nOFB1UkN4a0puUHB6TG5sZmJBSmlsdEhEamc2aDNNKzJyTmFE?=
 =?utf-8?B?VnIvZnNnYWpZcDV3dmljKzFIOCtXdDlsUCtsNWRsdy9UejlaUWkrMXNTbmZE?=
 =?utf-8?B?UHlHMXZlRDJ3eEg4ME1tam52STU0b0ZwYy9TWHo3S1FqelZzV01Ud0U4Z0tY?=
 =?utf-8?B?U01oVzdTMTFFU3lmRkJjbEhQOHE1VStEQlplZXhQQnlsSTV6QzFZQjNqQkZD?=
 =?utf-8?B?N0h0MlVCSXBtYXJCL2tGTUZZYzBrNjRnck1VajFtQUpwUjlSYjcvdUJibS9m?=
 =?utf-8?B?MzRTVnBFUXA4a3NBTmcweHdlZnRYb0EwWUFDS2xMUTBDMXZScGRqRGRLZnZa?=
 =?utf-8?B?N3gvWG1NWUlqYnNnR3NNcm9QYWRGVE4wbVZPbm9QMHl1LzA4TVlqaFVNemtY?=
 =?utf-8?B?WHB0cDI0M293WWEreE9hUlpOakw1bjNUVjRvV0RjSlhkbzJTdFBRM1lXbldu?=
 =?utf-8?B?bVo2QThaWSt2NFlNOExFNnMrZld5dTF4K1pRTTN1UGVRV2d5NmVhalEwYUlB?=
 =?utf-8?B?SmM3dVFuSEtsdU5HZHVqaW10dEVZd2JSVEdsVHRTOFYxTmNHdXR0ZjNEQWs5?=
 =?utf-8?B?V3FGNHN5eWdRclRGMDc1YkdFQmpJY0hBdjRnbFNsK3ZjMWxhUnNsQkY0ODNx?=
 =?utf-8?B?aWVoZXBGZmN0czBJU0FkS3d3NU9hRCtDQWovZTdXU201MFQ3VllrVzM0OXFV?=
 =?utf-8?B?ZkRxU3IvTXcyRUZLMXZOTVJGY1VVUzM5ZUJnWUtkVzl2SjNMR21IanhPRnpr?=
 =?utf-8?B?dXg3MGY2R0Z3Q29JampybDQ3b0plUVNKSmtKN0N5NzJ6MUNaLzBoK3p6WGRw?=
 =?utf-8?Q?7F8FLaCl4JZNe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVVTN29kci9FZVlMM05Jdi9xRytyY2RFcWpuOElLMTVYd1lQMEVFaXpkSERW?=
 =?utf-8?B?L0lHb1hQZlJIUkFwWWdIeFhWRUhJbU1yYmJaWERNWHdtc2xXM2cxT2hjZE9N?=
 =?utf-8?B?Qm92VExVZTMzNzVSak1wN3M4NURFSU95Q2lLNTh2SkZ5R2xsZWx5M0NYVTlN?=
 =?utf-8?B?NHI4L3NSRUtPVU9Sd0VRL2hSektHVTJjK3prZlJRVGtHbUdCQ0xEL0VtKzJh?=
 =?utf-8?B?VlppM29rNEtOTnl6dW9Ua1FWTkhJS1RKOW90T3RmVmpDd0djdTErb2JIenl4?=
 =?utf-8?B?OERyODJUTSt4ZEpVV1VRYzNRZWZEZzdwNktTRmFQMG9DNnNFcWp3SStTTjAr?=
 =?utf-8?B?eGh6OXB3QzN6dmlPZ3J0YWJ0SGRPL3YzcGswSjlHSEJJendOQnZNUnFMRUw4?=
 =?utf-8?B?Q29uUGNzRmNlNk85UzZmdytMd2JFVmZlY3FyWGMraGw5OEJiQWk0VGl3OWh5?=
 =?utf-8?B?OTlia2hwS3ZHMEVJeHNEYUJVeXhVa0JOSjNyQUtDaTZETkkxbDFGdk5XMzdx?=
 =?utf-8?B?eXNMZVJIT0ZrSXM1V2dTNHMyRnB3c1g3TlN5M2VRY1dDRGlSL0pQS3E1K21n?=
 =?utf-8?B?VTN5Y0FPUzhyWXM5SkV4VmYvUmU0YjY5RTFxRXFMYy9ON0prMWpOZmNIVWhr?=
 =?utf-8?B?Mit6ZytFVkxDMEgveGgyOGxQL2tsZ1VOTFVlTDVSRGZ4MHBtYm5UWEFLUldu?=
 =?utf-8?B?b0poa01CV3U1STB3Q1FnVWR2OU01QjJ1VGFxYkNTYkhvYXNYMjZ1eTczamd3?=
 =?utf-8?B?MDlzZGRaM3k4VnNWWnJ0UU9CR3hwaUI3TlJENzE4SXQwTHBBb1R0bVEzTVRt?=
 =?utf-8?B?SGo3VU1idGZ4WEFlT0ZNd2FmaGY1U2YzMFVEOWNTV1lkdlhLVGZjWUxjZ0ho?=
 =?utf-8?B?N1VyWW1YMnlvRDEzU1FqUkFWeFIvYW8vcGh1bVdwZmVqaFJ2NXBkU3VzWlUw?=
 =?utf-8?B?elBSMm1JSXFXVFRGbTVGOVBEZjlQaE82UnREWkNvTWFsZVlvS3dSd0pSS1lF?=
 =?utf-8?B?dE5zdEZwZkdkY2tudnE0SDVJK1BNOXNoaFIyMmtST0xCb2g3c1JCN0VWOVpG?=
 =?utf-8?B?KzRHL2lYQ0pGSXd2R3NhVUNGME1hdE96eFAwNUswWFRtUVJMK1d5Y3dmSVpn?=
 =?utf-8?B?K0E0bjI4ZUVpaUhYRmthWjNOL0ttR1RzTnBISThMNG5WUHBJMU5JT1c2cGNu?=
 =?utf-8?B?RXBqdUIxZ3REelJlVHBZMUtYMWpIWEtjeHgrdnAxcER4cGVmdVBURmVjU0Vo?=
 =?utf-8?B?dTBjUjNuWTRCQzFIYzg2TmpyUVZIa1F4STRnY25FNk1FSE8wUDdaNDhnSXBR?=
 =?utf-8?B?K3B6eGgyTVZuaVgvS0pKSFR4YjVON0NEOVRkZkJtWTBuWGNZaW5uNk94cUhB?=
 =?utf-8?B?NENtTGc5WnNOVTUySHNUT2ZsNUg5YUQwQkZuL2s0TFlFYm9na2ZOTWZlRjlo?=
 =?utf-8?B?bmppVzJIbE1seFZzbWhObisrdEFXTUttazhpZWtFbDZoZUtKV1NHWmc3WFB2?=
 =?utf-8?B?dGtrSlU1TEVSYklONmFZN2ZBMUN1d285TXQzZEliWXZXTjRPWUVDc3dIRUtN?=
 =?utf-8?B?MGdraWJzdUJGRmc0N1p2aTBxQXFjbkJOQVh6YS9ybE5OcTVCTTViSSs2STRQ?=
 =?utf-8?B?cEdHU0dTYndLS24xcXlTcUgxYU00akZDTjE5T1VKdlVhSy94VG5tQzIwNVNp?=
 =?utf-8?B?MWRWNm9zK2Y3WHhIeFREeGRoNWV5cGlnTmdtYWhOVEpyd2tFMndGcjZ3NlY0?=
 =?utf-8?B?MC9Hb28wQnQ4MGF1VUdUNnVIdTJOeDcwdGVTcDdPRnJxVXVtb1FBSS93TU5J?=
 =?utf-8?B?WllrTWYrN1p0TVJqdEhpcXZHZ1ZCY01CTkV0blMxbEN1RnlwSWZNQW1CVXR2?=
 =?utf-8?B?RnRDSFdKSUduaEpIOHRmelgzVFpNYzJJbGtaaTVkbnhiam9wWEtncGhrZSta?=
 =?utf-8?B?dlpDOEs5NVcraGsyNmxNeWJnRGpiTlhJSUwxQVM3Zm9zTUJBYXg1d3NKUXBm?=
 =?utf-8?B?NElDa3p5ZTQ5UTR0ZmR4dlN6bXBPK0lzMlRENnhOa0pTYmRwcElPSVpiQk1S?=
 =?utf-8?B?R1UxckthK25oM0htTlhNTWZjbUR0ejkxcVhqd1Q3eTVhcUtaVTF3eUFIT0dN?=
 =?utf-8?B?ZWZTbCtza1c2NWh5SjJYc1k0akpFTldNci9GS1RubUZ6ZVljR2hXMk9uWVJG?=
 =?utf-8?B?N2c9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c18fe7-8968-4bba-263d-08dd66bb0682
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 07:52:41.3083
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9DftqVdmch4m7BE0XZPpLvNfNT3XTIrcptXdyzl2FA30OoU740hdmogXLy5BTTHYYy6+NNHpJQOGnYifzwTqASpgTSyb7ULfSf6lhUW0cJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR10MB6288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_005253_278971_E8CB5F10 
X-CRM114-Status: GOOD (  23.75  )
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

QW0gMzAuMTAuMjQgdW0gOToyMCBQTSBzY2hyaWViIFNhcmF2YW5hIEthbm5hbjoKPiBPbiBXZWQs
IE9jdCAzMCwgMjAyNCBhdCAxMDoyOOKAr0FNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29t
PiB3cm90ZToKPj4KPj4gT24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgNDowMeKAr0FNIEZyaWVkZXIg
U2NocmVtcGYKPj4gPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4gd3JvdGU6Cj4+Pgo+Pj4g
SGkgSm9oYW5uZXMsCj4+Pgo+Pj4gT24gMjUuMTAuMjQgMTA6MDUgQU0sIG1haWxpbmdsaXN0MUBq
b2hhbm5lc2tpcmNobWFpci5kZSB3cm90ZToKPj4+PiBbU2llIGVyaGFsdGVuIG5pY2h0IGjDpHVm
aWcgRS1NYWlscyB2b24gbWFpbGluZ2xpc3QxQGpvaGFubmVza2lyY2htYWlyLmRlLiBXZWl0ZXJl
IEluZm9ybWF0aW9uZW4sIHdhcnVtIGRpZXMgd2ljaHRpZyBpc3QsIGZpbmRlbiBTaWUgdW50ZXIg
aHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0KPj4+Pgo+Pj4+
IEhleSwKPj4+PiBXZSBoYWQgc29tZSBwcm9ibGVtcyB3aXRoIHRoZSBoZG1pIG9uIHRoZSBpbXg4
bXAgYW5kIHdhbnRlZCB0byBsZWF2ZSwgd2hhdCB3ZSBmb3VuZCBvdXQgYWJvdXQgaXQsIHNvbWV3
aGVyZSBmb3Igb3RoZXJzIHRvIGZpbmQgaXQuCj4+Pj4KPj4+PiBUaGUgcHJvYmxlbSB3YXMgdGhh
dCBvdXIgaGRtaSBkaXNwbGF5IHNvbWV0aW1lcyBzdGF5ZWQgYmxhbmsgYWZ0ZXIgaG90IHBsdWdn
aW5nIGFuZCBzb21ldGltZXMgYXQgc3RhcnR1cC4gT24gb2xkZXIga2VybmVsIHZlcnNpb25zIDYu
NiB3ZSBkaWQgbm90IGhhdmUgdGhlIHByb2JsZW0gd2l0aCB0aGUgbm90IG1haW5saW5lZCBoZG1p
IHBhdGNoZXMuCj4+Pj4gV2UgdHJhY2tlZCB0aGUgY29tbWl0IGRvd24gdGhhdCBpbnRyb2R1Y2Vk
IHRoZSBwcm9ibGVtIGZvciB1cy4gSXQgd2FzIHRoZSBmb2xsb3dpbmcg4oCcZHJpdmVyIGNvcmU6
IEVuYWJsZSBmd19kZXZsaW5rPXJwbSBieSBkZWZhdWx04oCdICBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjMxMTEzMjIwOTQ4LjgwMDg5LTEtc2FyYXZhbmFrQGdvb2dsZS5jb20vCj4+
Pj4gU28gd2Ugc3dpdGNoZWQgYmFjayB0byBGV19ERVZMSU5LX0ZMQUdTX09OIHZpYSBrZXJuZWwg
cGFyYW1ldGVyLiBEb27igJl0IHJlYWxseSB1bmRlcnN0YW5kIHdoYXQgdGhlIHByb2JsZW0gd2l0
aCBSUE0gaXMuCj4+Pj4KPj4+PiBTbywgdGhpcyBpbmZvcm1hdGlvbiBpcyBqdXN0IGZvciByZWZl
cmVuY2UuIE1heWJlIHNvbWVvbmUgaGFzIGFuIGlkZWEgd2hhdCBpcyBnb2luZyBvbiBoZXJlLiBB
bmQgaG93IHRvIGZpeCB0aGUgcHJvYmxlbSBpbiBhIG1vcmUgcHJvcGVyIHdheS4KPj4+Cj4+PiBU
aGFua3MgZm9yIGludmVzdGlnYXRpbmcgYW5kIHNoYXJpbmcgeW91ciByZXN1bHRzIQo+Pj4KPj4+
IEknbSBzZWVpbmcgdGhlIHNhbWUgc3ltcHRvbXMgYW5kIHByZXZpb3VzbHkgZm91bmQgb3V0IHRo
YXQgdGhpcyBpcwo+Pj4gcmVsYXRlZCB0byBMQ0RJRiB1bmRlcnJ1biBlcnJvcnMuIFNlZSBbMV0g
Zm9yIG1vcmUgaW5mb3JtYXRpb24uCj4+Pgo+Pj4gQWRhbSBoYXMgYWxzbyBzdGFydGVkIHRoaXMg
dGhyZWFkOiBbMl0uCj4+Pgo+Pj4gQW55d2F5LCBrbm93aW5nIHRoYXQgdGhpcyBpcyByZWxhdGVk
IHRvIGZ3X2Rldmxpbms9cnBtIGlzIHJlYWxseQo+Pj4gaGVscGZ1bC4gSSBqdXN0IHRyaWVkIHdp
dGggZndfZGV2bGluaz1vbiBhbmQgd2Fzbid0IGFibGUgdG8gc2VlIGFueQo+Pj4gaXNzdWVzIGFu
eW1vcmUuIFNvIHRoaXMgY29uZmlybXMgeW91ciBmaW5kaW5ncy4KPj4KPj4gSSB3YXMgb2ZmIGlu
IHRoZSB3ZWVkcyB0aGlua2luZyB0aGVyZSB3YXMgc29tZXRoaW5nIHdyb25nIGluIHRpbWluZwo+
PiBhbmQvb3IgYSByYWNlIGNvbmRpdGlvbiBhcm91bmQgdGhlIFBMTCBvciBzb21ldGhpbmcuICBU
aGlzIGlzIGdvb2QKPj4gbmV3cy4KPj4gUGxlYXNlIGZvcmdpdmUgbXkgaWdub3JhbmNlLCB3aGF0
IGRvZXMgZndfZGV2bGluayBkbz8gIElzIHRoZXJlCj4+IHNvbWV0aGluZyB3ZSBjYW4gZG8gaW4g
dGhlIGRyaXZlciBpdHNlbGYgdG8gZm9yY2UgaXRzIGJlaGF2aW9yPwo+IAo+IGZ3X2Rldmxpbmsg
ZmlndXJlcyBvdXQgc3VwcGxpZXIvY29uc3VtZXIgZGVwZW5kZW5jaWVzIGJldHdlZW4gZGV2aWNl
cwo+IGFuZCBjcmVhdGVzIGRldmljZSBsaW5rcyBiZXR3ZWVuIHRoZW0uIFRoaXMgZW5zdXJlcyBw
cm9wZXIKPiBwcm9iZS9zdXNwZW5kL3Jlc3VtZS9zaHV0ZG93bi9ydW50aW1lIFBNIG9yZGVyaW5n
Lgo+IAo+IGZ3X2Rldmxpbms9cnBtIHZzIG9uIG1lYW5zICJlbmZvcmNlIGFsbCBvZiB0aGVzZSIg
dnMgImVuZm9yY2UgYWxsIG9mCj4gdGhlc2UgZXhjZXB0IHJ1bnRpbWUgUE0iLgo+IAo+PiBhZGFt
Cj4+Pgo+Pj4gSSBob3BlIHRoYXQgc29tZSBvZiB0aGUgZHJpdmVyIGZyYW1ld29yayBhbmQgcnVu
dGltZSBQTSBleHBlcnRzIGNhbiBoZWxwCj4+PiB0byBmaW5kIG91dCB3aGF0IGlzIGFjdHVhbGx5
IHdyb25nIGFuZCBob3cgdGhlIGNvcnJlY3QgZml4IG1pZ2h0IGxvb2sgbGlrZS4KPj4+Cj4+PiBJ
J20gYWxzbyBDQy1pbmcgU2FyYXZhbmEgd2hvIGF1dGhvcmVkIHRoZSBjaGFuZ2UgZnJvbSBmd19k
ZXZsaW5rPW9uIHRvCj4+PiBmd19kZXZsaW5rPXJwbSB0byBzZWUgaWYgdGhleSBoYXZlIGFueXRo
aW5nIHRvIGFkZC4KPiAKPiBXaGVuIGZ3X2Rldmxpbms9cnBtLCB5b3UnbGwgaGF2ZSBkZXZpY2Ug
bGlua3MgY3JlYXRlZCBiZXR3ZWVuCj4gY29uc3VtZXJzIGFuZCBzdXBwbGllcnMgd2l0aCB0aGUg
RExfRkxBR19QTV9SVU5USU1FIGZsYWcgc2V0LiBTbwo+IGJlZm9yZSB5b3VyIGRldmljZSBpcyBy
dW50aW1lIHJlc3VtZWQsIGl0J2xsIG1ha2Ugc3VyZSBhbGwgeW91cgo+IHN1cHBsaWVycyBhcmUg
cmVzdW1lZCBmaXJzdC4KPiAKPiBNeSBndWVzcyBpcyB0aGF0IHRoZXJlIGlzIHNvbWUgaXNzdWUg
aW4gdGhlIHJ1bnRpbWUgUE0gaGFuZGxpbmcgaW4KPiB0aGVzZSBkcml2ZXJzLiBJIGRvbid0IGhh
dmUgZW5vdWdoIGNvbnRleHQgdG8gcHJvdmlkZSBmdXJ0aGVyIGluc2lnaHQuCgpJIGJldCB5b3Ug
YXJlIHJpZ2h0LiBJIHRyaWVkIHRvIGhhdmUgYSBjbG9zZXIgbG9vayBidXQgdW5mb3J0dW5hdGVs
eSBJCmRpZG4ndCBtYWtlIGFueSBwcm9ncmVzcy4KClRoZSBkcml2ZXJzIGludm9sdmVkIGFyZSBs
Y2RpZl9kcnYuYywgaW14OG1wLWhkbWktdHguYyBhbmQKcGh5LWZzbC1zYW1zdW5nLWhkbWkuYy4K
CkFzIHdlIHNlZSBhICJMQ0RJRiBVbmRlcnJ1biBFcnJvciIgd2l0aCBmd19kZXZsaW5rPXJwbSBt
eSBmaXJzdCBndWVzcwp3b3VsZCBiZSB0aGF0IHRoZSBzdXBwbGllcnMgb2YgTENESUYgYXJlIG1h
eWJlIHR1cm5lZCBvbiBpbiB0aGUgd3Jvbmcgb3JkZXIuCgpMdWNhcywgTWFyZWs6IEFzIHRoZSBt
YWluIGF1dGhvcnMgb2YgdGhlc2UgZHJpdmVycywgZG8geW91IHRoaW5rIHlvdQpjb3VsZCBoZWxw
IGEgbGl0dGxlIHdpdGggZnVydGhlciBkZWJ1Z2dpbmc/IEFueSBpZGVhcz8KClRoYW5rcyEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
