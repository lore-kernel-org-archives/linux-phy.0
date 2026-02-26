Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A20BFC591C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kv6AQhNZljjvBnkO0snRak8dq7/Cd5QAIC/FlaXCZs4=; b=vhnzxgJ+9sryle
	AlFpHpFHnV73o1G4NdDxsr9S/q4o3XelYSkR6xzBdiqS6EdxNLUDXsI/uc1cSv7gHseqPxWu+mRgF
	+2pTqA0Z3A+nCDBdOBqgReyb9Zg288z42xjSS6DSJUxFVTYoRctsFYDBQYLJVVNEh7WwWse2eEwy/
	82WC+r1vCBRgDkonPW5e0SKP6XV3FBOUKwa5Qh2OPazDyuOtlo1WHCXM1OM7H+FPfvi7R40AgPYRn
	o3GLlKgZpPqgxMzo5tSY517W36zTXgeESK6O/F6mL0K2fDMzcpKME+nJyWVypTbdYR3GHGY31/tW+
	unyx4SbpZprjpbiQv6UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvY00-00000005qBB-1x0S;
	Thu, 26 Feb 2026 09:49:37 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXzx-00000005qAZ-1JJw
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 09:49:34 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=MYyUnVjs9KhwbHh0BV9hmGFXy/gozpnyuEUVKcQgKG7W4lt/7AkW5Nc/GSfZZwZOz9kTsx7RPybHdlngcWLmR0FBkDgRqOeWLwBRLEQnu+8t2e0mm5clfmcNwDTOAdrRw7LQG/ZcV2BZZPm+EedbJNxoDblLImRrjuhHQc2B5Dmv8pU1RoQtVLVp3vrJDiwybD+RlwPg48JLp6IMcR913gw+mLLSIqzz2pJiTEVfcDjm3b46wii9nHUF8S7REQI6WTcjpgAQnJCIOA6xksy/rG4okMFZFoLBoArpUOp0Lb8gYI1gkCPl8uqMf+1WTXGNZ0/LAxpnQgNDAh0b+6kFsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CFFYs8dfwwixlW7Ew0UMWxxsrsLnKp1EfCgmoxqZP2o=;
 b=GHRrSk9cRJ73YovxIQWE1ZbT6P95xh/0kyIhBS2lZhjqiNTvudT4jyKFI/LxOdKzoA+ocpastbejJPC3jrpcaVinfT0PHPfKP1+7uBAJTB+tx3RrgH+caUYQPiv1P8KW4kBOVFr4f4HeA937K5oyZH+qY8yE0jwZJYrBxVH4Pnd42FgFZ8rR8fXV17J/FhTdpG2eRCIHoAHRjIbed8dCbBPBxQrzwPWNHMAmZ8jSHVImNICD+cwO1tAlzSnrWQp75fDDOYeG7yEsy3CD9oNQZC88wblyIJkJyAM3eQHxw6PzxlhGIX1tNQG1wdgobKIsvJ1tqFJCprn+kNbanpBj8Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CFFYs8dfwwixlW7Ew0UMWxxsrsLnKp1EfCgmoxqZP2o=;
 b=Sv/Fz2FoqYYS7fGJfaERN1siaeu7BDNgtqPuz6yOleY88beZamRzdCF8eX1Dp/kGliYm0hpmT5GiyxZII+ASMolxTgjO7BQqcNbCDmRMWO8iqUViFAdV48Eh25+bqd7MNHwNGEP3Zdm2/m3xngufO+y0agvPM30Tx6bOxOHIN9A=
