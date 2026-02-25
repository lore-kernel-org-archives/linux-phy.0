Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC93FD3749
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCV1kO0DW/aPCMmmqrMhyRAN7FyYeipg2k0AIhhjClE=; b=CaqAv4XTQHLZ9g
	/NAe5DTpqhOkiFPaF5RQv2dfT5eBXW0AeuEzQzRz824xoCVhyKaNn7YEHb2LMbO1FGbT4kqNJ1KS2
	VZWKKQO5QqrfqMAiVeAbyFv2MUvNhnJ+1GsQTGzF4KMqTTxeHEg3rUKEDhRe7rTfQe9VklvYkV80m
	Lcg+h8Ta4FuZCvRLT3XASzFQm5PLdBn0rfXSYEryqaxRYTUKcoSahEfEseVRpnvdwZdd4+YofdvYH
	1iEZWcsOe4Ka8lJpHI93QvdyYX3JQDTh4G7ns8UuvGh1LrcXaHER4k34M2PgInqW1WlTQUErZLSCl
	644f6QqoWhKcbqUWhlfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDmt-00000003y80-2iT4;
	Wed, 25 Feb 2026 12:14:43 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDmr-00000003y7b-0nUN
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 12:14:42 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=uurg/5vnOt0P7YUD9eYn9amCHDMmZMYFb1JaNSz8J8z0sGrWmS3PhaZKeYMA0OxhVa83OYGdSToFEVDWRSVFc+Uoyx+EgjYZPm2XaiLYQI2FeaGFQ+J+PD4WNKS186BOuVVdxWqp/ChWaCMGjssBNmYMcj/g3CmF3cJ/vsoCjdUIoH3vYA9IQqg/4NFqfXYXv6Ye7VpOloJlvtFAB24ezbJP9zyxzxx78FDMxS81AF1df/a1wy+liY4xZ3FsWIp3PLFGzXIKQ3N8QV4Robk/t24mIjt2ayLRRkU1qaae3BsQxzAevlDrVlzZ6cCq7jajAC+qCKskL+FUqBFccvOOOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QD0Yp8226afaoEZNoXuHRHP0TP4fbczuiCs0+6SJp9E=;
 b=JXclLP7hX27Bepr8v/CreQfHIf6fD1LGV3lctdP3QGrioSlvEuW8Dg5XyxzGcCkezly5m93A+PWLr+6j/WPQSLT3UfMikpC1um1ER16vb4SIpsJs8CkObRs+wDTZVrnN0S/MY/TgXWjGzn/SMxyWl10KT+MMquPLLYAl/FTJ6LpO58fdIKzXf+ZPNb5ipTnTM3FrSpXNutlVsFB/garYn2Oe9JhPadN+vKhHFLNczrcXZ/P+jKl9lGNYZbaK38KouHinprbW7nKuqYItcHXF7TTjr+Iy1UB0DXr/N9xIH4vIU1Qwj2zpxqOsUuIIrkTQKVTT0nqod20ajGrdefSRmA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=atomide.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QD0Yp8226afaoEZNoXuHRHP0TP4fbczuiCs0+6SJp9E=;
 b=rOyIk4k1P586yd+/kjpO13Cza4rsN9zfSZHR7/zQEx0dNoGx3N1PevNITW9dRYCk8yttq6un9bAAwhEtUp5bWtf2aPZue25mG4oxvT2fTUN3ng7nDE+8mXMaw9gHeKS6bCNrvNB/597tNzbPNz2bpl2cUJvICHyKaegTFcWOE8E=
Received: from DB8PR06CA0053.eurprd06.prod.outlook.com (2603:10a6:10:120::27)
 by AS8PR04MB8372.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 12:14:36 +0000
