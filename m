Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C316E7E0DB
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 11:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2taIegNvgVzNw5BQp2l+GJbaUyRMOM+0owc5VnNNS1c=; b=AS+oZYPKVOd1JM
	v+Js8+NE7wv5dmxKTHoKociqb2RNItW+z9p9DVTrc0hyX0BNBWdU7g6ff6cYIytHVsyHiRQgulgq/
	5sOxXKYr0Dpz6zcnvn5ZJ4Hv+jjaISSP8dzoWAc2m6CphxHtmU8N10DLubJn8gz+bUq966XI0uBlG
	0DFv2GupDkh9KBgJ5UVQByXbK81OzoWAagbl6Uecwzn7ryJCO7fsmU+RvdSYI0nkYtcNRnmE6lAdL
	T/yCGHOJOhb6VV1UCzT4IqTCSm0LO4erCsxh96nypFBoRT0fy2cvpsSsQG9k2m9jqvWRCvsVcXUtZ
	XS4mjmOKj0uxDgMKnrvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpltG-0000000Gswr-376D;
	Tue, 10 Feb 2026 11:26:46 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpltB-0000000GswW-42uX
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 11:26:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LVmW/hT4bGqof4yP9ALFmTnCWCbjOPgs5xF3/urw5a0U4Y6tddQAtWSyWdzly2yQCczyxYUZYuAr2pHDQt4HnDS/g/hzH0JcyHAfJSUSQICmjhNC+O6AjFv2VyJ+BNnY+Me9Z/6EIBuAd5jW5AfEZ+EshsFptWMzMxmcVljk55XExmVCyPgo4YG79y2bXThhVN2J4KLlocTGALZ86ElVErtv+aljWtkvKXFqnRjba+aIr9uyuAJUWZn6ze21L38brCKZWx6q8LdHa8R1Fnwg+OZ/0Rcvar7x86ugMmOvKY6HxCuVWNQ8c2WeAJzdvFb3y0DwdeFHXhk1LNCf9g/iIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kfdk5YVJ1f5VB98HlAaaTuu/uEaZU4pN1aUym0yrmkg=;
 b=uxO+xtwOg9gLCeomQAuTBH0a67AuHgVXNeazE3ZlycYPKXxChpyoaQz0l7Rmbh/yTbdHYpJXM8pS7yeCPFUmvVfjbRmqvecwqydIeloT2A17xHZpELwK+HNrsRk2HdBB2b08JDa6vqBzCet2Xl8DTmGKTcCq1ZLsmED1RU2bH0AtW62Y3nBaSjf3ug2aGteDZj6beOh8YgKGShNZUFqLESdf4B3r3DEty1PYZHrNFaeHGhrntTFa9AhkPlt7+8O7RfsnmKoX5TIHVYJp9wThhQGuvNBKMicqCCwShvAMa/wD5KBNpi7YhyfBFwr3QFsT7USzaoI/Lsk2DoArRktexg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kfdk5YVJ1f5VB98HlAaaTuu/uEaZU4pN1aUym0yrmkg=;
 b=OZxWYHtE1Zv9HcBs5QX0hhWwW59f2BD5Fzn8bGwZZ+3RqOLkHrVrS/grfUWW7uDAsK9ohUw8gwJEDgvM8IygbD/JXhrYF0NX62QzsFWmsIz1WpF40vpIxHVr6FsGbhF5FCkDDLpp6/MnDYvLFSIBW/VSAH/u5xeLPMagTXH/xMo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYWPR01MB10393.jpnprd01.prod.outlook.com (2603:1096:400:24a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 11:26:33 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 11:26:33 +0000
Date: Tue, 10 Feb 2026 12:26:05 +0100
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <aYsVzVICB0kcM7lw@tom-desktop>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
Content-Disposition: inline
In-Reply-To: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYWPR01MB10393:EE_
X-MS-Office365-Filtering-Correlation-Id: 1223861a-f69f-4245-dcc6-08de68973e66
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|7416014|376014|366016|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzNwbVJjMlBmRllNWDhobzBrREp3b2E4TkU1WVNIMk5mcDloS2xTa3JNc3JW?=
 =?utf-8?B?S2JEOVlRSzVHVDJteGVSQmhMbzhjY010TWFDNE5YMVF5RldxbTg1QWlsdktt?=
 =?utf-8?B?UHBvcHJ4NnNOZlpsa3cvVThkODVRNkhjSHVBQzVpYVZMN0dJdzRHM0NIYXZV?=
 =?utf-8?B?aGdGWnhzbmRyc1pCbWFMUXRwWkRNcGRBblAxSW1uMnFKc1MrMlIvUFc4eE1B?=
 =?utf-8?B?Zlk0M0ZUV0JoN25VNW9xQzZhTHBIdStDdnNoZ2Z6aWVVK1JLSDdZbm81RVE2?=
 =?utf-8?B?Z1FMc3o4OUc5M09aYzFBRDVIWmxsMmZWWURLM24wM0hIclRVSjN3dkxIdzdD?=
 =?utf-8?B?cHdycHhHTThYNUNYbmlXbGIwRkx1Q2R2Q3lyRERUellnYlBRVitmZThZa0Mz?=
 =?utf-8?B?MjhXSndpR3l3M3JzVmNnUG5MaW9ud1o2K2wyVEFJRzdmdWxPN2VjQXZGdWto?=
 =?utf-8?B?Rkt0L1ZhYWhhdFowZWdIQkp0eCtDanNoWTRXSlp4cTFyaVJUQ2dpVy8zcmtQ?=
 =?utf-8?B?WmU2RjhLb1Q2SjRqVEhkSDJva1BmdEhDekpVbUVCT3o1NWJiUU03V3BoVjdK?=
 =?utf-8?B?cUhVaUVJMStEWGxPV2hMRHhwakRDUzVPVmRHUnZEVUJRREg4OEVvbHRKZXFM?=
 =?utf-8?B?cVZNQlpmQ3l0U1I4dlI2S1JtOWdYL1NISlFUWWdwVUc2cnF3RjBGdHc5QkFO?=
 =?utf-8?B?TTcxS01iNkNncGtTaU8rcGE2eWZWQUJvK0xZaWRySkxQTGllb1ozK2Fuc2hY?=
 =?utf-8?B?TTF0dkYzVklyeGg4NEJUSCtORU9UQXdZZmpFOEQvQk93eHQ1T1RjV05QUzV3?=
 =?utf-8?B?eXNoZ0E0MkxkS1Q2NE00czhwcjI4bDhFa3pCRWJrcDVVWWpRNmttelUxVnc0?=
 =?utf-8?B?enJ2cU5LM2kwSnZScEJ5Zk5FenNhUnJucDJzUXhsVUthSnRsbElDVGRjbE5a?=
 =?utf-8?B?bGQ0aVhOM2F6STZnNjIzT1J2QWlTY05MWGdEUGJTUWMycURSakdTLzB3OVhv?=
 =?utf-8?B?azg1cEk2bUtmaUhPb3dNZk1uZGwyUHN3Q2wvYXRqNkpPL0drbDV6TzRwcmcv?=
 =?utf-8?B?aTFObVh3dnd6cFUzWVFtMXdlemt4RndzZzNaMjhXeDdjclduSkhyVDZGazhB?=
 =?utf-8?B?OFVFVlUzMWVNUU5qaWg3M1Y3UHd6RTU1R0hHd1pkNWxrRkY2dG9EQUwzZ29z?=
 =?utf-8?B?L2ZYOGFLeHJaUEFzZzdiNkovejJVVUJwcElpRzJnclE3S1NsYjZ4MzR4WlZq?=
 =?utf-8?B?UDlja0pnZGVxckVvSDhzTnUyaXQ2b3ZFKzJKNStNd3gyR2ZtQ0xiSzFuUmsz?=
 =?utf-8?B?djF2WU5SdnZrYXJVb1RUcHBsbkdoM1Q3TVNaeWdsQmRMMUJSdXgrTWxRQko1?=
 =?utf-8?B?SGtSYmZvRFhONDltVUtQVithMnBIMVV1blRKVmJ3QXd3VkhOYWFGUlB0dTd6?=
 =?utf-8?B?Y1R0WGYxbE9uVkhrWUhKQTNRT2JUNGQrV0V5ZGlSSGxLa0hTSnU5SGJSakc4?=
 =?utf-8?B?eGNSWTJlTkwrOVJyMGpmNmFyYUpoUWdKNElhRVZXbkJzbkxUNFhOZXM0VlBI?=
 =?utf-8?B?VmhRMnRTTDRRLzdDS1lpbUlXekxzVXBNejYwZ2dkWVloZmtDTFVxcnFZWC9t?=
 =?utf-8?B?SlNtczQ5b3ZJVnVPT09Na0VpWGZZdnJUTTRTMk1aRHNETDJjdFpYWmMreWlw?=
 =?utf-8?B?amdpU0hZd2hCaVd1ZVBUNTBzTUZsSU5IWk5qMlR0bktZdVBLdmN3U3BFQUl5?=
 =?utf-8?B?Mk9obTBsOExodTVpRk1UQmExTDVWOG5EQzJiaUVZV0NhdUppNDlEL2Nsc24x?=
 =?utf-8?B?T0lJbXZwN3lZMTRpU0FBODBBSElYZTdNQW5CNk4xZ1ZnUXl4MmFQSDBob09G?=
 =?utf-8?B?VUdaMndWRHAxMzFmVnB0dnNXcDd6alZzcnhHeWJoNEtwOEhRRk42K2RkY0l0?=
 =?utf-8?B?dTdKY2IrSVpyRzBqUnM2d1A1bzljQndEbTNrV09ScUpjMkxpQWtlQitzRmcv?=
 =?utf-8?B?aGhqL29YNnl1VmpXSi9WSC9EQ2RuektmMTJ1dnR0TEhwWTJyT3N5STc5aUtL?=
 =?utf-8?B?ZlBpK21MWkpJdTNRV20vZUhQeUt6VkhKTldiT3k4bVVqMkE0Si9EdFdLT2xp?=
 =?utf-8?B?VmtSc2dCNHUwTHVwQVRsNVhsaTN2Y0FTL2VYYnZQNEo4dG5mdXJremthWVBC?=
 =?utf-8?Q?WNvKV1ZDHyGiru4/mc4JvxI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(7416014)(376014)(366016)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHhLeGNFTHJna2lFV2l6aGFQOGxGZFQ5V2Zlc3Z0akJiRmtncnRwdGY4SlI0?=
 =?utf-8?B?L0J0NVhDd3pWb2U0Q2d6MTNldXdsSHllcUlvUnJVSVZybnJKN0x4dUZla1Y1?=
 =?utf-8?B?Qlc0enlzSnpoNldSR1BwRUlkS0hXNnNUTjNnTUVvNElNNnFyeitVanRDRGpy?=
 =?utf-8?B?TlpERXhldzE5cGl5QnJDL2JUVnJraW9lOXE1U01GQkV2eFdIMldiZUFTVG5s?=
 =?utf-8?B?ZCtMYkZjSUVwcmFmWlcwOVIxRHRKVm9uRDh0RnZsaHJodXc0OWROS2p2K2JW?=
 =?utf-8?B?YzV1N2NXVFhsclpYc0hJODBsakdFQ2FnWUtxUXFFeExrRzhML1JBNDQ4R2tV?=
 =?utf-8?B?dTREOWg5STZ1L1lnNVJWa3pjamtEZ1VQbGRmak9JM2I2aTZERUdDcDlNMmpa?=
 =?utf-8?B?NDM0MFgxU2Q0dHErYWFvUVloWTFseVNIRlRxZmw4U0d4amk0U2hMMnpOUGZz?=
 =?utf-8?B?VjVVOW54bEpwOEVGVmphWWxjZmp0a0h0WnZ6NVJKODBNOTFhb2dHUDNjZWpx?=
 =?utf-8?B?MFMyb09VVFBic2xVbk1GTVpPdW14UExUQUw0ZGwwMk4xb1VVemh4WlVBZ2ZU?=
 =?utf-8?B?VHp0LzlYcU1qUUtSM0hHV2QvNWJoUmJ2eEs5MkRTanVOa1pGNFpEa0JhTTdK?=
 =?utf-8?B?dGphMlV3Z1EzNWY1RlBIejM5bzZmUlQxUkp0UG9VTVRmUndTMTdFVmZQelNl?=
 =?utf-8?B?aXI2TnNWQlBZMm5iT0xXbDg3Q3RpTTdxejMyeVd2NUo2M3hWcDFBT2lYMG1W?=
 =?utf-8?B?SXp2UXJYc09xTkd2L1p5YTRwRlV6RUFDS0R0OGlEMDZ2WEdjbiszV0JYWFFi?=
 =?utf-8?B?Z1huOGhKMHNIdlhtc1Y1NFNNUGZ5eXV6TkJxSjVLdmpBaVZYd21COFJ0dDRv?=
 =?utf-8?B?TXN2QXk3YzgvUG9XNHhQbFJJWk5sS2xvelRobVBXc1JTKy9JaW1LeUFVVXcw?=
 =?utf-8?B?YUN6d1N0UGZYNGRiVzdCM0NOb2x6SWJsT3BQRnFMb2lkNCtLY3h4TnJiU3Vt?=
 =?utf-8?B?citPT1hYcEpld2dPZjk0eXRvbjFSSFYvZzAyS2dSSnJzTW5TdnMzdm9VMm5m?=
 =?utf-8?B?TThjTlV1T3NrZ1FyMGJoelJWbitORWJKT2pXTEhhTzQzTmtjSUFISDJtNUVL?=
 =?utf-8?B?TjZoRHhTMld2OWJheFlJTmlGZUtmODduSEZxbCtkc0NFeUYvRzFZWlBXTTln?=
 =?utf-8?B?SklWKzVkRlZSWU1xS1E4d1AySWNZRFBuNklRc1NjdFROUTBRYmtGVW5CY2V2?=
 =?utf-8?B?L1dBR3daZDh1MzJEWk1ydVNjT1JOVElJZEJkYXg1ZGRpWk5vYXk0eTltUmNN?=
 =?utf-8?B?a2syOUlkUlpJNGUrdFJ5aUZIN2pYZVRhUHJuYTU3a0Z1YVdsM1hOK0lOQkhl?=
 =?utf-8?B?NXFDMXpVQm5GRFgrdFF3V2xId0tjNHVoUnd2R1dNdGJGdytEMkpNTm1WVHla?=
 =?utf-8?B?bm0rcnZVZkxDMHVYQTUwNjZoQzFFb1BNMGdqdzV1bVZkMXpVdDlWL2ZTdHor?=
 =?utf-8?B?RnQvSVFXMGxsUUtNUHVacnd6WE1ZeVcxRGR2N216WDdOeSt1Sms4RWRTTzdw?=
 =?utf-8?B?QkhHMUhtdlBmbUI2c0hDY1d2bDAzS282eDBPTlZveUhwdVlQNitvekpabi9v?=
 =?utf-8?B?V1FyMUl5ZzFNenFwdUtXNmZCLzZpYUVycnRPTFl2UWpJNEk2UE9PaFYyZkln?=
 =?utf-8?B?VnZQNjYzUFlUUHFTRUFsckNRZWVYemNrRTYxclpWYnlieXVuM3ZXRjdwZ0w1?=
 =?utf-8?B?VTYwNklITFZEUTFNc1E3YmRMcXl1SjhSdjdnNENlQ3NsdmZwUkIwWCtUYThv?=
 =?utf-8?B?eVg0UHkzZkRRYkRzM01aMEIySFdJOXBVUWVTNkhLQnBVbC9COENLRzBGdFcw?=
 =?utf-8?B?VTZQS0VKYXpXY0dCbUJGcTU1QzA2dDJLVlF3VUZCTzVhUnJJUHZHVjl0cWdM?=
 =?utf-8?B?N1dYZVNvVmdybGRnb2RBRWYxaHIybVNQcXJiTG9PTC9LMStmdTZSWmhVN0RF?=
 =?utf-8?B?S2ZQS1F1Tmx5S3cydXB5S3UxOVNlbjVDQjRrcVN5ZW1YZkhVbW1HNHdBUTJC?=
 =?utf-8?B?OG5PUXgvOTN0M2xkMFVCbWhTR3VxOUVhbUJHVk1RcUR1UFpZTDloRWRxaGJL?=
 =?utf-8?B?VWdqZUUxTVA1THNkQ0o3cjhWY25aVEIwRklBQ09qWFJKRElUS0lpd0N2N29i?=
 =?utf-8?B?R0UvYmtPVVdJQWlUc0toZmNwaU56UVlYZXYvNXV3K3Z0emMrTFk2UmUzZmoz?=
 =?utf-8?B?blZQaktwV05WcG9ISjd1RTlsU0hQZ3FPZVA2d3puNkc3YUJrRzlYUEhXQW5Y?=
 =?utf-8?B?cTQ4a3pOSzh1cnhPYlVuQTJ1YldrWktGTWt4VkNad2tjU0QwWG1IT3pFRURj?=
 =?utf-8?Q?xhXGEkSl4s+CZ8JvcwrHTFlP1PiuYt5SED1+1?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1223861a-f69f-4245-dcc6-08de68973e66
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 11:26:33.1201
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6BHk7Vg5xmwCvzQ3XUNSKOXvbsGvOFKukc+1Lr0pqd6G1fVZsYANe1HfLpnRywddFsm+C+CK+SfYPQnCaa0K5fdl1raMuU8Frtab+usYjN6iFxAf3XUNhg0GwysdGnHk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB10393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_032642_358671_5B63AC90 
X-CRM114-Status: GOOD (  18.74  )
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

SGkgR2VlcnQsClRoYW5rcyBmb3IgeW91ciBwYXRjaCEKCk9uIFR1ZSwgRmViIDEwLCAyMDI2IGF0
IDExOjUzOjAwQU0gKzAxMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiBOb3cgdGhlIG11
eCBjb3JlIHByb3ZpZGVzIGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbCgpOgo+IAo+ICAgICBk
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jOjk0NDoxOiBlcnJvcjogc3Rh
dGljIGRlY2xhcmF0aW9uIG9mIOKAmGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbOKAmSBmb2xs
b3dzIG5vbi1zdGF0aWMKPiAgICAgIGRlY2xhcmF0aW9uCj4gICAgICAgOTQ0IHwgZGV2bV9tdXhf
c3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbXV4X25h
bWUpCj4gCSAgfCBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgICAgSW4gZmlsZSBpbmNs
dWRlZCBmcm9tIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmM6MjA6Cj4g
ICAgIGluY2x1ZGUvbGludXgvbXV4L2NvbnN1bWVyLmg6NjQ6MTk6IG5vdGU6IHByZXZpb3VzIGRl
Y2xhcmF0aW9uIG9mIOKAmGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbOKAmSB3aXRoIHR5cGUg
4oCYc3RydWN0IG11eF9zdGF0ZSAqKHN0cnVjdCBkZXZpY2UgKiwgY29uc3QgY2hhciAqKeKAmQo+
ICAgICAgICA2NCB8IHN0cnVjdCBtdXhfc3RhdGUgKmRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25h
bChzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKm11eF9uYW1lKTsKPiAJICB8ICAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IEZpeCB0aGlzIGJ5
IGRyb3BwaW5nIHRoZSB0ZW1wb3JhcnkgbG9jYWwgd3JhcHBlci4KPiAKPiBGaXhlczogYWQzMTQz
NDhjZWI0ZmUxZiAoIm11eDogQWRkIGhlbHBlciBmdW5jdGlvbnMgZm9yIGdldHRpbmcgb3B0aW9u
YWwgYW5kIHNlbGVjdGVkIG11eC1zdGF0ZSIpCj4gRml4ZXM6IDhiYjkyZmQ3YTA0MDc3OTIgKCJw
aHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBVc2UgbXV4LXN0YXRlIGZvciBwaHlyc3QgbWFu
YWdlbWVudCIpCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KPiAtLS0KPiAgIC0gYWQzMTQzNDhjZWI0ZmUxZiBpcyBpbiBtbWMvbmV4
dCwgYW5kIGEgUFIgaGFzIGFscmVhZHkgYmVlbiBzZW50Cj4gICAgIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnLzIwMjYwMjA5MTMzNDQxLjU1NjQ2NC0xLXVsZi5oYW5zc29uQGxpbmFyby5vcmcKPiAg
IC0gOGJiOTJmZDdhMDQwNzc5MiBpcyBpbiBwaHkvbmV4dAoKVGhhbmtzIGZvciBzaGFyaW5nIDop
Cgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIHwgMTAg
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJz
L3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gaW5kZXggY2ZjMmE4ZDkwMjhkNThk
MC4uNjVjYmYzMzBiZDhmYTEwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3Bo
eS1yY2FyLWdlbjMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+IEBAIC05MzksMTYgKzkzOSw2IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3Bo
eV91c2IyX3ZidXNfcmVndWxhdG9yX3JlZ2lzdGVyKHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hh
Cj4gIAlyZXR1cm4gcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfcmVndWxhdG9yX2dldF9leGNsdXNp
dmVfZW5hYmxlKGNoYW5uZWwsIGVuYWJsZSk7Cj4gIH0KPiAgCj4gLS8qIFRlbXBvcmFyeSB3cmFw
cGVyIHVudGlsIHRoZSBtdWx0aXBsZXhlciBzdWJzeXN0ZW0gc3VwcG9ydHMgb3B0aW9uYWwgbXV4
ZXMgKi8KPiAtc3RhdGljIGlubGluZSBzdHJ1Y3QgbXV4X3N0YXRlICoKPiAtZGV2bV9tdXhfc3Rh
dGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbXV4X25hbWUp
Cj4gLXsKPiAtCWlmICghb2ZfcHJvcGVydHlfcHJlc2VudChkZXYtPm9mX25vZGUsICJtdXgtc3Rh
dGVzIikpCj4gLQkJcmV0dXJuIE5VTEw7Cj4gLQo+IC0JcmV0dXJuIGRldm1fbXV4X3N0YXRlX2dl
dChkZXYsIG11eF9uYW1lKTsKPiAtfQo+IC0KPiAgc3RhdGljIHZvaWQgcmNhcl9nZW4zX3BoeV9t
dXhfc3RhdGVfZGVzZWxlY3Qodm9pZCAqZGF0YSkKPiAgewo+ICAJbXV4X3N0YXRlX2Rlc2VsZWN0
KGRhdGEpOwo+IC0tIAo+IDIuNDMuMAoKTEdUTS4KVGVzdGVkIG9uIFJaL0czRS4KClRlc3RlZC1i
eTogVG9tbWFzbyBNZXJjaWFpIDx0b21tYXNvLm1lcmNpYWkueHJAYnAucmVuZXNhcy5jb20+ClJl
dmlld2VkLWJ5OiBUb21tYXNvIE1lcmNpYWkgPHRvbW1hc28ubWVyY2lhaS54ckBicC5yZW5lc2Fz
LmNvbT4KCktpbmQgUmVnYXJkcywKVG9tbWFzbwoKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
