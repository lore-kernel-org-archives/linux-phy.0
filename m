Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97966C55ABA
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 22:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akN0rwDEmf5B5pZV0H78uL7RsDAHw0O3XDX2K3fYxuA=; b=XaXKiqUD+nBKdz
	cbZruWnEFh3GxJCZcL6S+qrBCKst9GeLPpRSeA5kKLAZYSHvDss0aZUZYRRL18PL0BZ5AJ+F4XMRs
	smasJ/U1UeCkyFJBVcsEz/Q/vbqoHIzCgHi2tN+xycEXjSGJWPt4Sv8+HkJBhGQssWx43kznpPXz1
	xsgNk/5nzcLf0737HR3hjvotrhUXWjM6l0sKFWtqEMn6ZZnLPs21ujWRNBhTWYtsGUSej2FhomeU1
	0VDWiiNqatGQjL1zAXTTOKZ+pZYS72hBBcwI3zqqle5Mg41b3KQ87c7cG6AGKH9OU05DnFT3I9omc
	fo2jDDUfvKS6T8mNjqzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrNCU-00000002qkL-0EdP;
	Tue, 04 Aug 2026 22:01:30 +0000
Received: from mx0b-00230701.pphosted.com ([148.163.158.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrNCR-00000002qjo-2lxH
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 22:01:29 +0000
Received: from pps.filterd (m0297265.ppops.net [127.0.0.1])
	by mx0a-00230701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 674JpXIe1702306;
	Tue, 4 Aug 2026 15:01:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com; h=
	cc:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	pfptdkimsnps; bh=OouCDYvCmLps4EIbH7BX7C9xO0CVBvV665EwKUqjx7k=; b=
	jEc+JGKNBVhswm3Z6/WG92oJOtXxfKtQl18J+aZqZaoUPBVU02KnEu4QZJxxl8ZZ
	WQxS1dYQB0kOcga5W9LKXKkKdfgktkWMQWSfwUUr0BXuu91L4xugR4Rcw4HXaRSr
	Wln6KV5lh3Sb3WDHX+F7FeFLZLJSx0cDif2fTDeD35D1qf7k+ldOI7ArKJcTPW+B
	dRpMaC95OMzRkznwyUCHy5vthg5ZwGLgGVnaQsMcwrhd4dIZrX5PCeDP/6WoJpMT
	L8qySYMw38VG74oWKIMY49LdwI55oXFzmRsa6Kirl7BEA8/VjPbUk5aoE1VDzduJ
	hhV6ympO6FRiomD8wVOqhQ==
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com [149.117.73.133])
	by mx0a-00230701.pphosted.com (PPS) with ESMTPS id 4fug0k554h-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 04 Aug 2026 15:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
	t=1785880880; bh=OouCDYvCmLps4EIbH7BX7C9xO0CVBvV665EwKUqjx7k=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=kcAOs3sZuivU75DpxpNddtwgXVl2+04v2xgQcobR1loZHtmnC6wpZext33pLkhBAr
	 Kn+NL8D2hhlMqNaSenCSV7uPxSjk7geRno88pR3g721qd5JbqPySfZNTHQmKxd5N7j
	 knsB6BKw+PwozbB4mJrdqm0J+foSjRLYelFUuwhzS91AkzczjRE6aI9CFVke9L+3x1
	 FosXVlBvAmjrqng99F+5VdbPwqmhZQxOAkmT/bgcu7icFJobkW0xFLNDLPp0441Wli
	 +LtGyq/qvWnFz+UZdF4px1ydFqzfv6mzlRzDO3iOcqX1jO00zdWWy2vNFnSjPkwGRT
	 B/hir8PZzIS4Q==
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com [10.205.2.134])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6568040515;
	Tue,  4 Aug 2026 22:01:18 +0000 (UTC)
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com [10.202.1.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits)
	 client-signature RSA-PSS (2048 bits))
	(Client CN "o365relay-in.synopsys.com", Issuer "Sectigo Public Server Authentication CA OV R36" (not verified))
	by mailhost.synopsys.com (Postfix) with ESMTPS id E3676A0941;
	Tue,  4 Aug 2026 22:01:17 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com; dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; spf=pass smtp.mailfrom=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
	dkim=pass (1024-bit key; unprotected) header.d=synopsys.com header.i=@synopsys.com header.a=rsa-sha256 header.s=selector1 header.b=t67DtgMX;
	dkim-atps=neutral
