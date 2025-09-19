Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A529ACAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:From:Reply-To:To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fb4c8i8+o8Wscu9dLGj70009BUhrGbY4h/FrGK9l0Ik=; b=fP87ddOo1/j+Lc
	PCXslRM0p1jzwkY0xICBLgFq3TFFQifv5FXoH3UKdiswZN2JzUZkr2x1mUaumXu8RozvOsnp0w0Jj
	rlxkdhLZIQOklscOdIS80QmFAvvf/Yim2Vc2BTLoJoKFc1QXXKUwr7t84RY76PHiOyxuStjDneSTW
	8NphJcTAVgNWPekWJARle3o+ZdooakAoktOmhBrsLJirf4g1rd6wIGx3r71Q3rCfaqjWap1mn9i52
	1alm9KhX1tHYf/vxHJx1CE/0+n/hhog18qTG8znxzE56Gddr2kxsbDT/JrPAIZtr3xk8g0IhTV3ZZ
	RKfKDQ0U/m1FPoHkM8sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzjnD-00000004ERv-1FA1;
	Fri, 19 Sep 2025 22:41:27 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzjnA-00000004EQM-1xs6;
	Fri, 19 Sep 2025 22:41:26 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JINsih012362;
	Fri, 19 Sep 2025 15:40:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject; s=
	pfptdkimsnps; bh=3nEU+P1MjKM1MF6iy5VME1s5E6nsOvubS3r2vQSTlA8=; b=
	qK/KbNcojWVBzVCoNFlDDX2RIaZfhxxI1fEwmepM/VCwIeP+Zg67lVeXVCI6a3nY
	SACNS3Y+CSeurtW7z6PLsEc4ZGIzr4p7TQe7lQUQdULXIvgjOHnoUBC0rMeSiDGZ
	3kUf4WeJgM6RaOx8ZNcEB7D3T5W5hZZ1oJrp7rutMcCJ4EORyjHoLIwhFO1TwDxE
	6KNVP1B26IPpfpR3yjTZFZCn/p/y+BtVqNIatrJGWpNDY4Q7kQav9SNmdO3RcUkq
	DT41yueaOwckopj9CALJFmMrUU39P3B9YH2RnEZyZnDNjaexxzzhvEJBzErWi+WX
	pXY+9ilReFLA6gjjtZvxTw==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4997fdjjb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Sep 2025 15:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1758321636; bh=3nEU+P1MjKM1MF6iy5VME1s5E6nsOvubS3r2vQSTlA8=;
	h=From:CC:Subject:Date:References:In-Reply-To:From;
	b=kYCdu61GrHhT+ljyAdaF30mLRUSK2h7FWwW3aeFEACyR9bEIOQ+hAgelYWSrlSOCB
	 q9QErnitZy08d/SWAIri0/QJPGGGw2i1eh65Yw73tDOJKGoNUPU0mX+ghx/U4fF5W8
	 EzFFLX1ylg0pcJoVDdZeDizt8ew6+6IdR/h+PCKhwYDxsIs0gurqdcqvcTk/4nL40z
	 PdYVVNNkdHjwFYmPCLVvu1UsG6NjZqVUksTxg8hE1ZE7wVOWKrwNVX6bo3ljd2IRCX
	 d+3+8vn62nIALImHSvlz6Zad48VI0KTNuOuyyvPabzXkGfk1S3gwymW5hwmBNxhyTP
	 l6H1C7prUKNpA==
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com [10.205.2.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E9FD64048F;
	Fri, 19 Sep 2025 22:40:34 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 2F2D9A006D;
	Fri, 19 Sep 2025 22:40:33 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=KUK3UF1o;
	dkim-atps=neutral
Received: from BN1PR07CU003.outbound.protection.outlook.com (mail-bn1pr07cu00307.outbound.protection.outlook.com [40.93.12.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 8C1E440526;
	Fri, 19 Sep 2025 22:40:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XYM6vy+Uc7MnP5f1Vllq1KQm2L1IeJg3pM6lqXw8A8VRSwXtTqhLe5zMvkIZ87wJEzUMZaVRLYDlJNGS56SJHXjUhsdTR7fg8WR4yBjEipTob1ug0RZejql/zoMihB98yZouiEd8jq7zSotoW7Gc7mKcGQGTvmyCL8xZD7VzFhfkzA1sLzC5nExhKppU4egMPl9pyX4SUQAP3B5EYWXVwQcTMJxYGqHo534XBY0vEly18saCui6AYYfXeVuGqi0i2hyCJkPv/YkSxLA5+6lJYckfNLXP8eCDvR0LH+CAygUg0p8mS2y5ss5CGSmSfBQPW2VQ6rBCZ3LDfbFfGK1qIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nEU+P1MjKM1MF6iy5VME1s5E6nsOvubS3r2vQSTlA8=;
 b=cCnKkUBefrNX7DiymFN6vsDBUGawg2TEYxd4BtD+xpuisH8VOOutBNsfaiY1NWapLd6sTXOvFsK5HnOO7SAY/yD7hviESQh6anJMsHH6hIFnnFSINU+Q1/D3+IvfXmRAat8HwR94jUFbbVlGwvt15HlX8FMIvZcsXm41f1gmXc8+AU5fFlixQ5zLmvetqnJzUOT5vspqSpw4FeIrrp2mJ5g8SP7sbHJrw4bgpZQmi3MtO9efuyOvUZ++AEV+1/JlAD67bxPcKVJmeIPf3l2F0c7AygXVjvHJUWQ0T8b2dZh5ExZy6tBAOA+bjQGHEU1qBsm2O2JHNu1r0OJjLXFYyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3nEU+P1MjKM1MF6iy5VME1s5E6nsOvubS3r2vQSTlA8=;
 b=KUK3UF1o6XCnmy/1sc++oOLM9LI5xt/TMTHbGlyIzy2rCjgn/RHYh0IJn9/BQJ6w1sIyTWuaTkizdzXZuDX/4NpFvKpVJfLPAxwcUHE91wGHDZ91OgB6CkWMZXl0F87poUE2Z9Nz/EcY6/Hk/YVSB5PBYypEOqMmmiS2PLCXeeo=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by MN0PR12MB5739.namprd12.prod.outlook.com (2603:10b6:208:372::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Fri, 19 Sep
 2025 22:40:21 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9094.021; Fri, 19 Sep 2025
 22:40:21 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
        Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "asahi@lists.linux.dev" <asahi@lists.linux.dev>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2 04/22] usb: dwc3: Add Apple Silicon DWC3 glue layer
 driver
Thread-Topic: [PATCH v2 04/22] usb: dwc3: Add Apple Silicon DWC3 glue layer
 driver
Thread-Index: AQHcH0UITP6vLUUNgkWBWYMDFAvIi7SbLjIA
Date: Fri, 19 Sep 2025 22:40:20 +0000
Message-ID: <20250919224016.gyao3aoka5ineear@synopsys.com>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-4-52c348623ef6@kernel.org>
In-Reply-To: <20250906-atcphy-6-17-v2-4-52c348623ef6@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|MN0PR12MB5739:EE_
x-ms-office365-filtering-correlation-id: 42e86862-7187-4b78-a798-08ddf7cd83e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?cjBDL2VhdGxRZXQ4bXZJOFNSa3VzcmNKRGJTWVNiL05lTVNZUWlOTCtCZ3U4?=
 =?utf-8?B?MzgvWmVhVEVmOTBHS1hMZks1TzFLM1R6NU4vNnl5YmIvK1pqckVEamxwMmFS?=
 =?utf-8?B?V0c3M0x1WjU1QnowTjhUOGZLVG01S2RETFVVWmRoRC9zTStOdFpiZnJQTzZ0?=
 =?utf-8?B?dW9zRW94ajhVV3ZTcDVhaE0yUGF4TG9vQStIK1JQN0VpdVE1OUNibWJDY1hD?=
 =?utf-8?B?b2ltNXE0TG9hQVluRUhRd0VxZzJadWRERTRsOTNiUTdUWVNiU252bVRCUjdS?=
 =?utf-8?B?MFNaSVdlWVFmTmowUmdkSHovUVpmRm5OUFh5Z21LeldMNjJhbkF0Y3RSNnVp?=
 =?utf-8?B?QU1YUDd6ZnpDd1kxT0F3eEJ2NWdOQStINGc4Mkg2VUJEUEwvUVhWN284blpC?=
 =?utf-8?B?bnRINC80TG1RVkw2OEJUQzRlYzdSeEsvVElKR0FSOXRDZjlycjBmSitabkZl?=
 =?utf-8?B?QTNDdEdjNFJnYTVNWDZMS0JHWE00Q3daa1ppNHFhNEk0dUNxUDl1dmVtYi9G?=
 =?utf-8?B?ZmFKSUd2Q1NDN3duK1BwSFlrNlBoMnJ5THZHNEdTbktoRUltTEhLK25YcVQ3?=
 =?utf-8?B?ajlGVVJrM2xsUDg2TUtDWkZxOVc2T2FiZW9tQnZ4dGNVdit1YWtrVytveG1Z?=
 =?utf-8?B?cDVOSjJGVDU4cE9XbldlV0o2M3NtR3JFWUtqQ1NZTm5wYzQ3QzRxUit2QTlt?=
 =?utf-8?B?T25rRlBPVTBOWm1EeUpjNXp6amxRTmh4WjFSNGRKM3NuK2NFY3JHc2NnRGlL?=
 =?utf-8?B?RGhyNFFZMzVsRUhZMVZ0a3BpMDNSM1oza3BBVEx4QWJDS0NQNmRLYjFFbkpB?=
 =?utf-8?B?L2tWN1JCWE9uYm5hVG55RzU1WXU0VFFVeGl3cUdiWEZtbmhPeUhOQjVnOS9Z?=
 =?utf-8?B?OXp3NjFYemFyQW02Q3BaWkl0OExaRFZ5ZnZsR01jYWwxWU5jQ1hMQWpVczU0?=
 =?utf-8?B?aTFtQ2s3NzAyeG9Ha1JxODBycHRHQndkODUzYU1TY240M3pQS3ArNDU1dkxl?=
 =?utf-8?B?R3RNZTdOd0ZyWkZBWForNkFYR1NMWmdnUGQ0eEtOc2piU012N2NQcGJHNFZJ?=
 =?utf-8?B?SGpJbUdIZ0hRSHVRb0k2cXFMd3FaL1NEQXhxdzUwS3Q4WEs0VmYwVFZ6K2NI?=
 =?utf-8?B?YmdwWlZxSVZpd0pBbi9XRVBYWDFqMGdOaU5Ma21aRk5NbmVYb0JIOWZWcGVY?=
 =?utf-8?B?T1crVE5BSlJjYjZ3T0g5bjVBMzdvbjBvWGRzM3JzUDNpakRKV0d3bUIvc0Nv?=
 =?utf-8?B?SW50MzdsZEJTTDYyRHplSDZtNWp6bTJ4OVJiSk9VbVhoZno2SFpZR1Q5VFgv?=
 =?utf-8?B?QzFOdzVSakJtZ0pxNFdBSkNicEtDbkVBNWJoaGZaUHVXQTBSamFSUVNKTkRX?=
 =?utf-8?B?RjFKcmhrNERUL0FpUUxRWDVvQkpmTHVRTHY0dFpCYkgzSGRMU3lSLzhCRWty?=
 =?utf-8?B?VStMK3VZalQrMnZUZ0t0bDBLbUZGTGVJVHNYYkZyaU5KK0puN1BCZEdqbjVM?=
 =?utf-8?B?MTNlYWcvcU9lZjQ3a0tmWkRiTUtLanViQU1yM1YzenB6S0NDNHczM25XME1j?=
 =?utf-8?B?M3FrTG1uRUhKcDRXTUtoaUxpWmlNOTlIeEp3Rk5qS2hZSlEyMGpEY3RyYzJC?=
 =?utf-8?B?Q21PeTdDTXgxbmprZU1ZdmR4ZktIdVo2N3MrMGpSUUoxNzlhbkFxTjhFMmVn?=
 =?utf-8?B?clVNRWxEbnBva0xPS0ZxYkdIWHNMdG1FMWZpZzFOcXhVUE5rcjhZb0ZRSzdJ?=
 =?utf-8?B?Z25QdHN6OGgxWGUza2dXR2JCelprRlVwTWNUSlFGSFpDaTRVQ3VSZVVaNm5j?=
 =?utf-8?B?VFA3aTB5Uk5KLzdvcXpDQzR0MGJQay80OFFsbkFCeEMwekpWSjI3dEtyTm4y?=
 =?utf-8?B?M3NtZGZpUFM0U3RjWmtlUVNwR3BodmdYWTVFV2tlWndVYXlCT2k3VEowdDEz?=
 =?utf-8?Q?zY8Xkatqfk0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWU3cVhleTBTemp4dDN3UkVkMlgyRXNVMHcwMmd5bGp3Nkx6RUI0Tjc5L2hj?=
 =?utf-8?B?aldsSldTNU9JZjBoN2lnQVBkR2pTM2RrUlQvaXJ0RVREdEYxQ0xyVFhSQ1pa?=
 =?utf-8?B?ajBRUjhJUzNzMlhNKy9GN21yRjRLZ1ZUbGlJSzhyMzFRUFd1VGJzblBrallI?=
 =?utf-8?B?OWV5bkVvRUFKa0tCUzJ0OTl5elZSZkFFQlV3ODNUcFlzckxZVjhrVmxRcUZV?=
 =?utf-8?B?MGs5V2JkY2dCNVdiQk95NEdIZk5CK3JBcEFNb2hBRTdSd2NzRGROWlh5eEJH?=
 =?utf-8?B?YlFUSTBicEJXbE1VOHQ2NkhhUXV1MzRIakRWUFZ6Y1dRVDFFcXExZ0RIU0Ux?=
 =?utf-8?B?SGdUZU91SWlvZ1IrVVcySGtCZ3NyTVZQRVFMQUNEN0lucVZlRlZ1YkoxaE9O?=
 =?utf-8?B?Q0xianIyN3JnUWJCSnpHdWNKUFVXbVVmVlpnNEY3disybFpuMjR0NjlLb1pX?=
 =?utf-8?B?SDdSek9JdzZLWG1pcWdnWVlqTCtUdlZtT2JsMTJYaGRTL2VYR3lxQXhFMWk1?=
 =?utf-8?B?S0VjY3dIUnlIZ1dqTmY4eW9yNUR3ZlNhZEhIaXNVbTFBN1V6WC9NWGsrSkFW?=
 =?utf-8?B?RUozTGs5T3JEZ0VwRG9Db1NDQW1EdjRCcjRobjdKQWNWcHlleHRGRk01YnFX?=
 =?utf-8?B?YjYvZ0tjQWpGdW1aZzJQUGVHOWw2S2hqS2pSRG5mZjhsaFg2MHNnaldhZVFq?=
 =?utf-8?B?V2tpTnhjTjEweXpuUlN2U0x3QVI2U3RyYU0zb0IrdGhHcFlUMkR5bDRjVWZa?=
 =?utf-8?B?WVBIdUdHMUUrOFhENVFpYnNVTHl3QkYvK0JvVEx5ZWRTQ2k0MzRpb1NPLzM1?=
 =?utf-8?B?ZTNnL3g5WVQ3bm9YelZzYWl2Q3dTNElOQjZ3dDdFUmY3ZFJVZXVHNWFWVEg4?=
 =?utf-8?B?ajZDN1p1UkV4dXNrVXJ0bGxKT25CUzU0cXJCeCtPdkR1OE83RGVnQk5wRU95?=
 =?utf-8?B?SHVJdUkxdld6aEF3WGJvSmY5dUZsUWlxVVdiWVFpTzFNZlRQUk1jSmh1NFFU?=
 =?utf-8?B?V2RoS3kzbDBtSW1MNDF6a1luaTJva1B5RmkxOXNTQklnOVdiYjE1VWxRaXlF?=
 =?utf-8?B?NzBzb3pVbFBzaTNySEJWYzB6YTRxK2c4TTJQd0Zyd01mL1Y1WUxTNHpnVlk3?=
 =?utf-8?B?bGdyZzBpWDJNWi9rOXVjQkFwVHJkazdyd3VJRFAxT1p2U1BQMGd3OTh0aU5U?=
 =?utf-8?B?L1h2eWg0UGxNRzMxaDBQb2dPZkZHOG4zYXprR2pmZlNlRUhXTnUrMkxrTHc3?=
 =?utf-8?B?TnJ3Y2hRK28xaGVqdFJVSFhYY3diTmladWsyUDNhWkJTcmtTcW1PLzNLUk5n?=
 =?utf-8?B?L1JDVTFXQ3d1U0FTMG9qUUJjY1dtNmZxc2xJcGpRMFk4bE8yaUttUDhHTlJm?=
 =?utf-8?B?QTY5cUsrZmorNFRPY3dTejZibTdOcDRUNy9NSXYvT3MxMEdtcFJiY1VKZDg4?=
 =?utf-8?B?UVhrZVV5eGM0b25kS25xVHdTR244aWo1blM1NmFtOHpmaTZEMmhBVTZ4SGE3?=
 =?utf-8?B?REYzR2NKVlRpRzBWVjNxdUJoT1g2VFBUdW5aYXJNSGZRaG1UWjNrSVl3N2Nw?=
 =?utf-8?B?R09LSExNRnB0MDJ6SWFjT0xVOXhDRUZja2t3YUpGOTVhM0VJZWtTT3J0eTdZ?=
 =?utf-8?B?TitOZjI2aWFLZVBHUDMwQlQxV1ZHUHdYbFJWbGlXelhjalBFeHBwT3pzeUFi?=
 =?utf-8?B?RTZzQWNzemtkeDkza3ZiWWdGeGJNOVZxcHphN1ZXNzFMVXowSkRNSmFpVUh6?=
 =?utf-8?B?UUY0MlRQNzZYeTlHRHFUQ1VQZm5VQXdFZEhBNStQb04zWWlVRnNxT1V4K2Rt?=
 =?utf-8?B?dnJmanRRQ1dXeW9uNHBFS0tJellLTm40c25mVTdUSVEzS1VVbUU0VkU4Rkp4?=
 =?utf-8?B?bXVnVnJORDRkUXd2VGFWc0hlblhoL3A4OXBlYXFFUHgrQnR5cUMxYzJ6REVM?=
 =?utf-8?B?MnNkZXlOcURCSWhoak5oTkk1MUJkMVhtcUJFQ29RSmQzUHdTU1doREM1cGdy?=
 =?utf-8?B?UzhiVTFDM1Z6OU9BeFUvV1pvaXV4VWxhVXpUMmFCQ3oraU9PN3loaU5HSWtD?=
 =?utf-8?B?bFRReE52SW8vYzZDN2RQTkxzcGU3dW45RjVlUjRoZ0svWXZkTzhIT0M4Z2Np?=
 =?utf-8?Q?QUc/n8CIa7a8zM6t94MONeqJy?=
Content-ID: <F846995D0ECCDB44B0C885B2A2472378@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: EIp+2Ly25wpnKWKz3pavP4PMo4l5G7LJnAnYbwGWbHYFLpOkvlQDKJ4Ob81lbJCvsDQ8wqogWSwA4WwlBvGJ33m+fx0QnYBrI/abQ9ULvdVyMjze8bibE1aCo1l2N/GTUiY9jU8fKT8LLESZlAsxhM1ScJQguBkzgpCD+iQTD1XnGIBegPE/5o0gC86u8kPvzWhHrkeCtbIxq1P+rdsKwAMpRznZR/kGHcSGNRSlv7BC5G+4SoN7J0tTKpDnuclWOoJJY2h5yiTm8YaZyfwuS7ZlwuN9468Zvd/EER7VsiG2GmlU0JnXwHl8TULmYlbUrCL5m8aTBSJMAMm201Cw6dojf9NTwf2cMl9GU8RbLKrdxRP5CjwOGqB1+8lY3dIhN2iGXZB2WciP7vlTPEnEUl+ptNsTijcllBT9gHNJPIugUzqH4F/j6riFm2bdpQ0JH3V0dzSGx0GAO9Obd+ubcnkv8xN4uXrOwc2MmExz9d8YdSi8iTmmT4pShlqSFUdkyFhkfwCX4tPLdJ0tdD1njibPcFogFbIzvYHtKB02RT2nQD3ILp49bxUW6CXIqNY6WPjCz49iEbXNoZ+4zTni2SaXkIqYVxQaWq9/4gomsdzzMwNFMCnLkCdQmOuXxIoWxIMxiPSoy1AtAClQ4k9zyA==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e86862-7187-4b78-a798-08ddf7cd83e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 22:40:20.9414
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hY9poKkTbzYU9L/613RTFJJhbj8BSZ3UJmTRL0PLQ0kyOdF9my5WbZ8ICdeXYgTD+rYkWdUpBxlMuXHsR3vweQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5739
X-Proofpoint-ORIG-GUID: ytRnh_IiQEowiJ46Ca2BvQQXqmyF_uPX
X-Authority-Analysis: v=2.4 cv=bIAWIO+Z c=1 sm=1 tr=0 ts=68cddbe5 cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=9cW_t1CCXrUA:10 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=qPHU084jO2kA:10 a=sozttTNsAAAA:8 a=VwQbUJbxAAAA:8 a=euJdPrHHoiAxPbYWO2AA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDExOSBTYWx0ZWRfXwvJxiBJxc9uQ
 lBEhxr/ckpcWCDYSb1VRe8vPInqFjsUCkF719V0cEtGg+fqPUBdtdyome2aKAqLuY/DxLNq22U2
 g+p1AdtHsAaSQw9fbWswu1ODcj2EIcnDsGoLshGvDv7um7swIj63Fw5X4bImPICE8sCXq9Y0GxJ
 c6BAZrPyzB7tlCPuNh2RCxTiUV/sGCdZqvRibKNfaViJpfmeupEH13hmCsradH8yV3rat5mR1nd
 EAC7LoT76xnu5kIVjOlsQ2w3zND1p8+L4ke/AOws6UIxOKOfLpugSrixJSdjjp5D/ycJQoey1Qz
 haVFOIyhj8QUl/XToa0vet72I69HukGEI1b6b5mh3fVHsUR/JCFc7MvPRdGVMrGAQHKKA4YHnTv
 SheKGQXj
X-Proofpoint-GUID: ytRnh_IiQEowiJ46Ca2BvQQXqmyF_uPX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_03,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 clxscore=1015 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509190119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_154124_664866_BF24E1F3 
X-CRM114-Status: UNSURE (   9.96  )
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

On Sat, Sep 06, 2025, Sven Peter wrote:
> As mad as it sounds, the dwc3 controller present on the Apple M1 must be
> reset and reinitialized whenever a device is unplugged from the root
> port or when the PHY mode is changed.
> 
> This is required for at least the following reasons:
> 
>   - The USB2 D+/D- lines are connected through a stateful eUSB2 repeater
>     which in turn is controlled by a variant of the TI TPS6598x USB PD
>     chip. When the USB PD controller detects a hotplug event it resets
>     the eUSB2 repeater. Afterwards, no new device is recognized before
>     the DWC3 core and PHY are reset as well because the eUSB2 repeater
>     and the PHY/dwc3 block disagree about the current state.
> 
>   - It's possible to completely break the dwc3 controller by switching
>     it to device mode and unplugging the cable at just the wrong time.
>     If this happens dwc3 behaves as if no device is connected.
>     CORESOFTRESET will also never clear after it has been set. The only
>     workaround is to trigger a hard reset of the entire dwc3 core with
>     its external reset line.
> 
>   - Whenever the PHY mode is changed (to e.g. transition to DisplayPort
>     alternate mode or USB4) dwc3 has to be shutdown and reinitialized.
>     Otherwise the Type-C port will not be usable until the entire SoC
>     has been reset.
> 
> Additionally, these controllers have a Apple-specific MMIO region after
> the common dwc3 region where some controls have to be updated. PHY
> bringup and shutdown also requires SUSPHY to be enabled for the ports
> to work correctly.
> 
> In the future, this driver will also gain support for USB3-via-USB4
> tunneling which will require additional tweaks.
> 
> Add a glue driver that takes of all of these constraints.
> 
> Signed-off-by: Sven Peter <sven@kernel.org>
> ---
>  MAINTAINERS                   |   1 +
>  drivers/usb/dwc3/Kconfig      |  11 ++
>  drivers/usb/dwc3/Makefile     |   1 +
>  drivers/usb/dwc3/dwc3-apple.c | 425 ++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 438 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0e085cb0762f765958d67be61ae0d3d773503431..e147e1b919d5737a34e684ec587872ce591c641a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2424,6 +2424,7 @@ F:	drivers/pwm/pwm-apple.c
>  F:	drivers/soc/apple/*
>  F:	drivers/spi/spi-apple.c
>  F:	drivers/spmi/spmi-apple-controller.c
> +F:	drivers/usb/dwc3/dwc3-apple.c
>  F:	drivers/video/backlight/apple_dwi_bl.c
>  F:	drivers/watchdog/apple_wdt.c
>  F:	include/dt-bindings/interrupt-controller/apple-aic.h
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 310d182e10b50b253d7e5a51674806e6ec442a2a..8161cd8f5d0d82826262518a1aefa3096aae83a8 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -189,4 +189,15 @@ config USB_DWC3_RTK
>  	  or dual-role mode.
>  	  Say 'Y' or 'M' if you have such device.
>  
> +config USB_DWC3_APPLE
> +	tristate "Apple Silicon DWC3 Platform Driver"
> +	depends on OF && ARCH_APPLE
> +	default USB_DWC3
> +	select USB_ROLE_SWITCH
> +	help
> +	  Support Apple Silicon SoCs with DesignWare Core USB3 IP.
> +	  The DesignWare Core USB3 IP has to be used in dual-role
> +	  mode on these machines.
> +	  Say 'Y' or 'M' if you have such device.
> +
>  endif
> diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
> index 830e6c9e5fe073c1f662ce34b6a4a2da34c407a2..10b5e68cfd68d5ca9aa5a27b04f349f9bf58e65c 100644
> --- a/drivers/usb/dwc3/Makefile
> +++ b/drivers/usb/dwc3/Makefile
> @@ -43,6 +43,7 @@ endif
>  ##
>  
>  obj-$(CONFIG_USB_DWC3_AM62)		+= dwc3-am62.o
> +obj-$(CONFIG_USB_DWC3_APPLE)		+= dwc3-apple.o
>  obj-$(CONFIG_USB_DWC3_OMAP)		+= dwc3-omap.o
>  obj-$(CONFIG_USB_DWC3_EXYNOS)		+= dwc3-exynos.o
>  obj-$(CONFIG_USB_DWC3_PCI)		+= dwc3-pci.o
> diff --git a/drivers/usb/dwc3/dwc3-apple.c b/drivers/usb/dwc3/dwc3-apple.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..27674f0c284104cbbe75f51cd55593a964c8c9d6
> --- /dev/null
> +++ b/drivers/usb/dwc3/dwc3-apple.c
> @@ -0,0 +1,425 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Apple Silicon DWC3 Glue driver
> + * Copyright (C) The Asahi Linux Contributors
> + *
> + * Based on:
> + *  - dwc3-qcom.c Copyright (c) 2018, The Linux Foundation. All rights reserved.
> + *  - dwc3-of-simple.c Copyright (c) 2015 Texas Instruments Incorporated - https://urldefense.com/v3/__https://www.ti.com__;!!A4F2R9G_pg!Y-C3WLMl9OBFefTLBP84UnZJKzMKYzc7ZrG_bwC4q1q3h0XeGx8NmqFr_-FDYmDtHq802yjIffmSdYRaKA$ 
> + */
> +
> +#include <linux/of.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#include "glue.h"
> +
> +enum dwc3_apple_mode {
> +	DWC3_APPLE_OFF,
> +	DWC3_APPLE_HOST,
> +	DWC3_APPLE_DEVICE,
> +};
> +
> +/**
> + * struct dwc3_apple - Apple-specific DWC3 USB controller
> + * @dwc: Core DWC3 structure
> + * @dev: Pointer to the device structure
> + * @mmio_resource: Resource to be passed to dwc3_core_probe
> + * @apple_regs: Apple-specific DWC3 registers
> + * @resets: Reset control
> + * @role_sw: USB role switch
> + * @lock: Mutex for synchronizing access
> + * @core_probe_done: True if dwc3_core_probe was already called after the first plug
> + * @mode: Current mode of the controller (off/host/device)

For this platform, current mode of the controller should only ever be
host or device mode. Seems we're mixing power with usb role? ie. what
DWC3_APPLE_OFF is being used for?

> + */
> +struct dwc3_apple {
> +	struct dwc3 dwc;
> +
> +	struct device *dev;
> +	struct resource *mmio_resource;
> +	void __iomem *apple_regs;
> +
> +	struct reset_control *resets;
> +	struct usb_role_switch *role_sw;
> +
> +	struct mutex lock;
> +
> +	bool core_probe_done;
> +	enum dwc3_apple_mode mode;
> +};
> +
> +#define to_dwc3_apple(d) container_of((d), struct dwc3_apple, dwc)
> +
> +/*
> + * Apple Silicon dwc3 vendor-specific registers
> + *
> + * These registers were identified by tracing XNU's memory access patterns
> + * and correlating them with debug output over serial to determine their names.
> + * We don't exactly know what these do but without these USB3 devices sometimes
> + * don't work.
> + */
> +#define APPLE_DWC3_REGS_START 0xcd00
> +#define APPLE_DWC3_REGS_END 0xcdff
> +
> +#define APPLE_DWC3_CIO_LFPS_OFFSET 0xcd38
> +#define APPLE_DWC3_CIO_LFPS_OFFSET_VALUE 0xf800f80
> +
> +#define APPLE_DWC3_CIO_BW_NGT_OFFSET 0xcd3c
> +#define APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE 0xfc00fc0
> +
> +#define APPLE_DWC3_CIO_LINK_TIMER 0xcd40
> +#define APPLE_DWC3_CIO_PENDING_HP_TIMER GENMASK(23, 16)
> +#define APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE 0x14
> +#define APPLE_DWC3_CIO_PM_LC_TIMER GENMASK(15, 8)
> +#define APPLE_DWC3_CIO_PM_LC_TIMER_VALUE 0xa
> +#define APPLE_DWC3_CIO_PM_ENTRY_TIMER GENMASK(7, 0)
> +#define APPLE_DWC3_CIO_PM_ENTRY_TIMER_VALUE 0x10
> +
> +static inline void dwc3_apple_writel(struct dwc3_apple *appledwc, u32 offset, u32 value)
> +{
> +	writel(value, appledwc->apple_regs + offset - APPLE_DWC3_REGS_START);
> +}
> +
> +static inline u32 dwc3_apple_readl(struct dwc3_apple *appledwc, u32 offset)
> +{
> +	return readl(appledwc->apple_regs + offset - APPLE_DWC3_REGS_START);
> +}
> +
> +static inline void dwc3_apple_mask(struct dwc3_apple *appledwc, u32 offset, u32 mask, u32 value)
> +{
> +	u32 reg;
> +
> +	reg = dwc3_apple_readl(appledwc, offset);
> +	reg &= ~mask;
> +	reg |= value;
> +	dwc3_apple_writel(appledwc, offset, reg);
> +}
> +
> +static void dwc3_apple_setup_cio(struct dwc3_apple *appledwc)
> +{
> +	dwc3_apple_writel(appledwc, APPLE_DWC3_CIO_LFPS_OFFSET, APPLE_DWC3_CIO_LFPS_OFFSET_VALUE);
> +	dwc3_apple_writel(appledwc, APPLE_DWC3_CIO_BW_NGT_OFFSET,
> +			  APPLE_DWC3_CIO_BW_NGT_OFFSET_VALUE);
> +	dwc3_apple_mask(appledwc, APPLE_DWC3_CIO_LINK_TIMER, APPLE_DWC3_CIO_PENDING_HP_TIMER,
> +			APPLE_DWC3_CIO_PENDING_HP_TIMER_VALUE);
> +	dwc3_apple_mask(appledwc, APPLE_DWC3_CIO_LINK_TIMER, APPLE_DWC3_CIO_PM_LC_TIMER,
> +			APPLE_DWC3_CIO_PM_LC_TIMER_VALUE);
> +	dwc3_apple_mask(appledwc, APPLE_DWC3_CIO_LINK_TIMER, APPLE_DWC3_CIO_PM_ENTRY_TIMER,
> +			APPLE_DWC3_CIO_PM_ENTRY_TIMER_VALUE);
> +}
> +
> +static void dwc3_apple_set_ptrcap(struct dwc3_apple *appledwc, u32 mode)
> +{
> +	guard(spinlock_irqsave)(&appledwc->dwc.lock);
> +	dwc3_set_prtcap(&appledwc->dwc, mode, false);
> +}
> +
> +static int dwc3_apple_core_probe(struct dwc3_apple *appledwc)
> +{
> +	struct dwc3_probe_data probe_data = {};
> +	int ret;
> +
> +	lockdep_assert_held(&appledwc->lock);
> +	WARN_ON_ONCE(appledwc->core_probe_done);
> +
> +	appledwc->dwc.dev = appledwc->dev;
> +	probe_data.dwc = &appledwc->dwc;
> +	probe_data.res = appledwc->mmio_resource;
> +	probe_data.ignore_clocks_and_resets = true;
> +	probe_data.skip_core_init_mode = true;
> +
> +	ret = dwc3_core_probe(&probe_data);
> +	if (ret)
> +		return ret;
> +
> +	appledwc->core_probe_done = true;
> +	return 0;
> +}
> +
> +static int dwc3_apple_core_init(struct dwc3_apple *appledwc)
> +{
> +	int ret;
> +
> +	lockdep_assert_held(&appledwc->lock);
> +
> +	if (appledwc->core_probe_done) {
> +		ret = dwc3_core_init(&appledwc->dwc);
> +		if (ret)
> +			dev_err(appledwc->dev, "Failed to initialize DWC3 Core, err=%d\n", ret);
> +	} else {
> +		ret = dwc3_apple_core_probe(appledwc);
> +		if (ret)
> +			dev_err(appledwc->dev, "Failed to probe DWC3 Core, err=%d\n", ret);
> +	}
> +
> +	return ret;
> +}
> +
> +static void dwc3_apple_phy_set_mode(struct dwc3_apple *appledwc, enum phy_mode mode)
> +{
> +	lockdep_assert_held(&appledwc->lock);
> +
> +	/*
> +	 * This platform requires SUSPHY to be enabled here already in order to properly
> +	 * configure the PHY
> +	 */
> +	dwc3_enable_susphy(&appledwc->dwc, true);
> +	phy_set_mode(appledwc->dwc.usb2_generic_phy[0], mode);
> +	phy_set_mode(appledwc->dwc.usb3_generic_phy[0], mode);
> +}
> +
> +static int dwc3_apple_init(struct dwc3_apple *appledwc, enum dwc3_apple_mode mode)
> +{
> +	int ret, ret_reset;
> +
> +	lockdep_assert_held(&appledwc->lock);
> +
> +	ret = reset_control_deassert(appledwc->resets);
> +	if (ret) {
> +		dev_err(appledwc->dev, "Failed to deassert resets, err=%d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = dwc3_apple_core_init(appledwc);
> +	if (ret)
> +		goto reset_assert;
> +
> +	/*
> +	 * Now that the core is initialized and already went through dwc3_core_soft_reset we can
> +	 * configure some unknown Apple-specific settings.
> +	 */
> +	dwc3_apple_setup_cio(appledwc);
> +
> +	switch (mode) {
> +	case DWC3_APPLE_HOST:
> +		appledwc->dwc.dr_mode = USB_DR_MODE_HOST;
> +		dwc3_apple_set_ptrcap(appledwc, DWC3_GCTL_PRTCAP_HOST);
> +		dwc3_apple_phy_set_mode(appledwc, PHY_MODE_USB_HOST);
> +		ret = dwc3_host_init(&appledwc->dwc);
> +		if (ret) {
> +			dev_err(appledwc->dev, "Failed to initialize host, ret=%d\n", ret);
> +			goto core_exit;
> +		}
> +
> +		break;
> +	case DWC3_APPLE_DEVICE:
> +		appledwc->dwc.dr_mode = USB_DR_MODE_PERIPHERAL;
> +		dwc3_apple_set_ptrcap(appledwc, DWC3_GCTL_PRTCAP_DEVICE);
> +		dwc3_apple_phy_set_mode(appledwc, PHY_MODE_USB_DEVICE);
> +		ret = dwc3_gadget_init(&appledwc->dwc);
> +		if (ret) {
> +			dev_err(appledwc->dev, "Failed to initialize gadget, ret=%d\n", ret);
> +			goto core_exit;
> +		}
> +		break;
> +	default:
> +		/* Unreachable unless there's a bug in this driver */
> +		WARN_ON_ONCE(1);
> +		ret = -EINVAL;
> +		goto core_exit;
> +	}
> +
> +	appledwc->mode = mode;
> +	return 0;
> +
> +core_exit:
> +	dwc3_core_exit(&appledwc->dwc);
> +reset_assert:
> +	ret_reset = reset_control_assert(appledwc->resets);
> +	if (ret_reset)
> +		dev_warn(appledwc->dev, "Failed to assert resets, err=%d\n", ret_reset);
> +
> +	return ret;
> +}
> +
> +static int dwc3_apple_exit(struct dwc3_apple *appledwc)
> +{
> +	int ret = 0;
> +
> +	lockdep_assert_held(&appledwc->lock);
> +
> +	switch (appledwc->mode) {
> +	case DWC3_APPLE_OFF:
> +		/* Nothing to do if we're already off */
> +		return 0;
> +	case DWC3_APPLE_DEVICE:
> +		dwc3_gadget_exit(&appledwc->dwc);
> +		break;
> +	case DWC3_APPLE_HOST:
> +		dwc3_host_exit(&appledwc->dwc);
> +		break;
> +	}
> +
> +	/* This platform requires SUSPHY to be enabled in order to properly power down the PHY */
> +	dwc3_enable_susphy(&appledwc->dwc, true);
> +	dwc3_core_exit(&appledwc->dwc);
> +	appledwc->mode = DWC3_APPLE_OFF;
> +
> +	ret = reset_control_assert(appledwc->resets);
> +	if (ret) {
> +		dev_err(appledwc->dev, "Failed to assert resets, err=%d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dwc3_usb_role_switch_set(struct usb_role_switch *sw, enum usb_role role)
> +{
> +	struct dwc3_apple *appledwc = usb_role_switch_get_drvdata(sw);
> +	int ret;
> +
> +	guard(mutex)(&appledwc->lock);
> +
> +	/*
> +	 * The USB2 D+/D- lines are connected through a stateful eUSB2 repeater which in turn is
> +	 * controlled by a variant of the TI TPS6598x USB PD chip. When the USB PD controller
> +	 * detects a hotplug event it resets the eUSB2 repeater. Afterwards, no new device is
> +	 * recognized before the DWC3 core and PHY are reset as well because the eUSB2 repeater
> +	 * and the PHY/dwc3 block disagree about the current state.
> +	 * Additionally, the PHY is also incapable of switching between arbitrary modes when dwc3
> +	 * is kept online. It's also possible to get dwc3 into a state where no new device is
> +	 * recognized and even a soft reset is not enough to recover when unplugging a cable at the
> +	 * wrong time while in gadget mode. Only a hard reset triggered via the external reset line
> +	 * is able to recover from this state.
> +	 * We thus tear all of dwc3 down here and re-initialize it every time we get a plug change
> +	 * (or even mode change) event.
> +	 */
> +	ret = dwc3_apple_exit(appledwc);
> +	if (ret)
> +		return ret;
> +
> +	switch (role) {
> +	case USB_ROLE_NONE:
> +		/* Nothing to do if no cable is connected */
> +		return 0;
> +	case USB_ROLE_HOST:
> +		return dwc3_apple_init(appledwc, DWC3_APPLE_HOST);
> +	case USB_ROLE_DEVICE:
> +		return dwc3_apple_init(appledwc, DWC3_APPLE_DEVICE);
> +	default:
> +		dev_err(appledwc->dev, "Invalid target role: %d\n", role);
> +		return -EINVAL;
> +	}
> +}
> +
> +static enum usb_role dwc3_usb_role_switch_get(struct usb_role_switch *sw)
> +{
> +	struct dwc3_apple *appledwc = usb_role_switch_get_drvdata(sw);
> +
> +	guard(mutex)(&appledwc->lock);
> +
> +	switch (appledwc->mode) {
> +	case DWC3_APPLE_HOST:
> +		return USB_ROLE_HOST;
> +	case DWC3_APPLE_DEVICE:
> +		return USB_ROLE_DEVICE;
> +	case DWC3_APPLE_OFF:
> +		return USB_ROLE_NONE;
> +	default:
> +		/* Unreachable unless there's a bug in this driver */
> +		WARN_ON_ONCE(1);
> +		return USB_ROLE_NONE;
> +	}
> +}
> +
> +static int dwc3_apple_setup_role_switch(struct dwc3_apple *appledwc)
> +{
> +	struct usb_role_switch_desc dwc3_role_switch = { NULL };
> +
> +	dwc3_role_switch.fwnode = dev_fwnode(appledwc->dev);
> +	dwc3_role_switch.set = dwc3_usb_role_switch_set;
> +	dwc3_role_switch.get = dwc3_usb_role_switch_get;
> +	dwc3_role_switch.driver_data = appledwc;
> +	appledwc->role_sw = usb_role_switch_register(appledwc->dev, &dwc3_role_switch);
> +	if (IS_ERR(appledwc->role_sw))
> +		return PTR_ERR(appledwc->role_sw);
> +
> +	return 0;
> +}
> +
> +static int dwc3_apple_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct dwc3_apple *appledwc;
> +	int ret;
> +
> +	appledwc = devm_kzalloc(&pdev->dev, sizeof(*appledwc), GFP_KERNEL);
> +	if (!appledwc)
> +		return -ENOMEM;
> +
> +	appledwc->dev = &pdev->dev;
> +	mutex_init(&appledwc->lock);
> +
> +	appledwc->resets = devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(appledwc->resets))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(appledwc->resets),
> +				     "Failed to get resets\n");
> +
> +	ret = reset_control_assert(appledwc->resets);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to assert resets, err=%d\n", ret);
> +		return ret;
> +	}
> +
> +	appledwc->mmio_resource = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dwc3-core");
> +	if (!appledwc->mmio_resource) {
> +		dev_err(dev, "Failed to get DWC3 MMIO\n");
> +		return -EINVAL;
> +	}
> +
> +	appledwc->apple_regs = devm_platform_ioremap_resource_byname(pdev, "dwc3-apple");
> +	if (IS_ERR(appledwc->apple_regs))
> +		return dev_err_probe(dev, PTR_ERR(appledwc->apple_regs),
> +				     "Failed to map Apple-specific MMIO\n");
> +
> +	/*
> +	 * Note that we only bring up dwc3 once the first device is attached because we need to know
> +	 * the role (e.g. host), mode (e.g. USB3) and lane orientation to bring up the PHY which is
> +	 * tightly coupled to dwc3.
> +	 */

The wording here is odd. You can wait for attach to do this, but it
should not be a requirement. You might not know whether you need to
switch role, but you should be able to initialize the controller in
either host or device mode prior to attachment.

Any particular reason we need to do this? If not, we can do away with
the core_probe_done condition.

BR,
Thinh

> +	appledwc->mode = DWC3_APPLE_OFF;
> +	appledwc->core_probe_done = false;
> +	ret = dwc3_apple_setup_role_switch(appledwc);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Failed to setup role switch\n");
> +
> +	return 0;
> +}
> +
> +static void dwc3_apple_remove(struct platform_device *pdev)
> +{
> +	struct dwc3 *dwc = platform_get_drvdata(pdev);
> +	struct dwc3_apple *appledwc = to_dwc3_apple(dwc);
> +
> +	guard(mutex)(&appledwc->lock);
> +
> +	usb_role_switch_unregister(appledwc->role_sw);
> +
> +	dwc3_apple_exit(appledwc);
> +	if (appledwc->core_probe_done)
> +		dwc3_core_remove(&appledwc->dwc);
> +}
> +
> +static const struct of_device_id dwc3_apple_of_match[] = {
> +	{ .compatible = "apple,t8103-dwc3" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_apple_of_match);
> +
> +static struct platform_driver dwc3_apple_driver = {
> +	.probe		= dwc3_apple_probe,
> +	.remove		= dwc3_apple_remove,
> +	.driver		= {
> +		.name	= "dwc3-apple",
> +		.of_match_table	= dwc3_apple_of_match,
> +	},
> +};
> +
> +module_platform_driver(dwc3_apple_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Sven Peter <sven@kernel.org>");
> +MODULE_DESCRIPTION("DesignWare DWC3 Apple Silicon Glue Driver");
> 
> -- 
> 2.34.1
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
