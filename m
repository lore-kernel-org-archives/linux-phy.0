Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8912CAC5B8
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 10:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZxs21rtLzJwK/X0q9I4gtNgujKSs1SNMo5saM0DmEw=; b=38mOzUIgc9O+L1
	4IVHOIjFKDeXOL4HFLwVVK/mpfhe6R+x/4IC0zgk0wEMORDU+nySZ/xUFVLAdrVrobXlYoPlDinWT
	fhj4I/tSk+qw6BiL3m/f5Aep28x7t39rnoWc6k/NVBN/39VbmWsK96mWUvIb1kvNVepnzj/CihmJ/
	naH9ruSXB04sriyMLPWah9fK4XfOT6eVmapmIyyLCVY7Q40QmBZNxGT/GAWn5Ij7UTIlH1EDzlBLO
	+ousSPXSSN3kaiWucqhC6tLpetWfjZ4Rs/bPW8JdMhQQiBf2us2InkoAd41qBmZBic/5m27JVZPvo
	qdca2Jx5va+/hK2HFSqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4GFB-0000000ACfv-1W6y;
	Thu, 02 Oct 2025 10:09:01 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4GF8-0000000ACfC-3i5D
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 10:09:00 +0000
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ogKJ3+IbEyn2aOFQ57N3f1cD6ARcifYFn3ywhxATROxg8JPB6xKcVsBIWKToAVIcgqLLgn7Az4di1I1op4gWrY2cTC6iaR9YALG1OCPWSEHa7B6PrlLDnM7MEQhfAs3JIgD1uTBzIwz8lQ96IDX4V9oYTeVsyvEYHWEKIONUuCs3MMJhgZHFL1Eox18Ol50T6uL4JI1fs93gZ4S3WASNdkDGdP76jsoXW1zUq4avM7sGlG6o7cpmlOpraiyYwha3D0SZ/jJsPVDHFkTNgeCnawvdDQO0Bmep4bwrF0c2QGqpdlbdEEczrIJ87WYrcbfhWg+n0wQKJONLO8HnjSyMTg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lXlwmfwP8/c3DD7/usqSmCpCiSYqirZII8sTrb+rB8o=;
 b=rBliyi0gWjnb70kOD/Tk2HfGxZ4c5pwdIaD1g/kaKq1dMEyD2dnGyzAyohPDfSh+rhT8b19vOm0eBCAd2sHL6Ymot/9CLcVP8ZiufIMLfmj9VDlzXp48iafxt806IqC49fIESDXd1wqtlQQVEBIeL+QDCcd2hFRA4O3FeusA/CjG314ZnEl3JV9DzTYzpTdwbF2FZl89I7Q7pD9T4QmZybB/gDkOJDcweZqd6/8iaJQo1hFlhfKpFfqS7MJ1AMX5Blx90Wadt/CMAZ5eYBC8mNyOATKyNNzyE6UiWXToMmj8iVzvSncAKtgGUv05huejiqdne7lNm0rV/7lq5Z0AUA==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXlwmfwP8/c3DD7/usqSmCpCiSYqirZII8sTrb+rB8o=;
 b=hYrbsoCyFxehFRm1mN2/nYDd2iHkBeNnWzt2wg521NO0AfwLHz4FjeENa7fkN5lRCku86z+BHeTI6i6WVKxi3jhUz4VD3VmBO+9AEzoXz2FtpkIAQOHOir7TaVacvDk3P9hY+DiNF1962H/ik9f5GJZ6YrToj7kW5iXsZ2huhGk=
