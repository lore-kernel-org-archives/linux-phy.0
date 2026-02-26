Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD03DFCE077
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 13:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPOLfbvlJAqfm14WNREKs7ceLSVyYYifqOxUWjzjBeA=; b=n7v15At5BvFji9
	lFWI398G4DuxaikCdkxKZfT3/ERKCojMYIjmSmeBXCEVIGoTlerOcoT7PaBKm0NJZnpeW/gH+Fs2t
	tDhRRdQEb0dwQGELjqRI8um4gUZ66G9j9+DsIAyDpkdoXyGsRusFYueeQ1h8B9oT2NfeJCxnGCZSS
	6AOuaz5T7Dtg/GmkuAqUiCQbN+Y6kaknefT3DRi4+2u47nAN5RQLf/lFad39po10A4eKxk5+cvOjV
	jW+7Y4MORFaClJJVMo1b0HHoie17CE4hRdOdvOcssC2B6bpX75G7HCE1KbVEmdqjiE6+AePF1eucq
	6H8vzrH+d4wqwYKHuU6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbHY-00000006D0J-1Xhh;
	Thu, 26 Feb 2026 13:19:56 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbHW-00000006Cyv-0jZc
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 13:19:55 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ASXshT1Mhi6TPQqLU+xPcvNHtth/b9+ss/Rn3Hne4/AHzmzfvtqis7x6S56d3URJ1gsjqJdWnDnnAjhCKyG/qfTxAueUSin+vLLEZ3oBkJO2IothQvvb9Wd0RalviQ9GY4ZO5hAUZ1x9FKK5K7PhGwemATk1FYoIa7fODpTWvm000O1LGc3DtOyQwc8K+4JXQwUnpWu5KCamxJTeywNuxoM1Kk5OUiJTI7ooce9BGscd2VijpXWLFqVj3gjkyvWLmPSMvRLviwoZtRQUyDLiTYlqOYkI976gEmt5fBuWskLEZurPHKB/vqvGaH1PKGqkB4hq1uInsfjV07dJS++yyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67jxl2N9CFvvq916JbtMtECvuxj48ifVdm/JTLEgj8I=;
 b=Fjrw+POxYpKPSQgWw8vQZACKopiW0DSyt9Vv/+ciPL+q15NX9nTk454CfFLyG0P2OCc55bD1zkTYw/TPUfTwQfdP1Xw0ZIohM33Cw9K6pN2uUnGos2A5gzDRQjaNTcJEhnujAAb5bJtU02seH9mXGxRp4BzydjTOMnbDdUkreYS51d8S2DJcs0fORm6XOf/GfcwEhLoHKW/y8SrJ2fS9ylNLTSXwmyvns8KPHQlrGVKaAM7wmJXyMGa0oVTeAs3EoB2NZ68MKbu0Gsh6LCzLxxm3TyGt1NR0VW2Pb+oWUqj10Y6HoDA6jR2vhAr3tea0hwVd3sClo36eUbbtAQfpjg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=67jxl2N9CFvvq916JbtMtECvuxj48ifVdm/JTLEgj8I=;
 b=QeU05/jlv3P36z+cvpiZXWRnkTbGmTSlVq2xRyyjLSTGw3IdyG9EkXRKW6GalYnIIPAPaGREq8w5tb7P5+fZeqGS55i6Tcgy4pqABqEmZkWRS9rr9Uw2IJ8+IJQzyh4kyEbQlJlyzLsGGjH4jAa5QSsI+Eup3XJIMT5/lbSh2/E=
