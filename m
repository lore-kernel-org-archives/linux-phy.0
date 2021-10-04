Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CB5AC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 06:04:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3C1461373
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 06:04:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F3C1461373
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvsN8wn0m9qkathgEolMfyK89Gc/xgxIbmJzs4TE8x4=; b=hVYGF1z93WXoyB
	G76/GWoUgmvO/uCKpiIvDcNUMgMvf1m1JHBu924UrE8JdinAWE4+6O3ixH9ce1nlbuGdadboTxS4a
	gH8E6aGb5NZnM9Edw/DZQn/sZ40JXvHdaI7vQV59db3b40aUeBjjlBrGLCzLZPUs7Gkws9bPA3Rt0
	LotCUUQaQMVGRzvfu6SsVLh6/dBCkS+k7p1ukn9tI1M+skIsG5nx+CUzLtNgq9v8eWrFqbFXgwP19
	Xf3DDO2hEMM1j24FWmHdv7Lp2wd3doiCEamPh6HvirLMNEtFk1O0ZCvRshdvDIt0KjGQft6PECgVR
	9xKd7A/U3tbw5ByLZJ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXH5Q-005DwA-In; Mon, 04 Oct 2021 06:04:28 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXH5D-005DuA-KJ; Mon, 04 Oct 2021 06:04:17 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="248551249"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="248551249"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2021 23:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="566844635"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2021 23:04:13 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 3 Oct 2021 23:04:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 3 Oct 2021 23:04:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 3 Oct 2021 23:04:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJPjccv6fqPSg6pUXb0mhLst+0CmhAzd3c3M9qrFvMN4PzfHGll3Y5XbkwgyLEFvJ0ZZfU94fU2ZwoBev08pTfyACKtRTAjW2uYDju015urG+Jm6wLvS+YHTy03JhbLSa+dtm66HMHln+bdH93yJsVIlupkXb0zBldd76R5YpzWoqFoPDWLxUqTfS2hlq6NLvY8L8+R0urHc3US+CFid0CzDqXHIHs0ndTnFV3+CoiyC1GJC5r3ux3piqVUhgbCZiIk0dqofvRRQ2itKz9iun50IIwDlIkVWh59K4ijxAolfGNyNFuMkJkrCfFsNLcc9xNv7TBkUum/UEdaSNHO/Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k98BCOztg1Vy0/Zw8E7rW9ZZ4mUThqjcGgamn+I2RgU=;
 b=lpt0q0Qv3ajWLV46XHHH53HfD9gD+7rL1jxKFInD0mTAMNGLlVmXnGn4w7xIGJ6nhXIxI+yGppf3Q5zp9JyAQV2GMH5XuGFx2Medig82W5K4HXtN+a3zLcTWKPa+i89pJB9Rgv9oh6ClgxI7+IvMZqNyWFEDxjZa483jshGT2Sg+lxlFTDbgPXySL9dn9n0Xzdhf9vywbyA37iOU7CglWzP1nvHJYwa6E64BzNBafr1IIH4wANljs/kUC1jTGotpykepp4kkpKHV76VuAO2M5kRGpMaRK2xT+dqok2dKLQR+aBN4z74hgZZInWhBcftlY+HRQnGqkGitDotb83llxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k98BCOztg1Vy0/Zw8E7rW9ZZ4mUThqjcGgamn+I2RgU=;
 b=AFly2obdtU/wEfrzrwFuR9y8litBhv9yhrxm4YJr8WVQvtZkx+rI7N6HzB8vVuJ4li1J9vWrX1+vWWRJndjd0nuG4GqFRR2Gs98sxehwfSVsd3EhvDIOpVroPROhN0H24kY51dbyh3mDoBnS6t4JqHjHNuStnjK/7HWo2aLP4Hc=
Received: from DM6PR11MB3065.namprd11.prod.outlook.com (2603:10b6:5:72::15) by
 DM5PR11MB0026.namprd11.prod.outlook.com (2603:10b6:4:62::35) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14; Mon, 4 Oct 2021 06:04:09 +0000
