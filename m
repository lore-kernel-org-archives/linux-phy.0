Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D545FCCF9FC
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRiTXfoeSMz/PKiA5QgJWY8jd1ZB4p4+y6jytoAuaC0=; b=ettRfJ0znSfzrr
	lUcKoY4z6QV+Ja5zLzNliOAgZgPbhkfX0JxjRgj8TCBfsNdpx72tcyZYN0LZV3bYivcDTvyRhub1Q
	1E4rFzOnX+ka1AZc9yTGDJXeD7fbiN4rYX65Xh2TX7GO8UxTVxyikas8ukIr5vutP4sFWfzJbFARU
	0KkKig5JTazAhJvgQlj1BfqsWP7ZHpMaIO0zn+7TiiSeacTIa20o2jbSIid9ovthN5Js4mZssZEM8
	QasXoMB/6cmqT1rFd1pD9GXqoAw3Qazznm+139DFgKvF6phUXzedeH7V+vJfXSXhX5TCqXYV+stAh
	DiNf4m7AxoR7RX2FCRww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vERuJ-000000048bo-1kA4;
	Thu, 30 Oct 2025 12:37:35 +0000
Received: from mail-northeuropeazon11020098.outbound.protection.outlook.com ([52.101.84.98] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vERuG-000000048bM-282g
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 12:37:33 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=JVyPtOTnajhlvdVjWUxdiWXVxoRsTIRYOcPD0XEd6YQV9uFHsIQ/UEqfI/RKif1TBLgv4HxpoQ4pms6t9Y2vJ6140Gutm5clT7j09/SZ3LnY+ddxrqZCYBG5RUVY/A5Z8g728qyFqDKbW+a44pxpcd/luCTfTo0caPO10cwLb1uaQi6G+YpzPOjkVH1y1Ccc9TQEHx86FRfhWDWZykKFSjBchTiBrHZxhaNPvGxyZAsRWL0t1Kj+BDXTxwYZAjWJ+P6JFRAW99s9Tx+s0wEy7l0urClc4WXZYPIfoFONcPjRE7UiIGH6LJsxNlyI3t2uunqjj1Kdp3ZDFFw5Lbu4qg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bkC0ylAHLpKEgDsS9X4kTWcK6p4fi/E6V6JIQ7pc5SM=;
 b=gVSKBL03RVZrT/iUmNdH4avghjz7zUdTjTAaxLLe8sxrOI/WU2fP782FyJyBEtEFVm8MsXgf5PvRgJzv2TZtmgh/GVCoAHakIzTuF395+kvoD8GK7uZAygD/h7DOzuiokDnEn/0zgcYtDuGSen/eA6t6nsxGPnGbj9Z4TYVDfA0+Izvp7oVS34jDwVfmheGjBFsCOdvyTsJEFJTwOmwxa7VQ5f/jfLkqbMhY0Jtj/O8my0nnwvMgpbqU+/XweMUL90oOQIdXUmUfYvTEXaFL8bhqZcRhXKmfsZ4RMLl7+Yc9vDFaFqX9IduL3ky7f46XO9GtK/mqMTRFkDCIYiIi8w==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=gmail.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bkC0ylAHLpKEgDsS9X4kTWcK6p4fi/E6V6JIQ7pc5SM=;
 b=Jpx2WEEz9c2SaJAsRgQJsK8N0l2M1WkEFlIIIJ2jD5oN8DUuN6mitzRjWzK8675maygM6qR8XitlbMIdiL4SOLHBTJGUSBj2iq75SHQQO36PCEDJWCB5TPz7iNPPfP5RNFEf2ZpAfF5o59H3rCXVVNxTwTpfaFiy1umJ9Af7L1Y=
Received: from AM0PR02CA0200.eurprd02.prod.outlook.com (2603:10a6:20b:28f::7)
 by DBBPR04MB7900.eurprd04.prod.outlook.com (2603:10a6:10:1e8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 12:37:18 +0000
Received: from AM2PEPF0001C712.eurprd05.prod.outlook.com
 (2603:10a6:20b:28f:cafe::81) by AM0PR02CA0200.outlook.office365.com
 (2603:10a6:20b:28f::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9253.17 via Frontend Transport; Thu,
 30 Oct 2025 12:37:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM2PEPF0001C712.mail.protection.outlook.com (10.167.16.182) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.10
 via Frontend Transport; Thu, 30 Oct 2025 12:37:18 +0000
Received: from emails-8145897-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-148.eu-west-1.compute.internal [10.20.6.148])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id CF387806EB;
	Thu, 30 Oct 2025 12:37:17 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com; arc=pass;
  dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1761827837; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=bkC0ylAHLpKEgDsS9X4kTWcK6p4fi/E6V6JIQ7pc5SM=;
 b=f97MvQwULufg9lhnSaN1nUNP7y4MFwiYoRDbZD7yFlLkucO9aSPXxJZPBdwNQTOqywCzd
 //KrVfi/2b9ZdGcLmsrjLUEity8tduEY9wc/Sg/lUTd6YDJ2hdEgrCWjvW0cFHRan+8KfER
 wekfTAyeLDiqEWZdJTYtLybYbWLusKA=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1761827837;
 b=Xy6pxQfXF4Mduy9Nhc6VK3NZxx5QcykOGHU4MBclqF76My2IAheteJGheiVF462tS//+7
 fXjFz/eAEZYzfVAbjE+De9sCTUTrGzEqT7S2p8WGTt3Vn0fo3uneSZWMFozB8ezDEXKJJvT
 y6+F1lWYHjTzmQ4VQFJC36zxlQdOUBg=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DKz6JosdpKL5lewjBY/DtX12Shu0G+wMGRmgjQiWJHTYCZS8EYuaWACioqwEAvktSliW5zJoRolMt5hbBO99UOg6Z1Ld2HePQqGclaW2jjfYEGWBX+IQZGFMj39f5SECxmuzRB0V/rcfE+95OFsKm4DYKmp1OgrZbTSKvabVKcBSx2XxCznFSSVudN+LeSZCzCwLe9O8CWwvfPOlYXHYK6vCKPXRnWUqkPCq/Tq4wxlNjr5P38bLqv7hsq+HkRFBQO7NnK6vnwtEXWYs4CNwNVTS8/XWHQwT7LLyFpdWdtBIDq6osbqCZCp8+NaXexse5gtSkDS1RaBG0Nrpzux9YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bkC0ylAHLpKEgDsS9X4kTWcK6p4fi/E6V6JIQ7pc5SM=;
 b=sb9tcPJ8I4r7/XR7S2C+keCbrjK9airUhAxShcPITXlfc+EWG+QxQwTWN5TBlwNY/6//QYQNUDDp1YyIS8FxFbsx2nLoVADeKNzwKV+mZ2dsL3TR9tbac9B4e77RNB+E7AwX6zTGITOuzUkDSVITAwzJQgpvnnozMHXd8UqV4vlhDSJeGcCkPvtBD/LpVJ88TRvAfvNLXRk7jAZJd384fiWns/7e/MaRedu5mcidBywIg9D9PrOcExd8r/LCw5rR1Nx7k9PCqvq36IBAAvWz97biiw22mRGFITIJn8G0KiFp2l0i0s47zGEcGGGdVMWPXdB+7m47xTkLRg53UlQeSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bkC0ylAHLpKEgDsS9X4kTWcK6p4fi/E6V6JIQ7pc5SM=;
 b=Jpx2WEEz9c2SaJAsRgQJsK8N0l2M1WkEFlIIIJ2jD5oN8DUuN6mitzRjWzK8675maygM6qR8XitlbMIdiL4SOLHBTJGUSBj2iq75SHQQO36PCEDJWCB5TPz7iNPPfP5RNFEf2ZpAfF5o59H3rCXVVNxTwTpfaFiy1umJ9Af7L1Y=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by GV4PR04MB11332.eurprd04.prod.outlook.com (2603:10a6:150:29a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Thu, 30 Oct
 2025 12:37:04 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 12:37:04 +0000
From: Josua Mayer <josua@solid-run.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"advaitdhamorikar@gmail.com" <advaitdhamorikar@gmail.com>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rabeeh Khoury
	<rabeeh@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, Mikhail
 Anikin <mikhail.anikin@solid-run.com>, Jon Nettleton <jon@solid-run.com>
Subject: Re: phy: marvell: phy-mvebu-cp110-comphy: link failure and lockup
 built as module (=M)
Thread-Topic: phy: marvell: phy-mvebu-cp110-comphy: link failure and lockup
 built as module (=M)
Thread-Index: AQHcRa1Mq/U8rZIbYUir4sNYTmDR2bTVQU6AgAKfZQCAAse8AA==
Date: Thu, 30 Oct 2025 12:37:04 +0000
Message-ID: <66e99ee1-b164-4028-813a-4366910d4d0c@solid-run.com>
References: <43918f90-9bcb-4838-9328-8f06a8693681@solid-run.com>
 <e5fd6b91-be1f-4d0d-86c1-9dc1713873d4@lunn.ch>
 <e640f628-f834-42cc-b8cd-b9017cc4f9ce@solid-run.com>
In-Reply-To: <e640f628-f834-42cc-b8cd-b9017cc4f9ce@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|GV4PR04MB11332:EE_|AM2PEPF0001C712:EE_|DBBPR04MB7900:EE_
X-MS-Office365-Filtering-Correlation-Id: 3261ccd7-a101-4403-baf1-08de17b11043
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?TytPQTQzbms3eUd6MTJ3a21iRWlBeStvdkpNeEhYR0dPK2JLR3dpZTVIdWkz?=
 =?utf-8?B?cHVEbzVKNDN2MXA5YU9XRWFoLzZYckpYeWxDWmYzRVEzTXU2Rzh6R0ZhVE0v?=
 =?utf-8?B?bnk3ZkMrTTNjNmZqdVZKUWlBZXlzMnlnaHhoUlg5TTNOM0xLL2JWYlRMM3Fz?=
 =?utf-8?B?T2VUNTErRUtFUS9BZTNqWTVvdGJnYmZxZlU4Z2s1b0F6bm1raXd2WjN4OGhj?=
 =?utf-8?B?bUVHMEUzSHNmYVgrekVSMXNtSlpuS1BKN01HV05hVkxWSWRLY2JkeE42b0I0?=
 =?utf-8?B?QXJxU2E4YU9QZ3gvbmZLRkorRU9RSHJjd1k2K3B1UVNyMzNUTCt2N00vZkxs?=
 =?utf-8?B?QlltbzlCd1NJdk1ieWk2Tzh0ZWExUHdCang0SGNGR2xoQ3hYVStJcVpLOURz?=
 =?utf-8?B?UW1rTm8xTlJ4NmV4TGc4QmIrZE8ySnZMTGNXN3Jzdisrc21aQnJxVGEzUmo2?=
 =?utf-8?B?d2JGdzVrdy9pRHNvMUxIT0FmTDBJWWZoOTBDOWZEN2l1M0dVNmMzZUNqT0Vy?=
 =?utf-8?B?eHJJeThPSlozS00zajhxekJ5bG9NQUxZejRlWUVQY29wR292SkFVOFNWTFlD?=
 =?utf-8?B?NlhSbkZodDIxblg1bU5IaGFsaFo5RDZVL3MxNDh0N3RHbmRhM2hyZDE2bzN2?=
 =?utf-8?B?VGd3TngyRVRiQUF1Rm9YcFk1Z2lQWnI2VldGZlBmWFJRNVhkYWZ2dmdzNVcv?=
 =?utf-8?B?NTFOY2lZUFBCNGc0cnA3VTBnOHpvdkhaS1dLSnludTdRTXg0NVlVTkhyRlNw?=
 =?utf-8?B?a0wxbzJqUUdLODhHUWloTm5KYjVoYTNJTDBMTnVNM2FleEF1K0FhQ3FKcnk2?=
 =?utf-8?B?WW5jak1LM0l6bEVhS3ptMkhVRFg2clcraFJMOWFqa3NnU0sxaHdWd2tZNDAz?=
 =?utf-8?B?aHg5MXU5MGh5aUxLVkYzYW15SGs1UUVvcGRjS29PSUFuN1BDeEdYTTdWNDZH?=
 =?utf-8?B?RkEyWjFTdkE5MlNqNlNNWERXZXNDNHhwVW1QOGdZZFY0bmxGZCtBaFZxaU0w?=
 =?utf-8?B?eXJCTllyUWRMVEUwWmtnNDF4eUlwUEFRWEowbXpRZGVKMHA0a1dIQW9oUzZD?=
 =?utf-8?B?cVBubHAxRXpoV3dSTkZRK24zVnhSOW92T2dUdFVBM2JyRHZNZkc3MytpaHp1?=
 =?utf-8?B?RFA2eUE4SGN5VnpNeUZRRnhPbVZGZWU4eGs1WEdjMDhLRzNKZDlzbXh6NTds?=
 =?utf-8?B?eGs3dzAyeHM5SkJ5NXIvazFNZnU5WnltZ2Juc3R3M3BITmZJeTZGOXFxSEpO?=
 =?utf-8?B?S0VZSndtVUpPYUtGN01qMGlEY3J3cnIrdS90RmYybnRweDNLV0JRUGlGN0dB?=
 =?utf-8?B?a2dKMjFFaGJSMlpEWFZuYW9lSlJiQ0FrSWdQakxkTG5jakRiSDBybURNcys3?=
 =?utf-8?B?VEZjWjF2bmtPOXlaSER1aTE5ZXc3dTk5bmFxL2R2aXRSQ0dMd0x1ajgxMnYv?=
 =?utf-8?B?RmJmdXhWZ0l4QjBHZ2NFK1B6TEk2WFlwakN3Y1AwQlJURmtMS0pxbE1xVGg3?=
 =?utf-8?B?dmRjbktTd0ZRQXdBV3RqNjVzcWFiQ2dUR2FGU1VMRVFRWG9PQXE3U0RmZzlQ?=
 =?utf-8?B?Ym5tYzZiZzhxbUhtb0EzMWRrQ3NiQklEMU5ObkpHOFZ6UmxESEpOZEZaN1R4?=
 =?utf-8?B?bk81VEQvZnJ1dXdpYXQ1bWdoWi9aR3k4YW5OWjQxNFF2bXhKVmJIb1U5dXdw?=
 =?utf-8?B?MHNJRHpxR082bTNoN2prbkhpQzdGL09qYmpOTjlhMHh3T2xCY0ZVN25lcWlZ?=
 =?utf-8?B?eVcrQUN5QTZzUWI1a1RNLzZSWE5pR3RDRU91REFzaE5OYk5GWDduS1pRSGxl?=
 =?utf-8?B?b2lFUU0vQUZzWG1KOC9MSy8wOTdoZHEvRURuNmhTcGlraTVNUVI5ZFdrVktY?=
 =?utf-8?B?dkN0dGpITmFJRnRheEFWQTViLytqL1lwL1dYZVJ2M3l6VUgrZVZkRkQ5Vy9Q?=
 =?utf-8?B?bG0wR09QVUJJak1UYnRYU3F5RCtxTnA1NGxzQmNMd1ZEeE1nWEJndWphUkZ2?=
 =?utf-8?B?MkVoM1RpTWtJSFNLVThVQ054WTFQekRPQTM1VGsrbGRaSk0yRDUzQWRxS1pt?=
 =?utf-8?Q?0TGX9c?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <77A980C83621964B9204180B4EAA94CB@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV4PR04MB11332
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 7c7e4303d9144af7848bf93ea65eebfd:solidrun,office365_emails,sent,inline:d70add46e7d13af37c6404f52540dcfe
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM2PEPF0001C712.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: b27b8882-6da6-4cc4-d8b5-08de17b1082f
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|1800799024|35042699022|36860700013|14060799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkxuT0paQk9kUVY4N2dMaCtWOEc3S2J0Sk5QRU1VRy8vQXRDc3lVVk5nRVBx?=
 =?utf-8?B?VTVzUjBwaE5qdWh2clROdEdQOEdjSEt6MkZMeHB5NDM2cWw0SnBHblVtTCs4?=
 =?utf-8?B?amVFblhCNkNRUlVCQ1Z1QUN3R2tXMEtXTUFMYlRVb0cvTzVhbUFIS2VvMnJw?=
 =?utf-8?B?elByaEFwS0dsdmgvR0xnTDNhQWczRDZGZTl5ZDdSNktqdVBzTlZGSHhVUWE5?=
 =?utf-8?B?R2JTL1NLMWpJNE1ZcDZBRmFVYThLSXZaZDlpa0VpYmVQUVg4YWFwczJ0Uldp?=
 =?utf-8?B?QjRGdVV5b3JMc3JkYWJ3L2trbWJqZWp5U1RjVkovNi82aTNsMURKOHhBaVFv?=
 =?utf-8?B?c0lMS3NaQTdGT1pzaTByZmxXV0VrTHhmeFVMNlZ4czNFR1NwOHlERTczN2d2?=
 =?utf-8?B?ZWpwTU1wcTdmY1NqbnFuTjRhQTdCakpnYXFPVy9tNC9hOUgxMHR1Y2lwN0gw?=
 =?utf-8?B?Y2s0RXdiVnRTY3FWTmxOZS9GU29nR3I2NHR3YUs5eDBISDI2ZFBpbVIxcEc3?=
 =?utf-8?B?SHlWcUZiZ0tQaGpqQ3ZGVEduZDlMU0IzZVpKZmIrRGRlK3JYVnRNbGdsSVNr?=
 =?utf-8?B?VHJNblk3L2Y2WGw3Ti9DeVgwS0Y1L1pnbFUrME5LTlpQdFNUbDlCWkRWN1Nt?=
 =?utf-8?B?TjcxaWdhbHJJSUxmUUlVcVh2cG8xSXpvMUpIWnlOT0RRbGdCS1JtdThrY0tn?=
 =?utf-8?B?aytxQUFvQWRPc3hWSlZ2RGlKUFd5cmRLVHI0TjE3VzR4WFFZaWIwRDJBK1V3?=
 =?utf-8?B?eVBmSjZXY2NONlpDQWxERHB2TkxhT2V2TXdybjRWRTZsL0w3T2JvYnRhMGhl?=
 =?utf-8?B?b1BoL0J2SnFBUEJKNTJncXdtQk5yWnNrVlpqWVlZeFAySC9SYllUODFnWnl4?=
 =?utf-8?B?T0pkelNhalZERTFhaC9sSitDVHUrQ1U0Wk9GbjZiYlVpNmFUMnB6N2lVVi82?=
 =?utf-8?B?NDlCSkdVVmlxc3NtcUdVKzNOU2phd2hmTUlyU1EvVzZ6Z1lxcEdyOW1DK1FF?=
 =?utf-8?B?MnFWQW5CN3Y4YjJZSGRoSFdsVUFnUytRUWdKV21WNEdOeEZ6UlZOWjlhMmZ2?=
 =?utf-8?B?VmRQWUI2Vm5HRCtaUnp4TTBYWjZ3a05zbW5mOXdpZUJ4VWlmaXNZQzlkRWcx?=
 =?utf-8?B?RVJIKzN2U3c1WnJMaVJnSHE1WmpRU3NSbGxpL1c1TERpcmdzV2hEazZNNEg2?=
 =?utf-8?B?bmVkS1UzdU1CeVhoOWNmWGxJcndjM2J1RHVXak8rRjRGblZVamVCamxHMFZY?=
 =?utf-8?B?bGI0R3FGLzl0NW1kNE1IWUNjeUI2eTdueS9mUkpQeC9oOUVjQXdZS0hrWU9Q?=
 =?utf-8?B?blY5V2VmaWVDb0gxTDNIZGZIVW5JSy9wRndEVlZ3MHhRa25QTmxFRHQ5Qi84?=
 =?utf-8?B?WS9yK3N0MzNOeC9sbkw1VzJFRzM5aW9iV1h4TnF4d0dmSEM3RC9rb0RZVzdv?=
 =?utf-8?B?clhoeU9PdUVEMVJsTnh6TVVEeWxhVHVCamZVQnRvSXoxQzdDcjlRd2FRWUxG?=
 =?utf-8?B?Y1EvUlNOQW11KzY5YmJpZm1VOGNMdU56YTFTNEFjNkFkZ0YwdjRuZHM5eVhk?=
 =?utf-8?B?TU03MkppOEZWWEhmNHlFRVNRM2NINXVWUTdNR05wV0Z5Nkh3Ujc4NWpCYVM1?=
 =?utf-8?B?L0dTd3dhWE9FTjR5MzNnTmpGN2NqdXVBdllyMTRoY05VUUpKLzBiWlhhWis4?=
 =?utf-8?B?SkNQU2k3ODBIOVZVRHROTXVUaTJuZUFuKzkrMU9sc2lFZ1BDenBTZUtqRnJq?=
 =?utf-8?B?SU5jNW55dzUvK3NGVHhtaGpoanV5NVEyMFZrRzdEbG9yL3JjeXkyVHNGZXRF?=
 =?utf-8?B?eC9oNnZybUN3Rm9zVTFzVDZvMjFycUdhQldnRFFSeHljKzZiL1V0cUJFMVBN?=
 =?utf-8?B?TlJxcmoxdzg3bWdIWHpJSHpUWndsNUQ0MEdqZ0NpVGkvQVUyRmxMc1JOTEZo?=
 =?utf-8?B?RGl4dldiMVRibm9JYlcwaWNIbDhrL2dhL0hQeE4wa0d0c0RUSnNDcXlFTVFR?=
 =?utf-8?B?S1lkcytxR29YNnNZUzJaZUJOUE1iaE9jbjBaMHhBRVpsdEtNS0JLZVpNY3RH?=
 =?utf-8?B?QzJvRUZhY0JMT2laWU1TN0hYYU9PVkJNV241YkNqcThsZDVzL3E1Z0tCdzVx?=
 =?utf-8?Q?KXa0=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(35042699022)(36860700013)(14060799003);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 12:37:18.1821
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3261ccd7-a101-4403-baf1-08de17b11043
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C712.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_053732_722348_652B4847 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
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

QW0gMjguMTAuMjUgdW0gMTk6MDkgc2NocmllYiBKb3N1YSBNYXllcjoNCg0KPiBBbSAyNy4xMC4y
NSB1bSAwMzowNiBzY2hyaWViIEFuZHJldyBMdW5uOg0KPj4gT24gU2F0LCBPY3QgMjUsIDIwMjUg
YXQgMTI6NDU6NTJQTSArMDAwMCwgSm9zdWEgTWF5ZXIgd3JvdGU6DQo+Pj4gRGVhciBNYWludGFp
bmVycywNCj4+Pg0KPj4+IEkgY2FtZSBhY3Jvc3MgYSBidWcgc3JlbGF0aW5nIHRvIGNwMTEwIGNv
bXBoeSBkcml2ZXIuDQo+Pj4NCj4+PiBPbiBhIGJvYXJkIHdpdGggQ045MTMwIFNvQyArIDIgZXh0
ZXJuYWwgQ1BzIERlYmlhbiAxMyBmcmVlemVzIGR1cmluZyBib290LA0KPj4+IGF0IHNvbWUgcG9p
bnQgYWZ0ZXIgaW5pdHJhbWZzIGFuZCBrZXJuZWwgbW9kdWxlIGxvYWRpbmcgaGFzIHN0YXJ0ZWQu
DQo+Pj4NCj4+PiBUaGlzIG9jY3VycyBvbmx5IHdoZW4gYSBwY2kgY2FyZCBpcyBwcmVzZW50IGFu
ZCBoYWQgbGluay11cCBmcm9tIHUtYm9vdCwgZS5nLjoNCj4+Pg0KPj4+IFBDSUUtMDogTGluayB1
cCAoR2VuMy14NCwgQnVzMCkNCj4+PiBQQ0lFLTEyOiBMaW5rIHVwIChHZW4zLXgxLCBCdXMxMikN
Cj4+Pg0KPj4+IFRoZSBpc3N1ZSBpcyByZXByb2R1Y2libGUgd2l0aCBhIGdlbmVyaWMgcm9vdGZz
LCBrZXJuZWwgYnVpbHQgd2l0aCBhcm02NCBkZWZjb25maWcsDQo+Pj4gbm8gaW5pdHJhbWZzLCBi
dXQgYSBzaW5nbGUga2VybmVsIGNvbmZpZ3VyYXRpb24gY2hhbmdlOg0KPj4+DQo+Pj4gQ09ORklH
X1BIWV9NVkVCVV9DUDExMF9DT01QSFk9eSAtPiBtDQo+Pj4NCj4+PiBpLmUuIGJ1aWxkaW5nIHRo
ZSBjb21waHkgZHJpdmVyIGFzIGEgbW9kdWxlLg0KPj4+DQo+Pj4gVGhlIHByb2JsZW0gc2hvd3Mg
dXAgdXN1YWxseSBieSB0aGUgY29uc29sZSBmcmVlemluZyBkdXJpbmcgYm9vdCwNCj4+PiBiZWZv
cmUgZXZlbnR1YWxseSB0aGUgc3lzdGVtIHdhdGNoZG9nIGhhcmQgcmVzZXRzIFNvQy4NCj4+IERv
IHlvdSBrbm93IGF0IHdoYXQgcG9pbnQgdGhlIGNvbXBoeSBkcml2ZXIgbW9kdWxlIGlzIGxvYWRl
ZD8NCj4gQnkgbWFraW5nIGl0IGEgbW9kdWxlLCBsb2FkaW5nIGlzIGRlbGF5ZWQgdGlsbCBhZnRl
ciByb290ZnMgbW91bnQgaW4gbXkgY2FzZS4NCj4gVGhhdCBpcyBhZnRlciB1ZGV2IGhhcyBzdGFy
dGVkLg0KPj4gRG8geW91IGdldCB0aGUgc2FtZSBiZWhhdmlvdXIgaWYgdGhlIGNvbXBoeSBtb2R1
bGUgaXMgbm90IGJ1aWx0L25vdA0KPj4gYXZhaWxhYmxlPw0KPiBJbiB0aGlzIGNhc2UgdGhlIHN5
c3RlbSBkb2VzIG5vdCBsb2NrIHVwLCBidXQgcGNpIGlzIG5vdCBmdW5jdGlvbmFsIGVpdGhlci4N
Cj4NCj4gV2l0aCBDT05GSUdfREVCVUdfRFJJVkVSPXkgSSBjYW4gc2VlIHRoYXQgcGNpIHByb2Jl
IGlzIHBlbmRpbmcsDQo+IHdhaXRpbmcgZm9yIHRoZSBwaHlzLg0KPg0KPj4gSSBfZ3Vlc3NfIHRo
YXQgdGhlcmUgaXMgc29tZSBtaXNzaW5nIEVQUk9CRV9ERUZFUiBjb2RlLiBJdCBjb3VsZCBiZQ0K
Pj4gd2hlbiB0aGUgUENJRSBjb2RlIHRyaWVzIHRvIGdldCB0aGUgUEhZIGFuZCBmYWlscywgaXQg
anVzdCBrZWVwcw0KPj4gZ29pbmcsIHdoZW4gaW4gZmFjdCBpdCBuZWVkcyB0byByZXR1cm4gRVBS
T0JFX0RFRkVSLCBzbyB0aGF0IHRoZSBjb3JlDQo+PiB3aWxsIHRyeSBhZ2FpbiBsYXRlciwgb25j
ZSB0aGUgbW9kdWxlIGhhcyBiZWVuIGxvYWRlZC4NCj4+DQo+PiBBY3R1YWxseQ0KPj4NCj4+IHN0
YXRpYyBpbnQgYXJtYWRhOGtfcGNpZV9zZXR1cF9waHlzKHN0cnVjdCBhcm1hZGE4a19wY2llICpw
Y2llKQ0KPj4gew0KPj4gICAgICAgICBzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gcGNpZS0+cGNpOw0K
Pj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2ktPmRldjsNCj4+ICAgICAgICAgc3Ry
dWN0IGRldmljZV9ub2RlICpub2RlID0gZGV2LT5vZl9ub2RlOw0KPj4gICAgICAgICBpbnQgcmV0
ID0gMDsNCj4+ICAgICAgICAgaW50IGk7DQo+Pg0KPj4gICAgICAgICBmb3IgKGkgPSAwOyBpIDwg
QVJNQURBOEtfUENJRV9NQVhfTEFORVM7IGkrKykgew0KPj4gICAgICAgICAgICAgICAgIHBjaWUt
PnBoeVtpXSA9IGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChkZXYsIG5vZGUsIGkpOw0KPj4gICAg
ICAgICAgICAgICAgIGlmIChJU19FUlIocGNpZS0+cGh5W2ldKSkgew0KPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKFBUUl9FUlIocGNpZS0+cGh5W2ldKSAhPSAtRU5PREVWKQ0KPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwY2llLT5waHlbaV0p
Ow0KPj4NCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHBjaWUtPnBoeVtpXSA9IE5VTEw7DQo+
PiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4+ICAgICAgICAgICAgICAgICB9
DQo+Pg0KPj4gICAgICAgICAgICAgICAgIHBjaWUtPnBoeV9jb3VudCsrOw0KPj4gICAgICAgICB9
DQo+Pg0KPj4gRG8geW91IHNlZSBkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgoKSByZXR1cm4gLUVO
T0RFVj8gSWYgaSdtIHJlYWRpbmcNCj4+IHRoaXMgY29kZSBjb3JyZWN0bHksIGl0IHdpbGwganVz
dCBjb250aW51ZSB3aXRob3V0IHRoZSBQSFkuDQo+IFRoaXMgY29kZSB3aWxsIHJldHVybiBmcm9t
IHByb2JlIHdpdGggYW55IGVycm9yIGV4Y2VwdCBFTk9ERVYuDQo+IFNvIGlmIGdldF9waHkgcmV0
dXJuZWQgRURFRkVSLCBwcm9iZSBzaG91bGQgcmV0dXJuIEVERUZFUi4NCj4NCj4gRnJvbSBuZXcg
Ym9vdC1sb2cgd2l0aCBERUJVR19EUklWRVI9eSwgdGhpcyBpcyB0aGUgZmlyc3QgaW52b2NhdGlv
biBvZiBwY2kgZHJpdmVyIHByb2JlOg0KPg0KPiBbwqAgwqAyMy4wOTEwMzFdIHBsYXRmb3JtIGYy
NjAwMDAwLnBjaWU6IGJ1czogJ3BsYXRmb3JtJzogX19kcml2ZXJfcHJvYmVfZGV2aWNlOiBtYXRj
aGVkIGRldmljZSB3aXRoIGRyaXZlciBhcm1hZGE4ay1wY2llDQo+IFvCoCDCoDIzLjEwMTkyMV0g
cGxhdGZvcm0gZjI2MDAwMDAucGNpZTogZXJyb3IgLUVQUk9CRV9ERUZFUjogd2FpdCBmb3Igc3Vw
cGxpZXIgL2NwMC1idXMvYnVzQGYyMDAwMDAwL3BoeUAxMjAwMDAvcGh5QDMNCj4gW8KgIMKgMjMu
MTEyNDM2XSBwbGF0Zm9ybSBmMjYwMDAwMC5wY2llOiBBZGRlZCB0byBkZWZlcnJlZCBsaXN0DQo+
DQo+IEFuZCBpdCBkZWZlcnMgYmVjYXVzZSBvZiBmb3VydGggbGFuZSBwaHkuDQo+IEFjdHVhbGx5
IHRoYXQgd2FzIGJlZm9yZSB0aGUgY2xvY2sgZHJpdmVyIHByb2JlZCAuLi4NCj4NCj4gW8KgIMKg
MjQuNDkxMjc0XSBtYXJ2ZWxsLWNwMTEwLWNsb2NrIGYyNDQwMDAwLnN5c3RlbS1jb250cm9sbGVy
OmNsb2NrOiBidXM6ICdwbGF0Zm9ybSc6IHJlYWxseV9wcm9iZTogYm91bmQgZGV2aWNlIHRvIGRy
aXZlciBtYXJ2ZWxsLWNwMTEwLWNsb2NrDQo+DQo+IFRoZSBwY2kgY2xvY2sgaXMgb25seSBkaXNh
YmxlZCBtdWNoIGxhdGVyOg0KPg0KPiBbwqAgwqA0MC42NzY5MzFdIGNwMTEwLWNsazogZGlzYWJs
aW5nIGVuYWJsZWQgY2xvY2sgImYyNDQwMDAwLXBjaWVfeDQiDQo+DQo+IEF0IHRoYXQgcG9pbnQg
cGNpIHByb2JlIGhhZCBiZWVuIGRlZmVycmVkIDUgdGltZXMgaW4gdG90YWwuDQpBcyBhIHdvcmth
cm91bmQgSSBoYXZlIHN1Y2Nlc3NmdWxseSB1c2VkwqBjbGtfaWdub3JlX3VudXNlZCBib290IG9w
dGlvbiAuLi4NCkkgYmVsaWV2ZSB0aGF0IGNvbmZpcm1zIGNvbW1vbiBjb2RlIHN0b3BzIHRoZSBj
bG9jayBiZWZvcmUgcGNpIGRyaXZlciBjYW4gY29tcGxldGUgcHJvYmUuDQoNCklzIHRoZXJlIGFu
eSBndWlkYW5jZSBob3cgdG8gZGVhbCB3aXRoIHRoaXMgc2l0dWF0aW9uPw0KDQotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
