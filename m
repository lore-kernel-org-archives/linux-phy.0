Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18152C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 19:52:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B044060F21
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 19:52:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B044060F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=synopsys.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm976ssTFnQjIPerRnL1w/eGOl9fPswOUS/Ugi0TYeI=; b=DuIbpicVuhhcAj
	IS9zHoeWeOgNH68ZJy1dukcqGwQLyjV02wMklYDXNW0g1n0TKMpaPDzlopq8U57dNgmhFLEU/Qy/O
	8l1KT/llyhH/snF2/sX2LpqFebU4RSdNRZR+sge/5FCRFgAWFQbSD6blpt0MKpPwtqCgtVj2nvB/C
	de6Uje9VE6Uy0qIx1qlLzkitIaOGl9gI1tsjWgYBdn4mB0qlyw5I3vqJUQpPhFKvPgw7J6beBAFGk
	yr2NabWwhdZ4iTzp/lghR45PufBbU/+mo1krJpHHYy8YZAnBY+vrWE84/HyKJFCKZzibUiMVcGcBY
	uItVoP89h6xGhz5G55Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEdEH-00DVJo-5Z; Fri, 13 Aug 2021 19:52:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEdE1-00DVIv-9a; Fri, 13 Aug 2021 19:52:21 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "mailhost.synopsys.com", Issuer "SNPSica2" (verified OK))
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DD459C08E2;
 Fri, 13 Aug 2021 19:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1628884333; bh=KBcWWnPZpNM0AOKMbOXPgtoXjbBeekTvXETcZeu0K94=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Rld8al+Q/4iRnrX/ZtK+hmWgoktEKZBKOlIsZV6vL6Wt7/j6eqSVMdQS3LZTM8IEJ
 mHjHjDyoDsnEZjzzcns/RI2iEobVs5WjonrRwqNXProOSX+DYsT3fL4nJDOk7y6szl
 J6AO0F8kD5uJzSL1x5tvbIa+h8SkMdMj9yXxoefwXsgGbzimhARPCSlItZWmakKyQX
 M0CnByxfqZh9Zizu2pvfH8r3uINqxN3I5WUZRVO74oZpuSbMDj9c6C2prpI2Rke2YP
 BUltoDqnTPtWc0IFXOQpcUX8DHeJdY+KXgX79vvlNtfndPzo02knIiolatlZQe1Lm1
 J/0YdNFYC8hXA==
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com
 [10.202.1.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "o365relay-in.synopsys.com",
 Issuer "Entrust Certification Authority - L1K" (verified OK))
 by mailhost.synopsys.com (Postfix) with ESMTPS id C715DA00BD;
 Fri, 13 Aug 2021 19:52:08 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2046.outbound.protection.outlook.com [104.47.57.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "DigiCert Cloud Services CA-1" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 4521B40097;
 Fri, 13 Aug 2021 19:52:06 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass smtp.mailfrom=thinhn@synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="VLZkFlze";
 dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+mJXKZu6FCXz0yudwI7nq8gipSGFX/Yor4MMAdA5vRTVeNckqU7KLS79FBpq1+XoUk0ywo86g4oWc/K3nNU0fq09Uo6y+8bCbUh9gJeTAWt39h9InHDu6Rcf3UU430GuSQekshMfzkPXUbkWUYs5/tEAVpgzDl53bxhIN7d9GWFOlEBPCH004H8ons7k3vIHuNxP7MBykIDVImMQHAldWYrb6lHC2tC6j0HH+DVcvsG1b61S1t0JfnkuGPP4dPuyThCfYFGJe3ccwmsgbFhC7j2ouuwTj13bF5fYjHFl1u7M0ZtRZxTRscLbbR145fueQYzLReQqPXvcyh7Pyp+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KBcWWnPZpNM0AOKMbOXPgtoXjbBeekTvXETcZeu0K94=;
 b=K3hmfJ0TDGJVqB1/NDES4oqRUJKa+jQhwWXaEmxAqBgUGk7UEYW0/PtMDCCwGg/lsqgJdHsyj9lW+3kgCqZ6HTnBOq9Y+kZE3LpUI8SmALtYWOVpgBbe7+b1Kl9e4U53XMRb6XA9wSL+0BhfIp8V3yp9zB7Id2Olu4e+YiKkXY8Tk85aX7/yU3g861LjKblN8jDx3EqGmWW9trEXPlLU5SxQOVxIJkYkw3Oy7v723qq6NFIMJ53BK7bRaxetcVEF38jOnrSY2H8EvVrxCJKKs+ox2RRX+uEDo21A3mZHIogLi69QC1Eom41goMvBdpho501XuZwD14ODcYvoH3ZSdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KBcWWnPZpNM0AOKMbOXPgtoXjbBeekTvXETcZeu0K94=;
 b=VLZkFlzeiewWSa+4JJHNlzrMJpTCwJ6PkXYJbYjmCEY6p319lxIDGyASoxSMv9eB6HcZtz5D3HUSYuf+KN3kLMtSIHlelzaYBFxGH+zMg/eerMbu6iSwTD3Ru/LFdUN1IIxXh4BgjZsnBOWyzqatC6Q5EHZA4Y0eK/XCpaO1Xq4=
Received: from BYAPR12MB4791.namprd12.prod.outlook.com (2603:10b6:a03:10a::12)
 by BYAPR12MB2856.namprd12.prod.outlook.com (2603:10b6:a03:136::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Fri, 13 Aug
 2021 19:52:03 +0000
Received: from BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::163:f142:621e:3db9]) by BYAPR12MB4791.namprd12.prod.outlook.com
 ([fe80::163:f142:621e:3db9%7]) with mapi id 15.20.4415.017; Fri, 13 Aug 2021
 19:52:03 +0000
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Rob Herring <robh@kernel.org>, Baruch Siach <baruch@tkos.co.il>
CC: Felipe Balbi <balbi@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Thread-Topic: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Thread-Index: AQHXiTnt/GO+HkNUgkeAoESR7uPeE6tjYusAgAAC7oCADljMAIAAKEUA
Date: Fri, 13 Aug 2021 19:52:03 +0000
Message-ID: <53784e58-6da4-ad61-6b9e-46697fb3d695@synopsys.com>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
 <87lf5h5mc2.fsf@kernel.org> <87v94lxpb0.fsf@tarshish>
 <YRarmizUtzIunV1P@robh.at.kernel.org>