Received: from DB1PEPF00039233.eurprd03.prod.outlook.com
 (2603:10a6:10:120:cafe::66) by DB8PR06CA0053.outlook.office365.com
 (2603:10a6:10:120::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.23 via Frontend Transport; Wed,
 25 Feb 2026 12:14:27 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB1PEPF00039233.mail.protection.outlook.com (10.167.8.106) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.12
 via Frontend Transport; Wed, 25 Feb 2026 12:14:36 +0000
Received: from emails-7511324-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-66.eu-west-1.compute.internal [10.20.5.66])
	by mta-outgoing-dlp-141-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 20DCF80619;
	Wed, 25 Feb 2026 12:14:36 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Feb 25 12:14:25 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZPhvi5WXkMHL6YWg2v4oHi/LQQHupVWTjzOaSZncaSbS5pi+N5Z2EFIHQPNVz8wUlxAmV15LOhhUHVIrMzBPp694VmW9cJFtcBluIQAZsHTivgi967KOPAuYIOhxMn8L6AzXByZ3NeDaMzdC9yYNf3uGd8HY+NLvXLcNvYpsTmM6QwE98wS/cEmNEX06scBXGKaFIpg4+uHtxB6+LefUjxefAUtE193Rc60NiyGBobo5tkS+LP4agUMh7klPoW4oChZ4PRkHs8tbMmCP1PO6jM7ZRnmf5U5MxY2Kb6aJEnGA2mIVK6rD1VZeF6UYJsQRD4DAZH6LfyWUZ+raTz+QQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QD0Yp8226afaoEZNoXuHRHP0TP4fbczuiCs0+6SJp9E=;
 b=BFEBynUq1hu/8wXIAGwuhZLlWBdr98qPSJ0t8pbVqC58Tx0USXAN5MTac+iac5DYyRi28SJVfNUHfH7ImXmDggHItFyDCa+rWBMuHHxnYlfEiiCeejGGLi3dv2W/LkdlXI+wf6ZasTBTsPtpQhdMPNbFaTTDylMVcOS+CBQfWZbTblFmNsM9H/uFy/GTphs5AvBm0EV3kIsBIQOkurk2hofYXo4GFnllpysNT82b/hzF6J0oSWg/sC9suBKUSN8mLeT1nCHq9lgFL1OGyE+PO5MMjsqv2o/Se84zhKEWuCKyAx2ePBiDZQru9K5UbGZNabSTCpCCsAMVbEFc1ZJ+cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QD0Yp8226afaoEZNoXuHRHP0TP4fbczuiCs0+6SJp9E=;
 b=rOyIk4k1P586yd+/kjpO13Cza4rsN9zfSZHR7/zQEx0dNoGx3N1PevNITW9dRYCk8yttq6un9bAAwhEtUp5bWtf2aPZue25mG4oxvT2fTUN3ng7nDE+8mXMaw9gHeKS6bCNrvNB/597tNzbPNz2bpl2cUJvICHyKaegTFcWOE8E=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by DU2PR04MB8632.eurprd04.prod.outlook.com (2603:10a6:10:2df::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 12:14:22 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 12:14:22 +0000
From: Josua Mayer <josua@solid-run.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
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
	<yoshihiro.shimoda.uh@renesas.com>
CC: Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton
	<jon@solid-run.com>, Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin
	<mikhail.anikin@solid-run.com>, "linux-can@vger.kernel.org"
	<linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v10 0/9] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
Thread-Topic: [PATCH v10 0/9] mmc: host: renesas_sdhi_core: support
 configuring an optional sdio mux
