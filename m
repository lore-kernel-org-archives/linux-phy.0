Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62097C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 06:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQjcHYLH1lZN3QhN2OvaSTvxzP9wnx7VyevlIkGMrqA=; b=qQtBHZSmB63+3K
	PHeFAr+eivosMFZKcuIdRMeMXfwVZauNrb58lQozMZ5PBLncvldPpaFxTBInzyvJW5ZIo8wh6WoZT
	1bnwxdSncAy8PAmh6YtQiwAuWFsBjqjaTy0FkVPTNBOwbnpyBobTNq4iSBSRmJdAakPo3yB/lR26t
	LgtNK/fFSax9bngXzQb/x0FCZobBMLdV3zsTHfH5XJpenWhbCMKbK4vBhTHXMLTE8bEjbLDQ8hxsi
	GBYjPt+eJWHvZPIeecYuFgFEirZ4B0Dpdim3btHy8jzjW/+buiTxXjqD5EQ9phixF86Svu49Zq5/U
	HE5V2zbQ5y7sl5OiBGIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHHqa-0000000BJcX-3yRe;
	Wed, 12 Jun 2024 06:52:40 +0000
Received: from mail-tycjpn01on20600.outbound.protection.outlook.com ([2a01:111:f403:2019::600] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHHqX-0000000BJc0-1tth
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 06:52:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3K3RAhJEkJL106ZSts1ItwXnF9oUwle4MhYDK86ola4w8bEJ5pZZfwhSkyZF2SyXHXyQHE54RW+YIFBjk+tgOGm6aXVnAJ8lkP88rlfFF6pnsx0kRk5y2VhTtivNmFDd7TiGV8SGcgT5E7m9WLg7KlW9H+hSgwKn8JK50JYnJuTdFQSU0NQNRZJH09cCm2X/4MWUWh2Z5CyJltp1XVFcdEM9rPNt6unYUx7TSmCyk3j4IfV0UgG7oAdQMjBLulxRQhqnpU4OwUJuboK+0IZJp+pcSXvUFU7uFMK9gYyDIfIlE4DwRW8N+iTyxgw4I+AzqHtOSQ8gimfthAkWlmp+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03iFqg6GOkFLaL6f1JZ94U6JQERN4Y7PBkKhKsnl9z0=;
 b=lJzgsWjqGZv4NozfX3RetNqirZjvlvMWvfevYlVZQrtArz39ZUU0uYTrNa971UrvBQcgrHGjHsjfQNKeM6lRXnnCeXUGoBt43imgb6D8CBT1LN2mBBRcaU1ekHb9N30SyZSVUI05LJLZKrzLoQ3nAx4ou/NAVCy2KHRUEYRlptk6/hhvXXNczNkn8+CAMlDUh7TCc52BCwnpCQmapkC3NuJv/F3p4W+CKUidcxypYoQqKHWmZWaZw32sIsBvvQYc3uPYYIKRCFQy4j/+yEVXolPOWPaNbXk/CQwQNxc/j9kO/dFpZbE4aQEfAgM8fPz6ACYTPLZGmECuaoBnLY+z/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03iFqg6GOkFLaL6f1JZ94U6JQERN4Y7PBkKhKsnl9z0=;
 b=E2v+NUsncppSPi6ns/QLjwoB49Pkvr2ZZ6JSXDxnych+J05LUcR23lPFMr/O82EZxmNV6fZAFXhuHjGBMSPLkpFr9PK8ODFtUwKBYXlYNz6SB5brG7gm3/DeOFDfhbFHMqKukQ0mcngQgDz+uYk5ARJlPEH/kvB/K4SDmXn5I0o=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYWPR01MB10001.jpnprd01.prod.outlook.com (2603:1096:400:1d5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 06:52:29 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%5]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 06:52:29 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
	<magnus.damm@gmail.com>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, biju.das.au
	<biju.das.au@gmail.com>
Subject: RE: [PATCH v3 6/6] arm64: dts: renesas: rz-smarc: Replace fixed
 regulator for USB VBUS
Thread-Topic: [PATCH v3 6/6] arm64: dts: renesas: rz-smarc: Replace fixed
 regulator for USB VBUS
Thread-Index: AQHau+8tQfwk3xAR1EK3dnMFIggJ3LHDrmKAgAADofA=
Date: Wed, 12 Jun 2024 06:52:28 +0000
Message-ID: <TY3PR01MB113461A3894AB11DDC6A90D2486C02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
 <20240611110402.58104-7-biju.das.jz@bp.renesas.com>
 <b4d04a73-22eb-44f3-af03-8f8686869c9e@kernel.org>
In-Reply-To: <b4d04a73-22eb-44f3-af03-8f8686869c9e@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYWPR01MB10001:EE_
x-ms-office365-filtering-correlation-id: bed19cd3-b9d6-462e-ace5-08dc8aac39e3
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230032|376006|7416006|366008|1800799016|38070700010;
x-microsoft-antispam-message-info: =?utf-8?B?eS83a2hSRDV3S24vQmcwZGQwd1ZtL0hjRHJNQzRXMWU2bldVRXR4WmhNMytF?=
 =?utf-8?B?aU1hZWpnaUJNRy82REc2d2hUVDEzRFgwcFM3ZjduRkl0eVY0SkpHV0hwWjBh?=
 =?utf-8?B?ZGlDZ0pXSWQ4VzBtZGRGOFptMHFSYkFNUEF2UitzaWt3K3FENnBpMFlGWUU5?=
 =?utf-8?B?VWpKVWg2ZWFock5CcFVsdEh2ak5pMUNPZ1ZOYnVoSDZ6cFhPbkFUVWU4WXlx?=
 =?utf-8?B?aFhrL09ad3B1cXpmc3lMSEZJQnd3cGRNVjIyMk5KOXZkWk5ETk9MN1hQVktC?=
 =?utf-8?B?OGg5dVFVMkMxZFhmK2U0aG5naUJ1V2s3VzBISG9va1lyeStzU0NTcGR0RmVi?=
 =?utf-8?B?SE8wUFdvQWNtZU8rd1NCVzFaWmQvOGM5TU9KUHRMQmFrMndWZHA4aktkNTBx?=
 =?utf-8?B?Q2U0RDIxT2s2T3hQZ2lSVnBjWXI4bnA0ZEhnRGhiNnU5dEt5b3RZS0R2a1BE?=
 =?utf-8?B?N2F6NmdGWG01VUdkRSt1TzRMSTdHelI4QzhTY0l2TEloR3YrQXFmVDVlTEg1?=
 =?utf-8?B?c1AwcDZPTzRzYlpnRVRjQ3pTNW5FQW9DRFA4Uk5Jb1ZrTFRKVUZYbkRXN2NF?=
 =?utf-8?B?Mk1GTHkvSTZuYWZ2Mm9icCtoSFlDcy9CQjdub1FZQklyNHVCVlprUkorV2c4?=
 =?utf-8?B?TGRFbHJPTUZhUzEzblB6Y0FPOTJqdjUxWFhiQ2FKdEp2NE5OT1hqdExONGJv?=
 =?utf-8?B?Z0NUYnVBMTNkVXd2WEYvNkpXQlRTUm5TWnAyTVUvVzZTcjVPUXFCVkxFRVlh?=
 =?utf-8?B?eGJtRmVDaXlFNit6RTNjM0VkQ3FmaTh2U1U4Y3QwZUE1M2FTRmFtNVd4VXpO?=
 =?utf-8?B?b0FEMDQ0M3B0Q3hSZWpQU0p0dXlxOVByZnl2b0dibnduTHJUdDRKVDRMa1lj?=
 =?utf-8?B?YTlNemtzdXY4UmI0Q2kwK1FIZTBXMlpBUlNtVzlJdGxQeGJFNXlFTmVEQ2ND?=
 =?utf-8?B?ZVJDRDdJS1gvMUJUYk13TjEzcVRUQStPVVZET3VBT3RhVE9hTERxdE16bWRP?=
 =?utf-8?B?aDBodnNTeEtBaktZS2JLVTlMcEs1aGtwc05xMTlJSEdtQjh2aW5IUTY2Z3pJ?=
 =?utf-8?B?WG52RDQxRk1RUUI2bkZ0TThSNTlSTWJadmJsOVBaRkZBTnpPT1lQNitablh2?=
 =?utf-8?B?R0FhUjR0Y05ka3B4UkxRT082bHhMQy9vdnZBMU9RUWNlanJMRHZpUXNYWldC?=
 =?utf-8?B?dG9WV0MvcEFmeitQclRHTldWc1g1cDhGZHRWZFNaOGI0WndHSTIyK0d3dm03?=
 =?utf-8?B?NTE1RUVpdVZ0QmlOdmNBQi8yM2ovMm11UFFDYzV4YVd3UWJFMkxHQTBBaDA4?=
 =?utf-8?B?L3loaFVvUFB6N2Y4Y0hPT0V6SWFQK3Y2U21nRG12c3BjK2hseW9nWUcrSDE1?=
 =?utf-8?B?UWhUUUZOM3ZTY0ZPUHVxVTlxeVQwOU5YbjJPOEJ4N0ZRemRqcUJwTVYycmtu?=
 =?utf-8?B?OUs1b3N6Y2pEcnlZb3RqcUtFMHVEV2IzdXU0Q0tScG41M09oS09XcThOekNh?=
 =?utf-8?B?V0RFVzBiSk16OUZrVTBuRVBjUmtXbTE0TGFSN29XSU1mdFIxOEpaZUpnWUpC?=
 =?utf-8?B?WkxnRE03elhYVERiN1pMMC9VaFVzaHBnOENlRi8zR2V1WU5leFk1cTczU1Nm?=
 =?utf-8?B?ZWNCSXRUcnduU1ZMUFpYYk5rNUZ3QzJzdnNaZXRSRTRKNzhzdWNLcGlnWU45?=
 =?utf-8?B?SkdQU0IwckhkN29oV0kzTzRLMUFkOXFiOVpGcjcyZnY0T1d3TS8rZWo4RWRv?=
 =?utf-8?B?WWtwQm5TR2svTlE2alZDR29Kc2NxVzVBNWh5NVZZYVo1USt4WU5WNDlHSnhD?=
 =?utf-8?Q?k+V84jyfhCiJEQow9wW1DqghmhkSxVRQkz6ZU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(376006)(7416006)(366008)(1800799016)(38070700010);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTQ0SGZVL2pkbWo0Y1ZUeGIzQktqR0ROUkdabGZqWFFOTDRxZ2VlNnh2bm1s?=
 =?utf-8?B?aUZJTHRiQm1CRXBoT3gya29YRUNjbCtNTmhsM0ZzY0w1MUsxWkxJWisyVnk5?=
 =?utf-8?B?bTFzMlJmZ3F3M3luZXRKRDdGTm1FRWhzbVNSZHVTV1dLbDh0TVZBcE5xL3Bo?=
 =?utf-8?B?UTRBdzJ2dmxuTnAwK2pPYTkvRnJ5SVBQdDB3WFhYdmVPYnQxcis5QjlqVXF5?=
 =?utf-8?B?UUNEZjhWNXhPbWFtSjRCNG45a0Y1akFIVXZBVll5ODJrK1NQbXV1RmRITkw0?=
 =?utf-8?B?SHZEekhYeEFISjdjYTdOT2l1MklOR0kzMTd3aHhmM2g4ODNGTnRTRmJYTTVU?=
 =?utf-8?B?QlRRblNOMUV2ZEVXcm5DbUw4dzFMQ0c4ak9qZ1lxNUtkcWVOOUVGdzgwNlhC?=
 =?utf-8?B?OC9Xdnc0WGJSbXNIVlljRTFZdmtNMWUvNzNQYUwvT0xHRmU4VHpVc0pEQVZq?=
 =?utf-8?B?TEpIeHJCYnFyY3FIOXYrVDJZcGJpNFFRZFJTVTFGOGNuSFVMVU10S012VHE1?=
 =?utf-8?B?cEYyMSs1MkdvLzVBM2pySFFMQWtlM1JYVGRXU0VjTjE1QmZBekNoY1hJUTl0?=
 =?utf-8?B?MGh5NDRtMU5iZVBaWUZnZTJWNVdjK3Z0QmIzeXRVVERFcE1rN3NENUtJMXFh?=
 =?utf-8?B?L2twdUs1NEFERElWR255NlA2blZKK2Y4S2JJNTdML0J5WENqaGsxcGErcTk3?=
 =?utf-8?B?RUs3UXFSVUl4Z0oraVlNcTRHaGpqeFBWQkpaOVU3ZFppMVVoY0hCdWpWN1ND?=
 =?utf-8?B?Ukl5KzA3eFFoYzU3ZWx0QnFIMFgyT0tHY0hzQThkUnFOald4MXNvNnUzRDJz?=
 =?utf-8?B?SENWNmpoZGpYREtuSHQ2Tm5iMW9yUUlBM2E4VVRnODdNdWNsemlkWDVLTzVS?=
 =?utf-8?B?K3B6ejUxdDluZVo3S3lvL25Sa0U1eFFXbFBGZUJLMlhSY2J0UGZTMDk2YVlt?=
 =?utf-8?B?NlFJeWhxanAya0VSMnM4V2VQK0g4QTJmOGhXWW5rSDB4TU1rSDJ5SktRbnNX?=
 =?utf-8?B?SDhSaU1EcjNrY0xqMGR6QVJZMjNUdGVJZll5SGFOTDNIK1l5SnhhZ2ZpdnJY?=
 =?utf-8?B?cWhvTUE1OG5TR3d4N3c1R0lQeUg1YmZiSXBsUGptaHpsaG9rVUFTbzJZQXpi?=
 =?utf-8?B?SnQ3VEZSYk5CUU9aSFBMS3NSekpWQ0NHS0dPK2lSWGxTb1dlK3N2N1VtdkFy?=
 =?utf-8?B?Z1VtZnF1Znd1YkhjL2p0TllqWmJLb2pib245WGhCNkhmMjFQbVJDbVMvY2Nu?=
 =?utf-8?B?OTg0a0NqVFZlbUFBVzMzSVVWM1FrUVBoSkhzakJzVENLZ0M1WjFDT3ZrWXBI?=
 =?utf-8?B?bnlwcmhKUEthQmRFQUxMZXhnKzFVNUJPUDBCV3RTcVZtZ3BpK29aRHpISUgz?=
 =?utf-8?B?aVg2cW9Qa0x0dTFxMzhGOFZuc05vL0F0M3dBSHUyQmFuVlRaOXJrdVZYQXNG?=
 =?utf-8?B?c2h2RDNSUzN3TWd3WE9XUzA3VGtmYy9rbXJSNVVDTUExVlhqS3g0OWhraEx0?=
 =?utf-8?B?ZXFuVXlVajlITno1VDRFVmxNQy8wQ3hHWHJqKy94S1ZVazcwK0RJMFUrdVRT?=
 =?utf-8?B?MjRyamdOQ2h4Wko4SmFkLzJFMlhybERvNTFvem9BZzVub3B6OGhqUmlSelBm?=
 =?utf-8?B?Mm9MTVN4Ujl6NnlzbnVlNzJIS1FBUWRYcTJPN2UxalU2WjhjU0FpSXV6dVRw?=
 =?utf-8?B?VVFXSWUxK2ZvSEFYaWNoMGFVd0Zyd0N5NDBqTkRHbmNPMFIySVJ1Y2lrNG9E?=
 =?utf-8?B?Ly9KdXZQT0RCNWhPR3VKcURxbVdJbko2cUdNWlh2R2I4T0pkR2JQOXhvbXRs?=
 =?utf-8?B?YTk4ZERoZGJDM0xtRnUzUHFISjdiSE9HMmF0aWcvWTM5RkJwek9ZdjVraHNB?=
 =?utf-8?B?NjdPNDFXVS9UTnRCUjZFL1JvSUh3bS91bUh4ZkFXZUdlN1dySmdEbjF0NHBN?=
 =?utf-8?B?aGlKaGVSOVBQY1g0SXlyYlNTK0tUdnRTOG1UUE8vdm1xU0d5REZDV3ZCenp6?=
 =?utf-8?B?ZUtRSzRZdDg3REJrOWVhRjJna3ZPcFlzNTdxcytCM3FPRE10WkxDUnhFaXNG?=
 =?utf-8?B?YU1wT3RkQXZITDRGQXpZOHJQdmxDbkhnTjdmYTRKRnNsV3FCNVZ2VTlYVzl6?=
 =?utf-8?B?UlhMYkZYWUlhVnZ5VjM0QXJnTFROUWpscW5wUXEvKzhSSFIvTndBMGcyMnZ5?=
 =?utf-8?B?eEE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bed19cd3-b9d6-462e-ace5-08dc8aac39e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2024 06:52:28.9587
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GD8h405ed2cJ8b0jizwdSd0FXJQ1e7eyPGgcxRwXLInOarcwO+f7knpcBxigBiwy7j9DF4YY/vF/yiX+ybbqedTfWWLVoKbJ6pDE+ZB1ens=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB10001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_235237_592335_E2AC4DA4 
X-CRM114-Status: GOOD (  10.09  )
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

Hi Krzysztof Kozlowski,

Thanks for the feedback.

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Wednesday, June 12, 2024 7:38 AM
> Subject: Re: [PATCH v3 6/6] arm64: dts: renesas: rz-smarc: Replace fixed regulator for USB VBUS
> 
> On 11/06/2024 13:04, Biju Das wrote:
> >  &phyrst {
> >  	status = "okay";
> > +	usb0_vbus_otg: regulator-vbus {
> > +		regulator-name = "vbus";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> 
> These two voltages look unnecessary. You know the voltage of your LDO, don't you? It's fixed,
> cannot be anything else.

Agreed, Will drop the same.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