Received: from DUZPR01CA0248.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::21) by VI1PR04MB6910.eurprd04.prod.outlook.com
 (2603:10a6:803:135::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 09:49:28 +0000
Received: from DU6PEPF0000B61C.eurprd02.prod.outlook.com
 (2603:10a6:10:4b5:cafe::a6) by DUZPR01CA0248.outlook.office365.com
 (2603:10a6:10:4b5::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.25 via Frontend Transport; Thu,
 26 Feb 2026 09:49:21 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU6PEPF0000B61C.mail.protection.outlook.com (10.167.8.135) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Thu, 26 Feb 2026 09:49:27 +0000
Received: from emails-8368798-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-107.eu-west-1.compute.internal [10.20.5.107])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id BD682806CF;
	Thu, 26 Feb 2026 09:49:27 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Thu Feb 26 09:49:20 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MCMDPBD98ZsAd1VdmrpAllqgRtkA4YbyCwo/t446knbIA4ARXHbC6KNpk/G8cfj5z5dp+YSWBsXme/ppRLeqa3LVXkgqZexICg7FfNkNA22WzYw03mIMlOTaKINNbA03AIH5Bls6gkzbCwD2C30vqgLfFSrBFP6RNJ1QLdBjWXmfigadnOBBjNDgQMmCu9SHHuAB9/IdfhFr+qyrrTSI1mZITdCKbPRsO893R+pE5EGIEws6XaCJmv/vKyOeFtfRgll9x+naBLlb9154KEHVkEOsBGToT4H2z6YJfJzIlvhp66ak810k+2GMalf9SYh1QubhQOhb/B6v0o5kXqFodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CFFYs8dfwwixlW7Ew0UMWxxsrsLnKp1EfCgmoxqZP2o=;
 b=V9tT7yIjEegX5Pkdghg1pA15ntuPHtvq60fquglCqvGlyrgC2r07KISMQpb7nzQi9nmUBVdVk7OxbhMDtuBwksKlrUnT+T49zD0WAyquVjDl5e9aa+Yv2emAvFV2t79MWVwm0MzYa30CJfRVKP/cdiUMkFzN3s75pIKhZCKvyAorC8uwxlhjaWBz2/m2GbF3VvHr8mvKW4DwFLwfDXVsozNqEnFV8OtF3Epb+e2vWHk3gQkl6qb0k9AqtmhIKaqwrctqySizYqUqqcpa6ooP2CXo1F5EKvbUBy46Fp1phaTiGuXOm9PED2aGWnbZfgqg7TSfN4J0jxBqAHbbDBB3kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CFFYs8dfwwixlW7Ew0UMWxxsrsLnKp1EfCgmoxqZP2o=;
 b=Sv/Fz2FoqYYS7fGJfaERN1siaeu7BDNgtqPuz6yOleY88beZamRzdCF8eX1Dp/kGliYm0hpmT5GiyxZII+ASMolxTgjO7BQqcNbCDmRMWO8iqUViFAdV48Eh25+bqd7MNHwNGEP3Zdm2/m3xngufO+y0agvPM30Tx6bOxOHIN9A=
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com (2603:10a6:20b:408::11)
 by PA1PR04MB10938.eurprd04.prod.outlook.com (2603:10a6:102:486::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Thu, 26 Feb
 2026 09:49:18 +0000
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a]) by AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a%4]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 09:49:18 +0000
From: Josua Mayer <josua@solid-run.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas
 Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Janusz
 Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, Andi Shyti
	<andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven
	<geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang
	<wsa+renesas@sang-engineering.com>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, Yazan Shhady
	<yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, Vladimir
 Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v10 8/9] mux: add prompt and help text to
 CONFIG_MULTIPLEXER making it visible
Thread-Topic: [PATCH v10 8/9] mux: add prompt and help text to
 CONFIG_MULTIPLEXER making it visible
Thread-Index: AQHcpkq+ZzbPSGcvREiqhi8ReKH1O7WTVu6AgAFm1IA=
Date: Thu, 26 Feb 2026 09:49:17 +0000
Message-ID: <038f9ffa-b77c-4bbb-96db-d6adefb84594@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
 <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
 <CAPDyKFoDZr33tQXofsZzPrJbZM=3VhpeeOk1GqvRA1UK=LO5Ww@mail.gmail.com>
