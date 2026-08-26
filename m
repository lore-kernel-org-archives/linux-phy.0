Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B71C61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 00:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6MS5gXxAMZDDSlhb09gS543BdxJg2W9P2OHt+UdBOI=; b=jBTdfOCtnFKITf
	sB+yHtZLEqK6dp5LEdmoYMUSNNU8SEunfC/GP03oCWChiWTEgJfm7KJNBbr4Ec+fml4sPPrswQ7wU
	wG3bbHYX9p/6ahU0qn9g+dy0YvXjGBQo/jBAkkX0kekqOkC2+ZUz+RwIYQSM6tmSSPyT0sg/8EJ+L
	LZggaT8Kz0hI2Blu/3DW/frdsnHUk3FJP+1tHITvEqIC93JNTq2OCrOZWB2PPBW1KxHOSFdIKLqLX
	gcAJjOAbv/KeTav4VoZkvZ33x9dmSMSgjUk+eMGs2y9l+oqoAgZ9G4ZonbWYjUbZ/K+kyQJHv0rX1
	UHg8g7jXTGn7dsGCKK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1lP-00000001jHZ-2tJP;
	Wed, 26 Aug 2026 00:45:11 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1lL-00000001jH8-1NSf;
	Wed, 26 Aug 2026 00:45:10 +0000
