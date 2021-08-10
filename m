Return-Path: <SRS0=zCth=NB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8CD7C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 07:33:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BA1161051
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 07:33:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9BA1161051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn3WgMffVuxr50z7hyKGfTp4oP9J+/aM3A2zvDsHiS8=; b=Klw4LkjKzc/1Sg
	LxaakJMRQpxTbPrcmr4r/CkOVnmc2VCvIGsyGDT71aAFY19Nql27yFXdBM/wDqV/Oo29xguZBr/jP
	7yyahXDDMo7cORnZNaeMJGWP5AU1s92lZeL/ery+4ZWtPaz+cMbfumAvmPgNz+ulaqBciB+9NmHms
	c6Myt8iGE5UXnntsgUUTDfxu22k0e25p6a9fR25uMkBKldg5GXWeJ9tU6l25DxcYV5f4OC0yy9kv9
	rDY3tiGd/OOiGUnsF0DIEhnykV02Coy5TFM9iYwzdoivASAD4y42c9Pn7cZ+zxkJmnF5fbv1CN7Ta
	OuJk+SafnIkDdhOaFIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDMGE-002kG3-2I; Tue, 10 Aug 2021 07:33:18 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDMG0-002kEE-Lt; Tue, 10 Aug 2021 07:33:06 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="300440582"
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; d="scan'208";a="300440582"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 00:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; d="scan'208";a="506034541"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2021 00:32:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 00:32:59 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 00:32:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 00:32:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 00:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AS+SFFI5icUiCUUU9imSGLLht52QK3vAPrbDkrrvY3uHFrkx6e8ssMonDeveeTjeFTEtF3uEzhXgZEhrYfnIA87/8hWVvWqJz4b+ARBJr1zuDcn4KfToZMqEp2LCXwq7CDfioAuwR/xkfts5/op/3jcVMClFvVgNP4DU5UBkyvdfUDzfoyZQNwhbOV6CGzFuGk6qyohCD3gaHuaoUIWRAnlZ/dxzPNUkgdFwotP5tZ3LTpWhumgUKhBL+eKu5Rft7lJYBZZeczWI5sQIC8OzL2T9BbSKktZgUjgIZ6XDbbr3FJdsb4Gh3Kvs+ESd3kvJoM460dZbASnjN/qPDDSO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Rk6R02vV7zVqwpAU5MGdPoQnOECUitoo/zO++gPcyA=;
 b=heq44OmdaZIkhF7xJHQGVPkL1ZuJsKYEqSASU6pMrsvvjsWb5qPGVNpefP4bzB/LpFXvuETdCJsnz/uWkcpFE/MNN8T4sSEg+tU7M7P67nYqZk+1mNDqJMz3xUwgExjohjjalmJqP9ykYCJGPReDFda6jHSPMI8on86WqDj+iqN0e8AzckEGkhCCsiCl3GDAliHtalqxYZQZfmRK+g3EyuScDPRtrovl1VgZFk3RG1/zRFUGS7N+iWh0mT0pAeWNnh7bwO0hv5IbixGHV0OV25Zu9ohCqcchgJzdy/zRTrY87v8wn62qd2WM3GsCcWqiliufj0WBOD55kxGIXNIORQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Rk6R02vV7zVqwpAU5MGdPoQnOECUitoo/zO++gPcyA=;
 b=Ti+pR7v/c1uiHFow+ZCUFXQNbx4RtAzjzRX+ktfBO8lAXqoITzeL8PB/dgKbZdb8kgb+CXCoVunClIsvLV5Xp7YVPrYweqmiqVA5fHfoJDKMCJyLfFXOoxsZPtGpoaXhb6SnceGIQULljHJF7iniap44cr9yqdlVlqTvUA5v+VI=