Received: from DM6PR11MB3065.namprd11.prod.outlook.com
 ([fe80::ace2:ed94:516:31a7]) by DM6PR11MB3065.namprd11.prod.outlook.com
 ([fe80::ace2:ed94:516:31a7%4]) with mapi id 15.20.4566.022; Mon, 4 Oct 2021
 06:04:09 +0000
From: "A, Rashmi" <rashmi.a@intel.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
CC: Michal Simek <michal.simek@xilinx.com>, linux-mmc
 <linux-mmc@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Kishon <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Mark Gross
 <mgross@linux.intel.com>, "kris.pan@linux.intel.com"
 <kris.pan@linux.intel.com>, "Zhou, Furong" <furong.zhou@intel.com>,
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>,
 "Hunter, Adrian" <adrian.hunter@intel.com>, "Vaidya, Mahesh R"
 <mahesh.r.vaidya@intel.com>, "Srikandan, Nandhini"
 <nandhini.srikandan@intel.com>
Subject: RE: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
Thread-Topic: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
Thread-Index: AQHXnQMuYeQydCD7LECFRtxjQUnwfKuje/GAgB8UJTA=
Date: Mon, 4 Oct 2021 06:04:09 +0000
Message-ID: <DM6PR11MB306560AE06F83FC56B9F89988CAE9@DM6PR11MB3065.namprd11.prod.outlook.com>
References: <20210829182443.30802-1-rashmi.a@intel.com>
 <CAPDyKFq2VQ=khYnmfsQGPPcpRnxyATVSpwKSZ4MTbKn64rthVA@mail.gmail.com>
