Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10259CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 15:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T4i1XpYtnIn4XQpNHjrNfg8bNwDVL/Wuwn6Tf4yFAk=; b=hnAqCUsCz1ofx8
	W/wvlY2qKCD/O5hYJu/ytKG+Orb7PV4o36FZmjTQWRREzkvmBTJrlGagxZFOTLTaQPKIcQ1quBNox
	FLNR3cbkxXd3RG4ABhOaiaZo+8ljtVj8K0y924LRFB8+6NkaklcVSpCWeGiJ1XJEmwR6b3FYeWrpn
	ATgznu4poJHWik+XGFNDrkbGhbmNNcQ+5QHvAaFy/VWFwO5jC1O4jWjQG6UMH0uAbqqq0Whm2603f
	G23jCC45h6L5FO+XN6tjBx1U51xdaSavAjK9ZJOpjb9DXiOL+5LFxXH9i0EEEZIDjttyvrP7hwwFZ
	pt+CcCKnPOI1qEGz9yXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Rsp-00000001Uwi-3BtF;
	Wed, 24 Sep 2025 15:58:19 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Rsn-00000001Utu-03Le
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 15:58:18 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Ooim5k/wSstWXKCbLROonqEHcKvJSgrgu1qHewqFC9iFSO2nlkGg+ZiQR2YrdKae3FAxVniURC2sedd9/LoUZXZjryvVgiMjisLS3gxUfljSDA/LM+AV2wVL3n3RRLcCesSSjCO6waUt4tkAH6LKhPETH6xQLgNaLo3wSH8MA96vklpOK25uc4M/X9ARpDMeprGN9DIZXREGNP7v30EQ7hZpjKotTDOIUUnIsqwmz4HPnht/N+OCn/p4wnFWr4EmiQOOebi60gTamCltQ1P8Niex1Lv3hlcq08pemLttK5mob6jpDo81Fw7X6hsOqtjhLndAIEGf1VoTsdPNXNvX1Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SnDGXErraaLF5zYDftWhEpdNA12Eaz/sFQvTLwzvt3U=;
 b=DbdErGgMiHC+7SlML76Hn4oMg9HDGDmVJzkTXW/WYX5fBsII1wl6sYq2+wo7C0fh3AeXnYIRi7c0LDSSVnsS2+oRM9ywhPjSe6ESzdmu6rNkxfPFCNxG7E0GiKZRhd6qy6gP4aRDNHW+U9F1/cm3XIFbR5UflIs9r20l8Z6BNV5HcfkvSxqzHNQHuAgCKwoDuFvSAF/H9lh5it+Q/tX62ACew1aoV+08RvRjjqnGWuZbPHQDX5n4osa8pTUaV5ZE33PaJXB5Wj+ONsbMB2+Rq4tKVMmXgkutRW4wOdu8uO3oqXbrQk2niL9PiljDXkBkTsmjjctSSriCDKLXHX9e2A==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SnDGXErraaLF5zYDftWhEpdNA12Eaz/sFQvTLwzvt3U=;
 b=cGYoLwOGe+mO405Hesuwt3fdbDfMoYfaGG26QCRD6P38fxYjPpWjD7YW/IeRYPD0QTaQOAoeaORvBWULjMvjzbPsj/V4G6GST+SaCIVw1gEOR5C4kxq7wIt2EOGx74gyiprzbtWFMEY24hbzmZ4S41B5PzlkDSu5XtI55onw2ZQ=
