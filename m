Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E85F7CCF9E0
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 18:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNcQ4iUI2FXFgHgw5e4IdqJM0oFCHc5fAwbBhUCAZ1Q=; b=ZPjlcW7wLppp9h
	9E7/fgtd1QHg5X7QXh4vAPrW0sj25smAbq6SInUdCVcFggTRiKKcvSCztvY9Gm3mhVcdmXIaD4aNi
	TXETEXlVeVZS7ZP1weFzttGAKy1mWP08EAhd5YfqKlqkmVW2TKZQdJ2A8go2/ukF/uEz4GAqvq5Ox
	LxhMtNTPVDxwDOYyjgu36KpB7AkPecFM0ULp4TfBlV8cZ7um6UhRwsT1y6rqiUAnz8U5pYHThymyz
	RXuCPnF5bhOMgrbg3NiFMG7wF7wCEFUrsnwySIIFF1eWeAJVZah9hEm6sAzw7TifsmP+ciDn+3wHo
	hpPONFH0h0ve/PzO15Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo8y-0000000GTSf-2pgY;
	Tue, 28 Oct 2025 18:10:04 +0000
Received: from mail-swedencentralazon11023137.outbound.protection.outlook.com ([52.101.83.137] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo8v-0000000GTRm-23dR
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 18:10:02 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=s3K2gN5C+g75P1HompC2oN0V8Vk912IE4b6NP9b2+nJb52Zxwv8O8JKaNh69lKcFOxHDLznCxZiUjTRu2McIueJNRlMX1fWT/3puRUk6ncYRY8X9AHgKCTOxoMuCCltGD3irEM9fffQQK0vXB1XgSQVxgn5GVrj0SMvhF+6r8qqv9ntyjJ98YLFKrQhdyEJYU8PPX9EXw4pvdP9rVqTPKZqPL2YSyC/q1HkN4jRKUE9/IM02ZjGIFOEmkrbWZErsQtjCkZ8jXWCkRbDLT4S8VtkeSBwsVvC6kccSAKvVn967BGb30CJtycQXMODCLM2O0NRh4JFM5e7XQA+dcryUyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hc8XPvRNddUP+EzMk4SJ7yyAk/U9v3alc0K+UtMUh8=;
 b=Eo0+j+7BITcz2szrAYMHU5QkxfYK6iqc208ve8F2BPK6TuWdMEEykfD07afo7hISceioZ+pOP0w5hPgX6LOTN2yCTZteIs2eqfyuILH4wYOR8F5eEzamgd/hFLHJUN1QDBb1f1Uc09+VSGaxNeZFBnaCBXayXvoo2fs+qo+43QJjBx3GZgd6rVefn8iSAmqKWMKAmKUaG0VyIQJJ5NvzU46jj5+/KoqfDaBbYk1lr31zlKmrYtEq2TmYLGUMdB7k3XP+W4U+xCg4oLzdFwSoojXcUFhgVQQ3czg4ZRiQ6nVcaqWJpxCiwbHcoDG8PeHo0GUMu3yIXf8AwZf3JTngdg==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=gmail.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hc8XPvRNddUP+EzMk4SJ7yyAk/U9v3alc0K+UtMUh8=;
 b=jVuCBI9NRnkxxM3PmMI/a/Y94mdYz3MP0KZr/EV35HYAWdm8gUnjOqAp8gZdkHsXMJXeuNJjPA6uN5RWf9oUz3hNN65W9MPPWcGOidF03EzOIM38S5/Waw9srcWWgqLNtFXpwliAMYOcUg/kJksYd+6+de3HZPk2vWrig0sVZIE=
Received: from AS4P189CA0046.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:659::11)
 by GV2PR04MB11352.eurprd04.prod.outlook.com (2603:10a6:150:2a2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 18:09:52 +0000
Received: from AM2PEPF0001C711.eurprd05.prod.outlook.com
 (2603:10a6:20b:659:cafe::1b) by AS4P189CA0046.outlook.office365.com
 (2603:10a6:20b:659::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.12 via Frontend Transport; Tue,
 28 Oct 2025 18:09:51 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM2PEPF0001C711.mail.protection.outlook.com (10.167.16.181) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.10
 via Frontend Transport; Tue, 28 Oct 2025 18:09:51 +0000
Received: from emails-9006542-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-148.eu-west-1.compute.internal [10.20.6.148])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id C01DA804F3;
	Tue, 28 Oct 2025 18:09:51 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com; arc=pass;
  dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1761674991; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=+hc8XPvRNddUP+EzMk4SJ7yyAk/U9v3alc0K+UtMUh8=;
 b=AkuoD4j3R02TUaxOT3EO3TsKkAWnBZ7Uh6k5EVS3+tKsTkYbmwuGnlh69XozRZg89JuzA
 qSX4wXmG+eNjqufsvrpZodPidZN84qGAQoGkfRXw2PA4a6APAj3n57WaEfiGa01H7j1Z2ou
 x4QISngsBie6z5eQeJg6Xx2nn6JXz5o=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1761674991;
 b=biC/b0v6hQMFegyDKODuyouDrBg/pp32Z49+6qScmO9P8ETmCcrEZTdwW8kMN4DMjDIXM
 1Dkw8qg2PrHe9aSjfxOy9ggb+3eCl2tc8ffT50afw2X10riS5p1nPCFTLTWazDMrHwqbrwL
 LkBrHlnpME6HsYpFaj2YHwtSvSrSOMM=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dwoT7r+1+Pzv7xZpTEeGK4y5+e8LuHZ6To+zthIZoVpuLn3GEU69mCuUG6I/MadT5Rb1ipxFerWgtjuDYQbUzROd+ub4oWe+wJhdvLvm9zavN1N4aFhPW8Yyb5s7Nvhz/hEqk6EkpHGZEzINCZh+PqAAFFY+CUgmP2J0iKEM8P/KQ3CmvVeH8yt4j+1J/4twDOFWHKsOSFREgzZsN0URimI1x9UmYjPRi1C3Ag0hNRlR4k0oX6Uad9Qj5txMHSpP520cQ1GSFARgGxY5ol2/suAZKfLmzmrJ4el0KhZ3pBfiz+ukRjcW7CyqukMvQ0rTjOmwS8a/DewrPKfTZjfmOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hc8XPvRNddUP+EzMk4SJ7yyAk/U9v3alc0K+UtMUh8=;
 b=oImPYq3f5DCMYwzCvOKVNiDwej+GuT8R9IRyZyq8HO05s6ajRUeWnbe8vsR/uCVOJXSFgW00zGpCSeSA6JQIau3aaUGLBWGE95mytAEauRDT5H6fZWspt3OGkkZz5ZsmnT6zMwb9Rs2LzmsvBu6So3kscWjzzHwFclJ1k+Jb6J0cmBhTdiO22saHw+Sd52ZPNwUqEKX0BcFEkzP37BcMgKLZ9rJSsmJbHdgt6lbQWccPj+PcsSpZoH+R0gRwoEgpR5jQWIjVThiCwnfjc12638hKrZPnZxg6mrgrFch4BinATOkMX/PLSnXGW2fmk8lQ/pqc4R1tuoefsFF4EXix+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hc8XPvRNddUP+EzMk4SJ7yyAk/U9v3alc0K+UtMUh8=;
 b=jVuCBI9NRnkxxM3PmMI/a/Y94mdYz3MP0KZr/EV35HYAWdm8gUnjOqAp8gZdkHsXMJXeuNJjPA6uN5RWf9oUz3hNN65W9MPPWcGOidF03EzOIM38S5/Waw9srcWWgqLNtFXpwliAMYOcUg/kJksYd+6+de3HZPk2vWrig0sVZIE=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by DBAPR04MB7221.eurprd04.prod.outlook.com (2603:10a6:10:1b1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 18:09:41 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 18:09:41 +0000
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
Thread-Index: AQHcRa1Mq/U8rZIbYUir4sNYTmDR2bTVQU6AgAKfZQA=
Date: Tue, 28 Oct 2025 18:09:41 +0000
Message-ID: <e640f628-f834-42cc-b8cd-b9017cc4f9ce@solid-run.com>
References: <43918f90-9bcb-4838-9328-8f06a8693681@solid-run.com>
 <e5fd6b91-be1f-4d0d-86c1-9dc1713873d4@lunn.ch>
In-Reply-To: <e5fd6b91-be1f-4d0d-86c1-9dc1713873d4@lunn.ch>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|DBAPR04MB7221:EE_|AM2PEPF0001C711:EE_|GV2PR04MB11352:EE_
X-MS-Office365-Filtering-Correlation-Id: e41d543e-8d11-4b94-165f-08de164d30d4
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?bU5Jc0liQ2dmMEphMTRnN3BONEIreUlFNHlRT1laUGp4MXhIRDFvV1Y0UWNx?=
 =?utf-8?B?YzV4MjBMN0tSaUtlYXFiYXlNNitVUlh5aGJyZkg2bjFmNUVZbUxkSnRGODFV?=
 =?utf-8?B?b05ZM3ZjTkpEY0FzTTkwa2dUdFl0aFVibmIxWmtRbUhicHJCR1NYb3d5NlQx?=
 =?utf-8?B?eS9SUGpQRmJ1SlUzSjVqNUFkcGthdlN3ditoTlRyMUg1MndDNUxoL2o5N0NN?=
 =?utf-8?B?VzZIa0tIR3RmN3oxbDlBMjEwYjlVZWdpeDB3UVBobnlQc0VpTmhyRUU1UnIr?=
 =?utf-8?B?MnllQTRKaWYzY2RvUnpDRE5Vb2JGTjBuNUg0U3ZnMjdNaXVXZS9ram13MDIz?=
 =?utf-8?B?cWkrSElkZVlXK3VNV3lQb0VEb3hTYURvNFpMOE9COHdacDdySnNjdEVHeGN1?=
 =?utf-8?B?MFBPYjc1SWNuYTI5SzByVytkZTJGZnIvWW5YRnZjbUEyQVpMYy9ub1hzd3Z1?=
 =?utf-8?B?SkhQcjlSZ0FSZTNOdmQzbnVBd0FPZ01aUnc4dVpvMkVuNVdIVnFsM0V1Z1pK?=
 =?utf-8?B?UG5xcGhGR01CMmk5eFN3MWlHbjRuaGlqMlU3dEpKOXFoNmFudk1IbTZCSkpI?=
 =?utf-8?B?cjh3eElleE5SUVJWTm5GcEVMVWVxL2owNFJpMUJRS0hHa0ExelFmR2dFM24v?=
 =?utf-8?B?MWNqcy9abUJKaXdxa0dmalJEKzNST0J6dCs5dEhualpjdHJhMHFEV3FQaGRV?=
 =?utf-8?B?UTA2SnB1TXhiNDVKZUdaNmFob0xrejdFOHRHbnVqWXhZU0VaT3NOTG1oWExp?=
 =?utf-8?B?QkhvNFoyamdKWHFkSTA1MmxpTzV2SVBWbi94dVRsb2ljSElMU1k5YUljSy8z?=
 =?utf-8?B?OXZYUWorTFQzV3E0NWRnS25BbDhaTG8yR3BUbitlL3ZkUzI1djdsdzdITGYv?=
 =?utf-8?B?RUx2ZnU0dUFSUHplR0FLZTVUQXRTamhURVBCMW14RTlMd3FqdTZyQStpakJ4?=
 =?utf-8?B?bERKVWRxMldaNmJ2U3BGWVkxUTFlRUdCQW1SU1RPcUoybS9NOGU4bGFLWDY4?=
 =?utf-8?B?ZGlFMEJuYXhON3E4YjN0OFRpVEZMTVUvN0I3TjJjNjZlVnJ5R0hMNThuSTNo?=
 =?utf-8?B?TWU3VW1jcGxiVUJUdnRnTS96Yk5iTVJIRExSa20vdUp6UVBLeDhLQThteUNi?=
 =?utf-8?B?ZmR5dXZCS0hEd2lUY0xBTnN5MEhzOC9PdGQ3azIwYzhnUVo4TnNRMmV1aGFm?=
 =?utf-8?B?alArREtNd1kzUThrMDhxeU91ZFZKNmcyMmlHVTVSdmZSd01uMWF5RmJmdEFv?=
 =?utf-8?B?dkZFTlBhWnFLcmhGVG5ObkxBbjMwUzVKbk0xZk9SbGFrOWp4K0FoQzdna2Nw?=
 =?utf-8?B?UVNleFpCWENBS3F2RFM4UTMxZ1lXTjNvTGNETHBRaWxIM2l6NTFUK21PTmlD?=
 =?utf-8?B?RHRJQUwveE93b3hjcCtMdDJheDFTUlEwaWt5UG5FcjZ5TkNmSzBKeEdXZmVk?=
 =?utf-8?B?RXZBQ0dwK1ZDcGw3YnFlZGQ0T25Hei9NSzdVcThkYTc2WEIzdFBwKzNJL0NT?=
 =?utf-8?B?bkR3dHIyeDNPeXdqK0V5VFNZZTV4OTB4UXdGVEF6TzFpS0psL2tSU2p4dmdQ?=
 =?utf-8?B?YlZZNlgxRlc1SGVpK2YyZld5OHBzcVJYM3Z3LzVPVGJma1R4UlpndnpzWE1E?=
 =?utf-8?B?QXRJamRUYTZWQk1JRjdETSt1cFNlL1VoN2Q1eXVwUC90VXM2TDhzZTlNR0lx?=
 =?utf-8?B?U1JFQm1UTGgzeFFZOVB5ZXF5dzNYODhLdXoxaDNPK0ZLb1Y3TnFyZlBHMGFn?=
 =?utf-8?B?WlF0SGk5VWhEcEVMVUJlUXQ3OGJWNWd3WFNUd0hEaW5mQW91dXNHTXR3NS8v?=
 =?utf-8?B?Wng3eEpETUZwRTY5UHB6SVNVa21BOGVXTGxGc25VRWVmVEhycUVra05IUUtI?=
 =?utf-8?B?Zk90NGE4ZDVJNjVURkl5SkRtc0ZJT3ZNeFg0L0JDVkhSamJ0Y1ZYWXlMS0Zp?=
 =?utf-8?B?bUlCRnhSejdSajlVZytTa2pDMkREenJzb3Z2Nlc1N05wZjJ4MHF1VEk4YnVW?=
 =?utf-8?B?b2pYNU5UNUwwWVUxcjdPTUdqdDRrSEJoc1NQRkRQQjRET3UvalJVeU8wNFRo?=
 =?utf-8?Q?i7cw0/?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <62E0ABABD536434F9F445C545907AA19@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7221
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 5784defe42dd4230a1715125fdff04d5:solidrun,office365_emails,sent,inline:d70add46e7d13af37c6404f52540dcfe
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM2PEPF0001C711.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 50e8d4e2-1740-4336-5352-08de164d2a66
X-Microsoft-Antispam: BCL:0;ARA:13230040|35042699022|82310400026|376014|36860700013|1800799024|14060799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MW9ad3NvRWFaYWoySHc0YWRSNHZ5ekdRRUF1aVcyc3Q3L0lmcFFyR3ZqanRw?=
 =?utf-8?B?ODFYS29tdU9za1VtK2xKczRjTGpsOXNrbE0yQndleVcrLzk4Q1R3cFd5S3FJ?=
 =?utf-8?B?QndmZHV2YTB3MkR4Z3hpbWhJeldhbHJNK3hEYWoveFR0L2NaYWxoNDdoTFRh?=
 =?utf-8?B?VkVtdVRXMmpnd3JqNEtjZU52TVBieU1DdS9XSGkrajlNN3R6OEZNSmFvNm8z?=
 =?utf-8?B?Y0kzdXptclFHOTNwTkVGc3FydkZRQ21iWDdyU0k4dXpTQUVxalVHcmRSSWhL?=
 =?utf-8?B?K2h1YkQ2b2Z0RTJVWVhYb3hud1B2Rm1xVTRGSzVSV05WaFFYTG9aMW9tY3hM?=
 =?utf-8?B?QVVVRlhMOVBSelBhQ29IZUlFc1liWTJFN3FWQ3dGQkVtOURmdy81OFdURUtF?=
 =?utf-8?B?L0JabUZZNjBvUk5Dbm4zZVlLM05XWk8xL3RTcTVNM2M3bGpYaHNEMndVRURy?=
 =?utf-8?B?dlB5Q3d6NVhXUmxGS1ZvcHVBUlJXV2h4U3pDWmlIM0RIcmtLY28yUVFvdktz?=
 =?utf-8?B?aHJHN3g3MFpTOUNSUEZHRUFMcjNQOU9qUmxqUHJoZXpwL3d5bEdtYU9IQjQ0?=
 =?utf-8?B?V2pmUHdNU2ZRRDBQbnEwd2ZPU3RhbjFwV2pEZUQ0SHg4dDRiZFFhLzJRaTBi?=
 =?utf-8?B?dDhzTEdMWHNuUklKc0VGdnZRM1M0QXBQcUdCUzhtdEs1N0tQUVl1WERSY1NO?=
 =?utf-8?B?TFZuZFAvVjNFL2VOSEd5NlZPOWlQbG9vTE1LeWtuR2pRaFhiMXBhdi9LNGxo?=
 =?utf-8?B?Wm1hdDJRM2hKbFVsSTNNY0ZXWDZDbU5JSkNwb2tSOGFETFhVQ05oZGlTRUkw?=
 =?utf-8?B?cGFUUHlkU1Ntbks0V0tzWmY0N3Blckd6LzVvUEpYZVlnNklZWEhEdi9iYTVw?=
 =?utf-8?B?Y1JLTy93bVNUTDhrYVFFODA1SzEyc1A4T2JtTVhKOFpDUmJqcnNJSzNjL1lB?=
 =?utf-8?B?S3ZRbGV5aEhxQ1RxSUtndzl6c2t2SENsenpURlhkUlZmSSttb2VZVzQvVlVa?=
 =?utf-8?B?elRTWDl5cVJPcTB0TmJzK245S1oxRVpzRTUvVnYrMFFnYTRNOVp1ZGwxK0RE?=
 =?utf-8?B?LzlzL0tuVXhscEJCWVRUZFdTRHZLQXprdGtHL01aL2FKbG8xQ3E0U2VwUVl6?=
 =?utf-8?B?T1NYVFlFU3VNOUJUbWNMekRXb0I2MGJTNWFMLzNsa082Z2RNeW5CTGROcmRx?=
 =?utf-8?B?cE9JSHdpN1NYYVkrcW9jbkEzc2F3NGczUEdDWEFiK0h3TC9kZWFsSFYvYTls?=
 =?utf-8?B?c2JjWEtOZHZiT3d6ZzVybHBVdUt3c3l0eXNYbzBUblpCYmFJd0NDdlpWSlRt?=
 =?utf-8?B?Qjg4ZmJtdUk0LzcxK1pISzU5M0xLZlc1ZFVSN2dLR0lTRm0yRGRJL2ZjZkpQ?=
 =?utf-8?B?Nm9IM3hWR3dCcHdEcWZoR3EzcGcxNmFoaGhqc3pSN2o0SThPek9LVEZTVXR4?=
 =?utf-8?B?WTQ3MHBrREdreEFLZnpKZGVxeStmZlB5K2JaSnpROEQ4VDlrSUJCVXArYStq?=
 =?utf-8?B?WklteFY2b1lLOWxvRklBK3dyekdrenRNY2R2ZzZDSUY1a3J3aVpobTE2LzRB?=
 =?utf-8?B?VnR3SlhHTjBBYzVPaXR4OXhpNXhRMGVTUUtJNzZIajEyYjFsaDVPQjZSVU01?=
 =?utf-8?B?UGpId0pSQUpaajhaY1EyMlM1VWgwS0wyckNJN0lzdnpka1BqWjY1KzRLZkhR?=
 =?utf-8?B?WDVmUGwwQXpBMWdkZSt2b3V1Y1doRFN4NWc5R3pBOXlXUUh6cTJwSCtoQzhW?=
 =?utf-8?B?TFI3ZCtQTUhNd1ZucmM4cFpRSU1SalZqOStiMTg1bjI2K3llekloM3pUZFBY?=
 =?utf-8?B?R2wyK0VtMklCVytSRUhMZ1pmUHFmOEhvVS9DdkRZa2owZVZ0cTlPUEtGTTFN?=
 =?utf-8?B?ZEdQSjE3bTZkb3dyZEVpTjFSVXZlblZBSDlKeUpGY0dXTWo3WlB4enJWT2lz?=
 =?utf-8?B?dm9IQ1A4RXdIS294L1FqY3FSMzBQOERXYWh1b2o0V3k1c1U2WEJlSTFLS2dn?=
 =?utf-8?B?VDJYTW5RUFV3bzF6SGZCdndSZnR4WmFVdTBBVE1wc25pcFQrUVJXdzlqZlBz?=
 =?utf-8?B?YU9qcSs4TjhZbnRCNjR5TDB0ajNDM1ViM2NhYW5TcDJtSnNJVG5uMTNxM0JQ?=
 =?utf-8?Q?XK0I=3D?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(35042699022)(82310400026)(376014)(36860700013)(1800799024)(14060799003);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 18:09:51.9790
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e41d543e-8d11-4b94-165f-08de164d30d4
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C711.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_111001_746366_77B92D46 
X-CRM114-Status: UNSURE (   8.39  )
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

QW0gMjcuMTAuMjUgdW0gMDM6MDYgc2NocmllYiBBbmRyZXcgTHVubjoNCj4gT24gU2F0LCBPY3Qg
MjUsIDIwMjUgYXQgMTI6NDU6NTJQTSArMDAwMCwgSm9zdWEgTWF5ZXIgd3JvdGU6DQo+PiBEZWFy
IE1haW50YWluZXJzLA0KPj4NCj4+IEkgY2FtZSBhY3Jvc3MgYSBidWcgc3JlbGF0aW5nIHRvIGNw
MTEwIGNvbXBoeSBkcml2ZXIuDQo+Pg0KPj4gT24gYSBib2FyZCB3aXRoIENOOTEzMCBTb0MgKyAy
IGV4dGVybmFsIENQcyBEZWJpYW4gMTMgZnJlZXplcyBkdXJpbmcgYm9vdCwNCj4+IGF0IHNvbWUg
cG9pbnQgYWZ0ZXIgaW5pdHJhbWZzIGFuZCBrZXJuZWwgbW9kdWxlIGxvYWRpbmcgaGFzIHN0YXJ0
ZWQuDQo+Pg0KPj4gVGhpcyBvY2N1cnMgb25seSB3aGVuIGEgcGNpIGNhcmQgaXMgcHJlc2VudCBh
bmQgaGFkIGxpbmstdXAgZnJvbSB1LWJvb3QsIGUuZy46DQo+Pg0KPj4gUENJRS0wOiBMaW5rIHVw
IChHZW4zLXg0LCBCdXMwKQ0KPj4gUENJRS0xMjogTGluayB1cCAoR2VuMy14MSwgQnVzMTIpDQo+
Pg0KPj4gVGhlIGlzc3VlIGlzIHJlcHJvZHVjaWJsZSB3aXRoIGEgZ2VuZXJpYyByb290ZnMsIGtl
cm5lbCBidWlsdCB3aXRoIGFybTY0IGRlZmNvbmZpZywNCj4+IG5vIGluaXRyYW1mcywgYnV0IGEg
c2luZ2xlIGtlcm5lbCBjb25maWd1cmF0aW9uIGNoYW5nZToNCj4+DQo+PiBDT05GSUdfUEhZX01W
RUJVX0NQMTEwX0NPTVBIWT15IC0+IG0NCj4+DQo+PiBpLmUuIGJ1aWxkaW5nIHRoZSBjb21waHkg
ZHJpdmVyIGFzIGEgbW9kdWxlLg0KPj4NCj4+IFRoZSBwcm9ibGVtIHNob3dzIHVwIHVzdWFsbHkg
YnkgdGhlIGNvbnNvbGUgZnJlZXppbmcgZHVyaW5nIGJvb3QsDQo+PiBiZWZvcmUgZXZlbnR1YWxs
eSB0aGUgc3lzdGVtIHdhdGNoZG9nIGhhcmQgcmVzZXRzIFNvQy4NCj4gRG8geW91IGtub3cgYXQg
d2hhdCBwb2ludCB0aGUgY29tcGh5IGRyaXZlciBtb2R1bGUgaXMgbG9hZGVkPw0KQnkgbWFraW5n
IGl0IGEgbW9kdWxlLCBsb2FkaW5nIGlzIGRlbGF5ZWQgdGlsbCBhZnRlciByb290ZnMgbW91bnQg
aW4gbXkgY2FzZS4NClRoYXQgaXMgYWZ0ZXIgdWRldiBoYXMgc3RhcnRlZC4NCj4NCj4gRG8geW91
IGdldCB0aGUgc2FtZSBiZWhhdmlvdXIgaWYgdGhlIGNvbXBoeSBtb2R1bGUgaXMgbm90IGJ1aWx0
L25vdA0KPiBhdmFpbGFibGU/DQoNCkluIHRoaXMgY2FzZSB0aGUgc3lzdGVtIGRvZXMgbm90IGxv
Y2sgdXAsIGJ1dCBwY2kgaXMgbm90IGZ1bmN0aW9uYWwgZWl0aGVyLg0KDQpXaXRoIENPTkZJR19E
RUJVR19EUklWRVI9eSBJIGNhbiBzZWUgdGhhdCBwY2kgcHJvYmUgaXMgcGVuZGluZywNCndhaXRp
bmcgZm9yIHRoZSBwaHlzLg0KDQo+DQo+IEkgX2d1ZXNzXyB0aGF0IHRoZXJlIGlzIHNvbWUgbWlz
c2luZyBFUFJPQkVfREVGRVIgY29kZS4gSXQgY291bGQgYmUNCj4gd2hlbiB0aGUgUENJRSBjb2Rl
IHRyaWVzIHRvIGdldCB0aGUgUEhZIGFuZCBmYWlscywgaXQganVzdCBrZWVwcw0KPiBnb2luZywg
d2hlbiBpbiBmYWN0IGl0IG5lZWRzIHRvIHJldHVybiBFUFJPQkVfREVGRVIsIHNvIHRoYXQgdGhl
IGNvcmUNCj4gd2lsbCB0cnkgYWdhaW4gbGF0ZXIsIG9uY2UgdGhlIG1vZHVsZSBoYXMgYmVlbiBs
b2FkZWQuDQo+DQo+IEFjdHVhbGx5DQo+DQo+IHN0YXRpYyBpbnQgYXJtYWRhOGtfcGNpZV9zZXR1
cF9waHlzKHN0cnVjdCBhcm1hZGE4a19wY2llICpwY2llKQ0KPiB7DQo+ICAgICAgICAgc3RydWN0
IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsNCj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYg
PSBwY2ktPmRldjsNCj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9m
X25vZGU7DQo+ICAgICAgICAgaW50IHJldCA9IDA7DQo+ICAgICAgICAgaW50IGk7DQo+DQo+ICAg
ICAgICAgZm9yIChpID0gMDsgaSA8IEFSTUFEQThLX1BDSUVfTUFYX0xBTkVTOyBpKyspIHsNCj4g
ICAgICAgICAgICAgICAgIHBjaWUtPnBoeVtpXSA9IGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChk
ZXYsIG5vZGUsIGkpOw0KPiAgICAgICAgICAgICAgICAgaWYgKElTX0VSUihwY2llLT5waHlbaV0p
KSB7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChQVFJfRVJSKHBjaWUtPnBoeVtpXSkg
IT0gLUVOT0RFVikNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUihwY2llLT5waHlbaV0pOw0KPg0KPiAgICAgICAgICAgICAgICAgICAgICAgICBwY2llLT5w
aHlbaV0gPSBOVUxMOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gICAg
ICAgICAgICAgICAgIH0NCj4NCj4gICAgICAgICAgICAgICAgIHBjaWUtPnBoeV9jb3VudCsrOw0K
PiAgICAgICAgIH0NCj4NCj4gRG8geW91IHNlZSBkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgoKSBy
ZXR1cm4gLUVOT0RFVj8gSWYgaSdtIHJlYWRpbmcNCj4gdGhpcyBjb2RlIGNvcnJlY3RseSwgaXQg
d2lsbCBqdXN0IGNvbnRpbnVlIHdpdGhvdXQgdGhlIFBIWS4NClRoaXMgY29kZSB3aWxsIHJldHVy
biBmcm9tIHByb2JlIHdpdGggYW55IGVycm9yIGV4Y2VwdCBFTk9ERVYuDQpTbyBpZiBnZXRfcGh5
IHJldHVybmVkIEVERUZFUiwgcHJvYmUgc2hvdWxkIHJldHVybiBFREVGRVIuDQoNCkZyb20gbmV3
IGJvb3QtbG9nIHdpdGggREVCVUdfRFJJVkVSPXksIHRoaXMgaXMgdGhlIGZpcnN0IGludm9jYXRp
b24gb2YgcGNpIGRyaXZlciBwcm9iZToNCg0KW8KgIMKgMjMuMDkxMDMxXSBwbGF0Zm9ybSBmMjYw
MDAwMC5wY2llOiBidXM6ICdwbGF0Zm9ybSc6IF9fZHJpdmVyX3Byb2JlX2RldmljZTogbWF0Y2hl
ZCBkZXZpY2Ugd2l0aCBkcml2ZXIgYXJtYWRhOGstcGNpZQ0KW8KgIMKgMjMuMTAxOTIxXSBwbGF0
Zm9ybSBmMjYwMDAwMC5wY2llOiBlcnJvciAtRVBST0JFX0RFRkVSOiB3YWl0IGZvciBzdXBwbGll
ciAvY3AwLWJ1cy9idXNAZjIwMDAwMDAvcGh5QDEyMDAwMC9waHlAMw0KW8KgIMKgMjMuMTEyNDM2
XSBwbGF0Zm9ybSBmMjYwMDAwMC5wY2llOiBBZGRlZCB0byBkZWZlcnJlZCBsaXN0DQoNCkFuZCBp
dCBkZWZlcnMgYmVjYXVzZSBvZiBmb3VydGggbGFuZSBwaHkuDQpBY3R1YWxseSB0aGF0IHdhcyBi
ZWZvcmUgdGhlIGNsb2NrIGRyaXZlciBwcm9iZWQgLi4uDQoNClvCoCDCoDI0LjQ5MTI3NF0gbWFy
dmVsbC1jcDExMC1jbG9jayBmMjQ0MDAwMC5zeXN0ZW0tY29udHJvbGxlcjpjbG9jazogYnVzOiAn
cGxhdGZvcm0nOiByZWFsbHlfcHJvYmU6IGJvdW5kIGRldmljZSB0byBkcml2ZXIgbWFydmVsbC1j
cDExMC1jbG9jaw0KDQpUaGUgcGNpIGNsb2NrIGlzIG9ubHkgZGlzYWJsZWQgbXVjaCBsYXRlcjoN
Cg0KW8KgIMKgNDAuNjc2OTMxXSBjcDExMC1jbGs6IGRpc2FibGluZyBlbmFibGVkIGNsb2NrICJm
MjQ0MDAwMC1wY2llX3g0Ig0KDQpBdCB0aGF0IHBvaW50IHBjaSBwcm9iZSBoYWQgYmVlbiBkZWZl
cnJlZCA1IHRpbWVzIGluIHRvdGFsLg0KDQpzaW5jZXJlbHkNCkpvc3VhIE1heWVyDQoNCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