In-Reply-To: <CAPDyKFq2VQ=khYnmfsQGPPcpRnxyATVSpwKSZ4MTbKn64rthVA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8f0f17a-b51d-4e07-59ec-08d986fcc7ea
x-ms-traffictypediagnostic: DM5PR11MB0026:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB00260BEE528010E20A05EBD98CAE9@DM5PR11MB0026.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QuBGKFr/WKIgpjMLhV4np9wqMpRaXuMVdsZf5bwoZx8ZJP7WseWfStSwJDG5m8zUbuu42y++CM/bRrsacr1jMflv5CyhI7oneXceoCwYwqHGjrYx9+bcnlvkNY+NQUOMlW06dfvKTBp3OYZSPgE0DCQ0oAPx8P5e3t5M33ovyvazO/HzvrYZxmQLIDletytQBI0wUJ/dpjirtwTxsN+Y7cdTfufzdBdgU683NKpKIr5y2JoRmtzgKpW6y8op27M+errdutSf91xyw3gEc7u5EbWizFiHxC8TwxXcj4lnK2/rMRc2PKmywm7qGzKMGOyUxj5/WnSaYifK9tVNraSBhQjyHXhQPUDQYLBdK0K72ZR4aMsp29sXbUQ5NXCNbCYaQ8T3AB2Wu1yZpoVkSh4Wd2FhqAlU0KLtjYMZl8ySgKNhH71jhne9ovv9GU9ykNfo9VuvTSqF3LyLss+a1MK1/rarSvliOdtvJOaPyICmfdqF+222JqPK5+tmtXG2VL82SYPA9Hkk6t8yyDTZAv5vZJEP7L1pXLbDkEgbUhlsVQAxAqwEygxISWWByGV0ToFhey0MSWztqELhN7QHj/tt/Y/jKYavo+2bklWJFeJn7vL71lGfGTQmTif+YOeIbzbvDNxxNLGkI0Ai2kXoXRMoOAPUwFdhe0WEDZN47B2JFkzfwaH++KeFMtvIN4+9ReAR6Zy7omHx3xJce5c0GF1dmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3065.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66446008)(33656002)(64756008)(53546011)(38100700002)(6506007)(52536014)(83380400001)(186003)(7416002)(71200400001)(316002)(5660300002)(4326008)(2906002)(8936002)(8676002)(38070700005)(7696005)(55016002)(26005)(76116006)(6916009)(66556008)(66476007)(9686003)(66946007)(508600001)(122000001)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q05PTEpQT3NtdUd1Z0lsUlJFUmdLWW51WVpsM3FqSFkrenpsSTZjNTJ4RkNW?=
 =?utf-8?B?aDJuTHJsckVlMlllVnJDeUk1NDl5NzdFZ0w5elZiRWkxSFRoY1RCRHp2RWZt?=
 =?utf-8?B?S29KdkhuSWNpTm9VaTZGRENkOEhFbVhvQ0FnNXpkanBuUE1KNFlMZks1dWZT?=
 =?utf-8?B?QjNqdVAvSEZkVXZrV20wdmQ5NGYrazhjSkdlTDNHOWRrZFdNbmVHNXdVWTVy?=
 =?utf-8?B?aVVNbkRGZ0lqa0VITzRXNXArMXJocXBZTHZZNitGRTNFZ3poOWw4WVQzMUx3?=
 =?utf-8?B?ME9uZzlZK0NGQ3M5MkJqTm5iOVVQSnB5YlFkams0ckU3MU9nU0tMRWIzQUZ1?=
 =?utf-8?B?MDFQR3dkRTdzbHR6cGxONllrRmU4Y2UxOHBSZzV5aXdRTzAzL2dDWWZHT1Z5?=
 =?utf-8?B?N0VDd2llMWo0bWwydEZQRE5vSTY2OTVxVGRGT29Ob0pndjZXa3Y3bkl4bmpi?=
 =?utf-8?B?NTFpeFlNdC9yT3lFU0VFUjZjaW9JSno1RlllczhoTlVGci9LRUV4NTVOMWVl?=
 =?utf-8?B?eFJqRXhEUkZvbnhRUmhCMlRwZjJDMEc1SnBITEZ1bmRSa1pIRWpkRmVZaEJy?=
 =?utf-8?B?WUNnZUxXZ0R5Y0s0Zmk2Y0xuVkJENTZNRU5mNCtXdWRXZERhVzNCditYd1B6?=
 =?utf-8?B?Ri90bHZScStuZXQ4am02ZWhOV0o0QURZY2IrSG9NOG1FN1dQZm1EWjFQY1U2?=
 =?utf-8?B?N1BWUEw5QmIxT0E1Rk5nVHJlQVJUeHhSSFg1MkdRTkxLYklKYTlJOXRXWmE0?=
 =?utf-8?B?S0tHcktKY0thYmVMeWM2MEwybzAwWnQxbUcvSWhTNENmWDRWaDhUSHU4dFZk?=
 =?utf-8?B?Y0lia1BQcDd6aEJQNzk0NjNmNFJlTkFPeTlkdHZYcVp0TTUreUY5RDNKRE04?=
 =?utf-8?B?NTVXbjBvMXhVa3hkRWREdEZrNXRHWVkramEySzRjTjYwZU1pMHZoWjl1VnZj?=
 =?utf-8?B?VHY2M1FSTHFkQUFhTW5nZ3V0SmZUb3VJeVBja0xFZkpqaEp3Rk5YQyszSUJZ?=
 =?utf-8?B?dDltZVczUzFwbE5FMkp0L1lURW00RDJjRk1MVFdHaVV6YUdxRVF4MmtHejRC?=
 =?utf-8?B?bFVESm1CUmd0bDlUM0UvWStHa0VlUE5XNXZGb1VTZmVpRHV1VFhua3lPUE9H?=
 =?utf-8?B?S01ENXMzaC9rd1IvSTgwZTVTbWVRemJ2bGNaeGwwNmhSRjdsNFVBVDVUUS9h?=
 =?utf-8?B?MGYrbmxlejgxK1BwWVdjRWlmUCsxeWp4MVorSHlQS045bEd5UHlmSi93Zk5X?=
 =?utf-8?B?WXpTYUtsRitkT3Q0VUduSm1xS1U0cVZRMXFZQzY1VlNzd0hSU2pzeW1VQzJV?=
 =?utf-8?B?RGtUR2UrSnE2SlBJc0g5WlhkTDNYVWowRTJuTXdVU1Z0QVlPS0hJekdvblQ3?=
 =?utf-8?B?MUl1VXc1cWMwdkNDQmZmOFBiclBUMTVIQWgvbEhENUM5YnYrTmtKeE1MY0d1?=
 =?utf-8?B?STR1cDJZUjJpMW81dVA3UENXcGtVSzlTdTBhdEtncVc1ZWQ1MHdlNUI5TXRw?=
 =?utf-8?B?aTBIeGlpVHoyVHhDNFFrTFZhTVNjenJGcjJadHBUUmZRZERKaDVLamIwcUFw?=
 =?utf-8?B?cFF1YVpTSWRSaStRWUpFS0ttVnh6RXlGb1Q3NnpUaVBpMmtLdTNYLzhLdnYx?=
 =?utf-8?B?MS9wNGYyTHJ4QjVuV2xuVG1vVHArWGlJZEpaNHZKQVQxYTlON28xUjNtajFw?=
 =?utf-8?B?RjUyNlB0UEFEN3BKRVRWRlNFOExvME1rOWNxZExKaVNVcktkdkNETGxLZDdK?=
 =?utf-8?Q?oJBBadC+V9V+y9YNIcOXT5JlAhOox3EywOECm+1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3065.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8f0f17a-b51d-4e07-59ec-08d986fcc7ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2021 06:04:09.2592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M2MqCtJ1GI/w1FtmQuuJ6P3s41EewrpRRB8Gt8wIBAXpZAcrpRmN8PM9Et2pmlQveGTXOG3Zop4V3KEBUidOFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0026
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211003_230415_759087_97D9C33E 
X-CRM114-Status: GOOD (  21.65  )
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



