Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A144CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 21:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgf2kN4JxnwnS7yPm3Lj6dAK/htYXXem6D8dl6RNdoI=; b=MEo8WtUYXCMGCq
	U+wLeLtGkRYks8epAAJiT/4B4nlNYRkVXH0muA18tV+DRZyDgMuhz98QwMH+lmqj8jH0Nlg91OKG1
	OU2sClIYx2FL0k5WD3CQ0lICViPEqOSizxw7HIFq/ehilTc/QNxzO9W82IfYAqwTbV33R+qq1QG1n
	THRuuraRHyTDaheBwetisv898T1rv2SwyQ5gxPgeFXRSn0STtpYDpMEsF0CaWvEWGEkaUbUY73P2B
	MR/2RPyPNG1+uLKEa8nsd2nhqOcPmuJquBQGrLE2MCNVjL4WS0umXd1U5QK12VZNlrqz/VsmQ5WgX
	2WokSCQSlXuafgXIxLUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uziqW-000000046uj-3bTd;
	Fri, 19 Sep 2025 21:40:48 +0000
Received: from mx0a-00230701.pphosted.com ([148.163.156.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uziqU-000000046uN-0lBD;
	Fri, 19 Sep 2025 21:40:47 +0000
Received: from pps.filterd (m0098571.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JJWGsW005290;
	Fri, 19 Sep 2025 14:40:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=91f6Tq1ikVk0XNlEq/yld4KeYGnQbHTOqo7NoLtH9Qw=; b=
	GfRBatTMRn89K/fqNxlBSkoFgWoKMWtVMgvfS1c5327Hkgu6k9FxYkhmgXawVezJ
	ZEWGHLoiQTkBhKJ5exZiQMcactz7I3GdvT5TBKU6sAKXaL9cGlHFo1Ij6rQ8h8nG
	DE5yQAiTwS7DZHFboySjIgCXl3g6l1yOCixQJiOYumjm8PtoBulreAt67f49Czs3
	UsNSphLFaRMW2ImCfmFGJozFyOXb4+LZf3ZJTuEjPQeo6SlZotweXT4QrtnIn3v8
	JVWLoSb+/ZON3Tge3pZWJJs04IMIYhLDRXivaZ00nZCU7R1HbhG985vWn7+XXUIR
	K+Rbf1pwK9bXLl3RrPh04A==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 497fxradp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Sep 2025 14:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1758318029; bh=91f6Tq1ikVk0XNlEq/yld4KeYGnQbHTOqo7NoLtH9Qw=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=jcucREp0TbgvxS6CDpEf+LTT8rfDYC8YfB7APy2hfZrbzhgpyjOvdLDiOI7lIg8v6
	 vIFYJyuSpa8WvOCG55QUPxq+EX3GgAKzUKUcI0ThsDUUscakShzLVnbHfJ69jChv28
	 lF/tme6nx9G+jjKcf5PZHFrJH784wLhp7S01JrI7T74kE2Y+El3/02CWrXMLKAToAI
	 hyc5wv7zsz4bAllSkPZuhL/g0FAnIcy6BiyDXmRvuPVf1g6s8Um7FhSuld7ZGxNy5a
	 CmYlQ+lK1WP8HWDRXngfx0EFo/TV87ZirygikKSBnYF1ULgj332laUccvl1UDfjHen
	 yrTe7dLweFftA==
Received: from mailhost.synopsys.com (badc-mailhost4.synopsys.com [10.192.0.82])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E2B354048F;
	Fri, 19 Sep 2025 21:40:26 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com [10.202.1.137])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Entrust Certification Authority - L1K" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id C428EA01D9;
	Fri, 19 Sep 2025 21:40:24 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=kg4nPD5x;
	dkim-atps=neutral
Received: from DM2PR0701CU001.outbound.protection.outlook.com (mail-dm2pr0701cu00100.outbound.protection.outlook.com [40.93.13.64])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 8A57340149;
	Fri, 19 Sep 2025 21:40:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6lZdW6A71wOx6B5R+ijNttmhUeqpCxQBIdjFp6Lpavk2/O+nd1wBEhkjfTef6ad8KD/sdgmi6DX5W25+V1EUGCqb9jeBkX5oxEeCzsBtz3zj8gQP6eMKHGxMWeY/Zu0jzDv6nbFaohVes0GEIMWagy0xNHT9Ce6FystDTHaJto7YAqVFK+X8t4ZNDsiHLbuCj8zAPHJaOoK0pE2oc2HC7TO/GblKEYnMfZqBNGWWE9X3ASoWUVUu0i/Y4TMLB7nxVbMsWlr8wJ3ceD7QYyDFel7HTEVmnr3QxsOTG61B6zfQLdOEsZfEiSH8l3awhQ9pJgUszmvhW0wTKVN5S3zCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91f6Tq1ikVk0XNlEq/yld4KeYGnQbHTOqo7NoLtH9Qw=;
 b=fb08LbCiadwy0Z4TSoT4qU485ceTtuLIogC/DS2M2sZN9lD9wc7UHNNesEx2Hud2fLvKRm/CTDhWckwwF119Eafqwy136wUZSBfj5Cw/BtFe8IR5gdoGjRa0v1ACmE0rt0lswptNP2Fzoqj4MxlewXGMilcjkNyemSMsDW1fR4+erHfpOR7EVqg9VJEcOHfuB2HB1JK63t3nz+SvCXG+/Wm4qD0cWunTEMXJ9xqjG+IVXGjvvK8FEzqZz+Kjo38eI/EJAgAtqcf2pAPj+wXuAr3XEYK193p4LNctIhXLD2v1utMhtwy1bzYcziJ8Kg9AalEjwGHt7dZoBG5gDW5BRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91f6Tq1ikVk0XNlEq/yld4KeYGnQbHTOqo7NoLtH9Qw=;
 b=kg4nPD5xTHf+hrHeaTwgqhnqIq4VsQgrc2roPqvpbwSS1wf2Nq+mAsgTpgfPIfg8i3j5O4oiGe199zyT6G3TXsBWhe2tj6PY4WJwF7hAT9oHOzUB7BAlvIIMVON4dwwiEgYLv7HVa9ajnozJkSok65GyI5TU/WHep/VbyU/gxt8=
Received: from LV2PR12MB5990.namprd12.prod.outlook.com (2603:10b6:408:170::16)
 by MW5PR12MB5684.namprd12.prod.outlook.com (2603:10b6:303:1a1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 21:40:20 +0000
Received: from LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8]) by LV2PR12MB5990.namprd12.prod.outlook.com
 ([fe80::3d09:f15f:d888:33a8%3]) with mapi id 15.20.9094.021; Fri, 19 Sep 2025
 21:40:20 +0000
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
Subject: Re: [PATCH v2 03/22] usb: dwc3: glue: Allow more fine grained control
 over mode switches
Thread-Topic: [PATCH v2 03/22] usb: dwc3: glue: Allow more fine grained
 control over mode switches
Thread-Index: AQHcH0UIOVAW2qnvKUuy0q9Kv04FeLSbHWuA
Date: Fri, 19 Sep 2025 21:40:20 +0000
Message-ID: <20250919214013.gtbaknjrgd375hm6@synopsys.com>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-3-52c348623ef6@kernel.org>
In-Reply-To: <20250906-atcphy-6-17-v2-3-52c348623ef6@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR12MB5990:EE_|MW5PR12MB5684:EE_
x-ms-office365-filtering-correlation-id: 139f727d-83a4-4c3f-3f98-08ddf7c521b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TE1QdE8wU1hRYjJQQ0hXVWNtM3pBY1ZMa1BqNnkzWDdld2dDYmlSYi9pM1k3?=
 =?utf-8?B?TzdTRTJubVBnZjZUZzJORFlPaXR3YVU2aXNIY2J3ZXJOMzdrNENrTFZiUjRk?=
 =?utf-8?B?UlYxOHkwbWdOdDNNb0t4YXlUaldUR25teEpKS1NOODZFcUQ0SEVDenNQcE90?=
 =?utf-8?B?N3l4ODNBRTF2em9pTjh5UTVlcDRkcjkzVk0wZ0FvRG9ZTFNuMTU3cEJTYmwv?=
 =?utf-8?B?UTBLbzZwdmI4S205UTFTcURIcENZZnV6SHJZRVZTK0UrOGl6L1Q0VmtpYS8r?=
 =?utf-8?B?SFRSdFdOZHcxQW96YlNzZmdJRk9rcThiNS80S1BUeU9EcVFGNWx2a2tMbHha?=
 =?utf-8?B?aTlTYW9RT1AvczBscm5mMEtrdURSaHY0bUNLRFAveGQ0STA4RFpzdGdJWDRn?=
 =?utf-8?B?RXZmSzhDUmVDMmVsREFkVEZCYmQ1K0JCVjNVYkt0djBaYXhXQ1NzL3BhRXFX?=
 =?utf-8?B?V2FyUm42M29nUmRKcEZRVnlpeTN1eC9RK2w4QUFnbTJ1cnFOb0pmQnlJejdG?=
 =?utf-8?B?aUxidVZrWkd3VUVHek8rL1MzNElxbmZoK3ZIamdCL1U3Y0F5amZYS1hlMVE1?=
 =?utf-8?B?OHNuaW5uOXBsbDY1R2prd2tIcUhNM0lwNEY2b3JMalp5MVppU0FQd1A3WGxa?=
 =?utf-8?B?eFU4UFdOSE5QY2JQdEFBR0oxVEowSkt4UnFycm1FRnpOREpaendjZW9lQUx4?=
 =?utf-8?B?c0p2bjlwZTlKaW83QUt6VGcxL3lLMFdmdFZmV1NHYkxrditLSDVibEI2OStz?=
 =?utf-8?B?ZGRJaU1hZ01UamtHWUZ0UHdlVTVxVUtIMVRaanhPVWhsMHhoWitFd2RJdVN4?=
 =?utf-8?B?ZExzWHVKeklVRDY1ZU10K1VEQWk4dnZFTmFUeEN3aGdNczVpMC9rbG13VURG?=
 =?utf-8?B?bXJGdVdQUWNQLzE4dDdiK2l0dDUyZXNDZXhxYW5OUHZpcFRLNUlBa0RnUzRw?=
 =?utf-8?B?WjNwanFIYmR2c0czckdzdmpBWStIMkhXeGluT0EwcllNU2ZBR0ExVVBnVmxv?=
 =?utf-8?B?eGpCZGlLVE1kVWU4MDlIK2l4bnVseTRpbEJHU2k3WFpNdGcrM01MbUJNRm1t?=
 =?utf-8?B?d3JmcHRTblpPbWtOcFFNVzJpSjdLRlUzV1NwUWtjM1ozQUNuQitFS01Xa3Qz?=
 =?utf-8?B?TFVnTGV6VGVWbklESCthMXU0SGRjWTdPSDlGRlJ4S24xL0pIaTZrM3M1b1ZL?=
 =?utf-8?B?Qms4RStoaXRGZzNSZWlidUc5ZHZybzA2WVdlSktaS1JteitDS09SSU1XS1B6?=
 =?utf-8?B?K2VET0k4VXpNdTk5a042UlB6akZCYVdZejNEWjZ2ZjhjL1hhVm92N3BuKzJV?=
 =?utf-8?B?dU5uRVNSY2VibE0xYWtSVGVJL1BXZlpwVk9JRXE5eDQwWjJ6SWJWaWRod0Vi?=
 =?utf-8?B?NnZXZGRIQVRaOWI5L1huMUpKTmUvR2JoU21uSGg2S2g5QUpTM2dkbllDVUFk?=
 =?utf-8?B?T0pGTDZoeUlldEZGcUFjMXZ4Q2JKbFdTS0FWamloSVJOVEJDKzNUMEpjVUEv?=
 =?utf-8?B?QVFCNGNMTlJ5cXBmWGRrV1dCRExMVEZtOUpjZWlmTE9peWVKOUQzbDFodGN3?=
 =?utf-8?B?Wk15bWN1RVJhcHUxZlFuc3ZrZWFKT1pUZktKTVJmQ1VXNlhmeWVqY3BnQ21w?=
 =?utf-8?B?QkJMTFNWaDlSVHgxcFF2dVpCTHlFaHZQeTR0a2dNVjNyeVRtbkNWYS9qWE82?=
 =?utf-8?B?a3Q1R2ZxSkIzT3BGVmd5c045MGloUGhqWUIxQklXOTEyZTk1M3hRdmZrZzRN?=
 =?utf-8?B?dXluWTlJQnFvSnppR3FQaTdXTGIydW1LbzhpN2pOVXVOMVFCSXY3aUpFYzZM?=
 =?utf-8?B?ZEZvclcrYzU4NDNEbU5PM05ESDJiT3owcmlYb1NuN1JqUTV5dHRaYzZibGRs?=
 =?utf-8?B?T3ZpOERhdFNwZ3hMK3U2aXJETkwrQ2w2TTNsWmRYeFlJOWVHRW9vRkszbk9m?=
 =?utf-8?B?NzFaK3JXQTZtQ1Rpc1JkS3lwV0lsQ2wvb3FacTlZaWFLVjZhdWdEb0JGVTcy?=
 =?utf-8?B?UmJkNThmZXF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUtvOVdVOXpBMWZ3WGJGQmtndVpST2JIU1lGYzZIRk1DcUthUjlZT2dySGMr?=
 =?utf-8?B?YUFSN2N5WUM5R3NwSU9lVGFOTFhLOVZEcUFHVFVvOWlTbGp4dWJJb09qTDhO?=
 =?utf-8?B?WTMrRGpZREVXNjJCWkJnV2tOOWNOWmtxTHBPYnJrejZTM2NlQnhkb29abGFz?=
 =?utf-8?B?VjRzcDA1dTREQjA3U2RkVXQ4ZzJkVkJaQjlpZys4R3lxVVp0YjJXR3pCVnJp?=
 =?utf-8?B?SnZjVlBTdEFkd3NMQUN1bXRnR3A4b2F0czZ5cEVDcE44YkVJbHFjSlUxL2lD?=
 =?utf-8?B?MDdYbmtFZ0txd2YxNEE2NEw4cFNNeGVYbysrcGpaaVV3eFVIUlBJakpOR09a?=
 =?utf-8?B?VXNYY0Z0Q21LS2YrM0ZYMlNGVnhDZWFjRVlYNUZjVnU1cEgzenlkMytCbmI1?=
 =?utf-8?B?eXZGTURkL25KVm56T1JTUnFXUGgyYTdFWHBSK1RMUCt2M2JvRFZkQmp1ZW4r?=
 =?utf-8?B?WHlwSm5XUCtNVkUxeWZRVkdkSkluQlhzcDFWRUdGKzJWcWNQU1hFd0dRYjFk?=
 =?utf-8?B?STN3VHhSYWhCTHArZ01acE9ldE1XRndwTWFJaTFXWUxYb2U3UXJHeWhHYTAz?=
 =?utf-8?B?R1IvSGNQaS9mdHo4QmFsVERFTXVoSjJ6UGYxNFFyNlJQeVdYUjZwRytFbjZM?=
 =?utf-8?B?cDNYSG9MR1N0RnNoa0ZCYkpIbDkxaSt6SjlTSmpGTllQMXNBMHNQemsvMDhL?=
 =?utf-8?B?RkN4em1nWEprNnJubDBYQlpQZFY1bEJLMHl2VklFemhKNTBhK3dwQnJSRmFN?=
 =?utf-8?B?aUtsR255WUErSHFZMk1pZG81KzVRd2pnckU3dDVTRUd0aHR1S0g2QmY5YlBB?=
 =?utf-8?B?MHBXbUtFUFVGYUR4ck4wOVkrdVZ4dVduV2lpWXRvZDlIeEpDdTArMzdLYkVv?=
 =?utf-8?B?b2ZnaDVxdHNKUnIzeFFhaGRCSmtFZk5OWHZQekgza1pLdFZmRXFZMGJtekR6?=
 =?utf-8?B?ZkM5emtBU1F4OGh6TWZRcXdEL0FWL1EyZTkwVU5XbGovcmR4Skp4eGk0UGlG?=
 =?utf-8?B?bzBrVW84L2UwSEx5NnZpeUUxQ1VVMWdNY0RFazlpV2hjZ3EwdlF0cVBXellC?=
 =?utf-8?B?VEhRMTV1RG56cFF6eGpUNVNROWlTYjdqUEZkVWg3NnBidzhQWDBhMUtuZk1z?=
 =?utf-8?B?am1vYks4OU1hcFBIUGhGNnp4R25mYithNXNqMVcwTWtrWmh5cEVaQUJmMXZi?=
 =?utf-8?B?MkJrQ2xCMGxIRk8wZlgrczYvUzM0T3pnaGdBeFNUdEJhcEtiK0JEVkVEZFhB?=
 =?utf-8?B?ZC9XRzJ0VkQ5UGw1YTA2NXdQV2ZDd0lyUmRJbDlSYmFmNTRhanhuek82elpY?=
 =?utf-8?B?S01DQjJoWFI3OS9MeW4vN1JWVjRTUDZLbHZvN1cwcER0QTBQMGVVT2NZUEhL?=
 =?utf-8?B?alFLaE0xNWJpQkFrS3pxMDcxQjV4WExrUGNNWTlxR2hHaElIYWR5RStGMS9U?=
 =?utf-8?B?QmgwVlM2cFd4dzZMTU0vbW1qTzk5MGNXY3hScEdnSUVyWFJ5Vmo5SkNqellG?=
 =?utf-8?B?dFZJazFLNVpUQ0s2RGxiejB6VEhwdmkyc1pTWWdjNjVYMTFjazk5WmtqRE1X?=
 =?utf-8?B?Sk1MeGJ0NjVqQzBvckxWaytualZjU0h1VXQxVWxNS0tIR2tHQVJQQnoyVEJX?=
 =?utf-8?B?OTk4NFlRcHZZY09sektIK1JCalFFSHo1bnN5UTBrWEN2RnJsT1RwS1NFQ2t3?=
 =?utf-8?B?UDVOVEVWYTJUM1dRSUdpdkhPSlVUVVVOMHgyR2NBYk1Ya3pUczFGQUt1aDhJ?=
 =?utf-8?B?NkxtVWRzTUJ6dHBQT3hReDhqaXlmRWZoYjJkSXJ4bkxGMW14MVlZVXMwR1Jz?=
 =?utf-8?B?anJxRit3SWZLdTBESmFxckJ3d3lzb1hCdHZyUGNhaGJzTklya3QvL080cFNm?=
 =?utf-8?B?OSthakd2eVpBT1d4L3lqRzQ2U0lmQTlhT3duVmRJdjhKTVlpbHdZZ2hWczZx?=
 =?utf-8?B?SkYwdzdLYWliR1pMcjhHZTJMRHNERWVnb05GRCtaUmVTTys5RGNBb05CVTZ5?=
 =?utf-8?B?aEpKanlaRTFkOEF6aG91VW51OCtWRFVVUHFFejk0MHpqT0VJQ2I0dzN6RmtN?=
 =?utf-8?B?bGN0OEIwZnNHTTZxbmtxQy9mc1AzMUEvMTYyeXV3SXVQKy9YUXh4dWc3YzZu?=
 =?utf-8?Q?B2QbuFc39ni4I91BD+PbZ1BBa?=
Content-ID: <9DE661A2C6327044BADBB6D6211D167E@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 23/61iqn0t0D92qUwTzkOPQ5z40LUUaffhss8Ec/0/GL4vhKIoGNyGl8vLuE9xtLjAFHf+fPgAqSGDNhH/kiD97MYcRxExjJE+scvfxolH3yWAMjrQ10IDf1mM6F5G1d9xlffHJLB4VpzDvVAmNdPqiLi3jsO5lL2BdCyW1cv6TtlVfNfeUT03FaPLPpyfTB4cjGHxlXJKOp2sTwdpntFVFe3tUbhzIT4kCGY13MIKvWC7zJEUtBaaq/rWNQoJs6yTpbPeF4L/xiVoMd7sEgZhJjEq4SzVtfNCK8QO/Z5UyCcVezkoMrmAF1sqZKxI/YdNWfBYf/JnmSqwd0cI0eku6xwWr0qt8EuzArpcXrNrFrBQJLQeReVu4vUWWyrqVDPlk5UThZ9yeWmttRzwyFWSCVk8CP9JJlF19yGxN+X1mlZ2hua1nZ/o0OcTHa937HLHvN41BD5PnfidKvUnf7vj3pWTtI3hlaYWevJYCi3mXUOT7k3ViR3k+n+d0/C7BpnOMjNN0wg7c+NRfeHXpMbGuONIaGXmlMDRNsPLI+KPtZJwdACR73ooJJKmNNit7ckyMRSjG03+nNaYBUfjvtMsbOQyYa/5Dg4Yu2sKUMP4oLGcMyBjQJVK5yBBZbEymNs70RBv+kfgB1dSbTGkB0ew==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 139f727d-83a4-4c3f-3f98-08ddf7c521b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 21:40:20.2598
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a1+foCUAny19tQL+W0Tv7eISQtKKNbyI8J0tI1AFlxrI6I0fmtZsgBEGLi5Vd0ujgCOMS04Xi6D1BjbbNay4jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5684
X-Proofpoint-ORIG-GUID: y1upiScGRUi4WB4qC5EGCbVEtsLK28kU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX0TwmcoR+r7lE
 zcTx4sw96Z1/1x/ODfrsLPu9sg0GzWoQp882R7xf+8PMatjvj3u+GP6ZqpItMN6heV4Tv8ZCkFZ
 j1Q26BV6d6YFmJ2hqJoYoZa8rMhIQU6oBKapjMXHibPzeb/F1VPQl018Golw7DMZys+NsriRpyc
 15HekFXCJs+3STe8f5FKH1hWCdnG0HGtkqJwibBs2JCjLvlki02vauDJBhc4xWNZYmX7Nu1y2ij
 TJPLxay1YKkiS0TRkJ6e1c2IAbg25fZ08RaU7X7ZsgV4kWw6goxkPiAfZmsr8tzLldSkqHqy+gc
 jWXwIqXuLYvEDm9xAKkKQbgbQrwFeQde0zZW4/+rIZeV4c2aAZAPDWTJ74X4NwK2bLInNS51lOe
 j64XmLor
X-Authority-Analysis: v=2.4 cv=dZSA3WXe c=1 sm=1 tr=0 ts=68cdcdcd cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=qPHU084jO2kA:10
 a=VwQbUJbxAAAA:8 a=ipA0ZPK-uZ5-fD56_icA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: y1upiScGRUi4WB4qC5EGCbVEtsLK28kU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_03,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 phishscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_144046_254668_C0266084 
X-CRM114-Status: UNSURE (   9.42  )
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
> We need fine grained control over mode switched on the DWC3 controller
> present on Apple Silicon. Export core, host and gadget init and exit,
> ptrcap and susphy control functions. Also introduce an additional
> parameter to probe_data that allows to skip the final initialization
> step that would bring up host or gadget mode.
> 
> Signed-off-by: Sven Peter <sven@kernel.org>
> ---
>  drivers/usb/dwc3/core.c   | 16 +++++++++++-----
>  drivers/usb/dwc3/gadget.c |  2 ++
>  drivers/usb/dwc3/glue.h   | 14 ++++++++++++++
>  drivers/usb/dwc3/host.c   |  2 ++
>  4 files changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 8002c23a5a02acb8f3e87b2662a53998a4cf4f5c..18056fac44c8732278a650ac2be8b493892c92dd 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -132,6 +132,7 @@ void dwc3_enable_susphy(struct dwc3 *dwc, bool enable)
>  		dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(i), reg);
>  	}
>  }
> +EXPORT_SYMBOL_GPL(dwc3_enable_susphy);
>  
>  void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode, bool ignore_susphy)
>  {
> @@ -157,6 +158,7 @@ void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode, bool ignore_susphy)
>  
>  	dwc->current_dr_role = mode;
>  }
> +EXPORT_SYMBOL_GPL(dwc3_set_prtcap);

