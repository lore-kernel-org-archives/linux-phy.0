Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D488FCE07F
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 13:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gsnex0GI1occcd/cFWyDwZEVRIygEMIFENpa/0duRpg=; b=31zpxA3T5t5f249fLYR4toDpdU
	EH65Sjdk6pmstIIUPkbVdoOSdyd44MDnFgH+ApgVyboKw2AYF0LLuvSqLlV3HP0siUcMPZEU56Lr9
	wryA34mmo2NLqBAJ9KoYg3TbgfBM3pemxu6MxTdyIbzDVdypevqBNUP701cHDzEQPPlw+RtcRTLX/
	GaO4GyStd/Kq56OxLjPL9eoVfTshKF2f7DmrhGbrekOPL2Jp2TZb8scoMwRT3YGVXHuRnVE/PThz/
	iREWU1JzJE7hHpYA6Vy8SHzZx0Uk8caa28M3QkYKenMjPabXalrXfrhPNIf2y5SpARld8unsw4CZ5
	RBBDEcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbYr-00000006ESw-2sCu;
	Thu, 26 Feb 2026 13:37:49 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbYo-00000006ESI-2G2Y
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 13:37:49 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=f6et50lniCnkFD9HMaNCS7qyZFJIhVKh13RSsdLEiLI8Awy6X6ROoqZtZ+5+WgvUgEIEJYZIO9M9EXg2SvtrEjNPiQyGD1shrZG+WONjCSMXXsER3LxWWAR/SZR8f2FJxoelSYXMv99G3mRKQXL1ejlaX19NWTY0V+C4V0/3atF4kXAQyE4lMnNcoSUNzRBgIZAr9TfTFVW85l1l9Wqv9I2g4Bfe7Bg2WoiV2O7LqiQITynbAAWb2OU1Jjg6EeHeuXDqPBaFOXA6t3ws62vAayL2/ld4cRN0Z+G2x/hnRCbY88TMnS1DidX4+7R+GrZj11j7FE5SlM7pqm8GTTdVIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDU3bZlCQCRKhUsTYOKoc4EfvrXr+i4dnx8HU0yM8bE=;
 b=crh5mshwkeGTK6sim25UmqG+QD6o/Ng61fPiwEr7NQchrj8u23SSapCTLCtT3jBXnSUvB7xOut7YSajxbp40I4YwmXhOV2TZu0BHRgcr1Fhr9p0YjmLxFRzyIxn+dKfs5jNSrQkfnO1uMnXRC0cXAFt7OjCtu3LRR3LqkMtTeNZX7FktKBrCSkf4ihQ8cRDEqAYbJmuYJgfbnz4PbTlXuceruVmewJDfSaVmVZZY9cemEjEd16dh0Hz82s6+oz3TRsRHGlPv5Y9oS49DgM0pzHb0up1fS0/OAaLNbg452yY1E9ZX49wX3Hjc9ZTHDiOl9o5NS1nHlI9ttDTb5vQgrg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tDU3bZlCQCRKhUsTYOKoc4EfvrXr+i4dnx8HU0yM8bE=;
 b=j/9qgLcibxd4jfEFh4O5jCi3zuEumcv8sBHWzcUPY+PpLgSfb7UZOAzqkdMZvPycN3s/y6PpBzhDi1TqckpevP1/mBQIJdtjQbUhXT21J0YmHg/PBm5xrL4aa4AN3qkNO05SFEPNANSreEQuXvFEvbg2X98mscxnnU6SK/l/wDo=