Received: from AS4PR09CA0015.eurprd09.prod.outlook.com (2603:10a6:20b:5e0::20)
 by VI2PR04MB11170.eurprd04.prod.outlook.com (2603:10a6:800:299::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 15:58:07 +0000
Received: from AM4PEPF00027A61.eurprd04.prod.outlook.com
 (2603:10a6:20b:5e0:cafe::36) by AS4PR09CA0015.outlook.office365.com
 (2603:10a6:20b:5e0::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9137.21 via Frontend Transport; Wed,
 24 Sep 2025 15:58:07 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM4PEPF00027A61.mail.protection.outlook.com (10.167.16.70) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9160.9
 via Frontend Transport; Wed, 24 Sep 2025 15:58:06 +0000
Received: from emails-802024-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-47.eu-west-1.compute.internal [10.20.5.47])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 5DAF880469;
	Wed, 24 Sep 2025 15:58:06 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com; arc=pass;
  dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1758729486; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=SnDGXErraaLF5zYDftWhEpdNA12Eaz/sFQvTLwzvt3U=;
 b=FY9Yk+5aP9Bzyaa3X54QZ9exf0bVdSou2/cpmeN4h7YFjtLT/x3Ze1+2KFta6koLymJ0/
 qTOLm5Y2UkDaDUv7/zL6moViSBU3O631eHZZ8sgiaPZG2jLGTYHo1vrOecrZDWphrQLTAPa
 7XL4mu6U9BPsk1ipkTJ3jU04Zyt3jZE=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1758729486;
 b=E6PA5HtO7/5Swl/mk2h8VDe1MBAGOh1omHGmGuzshPb6mN2JQt49USwvsqCJuva5m9lTe
 E1JXGIVu0V8ngVOTBrqvX4PcXolT/M9fbIBG3S7Phlx+WRgSa5rcM7KuCQUa/siPgmL8fdI
 CZ/XynrUX2gD/cBHogTZ1ReAU98gHPM=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rBrfX4l/NEvcO9ozaVDNeqHsqMkKqJGna2gPvf+/s4UKtejJrKdzzuWL8XFd6tpehDSyEizdrZIpTajQcc0JzixCYr25Wjs2lFYp28eoSThXlKagNwiks9DAhuSZxm8t5JRMC/FJveSOW6crDHgIRkFilKxYh+fHxzi5cHnrAsFY5lx7hof6FMpKL4Y1AH3qNQmhFLbc/EPw9ErUJAAjKzn+U4X29ORnvwjguuFklLRBZtZxrWfiNg3ZL/OoT2VFgDfnTzyToIM4LphOKd5isZaq3xaMvlTQ29tPdbTUtUmIQ7HWV2RikV8LXsCqjl0d004Cl+rz5DdTtgf3D84uoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SnDGXErraaLF5zYDftWhEpdNA12Eaz/sFQvTLwzvt3U=;
 b=lOfTVK8rjvFlptEUtmr06PceQKAAbC7o/A/OOobCKGub0rgE7mHVsEIT4h1sY1stAjr3QX6nXgdeMUz1EfVWDkE7Aq2vyR0TgBGNQL3Oy+wYtPMc04W3FqhDJBLmXV9nLnGLGMwuPSdYXR05ofnw4peMtrk189UpGlvKUuL851wFrGb/WeoByI0jr4m0OZ6lHHWD9Ofa90TOr9iRpih49ju1n+SFOuI38zYXlwUeuKMXGBrarmK3pyAMAWrHEKf5UZYrvpctDRtmPA0SfOiiQtUYA5wv/q65SM9ugAfYLKZa5xuI24MCXpxd5WpyyE8r77WwTtj+gry+oxMoCAERKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SnDGXErraaLF5zYDftWhEpdNA12Eaz/sFQvTLwzvt3U=;
 b=cGYoLwOGe+mO405Hesuwt3fdbDfMoYfaGG26QCRD6P38fxYjPpWjD7YW/IeRYPD0QTaQOAoeaORvBWULjMvjzbPsj/V4G6GST+SaCIVw1gEOR5C4kxq7wIt2EOGx74gyiprzbtWFMEY24hbzmZ4S41B5PzlkDSu5XtI55onw2ZQ=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PAWPR04MB9886.eurprd04.prod.outlook.com (2603:10a6:102:37f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 15:57:57 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:57:56 +0000
From: Josua Mayer <josua@solid-run.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Ioana
 Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 phy 15/16] phy: lynx-28g: truly power the lanes up or
 down
Thread-Topic: [PATCH v2 phy 15/16] phy: lynx-28g: truly power the lanes up or
 down
Thread-Index: AQHcLMKfxh213jh6uEaWFmieGVJ7a7SiHRgAgAAxlQCAAC/JAA==
Date: Wed, 24 Sep 2025 15:57:56 +0000
Message-ID: <d0c8bbf8-a0c5-469f-a148-de2235948c0f@solid-run.com>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-16-vladimir.oltean@nxp.com>
 <e04dd32d-801b-4019-aa2f-95bf8973c566@solid-run.com>
 <20250924130654.nnliddqiug5hkbsh@skbuf>
In-Reply-To: <20250924130654.nnliddqiug5hkbsh@skbuf>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|PAWPR04MB9886:EE_|AM4PEPF00027A61:EE_|VI2PR04MB11170:EE_
X-MS-Office365-Filtering-Correlation-Id: b2c18440-efa2-43c6-ffb6-08ddfb8326ec
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?dzRmWnVDZGFib0RrY003Z2pGNXlrZDF2V1RaMHBTVTlKVXJjMDQ5SGNRN29P?=
 =?utf-8?B?SDFnL2JmelpmdkZsc0phbndGamM0K1ZaQW9IZ0p1VlBRYjd1NVlvWjRzZ1E2?=
 =?utf-8?B?M2lOUStEL0NOeWorbzQwTHRHMzZGSHgxdThTcFRaM1diMnJzTFg0VXNIdmF2?=
 =?utf-8?B?VnAvZFl0Nm5kdnZMOEZCTklsOXJqMUlDMXNrQWtYaThua2RkZjZielJkUita?=
 =?utf-8?B?eGdVcnRnUUpkS2ZGSWpDODAvb005cDJvNENzY2VQL2hIeXlZNUsvMjlkRVlK?=
 =?utf-8?B?NGFWa0F4T3ZkMmNkbkpma29BYUVDZDNYYm9SZGtiVnBaOWgrR1FNOU9NRU9a?=
 =?utf-8?B?bEdIOE1NOTd4YlpXV2htS1ZqdDZsRUQvbVlPdXNNNEg3NkltOWR0TjR0Tmx6?=
 =?utf-8?B?UlpXRkNqZU1CRUpUZlBNMFpHQk5kZXFhbENXTzNkbVppRStxRG5memd5TEMx?=
 =?utf-8?B?dWNOQko5V05pMUVqR0FUdHc4OUJjSWhmTW0xek5MdnQxb09Nb1pBWEh3aVhT?=
 =?utf-8?B?ME5EdnBzY2xYM0JUeVNuL0Y1OGFTZ1ljM0s1STMwTDZ6RFhHTjRUdUUyeWov?=
 =?utf-8?B?Q0dEUDJaMVJoNzk4NktwR2NzbmxDYXIrU2daaHUweVNDTjhiTlgzWnlZRG52?=
 =?utf-8?B?aUZBck9pSnpVZzFkZ0dZUGhRdnRGazhmamtUVTBOZFNHd041YS9tM0U4TXk4?=
 =?utf-8?B?SldPaVpGSEZERFdmZVcvL2NDTU51QytjV1RjeWpPeWRDU1BaeHhNUUJxb21H?=
 =?utf-8?B?dFNybGFyYjM0OFdGRDBjQll3UFdWMWRKY0JTUlFiNEl5MjlydU9XZE9Sak0r?=
 =?utf-8?B?YjdUb2pXTW0vcXNoT1RpUmpoT0tNR3dqa2ZwSlgvNVBCbFdnd2Q0bjZYWnRL?=
 =?utf-8?B?QVozK0pSUGhYQlFwUmcvTXFRWFN1dDZ3RjBNbHNscVY4UlR4ZzJFYU0yeE5I?=
 =?utf-8?B?QXBzb0NKcVBmNUlHVnc0ZStHOGxBVUJKS1pZbkNVaDlzdU5SeVBFbVR2azlq?=
 =?utf-8?B?R0QyWlhaa2k2S2hiVkVTN0Urdk1Qb29PaW5Hb2VlbDV0U3VZVU1aeG5SUVk1?=
 =?utf-8?B?U2NUelZZYzJJK0xFajd1VE1JRHBVUDYwenAyVWh3S01ndUo1UjRqdHVGVjM4?=
 =?utf-8?B?VkJPZngxRFg5L2psUXRSSE5OVGFCTWNMaGxFL0xEN1llMDJMRDRsY3Q3Q25j?=
 =?utf-8?B?Q0lKa2dVVWhhb05hL0RyaFYrS3l0T0JrUzBJamZZell1M1ZiM3d3cVUrTFZP?=
 =?utf-8?B?b2ZEZmRaV3N1RUh4RVByaEpud1VCK00xQ2lXdkRDVjZLQ28yOFJpTnBmV1hn?=
 =?utf-8?B?MUVhU1A1bENDWmNNQ052Wm1uam15akNHdHB2TEc5M054MVFKZFF6czNBRCs1?=
 =?utf-8?B?czEyMWJyVGcyWUV3SnIwSU85c2ttN2MxQ0IvZ01Ya3JKREx2Tm9IcDhVUVlN?=
 =?utf-8?B?Wk1WSzk1cmlhRXlERDZFdFI0M0NvN3BGdE44aEpRcy95TUNaT3RLT1RINFJN?=
 =?utf-8?B?d1dVZzN1WmlnNDhxeWQ3OEo1MlZNcmFHSGkyRGNTaFE2Q0Vya0Z5TWo5Vlc5?=
 =?utf-8?B?WTJGckxoVkNWeXRZQzB0U2NOdmVxUExVaXIya1lyTE5IVXl3Zm9vUys5OGJp?=
 =?utf-8?B?SmQ0S3QrZzNzRHIrQVVnUTllbmo4NFovQnRlaWhoZWpISS82Y0hGODRqa0lN?=
 =?utf-8?B?ZWkwWDhYNkEvUHNLMzJZWWd3UURDWENmWmZQVlRNMHBRSHJSRkUyQ0ppYVd2?=
 =?utf-8?B?S05LdzBsc015L0tGSlloMkhPMW1HUVloVXo4a0ZjQWt0eFlNMk1FTEUydVNE?=
 =?utf-8?B?TGZhU0tWU0xPNGlVSytOUzF3VEFMZWVlUEozWElrUUIxZDNqUEdoZmJVRk8r?=
 =?utf-8?B?dUlkYTlOMjhGUVBoV3AxemtnaDlaV1QxSDJtb3ZScmg5QXdRUVR4dTRNemtM?=
 =?utf-8?Q?EnfgyGyCgKs=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <D188F62EAC45DD4C8CFA7FD9399C2C16@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9886
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 879c79f158c84ef2893a45b6b9bb74ff:solidrun,office365_emails,sent,inline:d640f59c16670ba48aa2aa7a8b88689d
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM4PEPF00027A61.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 98cf4bef-a981-4527-a355-08ddfb8320d9
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|14060799003|35042699022|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWs1cUJTTmR6S2Flbmp4QmZNRERKTUVhQUwybUIrekpQakpvZmZtUG4rVTk4?=
 =?utf-8?B?cmRRLytVSHNyWkNzS014WU4xUlErcmlnMmJvdDN4MDFmM3FCZTJmVEpXZm42?=
 =?utf-8?B?RmV4eGgrUVJFdlB1NTBOampSSFo2SkhBODNmaVg1aWtGT3dVTUluOW41YXhs?=
 =?utf-8?B?ajBlOG45NGFlZEw0RTFuQ1NTYWhXa2VkeDVUckFTdzhhTHMvbkNBQWtrVXVj?=
 =?utf-8?B?Z1hsOEdQTDJqTzhnVWZSendzUmRySm9Jd1JqTUlGUXpobU11c2pVaFVhM3A4?=
 =?utf-8?B?ZE9JQWc4Vk9sRnZ1RWpVQzdpY2FjZjBQdlo4TGwxOUtqc01lN0pma2ZIS1Nv?=
 =?utf-8?B?L0xqT0lpNVVwUnYwN1NyL2R1eE9McCs5eGVjZFJ3dXJLdStSdTQxVS9hY3p4?=
 =?utf-8?B?MWVRSCtUZmlLM0QyckliUGkwb3lBSzZ4NWpmZWlEcE94dERRNTlQbzZJNTFC?=
 =?utf-8?B?V2lnSXVpZmttbGsxZU1vZmFiTjdXeThneVJWSDVHQm4rN2k0K3FxUlZKRUc2?=
 =?utf-8?B?a1VmRFNLRzROUlBxZWd6RElYdWh4ZVZZNFNZVThYK2tweGV2ZWJ5Wjk2bFJZ?=
 =?utf-8?B?L21ONVVhV3B5bjFqOVZwdXp1NFlWRVkxV1UvN0xTdFpDRk9vc2o4aUtPV0hC?=
 =?utf-8?B?UFBnZVBTM1pUb2lMOHF5dWF3VVpqbmdINWE2LzAzN2FadWhxdlRHSW52b1Z5?=
 =?utf-8?B?NG93Mm1pWG13Z2lWVGRTMUdwVU9FSWcrckFncVdmdjNaaHBXcGhSUS9sTmhz?=
 =?utf-8?B?SG1pVkFNMmxOYXZwWUN5NzdpWXk1b2loa3duMWZSWk1GMGVodjMrTHlicHVQ?=
 =?utf-8?B?MDM3TXdFMG4zb0ZzNUNreXRpWkNUK2ZuTnFBd2NEWVpUYm9XMEJranQvOTJm?=
 =?utf-8?B?WlYxVk12V25VQWJxYUJZaTJLd1hnN2plaTFjb0pHZHRQN21mYm9MOEMzMzJ2?=
 =?utf-8?B?T3BSbXNBUDlheVZrdjhFV2NzTEhzTk9IZEc2b2wxMFQrSElJQUlvbENmNGo0?=
 =?utf-8?B?N25scHEwS0h1MDB3UE9aV3JwbXRkcU9zajlSa3NhYTdpV0hDbGw4d3hObmFN?=
 =?utf-8?B?N2hFa2orYy8rY1RUaXJWQjQ0ZlFKVlRqTTgzL2NGQ01GOHJVQXp2NURmS1Q5?=
 =?utf-8?B?OG90Z3JZU3EvS0huZXArWmRoSnR5S0ZubHNCVWFpUkoxSFBTQmRIRWhoOWlx?=
 =?utf-8?B?cEU4cDFXekdTRHM5aWdIT2RtVjdhUnp2UnJjUklHbkV4cGkwY1REeUtIT2Rm?=
 =?utf-8?B?eUNoYitzSlNIZEJIVVd3Z3Bia2FWbldMOStmNWFyRUczeGtQdXFmc21wanJl?=
 =?utf-8?B?S1lFZndXbXozN0tkT1FRZVo2QzJST3hweE82WE5wQXd6eEViMUI3QjZHZGRn?=
 =?utf-8?B?MXVLOSs1L1MzTFdaVEtYek9mSTdPWUI4TlorQnY3cG5GSjhPM003dThEY2VM?=
 =?utf-8?B?c2RObUtxc2RrcXFKQXo4dzZwQ3JkTVhCVGppVUlTTVB2aEJDMm9pZ3VwR2ZQ?=
 =?utf-8?B?L0VubGJLRGRra0tUMEhpbUFPNTZ5SVhUUjFoSjh4NXFCUS82YU4xbnl2Tkdr?=
 =?utf-8?B?aXRoeDRmVTNxTDY2aTlOZFRlak5NYzQ3SmkvUHdqUlRpbis2QURsQUJvTExG?=
 =?utf-8?B?SnRGQ255dFRzUllGaGM5bS9TMDVTVjJ6WWNYVkIzVlVVV1NMU1duNEtRdDZT?=
 =?utf-8?B?YnJ3N2Z6ZUtRV0M0UDM3U2NOT0V5bGZTMXZXMHFGYmY0RFVvZWtxR05ISnpw?=
 =?utf-8?B?bGY3RDdqZS9FeXNVQ0RlRUFiUUNES1pPVTVLVU56bjBSYStHZ0NNYUsxQUoy?=
 =?utf-8?B?bjAxSXI0UUpnazdlN3B3NTJtOHVXNzRUbGZoRUh6dzM4ek1YUWxaTlBTaTl5?=
 =?utf-8?B?YmZ0dW83bXQwWUNTS0ZPa2E2VFR0SUNnNllIK1FTNnhhc1JwNTVZVU5YTVFy?=
 =?utf-8?B?NmlmckYwUklDelp6Ykh0VC9EZldnN3BUY2k1ZmcrcnQ1SDkwWHVuNWJCUmxr?=
 =?utf-8?B?SC95NVhFNENRPT0=?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:58:06.7010
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c18440-efa2-43c6-ffb6-08ddfb8326ec
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00027A61.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB11170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_085817_201176_94DEC431 
X-CRM114-Status: GOOD (  12.00  )
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


Am 24.09.25 um 15:06 schrieb Vladimir Oltean:
> On Wed, Sep 24, 2025 at 10:09:26AM +0000, Josua Mayer wrote:
>> Unbounded loop, perhaps use timeout.
>>
>> This can fail on unbalanced calls as you discovered,
>> but also e.g. when a pll is unstable.
>>
>> See below for when this came up previously:
>>
>> https://lore.kernel.org/all/20240218-lynx28g-infinite-loop-v1-1-59cc5cef8367@solid-run.com/
> Ok, I can make this a 17-patch set, no problem.
>
> What happened to your patch? Did it get lost?
I suspect I got distracted and never sent a v2.
> Do you mind if I write a
> new one myself, with a single read_poll_timeout() call for both
> LNaTRSTCTL and LNaRRSTCTL, to keep the functionality same as before?
Sure, feel free.
Since tx and rx are in different registers you will still need to poll each one?
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
