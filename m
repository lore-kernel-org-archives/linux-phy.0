Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80F2C3ABCB
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 05:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:CC:To:Subject:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zig3Chuj2Y+nfkD+nsQAsIoBGwFte48nVzS4Vvifvf4=; b=kZm5qjqh/tQqC75fdzmF8iNfCt
	2vk1C7pyvqRys1SzYm6N07CyTvF996jSxj2w3mKoFs0hBrTe5fN9tn+sDe0YnPRBDBye35fhUxbI2
	xso9TOa/GdkbRCzKCp3O81WuDYIu5zVUDWX7PSKfcSXZJPTSOAuX+jCO6ipH5TOobpacZb++izN+P
	gCNJPfIzzxa3kXFDajCYyp5jpCy7HFuBNyNNArsWYXx5T4hEI9P/9+y2O5SZjbt+X27UK3iqK8MUa
	wPiV0QsTgmPPiEvtpNAsbrgRSpTpdtQYhmYGkV329/usnGJ07Dn2TXp75d2owqLEjxbQSM6bKQY90
	S/SQ8aNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF4sq-0000000E65u-1n31;
	Wed, 14 May 2025 05:42:24 +0000
Received: from mail-vi1eur05on20724.outbound.protection.outlook.com ([2a01:111:f403:2613::724] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF4sn-0000000E65J-1UAa;
	Wed, 14 May 2025 05:42:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b57LHRpjkOKIEbTkXRPDrjH/Q/UhLfIwdVnWhuZVmQXiqlB+jHjJQRUSI+ZILtd2Z36OvroJSE5UTEX7I7opL29moFNNY1+7XYY+sMaW7xHFkEJ9BrBMz6m/iBQgcc8YvrvXfYwrXsxVOxIhuvRrry5W6W3DW4KpReOdAztQS7DSFxltdfbhrb2d5kgBTb06wWPLhCqjFBorL7gyqtcE1VYExdXfqt9ItVkIFfsq/wrN1QHPxFg6/qPX9EYBSAE/oj1bL2hhP9QrNMZaiRlvbOxUohfwuoGEDNHsFZPObS391wMYd1SxKC8PbZTrg+MTJNfnm4SoTUybz2r5Jg86uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O65VM6f0IQs1i/o2lRWX8RoNfF/0MFl55bjhwDdBb3M=;
 b=TGqmj6J2IN7UHpfjYYR3jfM642A+aZhN7uVztHWD+lSRTTR936VIq07XHqF+ErwSVrm7OVl70xtCtJfB7Si45l9+p7dfPke6yCcaMCxghRzzVRXV/WvyORdrAMCAjEy15R3gwi0IjLOGcweWvGF8T9GjgRZO1xdWDBLAFrsLlr41Y66d/j4mgiBoPXliuiKElVVMP+5Q5cZdD0RPnYEVbizOY6CNTAls7Wt6krQxadYW3aO6NFPrVQY8ppPbWg/PAJQXr+C4WVK5qhsFgDqjL0gDH3rrM7aoIfkQioJbB/tDCp5mufwXJVViYjocA91czm9m0PQqy1p+gwSBw1Q0Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=amd.com smtp.mailfrom=topic.nl; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=topic.nl;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O65VM6f0IQs1i/o2lRWX8RoNfF/0MFl55bjhwDdBb3M=;
 b=lmQBa074ynCjqcu5xN5JIjXwv08TY1F6TNMDXgQ5V4/0UQZIfJ2SL20IZTicOqpsbuV1Z7x/TfDc3Qc8D0yOchWUFhAU3TKJKJoOexR6W9oMYJIqNoGP6/NWeSqGyhmBULdLZkgwUDdRTcIknatFkrm850uABsS9yYFks3V50bsawxqWDRqZI2KrRP2afTmP6CM3Ai6WGS/iZl1qvgH9dfDsiP6+swbrjN1ZGoGg4a4F4Bxlxi4cFBPgeKdmqDocrYw0w1pXJ5S/Czic1Y1IjnO/xHJuz/Nxph0yobV4Q3Lc+PXsvnhTrWADNBTY2ZvJzDtROtC/RiIo7hJlGooPgA==
Received: from DB7PR02CA0027.eurprd02.prod.outlook.com (2603:10a6:10:52::40)
 by AS8PR04MB9112.eurprd04.prod.outlook.com (2603:10a6:20b:44b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 05:42:09 +0000
Received: from DB3PEPF0000885B.eurprd02.prod.outlook.com
 (2603:10a6:10:52:cafe::21) by DB7PR02CA0027.outlook.office365.com
 (2603:10a6:10:52::40) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.21 via Frontend Transport; Wed,
 14 May 2025 05:42:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 DB3PEPF0000885B.mail.protection.outlook.com (10.167.242.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.18 via Frontend Transport; Wed, 14 May 2025 05:42:08 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.109) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 14 May 2025 05:42:07 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by VI1PR04MB7103.eurprd04.prod.outlook.com (2603:10a6:800:123::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 05:42:05 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%6]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 05:42:04 +0000
Message-ID: <c399c68b-ee60-4d54-b901-a40e744f287c@topic.nl>
Date: Wed, 14 May 2025 07:42:04 +0200
User-Agent: Mozilla Thunderbird
From: Mike Looijmans <mike.looijmans@topic.nl>
Subject: Re: [PATCH v2] phy-zynqmp: Postpone getting clock rate until actually
 needed
To: Michal Simek <michal.simek@amd.com>, linux-phy@lists.infradead.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
 "Katakam, Harini" <harini.katakam@amd.com>
CC: Kishon Vijay Abraham I <kishon@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.298e943d-5a80-491d-b36f-77b3b9a86df9@emailsignatures365.codetwo.com>
 <20250428063648.22034-1-mike.looijmans@topic.nl>
 <c71408b5-2ead-4408-83b3-dad30f153d2d@amd.com>
Content-Language: nl, en-US
Organization: TOPIC
In-Reply-To: <c71408b5-2ead-4408-83b3-dad30f153d2d@amd.com>
X-ClientProxiedBy: AM0PR01CA0171.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::40) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: AS8PR04MB8644:EE_|VI1PR04MB7103:EE_|DB3PEPF0000885B:EE_|AS8PR04MB9112:EE_
X-MS-Office365-Filtering-Correlation-Id: bfe200e6-0ed7-4eec-b8b5-08dd92aa1136
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?eVY4WW5pM2piNTRyWTFqaHgvK05CYmZ2bmNJelRna0MwaE04dnFPU2V4cDlI?=
 =?utf-8?B?bmVrdGJadUlvUnBXckl2MmtySTJmbWQ2cXU1MDYwckRKaVk5U0dhdTBzelgz?=
 =?utf-8?B?WXN5SncvV0xEWXRKSy9KYWROZCtqbWl3UTFmaHhuRzVNVUZIQms5Y2J1V0p0?=
 =?utf-8?B?VnVzVis3NFpSdnJnQ2UzT3NNaXNHbU1aSURRenZOUmtJeXJwMGE0c0doQ0xF?=
 =?utf-8?B?MlJTZUl2cE90ZVpUdk1XdTR1WnM0TXQyK2h0UXBiU0xmTmp6MDgrbXBpMXBQ?=
 =?utf-8?B?VmNCK0pNU21odGJJVWZOUEE3WEdhK0dDNlpTVHhGNktQOVBZZlZtRDFyRko1?=
 =?utf-8?B?NlZvcTl6bWlQd0ZxSnBwNklRczZkRGtwbTFMbXF1eUpqNmJKc1RDYTVXNGc0?=
 =?utf-8?B?Ump4M0RGc1JjVGRrQ09ia1BNdEZsYVd0NjdYajkrN0w4dGRyT3ZkUEhuaXR4?=
 =?utf-8?B?cWhFVEVZaWhFak53eEpjZlBHUytpQkpwVWFPakVTSE5uYTBnMVE2UjJsNnpS?=
 =?utf-8?B?RXdiUjdDTS9TN1cwdHM4SEhuOTVxRE5mNHFFRlhXTlp6TkViM2pJY0FLZVNT?=
 =?utf-8?B?NGNBV1lVYitzeHJzYzdQTTFmaGVxd29XQ2FBQi8rcE5xemlYQm9Ibm1nR25r?=
 =?utf-8?B?bUQrYlBGbC9IUkdnc1BmNGdkZzV6ang3eXUreTNNckF5L1dQdFZkcXRyQ0tQ?=
 =?utf-8?B?MmxDRnhWVElNaVlobnBoc0I3ZDN5NXMrbS8wY01VOTZhWDdPWXRXQm9JVDBZ?=
 =?utf-8?B?M3pVK2gySzVjM25sTGRac0poZm12UW5YWWNMc05WZ3dhSFpaNHFNSDYwQVph?=
 =?utf-8?B?M0R3RUVsMDE0cVJETDBYeVNKSjZpZDlZWit5aHg2cU90YjZQd0NKSUs0Sm56?=
 =?utf-8?B?Nmh5M0JtcnJYV3hDdXdRM1dEc3pRY0hZeHRLdlNIVWRsM1E4VDlhWDZvbGcw?=
 =?utf-8?B?VFZFMmZLMytBUWNRNjBZZXlyY05OVXNNRkdBRnU4N0JRcE9TVFRjT051Ylk5?=
 =?utf-8?B?M08yMHBVNDhnVnpnZVlhZForcW5HVHA3WUwrS3JOK1lCMWE1N0dLMHphakt5?=
 =?utf-8?B?eEFUNXZqNGVQU0lrenhzL25LV2RLVklwL2hCVnZSbXJoQm1MOXlTYlNQdUIy?=
 =?utf-8?B?Ymk2WndlT0dpalJkSk1aNERtYVYwd2EyNzFZeHlyZTRWZjBwQURNNUNJd1p5?=
 =?utf-8?B?azRlSUd0TEJHeDdRT2wxYmpXdDVRdGhPLytmaXJCTGRiQXByYk43aGpFN2Z3?=
 =?utf-8?B?emErYUhGMmlEMUNpT3pneUw4ZnZFczZTYjI0d2JxWjRQWHhZelMrWDJnaHN5?=
 =?utf-8?B?b1BrUmhDeVAvU0FNcE5Jb1B5Vldvcm9BT004czhqVnJIN0UvWVowRmVlQkJJ?=
 =?utf-8?B?MFRjdlN2VFVyK2I4SFpIcDhZMlQ5VXg4aXgxdjd2bjdGcFZnN2pITmFwVC9z?=
 =?utf-8?B?TEZsRk5QK1F0R216MSsrV1IzQzlYNGpDWkpwb25zdit3a0dUdTBFeFhHcEUx?=
 =?utf-8?B?Y2Y0QStsdWw2M1VjbkNvRlVSZW1aR1h4Z3E1NGsvMi9kMGxCQzZwWW1uVUZC?=
 =?utf-8?B?QllkclFpRGRoNHYxSFI2TmhXWHl4TnRBcHN6ME5YRGNKTUhYWk1IZDE0aGF3?=
 =?utf-8?B?MUVIK0RmMk53bWdqWmludlJPTXlUZ3VlS1JCNjhKSGNSQUNnVU1WRXhlb3RE?=
 =?utf-8?B?Qzh0SWVxRG45OWhUdEd6dHFDeGxHaXgzdkkzQzhqcmhKbmcvcXUvOVFUU0U4?=
 =?utf-8?B?YjNlanhPSThaVDRSY1crYUJBZmp1aXVQbVpLNWthRnByeTcwYk5sVStVa1FK?=
 =?utf-8?B?QXdkMnFZa3IyK01mTENaZGZ6TmllUnB5SS9ERFAxM2VTZG9Obms4cGFIdVhW?=
 =?utf-8?B?bkFKZDl2anZxdU1xQ2p2SDN0elFLZ1dQaExrVjhPaXMxcUVLSU1LaEk0RjV4?=
 =?utf-8?Q?FzYIRa1r/hU=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7103
X-CodeTwo-MessageID: be8c07b2-7d09-4270-b1c9-4981b8bf0a58.20250514054207@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB3PEPF0000885B.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 74ef8924-7ce3-4504-ca62-08dd92aa0eba
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|35042699022|1800799024|14060799003|82310400026|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHpVWUc4dGJmZEN2K3RKbTlYWlhLSTNHZHRZcDZvL0taTlJnTHd6MUlYZ1cy?=
 =?utf-8?B?ZXg1bVN3VDhGOXlsNVdiUmJFMnM5YWZnRjVHRGowU3p0ckpKdkhDRnlBMDFl?=
 =?utf-8?B?MWVZTlpyd0JlbXoySFFKQXdlVzBzOFVzVVdjRUZ4d2JGc3BjdTNwRGc4NmdM?=
 =?utf-8?B?cUx4K0JxNUZCQUh6Q1F6WEZkQmdheG9yak1uQkdFcTErbzhsTk1OUDVXTVg0?=
 =?utf-8?B?R3JyKytybWlmMlBXM2ZoQ3YwVFBUc1VvSFEzNGpZZzhBZTR4eWVmS1JPSjFx?=
 =?utf-8?B?VThRaE9XTzJVakhPMXJWQTBSY1RPQVc0dTZHZEFjajNjam5Ud3ZJeTkxUHo5?=
 =?utf-8?B?elo4cG0zb2F0U3ZCS3YrR2hUTDFvdzV3aXRpT0kzZWNSMlQ0UjViRVRHZUNW?=
 =?utf-8?B?a1J3TTBMTnp6L0FCaTJzdWJSZm9semlONDZYalZkdU8wZ3VEM0krL1MzUkxl?=
 =?utf-8?B?UitCdmRCVzdUZ05vUGZDYVc1UzlzMy9JNGRocGh4Yk51TC9ZeHpBV3JET1FI?=
 =?utf-8?B?WU4zRVFJY0tSOUFTbUY1TjNFbXcwcnhyV2hrOERxU1Uvd2YrZ29tdnFqR2Qx?=
 =?utf-8?B?ODVsVFhJSURzejlka01YVUNyUWE0cVhIVm1kK2RwdFFkblVOREpxWWtYV01u?=
 =?utf-8?B?TGFQTDJFb2tqRWxvb1dla05qYU1ZWDFGZm9HL2hVZGtmUjI3QW1Ja2NZMWxC?=
 =?utf-8?B?bzAyNUZsQnBLTys4OWllUzB3Z1Q4QVZYSitkWEpIWnBTR1Y3alQ4czdSQlo2?=
 =?utf-8?B?cGZkQjJaVFFmcDNOUXQ0a3dxZXk3a1poakE4bThjT0xhZG1rWVNsb0FXUkdw?=
 =?utf-8?B?V0dWZ2R0aEdSeVhFcGFqbE5MSWgvcEVWM2crbzhSTERIWitDZ3JhWGViMlRw?=
 =?utf-8?B?TFpiclBjcjN4TXQyU2FJWXc0RE5xYU5Bc1FXbjBRWXRMOTVGZFhFTEFxTDN5?=
 =?utf-8?B?YmZOcW1CWWhMV2JnNkR6Skh4Z1ZSVjZFTTA1ZTFFZXJUSEFrT2pWQU16a2cx?=
 =?utf-8?B?NUIvVmhRUkNpOEx4aTZJMWVxSWJ6R0tXQVhQcWJWeUQwMVZJUFVUYVR0UzdV?=
 =?utf-8?B?K05TSE1KWHJQY0xEN0VtQ0I4WlBZTVdMeVIwSGVuNWJXbVBHNUhDaGN3Zk9y?=
 =?utf-8?B?YzdpTmdtdnRESWNwNnlQYlMzbmt0Mlk1NnlyOUxPTVR6OURTQm02UUVZeFZT?=
 =?utf-8?B?TWdHUzJZb01QOWtBdUtKUHFIRjE0NnM0MUhISHp4TkpEanJjTEkzRWVlbDYy?=
 =?utf-8?B?K3FVTXAzN1ZDYUoxSHVkVnhJdi9xcjJPcUNkeSsyUFhmTW1ZaXB6cWhHd3JJ?=
 =?utf-8?B?S0RncC9hOFhpYUI4VGZQQlpORVU0cFhCbVlLcVFKc2xqUDk2djBFL1djYzJv?=
 =?utf-8?B?ZW5ZdlJnRFhnbDhIY3V5cDl3cFdBUHBCeWlvMG1wYTNwMCtxVCtTRTQ3amhJ?=
 =?utf-8?B?dXpha1FPZEpjajE1TGZjd0VDUE9JWkR3eHNxSkViblJmVU5GYWVLdktJK2lG?=
 =?utf-8?B?U2NmREZGb2RCZWk2MVJDdTNsUzc2Uyt1eE1wckd2TzlqTFh2dFp3bWdFbXNZ?=
 =?utf-8?B?VkhTNDBFQ2xFZkxEOTR6eWpPcXRFdmVFT3JvdkpBbitXVnd4Y1dvOHRTYWdG?=
 =?utf-8?B?TzhMTWh3RlB3cWZUam51ZVl0blhaZGM4VitDQW1TTkZMbmI2TWV4RnpLN2V6?=
 =?utf-8?B?SDhyek1ycmtKZGlTTTRjdStOc0p6NnhSRjV2aHU3UG5kZ2hQQjdxakg4MnJZ?=
 =?utf-8?B?bzhObWpxT1dEUXdxRDFuWE8yR1NZZzc1UjVYR2MwdkJhNWdIODUyVkIzRHZH?=
 =?utf-8?B?VkY2dzFDc1JxQk51VmhJNFoxYktNMGRKSUp2YmxOZXpXQ2Qxajh0R1laSy9M?=
 =?utf-8?B?N0RLREVoRHBpSDJCYVFBOFlJNkZHNTh0cU1hN1VmZUJXbGtFeTkvUWlsU0VJ?=
 =?utf-8?B?U1Z5eU1sYVllNmhsZVhMQjVRUjIxTU92MjN4UGswa25zK05zeURTdE5xYUgr?=
 =?utf-8?B?bm4vQWZSOVM0R1N2NEtaeEt2RjlsK04wTzhTdktEbUpxYThBZXNxbWRCNTBa?=
 =?utf-8?Q?gtyDmq?=
X-Forefront-Antispam-Report: CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(1800799024)(14060799003)(82310400026)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 05:42:08.5765
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe200e6-0ed7-4eec-b8b5-08dd92aa1136
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: DB3PEPF0000885B.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_224221_854874_56DB9B81 
X-CRM114-Status: GOOD (  17.63  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjktMDQtMjAyNSAxMDozNiwgTWljaGFsIFNpbWVrIHdyb3RlOgo+ICsgUmFkaGV5LCBIYXJp
bmkKPgo+IE9uIDQvMjgvMjUgMDg6MzUsIE1pa2UgTG9vaWptYW5zIHdyb3RlOgo+PiBBdCBwcm9i
ZSB0aW1lIHRoZSBkcml2ZXIgd291bGQgZGlzcGxheSB0aGUgZm9sbG93aW5nIGVycm9yIGFuZCBh
Ym9ydDoKPj4gwqDCoCB4aWxpbngtcHNndHIgZmQ0MDAwMDAucGh5OiBJbnZhbGlkIHJhdGUgMCBm
b3IgcmVmZXJlbmNlIGNsb2NrIDAKPj4KPj4gQXQgcHJvYmUgdGltZSwgdGhlIGFzc29jaWF0ZWQg
R1RSIGRyaXZlciAoZS5nLiBTQVRBIG9yIFBDSWUpIGhhc24ndAo+PiBpbml0aWFsaXplZCB0aGUg
Y2xvY2sgeWV0LCBzbyBjbGtfZ2V0X3JhdGUoKSBsaWtlbHkgcmV0dXJucyAwIGlmIHRoZSBjbG9j
awo+PiBpcyBwcm9ncmFtbWFibGUuIFNvIHRoaXMgZHJpdmVyIG9ubHkgd29ya3MgaWYgdGhlIGNs
b2NrIGlzIGZpeGVkLgo+Pgo+PiBUaGUgUEhZIGRyaXZlciBkb2Vzbid0IG5lZWQgdG8ga25vdyB0
aGUgY2xvY2sgZnJlcXVlbmN5IGF0IHByb2JlIHlldCwgc28KPj4gd2FpdCB1bnRpbCB0aGUgYXNz
b2NpYXRlZCBkcml2ZXIgaW5pdGlhbGl6ZXMgdGhlIGxhbmUgYmVmb3JlIHJlcXVlc3RpbmcgdGhl
Cj4+IGNsb2NrIHJhdGUgc2V0dGluZy4KPj4KPj4gSW4gYWRkaXRpb24gdG8gYWxsb3dpbmcgdGhl
IGRyaXZlciB0byBiZSB1c2VkIHdpdGggcHJvZ3JhbW1hYmxlIGNsb2NrcywKPj4gdGhpcyBhbHNv
IHJlZHVjZXMgdGhlIGRyaXZlcidzIHJ1bnRpbWUgbWVtb3J5IGZvb3RwcmludCBieSByZW1vdmlu
ZyBhbgo+PiBhcnJheSBvZiBwb2ludGVycyBmcm9tIHN0cnVjdCB4cHNndHJfcGh5Lgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBNaWtlIExvb2lqbWFucyA8bWlrZS5sb29pam1hbnNAdG9waWMubmw+Cj4+
IC0tLQo+Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiBFeHBsYWluIHRoZSBpc3N1ZSBhbmQgdGhlIGZp
eCBiZXR0ZXIgaW4gdGhlIGNvbW1pdCB0ZXh0Cj4+IFByb3BhZ2F0ZSBlcnJvcnMgKGFzIHJlcG9y
dGVkIGJ5IExhdXJlbnQgUGluY2hhcnQpCj4+Cj4+IMKgIGRyaXZlcnMvcGh5L3hpbGlueC9waHkt
enlucW1wLmMgfCA3MCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBm
aWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMvcGh5L3hp
bGlueC9waHktenlucW1wLmMKPj4gaW5kZXggMDVhNGE1OWY3YzQwLi5mZTZiNDkyNWQxNjYgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKPj4gKysrIGIvZHJp
dmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwo+PiBAQCAtMjIyLDcgKzIyMiw2IEBAIHN0cnVj
dCB4cHNndHJfcGh5IHsKPj4gwqDCoCAqIEBzaW91OiBzaW91IGJhc2UgYWRkcmVzcwo+PiDCoMKg
ICogQGd0cl9tdXRleDogbXV0ZXggZm9yIGxvY2tpbmcKPj4gwqDCoCAqIEBwaHlzOiBQSFkgbGFu
ZXMKPj4gLSAqIEByZWZjbGtfc3Njczogc3ByZWFkIHNwZWN0cnVtIHNldHRpbmdzIGZvciB0aGUg
cmVmZXJlbmNlIGNsb2Nrcwo+PiDCoMKgICogQGNsazogcmVmZXJlbmNlIGNsb2Nrcwo+PiDCoMKg
ICogQHR4X3Rlcm1fZml4OiBmaXggZm9yIEdUIGlzc3VlCj4+IMKgwqAgKiBAc2F2ZWRfaWNtX2Nm
ZzA6IHN0b3JlZCB2YWx1ZSBvZiBJQ00gQ0ZHMCByZWdpc3Rlcgo+PiBAQCAtMjM1LDcgKzIzNCw2
IEBAIHN0cnVjdCB4cHNndHJfZGV2IHsKPj4gwqDCoMKgwqDCoCB2b2lkIF9faW9tZW0gKnNpb3U7
Cj4+IMKgwqDCoMKgwqAgc3RydWN0IG11dGV4IGd0cl9tdXRleDsgLyogbXV0ZXggZm9yIGxvY2tp
bmcgKi8KPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgeHBzZ3RyX3BoeSBwaHlzW05VTV9MQU5FU107Cj4+
IC3CoMKgwqAgY29uc3Qgc3RydWN0IHhwc2d0cl9zc2MgKnJlZmNsa19zc2NzW05VTV9MQU5FU107
Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGNsayAqY2xrW05VTV9MQU5FU107Cj4+IMKgwqDCoMKgwqAg
Ym9vbCB0eF90ZXJtX2ZpeDsKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2F2ZWRfaWNtX2Nm
ZzA7Cj4+IEBAIC0zOTgsMTMgKzM5Niw0MCBAQCBzdGF0aWMgaW50IHhwc2d0cl93YWl0X3BsbF9s
b2NrKHN0cnVjdCBwaHkgKnBoeSkKPj4gwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiDCoCB9Cj4+
IMKgICsvKiBHZXQgdGhlIHNwcmVhZCBzcGVjdHJ1bSAoU1NDKSBzZXR0aW5ncyBmb3IgdGhlIHJl
ZmVyZW5jZSBjbG9jayByYXRlICovCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHhwc2d0cl9zc2Mg
Knhwc2d0cl9maW5kX3NzY3Moc3RydWN0IHhwc2d0cl9waHkgKmd0cl9waHkpCj4+ICt7Cj4+ICvC
oMKgwqAgdW5zaWduZWQgbG9uZyByYXRlOwo+PiArwqDCoMKgIHN0cnVjdCBjbGsgKmNsazsKPj4g
K8KgwqDCoCB1bnNpZ25lZCBpbnQgaTsKPj4gKwo+PiArwqDCoMKgIGNsayA9IGd0cl9waHktPmRl
di0+Y2xrW2d0cl9waHktPnJlZmNsa107Cj4+ICvCoMKgwqAgcmF0ZSA9IGNsa19nZXRfcmF0ZShj
bGspOwo+PiArCj4+ICvCoMKgwqAgZm9yIChpID0gMCA7IGkgPCBBUlJBWV9TSVpFKHNzY19sb29r
dXApOyBpKyspIHsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qIEFsbG93IGFuIGVycm9yIG9mIDEwMCBw
cG0gKi8KPj4gK8KgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZXJyb3IgPSBzc2NfbG9va3Vw
W2ldLnJlZmNsa19yYXRlIC8gMTAwMDA7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChhYnMo
cmF0ZSAtIHNzY19sb29rdXBbaV0ucmVmY2xrX3JhdGUpIDwgZXJyb3IpCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiAmc3NjX2xvb2t1cFtpXTsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4g
K8KgwqDCoCBkZXZfZXJyKGd0cl9waHktPmRldi0+ZGV2LCAiSW52YWxpZCByYXRlICVsdSBmb3Ig
cmVmZXJlbmNlIGNsb2NrICV1XG4iLAo+PiArwqDCoMKgwqDCoMKgwqAgcmF0ZSwgZ3RyX3BoeS0+
cmVmY2xrKTsKPj4gKwo+PiArwqDCoMKgIHJldHVybiBOVUxMOwo+PiArfQo+PiArCj4+IMKgIC8q
IENvbmZpZ3VyZSBQTEwgYW5kIHNwcmVhZC1zcHJlY3RydW0gY2xvY2suICovCj4+IC1zdGF0aWMg
dm9pZCB4cHNndHJfY29uZmlndXJlX3BsbChzdHJ1Y3QgeHBzZ3RyX3BoeSAqZ3RyX3BoeSkKPj4g
K3N0YXRpYyBpbnQgeHBzZ3RyX2NvbmZpZ3VyZV9wbGwoc3RydWN0IHhwc2d0cl9waHkgKmd0cl9w
aHkpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgeHBzZ3RyX3NzYyAqc3NjOwo+
PiDCoMKgwqDCoMKgIHUzMiBzdGVwX3NpemU7Cj4+IMKgIC3CoMKgwqAgc3NjID0gZ3RyX3BoeS0+
ZGV2LT5yZWZjbGtfc3Njc1tndHJfcGh5LT5yZWZjbGtdOwo+PiArwqDCoMKgIHNzYyA9IHhwc2d0
cl9maW5kX3NzY3MoZ3RyX3BoeSk7Cj4+ICvCoMKgwqAgaWYgKCFzc2MpCj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gKwo+PiDCoMKgwqDCoMKgIHN0ZXBfc2l6ZSA9IHNzYy0+
c3RlcF9zaXplOwo+PiDCoCDCoMKgwqDCoMKgIHhwc2d0cl9jbHJfc2V0KGd0cl9waHktPmRldiwg
UExMX1JFRl9TRUwoZ3RyX3BoeS0+bGFuZSksCj4+IEBAIC00NDYsNiArNDcxLDggQEAgc3RhdGlj
IHZvaWQgeHBzZ3RyX2NvbmZpZ3VyZV9wbGwoc3RydWN0IHhwc2d0cl9waHkgCj4+ICpndHJfcGh5
KQo+PiDCoMKgwqDCoMKgIHhwc2d0cl9jbHJfc2V0X3BoeShndHJfcGh5LCBMMF9QTExfU1NfU1RF
UF9TSVpFXzNfTVNCLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTVEVQX1NJ
WkVfM19NQVNLLCAoc3RlcF9zaXplICYgU1RFUF9TSVpFXzNfTUFTSykgfAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGT1JDRV9TVEVQX1NJWkUgfCBGT1JDRV9TVEVQUyk7Cj4+
ICsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+PiDCoCDCoCAvKiBDb25maWd1cmUgdGhl
IGxhbmUgcHJvdG9jb2wuICovCj4+IEBAIC02NTgsNyArNjg1LDEwIEBAIHN0YXRpYyBpbnQgeHBz
Z3RyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPj4gwqDCoMKgwqDCoMKgICogQ29uZmlndXJl
IHRoZSBQTEwsIHRoZSBsYW5lIHByb3RvY29sLCBhbmQgcGVyZm9ybSBwcm90b2NvbC1zcGVjaWZp
Ywo+PiDCoMKgwqDCoMKgwqAgKiBpbml0aWFsaXphdGlvbi4KPj4gwqDCoMKgwqDCoMKgICovCj4+
IC3CoMKgwqAgeHBzZ3RyX2NvbmZpZ3VyZV9wbGwoZ3RyX3BoeSk7Cj4+ICvCoMKgwqAgcmV0ID0g
eHBzZ3RyX2NvbmZpZ3VyZV9wbGwoZ3RyX3BoeSk7Cj4+ICvCoMKgwqAgaWYgKHJldCkKPj4gK8Kg
wqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiArCj4+IMKgwqDCoMKgwqAgeHBzZ3RyX2xhbmVfc2V0
X3Byb3RvY29sKGd0cl9waHkpOwo+PiDCoCDCoMKgwqDCoMKgIHN3aXRjaCAoZ3RyX3BoeS0+cHJv
dG9jb2wpIHsKPj4gQEAgLTgyMyw4ICs4NTMsNyBAQCBzdGF0aWMgc3RydWN0IHBoeSAqeHBzZ3Ry
X3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIMKgwqDCoMKg
wqAgcmVmY2xrID0gYXJncy0+YXJnc1szXTsKPj4gLcKgwqDCoCBpZiAocmVmY2xrID49IEFSUkFZ
X1NJWkUoZ3RyX2Rldi0+cmVmY2xrX3NzY3MpIHx8Cj4+IC3CoMKgwqDCoMKgwqDCoCAhZ3RyX2Rl
di0+cmVmY2xrX3NzY3NbcmVmY2xrXSkgewo+PiArwqDCoMKgIGlmIChyZWZjbGsgPj0gQVJSQVlf
U0laRShndHJfZGV2LT5jbGspKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwg
IkludmFsaWQgcmVmZXJlbmNlIGNsb2NrIG51bWJlciAldVxuIiwgcmVmY2xrKTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+PiDCoMKgwqDCoMKgIH0KPj4g
QEAgLTkyOCw5ICs5NTcsNyBAQCBzdGF0aWMgaW50IHhwc2d0cl9nZXRfcmVmX2Nsb2NrcyhzdHJ1
Y3QgeHBzZ3RyX2RldiAKPj4gKmd0cl9kZXYpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCB1bnNpZ25l
ZCBpbnQgcmVmY2xrOwo+PiDCoCAtwqDCoMKgIGZvciAocmVmY2xrID0gMDsgcmVmY2xrIDwgQVJS
QVlfU0laRShndHJfZGV2LT5yZWZjbGtfc3Njcyk7ICsrcmVmY2xrKSB7Cj4+IC3CoMKgwqDCoMKg
wqDCoCB1bnNpZ25lZCBsb25nIHJhdGU7Cj4+IC3CoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQg
aTsKPj4gK8KgwqDCoCBmb3IgKHJlZmNsayA9IDA7IHJlZmNsayA8IEFSUkFZX1NJWkUoZ3RyX2Rl
di0+Y2xrKTsgKytyZWZjbGspIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBjbGsgKmNs
azsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgbmFtZVs4XTsKPj4gwqAgQEAgLTk0NiwyOSAr
OTczLDYgQEAgc3RhdGljIGludCB4cHNndHJfZ2V0X3JlZl9jbG9ja3Moc3RydWN0IHhwc2d0cl9k
ZXYgCj4+ICpndHJfZGV2KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsK
Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGd0cl9kZXYtPmNsa1tyZWZjbGtdID0gY2xrOwo+PiAt
Cj4+IC3CoMKgwqDCoMKgwqDCoCAvKgo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIEdldCB0aGUgc3By
ZWFkIHNwZWN0cnVtIChTU0MpIHNldHRpbmdzIGZvciB0aGUgcmVmZXJlbmNlCj4+IC3CoMKgwqDC
oMKgwqDCoMKgICogY2xvY2sgcmF0ZS4KPj4gLcKgwqDCoMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDC
oMKgwqDCoMKgIHJhdGUgPSBjbGtfZ2V0X3JhdGUoY2xrKTsKPj4gLQo+PiAtwqDCoMKgwqDCoMKg
wqAgZm9yIChpID0gMCA7IGkgPCBBUlJBWV9TSVpFKHNzY19sb29rdXApOyBpKyspIHsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogQWxsb3cgYW4gZXJyb3Igb2YgMTAwIHBwbSAqLwo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGVycm9yID0gc3NjX2xvb2t1cFtp
XS5yZWZjbGtfcmF0ZSAvIDEwMDAwOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChhYnMocmF0ZSAtIHNzY19sb29rdXBbaV0ucmVmY2xrX3JhdGUpIDwgZXJyb3IpIHsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBndHJfZGV2LT5yZWZjbGtfc3Njc1tyZWZjbGtd
ID0gJnNzY19sb29rdXBbaV07Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJl
YWs7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4g
LQo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKGkgPT0gQVJSQVlfU0laRShzc2NfbG9va3VwKSkgewo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGd0cl9kZXYtPmRldiwKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiSW52YWxpZCByYXRlICVsdSBmb3IgcmVmZXJlbmNl
IGNsb2NrICV1XG4iLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJhdGUsIHJl
ZmNsayk7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiAtwqDC
oMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgwqDCoMKgwqDCoCByZXR1cm4gMDsK
Pgo+IFNvcnJ5IGZvciBkZWxheS4KPiBSYWRoZXkvSGFyaW5pOiBQbGVhc2UgdGVzdCB0aGlzIGJ1
dCBJIGhhdmUgcmVhZCB0aGF0IGNvZGUgYW5kIGNoYW5nZXMgbG9va3MgCj4gZ29vZCB0byBtZS4K
Pgo+IEFja2VkLWJ5OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0BhbWQuY29tPgo+Cj4gVGhh
bmtzLAo+IE1pY2hhbAo+CkFueSBmdXJ0aGVyIGNvbW1lbnRzPyBBbnl0aGluZyBJIG5lZWQgdG8g
ZG8/CgpNLgoKCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
