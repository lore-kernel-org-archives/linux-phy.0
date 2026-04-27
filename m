Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D097FF885E
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 11:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPuVuc9EOMAsUXfChm/UduKqGNHFBsaZqePWkBLWE5M=; b=SER41khx545X+W
	K/i8duEpmBSbsVy9Z6qY7RnWG8tngrhYrqTc27r4X6gUZg78muAnsil2lAoryuiCXPuUu98W3LL41
	zva+FeCg4PIGYuy4LsfEOirjZnsi66Lxbonof+2QdljflKY4ENB9y1jpbLqFCbqPY6Q1W6B4f1E/J
	2V7l2fFwlg3trKURucajqMSGFaopXVrQV0uajeqGo9wdPSG2IC21ZMmD8MHcPTn5JjZe29k4+BoWx
	cW+B0dQ6KboJgxE/5gER8TOXAUnCxPKktjXTHOwGDdWIwxFYCvxSEJh33GC06vAsxqylEQhIV5jnj
	KL0P0/hbn73Q42qLptFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHK6t-0000000GnWk-0rmi;
	Mon, 27 Apr 2026 11:26:43 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHK6q-0000000GnVn-21Yk
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 11:26:42 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=rH4PQK/wdU5G7RXeYtbzeJVjy/RZMadtXApF/uhySN0w/kXNsgRTeJuBPC20oaBN9LTm46mAtQoiTjrhGLqFdIEQVaPsoommgIT0TJ/5V0pHiCuqAs833uomO6SElBd/Y53Y02X8/LGOghDh+fu0gdsXSYp5J2KUXoFDAWSpMgj/WMJ0QsVfzmL7ytlKY5mF73U1C1BgS0TMXQMBIwKxkgUyD6mzeeurHsy5E0Wm76FeYqqqFvHvkdzdGmm1AwPdfdbbrON1Eu2IsPAmtC4kfvjD90oHE91IxZRXF7i3GsT0r5rKZUNgKDss7HhGSMr6rCmq+UvMpX+WxvDfTRs8SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tn8LKthHKGBYBja5UGcrYbWnC9z7JEIp2HNjLzqAIiI=;
 b=ZPHvZEJOOEOmkb6fDfQ6qcArghzRi2evuCtBSSS+fShx2DO+FjLVGTls2VS/nYzw/kV90bsIkGNaRUwaJ7Mc72uPpUzlNnjqgKSpkSpj7BML0AsKLfZYwVLN2yRKM0IHDdCF9BnaqHynTu6+KDIvLHgCZFBLbCP6qsC2bTQwgq0iJ0mBVx+wnO1jpskjkTEpW4iYixd9sk7nG0zBjFfJiZtxraWbCwg0H3eYsoccYCaVcdPQkV+qLzcVsGcJ4FUjOzVAqkMsnvi2qKu5H1Qt65fKReP4USXh/oxBF1rGOX1kBHxfhEaB1WvaTVfUBwZXdNjqOxf6IeDaZPUp77/pSQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=solid-run.com; dkim=pass (signature was verified)
 header.d=solid-run.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=solid-run.com] dkim=[1,1,header.d=solid-run.com]
 dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=solid-run.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn8LKthHKGBYBja5UGcrYbWnC9z7JEIp2HNjLzqAIiI=;
 b=qEv9ajppyfWetikKxqyqCH8mYutxuBDmtcpzyYH7ZAiM9X2nDn5LwJL1+F300QZJYbzacd5oeEPjFQziAXl216XvxxVRfzg6ioAr7hlsivXisERK9P826gtSGA9GvYZFRS5PVh2KFXg80SzqiRZ+fgWgXXSkdC8D21bfqrhAIi2XrlA5phNpf6tytSFrwF+KNz5xOc5Iytd0UTTa1s6isCt7+qFD9fLdHlYy0DVPPKMlUir9B4o1ahfNo/DVkMFfu/41Dow7dpPwuAvrGwdZGCAsGj5p3qwUO4O2BJdXK2+yCA3OB9TiTp4wpJVdCujdb/3nJt7GqHU0nA4mwVJJDw==