Received: from DU2PR04CA0245.eurprd04.prod.outlook.com (2603:10a6:10:28e::10)
 by DBBPR04MB7868.eurprd04.prod.outlook.com (2603:10a6:10:1f1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Thu, 2 Oct
 2025 10:08:46 +0000
Received: from DB3PEPF00008860.eurprd02.prod.outlook.com
 (2603:10a6:10:28e:cafe::34) by DU2PR04CA0245.outlook.office365.com
 (2603:10a6:10:28e::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9160.17 via Frontend Transport; Thu,
 2 Oct 2025 10:08:46 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB3PEPF00008860.mail.protection.outlook.com (10.167.242.11) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9182.15
 via Frontend Transport; Thu, 2 Oct 2025 10:08:46 +0000
Received: from emails-3533665-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-72.eu-west-1.compute.internal [10.20.6.72])
	by mta-outgoing-dlp-862-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 72AC38053E;
	Thu,  2 Oct 2025 10:08:46 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com; arc=pass;
  dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1759399726; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=lXlwmfwP8/c3DD7/usqSmCpCiSYqirZII8sTrb+rB8o=;
 b=hcpIJkhdP/0L1eTknlVCQ8QRThh8bBPtKoV0mVcKDJfklrITKN28jygZUoxS+yEqOfGsc
 2EhMZ4TKKPTmVY5BUiUqqx05Voi22/S9Lzc2xiuNWP3KTuqMYd2ixXuCbGshue3UG3YVAF1
 V9Y3EoEyj7mi1eEFRoh3L7mHZ981ZFU=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1759399726;
 b=eabWd59tGD8IuGyuctq00SUD7bVBgAzn7+Gq32q6yaAgcWX8KPhfEQkKGC+zW2lNWik4w
 lZWlKCq46/CbR2XWdsnzHFnDgl/hEIL+hKQk7PuRj6ffVRZQcwAXa3H16exd/LRm5la534a
 nO04vGQyBEuE/bPWg8NNLfgNeL8uEMU=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBcBRIVV4NWeea1FCH1zhWzg86gLpPKYyIjK7R+0+Ds/QA6S7Gg4qeuv+ICrAPYyvZV4Qxi2lJxhYUSBT4ufG8iiDE71B+RgsoaRN/uHLaHGJnMTmOSXTRvkOwcUqiLsNsFfKgcvcxRAXTY+8SBAIVqcSuz+h7zQO69+luqbWHBLvBVqk7cu2N7kvA6naSwVp5N+CqtPDbllnKzNdb38ODxn/j/NKyQtBau5iifaBEKtqo/Jxzx4UtXSePTvlIXLWsA6xkru7TszTMmkLuP/8PmaE3lzaMLCZ9CsKj/MF7FduwktIcRCq44CxBhmuIbMG8i9konh+lICdSiVY7AoBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lXlwmfwP8/c3DD7/usqSmCpCiSYqirZII8sTrb+rB8o=;
 b=DxzPSxFnwo6v7f5qRoFFJpNTTZ5VFogRLPagWO4P+yZ3y7yWypTlqbgQw4tmzdtttnMzFV7DrmaSMWV+kMKwSZFnkHTTpjA/I4NztsZ3ShBcrCgaIXLnUJKiYYFs3iHGs2iY1mGLqssrudZi9x/nyP6jaOk14RMcWyyaRDIBHUIJTmDBZtPRAZzFvL5TCpu94p3J0xWPBn2qTw2I/lV549SzP7gKa7xok8jareTCHkYr3CF8Zqnm1WpfB/EuD7aICs5BmZKja3/rUXaHKrdkPbPyLpwgyeZs5TkDYUdndlXgUAFrdfsS3oqkAccwl4hy8XUTLpbG7Npm14oXI7ALPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXlwmfwP8/c3DD7/usqSmCpCiSYqirZII8sTrb+rB8o=;
 b=hYrbsoCyFxehFRm1mN2/nYDd2iHkBeNnWzt2wg521NO0AfwLHz4FjeENa7fkN5lRCku86z+BHeTI6i6WVKxi3jhUz4VD3VmBO+9AEzoXz2FtpkIAQOHOir7TaVacvDk3P9hY+DiNF1962H/ik9f5GJZ6YrToj7kW5iXsZ2huhGk=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by DUZPR04MB9794.eurprd04.prod.outlook.com (2603:10a6:10:4e0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.15; Thu, 2 Oct
 2025 10:08:31 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::aa83:81a0:a276:51f6%4]) with mapi id 15.20.9182.015; Thu, 2 Oct 2025
 10:08:31 +0000
From: Josua Mayer <josua@solid-run.com>
To: Rob Herring <robh@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
CC: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 phy 12/17] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Thread-Topic: [PATCH v3 phy 12/17] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Thread-Index: AQHcLxAu6r7Q6OdKRkGaPEWQOK9K5bSryQOAgAJrHwCAAHa+AA==
Date: Thu, 2 Oct 2025 10:08:31 +0000
Message-ID: <9c50af26-ac4c-46c0-a8ff-d6dde9c0ac0a@solid-run.com>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-13-vladimir.oltean@nxp.com>
 <20250930140735.mvo3jii7wgmzh2bs@skbuf>
 <20251002030330.GA2964719-robh@kernel.org>