Received: from DB9PR05CA0013.eurprd05.prod.outlook.com (2603:10a6:10:1da::18)
 by DB5PR04MB12226.eurprd04.prod.outlook.com (2603:10a6:10:64a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 13:19:47 +0000
Received: from DU6PEPF0000A7E3.eurprd02.prod.outlook.com
 (2603:10a6:10:1da:cafe::68) by DB9PR05CA0013.outlook.office365.com
 (2603:10a6:10:1da::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.25 via Frontend Transport; Thu,
 26 Feb 2026 13:19:37 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU6PEPF0000A7E3.mail.protection.outlook.com (10.167.8.41) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12 via
 Frontend Transport; Thu, 26 Feb 2026 13:19:47 +0000
Received: from emails-8387101-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-107.eu-west-1.compute.internal [10.20.6.107])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id AA3278073B;
	Thu, 26 Feb 2026 13:19:47 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Thu Feb 26 13:19:40 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sz4TA4mt9zEaHXY9DpsB0BKZdjmt4UpJl5IWdrO6PopFJLrVlW3tKTtb0PvaKVvt9dBjjKVhkagQXektm4zK2f4NkeVlLhj3tpfbSWXMdCfhlAGLpEQ1xEvTx9NuuIc0Rk1P5xyiUwmjEkruA+30kfg52OWJmQqNfcw7Ij2Vk4Hu1CvpP1Z1EygeqhtTeBVmgP93IZSxKyMPhS/qu7FzwqdInVlxkvC5lGEKyF8LiO8e27S11f9jmfZQKapSwjG7EihXxGZnzSLDrB5El56jQVWsnAm/e8ui6kzO/392IudB/4QdVBOWW+nxPwVm98tjp/VauRB6sRs0pr4MBO+0Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67jxl2N9CFvvq916JbtMtECvuxj48ifVdm/JTLEgj8I=;
 b=tCY8RM/2OIoh3yttL+aYAXVUEeTZ1aaD9K1KDq7o1HpGxHBHGrFGhUWgvDaUuP8hPt0Z6KqJtKL83FLkzi+0SeO4FAE0G61XA9kQ6GEfenC/AewGvFmp4aSa93VjsgN3L/Av3isWlK+6M2jAJHOtAvOYofF/VtUPDF5Co361W/WLoRrnrel/UdSf5wAJN8HjBUUTEcvhd1aucyCrAQqJvM/we3B7CfIdJrmNwUovETgfrb6kxh/NG4k4gYx2v9VlBQqAvTOKtlLVmvKX9z7iEqmNdP7PCvp0MFUmFWjwoAtN9uJXo0RNwHNoM5YL2IDXTBTuKKYw9RCeMiMLdx5r4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=67jxl2N9CFvvq916JbtMtECvuxj48ifVdm/JTLEgj8I=;
 b=QeU05/jlv3P36z+cvpiZXWRnkTbGmTSlVq2xRyyjLSTGw3IdyG9EkXRKW6GalYnIIPAPaGREq8w5tb7P5+fZeqGS55i6Tcgy4pqABqEmZkWRS9rr9Uw2IJ8+IJQzyh4kyEbQlJlyzLsGGjH4jAa5QSsI+Eup3XJIMT5/lbSh2/E=
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com (2603:10a6:20b:408::11)
 by AM0PR04MB6786.eurprd04.prod.outlook.com (2603:10a6:208:184::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 13:19:37 +0000
Received: from AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a]) by AM9PR04MB8747.eurprd04.prod.outlook.com
 ([fe80::a0c7:9bd0:56e1:576a%4]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 13:19:37 +0000
From: Josua Mayer <josua@solid-run.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
	<aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
	<khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
	<tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R
	<vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson
	<ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
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
Thread-Index: AQHcpkq+ZzbPSGcvREiqhi8ReKH1O7WTUiyAgAGmWoA=
Date: Thu, 26 Feb 2026 13:19:37 +0000
Message-ID: <b28f272d-781a-44ef-8a9e-fbb04ae836b6@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
 <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
 <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
In-Reply-To: <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: AM9PR04MB8747:EE_|AM0PR04MB6786:EE_|DU6PEPF0000A7E3:EE_|DB5PR04MB12226:EE_
X-MS-Office365-Filtering-Correlation-Id: 65f2165a-5bbc-4c82-43f8-08de7539b70a
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700021;
X-Microsoft-Antispam-Message-Info-Original: wpB8BT+zWmkBltTTMx8+DiDhjwcFEtZcSi5quRotBxEnKAWqPPJdxOJOcepaMhVUkGLDxfhh6vjf3HS3fpo2EFmawaGaBDPXMJVUj3k6k6ybHeL0I52oXPBmaCFKw1MlddtJlMvuwdR1tsO1cbARkrV3neoEi4ddmLT3QO8/izC8SVTS3PIPy2/d0Div/Bfnt0SpqCi4qHwNixtxfTC7l+T2rpna8WFMS9t4FvsWDPKro4WWX0Ig0JmemeThKypImMhKYdJ9+LiQ7an1nSU090hdR3917zpehaHJx/4CD1WdVnPP+uhDF8P4Jk6vH/xj78kZcbiTpX7HlSVHMa16CZtHVNosAzDQN8HWt89WNiBy/DUMiht7v0hUxccUJeEVOSAorwjm5tMZIi8BfNYikKqCOT8bd9plQ4KOeEJ/p2Goi52yd5AzrGLOrpmgeFhBb9yFUU2MjjKgzUWl3mGuYvCEgzp0+LkQnHjRZDeX5oBv6tn0spxm4rwbspmaD8bVJnizE+ZrM7KWJ7pUPz+vGMPKq2D6G5FEDBFdCS4bjpXPDISdJkkMWJLDWaqsFBJj7ILwiapKtDFwe+X9qN0xVSo3+ParFlqK9qL6b+Jtr2zptVH27RFao0XKY/kJg1HD0WGEb55BIgx82sFFVTcMnyziruyIAKZqumYY/jkXDMxXeY5+MTbJrMjrFlEDvxWGk4w3objTHB4mffXREsjrsk+Nu5Sz2zNFBk5v6liBBdZ5yReYpM71iK8C1F1GOJYRGD1+djJa5yNW6o1ojXeTGyKZQfc1/Xtd28w3mRnGzQY=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8747.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <CBE5653CC99AF7469381894BCAAC8A6C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6786
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 70ba1d625b204b4ab07ca3a120c12e65:solidrun,office365_emails,sent,inline:173005b73156ed072faa9b4105c2b772
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU6PEPF0000A7E3.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: d7b5e26e-59aa-4884-5b95-08de7539b0ee
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|82310400026|376014|7416014|35042699022|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: e56KecQgccW4B3DWc2ytPI61mDiaER6HFK5lldZEJBsZFbn9LqHINu+N5sUxctkDJ6LHNd6FZlC1ca+hzXqCyuNTRKOusre3dU3Um9jyMb/S+0WIo1RdibbOvWZAfoHA9mVHGl5n4ymYZ11bVtZ129McYIueS8LM7LQWdBMej0LYgj0YaavGVghA1XmtNn8Mc6wnYBCfJ5Fk7PLC+qoz+JOsnAlIDaBzYFiPOE0NF8ehZSzzm2nFOBNrybPZpR3hB2Q2kxkCT6SVBswRuccbUW5m6bskMMRluzjHIkic+uHA45Z6pWMHiCQofNQoOBtOWX9vegLC1SfBhtZyh4SL1NhzBT1nkuvQcxBW2cMLkM9u1pc7jm8WltBLBVuqHlt+KdC+69MRm0vvoBIU2IADCBioI8JW2lr7AY87Z9b839eFa1GOLQmumFjt2lPiMdt5+KndLjqOKXRAMqxem89VDH+7G4MyqTd7NMfaGvc9BJwRvKf/zecOwFiy44jfCFSy5MbbRwCHwbrvAxmsFBCWVeeUNgMbbXO63HUQ9RwdzdcaxiH1tW+YvvFVM915rssaMb7FqQcmBswxgu3EdURUyEfX5TdV0j5t0JfPdPxEy1VuLlaamMmL6CtukMRJaV3Y1u2s98TobWYSzAnotaGbcnZaevAje6YJ7v0JjJ6gTXtjMAiM/zwZIbwLeeL33t9nHCqPR28RWBJv3Mhp9IJsijJgJIPV9TwbBZTcd1xIXAREsVlW4nbWBbFvGKPIOYsVM0WC4Fmk5cASX2dwjf9g4nszTjw/eezOJ3GBMySypcNNVelDxAPSHw6QlPb9UAH8T9piMBNocgGJzuc6FJWzGA==
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(82310400026)(376014)(7416014)(35042699022)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Z5kf3x7F54CNll9sSgjNUJ4QCw7gzSikTliUjQnwmTz6hRO70rbWpKyQ7yZmESsl/6HGTXV/8uGskyj0J5USwnI1xtG0fb219vDU4pvkfT0UXseLN3fAtPLaSliqcZXmwMcHpNIINcUxkqdXxyOFV1ktuZ844tbosQkqpNxse2hnVq3s1C1z6UNn/qP4fwQDtctp6Peq/tmE6tvYDHiBzD9HvRoVuspQs1YZqTnxr8M/IzcepRww0GPK2xPqLJsKVKMSbp3o6nUjWqXXnakz/cmcVL+apTuAmje+Rwg/ViiaaVvq2e4BvnlcQBYQsjJBLyisfPtUYyShaWYGVAgN+tkhC/leW/0VZQqN/zr4G/HgYLSUW87fs+2VDbApPdXi9nc1YDaFtbZAKSdoomVu0fiFWe4P15dQNAKf/MHLkxrdtB6OToBOu4QFlTfkm+Ye
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 13:19:47.7466
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f2165a-5bbc-4c82-43f8-08de7539b70a
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000A7E3.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR04MB12226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_051954_225340_194694C7 
X-CRM114-Status: GOOD (  13.82  )
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

Am 25.02.26 um 13:07 schrieb Geert Uytterhoeven:
> Hi Josua,
>
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
> Thanks for your patch!
>
>> --- a/drivers/mux/Kconfig
>> +++ b/drivers/mux/Kconfig
>> @@ -4,7 +4,14 @@
>>  #
>>
>>  config MULTIPLEXER
>> -       tristate
>> +       tristate "Generic Multiplexer Support"
>> +       default m if COMPILE_TEST
> Please drop this line.  Merely enabling COMPILE_TEST should not
> enable extra functionality.
Acknowledged, thanks!.
>
>> +       help
>> +         This framework is designed to abstract multiplexer handling for
>> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
>> +         controller chips.
>> +
>> +         If unsure, say no.
>>
>>  menu "Multiplexer drivers"
>>         depends on MULTIPLEXER
> Gr{oetje,eeting}s,
>
>                         Geert
>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