Received: from CH4PR07CU001.outbound.protection.outlook.com (mail-ch4pr07cu00106.outbound.protection.outlook.com [40.93.20.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256
	 client-signature RSA-PSS (2048 bits) client-digest SHA256)
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert SHA2 Secure Server CA" (not verified))
	by o365relay-in.synopsys.com (Postfix) with ESMTPS id 03D63402D6;
	Tue,  4 Aug 2026 22:01:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CXGjEhdadUtWLkdXQLtqPE6zExwjmHNpAr8nADQSAhp56Gvcpy6d3dbpdYT7yn0M+ogSVSrSEkZm/x3DQPfuAik4xt7jQdarlKi+tWVs+sDQiQGDcQvqmQ2veTP8NFlzlBBDwSmFk0hewZCwWdeXmCbMDdFn86IiRz2fEkQtRqXfQaeA6bmgnTXZyJVugRNKFHTvrnqK0Ufww2ayw7Uq0P9G3GqqGO2HvOBIoK0Iw2vjjxPIiq9ULkkhV/fo5BJv6b8Xpi7y2HrcFeK9jsh3pWbFsC9UldyxAf0//k8sJDcTQ/IAoGZmf7qWbHzee+VvyQ1+bsodIpA0dmYq3TTYwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OouCDYvCmLps4EIbH7BX7C9xO0CVBvV665EwKUqjx7k=;
 b=GPHlNOUc/rX5C2PF8aEWH//C8Lep/hCQ0QybWWVillyaToXnXbThfnO2dEoK6yDrX2ItmuNsTTxGr4tbN22nAsilvEBo+iGhSMRXvyqH04RMMgORxM1oekf3xianF7q25vcfDlbz7QCYB+J2ZhNss5pYkNyiH+4TSbyZPSTXzrlbdR+/AUfd/MTqb/sfQc/gBDop2C6sSjHJ4y7Ae/6uWFW7pTJLAeX+YB7CIwdwirbaZe7TQ1lNiFb2d00TNPY1bMXBqdqRFq1JjBHEaKj3a5DmnOiO7bDR6iOZPjVX+1J+QTYaBKuIjBlTFivYuv/COGpAuFUBfMPKn+AjeeDV6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OouCDYvCmLps4EIbH7BX7C9xO0CVBvV665EwKUqjx7k=;
 b=t67DtgMXQvlipbnvnLhbQO+82TlDlz9bDKc12hwrgSeBctg3hBtbzLZ8bqdOPT97OLKFreRtjdF6fRGcvIQZjkvXVt3k006Ejp8E0X4CB8L1KT9gCFacE3656k9qTy+40jtEr/0O9tlnzf4c/Oi8y97KLe1PF860Cu7u+0GcxK4=
Received: from PH0PR12MB7486.namprd12.prod.outlook.com (2603:10b6:510:1e9::6)
 by IA1PR12MB9465.namprd12.prod.outlook.com (2603:10b6:208:593::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.15; Tue, 4 Aug
 2026 22:01:10 +0000
Received: from PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109]) by PH0PR12MB7486.namprd12.prod.outlook.com
 ([fe80::7df9:b25e:9216:f109%6]) with mapi id 15.21.0292.013; Tue, 4 Aug 2026
 22:01:08 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v5 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