Received: from AS4P189CA0030.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:5db::17)
 by DB8PR04MB7114.eurprd04.prod.outlook.com (2603:10a6:10:fe::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Thu, 26 Feb
 2026 13:21:53 +0000
Received: from AM4PEPF00027A66.eurprd04.prod.outlook.com
 (2603:10a6:20b:5db:cafe::58) by AS4P189CA0030.outlook.office365.com
 (2603:10a6:20b:5db::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.26 via Frontend Transport; Thu,
 26 Feb 2026 13:21:53 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM4PEPF00027A66.mail.protection.outlook.com (10.167.16.91) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Thu, 26 Feb 2026 13:21:52 +0000
Received: from emails-1627371-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-107.eu-west-1.compute.internal [10.20.6.107])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id B408480007;
	Thu, 26 Feb 2026 13:21:52 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Thu Feb 26 13:21:45 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Urn4VvKQMIVNtJjtryShxBWi5T2emeM7byhcHcBwHraEboIa3QWSCILR8UnBwMAOS/sIbmbcgwrK+VGXANh1/TYN5kBbKI5LtC4oq8BJCZbfgzItvSOkDteEjfplW00jBIh0G/XtGFBRRqf844K0lPR/QOkW0zkHmcBEeUlzojZcC6yIi1GArT4l1iYdjjwm5P6bDhbMHVkBNtmDq4j1/i8Cq4PenmEo2BXB7AQg1fK7Efp3i0nRUf8abLJRtMB7gFEdDWfKe5nUgO+OBH4pTUsOalMFF5ttjJeiF2kWWAugW6H1FIfMayDMI4yEaE8UZMuaMjddKLnMDtM03I9AgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDU3bZlCQCRKhUsTYOKoc4EfvrXr+i4dnx8HU0yM8bE=;
 b=maB+gXa/IyakO4kBIyQ2hUvjYlOnCtfpGxhxtA7AOfLG/syieF6GpuSHXnwssg6kAx5J9QJiz+SAiJKBk1ZzuYH4upPEE7FRwD0/bLPKegSt25n4Nhkpl1QR6IGSe4yWcqBSyr55kyutmSMLaRAHFn+5zyfGAJJ0aU5fHPZKIzU23l6xVDPrftEQmTd3RovbdFP3vLEVrcKI6ZpwIFqbOe00Pp9IgCbdwaxphetoEUGRdm7Ji4XmnQsPvkMih59kA04c2kra4hfyh8ycZcvQdkqKDWmeKjQqwAnaeUyjCM/cDPQNFiLKQy6bgv8DZHjmydelhpnfdlkKW3lXHy6paw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tDU3bZlCQCRKhUsTYOKoc4EfvrXr+i4dnx8HU0yM8bE=;
 b=j/9qgLcibxd4jfEFh4O5jCi3zuEumcv8sBHWzcUPY+PpLgSfb7UZOAzqkdMZvPycN3s/y6PpBzhDi1TqckpevP1/mBQIJdtjQbUhXT21J0YmHg/PBm5xrL4aa4AN3qkNO05SFEPNANSreEQuXvFEvbg2X98mscxnnU6SK/l/wDo=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com (2603:10a6:20b:408::11)
 by GV1PR04MB10521.eurprd04.prod.outlook.com (2603:10a6:150:1d5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Thu, 26 Feb
 2026 13:21:42 +0000
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a]) by AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a%4]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 13:21:42 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Thu, 26 Feb 2026 15:21:16 +0200
Subject: [PATCH v11 8/9] mux: add visible config symbol to enable
 multiplexer subsystem
