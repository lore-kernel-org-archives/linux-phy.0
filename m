Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D306FCA0FFE
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 01:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BuCdEIl0aJQLaYxl9Go95AcPOdn85uLsg2z5JRIfcA=; b=G1KxZPQ3FZROZC
	bQ12O2ile4jHMmhgzCSz6m9tQsCI9nFUa82PbgGLvyjCFr8ntLZXXFTUFmcAsTvmvkL4pPfHTc2dV
	GTa+Qp/jS1AiF3+Ccl/yvm7vVYknTs2FbhIUIiI/dEXiYZFmlJZQWxiN8YyIyau8Jy/zkKvVDCEaB
	lNFSk4A0TfFoNN1pAipP7HmXysrr9CWnaRjOUmVf7M8Fdt9oW2aVv0l3G/wb/8T6dH0pHHrG6+smT
	88XGqRwZPD2ZozC4rTLCLF0BIqcuaAGvw1JYjVHL93VymGXuH3VhbcbJ6VkSseV7MEi9PMBabVbJZ
	Ye28Akjj8YzQ0WPFX0og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urneV-00000003yQn-2J34;
	Fri, 29 Aug 2025 01:11:39 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urljf-00000003a6k-0Vr5;
	Thu, 28 Aug 2025 23:08:52 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SIGPe0004200;
	Thu, 28 Aug 2025 16:07:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=vbZCdf6hhAF2eTVnAJ7djPmnu/FBsxwBitBg5ErR7Xg=; b=
	i7nP+sWSWkSy7pA2U7GtuYSEK+sXeEGF+NXZ90rnjcjMENCPI/UtXbm9I+fGHx3O
	uy0ziVj2n+WCUejMxUXNjp1qFXfcXX1769w9i03hIjDcsy3r5dH0RDCvDYqXG410
	kZpAnc7/mx28depsmlJNbgsuVy2uBvwLuSerig3Y3jgDXewHBbLbqyrIuUjhNKjV
	lwuflfBYmTywkWl5817DfAzs3pUB2gHw5wkkQ+pZ1wBdpXku19l8YEfy15uOwha6
	1feFMTCzdMet4SFOd5um81torg5e+K0w+H/HH4fEyu0zYCVRS//6VzMTUyOVvGyc
	1Rd6FwiImmePIvgRzz0V3A==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 48qc9dd4h9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Aug 2025 16:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1756422477; bh=vbZCdf6hhAF2eTVnAJ7djPmnu/FBsxwBitBg5ErR7Xg=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=inKM02MmrdpfMeje/K3HyKwEMiAnwAT69J7P6Lst1HZXV25TC9u+faEM1mjncGzoV
	 TIip1n17NXZL0xqc32HTuGmA7PayKz0zTSYCFzzU48ECi1qGr7otRRejBsNg65YLt9
	 TPdyYOofxBTjIqSryTemIAabByQ11GpT1DFsmTNu2R8EGPcZR1krlo90KHmappHnY4
	 KIshcIODldk+c6geJgwC8svu6b778lHSV4nORJJtvhS6GWV6Ym3UJ3F7YA8eKLYSEl
	 hlG81UPkr7ihYc3noyDcZhwAJcNvnDTjhFGDZjz4OQl6FRQaKyGUEvEKIUtEF/1/uk
	 IyYEC6kXitGmw==