I'm hesitant to export this as is. This function may change the susphy
bits and expect them to be restored later. It's not meant to be a
standalone use. At least, we should document how it should be used along
with the other newly added interfaces.

>  
>  static void __dwc3_set_mode(struct work_struct *work)
>  {
> @@ -974,7 +976,7 @@ static void dwc3_clk_disable(struct dwc3 *dwc)
>  	clk_disable_unprepare(dwc->bus_clk);
>  }
>  
> -static void dwc3_core_exit(struct dwc3 *dwc)
> +void dwc3_core_exit(struct dwc3 *dwc)
>  {
>  	dwc3_event_buffers_cleanup(dwc);
>  	dwc3_phy_power_off(dwc);
> @@ -982,6 +984,7 @@ static void dwc3_core_exit(struct dwc3 *dwc)
>  	dwc3_clk_disable(dwc);
>  	reset_control_assert(dwc->reset);
>  }
> +EXPORT_SYMBOL_GPL(dwc3_core_exit);
>  
>  static bool dwc3_core_is_valid(struct dwc3 *dwc)
>  {
> @@ -1327,7 +1330,7 @@ static void dwc3_config_threshold(struct dwc3 *dwc)
>   *
>   * Returns 0 on success otherwise negative errno.
>   */
> -static int dwc3_core_init(struct dwc3 *dwc)
> +int dwc3_core_init(struct dwc3 *dwc)
>  {
>  	unsigned int		hw_mode;
>  	u32			reg;
> @@ -1527,6 +1530,7 @@ static int dwc3_core_init(struct dwc3 *dwc)
>  
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(dwc3_core_init);
>  
>  static int dwc3_core_get_phy(struct dwc3 *dwc)
>  {
> @@ -2298,9 +2302,11 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
>  	dwc3_check_params(dwc);
>  	dwc3_debugfs_init(dwc);
>  
> -	ret = dwc3_core_init_mode(dwc);
> -	if (ret)
> -		goto err_exit_debugfs;
> +	if (!data->skip_core_init_mode) {
> +		ret = dwc3_core_init_mode(dwc);
> +		if (ret)
> +			goto err_exit_debugfs;
> +	}
>  
>  	pm_runtime_put(dev);
>  
> diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
> index 25db36c63951bf5654f4bf5a98d7073a028364cd..7b92eb8c4ccf118b81f27afaf3f31bf56e1b6f74 100644
> --- a/drivers/usb/dwc3/gadget.c
> +++ b/drivers/usb/dwc3/gadget.c
> @@ -4794,6 +4794,7 @@ int dwc3_gadget_init(struct dwc3 *dwc)
>  err0:
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(dwc3_gadget_init);
>  
>  /* -------------------------------------------------------------------------- */
>  
> @@ -4812,6 +4813,7 @@ void dwc3_gadget_exit(struct dwc3 *dwc)
>  	dma_free_coherent(dwc->sysdev, sizeof(*dwc->ep0_trb) * 2,
>  			  dwc->ep0_trb, dwc->ep0_trb_addr);
>  }
> +EXPORT_SYMBOL_GPL(dwc3_gadget_exit);
>  
>  int dwc3_gadget_suspend(struct dwc3 *dwc)
>  {
> diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
> index 2efd00e763be4fc51911f32d43054059e61fb43a..633268c76fe4c7fdc312c9705dfa7cf7ccf3544c 100644
> --- a/drivers/usb/dwc3/glue.h
> +++ b/drivers/usb/dwc3/glue.h
> @@ -15,16 +15,30 @@
>   * @res: resource for the DWC3 core mmio region
>   * @ignore_clocks_and_resets: clocks and resets defined for the device should
>   *		be ignored by the DWC3 core, as they are managed by the glue
> + * @skip_core_init_mode: skip the finial initialization of the target mode, as

finial -> final?

> + *		it must be managed by the glue
>   */
>  struct dwc3_probe_data {
>  	struct dwc3 *dwc;
>  	struct resource *res;
>  	bool ignore_clocks_and_resets;
> +	bool skip_core_init_mode;
>  };
>  
>  int dwc3_core_probe(const struct dwc3_probe_data *data);
>  void dwc3_core_remove(struct dwc3 *dwc);
>  
> +int dwc3_core_init(struct dwc3 *dwc);
> +void dwc3_core_exit(struct dwc3 *dwc);
> +
> +int dwc3_host_init(struct dwc3 *dwc);
> +void dwc3_host_exit(struct dwc3 *dwc);
> +int dwc3_gadget_init(struct dwc3 *dwc);
> +void dwc3_gadget_exit(struct dwc3 *dwc);
> +
> +void dwc3_enable_susphy(struct dwc3 *dwc, bool enable);
> +void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode, bool ignore_susphy);
> +

We should document these interfaces. The dwc3_core_probe() does all of
the above in the proper order. It's not obvious why these are needed and
how they should be used.

Thanks,
Thinh

>  int dwc3_runtime_suspend(struct dwc3 *dwc);
>  int dwc3_runtime_resume(struct dwc3 *dwc);
>  int dwc3_runtime_idle(struct dwc3 *dwc);
> diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
> index e77fd86d09cf0a36161c20ad3c83f10e67099775..cf6512ed17a69134e6ca1b884f76c1439693fab1 100644
> --- a/drivers/usb/dwc3/host.c
> +++ b/drivers/usb/dwc3/host.c
> @@ -220,6 +220,7 @@ int dwc3_host_init(struct dwc3 *dwc)
>  	platform_device_put(xhci);
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(dwc3_host_init);
>  
>  void dwc3_host_exit(struct dwc3 *dwc)
>  {
> @@ -230,3 +231,4 @@ void dwc3_host_exit(struct dwc3 *dwc)
>  	platform_device_unregister(dwc->xhci);
>  	dwc->xhci = NULL;
>  }
> +EXPORT_SYMBOL_GPL(dwc3_host_exit);
> 
> -- 
> 2.34.1
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