In-Reply-To: <YRarmizUtzIunV1P@robh.at.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synopsys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd02fe4a-0ea3-4768-a1e8-08d95e93d297
x-ms-traffictypediagnostic: BYAPR12MB2856:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB2856BC88E6E834EE947AB25FAAFA9@BYAPR12MB2856.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j60QYvHuGMR3UiQb7xTKOMDjKMwhCKu2kDTlrsU3DEaM4JayzJqAiZKM/bs3UcneIWHL80VX1tzHbmgPQoWaAoFvuQSzlCYFudYAHSatf2qNZjdmnYaGgEqS8Jv5ix/kce8pa57J0Q/QlmVwrfm+3H0nRufrFg8mH6YB7d84sQdGjiK8SPuPJNY9DpoYRH7z6QBRcZ6Eyi+yzJsQgGn75mP+cnmFc4XRxp3FaInAZ095KwptyyVyA+S/eeariDc7fXdut+dy/QzFUkvilPAnaAzBy6vqYuz7g0mCoE1PgCe5Rc+jCwwYskZ6Dp2WayTO1ny9H3qx/+5GohDrbJzjQ4r9kl/x/D271nUZPyzZ4KI6oDNdDU7x6sWRjfJlMCN5ntVQDj1G9ejnFAL20XS1AHzLIWyt1suxSl6Kua1w7MceWPfLVMTwYdD4rzFcRVoC+2snv7zU8+FaiSl3jddHy7IvDODOTkFHjAaaJphLsdl5i8Ok2bX1zJ1RwpRYziRv4GoRD/qH9YeZFESzztDxrMV4eo55zmXtraGcqK1JmbhmBVfYFknuy8hZF05yHc7h+IYfKtLdbz9+cuCzydcmnZADel/NBHodE7xJDVyIaGEKTai5BKHwpMav4LJTLn8bb37c+CFRgBGoyJ6th5F5gmDrrgW3ZoeDeafbtK2Zp1SRdj91t+l76NMm9tyCs+0pAdAwNU41KUmrQ2K0QT1BX/ml42I/SHbkL9aH4E0VTJ/YbWyyN/oyvhCuSm36A/MkkHdbNiaPH5j5KmWGuuqQOddpmCUK/YzEDWhwvV45kKjT3L3x3nTSgk0ZhvySCPVbR3wX07Qk4FtTvu3w5DGH3pXHSkLVZGogLB6x8Vfq5s4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB4791.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(346002)(366004)(376002)(396003)(136003)(54906003)(186003)(26005)(31686004)(86362001)(966005)(36756003)(478600001)(6506007)(38070700005)(7416002)(122000001)(110136005)(2906002)(2616005)(4326008)(5660300002)(6512007)(316002)(6486002)(64756008)(38100700002)(66446008)(76116006)(8676002)(66946007)(66476007)(31696002)(83380400001)(66556008)(71200400001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3JBTFYrZ1lzWnc0eWF5SnFISnQvT2UyOUpodFlaSmRLU05XVUZJZUtuZTVD?=
 =?utf-8?B?VG1ELzhER1UwbVlVN2NpalFaZXVLRnppL1ljMWpnbzA3QXJwU05nUUdUazF2?=
 =?utf-8?B?KzNHODhBckFQZHphMDF4RTY5ZnZNK3p4OG9xL3BKVlp4VldsaDJIZHZzdExa?=
 =?utf-8?B?SS9rcEdnc2F5cnRRbGtTVWlhM2VpRDg4R1JsbHdzZGFDQ3Jvb3RrMnRoNzBH?=
 =?utf-8?B?TlcvR3BpcVhkZEZ6ZUtxTFg0ZW43VzF0RWNCNkRjblFOdXF6dkV0U1c1eG5P?=
 =?utf-8?B?SXhYYUlSVDQvK1dIV2VUZHRXNnEyMWlINUVscWZTRTVjSzJjRGplZXdnTStr?=
 =?utf-8?B?cTZJbUluVlhqTFZaV2NnRC9kY2pqVXVnNjdZNVRUTWhWRU9JYjRaZlo1VVU1?=
 =?utf-8?B?c0dIVjVYa1pOQk4xb29xRnlZRWVXY1kwcmY4RHBSYzlzR3VTcDNWM2FiTTUy?=
 =?utf-8?B?Mkt5VWlQbmppa1dIVFFBOXpvZ1R2UFpaN1h6dnR5M2lOSDFCdVlEZHZpTWtQ?=
 =?utf-8?B?eTdZYTMxK01FUU9mVmVmeGJyb256Y0IrRjI5MTVleTVUWXdZaFRJV0J0L3ht?=
 =?utf-8?B?RjU0WFRrWi9LMXdGOWhzQlhCSjhlM0tOYlZXNEFMYUlvdnRyTE1QRlpZTHpP?=
 =?utf-8?B?YTZ5NjBqTUtnV3M2VU9WMnNXTWd3cVBnNElLU2h3SENTSzJtUWQrV1VmMGRs?=
 =?utf-8?B?YTZLaElJR3ZtWHZSQmZZQk5mZnp1MFhISXJzcGlSUWFWdnpJME56V2QxOEhS?=
 =?utf-8?B?WUlwdExGK25nbEY1eGJuRTN4R1FvSDRnOHlCWGF5SWpzWjZIQzArdVhJY01x?=
 =?utf-8?B?Y1pibTQ0bnQwUXdHc2xFZXkvd0E5SHdsRm1QUkNnQitHSjlTS0NZZ29KOFp4?=
 =?utf-8?B?MlBFNG5ra3kzcUxJOWEzNWtlZVN5U0drQ2xLTUg0K1R1eU9acjhQS2J3cWxw?=
 =?utf-8?B?ZEVVU0NPNHhWVEpBWW1XVlpZdHErRVdOYlN3dldlNWYvQVVtdm5SRHJGS3Ri?=
 =?utf-8?B?YldDUjF0N0Q2UzBsMVVjaUV0MTA2ZlB2VHBTb3NFNzRTc1F0NmhqRXJMZU1z?=
 =?utf-8?B?N0RwR3VpSDc0d1RtVE9NMklaUXNiOHp4MUpyaWNweE94Skl3Y3o1anU2ZE96?=
 =?utf-8?B?QWM2TC8rREdGK0dVa2M1QU9ONnR5bUNPc3VyN052YWczR1Jxc0NBMWVjV3Vu?=
 =?utf-8?B?czJMWFQ4aEl4cGdveHFpMmZXUWdid3FzLzgwbzQ2SCs3WVZER2NucGVKQ2xX?=
 =?utf-8?B?aGduNWNVUGU3a3JHSXJDM0dRdmllTUJ6eEVpR2ZZTDhDbm1IVGFqbGx4VWhG?=
 =?utf-8?B?aHNWN0dFbm5tVzJIdVhpeXR2TS9XZVVmRDc5ZGxNNk1VMEh4dmlWL25HaTFE?=
 =?utf-8?B?VEY2VEZuMHFjT3ZNSkhXRlhFM3VrYWtWNlJYOEY2Tk9CL0VHMEt0Si9oaGpC?=
 =?utf-8?B?Rmo1N1dlY0RmcHdnWTNuMFRtUk90am51V25ndzNRMm1CZWVPdjQ0ZFlqTzdw?=
 =?utf-8?B?T3BOb3lUWjhadDBzOWpUaCt5T3Rpd21jeTJVSzZlaGhRaytGbS84YUZoeUhn?=
 =?utf-8?B?RVFYNkpwY3BtdEZwc1BrdUE0Y0g1dnZ2STFkMWpQM1FTaU5kay81T1ZTbGty?=
 =?utf-8?B?V29RSDE4MkNEWmorWGhBMk5HTXNDUEJkcXhQTlVKbjR3Y2F2YThBV0JoUXZG?=
 =?utf-8?B?S3ZHVFhuYnFCQjRqeU1aVlJkWmYzZ0ZXck9WaWdFM21WSkU0NHMzVlJzbDFw?=
 =?utf-8?Q?oLFRnDEiCYuyuuIJA0=3D?=
Content-ID: <C69E55C220B476418F1D141FEBFBC3A0@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4791.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd02fe4a-0ea3-4768-a1e8-08d95e93d297
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2021 19:52:03.4532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6uq/GMGI+/vLs4qiDVHeOApCJ6jkTlp73tBqzRESfOMyO/aZMo0bDfKDGdguu0KoX+mDlXgIZ/qWypQZc4Fhrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_125217_423464_030E6858 
X-CRM114-Status: GOOD (  18.24  )
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

Rob Herring wrote:
> On Wed, Aug 04, 2021 at 05:22:27PM +0300, Baruch Siach wrote:
>> Hi Felipe,
>>
>> On Wed, Aug 04 2021, Felipe Balbi wrote:
>>> Baruch Siach <baruch@tkos.co.il> writes:
>>>> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
>>>>  				    &dwc->hsphy_interface);
>>>>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
>>>>  				 &dwc->fladj);
>>>> +	device_property_read_u32(dev, "snps,ref-clock-period",
>>>> +				 &dwc->ref_clk_per);
>>>
>>> I wonder if it would make more sense to pass an actual clock reference
>>> here. If valid, then reconfigure the period to the value returned by
>>> clk_get_rate(). It would avoid yet another DT binding. If we make the
>>> clock optional, then we won't affect any other platforms. The clock
>>> itself could be a regular fixed clock node.
>>
>> Thinh Nguyen asked to add a dedicated DT property. He explained that
>> clk_get_rate() does not work for PCI hosted dwc3. This is the most
>> complete summary of the discussion:
>>
>>   https://urldefense.com/v3/__https://lore.kernel.org/r/c797e9cb-cae6-c0b6-5714-169c2ad79d32@synopsys.com__;!!A4F2R9G_pg!Nh6rqp_aOd8XIvqELvDRQe5ooZf13UZKwmn9lWcRgdbyMKpTMzL8HasrB1X2Ojvumo8g$ 
> 
> PCI devices can have DT nodes with clock properties too. Or use the 
> VID/PID to infer the frequency. Or use 'clock-frequency' property.
> 
> It boils down to we have lots of standard properties for clocks and 
> clock configuration, so custom properties are a NAK.
> 

Do we have DT node for the PCI device before discovering the device from
PCI bus enumeration? I don't think we can find the clock properties from
its configuration space. For our HAPS devices, we can't use VID/PID to
infer the frequency since our phy and ref clock may change.

Does "clock-frequency" mean ref clock? If so, let's use that?

Thanks,
Thinh
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