In-Reply-To: <CAPDyKFoDZr33tQXofsZzPrJbZM=3VhpeeOk1GqvRA1UK=LO5Ww@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: AM9PR04MB8747:EE_|PA1PR04MB10938:EE_|DU6PEPF0000B61C:EE_|VI1PR04MB6910:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e7b6023-65a0-4be2-4f2f-08de751c5505
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original: D2uxtes4BD5W0qMi1P69RJUVwb0Yi2VaDwwzKL+WgVhxbTXwnuuHbdx2H9Ip+JjY6T22GY69yZwQEnQBKkT0hgEAFouc4u+r9kJZOeYDpfJljzHkFheAigpZwYNudI9uPDJaSioERDbqulV3TpNr5iXwAoAPws0+xa/J52WVygKlhPD9WF7GVFzhMOSJdcJFORynnU/Es0n+MJHF4hfTCFROPo/zRPOZ9bZqkIy51OJrEARRjusSe9hbsDmX/rlUVHn6pmzLk9W8gpUC4xnC260/QKwck264rwFiW6P1qY5EcKBvORrJ9N7AJeBG+kJ0Q7hgxgVQGsP7IkrzMxXtimz1U7Vg37n6fVaIEVqHtKhUJSVrAY4S8YEjo2AFDOnIgibn1Eshe//thRVnytxYVfFh+SlsVRrdtBQX9JABSzFT8etithmPfQskCIDeYVAx5xUD6val/xY30CwUzz/ptbIkNroGPPok/5UwECK+o7I7YoxRdP1RXN398RSJ5WgCrqBLKv2ozLnjpO4/HA+qkNojzpVc7L0T6+NoIz/ZMgh/QR3LbIBAkVCa9c4Scz43rCA6B+p8lwkWDBWMlb1CwC8GX/1KmBs0yXEngYiLT7YDD5lJhX+o5Q+LWYFctmXZf+Pe3Do9Ya58IhAIG+powyz2jpmgv9UQJnLIQ7+3SoOj2mcITOM3Mpnigb7CWI4TU8x8ztqOxxbFgiJRp0/XWZQXjeEDvLW9WTWab91KNEdGlT/kuc4fPXy3Us7V0JrTd9Hmqu2hwte7/obANMU3YkE4+MpkIyGKnLo9u9539Zc=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8747.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <4422931D7E28AC49944D52878605BF9D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10938
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 3760ba48b01b4e8a9476ad499a86cdf8:solidrun,office365_emails,sent,inline:b6e4dc99cf3285849a7ba83dfa4d709e
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6dc4a65f-57c3-4fbb-25e0-08de751c4f22
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|82310400026|14060799003|36860700013|35042699022|1800799024;
X-Microsoft-Antispam-Message-Info: ln4i8+Uxr41d9LgbUjwYwBRtcApR0UsN0crk0EG4WKmulKk2zr0ZWt9FpOcdnewcl0m+KHzgA8GbRwL/tONk7FvjMKmps/ettiwgFiND2OokEvdR/hFB3ArUSQ0cCdKMD1ggF3lk/p/faHmiObDfKveWSR//7TVArYUZepLMAiCmruPnOgT0MxY5Al5gy6NWNRG4oxLxYw4077MdXWkHcOgs2cQGR/cQlY5zmDq8Eegzy0F/nf3wVQSCVTGHlYGx9izvMjvzWv+coQ/HwjW6Y3/K1DhzUv6CQ1rJ+Oxi3V1SM0+xG0tb96UOYfIwmQaZ6J6Q9bHE90MLZhQRGlHX7+RpsmM/pJxtcnxJJ+qLytPIIAy0rCfiMfINB016UQ0kWdQJ42Mv7rAN3aasaHQv/7lJgQYaZtsLs1IwXE9JITFJdjCpvl5H4wwaLtyFJRv7K56r7UX+6NV3a/p82PcWfxVtCwOcsEDkVyeLl8vhe+HsPtX5KJUEIKuLNhNNIpiT+024rPxjnbCNVLzbVedkmAy0y+0D45U1/rcNPdbEy2OK947RDeBZYgd8RGYxuDjmz2ZiD1Remo8ucO42P3OcLIY7460msdisOa+XtSziyjQGaH9xW9kLL4p7h72op/FXhqONWeRKjXBnTyYgkRA1lOBHN0PXE/u6y27tlvuZH8amCdip9hIS1RMAwYMvRNxwUJOtytGKo4dcD/T0Msq+Gs23dgeuCE5G7yksA4TrYFtbVQAFmQD0cj0K0nZQPJ4p0nzsKRve5nKlmkaHEn2HmBGHdT4BKV0TsZSnDD6YnlOYugOe+LdfL4QXvPZCH6SkogojASElIZTpmp8B8KXMSw==
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(14060799003)(36860700013)(35042699022)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: hmJtAM9vbYV6eh68dMYIRkgz1h1bzAhnk1Ze5jl+bFwOC9FnRkNzo8b6dF/UWP8oZqpIrWQj9hKuuBsr14ZkkP7MqESx8y8B2F71HOAiaboEtexXAH3fEq1zKvTYjSF/ktmWBPsxHM2GcKAkaKobtFwi0iRqtq+DdvwXTFJcmKzYtbUJkhh22v/Z7YJCDlQWJQWlgPLhrLPtLMvx4NFRRrHSL6U3zsnx267G0DDLfKRwYAiQv4ULcjGnEXUJrvyGRrR6jO9Bjc/o1Ds4wENwSSA3j1ESdm7kpGApvJDEciLy/jf66NFJmLHvk79z8qdT3N9R2N52cV/1lnXZdhvq3VGFqT3Rwpyj+DOJtkQVh+UJA3ss2njWvArevEhBh7CFyPSuKuKmuvLD6vTRTulujTrW+EKr1K9EteBJFmY7OXEsO2jhT2d8T037uAZWepbm
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 09:49:27.8705
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e7b6023-65a0-4be2-4f2f-08de751c5505
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6910
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_014933_499707_3C243633 
X-CRM114-Status: GOOD (  13.41  )
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


