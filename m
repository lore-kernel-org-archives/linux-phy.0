Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFCFCCF9F8
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9XnYC47S63g6rdIZ1HFIXBoIDjViMcI4PeFuxEmJPU=; b=Jo1JH3MlBCINGS
	PW35g/kKdlRpKyuUi27Kqv9G6vwn4vwUYVtHgm5UAKmC9L988g/VDnWGjTmhzfSynNYV/eXiJ1lEY
	UbXTu52aVUL+Z2rnA+nYMhNc87nSHSlqF6yJ4Y+blbousEvXb1zHhDrIgkJF4ZaY56Hk4SZkT62Aq
	rkJ3371WvhfYc4n2bnPEp1kU2DeGYJJ0yGjJ3SiNWEpcfGMmYtPElLA2E769MS1i2mBqo4/q5hagk
	QC5wHrT8+BVK234dkAcF+/irQmWPQceQgkA6YrilAuaROnsnHNT2OroJjHdQqPkBr5wWc+2FiZh96
	RdQ8DNtxWKgp1O6DleuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvOx-0000000F4UP-01Sm;
	Thu, 06 Nov 2025 08:31:27 +0000
Received: from mail-japanwestazon11010051.outbound.protection.outlook.com ([52.101.228.51] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvOt-0000000F4Ti-16in
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 08:31:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PmryVRN0OmSXzUB3n5ROeaXh8/05l4tcTdtGYp1Dv1p3fIAEw1kbqztIXIrJ7Q2qbpoHSmjnjVXKap97hDaitdLnHxKRqiaSfNWsXGxgiHXCdaxS0tkzTPWKjTvxNSUeoQJH/IjreHLnnnCkcbWiDMgDZs2NfeKsPKcpJ4JS0DCOZLktQBcid/c90n0he3HS1COumga+dTyOPsbUtXwmEFqsb1BEZOjpSPuNNMLPxQBirZ2TjAixtq5R3MeRy31sXcNcxq5XrTwRG9kbVX/IeAhKEdMuJUiOi3zf6UBaC+y6PMnauz7XG5ewuBXhaERogPsrNt9YXZdQ0Hv/MA29lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1Ek4H6bMcCuauNazpZ27Jk0x/zjgJrRxAohicYF7j8=;
 b=wbHky6kN5EzMiqyqobvjr3nnL1e1Ra7ueZiPeU1Z+y/HWo2LWbqgCA1pL342LVEiQYFM6oQNEoZ1FTMrENcWOeP7GNQFpYcB28NLneuCVJJiraFT1FIuKoSbowFxVKP2q1EvDyeiwgdQcgwN7b7+99mahMF7iXqjj3ZvtfOYVAyaKmObmGwzZymGY6dbGt6lMN/erU35xAbwE1LyypYm088HFWPmswumUHXtsee/WCwDRJa5CftFjcOpQKix0L+ZzXuHZnDDgfSQho8MBo40mN17SCKkikINcpaoGcEvMuYBpGk8cDvXs1b2L7jxOChnDQosz99QGWZWm4THfdGffw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f1Ek4H6bMcCuauNazpZ27Jk0x/zjgJrRxAohicYF7j8=;
 b=R94Ik/wnc8iTJD3k/UAjDmhmAWEy6ARKpH1Vc8s1xXAA6qdJELxSnWokaVFHgqk6eqSJBRJWAyi1pwJGWpndxkm6XAPaCs7ilvlmZ3A09aCZwh7HP6nlD7lSs8NsSyLi8cWtWpdDX69XHh6V/+xIixrZf9vaf32g29ioojX8B5U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYYPR01MB6668.jpnprd01.prod.outlook.com (2603:1096:400:c9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Thu, 6 Nov
 2025 08:31:16 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 08:31:15 +0000
Date: Thu, 6 Nov 2025 09:30:51 +0100
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 03/21] reset: rzv2h-usb2phy: Keep PHY clock enabled
 for entire device lifetime
Message-ID: <aQxcu8zNmIi8Hl7Y@tom-desktop>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
 <4b760e6e39679edd7f3d3a9a5b4babc7805ffe29.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
 <180fcd1307af02eadc6136512ef78226bc7c00dd.camel@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <180fcd1307af02eadc6136512ef78226bc7c00dd.camel@pengutronix.de>
X-ClientProxiedBy: FR0P281CA0126.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::6) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYYPR01MB6668:EE_
X-MS-Office365-Filtering-Correlation-Id: d2aa316e-5c0e-453f-f907-08de1d0ed9bd
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|7416014|376014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVZUMGYxY0Joa2tiOUNMRTJlTC82cG0rV3gyVmZsZGRGUVJHeGFCM2VUQlJB?=
 =?utf-8?B?elVDSm5PcVk1dTkrNjhjWDhXVDE1WTRKZytYZkxHNHFhUzRjODNkcG0rRUMv?=
 =?utf-8?B?aWp0a1pCaXdWMkpVbjM3Nmd5T0Z4V0JjQWY4VjFoa0VEVlQvZTJvRjlYTU9E?=
 =?utf-8?B?dG9TS0UxUEtSQko4MmNkWWphU2loQzlpNkFBOTBzV2ZtSjFwV05UNDNWaVhR?=
 =?utf-8?B?b3ZMNHZHUFJSU1g1ellSeUtOcURONUdGRUh4TnFrS1hjZlIzcDZyQnQ1SlVp?=
 =?utf-8?B?cE80cXM3aWNQWmtYOVUrYWRmV1QreWx4WmVQallZcmc4ZTdGeldhN0tSK2xP?=
 =?utf-8?B?bTh3R2hBQXVSNXFNTUZpQWQyRklYYWpzZm10N01oVHFES3htNlF1ZDUwSDVz?=
 =?utf-8?B?WTN3UG9hSlFQT3F0dFNTdERLZG5KR0hEWTJiZmNJMmxZeHdUbTNxOGlwV1do?=
 =?utf-8?B?UTVObU9QNFlCd3ZsMHJQbklKQUVDYkExVkNDTXZDbzNzd1ExSG5nUmNUVzE5?=
 =?utf-8?B?eXBoY2ZrZjdmemo1M3hSajIzU0RpNzZaRnhVMHZlZHpBMVovZEZta3IxTzJ4?=
 =?utf-8?B?V0hEOWhMdEp5d0VXS2VOakk2RTRpUzNXWWhMKzZnWGtwR3JJcmZpSmZ4ODVh?=
 =?utf-8?B?aVZMZUlKcFI1K2RlOUpTYUVlMG8vK3Rka0FQbHAzWHM5OFVRYzhDZ0twUklB?=
 =?utf-8?B?Lys5dGJSMERlRGYzSWs0Qk44OTM1blc2bm1pRVBwdDA1TkMwdWQybU9qSEVP?=
 =?utf-8?B?RGRkVWJ3Uy9SVmIyaEFDd0pValQyd1lvN3Q3dmNnZUtWZ0ZwU0hZVThMaHdR?=
 =?utf-8?B?aVBrM2N1L1poU3NlTzhSLzNOd3l2RURTSkJsWWhsd0l6eDVXcjYwOEh6aHhX?=
 =?utf-8?B?b29tSWRlUFAxZXdmKzVFeXV6K0t4VUxydnpaRnF4QVR4a0N3RU5OUU5CMGF1?=
 =?utf-8?B?MTZCT09QWFpTTE14RWxyeFRGQ2k0UVRJeHFWVHM2ZUppOWUxWEhITXlTcnd6?=
 =?utf-8?B?aitxRWhaZjY4RGtlQ2R1RERZVmJnSHpSNnFIQWNkZFloakNsNnhETUM1M0ZB?=
 =?utf-8?B?aDJrcklhdDBGbkl2SGc5Q3BFLzJneThoQ2VnOEdqRS9Qbml1YmZONTFoSG1T?=
 =?utf-8?B?K0FGRkpsRmtBaEIvcmducFJuYzJ0MEIxQ0lOVjZ2dmxLcXN4TlBTS3Z1SGxR?=
 =?utf-8?B?SnNkcEdzVUJHMHlHM2NoRkVjK1NYSWNVWCt1R0tlSmh3TjRVbk9BNTYrSG1p?=
 =?utf-8?B?aWIvRExnUlRPT2xPNDNCa2FpNWhhMFBRL3RFTVEyeHovMFVmcTVtVGhxZ25B?=
 =?utf-8?B?NmJLMmVIajFrRW1SR2UzRTlwWlNBN0RUTjE2azlYS0JHcnBlbFNhbW5GWVk5?=
 =?utf-8?B?QSsyU3dDRGNDYUgrZ0RXSS9jdFFlREVPRW9MSXNzSnJNZVBqV2JJWmZiYnpX?=
 =?utf-8?B?VldLS1F2bjByRTRDYURZM051QlJoNEhwL0RaYVRWZEUwR3NnTjg0ZUluRnh5?=
 =?utf-8?B?QU1KUUZ1TGxmM0RRcGh3SXV0djdTMDNtQ0paZzJzOEtmZGVEKytXYUtpSzBj?=
 =?utf-8?B?N21rb05JOVFoeG1wTkhNVHQwd24xZ2wyZmxDNlNKcHBuQ1ovT1RJUk1tcjJL?=
 =?utf-8?B?bnBvWTdUZ2paL1M2UzFweWpoOVZ0SHBEM2R6VkMwVFh0eUJWVlFCVmVhWWxB?=
 =?utf-8?B?T25CM3hDVHVZb3I5R0EyYlBuQ01SSVZicUlQOFdHYVFrQzZQYTRyYnZXRDhs?=
 =?utf-8?B?WDArUUkxbjkxaHhoTnRNSVQ2NDI3YUQ5SllaQ2wzKzRRcVA1OURBQTZoeEJF?=
 =?utf-8?B?SmpOQkZ5TmJOeHJRbElLU0l4Yko1LzdlTWVsYWpVaTllVm9aNCtqRkI1WUFO?=
 =?utf-8?B?NU9aU0VMOU5TeHovS2RwMFVFbS93THFtb3lvNDhjbFdSbS81VUYvYkQwRHJp?=
 =?utf-8?B?eEtJdVpkRkxCWm5GbXlWSjVJQ3BBVWg4eGs3SHE2S0JBZ3lldHAzS3JISE92?=
 =?utf-8?B?THNBSDNQYUpHa1ZkSUFUZzV2NkFjdlFWaVdFOVJoVjZLRjg3a2UzSjArdzdZ?=
 =?utf-8?Q?xwY9Nd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(7416014)(376014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlFqN3dkZ05DYXdhRTc5ZHBzd3MwMktHbGRSeDU5Y3pQRURtTEY2NTV5Q241?=
 =?utf-8?B?ODdaekg3S3pQRWNPbmJoZ2t2ZUR5Q3V4VmtDZlA1Wjl4N05PQmhQTlZUZEFE?=
 =?utf-8?B?RnJTWlBUK0pra2wzOEZNck1BUWY1blorNE8zM0JTVitVSkFKV3NZSUxQc1cx?=
 =?utf-8?B?VDJHeThnSyt4VDFWdjRocVIxVG1vd3k2VDNBWjVmNmxQdXhoa09razdvUHBI?=
 =?utf-8?B?NkVKcjFOTFRXc3B6VEZoSmtnUkFFSmNhNjQ0SzZBajI2RGxqd2paems4WXVI?=
 =?utf-8?B?Z3ZZV3FDNEpPNWdIckduc0JwbjJBOEtONHlCZk1zdldyQ3djVm1iL2F5Zm8z?=
 =?utf-8?B?WTA0cUhlRk4zYm02UklDZzhZUG1ETVA5bGU5WHhMV0pLMDFvNjNkT2g0WUlO?=
 =?utf-8?B?VTdCaU1IbTJTN1JwSzhScUFOYUQvenFxN3dMU1YyeUpqeG1iVzFKTFdKQnp0?=
 =?utf-8?B?MGJ5Q0QvWUtJZ2RwL0s0WGtLY25LLzl2OGZicG1DdVhvaGpxelMrR003eG95?=
 =?utf-8?B?cmt6TDhFV0pjKzhLbHdjZ05JVkhjZkloYzdOQlV0R3Q5b1VqcGZlUi8wbzQ0?=
 =?utf-8?B?anV1OU96STJONG1QNCtnYUQrVFBFMUtJK2xwU3RqZGtvSFBMOWpydTcwM0pR?=
 =?utf-8?B?QnBETjVmUWRpd1VSSzkxMW9EQTFocnpCV2VEQVVqRzI3eHJrQU1ZdFdnbkNN?=
 =?utf-8?B?biswLzRMSDAwWXdwam1OUmpvQXdVSmZ0UU1lTGpqdjBBTDVxakxWNFNZNnpK?=
 =?utf-8?B?VFhsTW1nRHJVYWx6R0tnTS9vNlFhVEYyRGZsZ29PSkN5U0VnaHZ6YW4xK3Qv?=
 =?utf-8?B?eGNDZVJZY2l4clpZQVdnWHVkWlhOdkdiY3pwZkszdE5ieVlSYzB1ZkdoQjVO?=
 =?utf-8?B?Z3J6dDdZc0xGWDRod1J1V1F1bVg0SzRSVnJWb0FHZy9EU2hrRnMranRDTWhX?=
 =?utf-8?B?aU1hRlBOK2h2U01UT2lJWmFpWC9PTk1oaUZ6eDQzNHdZVXVnSnorQ2ZUaXR5?=
 =?utf-8?B?bkxxdkZiOGd4Y0ZXVDlrNzBpbFNEZWJ3U1FwanpYeFU0OUtTdUphNWVSZVBV?=
 =?utf-8?B?ZjI3UENLYVQ1anEwVWNCUHBSbi9xTXlvNWV4eXl6WmpzVTZnTllGbDVXOGVs?=
 =?utf-8?B?MDZFN25sRDJxMEFpZ2pzUU1CZTZvSnlwck15UnZBUDQyeTlBVDJmTHEvOWtM?=
 =?utf-8?B?MFh4UzRrYTkycXExR2JRa3U1QXd3OUdKOUpwa0QxZDhHTTF1Q1F5WjRwVU0w?=
 =?utf-8?B?VSthVE1ORjJob2tHcnhzMkFJZDFUMitsUFhXdXlBL1pUNnNLdmdhZS9QS0Q3?=
 =?utf-8?B?NnJjT2FhZVhUUXRFemkxc1cvUTJJVm50NThyNHVXY2lHQVF1T212QnRyMXll?=
 =?utf-8?B?eUM3ekR5dlRmT1BYUWhHRXZaaDJPbzVuVnJuM3Zvci9kRCt0QWM4Skxqa0tp?=
 =?utf-8?B?Z3dqa1c2YW1SMFArTmVwL1hQVDJlUytwQjZYalBjVkxjdmUzYThsTUtWLzl0?=
 =?utf-8?B?OTZvd2pRUkV0OTFBOXBpZnlFdFR6V1d1U296S0txcS9wYjZtYzdlNXdmdDFa?=
 =?utf-8?B?MTZoQ2hwMytWWWNLdjI1bEhVa09PUDVDR09yb2NyRm5QSDIrWkpFeGE4c2VT?=
 =?utf-8?B?K2xySWJFQkpSZ2R4WWR4ZDdNQzJwRFJqTUFVbTlWU3hnU2hTeUxpRXNQS0Zr?=
 =?utf-8?B?YUVvRzFTaUlZR3FHbzlkSDVEdTdCNThPSzJxOEhSRzc3WGFLWDJuTGtVZHl2?=
 =?utf-8?B?cTlQakwxZ1psNGF3QXNWWmVGTS9BcHdMdlFGeUxTNU55TlhReUFYWWkraUhQ?=
 =?utf-8?B?cks2cDNkR0NPRWZ5dXhHU0FGU1pOZ0d5OHBuYnNFZDQrcGxwNzcwVmJFdUt4?=
 =?utf-8?B?bFJsNWR4MGtyRkVxSWp3RGpZNnZQZlJ6eDkxL1FZZnBOS1lZb0JBY2FxdHc3?=
 =?utf-8?B?NU1OUUdSYnZiNDRNOHJKazYxYktXY1pqS3RKSGRCakpSL1B3WGdUWjhEWGpq?=
 =?utf-8?B?cVJrUlJwMlE5MGNleTFvZW5FMUJhZ1A4N2xaWHNWUCtuclNNWEw0eHUrNTR3?=
 =?utf-8?B?Vm1vUTY3NXczdDNkWitscURvUVNRNjNScEZBR3NObm9haXFYc3V3S2VIbDhs?=
 =?utf-8?B?OUhDMDdleW5iMzQ3RUtUWTl6NHF5bDJmT1I4ZUZzK2xWaTRnQ2kzQzZzbFBL?=
 =?utf-8?Q?HO96n0dBomlmtsUjO4a/57M=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2aa316e-5c0e-453f-f907-08de1d0ed9bd
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 08:31:15.6811
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gzS6LrcQEYxeirKtRmMma4yzFu1cFkhk2jl0pB1ZDn7iKbDSrqPIqqDaIPhFoorY1UrEBlEhH4RSRkZWcAceZ4k30vK94dmRls3uUfNtQ8aZ5+1ahlLTT5K0ZzaT6g+h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB6668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_003123_660658_179C4BC6 
X-CRM114-Status: GOOD (  28.97  )
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

SGkgUGhpbGlwcCwKVGhhbmtzIGZvciB5b3VyIHJldmlldyEKCk9uIFdlZCwgTm92IDA1LCAyMDI1
IGF0IDA0OjU5OjI0UE0gKzAxMDAsIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4gT24gTWksIDIwMjUt
MTEtMDUgYXQgMTY6MzggKzAxMDAsIFRvbW1hc28gTWVyY2lhaSB3cm90ZToKPiA+IFRoZSBkcml2
ZXIgd2FzIGRpc2FibGluZyB0aGUgVVNCMiBQSFkgY2xvY2sgaW1tZWRpYXRlbHkgYWZ0ZXIgcmVn
aXN0ZXIKPiA+IGluaXRpYWxpemF0aW9uIGluIHByb2JlKCkgYW5kIGFmdGVyIGVhY2ggcmVzZXQg
b3BlcmF0aW9uLiBUaGlzIGxlZnQgdGhlCj4gPiBQSFkgdW5jbG9ja2VkIGV2ZW4gdGhvdWdoIGl0
IG11c3QgcmVtYWluIGFjdGl2ZSBmb3IgVVNCIGZ1bmN0aW9uYWxpdHkuCj4gPiAKPiA+IFRoZSBi
ZWhhdmlvciBhcHBlYXJlZCB0byB3b3JrIG9ubHkgd2hlbiBhbm90aGVyIGRyaXZlcgo+ID4gKGUu
Zy4sIFVTQiBjb250cm9sbGVyKSBoYWQgYWxyZWFkeSBlbmFibGVkIHRoZSBjbG9jaywgbWFraW5n
IG9wZXJhdGlvbgo+ID4gdW5yZWxpYWJsZSBhbmQgaGFyZHdhcmUtZGVwZW5kZW50LiBJbiBjb25m
aWd1cmF0aW9ucyB3aGVyZSB0aGlzIGRyaXZlcgo+ID4gaXMgdGhlIHNvbGUgY2xvY2sgdXNlciwg
VVNCIGZ1bmN0aW9uYWxpdHkgd291bGQgZmFpbC4KPiA+IAo+ID4gRml4IHRoaXMgYnk6Cj4gPiAt
IEVuYWJsaW5nIHRoZSBjbG9jayBvbmNlIGluIHByb2JlKCkgdmlhIHBtX3J1bnRpbWVfcmVzdW1l
X2FuZF9nZXQoKQo+ID4gLSBSZW1vdmluZyBhbGwgcG1fcnVudGltZV9wdXQoKSBjYWxscyBmcm9t
IGFzc2VydC9kZWFzc2VydC9zdGF0dXMKPiA+IC0gUmVnaXN0ZXJpbmcgYSBkZXZtIGNsZWFudXAg
YWN0aW9uIHRvIHJlbGVhc2UgdGhlIGNsb2NrIGF0IHJlbW92YWwKPiA+IC0gRHJvcHBpbmcgdGhl
IHVubmVjZXNzYXJ5IHJ6djJoX3VzYnBoeV9hc3NlcnRfaGVscGVyKCkgZnVuY3Rpb24KPiA+IAo+
ID4gVGhpcyBlbnN1cmVzIHRoZSBQSFkgY2xvY2sgcmVtYWlucyBlbmFibGVkIGZvciB0aGUgZW50
aXJlIGRldmljZSBsaWZldGltZSwKPiA+IHByZXZlbnRpbmcgaW5zdGFiaWxpdHkgYW5kIGFsaWdu
aW5nIHdpdGggaGFyZHdhcmUgcmVxdWlyZW1lbnRzLgo+ID4gCj4gPiBGaXhlczogZTM5MTFkN2Y4
NjViICgicmVzZXQ6IEFkZCBVU0IyUEhZIHBvcnQgcmVzZXQgZHJpdmVyIGZvciBSZW5lc2FzIFJa
L1YySChQKSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBUb21tYXNvIE1lcmNpYWkgPHRvbW1hc28ubWVy
Y2lhaS54ckBicC5yZW5lc2FzLmNvbT4KPiA+IC0tLQo+ID4gdjEtPnYyOgo+ID4gIC0gSW1wcm92
ZSBjb21taXQgYm9keSBhbmQgY29tbWl0IG1zZwo+ID4gIC0gQWRkZWQgRml4ZXMgdGFnCj4gPiAg
LSBEcm9wcGVkIHVubmVjZXNzYXJ5IHJ6djJoX3VzYnBoeV9hc3NlcnRfaGVscGVyKCkgZnVuY3Rp
b24KPiA+IAo+ID4gIGRyaXZlcnMvcmVzZXQvcmVzZXQtcnp2MmgtdXNiMnBoeS5jIHwgNjQgKysr
KysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Jl
c2V0L3Jlc2V0LXJ6djJoLXVzYjJwaHkuYyBiL2RyaXZlcnMvcmVzZXQvcmVzZXQtcnp2MmgtdXNi
MnBoeS5jCj4gPiBpbmRleCBhZTY0MzU3NWIwNjcuLjViZGQzOTI3NDYxMiAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvcmVzZXQvcmVzZXQtcnp2MmgtdXNiMnBoeS5jCj4gPiArKysgYi9kcml2ZXJz
L3Jlc2V0L3Jlc2V0LXJ6djJoLXVzYjJwaHkuYwo+IFsuLi5dCj4gPiBAQCAtMTc1LDE0ICsxNDMs
MTQgQEAgc3RhdGljIGludCByenYyaF91c2IycGh5X3Jlc2V0X3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gPiAgCWlmIChlcnJvcikKPiA+ICAJCXJldHVybiBkZXZfZXJyX3By
b2JlKGRldiwgZXJyb3IsICJwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0IGZhaWxlZFxuIik7Cj4g
PiAgCj4gPiArCWVycm9yID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcnp2MmhfdXNi
MnBoeV9yZXNldF9wbV9ydW50aW1lX3B1dCwKPiA+ICsJCQkJCSBkZXYpOwo+ID4gKwlpZiAoZXJy
b3IpCj4gPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIGVycm9yLCAidW5hYmxlIHRvIHJl
Z2lzdGVyIGNsZWFudXAgYWN0aW9uXG4iKTsKPiA+ICsKPiA+ICAJZm9yICh1bnNpZ25lZCBpbnQg
aSA9IDA7IGkgPCBkYXRhLT5pbml0X3ZhbF9jb3VudDsgaSsrKQo+ID4gIAkJd3JpdGVsKGRhdGEt
PmluaXRfdmFsc1tpXS52YWwsIHByaXYtPmJhc2UgKyBkYXRhLT5pbml0X3ZhbHNbaV0ucmVnKTsK
PiA+ICAKPiA+IC0JLyoga2VlcCB1c2IycGh5IGluIGFzc2VydGVkIHN0YXRlICovCj4gPiAtCXJ6
djJoX3VzYnBoeV9hc3NlcnRfaGVscGVyKHByaXYpOwo+IAo+IFRoaXMgY2hhbmdlIGlzIG5vdCBt
ZW50aW9uZWQgaW4gdGhlIHBhdGNoIGRlc2NyaXB0aW9uLgo+IAo+IElzIGluaXRpYWxseSBhc3Nl
cnRpbmcgdGhlIHJlc2V0IG5vdCByZXF1aXJlZCBhZnRlciBhbGw/CgpTaW5jZSB3ZSByZW1vdmVk
IHRoZSBwbV9ydW50aW1lX3B1dCgpIGNhbGwgZnJvbSB0aGUgcnp2MmhfdXNiMnBoeV9yZXNldF9w
cm9iZSgpIGZ1bmN0aW9uLAphbmQgcG93ZXIgbWFuYWdlbWVudCByZW1haW5zIGVuYWJsZWQgZm9y
IHRoZSBlbnRpcmUgbGlmZXRpbWUgb2YgdGhlIGRyaXZlciwgd2UgYWxzbyBuZWVkCnRvIHJlbW92
ZSByenYyaF91c2JwaHlfYXNzZXJ0X2hlbHBlcigpIGZyb20gcnp2MmhfdXNiMnBoeV9yZXNldF9w
cm9iZSgpCgpBZGRpdGlvbmFsbHksIHdoZW4gdGVzdGluZyB0aGUgdW5iaW5kL2JpbmQgVVNCMi4w
IGNoYWluLCB0aGlzIGNhdXNlcyBhbiBPT1BTIG9uIG15IHNpZGUuCgpJ4oCZbGwgbWVudGlvbiB0
aGlzIGluIHRoZSBuZXh0IHZlcnNpb24uCgpUaGFua3MgJiBSZWdhcmRzLApUb21tYXNvCgo+IAo+
IHJlZ2FyZHMKPiBQaGlsaXBwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
