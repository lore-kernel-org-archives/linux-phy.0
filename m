Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45E8CD4F24
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 14:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9YI69rxIuKsrMO6wkcNFatc1eJUJXBH7av2G+qdums=; b=0UuzY85Oz+02ZI
	nHqJcmIJuoUs9eURUD/JafYrFJs784Tx1UaJxOTsKMRi4oCUQCl2kuJbXUwDQ7O8byhW1SYBVKMil
	6TlacXJJmAzBcjvww/lkJ73wOLd0BLwAqBBWv3ygTevZR0KcNxsXPtd5sEj/isNfmhjSHzt0/yf5i
	4KR0wHXjgGD7kXZvlEZ2QPF0TBXQmfreBqsWff7PHnCkJ/RcpSFKagLNeFqJcoQMUpUDRyHMvh2Yk
	N9ZWsFEgLDT2wVTr9tyWDFppOAACsBgitbxoEujwrLxcuRkogpCHrDTgZOruuCDQ7LVFaeJ7mnlUt
	H48murJYer9Znlndbngg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAvq-00000002z20-2dnD;
	Wed, 13 May 2026 14:51:30 +0000
Received: from mail-norwayeastazon11023131.outbound.protection.outlook.com ([40.107.159.131] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAvo-00000002z12-1LLA
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 14:51:29 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=RdfNd3wqtYeb302ZB3BbxRLeSzkENLxYzdiYqmH0tgo2v55DoDfUuAqWc127zBK4TF3Qb4VKOZ9GuaabGJp70ZFpGlAtKhK5zslrSPU90vsN9lUQIkt1OhZUGEQKd0MqVazcfSmf07AyaoEU6jzNrYg4OVoSzU64vgoSK1TNJMVl/R7GnP4MwazQYm6Dsr2gftqKtTysGRoMUiYBGsy5SYXCsvdRMIjQB7uLEUH89r3sPg7aDJhnE7/FnnQpuro6UMYHjlxk3icu/pOGdoxIUBaCf8/cZ9scaOGyECyUfcqlwyKrBDGXEvUzxCVKt1i475E54IMGIqiduWsHqItIBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GhmnMHNCRgzRaBosyL6qr5Mn6QA+nUkDwPafusbj++I=;
 b=oM3/LYxy9FydDFJ9VO7RUwILmqZaI2jGRCPVYWMIIqPud+0mXZhjfdOmKfVXg5iRo23PrRKKBnDOFKM/QnuKJrqkYvbF50ll4U02evgT74nwn5UV20AfQFAXLXc01ftx0tKqpfVW8pJBQXFU0DX2hZiz0wESqAifFYEZaVbGusu6p4DPvpaG2USTPVWiTx4leU7Z6IiEdx6mxQQCnEcHJ0mR4ltznFH2yaNWXIMNZx3ffH4MF3O8o+Fpp6OYjlbCj5IvDdCthWPGr3JzxwvAUM6GYrxywWB28vgK5MkNk1l/W1wr85e/rwSzDRJMC2N874H9InE7lAH32L7yLCpeJg==
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
 bh=GhmnMHNCRgzRaBosyL6qr5Mn6QA+nUkDwPafusbj++I=;
 b=VX2PAFAcdp2guYnewJZ+pCxdZtU0PvEmRuQhDSJAOcO18duxpRWo7MjaWtZu70dAyUK/9CbEhb7aStRYl30uPA/0nB8BKiWzgUXvTzZlFBTxs53RdGOxVx0L+t52PcbDcnQaLbFDC7ngnxQKlUGeZzZDWm0l1dBnnD9G2lg3Fqfc5AYrp436ki1FkHT+lZ7/6ULwHYiJVjE//9cYIaKg9hlNAVuON+soUeVOnZr7MmsFeDQT0w1GvkBC+VZQFWy5BzSzpd0/r7+l+2TfDue3m7riNtLQzM+00nFeCJRzHknCC6zb/8TbtISSJ696pKmNFyVXpdWdgtqwp+f+M5Cz8A==
Received: from AS4P250CA0016.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:5e3::8)
 by DB9PR04MB8218.eurprd04.prod.outlook.com (2603:10a6:10:24a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.32; Wed, 13 May
 2026 14:51:19 +0000
Received: from AM4PEPF00027A69.eurprd04.prod.outlook.com
 (2603:10a6:20b:5e3:cafe::d5) by AS4P250CA0016.outlook.office365.com
 (2603:10a6:20b:5e3::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.18 via Frontend Transport; Wed, 13
 May 2026 14:51:19 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solid-run.com;dmarc=pass action=none header.from=solid-run.com;
Received-SPF: Fail (protection.outlook.com: domain of solid-run.com does not
 designate 52.17.62.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.17.62.50; helo=eu-dlp.cloud-sec-av.com;
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM4PEPF00027A69.mail.protection.outlook.com (10.167.16.87) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.13
 via Frontend Transport; Wed, 13 May 2026 14:51:19 +0000
Received: from emails-6261661-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-103.eu-west-1.compute.internal [10.20.6.103])
	by mta-outgoing-dlp-588-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 070DB7FDB8;
	Wed, 13 May 2026 14:51:19 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed May 13 14:51:04 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S1d6Rcjq0RvnoIEVwgEQ/TjqQsu8H6KxlGlh5S2X61L5qqbRQo8LjweFmtdZRdFKl3WGJQelL/hBjguCWw91iQ6s1cSA814RdqGJNu/AK4Xf4TPqCfZiu7eZrtJRqwwAHKQfO0HRfMNq1Ir11CLCZLr7hGTZOnV/+zpwFcOf+VFB9R+jr6p/P3dh5k76WIwx+qVyaQiiIILP/jMyDqromTckembkZVpNyrd2MefLBOujrvqTYMOEcjm1dz9fUHDSqwgRD4PMsXzD3CtNgrLJUsAHjmw+rtKoLpBMuDyirDldOS/iefxHHgKgDwWVST9m8XUtwifMlYnQJGVptTXPHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GhmnMHNCRgzRaBosyL6qr5Mn6QA+nUkDwPafusbj++I=;
 b=YfhHAiM8s43ogyDOwWuIKJ97ZGjyYHjs/vfnZjApea9zpuFFY7ORDnUzTTXofvFbfM7zbSkaWRQGO+afNpo75VGuu+5NaaXVpTGqroa5wn5mlUCfVTngQaN/amabhDXEPO2ze5FjUlHOCoTNUJ6M57y6Flw5IZoNWHZ4GnVsQpq8F3VtFFvlOZ3b6NIyVslzv2i8l8SGIWiGex5a42k9zDvFkW3dzHbrTvnS39Vz1NNxAkmdwxdcKKEYdgGdqjTWAWn1fC5hfdlPknttGYY//mG0dTJ7CxrqwP0H2YaDud8B1yWUU+oM5cyiAeks37PmWjBsvDZFrpp83fgIk2ajlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=solid-run.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GhmnMHNCRgzRaBosyL6qr5Mn6QA+nUkDwPafusbj++I=;
 b=VX2PAFAcdp2guYnewJZ+pCxdZtU0PvEmRuQhDSJAOcO18duxpRWo7MjaWtZu70dAyUK/9CbEhb7aStRYl30uPA/0nB8BKiWzgUXvTzZlFBTxs53RdGOxVx0L+t52PcbDcnQaLbFDC7ngnxQKlUGeZzZDWm0l1dBnnD9G2lg3Fqfc5AYrp436ki1FkHT+lZ7/6ULwHYiJVjE//9cYIaKg9hlNAVuON+soUeVOnZr7MmsFeDQT0w1GvkBC+VZQFWy5BzSzpd0/r7+l+2TfDue3m7riNtLQzM+00nFeCJRzHknCC6zb/8TbtISSJ696pKmNFyVXpdWdgtqwp+f+M5Cz8A==
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 (2603:10a6:150:313::24) by AM9PR04MB8524.eurprd04.prod.outlook.com
 (2603:10a6:20b:433::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 14:51:02 +0000
Received: from GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b]) by GVXPR04MB12057.eurprd04.prod.outlook.com
 ([fe80::14f1:a127:2988:de5b%7]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 14:51:02 +0000
From: Josua Mayer <josua@solid-run.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Ioana Ciornei
	<ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH phy-next 0/5] Lynx 28G SerDes: 25GbE support
Thread-Topic: [PATCH phy-next 0/5] Lynx 28G SerDes: 25GbE support
Thread-Index: AQHc4VcBkZNuTcFhd0GbjL0NmfO0lbYMDScA
Date: Wed, 13 May 2026 14:51:02 +0000
Message-ID: <80af628f-3697-456c-93ca-b3bd49e3ce7a@solid-run.com>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
In-Reply-To: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic: GVXPR04MB12057:EE_|AM9PR04MB8524:EE_|AM4PEPF00027A69:EE_|DB9PR04MB8218:EE_
X-MS-Office365-Filtering-Correlation-Id: 697ed5ad-e947-4c87-0a90-08deb0ff17ae
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|3023799003|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 8+ox+uyuJJHBAeaH4vlHR/IVDswSZnSRlMUaKz5IfQA6BWWFSe2p3wTs7tAudPvJXTmhN/97cs1j/nKm3kCI9zXS7LR/M31k7+0djITdibSu+ugLIAzEom15RgvsfSjZodwfnbzJwStIatdwKeOJKD+pFNZqfku/EiZhl4EsMLSlfAe2OT/VK0rIaAuFtdyu27W0gqOt2fsbNIhirkeoJKf23m0Pze0Ix6DUX6BKZ8q23m373E2SahyqcJqd4I4gh0JjYkr8dqT2F7Ufjht8WjNYdctVV3zhBryh9gHr0ucSbiKwTZ+6dTBhU7o6WNzZto98YXdCzABJx0JDqkAUWINTEI/tK0LS1Mtkt4obmtnhuPQ48s4iymd5h/AXun1jsWRiuL0uQU9QCjbFg97Ku/5VLb7sivyGCyay5fAOTFGcrDryjktMkt7RaWwT5D1J9NfIhBtag6z7KXA+N01KtsuJLBvjpmWQA18PP+FrF/j6qcuUASDSXwZr5ELeNh+n4cUJbR4E6+0DXp4X1hEF4R1aimcymZQU3f4OPETJbGRnmEnfRCRxun27WNQQ3z6/DptX/3+EmEdupYn7qgcnXcqT65AJpbEIgFaDK1O1tfBFd376OMPqUPk7+ExMCrNIdfyJUqSOLC8sofnQQXUdmAZZ17KE+9/KjJK7X1ItxPrmBGB/1LZOY/cOQGSsgzHFSnxNEju+9dpuzKAOr8ShYSzfvAHIyYphtVceefKAfn1D/YkefuBhv0o/9+C6/6GR
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12057.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(3023799003)(38070700021);DIR:OUT;SFP:1102;
Content-ID: <DA55ABB2FDB39043A552C8D7485920B6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hSbUneL7BrfoP2k54OTMAqG0AUlK4uoAwOOva9g6aG/O1Qh6hQGKm0L80tsQLJD+b9ekLQCKsTi2r+pqM66P+IWl/eKtIIJVPb9CvKl0cVrtUfsFO1k/T9IOoKSlb58+hZ4JYroBbY+Az99TfX2sgg8Y91zPmS56Bog+P8sajWKElUEXPP3jBfWFLUTGb9mqWOJRA7xaqqqiA9Y5UZG5BWUVTQmEUA8o8AoYyMWqZvAfIWQVPWuMjuvLX01bOAivRpLgni5tEOAWg/ttLfF27U0D9y4pZlYBn0qQy/pLmcBqV8c/4ojMKes6R805z+dNJTB4bausK4LIghMagKokUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8524
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2-7.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: df8bc9b6473c46a3bfad9d384bc7c786:solidrun,office365_emails,sent,inline:1412bcce9e7a9c86e8f6ce96ca54cbf1
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM4PEPF00027A69.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 65456101-80f8-424e-7501-08deb0ff0db1
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|30052699003|376014|36860700016|35042699022|14060799003|82310400026|18002099003|13003099007|3023799003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 07XFXyTjygJ9YL8oDpz9Pgb3d1lq6ls1rFMWVGOrOJX7WqYYMWdlPtVdwQzmOVJqYrCIue64WFyFkwVCeLww/4qlvoOtuvQEIOVyBUHZOBZwRgNuJrU4eKbwPIf2JMrGFWTIyHBxdFByWUTF3ksOVonGPvJQ+hock420OaybQidBiQJXoXyB1WXK1l3hRdyTMpRyjxgf3rsdmed2xfNcyehpFs/WI3t1gYdg8A73fmEMZ+tJQ/AaO/mVzdxp0FkJV8iZ7Ve5kqd29exji/QtvV8zDlFV1T42xEj/av9UNsa4VkfcRorOil3fo3JyPqKNXLww25mMPRJZHyav8yeq3y9RHC5h0fSwwvuK1F10SyWT0CxhRe/aAzFhsXJ73+nyfDFFPB7IhPkPP2+5+OCG16qm7TP9d4Jy3MWjf4mJ9r3LPslzOaGWZ71FGsVFaDTMqkNSiueT3uBL0Pcc4v9IuoYmjWkRlmVy88FYoJ9Q/njKrtg6JbU4gArS+T6QV+lxAzydqvZvnytrwD96zRK92MOq8z7VXYHLmlz1Uw9pqqllSgLCt8BdbkZ9hN1XpXnO9adnei4jxpmn9zdV/fWutlPE6ijvbZEgKcPXh3gdlyeiXndtNx0ddDQWffDPMm8zg+IwL/CLvMBHW4oAmv5JmDbBKVythfXnSOnlbXud7biECD4ZZg8x8WgzNS4S/aj6cJfZlG5JnMCEXxqBaRm3KO5Du4hUvHfPx5u59FnTRDY=
X-Forefront-Antispam-Report: CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(30052699003)(376014)(36860700016)(35042699022)(14060799003)(82310400026)(18002099003)(13003099007)(3023799003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: rb6p1LqBbD/PzZKpbyzqNPsQSiyJQdM8hwTb++otfGMtvM9VWlUWc5jp8XuwYP28fVX3tTaht31+EvZVdmAIBN+xrEICrQhu+JqIkBTRr/uUo1dQ1RM3JDUhxvXI2QZbsngiT7rjsBYGGBBEBToMJNOvfMKwv5fYE7HtbvwxxIK2ZdzCid5g9Gl3oauNEav6H0i5nvn1eUL4JJpcvM5XFfJm2W6t4BTthC5rl/oIOzKsibBSeeRvTZEFbpp0V/AHhmFxpvgPa5XXHL6GhQnYiCYbGABpa9UvHsr22DzeDxZgLVtGp9OZ/41hsXYDxXm1xQE1f1O3QSkIR+poHYsyK7pGXtAmf6Xb5ZAcVw517dkkoBwFu/51iWmqi6oTsI+hzPhF/UEkjrkO6cn97LH5DeuBY+XNrWv1JzakT8QMAk02cpGVzQDS/nwtoe4tslLn
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 14:51:19.2612
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 697ed5ad-e947-4c87-0a90-08deb0ff17ae
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00027A69.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_075128_554129_0F73ED11 
X-CRM114-Status: GOOD (  18.03  )
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

Am 11.05.26 um 17:00 schrieb Vladimir Oltean:
> This is the remainder of "Lynx 28G improvements part 2", previously
> submitted here:
> https://lore.kernel.org/linux-phy/176850672122.1082429.444623229961712368.robh@kernel.org/
>
> but split up into smaller portions (merged separately):
> - https://lore.kernel.org/linux-phy/20260226182853.1103616-1-vladimir.oltean@nxp.com/
> - https://lore.kernel.org/linux-phy/20260321011451.1557091-1-vladimir.oltean@nxp.com/
>
> What remains is the highlight feature (patch 5/5): support for dynamic
> protocol changes to/from 25GBase-R, required by SFP28 modules. These are
> used with the NXP LX2160A and the (Ethernet) dpaa2-mac consumer.
>
> Patches 1-4 handle the following situation: with current device trees,
> the driver will think 25GBase-R will work on a lane, but it may work or
> may not. This is because not all lanes support this protocol. So we
> modify the SerDes compatible strings to identify them, and we use a
> driver-internal database to figure out on which lanes does each SerDes
> instance support this protocol.
>
> On current device trees, 25GbE is not supported.
>
> Detailed change log in patches. Summary:
> - reworded commit messages
> - change match condition from dt-bindings change 2/5
> - patch 3/5 is new (reject probing on devices with no OF node)
>
> Ioana Ciornei (1):
>   phy: lynx-28g: add support for 25GBASER
>
> Vladimir Oltean (4):
>   dt-bindings: phy: lynx-28g: add compatible strings per SerDes and
>     instantiation
>   dt-bindings: phy: lynx-28g: add constraint on LX2162A lane indices
>   phy: lynx-28g: require an OF node to probe
>   phy: lynx-28g: probe on per-SoC and per-instance compatible strings
>
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml |  48 +++-
>  drivers/phy/freescale/phy-fsl-lynx-28g.c      | 221 +++++++++++++++++-
>  2 files changed, 254 insertions(+), 15 deletions(-)
>
Tested-by: Josua Mayer <josua@solid-run.com>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