Received: from pps.filterd (m0098572.ppops.net [127.0.0.1])
	by mx0b-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67Q09Ulx1005087;
	Tue, 25 Aug 2026 17:44:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=gEXDhU3UlJzxOXT0NznL4mlQeg9wx4qP9DSVZ8ISPc8=; b=
	AzdCZL+nUrrjWOb9lIaWIKFohDHRMIef7EkhkZ/FKg8/otnhSIfXTu4xDwz5Htk9
	Dd+d5G7MFl/qqUpL5SglP5HZYt2dWeqe6WZouenCeptzm9F7/+mEdenviGsYjyMv
	IZXYatMfyG8mhsnsWt4+/Xr+sBGIMsVf8b16GRrC0m0F7w+fZEgKo85qMpTXlEIx
	uToaemLx4dTcMn81ov3laOV0PluvRtpZGHuE26T86Q9+Yl7ElJ8rYZ5khH84Bcm9
	9OrpImIRxplf3PeTQC8zPsgTyTve30+BE1obVsk3VQz/e1be7lI4+e4u6elEYZYv
	Y17kWNZMrMUPTaRRqt0iww==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.87.133])
	by mx0b-00230701.pphosted.com (PPS) with ESMTPS id 4g9j5m9f6e-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 25 Aug 2026 17:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1787705084; bh=gEXDhU3UlJzxOXT0NznL4mlQeg9wx4qP9DSVZ8ISPc8=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Pl/V+67A5/oeuW8kMWp5DWpu3iHotny5T9IMfDpfBDkLi3/HpPxqnrpizC52v3UKK
	 WOJED1wlSEdncCh8bql26RlQXTFEu7em53RnQPbMc5HEZ8AFxGJLDsl+aUV6y7G8wo
	 q88S7mZIBw77qa9lQZLTTn+A9+rMQRdQFtx+8KKbYxLnyDoWhq6ybwedZHZ1cLxV6s
	 EIwRgJJcW07gq2Y1xsNAsbZE0pln3yYSbK2MOb+7XWhDooU+iklBHnZlVbygQpK8h9
	 1Ot3R9IFOl1jHauu9TNaeJWPbyroRSNcE+zkZClr5p2KBE9iKgKGQ1Sb1lOBQclJeZ
	 UbLSOvPLcSTiA==
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com [10.192.0.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CC04240124;
	Wed, 26 Aug 2026 00:44:43 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id EBEE0A00B0;
	Wed, 26 Aug 2026 00:44:42 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=GT+6BBnp;
	dkim-atps=neutral
Received: from SN1PR07CU001.outbound.protection.outlook.com (mail-sn1pr07cu00100.outbound.protection.outlook.com [40.93.14.96])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id A0A1B404B0;
	Wed, 26 Aug 2026 00:44:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xx/YZ6gnT2ixqtTMnwWqJTNotvIhyStpC+wQtmpJwF4jtAOspISxzaOsrMYXCWhaBuZsrdsHuovicFY8hpqz2XaXGKWTZe4UcRsn+UKdXEZzo2UelcDk6rw1MrOck1srIrdlBq8COEpmVOHy9ikCuf7CJnJbC7xowiS/Fu4U6py1FceldeCxgBw8iOJAGHUEanNQ8Xs5yuMkGj0vjvcKdrbHq5cbtCXucRoK0pUhDMautzyRNnsxfTsnzVYR9EjW7KVczn+Td+P9Bmvj7Lk0ef7KQjLj1RYHQ2+VKeirS6NStSShYeRhhRK90AeiMI6yy24/iKrieTUxAYnLMg3huA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEXDhU3UlJzxOXT0NznL4mlQeg9wx4qP9DSVZ8ISPc8=;
 b=hrKQXZG/asbJjVW3xWrdpnovWtd9VstjBmwpfc2kRe8JU+WRsmjldcGl9iFzylkBziY6V/q02hePhggRy0EpA8HdGXf9DZqQzWAPyJiTzMUhFSeOdcxsVShlk0iLz1z1YNmwDuVyGbPhhXMhpmOUGaDD38qu/gTfxcy/vTizTm9uPnwwqTGZ7ETbbdBSqHLdJJbjGEivkbbZsEBP6pr0I19Mxrqf1LApuaPz2Rs5lQKz554qDURFbsYjLFnmZrkTxlCbWlu6VCSB5C8n4I8dyO60pkxKXnCjxh/51u2nD2TXGwURNUQlvE8gd0AVS7J99P565elYPJp0p+SLbzGNnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gEXDhU3UlJzxOXT0NznL4mlQeg9wx4qP9DSVZ8ISPc8=;
 b=GT+6BBnp51dD5ugGbWMqFUO3LBoST4M2NWMH4GJ+3yrMOGzzdVa+etHWfIRPUxRrsPZewYRxJ3EZMp89mea+d32jBWqcy5C98MA5WqIhS52RLh8G8G0A34K9Fxr3ucyYxH4V8E5TKGEwdTZiQSOEo0r4B/Acq4v+4KyDgJ9qbLA=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by DS0PR12MB6655.namprd12.prod.outlook.com (2603:10b6:8:d0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.339.12; Wed, 26 Aug
 2026 00:44:29 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0360.006; Wed, 26 Aug 2026
 00:44:24 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Marek Vasut <marex@nabladev.com>
CC: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Pankaj Dev <pankaj.dev@st.com>, Rahul Kumar <rahul.kumar05@st.com>,
        Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@dh-electronics.com" <kernel@dh-electronics.com>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH 6/8] usb: dwc3: dwc3-generic-plat: Add ST STM32MP2 DWC3
 xHCI USB controller glue
Thread-Topic: [PATCH 6/8] usb: dwc3: dwc3-generic-plat: Add ST STM32MP2 DWC3
 xHCI USB controller glue
Thread-Index: AQHdKfZcIUlCtGH+wEeMTQVzIWJxBbavlCUA
Date: Wed, 26 Aug 2026 00:44:23 +0000
Message-ID: <ao42hJmXCG9thL9J@vbox>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-7-marex@nabladev.com>
In-Reply-To: <20260812010157.1772849-7-marex@nabladev.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|DS0PR12MB6655:EE_
x-ms-office365-filtering-correlation-id: 5c7c8173-5e79-45b5-39ae-08df030b2cbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|376014|7416014|366016|1800799024|6133799003|18002099003|22082099003|38070700021|11063799006|4143699003|10067099003|56012099006;
x-microsoft-antispam-message-info: 3rn3BfjB6qdwxU/uuzWwNMMucX2+KdxaKtxz2JseLClbSrbEHAmjfmab12DuBnR/8yz41IbqOWOTNDm98DfEvRgDZ2DuYZINJu2rHKBQtmju44dbtyW7JL6W4BGBZFuocpcQdPyguSwp1mJT0xxzPoReTQY7dgqfPDZFYwqLy+2uvF1C4xolcqGeYQ2/MXSBCSqYqe0OtTNr/G0yu3x4/w2twqNZ9bl4ULCBBOYevHj2Qem73uhHDe5MKQ0Wy8Y74BeGNoHAIso1FtnBXqPXdYDC48nMnts2YbFFlpihMN/QcRM+ogTgbvgkOPdqtG3A50H2gvUWmLUv9cXEhRRoC4m7DbdRFtd5h8O62E9at7zW4ssXdsnt66DGzYScXJoKCW2hwzXiJ8tXEO9S/IBJplQgwyDGLK5+A0ErlRsOBAlRQbPQJI/dKwwE4I9rqst6OJ4mIlpZR8ou2ufGwMUab6xM1jkUuFRaT3/0z3hOQNMqZIyac5zWbTjBUSmxwJAIojkGWX3iCa7249mLTBYmYow0ungxMVqF+EdI1TK6xxun1T7tDBvpLDL+nn5TYUqgEzQeP15wlayr19VBEzJAVgWQY1FDHsZ6DW+SGWr44ARM1o47ZR6BNUGdtEYSOoYRwbzQlm1ovIT/JQOgZtH0IB+6BBOAISzeWiEOZsnrxUtvl+T9K1ya2taNfP/kODcJsSPANoFnP+QM60GCBCJsEg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(7416014)(366016)(1800799024)(6133799003)(18002099003)(22082099003)(38070700021)(11063799006)(4143699003)(10067099003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWJ4UVRtakNsYVQrZHVIMzIxOEtzNVd4MXlmQ3EyVlJ5L0pxRVhHQktkL1JV?=
 =?utf-8?B?N1ZPV2hncmROTWlxSG5rTGxlZU1VTGNSbFRkSHFGVnBOeGFVTUViV0FMdmJs?=
 =?utf-8?B?SDVYZmxhWlZLS1BrMlVGemdrOTFpdXNMK3BHSUZZa1JJbHFNZVQ3UEhZc2Ix?=
 =?utf-8?B?RVZBMDF3Nms0dS9HTE1YOEFvZDFvU1MwWDRWMUdnYjE4L3FIZTdxS1lFMGxU?=
 =?utf-8?B?dnQrc0tqa3pUQlE0akUwbWtmcUxlU091bklFeVRnN2tsRndzeXA0b1l6d1pC?=
 =?utf-8?B?a1Nqa0FEa0hBOTczTlQ2WlpmSFZrY1B6ZTFIdzY3MUpYaXIvcHk1NnBCa1Y4?=
 =?utf-8?B?bUQ0QzgvbmI4YVE4OGg1YUE0VGRSVTB0MXdhVFB1UDhDY3dYZUswbm1LRU1L?=
 =?utf-8?B?M0x1ZVlJdVBDb0dCekFTa3BZTU5IclVuMUczMlNFV2VVbEJoV1N0ZnhDVUlZ?=
 =?utf-8?B?QTgyQndvQnhBajI0RThTd3pTMlpYTll6QWlaRTlEeVZsLzljTDREa1h3NDNY?=
 =?utf-8?B?Yy9EU2RIRUpkZ0V2SU5zR2tLeTFINlNyN3dld3RPVXFscjkyS3BhY1BwcENZ?=
 =?utf-8?B?RjRhR0JBS2NWcXpKcEc0czIzTGdhRzV0VEpsdVQxSUdBcHBsMUV6OHVqVE9R?=
 =?utf-8?B?cmRnbDN5WWpraUxJR0JWNDdIVy9IcEFPL2xvaE42d05QY1NUS01JcEF2Y2VI?=
 =?utf-8?B?ckYzYTdvQ25PRXZXcnFHVjhSekR2a0JpMUczYTBiMWJ3KzF0cFlGWUNjeGx4?=
 =?utf-8?B?N05BOHdXUEhKendISG45WjBoZHZhTzI5TGNGY2hydStYY3c4ZnA1ODNHOHYw?=
 =?utf-8?B?ekc2SUtha3NRQ0diYXZ3TVU0SHp0SUgwdmFKWVRvYS93VUh1Q250WmJoTnNN?=
 =?utf-8?B?L2tYL0plVnlYYjdaRFpnMkVSazQ0OHo5R3dLb21OTlhQREQ5Z3pDTHYraGln?=
 =?utf-8?B?ZTFLYjJtZVB1YlozbUYzUkIwdWNnM2djWlRTNldFMGZmd3dqSXJidVc4ZXhi?=
 =?utf-8?B?cXFzK0pLbXB4Z0lMcmE3ZkpxcjFOREloMlF4SlVYc1U0VExReXJkaldRaHl1?=
 =?utf-8?B?QXFwVyt3T09PV3FPa3p4MElzQ1g0RFV3dzk4QmUrQXNCOE16UXNOT2xZaFdJ?=
 =?utf-8?B?R05aVGh3V2RkYlRSODNkTTZ6bnBqc0tPeWxSMUFjenpuRWgxSXdvTTh1S1hn?=
 =?utf-8?B?c3kwS0FyOXZNTVFVL05oZXRSeEt2WE9nR1VNU0lzV3JoWDRVdkE0UjFJc3Ez?=
 =?utf-8?B?OEkyNnU0WmFBdE1ib2VhZlJCTHd0NktXUWJLKzhxdndxZEllbnk2SnlqWUlI?=
 =?utf-8?B?SVlKaFhsby9BNm4vWElndDRpdWpkbnZ5K0Q5UWd4WnpmVXJoVk9EWVQ3VG1w?=
 =?utf-8?B?YWJNOXE0VStKR3o4UGFtcVU1aldEWkdxU3FGaHdqRXAvc2NZaVFNU1F0ZENR?=
 =?utf-8?B?cldDcm1MMzh6VzAvYWx6MjVkTXJLSmdGVTgxWENxcmxmTE9SVXZTQ1B4VzZX?=
 =?utf-8?B?UzNSK2JyQ1AwYjNXTWdGN25KVVhKVTExREpqTGhpUlFpZ2ttOXIwU2ZxV1E0?=
 =?utf-8?B?aXVhRzlSakpEWXhhQmFDQm5JNnVZM3JaRGg2VXEwR3lKeTZ2c0FNd1FCOEtS?=
 =?utf-8?B?S25qSlZLc3VSaDZVUVFqWHFyb3NqZzBCSjROQTlzVTFSODEvMGRuRDY2SWc5?=
 =?utf-8?B?OUMzeGZUd2VnTGY2VDRFSW95T29rR0o1M0JlaVNreWZsdWFKSWFjajJXdSto?=
 =?utf-8?B?aVB4UGsrcnFhY280UW9HVHZVMzljSFdmeEQ1YVM0Z2M3VU5hUGNwbWZHR3l5?=
 =?utf-8?B?ODZjMllXbFh5QTY3cVhNejhEbG1UYTNXeWk2NStRcEdEenJNempwZldPVjNn?=
 =?utf-8?B?QW4zdFhETzlWNHB4ZDhQVlRKcTBMU284YzJhN29nQ0FVdFI4azV5bVBMSDVr?=
 =?utf-8?B?bjN3UFMzT0hDTG1HNzFsemcwMDRmQlNMWFZvTDg5UXlrQjNjMVlVQndWd1Rk?=
 =?utf-8?B?bUJac3dlTWhXRS9lZzNNUGJDdWtmemN3Q1M1QmR6cFExZHBFcU9sMnRNV1E5?=
 =?utf-8?B?d3llc1VjdVROaHNOZG5ONHNPTXZKQ0tNelpqVHNaYkVMRlp1d29tZ3dtZjZO?=
 =?utf-8?B?eExtNTVpS0htMnA3anluRjIydEMxZ3ZYZ2VLdlU1d3NueW83UzRsdm1PbWhL?=
 =?utf-8?B?MkFUOTN4bGl4OFloc1lRRFhuR2M0cFgrbG9xN0FyaWVOODNxcFJzZTU4RHJ1?=
 =?utf-8?B?c2I1RDl3dzlvZkM0bEt2bzZrWE5WaWVObDRSdXFiWEdFd1RaRHArMmQ3R3NN?=
 =?utf-8?B?cEx1UkhDMVg2VVlBVDdEdUV6WDY3clZDYlVacHYzSE0wekNGbENUZz09?=
Content-ID: <129050A7B33840429CC1655BEFB5904B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XF8gROn7LotPXL88TTQec6bNENnh6IhIJYFGN/p3MhQKhM6MjC7wabBpYjj0vRgLPh1l13/Ft/aUI3RxPKkIBd2B50F+P9rok5J6DfDugpdK/ckFdeqpt+lHpiqJbrBINAbdyyezT8RNX0FRxtFIkKpxRTmdrJb0Plq1Xlurtuie7Kky0zVlb75rcO6oaNnHdgUKo6DekZ863sKrBFaBaC+btFZ8OiH3KCnuhcfZMx16qr9vatCRjwFCpjFXTnZ7F/VYpea0aCgFVjzqcgXa8O9trjoOerFr7wFM+G4hNKD/Q+ipE4k/wv8za8wRNuijzksKxMWcWAqSXZqO9PS29A==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: XzNaWw0F9WRT6dJk/5KEoVc0q3tek8wbcWmfwEvOJ7NPgeoYTatGnlGPpa4nWRb8hV/VCXYwUWbrydsVMmBNSdCQzbXp32ZMejsAQAOrpL5k215K9micp+UqRzD40OFXec7wi8l42Pqg8uV03WmR0FdeQb9YGQbZMSy8FUrn0+nFufFB9107W01ANu4zaSU0Qv4lIEcyxmjWgpiqJBsC3qsrl5A0IHJ1jPHTYfIC8tQfPJ/Lvs2NBSVdyDnscK707W5rYtRURDO3rtmVTK6E3s5XVIBHjAYn87JcqUwdmS48MLl38UgP2s7h1vCXLl0j/3IzP7EfyFI/H/jZohDavyn3R7oU0wSXCYDfBE67qJKu3bT7HMPW1kHSZuCeDDJ8ZUk26OmeBSH3w6HNHkmjMdpunmW5oSJyTloKwP22BFdtlxZ0QddaJjYspZE8Xz1JEQgyEKSPSDsV8qmHhAxN82iRAM23FVK729Xg9gnGdZaLpHI7r1Dcy1hItvRRJ3/LttGpm6iT4FubEm8tfSY6/pkUfK0TN4pAhNLPr0pQMbdhYGSqntrF0mUumHpEReXjM1eiBcYjVKY/uGUr7+nLKQVdB6PJiTHicGQAGGmqxLsD981Z9gfJVLjdHqb6Bsw8/p9G6OSblqOQaMfxi/54cw==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7c8173-5e79-45b5-39ae-08df030b2cbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2026 00:44:23.9919
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emWqxraEw6PN5U38yDeRChM6LsKbP9kLcwlU0My/Cr21inp3E0XzIejj+tXuCaDFVQmQqshh2AGKdm1h8F2T3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6655
X-Proofpoint-ORIG-GUID: WOq2ebDl5Zl5C5RUHGmaxATfZlaloxiw
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDAwNCBTYWx0ZWRfX4CiR6hOrXX+Z
 21ohS65mmSv2z3F0zx8dQNEhdfVAhR3NgAVhhJNiwJzdAYHPNDxKyziFhwFA0P5BbSerhJQQSa8
 o1vQwOIp2mTq8Tc3nHDkZgUP7vJJ2pk=
X-Proofpoint-GUID: WOq2ebDl5Zl5C5RUHGmaxATfZlaloxiw
X-Authority-Analysis: v=2.4 cv=BpetB4X5 c=1 sm=1 tr=0 ts=6a8e36fd cx=c_pps
 a=t4gDRyhI9k+KZ5gXRQysFQ==:117 a=t4gDRyhI9k+KZ5gXRQysFQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=jSPayVjLy6xbsuKauFBc:22
 a=p-LfKV-GAAAA:8 a=8b9GpE9nAAAA:8 a=VwQbUJbxAAAA:8 a=ag1SF4gXAAAA:8
 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=jIQo8A4GAAAA:8 a=zk4-lHRcAAAA:8
 a=JfrnYn6hAAAA:8 a=phlkwaE_AAAA:8 a=t83fPVWtahcSqHpI6RgA:9 a=QEXdDO2ut3YA:10
 a=97BuGM4RKn6GwmfqMd6i:22 a=T3LWEMljR5ZiDmsYVIUa:22 a=Yupwre4RP9_Eg_Bd0iYG:22
 a=cvBusfyB2V15izCimMoJ:22 a=7cv85riZL9-k45RWW8P6:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=uKTQOUHymn4LaG7oTSIC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDAwNCBTYWx0ZWRfX4i8oEyVQ3sZu
 hq7tIguisRI+p2st059aqDvveqxz95WYsiDaLRLFpE/SqEpdHM4HTRpSwlGgxyIsa24FQvM40J+
 D5HJJq0jhWlZtexeh7ZsYyZdE0jAHXzAipimzYgTEOaBj7otItWPy8em35qn1AEQUtSc6jNneTH
 4ef8eERSZ22lF1DnXQ7LpNJjB+1kt67oWKLVRJjQSfydHANWwApl+shC8E2+xbIndOF/eaHqcqf
 U64YTqT2CW8qcvZvbMI9DCB1kqPjDBvZ0ku427AOQrlJlSe4PezxVupOy3rMRmgBMH9RtnswZUs
 Bbvbc0X5eoREv3xFMWgyWcrj0JcO5VNYubF/AGokJkuQsQFNWoH70Ef+ajttcUSNUgpM13lgsu9
 PUJXPDJwgHf4jytnr8/SBsKBaD4gboCYDnHk6Np/IjXwoSRZT53494+8Z3QwjByFZYeAXSfPaz0
 GW2mVmznft/eGjLNGWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_07,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 clxscore=1011 priorityscore=1501
 phishscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0
 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2608260004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_174507_531987_631AD478 
X-CRM114-Status: UNSURE (   9.41  )
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

On Wed, Aug 12, 2026, Marek Vasut wrote:
> The ST STM32MP2 SoC contains one instance of DWC3 USB controller with
> glue logic wrapper around it controlled by syscon. Extend the generic
> DWC3 platform driver with ST STM32MP2 glue logic specifics.
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christian Bruel <christian.bruel@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Pankaj Dev <pankaj.dev@st.com>
> Cc: Rahul Kumar <rahul.kumar05@st.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Rosen Penev <rosenp@gmail.com>
> Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-usb@vger.kernel.org
> ---
>  drivers/usb/dwc3/dwc3-generic-plat.c | 44 ++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-generic-plat.c b/drivers/usb/dwc3/dwc3-generic-plat.c
> index ca69ac0eb07ce..0946ed61647b6 100644
> --- a/drivers/usb/dwc3/dwc3-generic-plat.c
> +++ b/drivers/usb/dwc3/dwc3-generic-plat.c
> @@ -22,6 +22,12 @@
>  #define EIC7700_HSP_AXI_LP_XM_CSYSREQ	BIT(0)
>  #define EIC7700_HSP_AXI_LP_XS_CSYSREQ	BIT(16)
>  
> +#define STM32MP2_USB3DRCR_HOST_PORT_POWER_CONTROL_PRESENT	BIT(0)
> +#define STM32MP2_USB3DRCR_OVRCUR_POLARITY			BIT(1)
> +#define STM32MP2_USB3DRCR_VBUSEN_POLARITY			BIT(2)
> +#define STM32MP2_USB3DRCR_USB2ONLYH				BIT(3)
> +#define STM32MP2_USB3DRCR_USB2ONLYD				BIT(4)
> +
>  struct dwc3_generic {
>  	struct device		*dev;
>  	struct dwc3		dwc;
> @@ -85,6 +91,38 @@ static int dwc3_spacemit_k1_init(struct dwc3_generic *dwc3g)
>  	return 0;
>  }
>  
> +static int dwc3_stm32mp25_init(struct dwc3_generic *dwc3g)
> +{
> +	struct device *dev = dwc3g->dev;
> +	bool ovrcur_polarity_low = device_property_read_bool(dev, "st,ovrcur-active-low");
> +	bool prt_pwr_ctrl = device_property_read_bool(dev, "st,enable-port-power-control");
> +	bool usb2only_conf = device_property_match_string(dev, "phy-names", "usb3-phy") < 0;
> +	bool vbusen_polarity_low = device_property_read_bool(dev, "st,vbusen-active-low");
> +	struct regmap *regmap;
> +	u32 drcr;
> +
> +	regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node, "st,syscfg", 1, &drcr);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap), "No st,syscfg phandle specified\n");
> +
> +	return regmap_update_bits(regmap, drcr,
> +				  STM32MP2_USB3DRCR_HOST_PORT_POWER_CONTROL_PRESENT |
> +				  STM32MP2_USB3DRCR_OVRCUR_POLARITY |
> +				  STM32MP2_USB3DRCR_VBUSEN_POLARITY |
> +				  STM32MP2_USB3DRCR_USB2ONLYD |
> +				  STM32MP2_USB3DRCR_USB2ONLYH,
> +				  FIELD_PREP(STM32MP2_USB3DRCR_HOST_PORT_POWER_CONTROL_PRESENT,
> +					     prt_pwr_ctrl) |
> +				  FIELD_PREP(STM32MP2_USB3DRCR_OVRCUR_POLARITY,
> +					     ovrcur_polarity_low) |
> +				  FIELD_PREP(STM32MP2_USB3DRCR_VBUSEN_POLARITY,
> +					     vbusen_polarity_low) |
> +				  FIELD_PREP(STM32MP2_USB3DRCR_USB2ONLYD,
> +					     !!usb2only_conf) |
> +				  FIELD_PREP(STM32MP2_USB3DRCR_USB2ONLYH,
> +					     !!usb2only_conf));
> +}
> +
>  static int dwc3_generic_probe(struct platform_device *pdev)
>  {
>  	const struct dwc3_generic_config *plat_config;
> @@ -231,12 +269,18 @@ static const struct dwc3_generic_config eic7700_dwc3 =  {
>  	.properties = DWC3_DEFAULT_PROPERTIES,
>  };
>  
> +static const struct dwc3_generic_config stm32mp25_dwc3 =  {
> +	.init = dwc3_stm32mp25_init,
> +	.properties = DWC3_DEFAULT_PROPERTIES,
> +};
> +
>  static const struct of_device_id dwc3_generic_of_match[] = {
>  	{ .compatible = "spacemit,k1-dwc3", &spacemit_k1_dwc3},
>  	{ .compatible = "spacemit,k3-dwc3", },
>  	{ .compatible = "fsl,ls1028a-dwc3", &fsl_ls1028_dwc3},
>  	{ .compatible = "eswin,eic7700-dwc3", &eic7700_dwc3},
>  	{ .compatible = "starfive,jhb100-dwc3", },
> +	{ .compatible = "st,stm32mp25-dwc3", &stm32mp25_dwc3 },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, dwc3_generic_of_match);
> -- 
> 2.53.0
> 

Did you compile test each patch? This one fails to include bitfield.h
for FIELD_PREP().

BR,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