Received: from mailhost.synopsys.com (us03-mailhost2.synopsys.com [10.4.17.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7EF854035D;
	Thu, 28 Aug 2025 23:07:57 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay3.synopsys.com [10.4.161.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id CBA88A0073;
	Thu, 28 Aug 2025 23:07:56 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=jguWWfzQ;
	dkim-atps=neutral
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id A6315401FA;
	Thu, 28 Aug 2025 23:07:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xKDryxQn0PMlhWb6vsKucENkYuvr5qp5YrtNrEaG58rY3urX4BlzFl0bWu9F08wuerDRVw+YbXwQWqletC5DLjBtk8zvz8a2Jq8Uk4GimQ3tM+PX95u21a4otlfanl2mqmcpW5XXLUKH577G9EpZylKzbYVcg9gj2bcycuBN+2p+5HDAcg8BcfCg4EIcAodEDOaxqoKJKwNLsivfRehzq/Toq7/y8odG6eA05y+bDnmyVLL8KGTtM5JWibF73ycM+q48DUCtqLgM8YRNDhPeFq+JFQA3Xe9ZDUYuJltgCiXvqXQEpfQJ2N3q0y++BmoG1Ul33QYxdqKebt/uEeZIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vbZCdf6hhAF2eTVnAJ7djPmnu/FBsxwBitBg5ErR7Xg=;
 b=CmAzJAVLn54DWti4yF1BYmk952ng03jz6NCw+RMSr6CkU8wf8AC8cUbZyu9YNFhBG1s0h888feddxFwP3LUWTP0mhcLVugd8Wzq+F0GwQ6EEO/VuFz4JVO5/ebjbFYvuWn/aQ7scjPCQ/FQ6SCDHCEVBpIH3dg4njs7B5evHNfr22odwqZfHFGkQc9vKaWI2vV6xhoJKf0rcFzjQX6gTj1aLVkAdkNGNDXRiBclnObINVhKAOPE+1v334g5C7nl6DhFNPe66Fb8K5lMf7AZKRuMZhBMRAyTST718A2BK1XHIOMvNj3D9Xivo1nrsGtuO5N2tdmSPlJo207kk6B+Ngw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vbZCdf6hhAF2eTVnAJ7djPmnu/FBsxwBitBg5ErR7Xg=;
 b=jguWWfzQFuP4eAD8ippNXgiU6S6aOAyn8UZ326gycQU8aFKEqAM+toppe6FAA5TLXEC4qjVjQQukU+1IGXfnuTebGInjs6dcizFVBmmQCGSIlFT3UpIpVyc3KZp749l2EDmeoBvjZs+1P0fnRzluAUMnGlDuA311fDBMGijsrDM=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by MN0PR12MB5787.namprd12.prod.outlook.com (2603:10b6:208:376::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.23; Thu, 28 Aug
 2025 23:07:46 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 23:07:45 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Janne Grunau <j@jannau.net>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Sven Peter <sven@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "asahi@lists.linux.dev" <asahi@lists.linux.dev>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH RFC 04/22] usb: dwc3: apple: Reset dwc3 during role
 switches
Thread-Topic: [PATCH RFC 04/22] usb: dwc3: apple: Reset dwc3 during role
 switches
Thread-Index: AQHcErHjYWp/DJLz50yFjSgGSmwaTbRtwHSAgAQNYICABu3mgA==
Date: Thu, 28 Aug 2025 23:07:45 +0000
Message-ID: <20250828230743.l2774axh67aivjl5@synopsys.com>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-4-172beda182b8@kernel.org>
 <20250821232547.qzplkafogsacnbti@synopsys.com>
 <20250824131841.GG1270980@robin.jannau.net>
In-Reply-To: <20250824131841.GG1270980@robin.jannau.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|MN0PR12MB5787:EE_
x-ms-office365-filtering-correlation-id: 0637d4c4-c5bf-410c-539d-08dde687b31b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?a0RXU3dKdmJNRDc5REllWFk0VzVYMDVJTmUvMVhRNjVDaHVrTzNnOUJzTW5w?=
 =?utf-8?B?NTdPdzBxRUhpZGtGQktUN3BRYVg2MTFROEJOREtQaDVjcnk5ODRRMWFaSi9t?=
 =?utf-8?B?N2dXK1FuSVU2Tm9vUkR4T2FnVHJOYXYzR3FZemFGNEE1dXdsM2c5TzdtVmhx?=
 =?utf-8?B?Sm5hWlcrVHJqaUwzRmlHZ2JHZEFONjdEWnBIejdDNzRZU0xheDhicXpKMUt6?=
 =?utf-8?B?N09Jb2lmalk3ZXhnQ2twUXJjUHowVWRxejlicXRIZmRpb1QxVHJPT2Z4T1hG?=
 =?utf-8?B?ZCtQbWRobWNYeHFZQnlZSGFYVnI3MXYvUmlDcVJVNldIdGdZTGVvdUg2ZnZR?=
 =?utf-8?B?T2JYeG42OEFvTjd1Q1hwMmF1ZHdwKzRrcnRwR2xkaHJ5NWFHSlhPZTUrQnNl?=
 =?utf-8?B?SS9rWlN2TjAwbHpvV1FQSFRTUGJaTE5lWVIzNlczQ282UjBsamZyYURMd0xP?=
 =?utf-8?B?YlVDZWhZaXkzQkd0d2toQ2l2aXh6aFU3K21vNWdBcS90ZlVKVjJtd2R3K1d4?=
 =?utf-8?B?eDlqQnYzaGZVaGRYcDQyVW5Yc0hlSGdDUHZQZlh1cndLUm5pbDZSM2dFUWtM?=
 =?utf-8?B?ZjRyMStLY3VPR1FsaUZxUnl1bTVtWGU2aWZ1VG8zeEgzSlQzVkFMcGJKMkl0?=
 =?utf-8?B?WjE3aGxvUlBlZW9pdGNETWx0RERHRkNmQlh6YTZTalRyM0QyNXlTWm4wTXZJ?=
 =?utf-8?B?ZVpmVngwc2tiZGFaV2EwdXlQcUpMaUxYYW5PTzhVQ1h1UUpuMTl5RHBVWU9N?=
 =?utf-8?B?bmk1V3pHL05malFpbE13a01saHpuWGJWNnlQenNCUGNFdnpxNEtSWG5SVXpt?=
 =?utf-8?B?N0FYSjdrVXVKWHBkOERRaVp6Q2RZS0pYd0twTUlZUGZrdTJzMGY2OGYxQ2Fy?=
 =?utf-8?B?SSs5djBFM1lQbWp0V2tVUjE1cElYV1Bua1lsMlRmR1dWOFFKWGM5Nm1jOUFK?=
 =?utf-8?B?TUdKU1V5TG5uNC9mYlRraFVMbXZxVGpmMFVZbGo0TXZwRFNvWCtMd3F3c3Va?=
 =?utf-8?B?RHM5QXVocTAzaVhZVy94L1ROOUttdDcyY0lYR3JKZGw2V3ljcTIrNHBqSVor?=
 =?utf-8?B?TUtyTXhqQVFZSmhiNWhBaHNsR0hjVnJCRGJvaFlCSi9iZVZkOHNGQTJYL3Zo?=
 =?utf-8?B?Y0s3RU1hdEpwekpHMXNkOStiR3NkZk5TUkVzSnlWVEFoSTRTTEZWVXlZUngr?=
 =?utf-8?B?eEJpUDRzM09nQWNiYVdhOEZwaThLL3JiU3gxOFhmVExOc3RSN2VpeXBhOXQy?=
 =?utf-8?B?bk5CVTVGTGhKd2J6TGdSZUFoMGduK25qRi90WTUwMjJCb21uSnpnalE0SGNC?=
 =?utf-8?B?VmlyWjE0MFdnOU5ydzF6Rys2T2IxUmxjWWtHbENvNnZyZzR1VVNQREhDNzh4?=
 =?utf-8?B?aTRLdnp2UFZIMm1nbHZuVmZoVzM4UTFTTmtoeWtYZXVvalBOL1pBOWZPTEZa?=
 =?utf-8?B?dHRveVE5MjJJUjY3T3lScDBkYTEvL2IxUzBpaG1qdWlkZ1BVcG9JSmdtRy9X?=
 =?utf-8?B?Q2VrRXBodVFSNDVRczRWdGFTTjUyUG9NTkNRdzEzYWp3SzdDUmROeGdiQlF6?=
 =?utf-8?B?TGt2TU04dUEvSTZ4L3lCZ0RpK1JMenE2Q2NMc2dqcm5ZcHRaeXpRR2ZvTW5p?=
 =?utf-8?B?VnBIL2hsem1yazVGVFp0MjRsUFVCQUlkSS96VmtkRGhmbkxtSHVoYVJxM2ls?=
 =?utf-8?B?NjJhUk1MSkY5a2hPSTRGK3ZOcGV2cGJaNGFKSWdvUmpCa0FJV3FBZkJ1Nlox?=
 =?utf-8?B?aWtqVGRGOEluL3pjci8reEdkdHNSU3lGcHVtclhBSlF0SmZ3ZHpwWFZQdUtS?=
 =?utf-8?B?OE1JN3ZVVUZRYm85MFpRZFlqZGIwWmRxUE1GN1ZCaUxVR2E3eXJXdnRxd1FH?=
 =?utf-8?B?SmlzbkR1RkRzc3lxOWhmTkw4dnROWWJUem9LbmtXdTdTQ2xoOUY3eEVTaVdI?=
 =?utf-8?B?V3VJSmJCak93bmlDVDk5YzRJeTFUaHMxV3J0bDZnNHpYT3UvNGx4M1ZwbjE5?=
 =?utf-8?B?eFplOWNYUjVRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dExDbmxPVktEbkxRaXRJQWpuSHpDMEY5eG9aa3FXMjJrdFZaV0h6R2RJQmJZ?=
 =?utf-8?B?RGxCMDVYUERJRFprWjdiZWtFS3c3SXY4QjFwY00zZFlsekhIZUN6QzZnU3BJ?=
 =?utf-8?B?UHZCZjQzQitBT0xFTU1YRFgyeHc3R016NHZtRFJxT2ZvVXpUbmpMb0RCM0Y2?=
 =?utf-8?B?SVIvRkR1c05NL3JmbWxxT3dkcUVHMDhObHRZWmRzOHdXUjZXMm1wSUx3cUV0?=
 =?utf-8?B?dG53TEtqZUFDQU51K2dydlMrVmEwVlMrbmpaajI3MitnZlpXTFltb2lVbHpC?=
 =?utf-8?B?cXN3Nkt2MkFLQmVnbWhOK1hRVWNoOFoxREg5ZEQ0TlJsWTRsUVRWbjlieXFr?=
 =?utf-8?B?OUl6VzNNeVErdXVCVGVuY3AraVlMbmNGZHQzSjRyT2wzVURIeU9TUU5xYU8y?=
 =?utf-8?B?TXBvYW5JSGdkdW02NGdSNHdhb2Y0UHJDN2ladnduQ3NoUlEwMFRRTFEwWEZx?=
 =?utf-8?B?ems0RWFiTWlrSEQ3eFJoQWZ1N1pFNG5ka3c3ZkR1SCtPR0RFdEVIQUpWUzU1?=
 =?utf-8?B?TlV4TklzK0FqMG5Xdis0d05XbWRoemdFZEJ6OVBvMzRHVzVlbk9uUHZ1MUNz?=
 =?utf-8?B?dHhLU1crUHlIQ3lpQUtZTFRwL3NVeERBTmJtNFllKzhpdFk3eldzTlJwTFRa?=
 =?utf-8?B?bHkzcDg2U1ROZjVRQ0czVW9BZ1I3djZzK1JITDdxMjcvUk9HVDVFd3Arclhh?=
 =?utf-8?B?UiszQXVCQ3pNVVF0SmhkRTdLRGtHL2pyNmhQY05MWVUrbzVYUDdFZ29GN29r?=
 =?utf-8?B?WWhlY09wWWxkTDRPc1FDcDRaUzB6NHJxYnJHUG1xUnJMaU1VeTVmY1NsQTZ4?=
 =?utf-8?B?L3lUOFFZbDFFYVloTUtEV1UxUlZNWVhzN2JRRTViS0FMRFUwSXhrRmZuTmFx?=
 =?utf-8?B?eFVLcm9zcmZWZU5UODRVUkJORE51WVdoeWY0OEZab3ZHYnlYQlIrOG12Qjl4?=
 =?utf-8?B?dVNYYTNoVTczMnlFZlZ1WHB3b1lnR1liSjRCN0hKNStNazhGbW5IK280UWl4?=
 =?utf-8?B?aFkzaitwWDVxcTF2MDNocjAwRU4vT2xoOFNBaUsvMXQ4WVlFTXc2TlhxaUZ3?=
 =?utf-8?B?YkthbE0rUzk5c0t2cG56czRvSjRXV2xwcVZjQ2Zod0pQS2N4T3c0VzR1NHBr?=
 =?utf-8?B?alhHUHFtSm5ENzBZbDZReEdIQzh3aWI2QXR2SStHWUtFSDY4S0ZWeGRlbUk2?=
 =?utf-8?B?MkRwNlUzS3JBMnRIakhzaDByMWxOTnZzYXBrSkVRZHBnemwrMkxCL3FlNXNv?=
 =?utf-8?B?cy9EQXpiVS9ISVdoQW1UQ0V4L0wyTWpMR05vanAxV0NmT3UxZWVNanV0a2Yy?=
 =?utf-8?B?bXRZRnVCUUpFVHdEYmxiUWVGSVJNOTBoY2RtVzlibStubERCUlBHUlhZZW5w?=
 =?utf-8?B?aEtUNk81eW5ZMlM5cUp2YzFJUStqRDVsbno1U20zRGt4TTl0ZE42dWJRSmJz?=
 =?utf-8?B?QWVyZVFES0s1dEV1SjVwM2hPVjJ1L29SNzZnN05nU1RBbU93c3pTenBMcmtr?=
 =?utf-8?B?N0ZPSDNMaHN5V1NpY3FveG8zNUNXejQ0VTY0YThjdHJ2VmpDeURkVnp6K0hZ?=
 =?utf-8?B?cldYK3FGMVFJekV3bWVUWDVXc2dFSENxOGJxMExNODNuMFB4MzhRaXVVbmRX?=
 =?utf-8?B?ekxUWGtkcDZKQjQvQ0tTV1BvSUJPMy9YNGNhTHZLay9aNWRWUU0zc1RLS3FD?=
 =?utf-8?B?cmowdFhFRUozcVVjRWpIeTExM2FnL2g1U3hPYjU1TXVkNytOUUlOazB5cU50?=
 =?utf-8?B?TkkvMDE5dnRkenJSbnlJYzIvMk5Mbk5KRmt4ZStFTGtvS0JDdE04by9Sanh0?=
 =?utf-8?B?Zmc1ZFpoOU5URGZjSHE5aU02Q3ZUbVQzanlHSWtBWWNGa3RtcC9EWE51bENT?=
 =?utf-8?B?Z2pPMWdSaDNZY2dvcmNJMlNqVDd0K3k0ZXZKMTJlOVo1bVRFYmlsdGFVWkFQ?=
 =?utf-8?B?NnpaaXczMnJPc29BTkRMRlVVSkRGc1ErWDJkRUUzOWVoL1lSSTd0MGVJdGNr?=
 =?utf-8?B?MXVUbTFDOWRCOHM5VlJQVStLT0E2TkdxSVVzN2w4UFlWMWZYaVd1SkRjSTVz?=
 =?utf-8?B?VFVhb3Vwa2gxZGgvNE1wYkRua2hNMFgwWWdPdXlkTm9oenpoajFPWnZjOUpX?=
 =?utf-8?Q?BNhI1irmE9tUMAn8GHKKfk4+L?=
Content-ID: <3FF1947CBE360E489ECC096F866FB697@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: iZj6njG4+400mxrehgvrTmfwhaHRSsAp8orWwv+36s66ZBDbq9H8nl/Umezp44m6aFGfFusu8PRbeTN2jFgBw/WY2y7LdK3jGzfcGXxjTabQNczaUHv2zFwRk2SEA0zyeAFYM/oA8vop0562pAmcwfeq5wXjBROQHTWY7wfNyu/ow86NLhaFdGWdItbNzsBUI16raVt0ewwZX8KK5kq4QQ/hM8Ytc/XYeV+2cGyNRvboGvr/tpaUDQJcppBsZH42HsBu8mTX0KszC7vpQC+hQ3Ec1lhtn0Bsw9TGo1+a/7IJAc1eWcZJjjxRohMwec/le0pZklIzf7YGZDD75sAnM2QeAARmaN+we4CA7wEquAKgdz9Ltd8D8vmwR8pl40PxGSkuigFuwY61VIDJxFJ8Jc9Il2tY+1a+D+nDN07KKNEp0T7cgHY0iJOS22f/4m4a1jMX23B8J6scXL9Avbf7hpo3YnxS+3zowR3ql1FB6ypkEGpU2baTrf1ixiXruRRLoEfAekXskbzUz+s0Q/gmxafXud4Sb+U6AB97MOyJmA4zZ19sEUqJUrUgV5wEzTqTSDBnrZ6w/v1ks/A+8Bq0YUb8BmZh2d61RScsdAVF+gBbcaxuqwIPXXn77VBV76r+bAVul8ym1VCB6xO20dpEXw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0637d4c4-c5bf-410c-539d-08dde687b31b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 23:07:45.5823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ecD8UALTeSdrjGYuh7rixqMIfX9IDCfRlkuYmfmibZlIYPANMTJKSvkz1lund4eLOmW8FgR0Sy/UyW2JE91Xxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5787
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDEwNyBTYWx0ZWRfX2KBW4nVS4Y8Q
 fJNmxldKAHJzIMOlb3Il2K3evhQeZCjWVTHQkzXz5KY5zEMivSkBAdmqOpT42+SzvhjSCbIlPPO
 0RgKaddUQe8/waU7A27Roq1A6SMexqG9cySbq66WzOgpA+amI/ZjneP47vt5t29pmmsz2yzqVuV
 5TJD0u4rOIUYx+Esxw9eLxC+IaePH7963FBPigTEaia5MDsCJS8/23hMqRuJEfZZu4VvcLkzxjO
 xcB7qIn80eA/r8KJYrzqVzz5fIwNZcwr6y+hsX8jydGs/8M0ODy0/hTniv4bIytezibhMI5uiHr
 Eg+xogHKZ8seDAScmFd6K/pwSuf8D67soqgOg/KydsjQqxNQhlxntD+yZOCD0xhX5Nj8pvspxqx
 j6RYobaX
X-Authority-Analysis: v=2.4 cv=TbGWtQQh c=1 sm=1 tr=0 ts=68b0e14e cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=qPHU084jO2kA:10
 a=VwQbUJbxAAAA:8 a=or6s5TGVYFTeFFg22sUA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: wLHdI6w3Y0f-O0OTQP0gbiBDWNMjNDHq
X-Proofpoint-ORIG-GUID: wLHdI6w3Y0f-O0OTQP0gbiBDWNMjNDHq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508230107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_160851_284822_8BBD87C3 
X-CRM114-Status: UNSURE (   9.31  )
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

On Sun, Aug 24, 2025, Janne Grunau wrote:
> On Thu, Aug 21, 2025 at 11:25:51PM +0000, Thinh Nguyen wrote:
> > On Thu, Aug 21, 2025, Sven Peter wrote:
> > > As mad as it sounds, the dwc3 controller present on the Apple M1 must be
> > > reset and reinitialized whenever a device is unplugged from the root
> > > port or when the PHY mode is changed.
> > > 
> > > This is required for at least the following reasons:
> > > 
> > >   - The USB2 D+/D- lines are connected through a stateful eUSB2 repeater
> > >     which in turn is controlled by a variant of the TI TPS6598x USB PD
> > >     chip. When the USB PD controller detects a hotplug event it resets
> > >     the eUSB2 repeater. Afterwards, no new device is recognized before
> > >     the DWC3 core and PHY are reset as well because the eUSB2 repeater
> > >     and the PHY/dwc3 block disagree about the current state.
> > > 
> > >   - It's possible to completely break the dwc3 controller by switching
> > >     it to device mode and unplugging the cable at just the wrong time.
> > >     If this happens dwc3 behaves as if no device is connected.
> > >     CORESOFTRESET will also never clear after it has been set. The only
> > >     workaround is to trigger a hard reset of the entire dwc3 core with
> > >     its external reset line.
> > > 
> > >   - Whenever the PHY mode is changed (to e.g. transition to DisplayPort
> > >     alternate mode or USB4) dwc3 has to be shutdown and reinitialized.
> > >     Otherwise the Type-C port will not be usable until the entire SoC
> > >     has been reset.
> > > 
> > > All of this can be easily worked around by respecting transitions to
> > > USB_ROLE_NONE and making sure the external reset line is asserted when
> > > switching roles. We additionally have to ensure that the PHY is
> > > suspended during init.
> > > 
> > > Signed-off-by: Sven Peter <sven@kernel.org>
> > > ---
> > >  drivers/usb/dwc3/core.c | 61 +++++++++++++++++++++++++++++++++++++++++++++----
> > >  drivers/usb/dwc3/core.h |  3 +++
> > >  drivers/usb/dwc3/drd.c  | 11 ++++++++-
> > >  drivers/usb/dwc3/host.c |  3 ++-
> > >  4 files changed, 72 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> > > index 8002c23a5a02acb8f3e87b2662a53998a4cf4f5c..26aa507a738f001409a97ef563c6561433a1cac5 100644
> > > --- a/drivers/usb/dwc3/core.c
> > > +++ b/drivers/usb/dwc3/core.c
> 
> ...
> 
> > >  	/*
> > >  	 * When current_dr_role is not set, there's no role switching.
> > >  	 * Only perform GCTL.CoreSoftReset when there's DRD role switching.
> > >  	 */
> > > -	if (dwc->current_dr_role && ((DWC3_IP_IS(DWC3) ||
> > > +	if (dwc->role_switch_reset_quirk ||
> > 
> > Don't override the use of GCTL.CoreSoftReset with this quirk. Not all
> > controller versions should use GCTL.CoreSoftReset, the new controller
> > version don't even have it. What version is this vendor using?
> 
> It reports DWC31, revision 190A and the unlisted version_types
> 0x736f3035 (M1), 0x736f3039 (M1 Pro/Max/Ultra) and 0x736f3130 (M2, M2
> Pro/Max/Ultra).
> 

Thanks for the info. This version should not be using
GCTL.CoreSoftReset.

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