Thread-Index: AQHcpkqz3n9olZHyDEiHtKNIIa/1HrWTU+8A
Date: Wed, 25 Feb 2026 12:14:22 +0000
Message-ID: <64d52953-9567-4603-86ce-a2b59ca99fd8@solid-run.com>
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: PAXPR04MB8749:EE_|DU2PR04MB8632:EE_|DB1PEPF00039233:EE_|AS8PR04MB8372:EE_
X-MS-Office365-Filtering-Correlation-Id: e58eea23-704f-4044-33be-08de7467712e
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021;
X-Microsoft-Antispam-Message-Info-Original: IPeui6N8EXmfdUNKMasQAJOyMWhjk+HXP8B9xuYZ3S53A/MZt1H9erkM7AzD9uf+ZYtXvpi26JVpYhQF78eWDwQGDEWdwHb54jL1YQAl/PqmAEVaVDoehnAMqa44bP3LW2vHJUG6tAlkaA6B6XF4iVYl7JBO2eeNaVsqlclN60jIRs7AW4ty0OSFZ76zmzEYoMAAIY/uvVSvobxdEOTwsOv7rv9uF5bwST5Ek1OTyt5ncut2kXmgS/llP4wFv9lmNtWtGahdUbESzyVoBjy97ijG9v0g+X1fHWE1RFQk6JUvuxNF6BX712KL2nLoIt5W2AJVfSkI/1SM/DjKmHpBekc6jw7ylL30cz9OT4qwUdF0CpB1iquwgbXNA4BFvv7DQUazadUuF4uope/iC3XOC561VAyS+RMdrr7Ks4PlikmfjHeF3VnVb69zgLdIDKWzlROX8Q6YOZZm7pHdWit4XTFlw7/XP4M/1s/a0lYENLsYBpCp/VHUTRhlMG7r6PZZ3IrGl8eORkSPfR7nOjv73p95EBpaWwSDrgZaLhb0+C6jr/Jm9PUs9NJyACIB4ACP7rZegApN/4F3H4P/z8e5X6/7k9jyUvatyIgN1AKvTbbVGAkFJ/MQu8a0QB9uvi/CDlPNvqeRbX9n2yLxVmkgv/OwnPGSyUUqINcTE9GOta0zsOkUt6DuoiX0gIee+/zs8tKv1s1PAhzW54Td9KR8UIL+tkeLfLfBjdzxCD/gaqKi/TG8j7NIMu0WULtvUTy2PihTEJrfKPf50V/hUAFcNfA3rgLUqekpZ3X2sk8i5glUghIpmITkrwZUAvfpKsqd
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <5DA6AAB8CD3BE24B8E95642CA876772E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8632
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 58d6a62017b24864a5ac97ee908553aa:solidrun,office365_emails,sent,inline:8989a1a0ef2b960aa6fa7fc0ff0ec37f
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB1PEPF00039233.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: d8ffdb01-7941-46fd-b4a2-08de746768e1
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|376014|7416014|1800799024|82310400026|35042699022|36860700013|921020;
X-Microsoft-Antispam-Message-Info: eLJgjMvBx3eniCV/1xg4mg1yE7H80lr3JuhQGZUyXMWNkdDe8uPZwp/WYnivkzh7Rz77bWeP8blZdmo3WRzkZi7QML1SKkcGNY+1G4XnotcLZA9DriYEyculTzfklgRnAdpldS1d2b14qiVKcIxVSinNZJ1Hht4XTbiaIKcsP5OjYHIj0xkf64+ls3GdtqG/swa8Qw6SHh3YaptABmeEH6y9+JSUagOxd4HjDouMeZoCVBNhBiVhw8BxVelrE4rdrhuEUR3CXZKpBeKsP7+FhjEwOnKfgKNA91Jm+w1TmDAlEbUkZgVlsOdzCiOyFTSeS0GBtqOr66fLoO4IVjajp+AVQ0YTavAq6USUzX/opK5POgzEiyS+l+Qj+ylP9qsdolg0N0IIHLDV+9vnO14ypIfG4avhbl83LdcRoooDoeEFPAhwzQn+uP3mBgP5LBeS+aZHbdHvHsmw50HgXYlqqL3DJkfhgqnG7QtJNEByrP3URnZvdo0mWyFXG43HErhD7TBLC/4fs/SIB1QcFCaS+lg/tYjvLhhVlpgnRVwYCgADqew+A+/1WAKWFl5ww47Be6soABCe1ZiBjoBdYO7MaGNLEsJ8JcXz0CSQ9VBBpxa7ATL6bMzjWP+a7ZEbk67U4E7oMqYtVbQH30qFunVHb+FmiFuLQa68BGw7N6Hl8H5gI/UHRHBdRbJitByY2sj8IgrMD1mEPr5xwq29KQDs50so384mugGwQ6DLInNJhpL9ssD0P0p0KQ/a7/BJrF2E9yrTJE/6d8vMOP+Vn+fNc0amIXvIIiA4ZzNtOcdtrq8HZFMths0X9zpaO77kLopcAuyJdB07Kojiw424ygo+Fk+jlMKelFbjESy2RbHaQXI=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(376014)(7416014)(1800799024)(82310400026)(35042699022)(36860700013)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Cl7+xjCawZ5MENfG8xkPRHfYMG2Jy1wnbUL8wAABDNawUH+ZZ72+nFeILvJWkzgyg56tIA9Vj7OcIjQdbtxCcoFzwtrYN3Zk69dvlmxYvOb8ve5nHBsloaJpt2hOmezS4mMikz7lhwgy4Tlyr+6dC943GhsaEaGow0uKOcIMRsM5Cfk3rhXAtWcPvQFUjBbmRlyCfuzytf3a87ZE/JSPOQmsSVjMp+Jy1ojNoPPTUtdc4AW/XFwZ3B1TaZEmFT0QaUOyZEAT04bxTZpakqVtBAHoCYIbXXmQ41up98Y08LqX8/aFF352EA2z0wOfffvGRvjHqUfJso3XmP5PXMSYHiBqwsCLl77kIfgPMVkFYrT4FzXtuPMvSPmdwqKLktc1m0wG2ZDKtszyxheZ2I0RICnQ40GyXn/6AMcdjoLa+UqoOC2/M9JUDuAxPKGU6M7Z
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 12:14:36.2075
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e58eea23-704f-4044-33be-08de7467712e
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF00039233.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8372
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_041441_400432_0733E3FC 
X-CRM114-Status: GOOD (  18.64  )
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

