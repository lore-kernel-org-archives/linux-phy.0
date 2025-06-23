Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C00BC77B7C
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jun 2025 02:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VdvLJ2X6VwyLCftRJ43wdxqCdYTF4QnpQ5gp0OswA0=; b=4jrZT8x/2vFtlq
	0Waj09HGsSU1AsaWtkv1rqJpzXGtER2bJuNaEy/yC7SvnvK+6lHVFPHI66my5+mMhVCpjitlPZDXR
	HMGJv71NphLLq0Bz7tDThK5N3r3IVI/1aeT4qZJXlhm6xx9IMd7pQkGhPw+k+4Ns8MuA7RMyk0Krw
	doyPKmly9s7w7cNx3m3AYMGZDPFeeTQzqKE9DgVcRsa6cDEsMo8D65OuUjK+Ht9ZeUXQuEdhlcOY0
	7fUWF47jUOzU14rO5ylG3JthCZ7/3L9BLyt94LnYF+/BN9/+mhz7+h1QXpQg7q0majuv4IbJAN/wj
	aDXA5xI64rh8RUVo1cUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTXGs-00000001T82-07V6;
	Mon, 23 Jun 2025 02:50:58 +0000
Received: from mail-japanwestazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c406::3] helo=OS8PR02CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTX8h-00000001S4m-16CY;
	Mon, 23 Jun 2025 02:42:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INx45uJRlL9nV+w1WjkD4TywSInnFmv8Ao3gwy8qjX0uwSXTBhg/vm5kLyNtEyCTRfQplDhjFNGr2/u6Hjvbb+FYvlsQJi79MwYzJa92OYNj9+9H89eE6goMKDN5EYLaEteNf/+m0bgwr5jF5/n+WEC54vmcVhFjJ5wpj83WRQGZEBAUd0CUfYOmDVks2eq602Ugx8/hkYlOpN4xwBQyuE1CDtylG10hUePXaoLUw6199ubTu8nM8Rf9CVRTtf2m/TFPcwtQbcJbc77ecEhmRFJXjaVfsiDrPuUtdWiWSipbNwcs+4n8GE28VkOJZKJ1hkaybPikgK8N6D0IiCmIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JLMb7eJjr7XkcjcZ8BY9s2O7UkP9trFycXwFrhrEgfI=;
 b=rSSfHq5FSg1kOaVj7JDJoMzCVDKNMg7PLITZEjuybm8uPfe4+jN0E7EYL2ZsXJf0pdMgpvtd0SqNVXfUJ0tCtDxvlM1HCLSRxzwLFodSEZYqNFxpGVQ/yq3SL4tNdNHt3P6CQjmFrkz9Niir/ab3NPtC8DtEb0Dj+zNkbKpHfHTMPDQw1OzGkyS4ps3OCPWrc+2bTOFeOwMQzI32vYdF8QQZW6w6r4hjwwaQmn5EPU/ok5adFOzWUge1I1x2og8RAwDojcMLbrPeaZnyjvpu8qfFnqZ0lRA6XxcYMXV6hoKMfGBhhUVblVnSTwS/IEcqnKkTyGaVpPIk7Q3FwaPa/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JLMb7eJjr7XkcjcZ8BY9s2O7UkP9trFycXwFrhrEgfI=;
 b=YiEqq14O2lelZ46lAcXJ9/oAwSSOEqlfkih2tOiQC7xDLxmDHzblSiV56ZQbGIps14EVZHVkTtdP1nMgZCEDIUFtH6MrqRdQvCvAd3nLcIPrp+3JrZXqLfQf1KB9EJs3OnXlD1Cn3nES1VOYQYcgx0azsZIdxaYqagsNqJtjQe2dO1CB+XEI+Y7i0QXtOCtaMs1aGajsfvA8XzN6cu4Q6R93uLWm05UB3JPB/5kKTxz2mkX5e1ojTp9w7P6IeFBPsX+qvHq89zJAPj8176Bre8N6RxAAk9fjfXc6Yla5JShe0D1+MK5yU5Jy5Sppj1YR/A5v7UUftWOIQBXhTLLEbA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by JH0PR06MB7151.apcprd06.prod.outlook.com (2603:1096:990:8e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Mon, 23 Jun
 2025 02:42:07 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8857.025; Mon, 23 Jun 2025
 02:42:07 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>, "mani@kernel.org"
	<mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"joel@jms.id.au" <joel@jms.id.au>, "andrew@codeconstruct.com.au"
	<andrew@codeconstruct.com.au>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
CC: "elbadrym@google.com" <elbadrym@google.com>, "romlem@google.com"
	<romlem@google.com>, "anhphan@google.com" <anhphan@google.com>,
	"wak@google.com" <wak@google.com>, "yuxiaozhang@google.com"
	<yuxiaozhang@google.com>, BMC-SW <BMC-SW@aspeedtech.com>
Subject: =?utf-8?B?5Zue6KaGOiBbUEFUQ0ggNy83XSBwY2k6IGFzcGVlZDogQWRkIEFTUEVFRCBQ?=
 =?utf-8?Q?CIe_host_controller_driver?=
Thread-Topic: [PATCH 7/7] pci: aspeed: Add ASPEED PCIe host controller driver
Thread-Index: AQHb3BN5QYkLFJ4SFk66wBBeIABUJbQA2i+AgArqpKA=
Date: Mon, 23 Jun 2025 02:42:06 +0000
Message-ID: <SEYPR06MB5134623F42A5B204C20E14A99D79A@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
 <20250613033001.3153637-8-jacky_chou@aspeedtech.com>
 <576ca6bb-291c-458e-9703-46e7d2f43bbe@kernel.org>
In-Reply-To: <576ca6bb-291c-458e-9703-46e7d2f43bbe@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|JH0PR06MB7151:EE_
x-ms-office365-filtering-correlation-id: 92d6b196-db1b-4640-a36c-08ddb1ff8b7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?elBSall4VC8wSFNXdlB3SkQzV2RhZmdWbjJlKzdCN1k1Nit1d2krSkJmYmR4?=
 =?utf-8?B?NlpucVplR2ZrRXBOMXR0RVV4QW1zeGhOSmplc3FGdjJLU0RxbWxFczdOTCtW?=
 =?utf-8?B?UWpCaElucUZ4dWlIdmFaR1ZBZkxMRHYxaVMxY3JHVkpzbm9UOVFvQ1pOWWhQ?=
 =?utf-8?B?b1psMVZ4UU1ETno2RWd6SFVCNFl0bzIvSmhDR3BYc3B3SDkzN0RTdnc5WTU1?=
 =?utf-8?B?RlFuZzc5SUpmeEg2MExrSFFLcFo4UmlxaTY2YXQzR2VGUWtIV3RaaU85Z3VM?=
 =?utf-8?B?NmM0Z3RMTDlIU3ZyRTdPQ3NlQlhsZnB3ZnJQNnlLeUx6bDhhVjJRZFEzOXJ1?=
 =?utf-8?B?MWxRY0VmZmNDaitkejFRZ2dBQXhyMHlhVGRXaTFEdzB0R3hDalY4VVM0Ty9F?=
 =?utf-8?B?ZGFyeURWeXp0Q2tYUzUvaW9JRlMzVmN3WENYZGtnKytYRFVBVDNkM0dHZXVC?=
 =?utf-8?B?bStrWlJKRDBoWjhkdDIxMnFsNGg1R3lBSi9iSzJUT2FHeHRRbE5JQjNqdDJt?=
 =?utf-8?B?N0NKUmJVT0djRVlicEcrN2x1TUVRdXdlWTBRclY5ZFI0NThNNXNQVFYxVVR4?=
 =?utf-8?B?cVhISVVCNjREYXpCdmowVEVJdkVLaWRBc0dFaWpDdXZ4dUMzaVRwQlQ0L01W?=
 =?utf-8?B?WkxNbUczZzdrSkluK0NnRzNqUGh5cjZleGVhZ2toQk5tV2taKzRyNjFSTlFi?=
 =?utf-8?B?Y3FiREtQTUdnaEIrWFMyZHEwaTdoajd2eVJHbmRtZGF0UjJhTSs0OFE3VXBo?=
 =?utf-8?B?QzlWb2p0YlZJMzM4RkJlWVFKVitHNEQvZFBqRXMyS1lLNEwzSS85MGk2b054?=
 =?utf-8?B?K0lWRVJBbjNLTjVNT0JZc1lZaGRvcDdTM0VxdkV3UXJCWkhjd1p2d29XemE4?=
 =?utf-8?B?VWgrQkR1Zis1bE0rbDlqY2w0RWp2VlA5eTNKWjhocVpqTU5Fam5HYXFVT3hu?=
 =?utf-8?B?elFiVVNYQ3lRVi94K25ma1pSQ045N0MxbXJqVDBPMDRBSlZ6ZGJsbW5RUWIv?=
 =?utf-8?B?TmNsYmNFNWNNQTF3MTllYWh6Tk15VnF1OGFwWWNoMFd2NXpvOUxMVExLREpz?=
 =?utf-8?B?cnozakluTWhnYitxb0hlTzdXV3ZyYzVEUXZmc0RYYnhCZkQ4dU9kaGxZY0ZS?=
 =?utf-8?B?anhNMC94YlhZSk9SQjUyeFZaVEpxWDVwWlIzVG5BazhoVkh0OHhBSWZjd090?=
 =?utf-8?B?OGlnZVlVY0RmUmFJK3E0RU42L01jaHNtUkdGa3NsVkxMWjRQSVVuNEpLaCt0?=
 =?utf-8?B?YTY4Qkt4dTc4dnZvTVB6cCs0cEYyTmF3WmVtTjlnRE9mMnZiRCs4dUdXbTVt?=
 =?utf-8?B?ckt6emtSNHE1dHdYT2k1RDlONEdwMzZNT3MySTJmOHFQSURRY3pPZ0kzNjlk?=
 =?utf-8?B?QlNMMUJBemVTaVBJTVBiaHNjRW0zT1BQUEM0OGU0clV5YXB1VDZQUHVlUVBo?=
 =?utf-8?B?VzdmNmtHM1M2elVVMjVOSDBDdVI0NVdHTWtUZkpkcS9FSTVPTldIS01QSlEw?=
 =?utf-8?B?Z2JIN2RvTDNoKytXQmVwQTNyV3dsZlk2bmJqTXFPYnVIbE0zMzRPYlVzVDEr?=
 =?utf-8?B?bUJSNThzZGt4d3RxT01wL2xzQWwzNzlOWjhzMEdRekUyZGdjTXVTMVBqZHIy?=
 =?utf-8?B?UlBQTVlSTFpPTFcwVTEvcVJGaWpDemJ3aHp1U0MwTExhVjlJQ1RMN2Zqc0N1?=
 =?utf-8?B?b0d0ZjFGM1RNNFh4UUN6Ykc0RFJlZ2YzM2RiMWg3MlBILzhwOHlxQzk2YUlj?=
 =?utf-8?B?MHUvY3ZHeUNLME9tWGVUTGpsd0RKS0Z5ZTRiZlRzUkV3c2c0elBwdG9mZDZo?=
 =?utf-8?B?aS9hVTB6R0xVYmhUOUxybm1GRDUzaXNka3EwZXU0Q2ZZZHlWdFIxb0ErMW1P?=
 =?utf-8?B?Q3d4YTJqOU4xNDhCL0FUN0NXQ0VvRVBjcUp3ZTRIOWpobkRHYWJuVmg0S3h1?=
 =?utf-8?B?Rlh5c1AzU1hxS3FzRU5iN2JyN1RFV0ZGYWRPc01sTDkzYjhxUHdiRVV5Smxq?=
 =?utf-8?Q?/ZMXBILUVZ1j9S7irkcfTn++GGItI8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018)(921020);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkE2clRjYkVvYXRBVm5KdVhKUkpkOEppNitEL0t5VkhOWlcreWUvdEV4QkFi?=
 =?utf-8?B?aU4xUDhaVzUrSjBzdFN6QjRVN1dLRmNtMHhNQ2ViZnBPbFFkZmQwZTV6dHU4?=
 =?utf-8?B?WkJYODkvRzgvMnVDSW8rSlZLeHV5eFBzNHgwOWdTQnJCcnVQVEJhNWllcURZ?=
 =?utf-8?B?ckE1bDNuRUpGbUh4Uzh6azlwLzJSdFczUkRXVFF1MS9odlN6YnZqQlBFV1BY?=
 =?utf-8?B?TFo2b0FpRmZJOStsaXJzTnZKcUtLeFpOZlM2RHU5aWVIZDYrMnIwRUtFa0t4?=
 =?utf-8?B?V29tRkRCeEh6blJqMmJuNHhLaDdxUTZVcnp0aUlmSTArcXJabmhQdG1INi9O?=
 =?utf-8?B?Q0p6bm1kQWZBTzVjTXplSXJzb3Q1QUR4L2RwYzZSWFNpTDh4MVBtSVlYL3d2?=
 =?utf-8?B?VXJCS012OUxQbmcwUGNmWGZwVSszWHc0WHhDY2hTWThwdStpcFEvOEZjVysy?=
 =?utf-8?B?ekxvNGJoOTF1S2xFU3hkSTRKU21iY1lkS2o1R241V1c1UWdUY1F0bi9Cc21U?=
 =?utf-8?B?YnB3VUJScm1tOWVxTE1QUlVjN0xMOFQ5MGZMQWJDOGpzbW5kSVhmRnpJS1BF?=
 =?utf-8?B?OWFZaEtoUlJUWmFjWG5VaTZrcjk3cDg1TXlBYk9VYVhoV3ZhbnVJVytlbC9X?=
 =?utf-8?B?RDAzVFBkQWtjOGtLdFhLRkw1WjNoSmRSMnppam4rWW5VcElxZzZLSWRCd3Q5?=
 =?utf-8?B?WXFhMG1odmVHemoya1Y5eVdVQ2I2Tkh5KzUyNXdraUd6NmRZUUdoR0JOTEJB?=
 =?utf-8?B?OGdhczNFYnFBUmJaVnFZMUNtanhnSHhBYjhzZGZpbGpBRkppVWRxSjBoT1F2?=
 =?utf-8?B?V1JXMXI5bGRHWUVlRExvbW1qZ1EyNWJ6dXVTQVNsUXdIN0tQVjM3Ty80UUFX?=
 =?utf-8?B?Tlk2VVdjNEJKWEdEN21qZVlhVlYzdlpNUWxucXRQOXBLb2NZNW1sUHF4RVp6?=
 =?utf-8?B?ME5UOFFMMVYxcXNjQW0zd0FTc2V5dDVFVjZaWWpHRjAzaXExbHBMOVpkSmJ0?=
 =?utf-8?B?djV4R2tMK082VG9yc2FieU1OL29oNWVyVkFIY000RG1WQzFDM2tldWIxQ0Vs?=
 =?utf-8?B?K1c5N3NROHhTTC9GK3YxdTFPRFFwYWZQeVNSSUUzdFlGSEU3RlM2OUpYeVNw?=
 =?utf-8?B?SHF6MXh0S3grVndZQVJsL09vMkkzamttRHRzMnk3eVNrVFd5VkFoYW9kU0FY?=
 =?utf-8?B?OXBlSmxpcG9yMm5CQkVjYnczUUZ6NVBGMFJKWjFFODVVVEc5Vi9GcVhLWnBT?=
 =?utf-8?B?Z3FrRkZDZUxiKzVSYjU1bTVCOVpQYUJ6SDhldjJTb2lkNkVPZUZnbTFqUG5G?=
 =?utf-8?B?NldBcjJRektYRTBzU0xWVmpDRld3d3k2LzdQSThnOSt6Vkw0eGZKNVNBOVRW?=
 =?utf-8?B?TzRjZno0ZnpvelBpK1UxMHhrbnU1NmtLRzA0RDNSVWpnUG1wMG5HaCtEcDJU?=
 =?utf-8?B?L3RBbFI2UFN1YVF3TnZ3UkJQWkwwNzVvM3grY2pmUGpOTEo2QWprVExkNkhl?=
 =?utf-8?B?MEljNTF4QW5LS2IzZFQyc0tKSnlTL05kYVNuZS9VUU1JVTgzQUdSeTR6MTlv?=
 =?utf-8?B?aVRwV0FtMVBjaXpQWml1RFRXMEI2ZjNVbzNNOC9uVGxRcTZjQkxVeVFUQUZp?=
 =?utf-8?B?YXRMWlFrZzMzYkEzdXhlbitGVU1DZjV0M2tHTGFSN3NuWnNpUEIrUmpDVnd2?=
 =?utf-8?B?VUlUcmYzWVdUbnM3T2FrWFhidDZtL0JtcHJFcjhXbUpOOEFabHA1RlEwMlho?=
 =?utf-8?B?TDhiQkMzT1daNjV5eGFaOFpVMWxUTC9EVy9VY0ZhbURVWWdneWpjaXk5RHpp?=
 =?utf-8?B?OHVsZmxOeXNKWGpuVDJCeFordmJhdit4U2p2dTV6K1pVbHRsUzBHYVRWYTEx?=
 =?utf-8?B?V3Y4eGMzUUo3a1dQU2VvRldiUFVtbWFqZjNaUVdDejd5OGY4elZseGc4YkJz?=
 =?utf-8?B?SThNYTdIQTh6OXF1T0MxSERzbHRBTnFQdXNFSlZxY21TVDVlYSthS2RBb3NE?=
 =?utf-8?B?dzczWDdkMjFFczBQZXFEaGpmeERpVjM3UENnUytEZENxNFI5K05tNENCdjF4?=
 =?utf-8?B?L01PV0JRb3ExYXJsWWRQT29PZFV6SVBCS0w4R29ENFM1WkwzbmduN09DSCsz?=
 =?utf-8?Q?Zh3Uhfnj1/C6qG7tbZ9GiglLi?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92d6b196-db1b-4640-a36c-08ddb1ff8b7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2025 02:42:07.0867
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ekJbExjzwNFB9pWRL399kB9xS1pjMEOZtBfK6KleEyZJSC7PsX/50yEHSJZBJUJjma1BJDw5Jro25kxQDRvoEVVNb+NxBFJn7hWkJU2xa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_194231_411728_8D263458 
X-CRM114-Status: GOOD (  22.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> >  	  This selects a driver for the MediaTek MT7621 PCIe Controller.
> >
> > +config PCIE_ASPEED
> > +	bool "ASPEED PCIe controller"
> > +	depends on PCI
> 
> depends ARCH_ASPEED || COMPILE_TEST
> 

Agreed.

> > +	depends on OF || COMPILE_TEST
> > +	select PCI_MSI_ARCH_FALLBACKS
> > +	help
> > +	  Enable this option to add support for the PCIe controller
> > +	  found on ASPEED SoCs.
> > +	  This driver provides initialization and management for PCIe
> > +	  Root Complex functionality, including interrupt and MSI support.
> > +	  Select Y if your platform uses an ASPEED SoC and requires PCIe
> > +	  connectivity.
> > +
> >  config PCI_HYPERV_INTERFACE
> >  	tristate "Microsoft Hyper-V PCI Interface"
> >  	depends on ((X86 && X86_64) || ARM64) && HYPERV && PCI_MSI diff
> > --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile index 038ccbd9e3ba..1339f88e153d
> > 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -39,6 +39,7 @@ obj-$(CONFIG_PCI_LOONGSON) += pci-loongson.o
> >  obj-$(CONFIG_PCIE_HISI_ERR) += pcie-hisi-error.o
> >  obj-$(CONFIG_PCIE_APPLE) += pcie-apple.o
> >  obj-$(CONFIG_PCIE_MT7621) += pcie-mt7621.o
> > +obj-$(CONFIG_PCIE_ASPEED) += pcie-aspeed.o
> >
> >  # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
> >  obj-y				+= dwc/
> > diff --git a/drivers/pci/controller/pcie-aspeed.c
> > b/drivers/pci/controller/pcie-aspeed.c
> > new file mode 100644
> > index 000000000000..c745684a7f9b
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-aspeed.c
> > @@ -0,0 +1,1039 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2025 Aspeed Technology Inc.
> > + */
> > +#include <linux/irqchip/chained_irq.h> #include <linux/irqdomain.h>
> > +#include <linux/mfd/syscon.h> #include <linux/kernel.h> #include
> > +<linux/msi.h> #include <linux/module.h> #include
> > +<linux/platform_device.h> #include <linux/of_platform.h>
> 
> Where do you use it?

No, I will remove it in next version.

> 
> > +#include <linux/of_address.h>
> 
> Where do you use it?
> 

No, I will remove it in next version.

> 
> > +#include <linux/of_irq.h>
> 
> Where do you use it?
> 

No, I will remove it in next version.

> 
> > +#include <linux/of_pci.h>
> 
> Where do you use it?
> 

No, I will remove it in next version.

> > +#include <linux/pci.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <linux/irq.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/workqueue.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +
> 
> 
> 
> ...
> 
> > +
> > +static int aspeed_pcie_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct pci_host_bridge *host;
> > +	struct aspeed_pcie *pcie;
> > +	struct device_node *node = dev->of_node;
> > +	const void *md = of_device_get_match_data(dev);
> 
> Not void, but specific type. This is not Javascript, we have here types.
> 

Agreed.
I will add this type in next version.

> > +	int irq, ret;
> > +
> > +	if (!md)
> > +		return -ENODEV

...

> > +
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq < 0)
> > +		goto err_irq;
> > +
> > +	ret = devm_request_irq(dev, irq, aspeed_pcie_intr_handler, IRQF_SHARED,
> dev_name(dev),
> > +			       pcie);
> > +	if (ret)
> > +		goto err_irq;
> > +
> > +	pcie->clock = clk_get(dev, NULL);
> 
> Huh...
> 
> > +	if (IS_ERR(pcie->clock))
> > +		goto err_clk;
> > +	ret = clk_prepare_enable(pcie->clock);
> 
> devm_clk_get_enabled.
> 