Received: from AS4P251CA0017.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d3::6)
 by AM9PR04MB8921.eurprd04.prod.outlook.com (2603:10a6:20b:408::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Mon, 27 Apr
 2026 11:26:34 +0000
Received: from AM2PEPF0001C716.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d3:cafe::fb) by AS4P251CA0017.outlook.office365.com
 (2603:10a6:20b:5d3::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9846.26 via Frontend Transport; Mon,
 27 Apr 2026 11:26:34 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solid-run.com;dmarc=pass action=none header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM2PEPF0001C716.mail.protection.outlook.com (10.167.16.186) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9846.18
 via Frontend Transport; Mon, 27 Apr 2026 11:26:34 +0000
Received: from emails-2664216-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-243.eu-west-1.compute.internal [10.20.5.243])
	by mta-outgoing-dlp-291-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id EB44580560;
	Mon, 27 Apr 2026 11:26:33 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Mon Apr 27 11:26:22 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ASHPQGk3KFjQqWmx8LZKIhlQzQcbaJJYQmxsyySeodYINO4sxfOacjW5C3imZKMr86SnR1A25Pfk4o8FlaW67Vf+i5/qQuuxXfEuANCikWjqz5tbwtDAdJv1fNhKWGs95ao3wNo4Znh2mZtpklCB1TpTVhxmxShaFFN4NmUhvmDeDAYyuo+hnlG63grppZWuT53yvH/zJtGyZuXuBjpGpqtDf84e4ibKaXrEmm4wu+HFsdpLyJFsSn4pr54q38pif2/vMyQhqSbk6vlGhjxzLtUEC3rpIvRTa59/jdilox2CPWkVFDAOOKycAm+btve6yaz5hJQmmOJzssGbvjnorg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tn8LKthHKGBYBja5UGcrYbWnC9z7JEIp2HNjLzqAIiI=;
 b=alSd//B/46AnMBc+nneYGL1oFz0wBDKaMDUzKbx5L022Yx0ySmVdddvqEXS4c5TH2NiPI8DN1wC0lg6XNNhwCGMEfMp78LrKfWIFQIPZ8PY9wMTK+B0gUAFclX4xeCEvzEcH2Y61Lz2OR2QMKcQHOb0Opc3Y05+k0mv/KDanmO/0oPE5zLRshqfj6KuDwcfHJEWWaaXTB5aSJ4+VhN5uws7hilgSktKonoVj+5jz2QtGpCOAVlbSJqGyaKuNxKCb4JarAUfS8IoRvivbRWWsbyO+b/Ib3ed34qOA3e1wUc1BxkaLaLp2vvJtsE9nuFqczltkKXVJjXXNSa6wphChnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=solid-run.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn8LKthHKGBYBja5UGcrYbWnC9z7JEIp2HNjLzqAIiI=;
 b=qEv9ajppyfWetikKxqyqCH8mYutxuBDmtcpzyYH7ZAiM9X2nDn5LwJL1+F300QZJYbzacd5oeEPjFQziAXl216XvxxVRfzg6ioAr7hlsivXisERK9P826gtSGA9GvYZFRS5PVh2KFXg80SzqiRZ+fgWgXXSkdC8D21bfqrhAIi2XrlA5phNpf6tytSFrwF+KNz5xOc5Iytd0UTTa1s6isCt7+qFD9fLdHlYy0DVPPKMlUir9B4o1ahfNo/DVkMFfu/41Dow7dpPwuAvrGwdZGCAsGj5p3qwUO4O2BJdXK2+yCA3OB9TiTp4wpJVdCujdb/3nJt7GqHU0nA4mwVJJDw==
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 (2603:10a6:150:313::24) by PAWPR04MB11621.eurprd04.prod.outlook.com
 (2603:10a6:102:50e::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Mon, 27 Apr
 2026 11:26:20 +0000
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b]) by GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b%6]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 11:26:20 +0000
From: Josua Mayer <josua@solid-run.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
	<mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 1/4] phy: phy-can-transceiver: Convert to use device
 property API
Thread-Topic: [PATCH v2 1/4] phy: phy-can-transceiver: Convert to use device
 property API