Am 25.02.26 um 12:34 schrieb Josua Mayer:
> This series has evolved over time from adding generic mux support for
> renesas sdhi driver, to partial rewrite of the mux framework.
>
> Several drivers have started implementing driver-local managed and
> unmanaged helper functions for getting and selecting a mux-state object.
>
> mmc maintainers have requested that new code shall intreoduce and use
> generic helper functions that can be shared by all drivers, avoiding
> code duplication.
>
> This series is structured in 5 parts, each of which is self-sufficient
> depending only on the previous patches. This shall allow the first N
> patches to be applied even if the last ones need further discussion.
>
> 1. Rename driver-local helper functions to avoid name collision with
>    global version to be introduced later.
>
> 2. Implement generic device-managed helper functions in mux core.
>
> 3. Convert driver local code from similar patterns to use the newly
>    added global helpers.
>
> 4. Change mux-core Kconfig so that it can be enabled through menuconfig,
>    without an explicit "select" dependency from other drivers.
>
> 5. add dt bindings and driver support for mux in renesas sdhi driver.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v10:
> - added renesas-sdhi Kconfig dependency for MULTIPLEXER, avoiding build
>   errors in case setting SDHI=y and MULTIPLEXER=m is attempted.
>   Trailers were dropped on this patch to encourage fresh review.
> - renamed phy-can-transceiver driver-local helper function to be
>   consistent with other driver-local functions, and dropped all trailers
>   for this particular patch.
> - reconsidered the Kconfig changes due to inputs from mux core author
> - handle newly-added mux usage in rcar-gen3-usb2 introduced with
>   v7.0-rc1
> - streamline patch sequence
> - rebase on v7.0-rc1
> - Link to v9: https://lore.kernel.org/r/20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com
>
> Changes in v9:
> - compile-tested on x86 with MULTIPLEXER=m/y/unset.
> - fixed Kconfig changes so that CONFIG_MULTIPLEXER can be selected.
>   through menuconfig / .config as intended.
> - updated trailers
> - document null return value for mux_control_get_optional.
> - fix build error for CONFIG_MULTIPLEXER=m, found with x86_64
>   allmodconfig: replaced ifdef ... with if IS_ENABLED(...).
>   (Reported-by: Mark Brown <broonie@kernel.org>)
> - Link to v8: https://lore.kernel.org/r/20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com
>
> Changes in v8:
> - Add defensive null checks for all non-optional calls to internal
>   mux_get function.
> - Document NULL return value on applicable functions.
> - Avoid IS_ERR_OR_NULL and ERR_PTR(0) to disarm smatch errors.
> - Link to v7: https://lore.kernel.org/r/20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com
>
> Changes in v7:
> - picked up reviewed-tags
> - fix Kconfig change to add the missing prompt for CONFIG_MULTIPLEXER,
>   and enable it by default when COMPILE_TEST is set.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - fix another kernel build robot warning: undocumented C struct member
> - Link to v6: https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com
>
> Changes in v6:
> - replaced /* with /** for devm_mux_state_state function description.
> - collected review tags.
> - fixed checkpatch warnings (space-before-tab, void-return).
>   (Reported-by: Geert Uytterhoeven)
> - fixed use-after-free in mux core mux_get function.
>   (Reported-by: Geert Uytterhoeven)
> - fix mux helper error path uninitialised return code variable.
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v5: https://lore.kernel.org/r/20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com
>
> Changes in v5:
> - implemented automatic mux deselect for devm_*_selected.
>   (Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>)
> - because of semantic changes I dropped reviewed and acks from omap-i2c
>   patch (Andreas Kemnade / Wolfram Sang).
> - fix invalid return value in void function for mux helper stubs
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v4: https://lore.kernel.org/r/20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com
>
> Changes in v4:
> - added MULTIPLEXER Kconfig help text.
> - removed "select MULTIPLEXER" from renesas sdhi Kconfig, as it is
>   not required for all devices using this driver.
> - added stubs for all symbols exported by mux core.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - refactored mux core logic to silence ENOENT errors only on optional
>   code paths, keeping error printing unchanged otherwise.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - picked up various reviewed- and acked-by tags
> - Link to v3: https://lore.kernel.org/r/20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com
>
> Changes in v3:
> - updated omap-i2c and phy-can-transceiver to use new helpers.
> - created generic helper functions for getting managed optional mux-state.
>   (Reported-by: Rob Herring <robh@kernel.org>)
> - picked up binding ack by Rob Herring.
> - replaced use of "SDIO" with "SD/SDIO/eMMC" in binding document and
>   commit descriptions.
>   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> - Link to v2: https://lore.kernel.org/r/20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com
>
> Changes in v2:
> - dropped mux-controller node from dt binding example
>   (Reported-by: Conor Dooley <conor@kernel.org>
>    Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
> - Link to v1: https://lore.kernel.org/r/20251128-rz-sdio-mux-v1-0-1ede318d160f@solid-run.com
>
> ---
> Josua Mayer (9):
>       phy: can-transceiver: rename temporary helper function to avoid conflict
>       phy: renesas: rcar-gen3-usb2: rename local mux helper to avoid conflict
>       mux: Add helper functions for getting optional and selected mux-state
Series may be split here, at this point the new helpers have zero users,
but names have been reserved, avoiding future driver-local name conflicts.

This is the most critical piece, it would be good if it can be applied to next early,
pending review and kernel robot results of course.

>       phy: can-transceiver: drop temporary helper getting optional mux-state
>       phy: renesas: rcar-gen3-usb2: drop helper getting optional mux-state
>       i2c: omap: switch to new generic helper for getting selected mux-state
Series may be split here treating renesas-sdhi & mux Kconfig searate.
>       dt-bindings: mmc: renesas,sdhi: Add mux-states property
>       mux: add prompt and help text to CONFIG_MULTIPLEXER making it visible
>       mmc: host: renesas_sdhi_core: support selecting an optional mux
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml      |   6 +
>  drivers/i2c/busses/i2c-omap.c                      |  24 +--
>  drivers/mmc/host/Kconfig                           |   1 +
>  drivers/mmc/host/renesas_sdhi_core.c               |   6 +
>  drivers/mux/Kconfig                                |   9 +-
>  drivers/mux/core.c                                 | 206 +++++++++++++++++----
>  drivers/phy/phy-can-transceiver.c                  |  10 -
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c           |  30 +--
>  include/linux/mux/consumer.h                       | 108 ++++++++++-
>  9 files changed, 307 insertions(+), 93 deletions(-)
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