Received: from MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13)
 by MWHPR1101MB2320.namprd11.prod.outlook.com (2603:10b6:301:53::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Tue, 10 Aug
 2021 07:32:56 +0000
Received: from MWHPR11MB1789.namprd11.prod.outlook.com
 ([fe80::b81c:ee06:fc82:5fc3]) by MWHPR11MB1789.namprd11.prod.outlook.com
 ([fe80::b81c:ee06:fc82:5fc3%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 07:32:55 +0000
From: "A, Rashmi" <rashmi.a@intel.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
CC: Vinod Koul <vkoul@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Kishon <kishon@ti.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Mark Gross <mgross@linux.intel.com>,
 "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>, "Zhou, Furong"
 <furong.zhou@intel.com>, "Sangannavar, Mallikarjunappa"
 <mallikarjunappa.sangannavar@intel.com>, "Hunter, Adrian"
 <adrian.hunter@intel.com>, "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>, "Demakkanavar,
 Kenchappa" <kenchappa.demakkanavar@intel.com>
Subject: RE: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
Thread-Topic: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
Thread-Index: AQHXhQzRAwmHks3vwkaXAOpN1lCV0KtmfYEAgAQx92CAADsqAIAAJ6HwgAATgwCAAUGykA==
Date: Tue, 10 Aug 2021 07:32:55 +0000
Message-ID: <MWHPR11MB17898D0E3A0A4DD993AD7E948CF79@MWHPR11MB1789.namprd11.prod.outlook.com>
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-3-rashmi.a@intel.com>
 <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
 <MWHPR11MB17891909766F5295AF34B0578CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
 <YRDqQvKQ71/824Lu@matsya>
 <MWHPR11MB1789D2B707B39CB42322C73A8CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
 <CAPDyKFp5HcCfsoLgBc=D9RKOrVY2SuV3FKsFCVT2=WaxZBsNiA@mail.gmail.com>
In-Reply-To: <CAPDyKFp5HcCfsoLgBc=D9RKOrVY2SuV3FKsFCVT2=WaxZBsNiA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f97adb86-6712-4554-c3b6-08d95bd11210
x-ms-traffictypediagnostic: MWHPR1101MB2320:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB23206CC8B09AC99D735A30858CF79@MWHPR1101MB2320.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wRqKKfZlFMWIk/GbLu7C7lko10QIGg7ExyBQ0KQYRkiEwL68d1e20dXtjx+deUuLe5pd7Sj5No5dUuYg9Di434xK6Sb/3e3vvB9/Px47gjzmbE+YpwdblS3SZ5EJWLD4hkzHD+hqXdAa5HUoG497qPmtVtS1lVmCXujnvBSvvXSwK/p0jcSclRJk91n3g2GwznyOvu73pL6TESJg2xcjwxPeEPAOpQiKr0i7ipcqE0SZQ228uIU05A2/0953lC5LviT0ndq67KUbDCXd0LaTo3rFE9KyY+Z9hvuYCOOiNRtyWkB1XrlSEsdHT3A5iLbFAWpnZZJQFTTQbCqVhho2Ij8Ba7cLm3A3L5VsGnUD3G9wX/7xDAxh/W9kUAH3pbrxT1i4A0Frz8LS0/DnhOfH1x1TuI2an2zqiZuILAVBgKzzzET0i853DyR5g84cgO9mOhaH6tzPTKnkeQbBoFz4R5TfjwqS9xL1F3wFbadEdIchiPTEHBLKBcrnOSvnZN9CnHlFG1fxcS8oDAm+LUcWDvqKb6gKBHbbmwvpUA+IbaAj7/JX5pUXtAGd0pIkbnojWmry8tR/cn6EU2q/f3KVQ9qnYGf0BbRARv86sH9uSbdH95+LxL3Y6KnJJrUH2RsSstmIY6XM7CPZSb0/Ijb/Ew3Zre31ktlGRyVhGiUVWVPEmBthtWIU6xgvrrr0/Wve1b4fIN7ml5wOcc/CrMrMGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(4326008)(478600001)(76116006)(2906002)(64756008)(66946007)(66476007)(66556008)(66446008)(26005)(54906003)(7696005)(86362001)(53546011)(316002)(83380400001)(6506007)(6916009)(33656002)(186003)(8676002)(38100700002)(71200400001)(7416002)(5660300002)(38070700005)(122000001)(52536014)(9686003)(55016002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXhvTmtYMThhRk1kWE9lUEs0NFo4N3pVVXZTSi95bEF1S0RuV2xmSG5JMDdw?=
 =?utf-8?B?UXp6dm9ia2ppWTNYWlYwYVRMODZFTHd2Y3hJMVlIbzVTdDBrZUY2WnMyMi9P?=
 =?utf-8?B?T1RybFJPVVNQOUNXYXhGL0k0OGlhQjNvdXRRMGpjcWVSMVZCMHExS1ViUUJz?=
 =?utf-8?B?b3lUVmF4RlRwK1B4MExBNnRGQmt1ZGFtRktwMzJRL0dWcGpvU1RmNzBNTEFK?=
 =?utf-8?B?a3lqQzhkdHQ3TXdYOUhUZEZhRmpoYWVLZHg2WVhhd3kvZDRqS2htaXpub0pT?=
 =?utf-8?B?dTY1cnR3UDBIZS9wN255TldBdngzNlg2Ty9IWmdkQmIrdEtsbm41TDVCUjQw?=
 =?utf-8?B?WGFBTkxsMEpkKzVYZnlWU2JTWE5lVWx3VlhvQ3k4aUFnMDdUWWJzZEFpeXVX?=
 =?utf-8?B?NzJwMmxLcVBhSDBUZHdVQ1ZPVnlEUDg2a2RrN29OdjVtdDFLR0ZTODEyeFI1?=
 =?utf-8?B?RkdLZWRkdTBIbWg2ME1DdGFFM2MwMTZqMUtlMHZET1dYYmhocHIzOHB1U0lv?=
 =?utf-8?B?VUN1b1BmTUNINEptbjQrWm1iOUxua2QvZVlrUVYrTkhNcnNmZUUyanRCTGtX?=
 =?utf-8?B?RVBucVFvOEg4dTNKZ05Zck01bEI1ZEVWME94c29FVmM5SFEvNUYyNFQxZUhh?=
 =?utf-8?B?citvd0FoeWZSQmorZnJpNysyK210QUl4VkJqWVE1QU1LZ2Nld3lqanlPK0RN?=
 =?utf-8?B?YTRpczBreG8xb0txQ21pK2k2Ri9CSTRHQXZYb0JwU2dDMFVLb1c2MDdYT0ph?=
 =?utf-8?B?NjhsTFh5Qy9kV3VZNStFdjBMRVI1dzBUd2NYR2puUnJBNGwvM0xBQUVUbW9M?=
 =?utf-8?B?MUlWdGFudit1TVB0UTMvQ0hzdGlNN0t6eldIQnB5dXJUZ1gwcEYzWFpXd2lu?=
 =?utf-8?B?dm5oTWtGaWFxNEtvVXp0MURyWitORUQzSC9KbTVSTTBPQTFZTy9yVFhVZmE0?=
 =?utf-8?B?NWE5ZU1wc2JmekxyQTNOSUkwZm5VSU1NRVRTUlIreUtaN3R6TlN4MlYydnJj?=
 =?utf-8?B?Q0tKRDE5OEl0WDNSd2s4Qm91eU8vSjNmTlM5Y3o1YnRQMkNiaHVaeXBaTzh2?=
 =?utf-8?B?SW01bzkwNmZpaWpsVmMwUDYwaEM3d1VXN0RUY29FWHg4TnlmM29YWGg1WGlC?=
 =?utf-8?B?dXAwTHdwM0JpZUNicDJaK0Q4d0MxUFBacWlVQVJuSGxqZjVZUjZ2em1VeVZU?=
 =?utf-8?B?ZUxDNWlMSUVTTXBPNWJBZXlPZjdjS0Q5WUxOaXloSDdlUWpsWlBQZERhVUpI?=
 =?utf-8?B?S3d0cS8razZzTTZ3M2kxY202cmdYZzdrcjRSNXh6cDl0ejlJajlnYVZpQUp3?=
 =?utf-8?B?OSt1L1QzNlkyMTQ4cXc2WXZWOTdGcGJOMmJzVTQ5eFp0eTZuZ0NML3BIK1Vk?=
 =?utf-8?B?czM2cHFTZnJlWTk1WEU5cjVuS295WmsyMmVFOHhxL2tkbUZWZHBsTjFIU1pj?=
 =?utf-8?B?S2phbGlSaDN0djVYRVVKdjFCUUFlcm5sL3lROCticnQ2OU9kWjZ5dFFnSmIx?=
 =?utf-8?B?MUkxeDdQK2RrZTBob21yQWdHSnM4WSszaWwzUTh2M0NiZ05sc3lVdExaTksw?=
 =?utf-8?B?MSs4SlpodHYwSk5LL3JqTEVaRTJ5RXM5NVEvcmd2ZDFRUy9CZ3lRZzhUbTZZ?=
 =?utf-8?B?MnowaGxFVmtGbDFlZ0JBMGhMc05rcFVmQmdTcytuWE8xUGFqQW1xYThwdVBy?=
 =?utf-8?B?ZW8vUTdjM2RvRTZGbG5QOFZZblQyNm1kOXNORUEwU3VDeUNSNmNlTC9maHVa?=
 =?utf-8?Q?iigAR+83gytSjZS+DbIXE1BNMWRk1UQhNwaTwt/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97adb86-6712-4554-c3b6-08d95bd11210
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 07:32:55.6138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: POiiUJU9VuGhZqsOZ1Gx7/usgT1qnjAsS82vnc7zLdacbGod3xVsPAjC6a41gXdB/a0wItKHosfINnApLOSfvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2320
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_003304_789133_0B6A0283 
X-CRM114-Status: GOOD (  22.71  )
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



> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Monday, August 9, 2021 5:43 PM
> To: A, Rashmi <rashmi.a@intel.com>
> Cc: Vinod Koul <vkoul@kernel.org>; Michal Simek
> <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>; Linux
> ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Kishon <kishon@ti.com>; Andy Shevchenko
> <andriy.shevchenko@linux.intel.com>; linux-phy@lists.infradead.org; Mark
> Gross <mgross@linux.intel.com>; kris.pan@linux.intel.com; Zhou, Furong
> <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa
> <mallikarjunappa.sangannavar@intel.com>; Hunter, Adrian
> <adrian.hunter@intel.com>; Vaidya, Mahesh R
> <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini
> <nandhini.srikandan@intel.com>; Demakkanavar, Kenchappa
> <kenchappa.demakkanavar@intel.com>
> Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
> support to the arasan eMMC driver
> 
> On Mon, 9 Aug 2021 at 13:17, A, Rashmi <rashmi.a@intel.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: Vinod Koul <vkoul@kernel.org>
> > > Sent: Monday, August 9, 2021 2:12 PM
> > > To: A, Rashmi <rashmi.a@intel.com>
> > > Cc: Ulf Hansson <ulf.hansson@linaro.org>; Michal Simek
> > > <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>;
> > > Linux ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel
> > > Mailing List <linux- kernel@vger.kernel.org>; Kishon
> > > <kishon@ti.com>; Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com>; linux-phy@lists.infradead.org;
> > > Mark Gross <mgross@linux.intel.com>; kris.pan@linux.intel.com; Zhou,
> > > Furong <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa
> > > <mallikarjunappa.sangannavar@intel.com>; Hunter, Adrian
> > > <adrian.hunter@intel.com>; Vaidya, Mahesh R
> > > <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini
> > > <nandhini.srikandan@intel.com>; Demakkanavar, Kenchappa
> > > <kenchappa.demakkanavar@intel.com>
> > > Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay
> > > SOC support to the arasan eMMC driver
> > >
> > > On 09-08-21, 05:16, A, Rashmi wrote:
> > >
> > > > >
> > > > > Rashmi, is it safe to apply this separately from the phy driver/dt
> changes?
> > > > > Then I can queue this via my mmc tree, if you like.
> > > > No, the phy driver/dt changes must go together with "mmc:
> > > > sdhci-of-
> > > arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver"
> > > patch.
> > >
> > > Why is that?
> > >
> > > What could happen, emmc driver will complain about phy not found and
> > > bail right?
> > This is right, but ideally both mmc:phy and mmc: sdhci-of-arasan
> > driver code changes should go together
> 
> If patches are well written and can be standalone, we (maintainers) ideally
> prefer to queue things on a per subsystem basis, because it's just easier.
> 
> That said, I also noticed that a new compatible string was added,
> "intel,thunderbay-sdhci-5.1". This needs to be documented in
> Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml, in a separate
> patch, preceding $subject patch.
> 
I acknowledge your comments. I will submit a separate patch to document device tree bindings. After that mmc: sdhci-of-arasan driver patch could be queued.

Regards
Rashmi
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