Thread-Index: AQHctkztSeLY+p6L/k+DAzjhYpNju7XzBLyA
Date: Mon, 27 Apr 2026 11:26:20 +0000
Message-ID: <023d4800-5ec1-4c55-8c67-0c47f0b91e91@solid-run.com>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <20260317203001.2108568-2-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260317203001.2108568-2-andriy.shevchenko@linux.intel.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: GVXPR04MB12057:EE_|PAWPR04MB11621:EE_|AM2PEPF0001C716:EE_|AM9PR04MB8921:EE_
X-MS-Office365-Filtering-Correlation-Id: 5148797c-e469-45d5-4d82-08dea44fd68f
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003|18096099003;
X-Microsoft-Antispam-Message-Info-Original: 0bAUl6XGayG7bk9yh//YUHFO6TQFBcj2Tx6rLcGWXCKmljp7KDB0HTSvOEhox2vn4qWO6Tdzj2NhJNS6KYn9U2MmVFSOu/HoofCUrrbdEplc4DjhFJbr8vW6NP+TOagZXaNaWzTmAgK3RB7CySK+cNSdjz/38RP/TVwgVgPnhFFM1drC/bsuu8V/U3/1TfA3ww/cUlbkt41fdcld5wy29xcWcMy2GkJcMQYP/KJWLPK3uoW5ZBjaVJKL+ZP4cEKKWiRF3YcoCMmDj4sPZ/0Es1xhKBK7pwMSDwmQYmy+IEdghdAecN6WW6ElWI1Q4B/MIO/Ln/ioMmCWv/jv/k1j14ZAvHjYTeXCSLaEYHVXlU3GuFBIH2eD8+6LmnBlIOfsbPMBGViagYONyZVUYofBmSQ3OlTr3iU+DfFARkIhObFhf2yG0RwLeJxBA3+0M7lr6Myv9GlTlRSLCqzo9wNrNSXyXFtynwYYbl+0LIg0T+7G17XWqgQVkE4U7j6WfSuSCbCHMQlFejB9mAAi/n0J5qhoC+oRoxRpNQLcKBGg8llYeWKlx6XRVKASKwntx9rs7E2uYQacWAnkCd2frhlUnkCr4CVWiwt6FqKnD6bazEIHnnu8YGGeASJd3YccJpjBOChgRSkSp+3zw9cUvZssfJmmhhTzhKRRdrBqbRVaZrVvJsn/Vi9DHmtOMris3rAWi9+dFD10LH94C+w8jsWxyx8PjKA51QGgsEXJGp3fcQaYjiJ0m0hGYiGMwhzrr/pt
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12057.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003)(18096099003);DIR:OUT;SFP:1102;
Content-ID: <7E945FE39C99CC45993B2E7D851A1F7D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RYB4+fB9bhI5p62PpoHUi+heOdbm0Oq84L9bt3RO5InP9lC/M/Hldfx1NvTxGh64G+jP+Y+J1l9keQ6wGq1AETJ4KvJ4x1qG4Qin4o9x0w9KCbuLszM2fJrofXpWPoaCl6GDvb2LnCdR7BcvTZKh9istxz/2VLCcCOdqMXNuSIQDhD5yEd9jjmuK6Gi3tkbApPa1gDuIsszcj03+LS8KXUTdqKW2foIOI55ScCIQBSKCrR3n/GrfY5kjl4KWCat2w8ucZCL/NXWDpikolpgyAtrUm4UgHm/Jb1NUl0DR+6sV1bgs9KdV0/CmRXfBkCXgnIhuxKIO9KudGpxltrQKMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB11621
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2-6.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 94ee501822f84d558ed716824be2b8fb:solidrun,office365_emails,sent,inline:e5f4c0cce52b3aa936fab29a235a2a66
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM2PEPF0001C716.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: eb1e2851-46a7-470c-6a28-08dea44fce3d
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|35042699022|36860700016|376014|1800799024|82310400026|18096099003|56012099003|18002099003|22082099003|13003099007;
X-Microsoft-Antispam-Message-Info: 3Ae4CNF8J/TPGnyLNiLw8uIXki7KCLK65wm19FpwZLTArh4xPKLupNe288cfb0fKUM3jEZl/rnbLEVFJ/AlnTubsq7eMZfjNkWtD9ALaVXiWPPnI9mKpN9rHTLn4+gC+C9lQGEPuDEti7YN1r+ax3/TFiqwXzgpFqiNKx5oejDhyyaF1bRZ6zq5n/Bt3WJwD1ol7vsrnRx1PmzxOfXM2fGNXsd/SBJevtuvoQfboxgtBOR/Yuud6aqfrI/r2ipig5e0FCg+rO7nQxW6bygrcP6X81W8sZ8WHEhC6vhXiVK6kGeAhgL1KoqYuAJbMBi8M6oIpqIELwV31o/1u/ZAU3vBjYc4JCEfkg2i5EJdeCCzlnrLMIEv+XSHnmfvQR5anOX3JmNgpfAitYWHrAMKxvHaxm6OsQ5jBTnv248fieWoGGpvxk4WkE4Wi2uuK6fFC7fxHvvLrbkskt0l8pxY1efs9f1bxbbQ2GmLjLfUy37lGlk6usR42VeyfQFOQQa2sAYmByTWYPFchNdb4wwyMWO2LKB35sQmoXDdhZ3LwST9aGGIrBi/RDhckciQWgS9jvtY5/mc5E8ZndodqLoA/rZE4ZbCwGjSqMbHyTMd23099Ag1m78q6G1/6wLAlj9RUnQBkeQLm/8w7NdarXIXbF8U/XWhlkuvNw6lIcxarQMWpyHPS1Z+IZfbD24wPGGmxFqIt0adv04yiOGx9/1dOgaZeP8/ppyN5lHEY3iYkN7o=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(35042699022)(36860700016)(376014)(1800799024)(82310400026)(18096099003)(56012099003)(18002099003)(22082099003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: XZc2G0EVpPsNXb93IwxzeENBMCxO0yPlSuU2q417d27XSJDE6a9AdPiQPXZJixwLlmDEdXlKtLDzPZW/gsEvCzkOSnpmw/Ry7uhMEYPlrtRpHZqA7lhOBRHwJYPFa8M2FSRTe91upvT5ZRgT1hUImhYX4gh23CanXqwYWShtsbDklT9lZbR2ecTgWx82/Pe0sQHVl2YCbCIx8NNIsZ499fC4hSFTNhyf0e+FZuE0rBpPeU86c2ir+jRrzwFikIFq1TJiK6Ks3EdSZzmnOvlJR7luhyMszpFdrtGluYGQ+cjJHt6fdz273eFNiR0qefqz6AhyLf1VuqSv36/7UOhmGoBEA11DLlKskVoam3W9Pno8GdzLHdnu5qtmWBLkdvZY3JFbY7SWBUPerP1+jHuBqNzafhdqWfOPf7HciXz2RoWvaZqYbHp13l+zKXaj/0gZ
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 11:26:34.1563
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5148797c-e469-45d5-4d82-08dea44fd68f
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C716.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_042640_741456_C09038A0 
X-CRM114-Status: GOOD (  17.75  )
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

Hi Andy,

Am 17.03.26 um 21:27 schrieb Andy Shevchenko:
> It seems the driver is half-moved to use device property APIs.
> Finish that by converting everything to use that.
As per v7.1-rc1 it seems you really just drop the last of_* function call,
while you're no adding any new device property call.
>
> While at it, drop unneeded argument to devm_phy_create() which
> extracts device node from the given device by default.
This was counter-intuitive to me at first,
but I confirmed it by reading in phy-core.c.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> index 2b52e47f247a..80eece74f77d 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -5,9 +5,9 @@
>   * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com
>   *
>   */
> -#include <linux/of.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/module.h>
>  #include <linux/gpio.h>
>  #include <linux/gpio/consumer.h>
> @@ -152,7 +152,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	struct can_transceiver_phy *can_transceiver_phy;
>  	struct can_transceiver_priv *priv;
>  	const struct can_transceiver_data *drvdata;
> -	const struct of_device_id *match;
>  	struct phy *phy;
>  	struct gpio_desc *silent_gpio;
>  	struct gpio_desc *standby_gpio;
> @@ -161,8 +160,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	u32 max_bitrate = 0;
>  	int err, i, num_ch = 1;
>  
> -	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
> -	drvdata = match->data;
> +	drvdata = device_get_match_data(dev);
>  	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
>  		num_ch = 2;
>  
> @@ -187,7 +185,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  		can_transceiver_phy = &priv->can_transceiver_phy[i];
>  		can_transceiver_phy->priv = priv;
>  
> -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
>  		if (IS_ERR(phy)) {
>  			dev_err(dev, "failed to create can transceiver phy\n");
>  			return PTR_ERR(phy);

Commit message seems sub-optimal, but code change looks good.

Reviewed-by: Josua Mayer <josua@solid-run.com>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