-----Original Message-----
From: Ulf Hansson <ulf.hansson@linaro.org> 
Sent: Tuesday, September 14, 2021 4:54 PM
To: A, Rashmi <rashmi.a@intel.com>
Cc: Michal Simek <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Kishon <kishon@ti.com>; Vinod Koul <vkoul@kernel.org>; Andy Shevchenko <andriy.shevchenko@linux.intel.com>; linux-phy@lists.infradead.org; Mark Gross <mgross@linux.intel.com>; kris.pan@linux.intel.com; Zhou, Furong <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa <mallikarjunappa.sangannavar@intel.com>; Hunter, Adrian <adrian.hunter@intel.com>; Vaidya, Mahesh R <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini <nandhini.srikandan@intel.com>
Subject: Re: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay

On Sun, 29 Aug 2021 at 20:24, <rashmi.a@intel.com> wrote:
>
> From: Rashmi A <rashmi.a@intel.com>
>
> This patch set enables the support for eMMC PHY on the Intel Thunder 
> Bay SoC. eMMC PHY is based on arasan phy.
>
> Patch 1 Adds arasan sdhci support for eMMC in Intel Thunder Bay.
> Patch 2 Adds arasan sdhci dt bindings.
> Patch 3 Holds the device tree binding documentation for eMMC PHY
>         and listings of new files in MAINTAINERS file.
> Patch 4 Holds the eMMC PHY driver.
>
>
> Rashmi A (4):
>   mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan
>     eMMC driver
>   dt-bindings: mmc: Add bindings for Intel Thunder Bay SoC
>   dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings
>   phy: intel: Add Thunder Bay eMMC PHY support
>
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml |  25 +
>  .../phy/intel,phy-thunderbay-emmc.yaml        |  46 ++
>  MAINTAINERS                                   |   7 +
>  drivers/mmc/host/sdhci-of-arasan.c            |  29 +-
>  drivers/phy/intel/Kconfig                     |  10 +
>  drivers/phy/intel/Makefile                    |   1 +
>  drivers/phy/intel/phy-intel-thunderbay-emmc.c | 512 
> ++++++++++++++++++
>  7 files changed, 629 insertions(+), 1 deletion(-)  create mode 100644 
> Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
>  create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c
>

Applied patch1 and patch2 for next, thus leaving the phy changes in
patch3 and patch 4 for Kishon/Vinod to pick up.

Thanks and kind regards
Uffe


Thanks Uffe, 
Hi Kishon/Vinod,  
	Please let me know if you have any comments

Regards
Rashmi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
