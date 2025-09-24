Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01613CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 22:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyOFyzb+j671kbcYJ14LE1vG18yNtyb5I8ysGHCa0bM=; b=et7GvMWFemlN/0
	ZPyMVaqsnULpE9NWrW/aOhqBayZdawIEJWxu/jYAFlTLlrPtouQ8uwy3D7O9dJlFf7P6mJM13DvNr
	tAvZFGxHdl8gfne5Ub//4zInPf0kZ5X64EHhFo0R6ZLpYmaKy67sVutqOp+Htn1KRPQzAXpYrbG84
	V2289Lbujp+idtgHCZMz8+AicudkkCYmgN/IkPdSHGQY6JQjMKlsAvAWnZi+HQdDguGeLfauKbbXW
	QF0ltDxZ66OhsH2kNYNswCsg2CDvZ7tnoFdJbP+tE1RmZ5w7aC7XNrsVJZxaTTOgIq4emmMXhgBoN
	K9bkS81NosUn6pLDW3Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Y6m-00000004LFE-2gpR;
	Wed, 24 Sep 2025 22:37:08 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Y6j-00000004LCw-2ppk;
	Wed, 24 Sep 2025 22:37:07 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OKA9ex016339;
	Wed, 24 Sep 2025 15:36:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=ZoQujPx2yPJHiJX0czbjIGXJC1gXKLN3mNLJ40SH/0s=; b=
	CGyvA2KEarsMdyBOYJqLHJrCikWONZxq/NGhNW77BA979ynjA1IolUS1EoEj6WXr
	5l/IqiuD2wPXuC0JsqMQMF0Ei2A5G0iLbTlZ698lZFIvaBOnnMf8jEV1lhmlMFEW
	pjnIHdA4HC+umiDvNDV51u8wUXBdZOA1jW6tkdlmSRrzxXQnGgSbr2m67kwqqqsY
	SnQem3MGCk7L0h2LqVOnZY/KTd8Z7GQ+itV6Xf1iQ4Lk+Ni4iQyuDtdnstqCN9yF
	CsnhbKXw94x7nyNoVlZgJbnNi7xGmvzJ19rmGdkfhCZ7KHlTWe33/afZSr9HwjHZ
	EjXJGf/6odeu3c5gP9CqSA==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 49bsr0as5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Sep 2025 15:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1758753399; bh=ZoQujPx2yPJHiJX0czbjIGXJC1gXKLN3mNLJ40SH/0s=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Ue7tkFuSd1/TZy2ojbQW1lLq27+ojRe92kEWYVbMB44Dd7CxMw5NtDQv9bd1mfoA0
	 Xu1uwyXCnA36YUN4qi9QrSaZzqHRVSrgs7V09jj6u+V8mlV1GQ1UIrQ6jj3EiUj0uR
	 /RX40W6ZKBhLJw3V2rQwdIR8OnOujjbZP7d/bop5GCZ3gw8dgcqWogfCb/iP+dOQPj
	 9dnZyVZfkD1dOLawTAlxxRlJiWnKJDCySgKqk7dYLbtf6Fa3s0H3WuHqB+/L41ODfA
	 c5+nAxqgoLCFmvbApi3Enkgp0bHjBi4/HNfsErHMtRG+ecMoQ1P2g7T1/uyje1PaaO
	 LmaWWK09aSgKA==
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com [10.205.2.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8B1CB401F9;
	Wed, 24 Sep 2025 22:36:38 +0000 (UTC)
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com [10.4.161.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id E0EE4A006F;
	Wed, 24 Sep 2025 22:36:34 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=fSADDS80;
	dkim-atps=neutral
Received: from DM5PR08CU004.outbound.protection.outlook.com (mail-dm5pr08cu00406.outbound.protection.outlook.com [40.93.13.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 0FB3740352;
	Wed, 24 Sep 2025 22:36:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQ2+O8TSfiwnu2TpoiUyIsOLoR5iaiHrjqtKfwsOTfFsxv9Hn3PikBbVjPZRrpdeLvLvsINUDfCOxvTF+c7ICkYXybsHQOlKHnuh/LBS3IGGyLO89s2uN8H08IaLyEa4oQ7xmKn8Q8mdJboXftyH++RXAD0N79TYH9UhOPIP9RuWh82rVRVoWUpSPDBNqczSYcaEMTamrkTmjdkQSBVTyXZdRc/tiy/BD0x7Ma9Lr/FZshc1PlVjmMD+jFT+SpcsvZ6Pbgn/Q19QYTxMiFU95xX9bOQR007ANpbcKAUJenP+bSYu7/redczEW3gJQhn/EsNYW4/5YWe9Zzd9R+fFmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoQujPx2yPJHiJX0czbjIGXJC1gXKLN3mNLJ40SH/0s=;
 b=lngSFP4M3xQfTo4Mj5T5C/OwVCrZwLVpdtmfLODthY76fM45hjvFI8AeBDH1IuKcp94FiACy3T3X47bgz4935WNEXrf5BKS07VakWny7cmzjWysBaWjuLYakMT+jv8YLzxekDechbWmUy1FOd+2VV4FCtTIAvG8jUlOfR+fTs/E0rVKe3Mz+nVk9kr2i21A2Yc9WU3MDyMsEMKObY8wdzpIwB1UUJtf3+l+vYLoh8HreVKHxlSzU3CPpCiFnz85O44cyCJ6n27jVtzKCyj6MDdEdbAfUz2H3T3r67JTQIvMCNpac6ju7OARsFhj3pNsw+CZf49kbsqp/iG9iwOabqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoQujPx2yPJHiJX0czbjIGXJC1gXKLN3mNLJ40SH/0s=;
 b=fSADDS80JZ2q/VYS4WBLok447H1b8Y0r47cWPzaLVZEVhi7ohDNS9aDB6bE7dAarpnG9S8mkCgGrTttAEwuuApgNV1qZiEDtjBJEUHeeZ84PnRLo9KjHLZvlIxP/5OMrEGzkml754OL8wa3w+HvTPf3p2FwaqmKlNoGKRSrod5I=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by DM4PR12MB7672.namprd12.prod.outlook.com (2603:10b6:8:103::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Wed, 24 Sep
 2025 22:36:28 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%4]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 22:36:27 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sven Peter <sven@kernel.org>
CC: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
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
Thread-Index: AQHcH0UITP6vLUUNgkWBWYMDFAvIi7SbLjIAgAKN2QCABUy5AA==
Date: Wed, 24 Sep 2025 22:36:26 +0000
Message-ID: <20250924223622.r3ozwbm35jn3vg7m@synopsys.com>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-4-52c348623ef6@kernel.org>
 <20250919224016.gyao3aoka5ineear@synopsys.com>
 <41bb000c-5643-4ed2-8d33-a6bd8a549409@kernel.org>
In-Reply-To: <41bb000c-5643-4ed2-8d33-a6bd8a549409@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|DM4PR12MB7672:EE_
x-ms-office365-filtering-correlation-id: 3b09aa9b-10da-4b51-53c1-08ddfbbacc7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YytVVk5tUWo4WVB3OWowYTNMUlVMU1BtS0FEN3dmbllFRDczejFYWGx0VW5a?=
 =?utf-8?B?L1JuSDEwS0lTMGxWb3ZFbGNncVVpSklIUjVLWmliM3p3d0R1Zk1VYlNYM25m?=
 =?utf-8?B?aSsxbnBmeDdLMVVWSERVMk1ma0tiSDJBbk04SU50VWs0VjM4V3VMSEx0U2Va?=
 =?utf-8?B?TzdSRFhxMmFJNmtRNy9lZktCMDZJN01oeGRkc1hZSXhaUlZXeVNoR3V4bDY4?=
 =?utf-8?B?OGlOZnhEVjNyODZWYzY3L0RzaVcxdDhzRFczaGdzMTlWVUY2WkYzS1Q3aTk4?=
 =?utf-8?B?WmhlQlZ5R1B1NExQcElWRmpYd1I3dElEMzRxVmt4anhXN0s3TUgwQUMvVGhJ?=
 =?utf-8?B?bU54eGZaWFdBN3JIbTZLb3k0YlRYeEx3dHcwb1N1R1hleTZ4akh3bldHbDdC?=
 =?utf-8?B?ckZPT3RyK1RSQ2dqa2grbWlSdU9vd1ZNRmNFb3B3SHpOZ2xlSENDRExtMGc5?=
 =?utf-8?B?UFFxMGtIb3d5VXdRV0JGK0FhOWM4OHhHWk5pMmJuZFNRWFdBYlJNUmVoRFU4?=
 =?utf-8?B?UjdjblJwMlg1ckNrMmhCMkdNQXRJc0JiWVQwM05VVDJYQ0RLUzBlYkFmYmRC?=
 =?utf-8?B?czg5NzZYc2kwZTNKcWExYUR0RTFuN1ZBYU54SGhtQkxKdEl1NVlNMHQ0MmM5?=
 =?utf-8?B?NVBTUzJlTEU2NkgxRTdGa1ZOZlYvWEJydUxwMEdteFozV1QvNm8vM3FxbkVY?=
 =?utf-8?B?aXVJSUd2WmJndWYxakhnbmdERzV5YWJYZHZFUk9JTnNtTmJWV2V6QVNFOU9x?=
 =?utf-8?B?RjFZVFJhcUdOVlRKTko4Ym9BbGxMQlkyMTlWZFVlaktBZnpGSmVrZDVPSCs5?=
 =?utf-8?B?ZzZFWWplS1BLWEh4dGZ3bkt5TWlnajBXOEZtNXJUcEE0eThuMzVMZW10OGs5?=
 =?utf-8?B?d0xkUXh2OStvcFdKakNkcFFwaVF4czgySm9hdWI3VDhZQlp0TjZNekhCZEtV?=
 =?utf-8?B?dGRnQlA2VjVnRm5WeE4xRjRZdGd6NElpaDlNZU5GN1d2OEgva2tQa2dXSmZz?=
 =?utf-8?B?Z09YTnM1YWdYSHQwQlY0cjcxYnBJK1owcVdhMTJkMnR5dTNReW9WMHhQcGpj?=
 =?utf-8?B?QzdnTVBwRHU0NmdvK0ZHVVROSSt3V2h3TEFKSjY1WE9LK1pxOG9iL2FrejhN?=
 =?utf-8?B?dytGYU9PU015dlpUOTdoTUpzM0tQdUdtaXM4VFdweG1hRHROcTZnNzFpZy9l?=
 =?utf-8?B?UEs5R1Fwb3pBbXlVcG1pMzNQVlJNMll4bFJScDBUbnJoaEhFZUZXU1dXdmNG?=
 =?utf-8?B?KzJZYlMzVk4valJmT1lDcERQK0FpejY4aGZIOU9hNDVRVmw2aFY0b1RRcis0?=
 =?utf-8?B?MEJ6QVMydHp1ZEMzM1Z1WkFCS293ZGVjM2ZmMjl4RUp5RldFOEo5MGpKS2pD?=
 =?utf-8?B?Zi9CQ0VaYmZVaUdDMTE2cGdEenFkUW43RmZKNlVBSzNQSnBFMVBYaXp6NCtt?=
 =?utf-8?B?ck5IczhxS0VzU200QW82UXpuR1ZEcHhwZ2RKL3NGaHJZZEJPckV6dWlHRmxn?=
 =?utf-8?B?ZTVqUm1DNWJqdzBvUUd1OWloeTNxVU5kejBHZDk1bnhpL0o1Q1grL1dSUUk0?=
 =?utf-8?B?SkoyWDNKdXN1SFZDaHBPZUR1ZS80Ry9uemxZMXNXZWp4WG9uTEhEeE44djZG?=
 =?utf-8?B?aXFpalV6bTBaQWtGQW0yMTJkQlJodHpPWDU4NXdsYUJtdzZON096Y1lyUHlh?=
 =?utf-8?B?TXFXMmQzL2VKcTZDSmR2OC9Nc1BOWmtVU2tqa1lPTDVsR2JKOS9ZUzBxSU84?=
 =?utf-8?B?K20wZjRGU3JUVE1TdlVLQkZrRUZIakxJRmZDYkdJNXg5dTFrWnNwbUoxUC83?=
 =?utf-8?B?Q3NLaktGYThiODZ3QUREQWNwekpxTTFDL3NveDNha0tPK3A5eXpFNkUyamJw?=
 =?utf-8?B?UzNFeCtpVUFuMXZSbmJFdm1oMUxxai9LY2picTNtQmVGdENjenpRTjVzenBy?=
 =?utf-8?B?bW9aVlAxd2tXSG5qN1FoZTlQSXNNcklOM3pxS09jTlNHZEE1US9NY09UQmZT?=
 =?utf-8?Q?UAlmh5eeWNQh3Y3ExVhygdSEekS1ZU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uy9YUUp2RFRKV01FR2E1NGRob2dGdkhsYmpIbk4yTkQ3Qy9vanVScHMrY1RB?=
 =?utf-8?B?WlpLQ1IzR3lOSG5vNU1hRWlZS3JyS09IQkdyUG1pREsremNmV2JFOUc2dHYx?=
 =?utf-8?B?Ulh0NStlL0E4NXdoUElmaWJjbzVCRXFMaEd5a282dGU4TGVJK1d2ZlNtclFU?=
 =?utf-8?B?RVMrL2M5VVErMjU5dXhMWDZxSnoyYS9pUC9ELzFYVmM3U3ZRUFFvbEpxQ0kv?=
 =?utf-8?B?VEthWnNRM3UwL1IyL3ZlQkdCclBtdHR2YTNlVVZrNW5xbkU3Tks1SUR6L2lj?=
 =?utf-8?B?WnBabHlib0JERmgxbys4TmpCU3grSzlCME9Tb3dHVzBISUl1M3JHTTQxdk5q?=
 =?utf-8?B?VGN0ek9tT1cvY096Q0tWTVJZQlowWDdiL3Yzc3IwSGRDR2ZnczhzamdlZE5E?=
 =?utf-8?B?VW5rU29rUHF6bFpVVkxNNHRoZW5vSmtpQllHR1k1UE04VUtPWVZabW5Xa2tV?=
 =?utf-8?B?M29ndk1SckRZNEdpUTU1OW1wcy90QUt5aXcxN3ZKMzhocnRwbmduSmk0UlZU?=
 =?utf-8?B?cjExYnZzN3MwWnIyYklyVndPSERPMk1mdFdwNTNEUkR2TkRheGJwNU9WaDda?=
 =?utf-8?B?OE9DSzlHRmRJSzMzRTRoTWwwWjUxOGloVHJ4OERScjNtRDBrakxIRWVYQ2Ev?=
 =?utf-8?B?R1VEd1h3QUZEZklKRERHMlVvbllsRUhxMUNwbFB2cDg0VzlpWTE0N08xbTla?=
 =?utf-8?B?eVowdG1NT3lyRmhXeDAwaHdEdUtuRXBNbVRmRy9wenRyWG1icnlFdWo2RTNp?=
 =?utf-8?B?RjhTdkNscWdyck1mUlp2c05oVW1pZmEvdE5weWM1cGREeGJiSm9QaFdvUEFV?=
 =?utf-8?B?Y2p0aXRRVG1qeFNNVlg2c3JEWGEzSzQwWkZQaUZxNmRZTDZzM3RpRnFrblFX?=
 =?utf-8?B?WVYvWFBGckdpM1hwSzA2VHI0M0psR3NrZFMwU3ppV0N0ejR1ZEx0UmFQc2RS?=
 =?utf-8?B?ckZYeHIyUWtudHdvS2UyaFdoVDFDbU9xUmd4bmFrd0JlTXU4d3dsZnVkQkFU?=
 =?utf-8?B?Mm80RzFvQW1HUEFxZUtXdVJuZW5PT1FqczlqdDJzUVFlRU10b24vdXVIcjdR?=
 =?utf-8?B?UG1mR3Q1dXg0Qm5pMU5RWE9DeVp1NlFTcHZFSXB4b2JzaDB6WlMzdm5sa1BT?=
 =?utf-8?B?SDg1azlxcEQvWG54dFlHbEdqOFBOckh4bkNybktWNlFSaU1ubTRaSlVZdmlZ?=
 =?utf-8?B?cklIRTlRTXRObUdZLzlBdkhNdG4rMDhQWWJGalh3NGI1b0RqcHRlTWlmbHRy?=
 =?utf-8?B?Nm5OSXVVWnN6b2ptNTlEZ1hWa0lySFdzNkpKaGRxaFVkYzJFbHZoend1R3Ar?=
 =?utf-8?B?THd5SGozZDFUQ2gwYm1xVEtucFBmNEllNnBCNXVDNDd0YzZyc3BVSnVoKzJN?=
 =?utf-8?B?Q3Z1am9mM0g3WWhXT0t1dEZYZ28rTGpVdG9hUVRkUm1Jb3hNeGpCOWswK3Fv?=
 =?utf-8?B?dU0vcmVVVk9BRDVUTUphOG4yYWxOamJveFI3RStIVVcwWUQ1Z3hzWldsc254?=
 =?utf-8?B?ZmVid0FrR1dXeUNYWlV2SVJhYmVJb3cvNVlnYStJdlN1NlJRZktGSGFvZStD?=
 =?utf-8?B?a1lkRFUvOTczbVA2akdteFRpeC8yNDFXQ3g2bVNjaEFUcUJDR1JZSzFoTG02?=
 =?utf-8?B?VW5xRVR6UVorUEVxZUp0REYrSEtNNTAzTmpEZmhhekdVaHhxQ1RNaTFkVUZq?=
 =?utf-8?B?QklxWGFkNnFMa3FzY2lyUHdsZUxyeHorcCtMVncya3hjczg5d0h3S1ZLT25U?=
 =?utf-8?B?NVZwMk9QUmhWSDZLY3NvN3RsSXdzWVAyckZpY3JlWGdreDRuTFVkUnJHQmd4?=
 =?utf-8?B?SUVjeHVwREN0ckZmYU02R0N4ckJkWUl2WTNhbWFwNlMvVDRsMUwyVzdFWktm?=
 =?utf-8?B?V2IwUVFkRnpXRm1yTXc2VzJGdE83c0xSejIwNGJMZDFNTGE1Zis1V0NQN0hK?=
 =?utf-8?B?R0VUSHZ1M09zUUMxaHNIc2JxN1IvaXBlL3VOTzh6U2M2Zmh5YU04QWcvV1g3?=
 =?utf-8?B?WTh6dkdxMTNOc29aaklEU0ZSZHFNQWxzVmJQbStyT09Tc2hGdENZZlV3bWh0?=
 =?utf-8?B?dHpIRWd2cnQ5Q291eU9oQy9vNDlzTFk3Ni9pMnlKa1hzMEsySlBDS3JENFhN?=
 =?utf-8?B?LzRQeDVPRkFxVDF5ZUdaOGtlN2pSUkFISjh5amJ2MUV5dGJZK2d2dkI4a1RP?=
 =?utf-8?B?Y3c9PQ==?=
Content-ID: <21155C3D166B344AABE23D479A26F17B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 9ZS3ghjueDBjJMbuAgxihvKLILDKXmQyQXkKjlNjP5FG5KNEDXKibkphV/VotkyvkGFeLafdWLXQWJs7PIXKVE65kPAC6iE4GRkUxVALHXLKQFjvGiztdY16e/IwreXOqmfWBkDp2XhrOnKrDlG0ysLPuVLGPmPUbEMIpUEbzzUVeGwgYuu/zMy2wIHnOm5rFVT1XZmGYoxxaKDzytD/9seJm0ESDfMCNpovfuHeHLqP2RbC7k0tPWRLLE3CnljcIHaVF5SeBq1ZC9dJpFqivGeISJbCi7OstaksMpikhf/FWZFIKTLrrDfcv5PibRS3juFb9Ln6nK/vOxdj2bae9gM+Z60AHKpiK+hpa7hS+mFRR7lhuJ/qS2lccoW6bj0Kd67zjL+wV7FGNzWGWnjyMp1If3HLtqVQeGVZ40si/qbZfOreClI0rBSAivQT5J7DNdWW4k9o/1ewzpVgZhOb45s+opqYwUqG4T6QmNNeTpJkHmUGArmrqQlurqkOhl7B44LQLLGiwa9wAonjLybeOGai7fILYq1JGjXf7L+ZP2BuotmTQUDRhqGz/iTkYi1SOaM9ghnu4tYlSUMINb4Lp/cyQnmECRxZ7m+FQAP82DWJKpLVOu0x2l4cytvI4GkDBmZcEIbo+Qzolyn0v2lPLw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b09aa9b-10da-4b51-53c1-08ddfbbacc7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 22:36:26.9302
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGn+Fh69k16XH/gSqgxSV8yWTUcJhthgw0/XZGMEFLtUtElyJJaoiJ22PAmQYTU7ZkDB8NgfJxlj6FKKMN2yAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7672
X-Authority-Analysis: v=2.4 cv=EofSrTcA c=1 sm=1 tr=0 ts=68d47279 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=qPHU084jO2kA:10
 a=hcbtvqmjxSd1PkeGr3EA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: BrlqogslpG_FSGBtprrALSDqw8FsWC3s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDA5MiBTYWx0ZWRfXx171dPRe4s0A
 UjA+xpHWc2t/AzWYelLlkm+yCmSBB9/6keWf3gOdUFvBX5ccy4dC7g5aouzXmDug03pSIFUxcfl
 1LN8TMwV9KgC5+1ynbeWf5pz/Q4Mtyy+tjG0XRHbWwikad7K5rDTeYifm3iaVfYZUufys0PSLoy
 r5fJ1XsdAuN81joZBH/zh03hSliaJ+kdspW0gxtLBXc3kybTJNee+BQUCILG4Gxr9VnXPBG1GpC
 g8jhiocUKaUnRwvWQsNBTxWF2TGlKCVhtWNou1OB1qWzo7kvcUf3ffObNcYOkcSN+/YKTQPe5Ow
 JFvnvR2Sy6yWi1xqQ4pcl+lO2FsUzfjWV0t3lwtYEZxMMgxtNiAIOcr9AzdBY02JKbcOGd5xoq9
 6BkaIyU3
X-Proofpoint-GUID: BrlqogslpG_FSGBtprrALSDqw8FsWC3s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_06,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 adultscore=0 phishscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 suspectscore=0 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2509230092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_153705_870193_A5D2E979 
X-CRM114-Status: GOOD (  10.23  )
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

On Sun, Sep 21, 2025, Sven Peter wrote:
> Hi,
> 
> On 20.09.25 00:40, Thinh Nguyen wrote:
> > On Sat, Sep 06, 2025, Sven Peter wrote:
> > > As mad as it sounds, the dwc3 controller present on the Apple M1 must be
> > > reset and reinitialized whenever a device is unplugged from the root
> > > port or when the PHY mode is changed.
> 
> [....]
> 
> > > +/**
> > > + * struct dwc3_apple - Apple-specific DWC3 USB controller
> > > + * @dwc: Core DWC3 structure
> > > + * @dev: Pointer to the device structure
> > > + * @mmio_resource: Resource to be passed to dwc3_core_probe
> > > + * @apple_regs: Apple-specific DWC3 registers
> > > + * @resets: Reset control
> > > + * @role_sw: USB role switch
> > > + * @lock: Mutex for synchronizing access
> > > + * @core_probe_done: True if dwc3_core_probe was already called after the first plug
> > > + * @mode: Current mode of the controller (off/host/device)
> > 
> > For this platform, current mode of the controller should only ever be
> > host or device mode. Seems we're mixing power with usb role? ie. what
> > DWC3_APPLE_OFF is being used for?
> > 
> 
> So this platform is very messed up and in order the bring up dwc3 and the
> PHY there are four steps:
> 
> 1) The PHY itself has to be brought up; for this we need to know the mode
> (USB3, USB3+DisplayPort, USB4, etc) and the lane orientation. This happens
> from typec_mux_set
> 2) DWC3 has to be brought up but we must not touch the gadget area or start
> xhci yet
> 3) The PHY bring-up has to be finalized and dwc3's PIPE interface has to be
> switched to the USB3 PHY, this is done inside phy_set_mode.
> 4) We can now initialize xhci or gadget mode.
> 
> I think we can switch 1 and 2 but 3 has to happen after (1 and 2) and 4 has
> to happen after 3.
> 
> And then to bring this all down again:
> 
> 1) DWC3 has to exit host or gadget mode and must no longer touch those
> registers
> 2) The PHY has to switch dwc3's PIPE interface back to the dummy backend
> 3) The PHY itself can be shut down, this happens from typec_mux_set
> 
> We also can't transition the PHY from one mode to another while dwc3 is up
> and running (this is slightly wrong, some transitions are possible, others
> aren't but because we have no documentation for this I'd rather play it
> safe).
> 
> After both the PHY and dwc3 are initialized we will also only ever see a
> single "new device connected" event. If we just keep them running only the
> first device plugged in will ever work. XHCI's port status register actually
> does show the correct state but no interrupt ever comes in. In gadget mode
> we don't even get a USBDisconnected event and everything looks like there's
> still something connected on the other end.
> 
> 
> And to make this all extra fun: If we get the order of some of this wrong
> either the port is just broken until a phy+dwc3 reset, or it's broken until
> a full SoC reset (likely because we can't reset some parts of the PHY), or
> some watchdog kicks in after a few seconds and forces a full SoC reset (I've
> mostly seen this with USB4/Thunderbolt but there's clearly some watchdog
> that hates invalid states).
> 
> 
> So there's really no good way to keep dwc3 fully up and running after we
> disconnect a cable because then we can't shut down the PHY anymore. And if
> we kept the PHY running in whatever mode until the next cable is connected
> we'd need to tear it all down and bring it back up again anyway to detect
> and use the next device.
> 
> 
> Instead, I just shutdown everything once a cable is disconnected and that's
> this DWC3_APPLE_OFF state. Maybe I can put the explanation above as a
> comment in there and maybe also rename "mode" to "state" here because we may
> get something like DWC3_APPLE_USB4_TUNNEL in the future here as well because
> the sequence might be a bit different there.
> 
> 

Nice work figuring this all out! All of this information is very
valuable. I think it will benefit everyone if you can capture this
finding somewhere. Base on your description, probably "state" is a
better name.

> 
> > > + */
> > > +struct dwc3_apple {
> 
> [...]
> 
> > > +	/*
> > > +	 * Note that we only bring up dwc3 once the first device is attached because we need to know
> > > +	 * the role (e.g. host), mode (e.g. USB3) and lane orientation to bring up the PHY which is
> > > +	 * tightly coupled to dwc3.
> > > +	 */
> > 
> > The wording here is odd. You can wait for attach to do this, but it
> > should not be a requirement. You might not know whether you need to
> > switch role, but you should be able to initialize the controller in
> > either host or device mode prior to attachment.
> > 
> > Any particular reason we need to do this? If not, we can do away with
> > the core_probe_done condition.
> 
> Because I can't really bring up dwc3 fully to any mode without cooperation
> from the PHY and bringing it up here doesn't really buy us much (see above).
> What I could do here is already call dwc3_core_probe and then immediately
> dwc3_core_exit again to get rid of that condition.
> 

Understood. Thanks for the explanation.

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