Thread-Topic: [PATCH v5 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
Thread-Index: AQHdGo+XPlmCwpSNBEGdSSXOvEuv3baOhGGA
Date: Tue, 4 Aug 2026 22:01:08 +0000
Message-ID: <anJgBMFlzHGaVNMm@vbox>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-5-f32ea6c1a318@oss.qualcomm.com>
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-5-f32ea6c1a318@oss.qualcomm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB7486:EE_|IA1PR12MB9465:EE_
x-ms-office365-filtering-correlation-id: caab05a4-e127-4832-569c-08def273e383
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|366016|1800799024|38070700021|10067099003|56012099006|4143699003|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: ucKjFbt9DVQ6nx0TVieMZqNaroWPDSS1HcbQ8amf/gOlxX4p38aNym5YUapXkM+5Gox1NLFI31HCYAwsKFmncz0ijPc1fO0Cm884XbEOm8vBrqlFBl7WGtSxpOjwrIc1BpmwJko4IPJOuAkj27YVhb5TqZe1DF0xX2x/mrINwgV3U1nofbo2euq3DqINPUPPLkAXL80pbz1RU3dX67/jBMGB4ue9nMUhB8f8w317qrIFEJmrGBGKr5qDt94Vz/v5fpJROHak3B8lsZgUQYObDKW081rhCLAWt0ozL444Hwhi3nijWb+cxTcjlp7kAopCHzVwxI88yurF0JL7jr3zwchD0mkAqCc/w8/Yx2LsiWM8wDmzh0kHY9apBxM4IHfPJ3jDiwzgy4ueB+slK29nglKMJcBGfAFRRNE2VcIxj1x/fc3LWUwXVwVBta2jd5KWgQe2XOseGsmfxT27xjo3+g49Bsg6R3FD0llbITXzF89OYuFsnqTYShA92j5eGQOfMznqFlzKE+23jMn5x0dN6ShX7zcIUCNlFJ3pgRsKFLQqik8ec45shiFLtRP779cV0QCb6DJnzQVDt3c8RdyCu0MxUn8SPm4RxSiWf5Rcbx+3nyNM5bXow65/p/TnnvYSbA2qFjytZ3s5HTwLxeGdIU7EGzXozbOHhc7UOB3LkT5sa0tTct4pLX1/MmCwXj6SusDe2VRyJv+VGZBkWaeH+aD9/TVUCRFqUGJtN29qDQk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB7486.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(366016)(1800799024)(38070700021)(10067099003)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWtZeElwS0ZWQ2lKaWhuZk04d0JEWStLazhBMm9JZG40aWc3UUJnTk9VMW96?=
 =?utf-8?B?bTFvWDIvV2pOeGNwNnFJMzgwT0FCeWtWczdNa3JrTHFoRXFSTlAyS0YwU0JV?=
 =?utf-8?B?NVY0RzA3YVpuYXBIS3UvTCt3cVhHYWkvRWhFU290aER4ZGJTUGE4Q21KdHow?=
 =?utf-8?B?aERRYzJDNFJCeEdqdG4vODZNNFoyZjVvbXdTVlZBM0VaUUkvdlljVnBzcTkx?=
 =?utf-8?B?OUR3bU1ndjdFZytzNWVLSDQ4bHluZ05nYmFtMlNaSGR6a0llSThGYzgrYTJL?=
 =?utf-8?B?MHFNeWtSNGJTQndPM1h4djRXRU9EWmRGTVJYMXhKWjl0dm1zL0dpMVY3eDF6?=
 =?utf-8?B?M1FpcUJuL0V1ZVh6TmFyNGV2a0ZLYUVmMzFzTXBReVdDUEdpK2RWSkw0NkxS?=
 =?utf-8?B?aU8vY1l4NW9DTk5scFozT2t5bTF2REpCL2J4bkNRVWZ0c3lxc29XRzhpUE5S?=
 =?utf-8?B?aUtzRGFsWVRIdGtJb2hDTURvTEZDMjA5R2VxcFNsTTk2clhHRi9NUnZ6OHFj?=
 =?utf-8?B?WU9oaEtUVjJMdnk2V1QyYXlXZit4eHMxbHBaVm5kMkxRcjgxWWo5OXZFRm5m?=
 =?utf-8?B?TzQrSE5pZWhJMkh2c2tuR1NaMkdBYUtOVjhhWmNzc0NXZFhYMjdmTEFnQ1Bp?=
 =?utf-8?B?UVkrdjdKejI3Q1NsU1BSWFVyQ2JLRjRXRjNNQm1XWjdTTGF2ZGE2VmlPanEx?=
 =?utf-8?B?R056d0JONlU1ZlRRYmhUY0RyYmI4S2Z6bS9rZWJsYVRPU3BKMWdDNFpaU3pN?=
 =?utf-8?B?WENadzRsdVJNM2gwYlFPNGdIVm1JZmNNT1RMYlRuMzk5UTRnTUZoUG04dHNE?=
 =?utf-8?B?M2VGenRtK3hVMDI2RlNhaE1RWlFnUGZIWVRvZXhwT2hmVE1hbGNHT3dDRnZZ?=
 =?utf-8?B?NXVkWGNhejMwSVY5Z0dYR1dQc251eSthdEhVb1lzdFoyV1V4eW9HbzhCUmhF?=
 =?utf-8?B?WVBoWlQ3aUNySnVOc0J0VjA5Um9xdEdMaXBGTXdMWGttMVdodGFtVkNVbTMz?=
 =?utf-8?B?Ykl2LzNFUWZCZVgrcE9Mc0g0a245RDFnZ0JnUHhQbllDWmptazBFMWtkZFFx?=
 =?utf-8?B?VnZCRXV2ek1BQk5lVDVxRDFXNS9KdTFrYVRnK2h4azNHOFRMOEgrR3kzdFB4?=
 =?utf-8?B?RkRRZzh6Y1VUNVIzLzJsUDFNbTBmdUhlSHRCbDZGMHhNQVE2aGtBbGcyQm9u?=
 =?utf-8?B?eWVwVE9La0lsaFFTdGlyV3NTb24wY0Q2MXFvM0oyNGJKd2N4ZTB6MmRGOHhl?=
 =?utf-8?B?K0xiRmJLbnprR1VWb1R1akVpWUl0dTU3TUVGZkRKNnkwZ1lpbEdjMmF3ZDRC?=
 =?utf-8?B?dEY4Q1IxVzNscnIxMjU2WDVXZzlWVkdkZG15bUt1WkJqOUpRV1BFQ2JZVkVN?=
 =?utf-8?B?ZmNQamtVQmIrU1JmVC80UXhhd3NRMis4dTc0RGg3ZG1RTTE1SmRMSi9sTURn?=
 =?utf-8?B?dWgxeWs1Ykk5NFpGd08yZ2ZhSWhBaGl3RVRhTmVOeW45NWRSdzRtbTFZa3pz?=
 =?utf-8?B?SkxwZW1XaWxOV2IzMWZ2OVhuMjVXYnd0NmNvZ084eEJSYVVYbHZ4NXhBNUJT?=
 =?utf-8?B?d2ZhaEtVcFpaY21iNHhlSVVPZWRiNmtQWE54M2kyNnNjbHpVQUszWFNneFJp?=
 =?utf-8?B?aFBMbURDZWF0MlBLL2dIdWJnL2ZGWDRHSFJTRGdIZGJLQzMvdE1VMmE4MU9v?=
 =?utf-8?B?Uks3U25kdVZ4Y3FZdml6bGZYYmxKZW40RnZzUDlJUXVWeTFtZHdKSE9RZHBQ?=
 =?utf-8?B?RUw5NUpXZEJGamgyL1N5U21kWVBidDJXTFpSK0h5YXpKZHg1N2pVMjVjck1s?=
 =?utf-8?B?V1ZKdS9TWXBPRzBzZDNkY21kRU1JV29oSm5FMzlsME5pc0s3em1kajBNZWNS?=
 =?utf-8?B?cmhMNlNZZFBibFU0N1RreU13L3AyMXNZbktYazBJRmh0YXhCajdWN2FmdjNu?=
 =?utf-8?B?MVhISWx3cWNmZTV4WURWUlF6Z2RTd2thTXZXeC9vN1VMVTZVMjF4U1JYTlh1?=
 =?utf-8?B?K0tSRGpEem9SREh5REczcXhkc2NuZ2FVTGVnWi9URGMyNFYxZmpaMDdFNEhM?=
 =?utf-8?B?cStVc3pWMXhTYWdIU09WQWdvRXVGcFB3MmFGSnhKQUVTc01WaGxVNzZKd3lI?=
 =?utf-8?B?RTZzWWxqdzhsbmdSN2xmcUVpZElpTEpOU29Ea0xtdVRTWFFtWDlUVXFtNGds?=
 =?utf-8?B?dGx2cUFpQTMwb3pJZ2pJZXBScTdyUlZQcS90VE9IOHVXUjZoRjl5NnUzWUh5?=
 =?utf-8?B?YkhHNmtTc3FXK213cnlYUHVLL3NMNnljb0RBQkcyOUdSaFZmamtHOTQrb25v?=
 =?utf-8?B?cE9rZ3FWSVVFUVlnZ3ptMU5FREJDVUJSakFqY2FyeXVWcWdvQU50Zz09?=
Content-ID: <79D131B9B3CD964CA118319CF23D9488@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ipGJaIFFGVXT11NINMY92RQeuX4FRmDC/5j0SNALxpAllWegfgqQPpFdnJfzqAYXvyt1WKyS604iJetGEND5E9ehZG8aNmFQv2UjNGbIWdb/Y1IHTNleS5p3QZ+XD+EoZ7N5bnqLl7DdHq7KHhKu2u4SycsKdbfeHX18LE9gNeTnSIJYTCC8PY+FWNIJzr/xbl/2n7V7oIc3W7lOgFCcIC7j+L2STc6civZBcDjf08N5+C0/TBggvPvKzLT4cdmJGYo9JKS3il4lRGhlVslH4NP19oghXejT46tyfV20vloY075K54oHe1Jlqdd+vTmtcfOXEcIdh9iAzC663iqdeg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 1MQBtcilXz5bjc+QQCoEsQhkUe2zC7jDkdWWMzGSHwoyO7g15+D8eqYzS1mnTGQ38ntfqyD+OU3z+bhfr0YHNEyuhmwIHwgOG4DkttK8KX7u0uThKv9NQlK2vupHpbBwuyNuhasbvDsSl0qVCVhffNKA3so/sCG87oCc2V560SQJynFIFOIl11K3ZQ5mYScQgIAmeb8ThB1rlTmQFbirUigwY6GEgoHFUJZHKsnKbzMpa9jTejA1D1GLzxKK2ZfY2EyJRtseMnUcd/bfW230CIfG06fUeD1qzS/uc4csmKxbg3nKIxBtNUCVoAAMRYQIuEC979WEkIEIgGj3LRB/WEz1Gv41Hiu5g4GuL/+bXNkJrxqfW/bUWma8bxTUzwLc4ooWH9kVXQniKRcvqsAn08OyOtV9gxmCe1KHcI1OcnI3zxWyAa7IB6wD8Ai0FxRVH0RnhxrtrU2LWJ2+0PxRoAh9cQnd9v6tCvt3hYVQ3eor9KELDAK69WPpqOYuQJ0qBpR8GfQ4z6GZ1HP/oqo+Z3SwjE++XJAWlt3jvYBXJJbwxT67P8iRvc/p+H4OPYKHLTLBIObmMCOvnjX3rt2CMhNmc2/zXCWQexHQ2pPCaNhDyl/5ifUEsf9UbOVTrTf6iU4UHoXPef6Pxy5WLikX/w==
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caab05a4-e127-4832-569c-08def273e383
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2026 22:01:08.5022
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZbEfAFBJrH1PQgSNHdtv4bUO5Gh/saYi4TIA/Yp5mINN4ASoA+CP5SBmgbVQRfsbmu2eco08GGLKmJdZq8Wxjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB9465
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDE3NyBTYWx0ZWRfXzJG4pKlijEyl
 yDIogHewSyALVVEQri2qROT/YecbKD3IwyQrJPAU7gEckdPj0O4omGM/9S+mNpp+QSDbc0K6UnS
 lce1C83zL2E6TF7OlxGU1ccA224f+YE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDE3NyBTYWx0ZWRfXxzJQ94N42dXv
 L5sFzj2Vcwg1kwxBTNiLS3O0K5kGd7fvDn0ijERUDxRD8cDVoER1RzkwJOJJ9W5AwGcyQvZu0HD
 l2lNy2f1JHCqyAEwKmNiCUzLgHNtCMeYq5PwtwB2N9QvgKg9KEfgOMUj/W7iS44Z+ao5Dm5xpby
 aMITbvn/8JiZhHfYupPjX/EAvFzJKZOPflJ2CO205RyzMosNkYvs6ujBMrsIUI/xN9Gy1pRoJPy
 12Dr6DMqBZzSlXI5sqxGi7i5CbllWvQLWpgSo/m0VrHzmKLfnWMDevkTmt5HYgozYbHG3GuTEVG
 +wOGhnWZYB9TyM3jMD9563vt+RJrMXug/n6wCPbXODTjLogNpKTshjpX3lDzRDsJ8a8XpEUaBoE
 VnUc+fSuGeDTHS3/hOFvedk117THj4I5ESZztRUOaPUXBqUSJJKXAO9+7O/ARGWY2jnb/pAjzBN
 7V5pUtfm8+P3jvadENQ==
X-Authority-Analysis: v=2.4 cv=DtdmPm/+ c=1 sm=1 tr=0 ts=6a726130 cx=c_pps
 a=8EbXvwLXkpGsT4ql/pYRAw==:117 a=8EbXvwLXkpGsT4ql/pYRAw==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=qPHU084jO2kA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tU_645BZ7FZt8VqRJtHG:22 a=-4-sGo8i1FcW4KD7_GeR:22
 a=EUspDBNiAAAA:8 a=QU4UNRELPDOJWLpp1BEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: fO2NxngfWBmQF7qyRoBjqDt_6D2fQQCv
X-Proofpoint-GUID: fO2NxngfWBmQF7qyRoBjqDt_6D2fQQCv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_05,2026-08-04_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_active_cloned_notspam
 policy=outbound_active_cloned score=0 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2608040177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_150127_842399_C28BC1B9 
X-CRM114-Status: UNSURE (   9.35  )
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

On Thu, Jul 23, 2026, Krishna Kurapati wrote:
> eUSB2 targets handle wakeup interrupts differently depending on device
> speed when operating in host mode.
> 
> According to the eUSB2 specification, remote wakeup signaling in host
> mode is detected via different data-line assertions based on the
> connected device speed.
> 
> When a low-speed device is connected, the host repeater drives eD+ to
> logic '1' upon detecting a K-state on the USB lines during remote wakeup
> (eUSB2 specification, Section 5.5.14).
> 
> When a full-speed or high-speed device is connected, the host repeater
> drives eD- to logic '1' upon detecting a K-state on the USB line during
> remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).
> 
> Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
> eD- line states, query the phy type and configure the wakeup interrupts
> accordingly.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 53 +++++++++++++++++++++++++++++++++++---------
>  1 file changed, 43 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index f43f73ac36ff..4c559b97c627 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -85,6 +85,7 @@ struct dwc3_qcom {
>  	struct icc_path		*icc_path_apps;
>  
>  	enum usb_role		current_role;
> +	bool			has_eusb2_phy;
>  };
>  
>  #define to_dwc3_qcom(d) container_of((d), struct dwc3_qcom, dwc)
> @@ -272,15 +273,23 @@ static void dwc3_qcom_disable_wakeup_irq(int irq)
>  	disable_irq_nosync(irq);
>  }
>  
> -static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
> +static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom *qcom, int port_index)
>  {
> +	struct dwc3_qcom_port *port = &qcom->ports[port_index];
> +
>  	dwc3_qcom_disable_wakeup_irq(port->qusb2_phy_irq);
>  
>  	if (port->usb2_speed == USB_SPEED_LOW) {
> -		dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
> +		if (qcom->has_eusb2_phy)
> +			dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
> +		else
> +			dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
>  	} else if ((port->usb2_speed == USB_SPEED_HIGH) ||
>  			(port->usb2_speed == USB_SPEED_FULL)) {
> -		dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
> +		if (qcom->has_eusb2_phy)
> +			dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
> +		else
> +			dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
>  	} else {
>  		dwc3_qcom_disable_wakeup_irq(port->dp_hs_phy_irq);
>  		dwc3_qcom_disable_wakeup_irq(port->dm_hs_phy_irq);
> @@ -289,8 +298,10 @@ static void dwc3_qcom_disable_port_interrupts(struct dwc3_qcom_port *port)
>  	dwc3_qcom_disable_wakeup_irq(port->ss_phy_irq);
>  }
>  
> -static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom_port *port)
> +static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom *qcom, int port_index)
>  {
> +	struct dwc3_qcom_port *port = &qcom->ports[port_index];
> +
>  	dwc3_qcom_enable_wakeup_irq(port->qusb2_phy_irq, 0);
>  
>  	/*
> @@ -303,12 +314,20 @@ static void dwc3_qcom_enable_port_interrupts(struct dwc3_qcom_port *port)
>  	 */
>  
>  	if (port->usb2_speed == USB_SPEED_LOW) {
> -		dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
> -					    IRQ_TYPE_EDGE_FALLING);
> +		if (qcom->has_eusb2_phy)
> +			dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
> +						    IRQ_TYPE_EDGE_RISING);
> +		else
> +			dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
> +						    IRQ_TYPE_EDGE_FALLING);
>  	} else if ((port->usb2_speed == USB_SPEED_HIGH) ||
>  			(port->usb2_speed == USB_SPEED_FULL)) {
> -		dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
> -					    IRQ_TYPE_EDGE_FALLING);
> +		if (qcom->has_eusb2_phy)
> +			dwc3_qcom_enable_wakeup_irq(port->dm_hs_phy_irq,
> +						    IRQ_TYPE_EDGE_RISING);
> +		else
> +			dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
> +						    IRQ_TYPE_EDGE_FALLING);
>  	} else {
>  		dwc3_qcom_enable_wakeup_irq(port->dp_hs_phy_irq,
>  					    IRQ_TYPE_EDGE_RISING);
> @@ -324,7 +343,7 @@ static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
>  	int i;
>  
>  	for (i = 0; i < qcom->num_ports; i++)
> -		dwc3_qcom_disable_port_interrupts(&qcom->ports[i]);
> +		dwc3_qcom_disable_port_interrupts(qcom, i);
>  }
>  
>  static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
> @@ -332,7 +351,7 @@ static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
>  	int i;
>  
>  	for (i = 0; i < qcom->num_ports; i++)
> -		dwc3_qcom_enable_port_interrupts(&qcom->ports[i]);
> +		dwc3_qcom_enable_port_interrupts(qcom, i);
>  }
>  
>  static int dwc3_qcom_suspend(struct dwc3_qcom *qcom, bool wakeup)
> @@ -617,6 +636,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
>  	int			ret;
>  	bool			ignore_pipe_clk;
>  	bool			wakeup_source;
> +	struct phy		*phy;
>  
>  	qcom = devm_kzalloc(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
>  	if (!qcom)
> @@ -683,6 +703,19 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
>  	if (ignore_pipe_clk)
>  		dwc3_qcom_select_utmi_clk(qcom);
>  
> +	if (qcom->num_ports == 1)
> +		phy = devm_phy_get(dev, "usb2-phy");
> +	else
> +		phy = devm_phy_get(dev, "usb2-0");

Looks like you're getting the first phy? If so, can we just use
devm_of_phy_get_by_index(dev, dev->of_node, 0) instead of hard coding
the names?

Thanks,
Thinh

> +
> +	if (IS_ERR(phy)) {
> +		if (PTR_ERR(phy) != -ENODEV)
> +			return dev_err_probe(dev, PTR_ERR(phy),
> +					     "failed to get usb2 phy\n");
> +		phy = NULL;
> +	}
> +	qcom->has_eusb2_phy = phy && (phy_get_type(phy) == PHY_TYPE_EUSB2);
> +
>  	qcom->mode = usb_get_dr_mode(dev);
>  
>  	if (qcom->mode == USB_DR_MODE_HOST) {
> 
> -- 
> 2.34.1
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