In-Reply-To: <20251002030330.GA2964719-robh@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|DUZPR04MB9794:EE_|DB3PEPF00008860:EE_|DBBPR04MB7868:EE_
X-MS-Office365-Filtering-Correlation-Id: 937ac75d-8a47-4ef7-67dd-08de019bacfc
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: =?utf-8?B?SGMwb2ViM3RlV2ZYN09zQ1JTelJqcG81VXpiMEQ2YnBrVWJRTklUN3Qxa3Vn?=
 =?utf-8?B?NEsvWG9jTE04SjFlQkt0UWtaT0NWeC9XWTk4bjQxa1ZqbW05bEFsd0NPQmZI?=
 =?utf-8?B?R3pPbDdIRGd4c011c2xoaVFmV0JDYWhGaDNpdlFEWVI3WGd4K2w5dVVZcnRn?=
 =?utf-8?B?Qkg3WkF4Tm95M1NCUWxqK2kvK2JvZmI0RHMrL2l3UUpGMWJ0Y2FnVGliV0I1?=
 =?utf-8?B?NGtuNXRqUHNvTU1vU0tuak95WmI1VHV0YmQ4NlpKSDBsTVkwUjZ6cW5aYkQ0?=
 =?utf-8?B?aGZtTHEzOFQ5azBzMktoWmcwZXRHV2hkTlVNYnRLeG9WSFhCeXEvRDhFVzAy?=
 =?utf-8?B?VG9JMy9EMUF0dXhWaXhMWlFndHNYMzNjcGxud1BzQ3VZTnlYVnFuUVpMMHFs?=
 =?utf-8?B?em53STFYYmRpclBrT1VCblRJeTJPL3ZYbTlVMWVNaHdVVVdhT1hacWZEVmRM?=
 =?utf-8?B?b0k5aFRCZ3RTVUZTS05vU0RvZ0lqaTJ2UThQcGxCd0xNWWJCQi9oaHdLRjdH?=
 =?utf-8?B?T1ZuMTdjVjJFcVFFczBwUlBQajltRGhVRDZMYlNMZHFuR3BpcjYrdkQ5Wmxs?=
 =?utf-8?B?a1g1a0d1YkFrdHRaSmxmV1RVTmdTNVQrUEpPVU1ycndsLytFK2FUYXlJZzFz?=
 =?utf-8?B?alZaMWxZU0N1dEI4b0dyd2t3UUY2ajd0MDM1d1daNlQ1MzVaYTVSSXlLNmZk?=
 =?utf-8?B?RVNybXkyVjAxcUg4eDJQMi9HRzgyc0F4c015TG5oR0JSUHUvVHk4UWVhNzZX?=
 =?utf-8?B?a3oyZjAxaXBFTFJpTGJDRE9pNVRoMElyNG1NQ0dPQVJXU1pNb1JTOVF0L25p?=
 =?utf-8?B?WVhTZDU5dWUzT21xdytGVEFETjVwdm9Eb1N2MWlUR0ZwaDRwb1hyUFJrMEl6?=
 =?utf-8?B?dUV0YzFoV1Jlejk4R3ZkLzJyUDZQOGJGT3lzeVpXQWZlYmdCVnBKRzBUY3Qr?=
 =?utf-8?B?RldEYnY3ZEhFN20zRE5iZURKbk9Mc1Z3NldsWHg5K0dhMllwRVorRGFwdG1N?=
 =?utf-8?B?T21JeGJCcjY4YjJ6Zjd1QkNhZzk5dVVkdU1HZ1dkNUVHdmJ1ZzdBYUtpaUhi?=
 =?utf-8?B?YmFUZ3BuWi9WRHZLOHlTL0FoVW9rYzR2NEhtclIxQWdJZ2ZOd1A0M2RWeS82?=
 =?utf-8?B?N21Jc1pkeU51eDZPMWJvL2t6M0ZyQkt4OGZIR1hnVjRuZ2lrdkwyU2dNSXVH?=
 =?utf-8?B?OFVCc3FqdHRqNW42Y3pBaXNYV1RuSGFjSGUwVjYvN1d1VkJpT2tLTHhqQkxH?=
 =?utf-8?B?R1pNUnNtenBwKzltNHZqdXl0RlpwS3FYUnl2RytmeUxtWDdUWjVYS1RFakFU?=
 =?utf-8?B?MFB4dUlFaVdhVmxLNXRRdzBqdDRva1pwYnJvdHBCbVNqV3Q2ejRRbnN0SjEy?=
 =?utf-8?B?aGtpMjBnZ0tNYWM1WnpIRnpURzk4dC9oaElaS0xacUp0NlRHZkQxQ0xqcDFC?=
 =?utf-8?B?b29OdUhFR2QrcTZ1OU8rb1pCb0JRT3BnUDVLaGpwaXpyNjM1SE8yT3poajNy?=
 =?utf-8?B?dyt5b2w3Y3E3a3pKWDFDR1hoMWl4d1lCaTVOVFFhRHIzQXZXVFVzNXAxZ2tr?=
 =?utf-8?B?amVGTSs3SnNOUGlETlYvZUwzUnl2RE1IUVZaTkY2Zzc1NkMrcUtOTmVheXpt?=
 =?utf-8?B?b0pHRStzMTU3Y0FMNzFYTDRtdS9iRWxWc0dZSm93bm52ZjIya0VzZ2NQaG5C?=
 =?utf-8?B?aGtuSXBFRXVjZFRJYTQ4UXhteDREK2xJQ0FqYjFEdGJVMVdhS0o5US9hclhx?=
 =?utf-8?B?dEVxREYvM3hIN1FEemd3eHJnSVlRQVE2d2VXaTZjcnQwV3JTajdockFhamhi?=
 =?utf-8?B?Tk5lQW9qaGE5bGhzb2d6QU56WmpVcjZ5a1p5S3BqTC9PRG04WDNXbXBLS3Rk?=
 =?utf-8?B?Z1FxbVVWYUNGODhPZlBiWWltRjVEQzU0RGt5SlkzSWptZFVYZnZHN010TTYz?=
 =?utf-8?B?TVZHbmIwWDJIZ1U2bjRqeUY0SzloM3J3eld5ZE5GMFNHVWg5NEJQS0xUdXhH?=
 =?utf-8?B?dm5xK24ramJ3PT0=?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <014475956F0B9441820927EE3ECFFDB0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9794
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 8a0e6f84873f4a559a9fa4f5970ba0fd:solidrun,office365_emails,sent,inline:c6763fbd4fd371ceef3bec0bbd8a9947
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB3PEPF00008860.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: eddf8914-0db2-4b15-59ee-08de019ba3d8
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|14060799003|1800799024|82310400026|35042699022|36860700013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amhNSUZxS1I3aCtBUkRWREZiTmVQT3B1RWZyQTdyOHlLS2JjQXRpaGdlSWR5?=
 =?utf-8?B?bTlNTkppaFJReDdvbEl2ZGViRHZ3K1NGekQ2Ri9PRDlsQ3JsdWdZeGxjRGxu?=
 =?utf-8?B?d0h3WjIzUm9URm9lUlMyT1JVTStEb1g1akZmakNUeU9zOERvaEdUYldiWTBN?=
 =?utf-8?B?QmJnWjU4WGZUbWQzVEp2M3VzREwrRHpVK29XQXc1RG5YK2VKdFBCYmJCL1Nm?=
 =?utf-8?B?cGJBZkVzNGVDUm9kUHYrSW50SFJkWU1xSnc1Um1RbmRhNW9IRC9BVzZ4T1NZ?=
 =?utf-8?B?cTl3THY0R1J4S3JZamdiMFF6WGMxTnZjOGw5K2tiVTR3bDZGeXZ1bGN5Wm5u?=
 =?utf-8?B?U28vMHpTcXd3NnNlOEZJN2RTWUZqQ0d6KzdDamxHaHRxeFZDc3BxZ1ovVElk?=
 =?utf-8?B?YnkzbHVoMkxjY1ZtQTIrSWN5SjBiSGlFVlorQUdzQVVlN2oxSWZqS3ZjbTM1?=
 =?utf-8?B?M0RyUFJuRTF3V1M2enFYNHVhN0RSQzNQdGdwTnpKZ1RiWXZKUXJPY3lYOEF6?=
 =?utf-8?B?TlhweCtUR05BdjNhUTJUUnpJOXB5T1ZpbnE1ZVVCcmhaRkFLZ1plYUtJRFB1?=
 =?utf-8?B?OUhTL3B3eDhMVzRNY1M4bXowdTBsRFdYRWVxZ1o4ZGlCcDdTMjdDaFhpU2Nr?=
 =?utf-8?B?bFQ4dUxaRGRuM2I2dEhldlJVakJPYU95LzFaQ3VSczdYcVNrajdoR29idlpp?=
 =?utf-8?B?aWF0c0JIbGRVaWFTa3h2L1ZLWGxFQnREZVB2alp4T3ZweTJZMklRVGVPOHZa?=
 =?utf-8?B?U00xMGVGTnFjUWRKWmtWK2NCUVZlZG43SSt1QUFTcnlXWjVPdml0Q2Jld3c1?=
 =?utf-8?B?d2lnbG84V2ZpUkJDditsYkhIQnFTbi9LbEp5Q2dCY2JDODBSclhOY2E2R1FL?=
 =?utf-8?B?Z0FEdytIRE95anJBOElhUFFhMGFZTXdZU3FhV3JYZEJ2eG5Sb2w0Q2NiRGNZ?=
 =?utf-8?B?NFFvYmxKbE9mWC80eHU5YUJrQjQ5ZGVBZk4vWXBOT005U2RLV1V4U2dRMjJo?=
 =?utf-8?B?bkhhYnVQOEhHbWRwUGhXRDhqT2RrOUxTVCtvZUpOZkVtcW1RMzB3alpZTURu?=
 =?utf-8?B?czN5UThwK2tNNy9CTHVnUUk0ODV2SFpzNzlMaGdyZ29Ga21MK09CcU4yY1Jz?=
 =?utf-8?B?NlVXWGhpdk9qMWk1VnErYXhvQksxeWJLcmkyeGh5MWZwUUt5SGt0TmlmVm1z?=
 =?utf-8?B?U1NYb1IxUlpDWnBDNWFLQUlZanpvNXYyek51ZHR2em54Ti9qTDNyZGxzRGlU?=
 =?utf-8?B?YnRRT080aWdRQ2Q0N3hwSS9lVGJ1MFRmd3NyVjFsWmpYc3F2L05EdEQ1YVBV?=
 =?utf-8?B?OG41UDkxbnZCL3loN3pyOXEwdzBmaUVnOTFMWTJuN25XZTcyeW1ia1RUbzgz?=
 =?utf-8?B?ZTc4SmF0em83YjF1a0JoNXRVbmhVUUpuOUdhT25zaDNESWJXYTNCSUQveSs4?=
 =?utf-8?B?WUNua2pZanU0YlZ5QjB1S1UzNEdGUFYrdTNERTZXMmJ2TkZoeVVoQnRzdU0v?=
 =?utf-8?B?aVBXNkRxVnBDQXMwSnlMb2FOQlRDeEVFUlhBVHRaWXowb1lkOGV4YmI3K0Qw?=
 =?utf-8?B?UXFXMCtMb1lGTTF4Y0hLZzdsblJ5QjU4djN0MzQvcXRmNjlQeHZCaHhhTkdL?=
 =?utf-8?B?Y1VjWS83c050Q3Nnc3pmb3BmTWVzbmplM3JOeXo3T1lmL0c3eHZOVC9NMTF4?=
 =?utf-8?B?MVNENmhWK3JqODBZQnhBQjd2NURPV3lXUGd4OEtDRTEwZjZLeVVKK1E3WlVR?=
 =?utf-8?B?TTJUK0ZmWVpPc283RkFoenlydEtxS25ISlhQRzhvQW1wd241c2R6enVONzZh?=
 =?utf-8?B?RmZ6dG5SbWpwNENoUjJPaGhCak1zZXdvZ21SSjIxSDJ0WXZxYTlEc2lWcmRH?=
 =?utf-8?B?THNvOC94YVpnaXMvZXNNcHlYQlVXUnRwNDg3UmozbWJQbFR2MVBORjZ2THN1?=
 =?utf-8?B?bDFLdFBqTVBab3RVNkNVS0ZZS0ZXamtRZEVQd2YwTEdlZlFPUjVwNEc0Y3FY?=
 =?utf-8?B?bnlqam5ac2w4TzN6S2gyc3hjVDVPU1lZT0VRTUJRN1ZLWnZQRkhwRU1wcGhh?=
 =?utf-8?Q?R844Ss?=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(14060799003)(1800799024)(82310400026)(35042699022)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 10:08:46.6510
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 937ac75d-8a47-4ef7-67dd-08de019bacfc
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB3PEPF00008860.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_030859_091583_9C09C11E 
X-CRM114-Status: UNSURE (   8.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Am 02.10.25 um 05:03 schrieb Rob Herring:

> On Tue, Sep 30, 2025 at 05:07:35PM +0300, Vladimir Oltean wrote:
>> On Fri, Sep 26, 2025 at 09:05:00PM +0300, Vladimir Oltean wrote:
>>> Going by the generic "fsl,lynx-28g" compatible string and expecting all
>>> SerDes instantiations on all SoCs to use it was a mistake.
>>>
>>> They all share the same register map, sure, but the number of protocol
>>> converters and lanes which are instantiated differs in a way that isn't
>>> detectable by the programming interface.
>>>
>>> Using a separate compatible string per SerDes instantiation is
>>> sufficient for any device driver to distinguish these features and/or
>>> any instance-specific quirk. It also reflects how the SoC reference
>>> manual provides different tables with protocol combinations for each
>>> SerDes. NXP clearly documents these as not identical, and refers to them
>>> as such (SerDes 1, 2, etc).
>>>
>>> The other sufficient approach for Lynx 28G would be to list in the
>>> device tree all protocols supported by each lane. That would be
>>> insufficient for the very similar Lynx 10G SerDes however, for which
>>> there exists a higher degree of variability in the PCCR register values
>>> that need to be written per protocol. This attempt can be seen in this
>>> unmerged patch set for Lynx 10G:
>>> https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/
>>>
>>> but that approach is more drawn-out and more prone to errors, whereas
>>> this one is more succinct and obviously correct.
>>>
>>> One aspect which is different with the per-SoC compatible strings is
>>> that they have one PHY provider for each lane (and #phy-cells = <0> in
>>> lane sub-nodes), rather than "fsl,lynx-28g" which has a single PHY
>>> provider for all lanes (and #phy-cells = <1> in the top-level node).
>>>
>>> This is done to fulfill Josua Mayer's request:
>>> https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
>>> to have OF nodes for each lane, so that we can further apply schemas
>>> such as Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
>>> individually.
>>>
>>> This is the easiest and most intuitive way to describe that. The above
>>> is not the only electrical tuning that needs to be done, but rather the
>>> only one currently standardized in a schema. TX equalization parameters
>>> are TBD, but we need to not limit ourselves to just what currently exists.
>>>
>>> Luckily, we can overlap the modern binding format over the legacy one
>>> and they can coexist without interfering. Old kernels use compatible =
>>> "fsl,lynx-28g" and the top-level PHY provider, whereas new kernels probe
>>> on e.g. compatible = "fsl,lx2160a-serdes1" and use the per-lane PHY
>>> providers.
>>>
>>> Overlaying modern on top of legacy is only necessary for SerDes 1 and 2.
>>> LX2160A SerDes #3 (a non-networking SerDes) is not yet present in any
>>> device trees in circulation, and will only have the device-specific
>>> compatible (even though it shares the Lynx 28G programming model,
>>> specifying the "fsl,lynx-28g" compatible string for it provides no
>>> benefit that I can see).
>>>
>>> Change the expected name of the top-level node to "serdes", and update
>>> the example too.
>>>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>>> ---
>>> v2->v3:
>>> - re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
>>>   top-level "serdes" node
>>> - drop useless description texts
>>> - fix text formatting
>>> - schema is more lax to allow overlaying old and new required properties
>>> v1->v2:
>>> - drop the usage of "fsl,lynx-28g" as a fallback compatible
>>> - mark "fsl,lynx-28g" as deprecated
>>> - implement Josua's request for per-lane OF nodes for the new compatible
>>>   strings
>>>
>>>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 159 +++++++++++++++++-
>>>  1 file changed, 152 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
>>> index ff9f9ca0f19c..e8b3a48b9515 100644
>>> --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
>>> @@ -9,21 +9,123 @@ title: Freescale Lynx 28G SerDes PHY
>>>  maintainers:
>>>    - Ioana Ciornei <ioana.ciornei@nxp.com>
>>>  
>>> +description:
>>> +  The Lynx 28G is a multi-lane, multi-protocol SerDes (PCIe, SATA, Ethernet)
>>> +  present in multiple instances on NXP LX2160A and LX2162A SoCs. All instances
>>> +  share a common register map and programming model, however they differ in
>>> +  supported protocols per lane in a way that is not detectable by said
>>> +  programming model without prior knowledge. The distinction is made through
>>> +  the compatible string.
>>> +
>>>  properties:
>>>    compatible:
>>> -    enum:
>>> -      - fsl,lynx-28g
>>> +    oneOf:
>>> +      - const: fsl,lynx-28g
>>> +        deprecated: true
>>> +        description:
>>> +          Legacy compatibility string for Lynx 28G SerDes. Any assumption
>>> +          regarding whether a certain lane supports a certain protocol may
>>> +          be incorrect. Deprecated except when used as a fallback. Use
>>> +          device-specific strings instead.
>>> +      - items:
>>> +          - const: fsl,lx2160a-serdes1
>>> +          - const: fsl,lynx-28g
>>> +      - items:
>>> +          - const: fsl,lx2160a-serdes2
>>> +          - const: fsl,lynx-28g
>>> +      - items:
>>> +          - const: fsl,lx2162a-serdes1
>>> +          - const: fsl,lynx-28g
>>> +      - items:
>>> +          - const: fsl,lx2162a-serdes2
>>> +          - const: fsl,lynx-28g
>>> +      - const: fsl,lx2160a-serdes3
>>>  
>>>    reg:
>>>      maxItems: 1
>>>  
>>> -  "#phy-cells":
>>> -    const: 1
>>> +  "#address-cells": true
>>> +
>>> +  "#size-cells": true
>>> +
>>> +  "#phy-cells": true
>>> +
>>> +patternProperties:
>>> +  "^phy@[0-9a-f]+$":
>>> +    type: object
>>> +    description: Individual SerDes lane acting as PHY provider
>>> +
>>> +    properties:
>>> +      reg:
>>> +        description: Lane index as seen in register map
>>> +        maxItems: 1
>>> +
>>> +      "#phy-cells":
>>> +        const: 0
>>> +
>>> +    required:
>>> +      - reg
>>> +      - "#phy-cells"
>>> +
>>> +    additionalProperties: false
>>>  
>>>  required:
>>>    - compatible
>>>    - reg
>>> -  - "#phy-cells"
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: fsl,lynx-28g
>>> +    then:
>>> +      # Legacy case: parent is the PHY provider, cell encodes lane index
>>> +      properties:
>>> +        "#phy-cells":
>>> +          const: 1
>>> +      required:
>>> +        - "#phy-cells"
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - fsl,lx2160a-serdes1
>>> +              - fsl,lx2160a-serdes2
>>> +              - fsl,lx2160a-serdes3
>>> +              - fsl,lx2162a-serdes1
>>> +              - fsl,lx2162a-serdes2
>>> +    then:
>>> +      # Modern binding: lanes must have their own nodes
>>> +      properties:
>>> +        "#address-cells":
>>> +          const: 1
>>> +        "#size-cells":
>>> +          const: 0
>>> +      required:
>>> +        - "#address-cells"
>>> +        - "#size-cells"
>>> +
>>> +  # LX2162A SerDes 1 has fewer lanes than the others
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: fsl,lx2162a-serdes1
>>> +    then:
>>> +      patternProperties:
>>> +        "^phy@[0-9a-f]+$":
>>> +          properties:
>>> +            reg:
>>> +              enum: [4, 5, 6, 7]
>>> +    else:
>>> +      patternProperties:
>>> +        "^phy@[0-9a-f]+$":
>>> +          properties:
>>> +            reg:
>>> +              enum: [0, 1, 2, 3, 4, 5, 6, 7]
>>>  
>>>  additionalProperties: false
>>>  
>>> @@ -32,9 +134,52 @@ examples:
>>>      soc {
>>>        #address-cells = <2>;
>>>        #size-cells = <2>;
>>> -      serdes_1: phy@1ea0000 {
>>> -        compatible = "fsl,lynx-28g";
>>> +
>>> +      serdes_1: serdes@1ea0000 {
>>> +        compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
>>>          reg = <0x0 0x1ea0000 0x0 0x1e30>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>>          #phy-cells = <1>;
>>> +
>>> +        phy@0 {
>>> +          reg = <0>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@1 {
>>> +          reg = <1>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@2 {
>>> +          reg = <2>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@3 {
>>> +          reg = <3>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@4 {
>>> +          reg = <4>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@5 {
>>> +          reg = <5>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@6 {
>>> +          reg = <6>;
>>> +          #phy-cells = <0>;
>>> +        };
>>> +
>>> +        phy@7 {
>>> +          reg = <7>;
>>> +          #phy-cells = <0>;
>>> +        };
>>>        };
>>>      };
>>> -- 
>>> 2.34.1
>>>
>> I should have realized sooner when Rob/Josua requested the changes for
>> backwards schema compatibility in v2:
>> https://lore.kernel.org/lkml/20250925080317.2ocgybitliwddhcf@skbuf/
>> that despite our attempts to preserve compatibility with old kernels,
>> we actually fail to do that. Actually I should have documented my
>> earlier thought process better, where I already came to that conclusion,
>> but which I had forgotten when told that this could work...
>>
>> The SerDes schema itself is technically backwards-compatible, but the
>> problem is with consumers, which aren't. In old device trees, they have:
>>
>> 	phys = <&serdes_1 0>;
>>
>> and in new ones, they have:
>>
>> 	phys = <&serdes_1_lane_a>;
>>
>> Because the consumer has a single "phys" phandle to the PHY provider, it
>> either has to point to one, or to the other. But on old kernels, we do
>> not register PHY providers per lane, so "phys = <&serdes_1_lane_a>"
>> results in a broken reference.
I would not expect being able to use a new schema in an older kernel.
Maybe DT maintainers can confirm whether anyone expects that.
>>
>> There are 2 directions to go from here:
>> 1. Have optional per-lane "phy" OF node children, which exist solely for
>>    tuning electrical parameters. We need to keep the top-level SerDes as
>>    the only PHY provider, with #phy-cells = <1> denoting the lane.
>>
>> 2. Accept that keeping "fsl,lynx-28g" and overlaid properties has
>>    absolutely no practical benefit, and drop them (effectively returning
>>    to Conor's suggestion, as implemented in v2)
I don't quite understand how keeping or dropping fsl,lynx-28g compatible
impacts the ability to set phandles to the base and child nodes.

An updated driver can be made to handle both references,
and an older driver will only handle the one to the base node.

>>
>> 3. Extend the schema and the driver support for it as a backportable bug
>>    fix, to allow registering PHY providers for lanes with OF nodes in
>>    stable kernels. This avoids regressing when the device trees are
>>    updated, assuming the stable kernel is also updated.
I think whatever will be done with phy sub-nodes on the serdes block node
should not count as a fix to be backported in stable.
Any attempt to backport reference to &serdes_1_lane_a will produce a
compile-time error.
>>
>> It's not that I particularly like #2, but going with #1 would imply that
>> lane OF nodes exist, but the "phys" phandles do not point to them.
>>
>> Combine that with the fact that anything we do with the 28G Lynx
>> bindings will have to be replicated, for uniformity's sake, with the
>> upcoming 10G Lynx SerDes binding (very similar hardware IP), and #1 is
>> suddenly not looking so pretty at all. I.e. introducing the 10G Lynx
>> bindings like the 28G Lynx ones would mean deviating from the widely
>> established norm, and introducing them like the widely established norm
>> would mean deviating from the 28G Lynx. I can easily see how someone
>> might look at them one day and think "hmm, can't we make them more
>> uniform?"
>>
>> OTOH, the fact that device tree updates require kernel updates (as
>> implied by #2) is acceptably by everyone in this thread who expressed an
>> opinion on this topic.
>>
>> As for option #3, while IMO it would be a justified "new feature as
>> bug fix", it sounds a bit counterintuitive and I'm afraid I won't manage
>> to convince all maintainers along the way that this is the way forward.
>>
>> I'll wait for the merge window to close before reposting anything, but
>> I'd like an explicit ack from Rob and Josua in the meantime, whose
>> change request I'd be effectively reverting, to make sure that this
>> topic is closed.
> If #2 is not going to upset anyone (that their device stopped working), 
> then that route is fine.
>
> Rob
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
