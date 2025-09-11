Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22DB3CAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 01:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+Akyj53nV8FPnSneGd3ZTDuI22rJPNxZ6fvHUr9AuU=; b=fYXugr483U6NPs
	k2b0Th6779BH3QayU6oNv0oz4TWewZJjlChUTS5kvZAUK7wvLeX+I6qq4Rx75l6o+1ha/nc3QTgd9
	rs1qMITdmZyGaTQkSZGOn6wKPLJYPjTQpMSj3j8VZlLqYjn4wyOBstjSjziPqDiNOAlbJNinGmwXF
	Q0t6UsNZvQItZ1H+CGbIusm05WMvP7d+9gd+R5Ju3v1TIx9tH+H3Ar2vqdfII3s9x1Rj1obXkel7D
	6aeJjhe78OE+m40A3zT1jRvkSLcp8Vd9VsIpMZ8GnF7FhwO6bbxzB3dfFVds0jQFAb5YOzioZh1cz
	AFVsvIRXIeteWRBwHbfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwWP8-00000000DkY-3XZT;
	Thu, 11 Sep 2025 01:47:18 +0000
Received: from mx0a-00230701.pphosted.com ([148.163.156.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwWP5-00000000DiA-1SFW;
	Thu, 11 Sep 2025 01:47:17 +0000
Received: from pps.filterd (m0098571.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ALSfIE023993;
	Wed, 10 Sep 2025 18:46:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=q+z3IGgIn6VBJlIP0+4Ne8sykSaLTcQ1jPk6GdSgJj4=; b=
	LqFdw4lhVteZsDCYzimYZuxosJlItNqJEPWN4P8ze1/y4yhU1ks+BTgwe283JHML
	201SnmC9MgIROj/SbXudKG2r7TzVCCrwuUG8Wyu+3zehCq8/fEpomFeyCat391N5
	MNefOtRdTt9fqREcqIR/W5Bcw9w4Ff9+qZQrnsJR295dEKu6T2q8lX6vnUIZ03l3
	x6EtQ2Qed6DGHPFLReR5gmHtthJnTrtcyIFQq6WmTJOnVLRM+AsL469Ep8MUdPeT
	5jImg479MeHRijFKDNnFsnY0zkvTNTi80E3YOG3ofmTOz0WdsswY/t9dJy/y/L43
	eNtHgvrbtXCC6h3eR0UN+A==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 490kymycms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Sep 2025 18:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1757555218; bh=q+z3IGgIn6VBJlIP0+4Ne8sykSaLTcQ1jPk6GdSgJj4=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=I5iElai8ELvpxTXDrAYxp4mjIDYYs0LmYBiNJzkWKRmbNuZuHIf92zJjjovcjlN2Z
	 cj11qd5wBmtoUMj+eLAddBbxnTXN0AcFXmfxbiRpXiLvPjAMOh4WxhpZTn+9mBzIAg
	 CZdI3Bjj2lfRxn32I9Urr6S7Y4ZRbpqH0LdTpRFJ19W56R6Y1JdPz93hvY2klpcmdW
	 9ai5jNQ60LasrSLLab2uwZXVjFN700f2mhRSStjx6eEcpX0NweWty4c6ZYrqWRahBK
	 TtJSXF5W1XDYrpnfE48hmJcvt9Mh+fPX6l04dEmXXPiGO6KteIIEBc1DD7dFJumanf
	 ONb51OC+YGSnQ==
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com [10.205.2.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 709A24035D;
	Thu, 11 Sep 2025 01:46:56 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id 7CB94A0071;
	Thu, 11 Sep 2025 01:46:54 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=bT3Ksc9i;
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 8C91840526;
	Thu, 11 Sep 2025 01:46:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aeiE8vtbwjjy+xLnZAuxURTgD7JLwmQzydZHvrI/ZPqB9aOkwbZgxrk/3Z1VsmHCM2gz1Xyva7eOvKOkRlzftBvGEhK2oeN8QdtOlcsydeWwS1Sa9KIw+C1nTb+cvA74dkuXeddQ5Z8/EBs0gNUvNxPlpW+EloucR0zPCk3FcY5CdqTOqScGXzKa7e3a2dHfxQoed7rb22fNjEb3U0us4lIASlnhLkHwFdCpSjrZqHYCjHd8AXN4AR3XY/OlcDgMyFCjcNAjQHE1UNdRgTlC1bLGhcsiJEofMR9KneSPYfpxNb5r6SMs0pH3urEu88zU4IOVdgKVeL0fwBaHtlaiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+z3IGgIn6VBJlIP0+4Ne8sykSaLTcQ1jPk6GdSgJj4=;
 b=oNiLxhfwXoVtbySTzVSAPYyoY6OjJgwD2Yld5JskQAUtUC1In5FhrWgwF2U9HQcpoWPsMATVRH01u/1X01JCjAzGyPxvL3hbK3A1QYBH3ANf9Aj9JQXXTFfqoSn3oiLjuubBGGCRcNp92JplUGOhDFqrRmKmV4cZ7HrSHisoaqCvkfa04KKjq2kUG9kosdsQMh2auqjeaMoV69/4gCE08I4Ivwl7RbCvm5zLyaoPS8IMGnf1rFuxijNJmq+ZX/ZTbhEc0HqyVvSoast5KdGGNxxgncxSaVTNMmrkX5M8LINpKIcD4bsznJxOqVM5RWtfGSeS3w/PE24PeTyhCEE29A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+z3IGgIn6VBJlIP0+4Ne8sykSaLTcQ1jPk6GdSgJj4=;
 b=bT3Ksc9iqCWCB+0HLRICkMYmqzSFsLzuCgcMrAds0IiSuawFcp6vUzVCwPQxQPgmyecUWoVxE9nVHTBU4YgDRv98VDrLsrUKS2oZjO3xIJ2P9uGGdUIV0n7rN7BRbw5Ysg6EeVuG4p5Cg29xCQdN7OcGAce0fuuMtNL+W/IDlig=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by BL3PR12MB6570.namprd12.prod.outlook.com (2603:10b6:208:38d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 01:46:46 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 01:46:46 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Sven Peter <sven@kernel.org>
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
Thread-Index: AQHcH0UITP6vLUUNgkWBWYMDFAvIi7SNPVAA
Date: Thu, 11 Sep 2025 01:46:46 +0000
Message-ID: <20250911014644.33fjkq26ixykciys@synopsys.com>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-4-52c348623ef6@kernel.org>
In-Reply-To: <20250906-atcphy-6-17-v2-4-52c348623ef6@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|BL3PR12MB6570:EE_
x-ms-office365-filtering-correlation-id: 23d5f48e-fdba-469b-85b2-08ddf0d51125
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?eFN0anh3bm9Cbzd1bno4ZWVIVnYrUyt4RnVESWVyaEc2RXh0OWpOM0RzUk1h?=
 =?utf-8?B?WFc5MWdlY2VPWjMxczI5MXdpYTAxZktxdE5zdTBvWVV5M3BmWVZMbkw4Njdt?=
 =?utf-8?B?U0hudnNadC9tY2Z5TXgxbkVVSk5QQU5SbHJPQW9oZjU2SDVUTWJFSGgrSHl5?=
 =?utf-8?B?L3FYS3EzU3N1N0lENXhaMnRkSFRmZVQvWjdVaUl1SXM2RWVJcjdpUncrUHIv?=
 =?utf-8?B?S01sQXNkbUFFRUhjN0xxZXBXbjhYZklmVEpjTG5OeGpCcEFsMTVMNFBydDVi?=
 =?utf-8?B?eGlJb3NZUGRyZzZMelE2QWlmWTNpa3NOT2RrMVhMQ3MrQ2JDMkxtNWNWd2s4?=
 =?utf-8?B?a3hQU0t0cTMrMkl5TUVSZlkvQ2w3TzBsekFkSGFVc2NkYjI5aVN4TTJsM3NJ?=
 =?utf-8?B?V1pRRXQxUlUvQVJuV1VuaG5HU1NPV0ZWSHFKYndSekVMYnpJSmZoUFJBaW9G?=
 =?utf-8?B?QnFmOVA5TjhGNWxnM0ZBclpMVW5ZWDF1VUwwT2dEZ1JJSUowMnc1R3gzOUFy?=
 =?utf-8?B?cEE5cTJXdTVoMFJrNTJyUnlVL1ZqR1lqZEpDRWtZVldFdTMzTjVtOCtxeTZ2?=
 =?utf-8?B?MmlMb2lVdnF2amJxUitXTThwamloQzhidURmWHFTU2Vyb2I5ajlhVC9CWjhi?=
 =?utf-8?B?MGV3MUlXaDY5Qnl4WU1JWStyL21FNTd2bzFzT21YaTFaeW9xVE1GSUdYRUJ5?=
 =?utf-8?B?SC9uQ013emlRc3J5aGFOYnBOYjUzc05MUzZtSVladnNUanJYUkFuSmZadERR?=
 =?utf-8?B?VllsSGpobUhyT1BNOXBHc0ZpUTJlY09HRHU3L3ozWGVsTFp2NFp2VkE0Y01L?=
 =?utf-8?B?ZEJmcG9naHNheTZTcTJqYU5acXdrSkpSSkFQZ0c0dTB1UjBQMVZ0MFN3SjA0?=
 =?utf-8?B?Qk5ya2JOMEt4S1NoSXJralE2RC8vYjFMZG5Fem1FVDMxZE0zL0Y3eDk1Tk03?=
 =?utf-8?B?bUpRV3lpYlRCazExa2NlRUx5QWRONjhianY3WS92VitCRHFPSXZkSFJxa1c0?=
 =?utf-8?B?Z1I0eW1QYU15Vm5zUEQybmRkTTZ0aFgzaTlLYnNZVXY3eG0xN2VxLzVRSlJu?=
 =?utf-8?B?WnVXT3VhOWF5WWFuUlJmbFVlYjdOdDVzbU1MRGc5VndSQUtPOUN4R1I3b0o5?=
 =?utf-8?B?VHdQdzV4cWtLSlBTSnFUbDJsNlJBQkFLaGxpNjJ4cGpVUnZqcEJGYXBZRkdP?=
 =?utf-8?B?c0hiZ0t3bU1hdDg3ZjhRLzZXTXhhU3piY2ZYR2RKYi9HRkt2dlBjZ0hISWdH?=
 =?utf-8?B?R1FiZnhKNWF4Nkh5emhVQjBDNFFJZGxMRW9pQWRMNEJCeDJWUXI2eXZOeFYy?=
 =?utf-8?B?cnBHcVFjaFRXbjBPWEpNbFRFTldRSFZjdzNySmtjVWNKcERZYVJhYmJEMktu?=
 =?utf-8?B?d2g1VnNCa3MwNXBabERPSWNjVU5nYUZFaWZrd2JsWDZiYUVBUVVhYmhFUWh2?=
 =?utf-8?B?WXEycUVhT21kTEo2N3BmWUxVWTVZT2VsekEzTDZUVTlYd3RnY05ReFcvaXRj?=
 =?utf-8?B?dVNVcHlpMTFTNHJObW1Ea0lLSEJSR2FPZU01MXJ0SGRJQ2pPRWdvSWR2WjI3?=
 =?utf-8?B?a1dNUmFkSWNscVhMemNTdUNHTURZUEZHRnA4TExJMVFGekJIWXIydUpmNW9h?=
 =?utf-8?B?UUJ1UTNOaDBxeFRlU2VVUXZFa0x4bm1SM1FmUlZMRWdUZGtNK2Z4QXRydUlo?=
 =?utf-8?B?SWNKeUlkVHI0UzNWdGduMUFsaGxISDQvUk5oQlZzWnBjaWNSVXlFMFdjY0hz?=
 =?utf-8?B?SWE2Wi9VYmRybm1acHkyZVE4R3dMbHhSR3dHY1NuRlZRK01HY1ArYUJwaVMv?=
 =?utf-8?B?YmV2UGdzbXI4cmFkdGxNSEUybkQyYVl5QXE4aDZuRmlTY1dZWXQrWDJMRlNy?=
 =?utf-8?B?My9pMEozMTZ4elp3N1lnOEhKNUsyOTlHL0JOVFhUUmUxRWpWTFphK2xLS3Z6?=
 =?utf-8?Q?YuAhBBOMGQE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3gxRTczY1BKUHFpZXpZM3NhU2ZpNk9Pazd4SFJkV0NrSGJZTUwyNXRGL0lK?=
 =?utf-8?B?clhBUDliRmt0VzJERUJsTUNEVmx6YkYyU0pRSjhnTlk3MU9wNTZvaE5sSEZv?=
 =?utf-8?B?MjJMTXBFWkR3NTBQRlU3Wm1QZ1Z3NVV3ek1NMHFEL3dCVjdUS0ZwZjlUaXpm?=
 =?utf-8?B?eE9HSnZyaysvTHAyQmp6T1RodTkxRlNHVXRzM2FGY1huR0RQWlJNTFAybktp?=
 =?utf-8?B?alZPdGY2cXM3VDViUHpXa09ya2I4VStmbzdtNFhEcWlRL3hQcWVTWDZOa3R5?=
 =?utf-8?B?cjlnTTRaa2dQZGN6ejVNMmdtdkJEcC9lRmZjalNpd0lxcnZrdWY2Znk5VElS?=
 =?utf-8?B?OXR5NjhEQmNoOWwzcVBzVUQrNzFvSGRsMnZXaUprUkVKVUx2eENkSWIxeFJR?=
 =?utf-8?B?eG92a09VY3lLaUVGc3Bkb0xTZ0lhMkNDMlN6ZlBiL3pzRFNqUlo4UktJdkl3?=
 =?utf-8?B?bG0zQ0IrSHJSVHhKTGhxeEpxeHpidklnVFVrdy92VHpMOUlBWGprV0Rsa1ow?=
 =?utf-8?B?ZlBueWdDOWs0ZjloeDJBc2s3ODVJbmx3Z1lGTnNRMSt5RXczbm5lTkV6d3FR?=
 =?utf-8?B?Nk9GS054c2J4aTBVZVdlOUVtNkdGMXlNb0ZlbVhuaDFCeXRlM0FMUVRYSUpR?=
 =?utf-8?B?RlJsK2tDcXZEaG83Y2FOTHZCQWNiU2JhcHpVSVdyczRnbmR6RGRNMjJ5MmdN?=
 =?utf-8?B?a2VhZkNwRGtadEpIajV0VExnSHd6NHNKUmYxY2x5T0tMcGV0MXA1L2E1eHMz?=
 =?utf-8?B?QkVwMG5RM2FweEdMNW85ZkFhK1pBK3pac09tQzNWeDZDRk9wSWRMZnNEZ0tZ?=
 =?utf-8?B?Tkh4cDQxNDBhcXpVcDIyUjA0WWIveVdZL2RWSDhpU1VzUXU4YkRQM0FwWW92?=
 =?utf-8?B?aldFbHdrYnlpQXFEaWUxdnhRRDdnRUZkR2oveHp1S2RldG9yT0lHaFhyeHls?=
 =?utf-8?B?ZCs5Sk1xVkd5RkR2OE91SkcvUTlaak4rd2NYc095UjJ6TlphV3kzSGRNU2Nq?=
 =?utf-8?B?Y2JtcEFyL0VLYWRoQ0FxUzFZa3M3TlpXbVdvb0d3S2M0TE90N09qaFdVVkR4?=
 =?utf-8?B?bHVTOEZsL2V2TXc2cGsvb1NUR1dyS1gwbUZRWElDN2g0ak9NcXh6Z2k5WU1a?=
 =?utf-8?B?ZFlQNUp2dTdsdDdjVjcra24xTHcxd2VoV2NyK3FrTndTWENkRWhRbWx5Nlc4?=
 =?utf-8?B?ZzNTbDkvTmR5NmNYejJkN25xc3dCTHV0eThYWjJVNkFyYjNoWElzRWkrQmt4?=
 =?utf-8?B?Zndkb3Evdmw0RUlsM252c2ZodEFpaEcxVStkYmlNSXNsRjY0L092WFcwODFN?=
 =?utf-8?B?eWFBTTZVNy96dmNFQkNUSXNNL1A3WEc4ajA4OGF6YnlEUDBpUVVLc0dHRUFI?=
 =?utf-8?B?Q1g2S0c0OGNpL21yVFUyYytKYUw0U0FSdXdwQStrYUd5a2ZvQjQ5TW5NL29M?=
 =?utf-8?B?V3BVUnByU3ZQdnJvanFDRlhTUDBlWWhUWjRIZk42YXdXRTBnRWpSeEppbEpG?=
 =?utf-8?B?YlJUQWY5aVRDcUVJdWVHK3l3KzBUM3ZNWjc1VmtJZUVBK2Fvc21UNTV4cmdr?=
 =?utf-8?B?K3hLcXRycVo5ZUFndnhtTnhJRjBtNVVnVHdEb2F6c3hjUVVSN0J0WFFJWW9r?=
 =?utf-8?B?NXZkNVM4aUFGY3JlK08wMXlwSHVQT2ttQWNaV0YvUEIrejNYa0w1YlplbWww?=
 =?utf-8?B?RktBZUludzB0NW9xT3VNUzQrb0hqZHJZZEtmNUdpdkFhS2ZtakV3VDJhVnl1?=
 =?utf-8?B?OUMyWDJpMEphSTc5UEQ2aWFOSjlBVUtGSU05RWFlZXpPMG1nYnZYYW9uRlpR?=
 =?utf-8?B?UnZaYk0rVFlEbkY4ZS9oUVRWclRCcjc1YTA1R3BEZE9mOTJxQmJDcjhSaXB0?=
 =?utf-8?B?UkRWdU00Y1I4SkpYSEo5eGhHNUdMa1hwUG5NZ0d3bGUyUVA5QzVzOTU3VDZa?=
 =?utf-8?B?NkF5KzFlMGFsbG5pZTU3SmRPaG1PbGZkRjBhdWUvaTBINmdHVW8xVUxadE9v?=
 =?utf-8?B?a3l3TmZCMWxXcEY4dTBKYnlaaXBmTndxUmlDb0JydDI1WExRNXV2UWdiTkQx?=
 =?utf-8?B?dFA5aFExYUVVNnljSEtGZGNoUWNIRWxKNmhzNmJuVTRmdUtsY3ZaMDcybkc1?=
 =?utf-8?Q?ylMy6hKXmrkuVQQsEIP23IrkI?=
Content-ID: <BDD1E75A8E2050408D201A0DC0E606BF@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: b4Hy4fUE1LXRs8Mev6Wirg7wQ/goOscWk5wEtQX603sVhFeYUg18G8pdEpOKjBGdq25wGRmifjoHN6Cu22pfNiH/NjhKzbJ+5mBtjF8Dla7F0yaPjh5rDCay5aRKyaY2q6dX9q3DAg4c4q8XqXVKU9rYSgchfmDXMlWXhOAnCEvGapercDG7W+euN8D7geyfZD5cZPrMseKZRy/HcuvkZv2yTW7Qw3nlb+OtkEDtwCyDAu9r6TiRDZ2bK5gw3V9nkBja+cvSHWH7BhDmm1kyreGp3rpFkVL3+ACeI7tVzNQ4NN+6yUTvI3/hhYSSA/pPM0SnNK98CRmcgGGijjVXEwwdbaTNWXOUSEHkCLvuWBOW1di74BjHgBATWGwvrBlR+6UzyWy805zI7FXvJi7lZesYUvL3jhC9bexS4iilfxWhYKJf0417xQh1vsnMZHRrj1Hl4pdAt/1OcFpVHBlOKjY/LnGiyEMB8xljk5gwNQgyRNrvE/zdmNm7RzXCawyF/mbbzq3YIJNRhRSi4wIT4QeUC/3ILn6G8hruZ7ghnLIek0RSDh9wrBYZVOeb+4+GY0boFCpIo5ErxAITbMiLGD0f4HkL8DGT9BgZlHsWSPCjdjxB1AMGpOFyk2A+FVU6eThyK21Vp4IWAJJNSsWBkw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23d5f48e-fdba-469b-85b2-08ddf0d51125
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 01:46:46.2327
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pg1TbYDyIdOBmmV9DkyaL3mBz5HunQWdSITQJngb0gWq6RHFssqywkVopWgMopIDgtaNJTlMwR2tkMDM8d3rGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6570
X-Proofpoint-GUID: tZdYPknNLB62dIDKVML30QGlXm4__F8x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDEwOCBTYWx0ZWRfXzBCxjxd91Reg
 MCGV+NlqEue6fzH0uUYmM/eTIuHHJyhxPSVYOiQ8mV45F1Bt1N56gPvWAUuaplTZt4T7k/IOe8d
 rDblMfKP0kppltCvalJQ0qGF0aWAlGTdcB71CjCHxBOXx4GXu8TC9pSdwPeThyjaqgA3uFKcFMk
 szpvO46fxJLFzVao04VVyOcNoWa5Hx1x2S0906ZdZ0G3TPcZ9ImROB21bD09yx/aPhVMtA29tWB
 +KD9ohKaHnFXof0xtgW5m8I/gFxdKEEsuqHxmKeX59p+u1k0ethzHm1F0wt4lLsheo37DZAzMOR
 09b0dXCqhQLE2j/gqwoQTwZmX4reaEz4AeVnDncRcMwjn5M6zhxdcR/aR9pOkhwj63HUeIbQ1gg
 jLrNMWwX
X-Authority-Analysis: v=2.4 cv=JvrxrN4C c=1 sm=1 tr=0 ts=68c22a13 cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=qPHU084jO2kA:10
 a=sozttTNsAAAA:8 a=VwQbUJbxAAAA:8 a=0wy3wyHj1jR8xozHiOYA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: tZdYPknNLB62dIDKVML30QGlXm4__F8x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 bulkscore=0 phishscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2509060108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_184715_438926_D14E7971 
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

I like these new changes! From the quick glance, this looks good to me.

Sorry for the delay, but I need get back to reviewing this in detail
next week.

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