I will change it in next version.

> > +	if (ret)
> > +		goto err_clk_enable;
> > +
> > +	ret = pci_host_probe(host);
> > +	if (ret)
> > +		goto err_clk_enable;
> > +
> > +	return 0;
> > +
> > +err_clk_enable:
> > +	clk_put(pcie->clock);
> > +err_clk:
> > +err_irq:
> > +	aspeed_pcie_irq_domain_free(pcie);
> > +err_irq_init:
> > +err_setup:
> > +	return dev_err_probe(dev, ret, "Failed to setup PCIe RC\n"); }
> > +
> > +static void aspeed_pcie_remove(struct platform_device *pdev) {
> > +	struct aspeed_pcie *pcie = platform_get_drvdata(pdev);
> > +
> > +	if (pcie->clock) {
> > +		clk_disable_unprepare(pcie->clock);
> > +		clk_put(pcie->clock);
> > +	}
> > +
> > +	pci_stop_root_bus(pcie->host->bus);
> > +	pci_remove_root_bus(pcie->host->bus);
> > +	aspeed_pcie_irq_domain_free(pcie);
> > +}
> > +
> > +static struct aspeed_pcie_rc_platform pcie_rc_ast2600 = {
> 
> This should be const. Why it cannot?
> 

Agreed.

> > +	.setup = aspeed_ast2600_setup,
> > +	.reg_intx_en = 0x04,
> > +	.reg_intx_sts = 0x08,
> > +	.reg_msi_en = 0x20,
> > +	.reg_msi_sts = 0x28,
> > +};
> > +
> > +static struct aspeed_pcie_rc_platform pcie_rc_ast2700 = {
> 
> This should be const. Why it cannot?
> 

Agreed.

> > +	.setup = aspeed_ast2700_setup,
> > +	.reg_intx_en = 0x40,
> > +	.reg_intx_sts = 0x48,
> > +	.reg_msi_en = 0x50,
> > +	.reg_msi_sts = 0x58,
> > +};
> > +
> > +static const struct of_device_id aspeed_pcie_of_match[] = {
> > +	{ .compatible = "aspeed,ast2600-pcie", .data = &pcie_rc_ast2600 },
> > +	{ .compatible = "aspeed,ast2700-pcie", .data = &pcie_rc_ast2700 },
> > +	{}
> > +};
> > +
> > +static struct platform_driver aspeed_pcie_driver = {
> > +	.driver = {
> > +		.name = "aspeed-pcie",
> > +		.suppress_bind_attrs = true,
> 
> Why?
> 

I will remove it in next version.

> > +		.of_match_table = aspeed_pcie_of_match,
> > +	},
> > +	.probe = aspeed_pcie_probe,
> > +	.remove = aspeed_pcie_remove,
> 
> So how exactly remove can be triggered?
> 

Agreed.
I think it may be triggered when rebooting.
I will remove it in next version.

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