Am 25.02.26 um 13:24 schrieb Ulf Hansson:
> On Wed, 25 Feb 2026 at 12:35, Josua Mayer <josua@solid-run.com> wrote:
>> The multiplexer subsystem was initially designed only for use by drivers
>> that require muxes, and did in particular not consider optional muxes or
>> to compile as a module.
>>
>> Over time several drivers have added a "select MULTIPLEXER" dependency,
>> some of which require a mux and some consider it optional. v7.0-rc1
>> shows 15 such occurrences in Kconfig files, in a variety of subsystems.
>>
>> Further some drivers such as gpio-mux are useful on their own (e.g.
>> through device-tree idle-state property), but can not currently be
>> selected through menuconfig unless another driver selecting MULTIPLEXER
>> symbol was enabled first.
>>
>> The natural step forward to allow enabling mux core and drivers would be
>> adding prompt and help text to the existing symbol.
>>
>> This violates the general kbuild advice to avoid selecting visible
>> symbols.
>>
>> Alternatively addition of a wrapper symbol MUX_CORE was considered,
>> which in turn would "select MULTIPLEXER". This however creates new
>> issues and confusion as MULTIPLEXER and MUX_CORE need to share the same
>> state, i.e. MUX_CORE in menuconfig must not be set to m while
>> MULTIPLEXER was selected builtin. Further confusion occurs with Kconfig
>> "depends on" relationships that could reference either MUX_CORE or
>> MULTIPLEXER.
>>
>> It is common across the tree for subsystem symbols to be both visible
>> and selected, e.g. I2C & SPI. In the same spirit multiplexer needs to
>> ignore this particular kbuild rule.
>>
>> Add prompt and help text to the existing MULTIPLEXER symbol, making it
>> visible in (menu)config without breaking existing "select MULTIPLEXER"
>> occurrences in the tree.
>>
>> Select it by default when COMPILE_TEST is set for better coverage.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
>>  drivers/mux/Kconfig | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
>> index c68132e38138..4f7c6bb86fc6 100644
>> --- a/drivers/mux/Kconfig
>> +++ b/drivers/mux/Kconfig
>> @@ -4,7 +4,14 @@
>>  #
>>
>>  config MULTIPLEXER
>> -       tristate
>> +       tristate "Generic Multiplexer Support"
>> +       default m if COMPILE_TEST
> Allowing the core being a module makes things/code a bit unnecessarily
> complicated, I think.
>
> Similar to other subsystems (like regulators/clk/etc), the core is a
> bool and the menu below it for its provider drivers depends on it to
> be configurable, allowing them to be tristate.
This seems reasonable.

Before revising this patch I'd appreciate input from Peter Rosin,
who had strong opinions on v9.

>> +       help
>> +         This framework is designed to abstract multiplexer handling for
>> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
>> +         controller chips.
>> +
>> +         If unsure, say no.
>>
> continuing from the above comment, this would instead be:
>
> if MULTIPLEXER
>
> menu "Multiplexer drivers"
>
>
>>  menu "Multiplexer drivers"
>>         depends on MULTIPLEXER
>>
>> --
>> 2.43.0
>>
> Kind regards
> Uffe
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