Message-Id: <20260226-rz-sdio-mux-v11-8-c2a350f9bbd3@solid-run.com>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
In-Reply-To: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 Jon Nettleton <jon@solid-run.com>, Vladimir Oltean <olteanv@gmail.com>, 
 Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: TL2P290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::7)
 To AM9PR04MB8747.eurprd04.prod.outlook.com (2603:10a6:20b:408::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: AM9PR04MB8747:EE_|GV1PR04MB10521:EE_|AM4PEPF00027A66:EE_|DB8PR04MB7114:EE_
X-MS-Office365-Filtering-Correlation-Id: c1fa4c0c-a561-4a09-09c3-08de753a01c8
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|7416014|52116014|376014|1800799024|366016|38350700014|921020;
X-Microsoft-Antispam-Message-Info-Original: FQFhWy7jFpLkmpCOfvvAA/pIGlsMAR+bhv5Hl04EXZr6JmRZ5rXQ16o4puXeZ1mVklZodLKKPWq09XbrO9pGFhkGnveT+eCHAAxbX0ahoq0VVI4T6d5vIz23vbYuPBflmjFI59OFZBJKjSD4yOKG9/jFfnqYvQoLhiWM0omP+EIYYjeAoOq0IllxAjW6P0LppSjAX1xwbhY0+r5lBkjbTC83HxkaEHNlTS7MdJur3ay5nNHOq3bzHKmcFCVZy3riNENiDtLPLXWzDrmsbHFJY/y4xEl3etknemEM6MSpJsuEgrivLmEBIa2hKeIEh7qa+xS6r+qNb3fqecNgQneZmZkS8NAQ6SxFxmDjIw5sxMjTYWxyxe6TnUb527m6ZJVaeQa3dB9aUUm9octcpcUAu5OF/uhM2R8nSkbAc+fQhfEnuXiwAL6HrqaEaIuhwdo4P5jCbVClU5saN5d5CXva4xE3RIHLVxs2SF4n2R1kOb20YNR5MuyjEykyoy2P60bg7SjE434hc2fLFbT0mtIN9wZQCmkQNOVN0wkm34Z8Z4f59Qi7gQjdJwUxoE39eTQcjjp8x5S1s9dmlNtatHsVkzgTwnLwNbnYjc6cRdRF3R7bwHGtmIDnkO8Fvb8veFwwoCUsSXsER+km+FOQaGbOsxpDepvIGouPDgD9wPGq1sxMrpZIbZwMvQHVoYuLPvP4eJaNiFIirRNVtWFfaCJf9UyIQyP0hFRTKRXf9CN52ul+YfJTiu6C4WVIldm/7TQZsW7IXoY45DfUmmpx0UoOSXoEOf25cO4N3OyF7ApgsOe6Y9zVUPuOsPSj7PpQzRFR
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8747.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(376014)(1800799024)(366016)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10521
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: ee33331897a3466793452255719e8fce:solidrun,office365_emails,sent,inline:8cf0ea1661083c475b94cab10e2af9ef
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM4PEPF00027A66.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5677687b-c144-4a4b-a06d-08de7539fb66
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|1800799024|36860700013|82310400026|7416014|376014|35042699022|921020;
X-Microsoft-Antispam-Message-Info: wes4Dekkcb9Eawa0GRdJNgDWL1fO+HOqDYctCATtxSyMrWDZpQXDNU1LQ2yuUDUCbnp7mhDtTyaJy2TwmqDesIs8NCJNYZwPELa88vlBnAh+0ObFFEfU5WEiODMnY5dL21iFpdh/LfNsU7xY3vuPPkiLUKCXQVBL8C5j7tZyrNvn1D9uVPbDIRUTJlV0AB88ZDzUfRfYAEnuWMr72YOo3/RB8s8gGnCdRUEzz70Uz0qx++qylZFA0fv1Xr/ZfPxfu9aFxgANCi8p/LAFNowSegiWRpBSoFJ3aeXKPf3O5ovwUgth8sil0IovzSefYFls06cu5pDdac1MavLETvOukGlm0X6vXGPNBD5Sbi7ALvaaH1+Aw2VbJM5qQ1FQsW0vdgVVzBQDSEqXmRiub7cZ7BCVSyi3ADTRLUKN3qrZ+yj2YsCOZF9h1aPPhzd7bmSfHDvzxTC/PtdyJHoOUehA7/vco3ROOn7smwcz+OFsnL573QpoG8n97gqZJbEmNLXDcUyjcKq2ysnnvI6cB1k2kVq+8EeUcFyJDyC8DBJrPxhpvdK3jKI8Y/l4xBL49ExDluNZNMEQ0P5SS2z1dHfhQHuOU4gwCM9tfZ7L3mJjd5K/ZWKFvWCIon69ywnDk/tFx0D56o5kCxQsvXgkyW2Y9VANoeIKNhCllWPgT1ZbHQ/oMrF8Bjtdh4L6QuuBmC+TZhpu8jEP9aBXlPQkWDPtN0QaCMyT+wPsLlb0Ak8xQZLqK6oYlO/Jna6Ds/+vcACW+DDeOB5TwcMzfwOh19Tgzu8NiM3HbICJP0OLWEZckf4JbyyLpml5Z+SFtBlSRkh4rPNuOhUAvkFK8NVRVU9/Gw==
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(36860700013)(82310400026)(7416014)(376014)(35042699022)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: qgtKUiHHNyxo6AzwL5/x330Q/ed7wlF8cKHMCt/BVledBkExA3rZMrJCghB16V7g3c3MfPlqBE8TyI+gLM8oOuIpp1vmkclINqjYWJ8GhO5P27yoteYLLbBujSU94SmxuPwAK5nl53w0KTDWWz7wxBjXGG0S7/eFbXD6aH01l1m/hzpSUOGXBqGbOOgaDEblY7syJvIFhBCQF4T/dFgu0et4I+fyoGby7hDPRqoGgdVwts5rVg7GOHAVYDKca6kcpgKlFdFtaeTNwe83csaMs9N3GidAJybLumIS9euW5XmNyoLsqeSNQObO2xONDEbS2NO237VCaJ5AVbCNn/Sfj8WJGfqpImrKG+euWTcC6F5TK+S9OZ3LghxUPlcjktKadB4njDCBvsYmx1f+Ty9fnmsmXLt8/LFHgLFLyGZi9mOoPV8aUN/VoYMhv40OpVxS
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 13:21:52.9909
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c1fa4c0c-a561-4a09-09c3-08de753a01c8
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00027A66.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_053746_768065_6CA85164 
X-CRM114-Status: GOOD (  12.67  )
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

The multiplexer subsystem was initially designed to be completely
hidden, relying on consumers to "select MULTIPLEXER" explicitly.

Drivers implementing multiplexers depend on this hidden symbol.

This prevents users from manually enabling both the mux core and any of
the multiplexer drivers.

All multiplexer drivers in drivers/mux/ can operate standalone without a
consumer. This is particularly useful in a device-tree, where a default
state can be set through the idle-state property.

Over time, several drivers have added "select MULTIPLEXER" dependencies,
some of which require a mux and some consider it optional. v7.0-rc1
shows 15 such occurrences in Kconfig files, in a variety of subsystems.

The natural step forward to allow enabling mux core and drivers would be
adding a prompt and help text to the existing symbol.

This violates the general Kbuild advice to avoid selecting visible
symbols for all existing consumers of the mux core.

Add the new config symbol MUX_CORE with a prompt and help text as a
wrapper for users to enable manually. This avoids existing consumers
automatically selecting a visible symbol.

Change the MULTIPLEXER symbol from tristate to bool. This avoids complex
dependencies if users were to attempt a configuration where the mux is a
module but one of its consumers is built-in, as well as difficulties
keeping the state of visible and invisible symbols in sync.

Further convert the "menu ... depends on ..." structure to "if ... menu
... endmenu endif". These are functionally equivalent, but the new
structure is more efficient and can support future source statements
within the conditional block.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/mux/Kconfig | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index c68132e38138..6d17dfa25dad 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -4,10 +4,21 @@
 #
 
 config MULTIPLEXER
-	tristate
+	bool
+
+config MUX_CORE
+	bool "Generic Multiplexer Support"
+	select MULTIPLEXER
+	help
+	  This framework is designed to abstract multiplexer handling for
+	  devices via various GPIO-, MMIO/Regmap or specific multiplexer
+	  controller chips.
+
+	  If unsure, say no.
+
+if MULTIPLEXER
 
 menu "Multiplexer drivers"
-	depends on MULTIPLEXER
 
 config MUX_ADG792A
 	tristate "Analog Devices ADG792A/ADG792G Multiplexers"
@@ -60,3 +71,5 @@ config MUX_MMIO
 	  be called mux-mmio.
 
 endmenu
+
+endif # MULTIPLEXER

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
