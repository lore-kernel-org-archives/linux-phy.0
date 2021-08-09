Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AE1C4338F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 05:16:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6393461056
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 05:16:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6393461056
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q37LidPilQvr/tgW9jVsb9C4jQYxYuJ92hoR5phD1tw=; b=4rQZ01fyeIJGdI
	H3HOjg5coBZUcGalhyA73jSOlRkaN9OxUwOC95q1mRJoa0MZQ8kqHxJDV/YEB+L2xqYmOqoDl4FN2
	ok8v20/sBdKBCP16yx8U41HcBjyVdAAhIgEhfAp1xFkaqRgTeL/Y0UocwK1xl/7fVtJiNW/aU8iKM
	0bPZEX+P18MVIMt8o6qEvgoz2qx0AgGuljNHLwO1BxtLy93RIP5zUnkPS2162yZVzMH3uWjk7wwdZ
	tNSj7PA5tsRxkmUfsp3RuaD0vNiMkb7PmQ64TMGkJuC60iqPa3xnHk15egrWjPlvwlyuzHEdo0wVK
	arZbfz0p6T0vKoTDWM/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCxeU-00H9MD-RB; Mon, 09 Aug 2021 05:16:42 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCxeG-00H9K4-Qy; Mon, 09 Aug 2021 05:16:30 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214649283"
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="214649283"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2021 22:16:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="674087102"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 08 Aug 2021 22:16:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 8 Aug 2021 22:16:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 8 Aug 2021 22:16:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 8 Aug 2021 22:16:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/cVbQkJKGnjFeDBvgFckxxnTJDh5z6vHZU+6AQqp77nM4IOSrNYM5N1n6OpvHNKJao4aW9vOZf2NVXYNULP1E+HAY/1ScZRiuXzxVzpBDjjdoRZKwAw7cf/ZZaaxoE+DVIsOhWb+ryCTNnGvtx8FfZful701hWFI7O9LzhPijs2eYczr/7JxQsLc2A+lV9LDJqiwZD16+CVtRa0fCanLr5T4yeeWLi3iR19C4O3/z4qfRLny3DOu+pCSuwBamz6FZSS0RfW0NAi9oKnvdvlNAc8uVb6uJ7wfi3Op3Wqe4XEiStprUcsPKjFCtzsZ7DVbzRit0RSa+JJh6pzQ2Vhmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnbDlFmoi0S4zw5lFsnZzBAvgRnEDQMbMG0XrCSnEd8=;
 b=Ovd7yZ0KFKdjBYlwtQuFJFucML5SkcQLqNmUbh4AcvxDS0pacXpVl6VErbhkcxtWwUnKhuYgRToBuAjRZi4bwEITy5C7xfQ2dNlprDSNh00AFOJrjdCpasxhZupIq7RgHupkIjbDg+jSsd6NSB6LWQhg0B8te+1n/wnEbK/q/m5A0CFrepyxnlt6v2IndbrbVbZPh0nIMCOg9d1s3aXQSwnNlhGITki5LctAV4l/xDnpQMnHGkG0+lSTk70KzdHB451nyhd8WRnG3JQXHiNYf52+LtLjUNB+JSjrp5JQIWVo3rY/YGw8gMSmeDGjp92g2Rw8yms5gHZug5oUjkNzcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnbDlFmoi0S4zw5lFsnZzBAvgRnEDQMbMG0XrCSnEd8=;
 b=oSRyfyNdA7f+d85uRmRPlbydjBdi6197IuMSJqsXczR7D+wr3nPJ3Q174CFp0/YhU+jCT4GvRF2iiNLbca7vCLQP3DmTrCWTTxHxKr0ksdygctWrhaUnH+ozBnAL73EOR2NjgtdENSe7ECVJ0ggUhrc94OnKcMugNOmwd/YiZJY=
Received: from MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13)
 by MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.22; Mon, 9 Aug
 2021 05:16:15 +0000
Received: from MWHPR11MB1789.namprd11.prod.outlook.com
 ([fe80::b81c:ee06:fc82:5fc3]) by MWHPR11MB1789.namprd11.prod.outlook.com
 ([fe80::b81c:ee06:fc82:5fc3%7]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 05:16:13 +0000
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
 <nandhini.srikandan@intel.com>, "Demakkanavar, Kenchappa"
 <kenchappa.demakkanavar@intel.com>
Subject: RE: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
Thread-Topic: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
Thread-Index: AQHXhQzRAwmHks3vwkaXAOpN1lCV0KtmfYEAgAQx92A=
Date: Mon, 9 Aug 2021 05:16:09 +0000
Message-ID: <MWHPR11MB17891909766F5295AF34B0578CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-3-rashmi.a@intel.com>
 <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
In-Reply-To: <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: d49de5f1-ba71-435d-7dca-08d95af4cebb
x-ms-traffictypediagnostic: MW3PR11MB4554:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB45546FB10F4B4F22297C3BD28CF69@MW3PR11MB4554.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9AvX5MHqifXGr78x7Ty/7DaWt1LcGwNAzFHvUQH5HPjyMsTScViBttxRYqZRaqLdL42V1bWIZmUOKjZxuiu/FuX5uH/ZtkU2LHPKwmWmvjfriu8LYtYDPWIDx41WWuOXc5UTtX5OuXZ3CKaRuoPs8grd1mWP0cy2lyvCbHE2XiUgcNCbUDYUB+eZAgdTKY5fdJlGvoGY6KLWJL0Rcf9uawzi/7QAOx7xPB3WKF6KjTI00vWvd+T2vv+xXI/+yC0LIMxL9Z0D4a3bv7HHlJvBSFuQtw506cm5hM2mnbpiGMGcEtOtlIbGc/+L6DQMAMZpJyQFnBEvT4YeQCfikkyO/HHWqeY90ia1h9oq26VFubihSOKsslNwzfznySvEvVH1YmOPu0mzwwEB6XG+WezPp78jRxI3ahvyURLJRXJVYvrC34WUBG8zfCrstcB5pWHKnURg2ZD5f6oVav6Z80D6vB+BuZFt4eP3at4xEOV3MG4aQZ5BUB994QfWftzT4+M/jlwU3p0j75+xC2zFXa8FYmFhjQR8KWJaTFt9ndjr9gT4gr+caIVR8jXPmCwN97khNzotp13fapUPfIC5GL8IfuQxA3ge4Dwyvo9iO+RjcqjGBsBDB3gybPOvLgxn4QVzCZHjSN3lCU7xDowvxAQZmz2CjbaAKe8RdCL0+9Y5mq/HYICjfsrTcYMdbyWs1SmjyBwrtD6QaJBIAhRSlQCuNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(2906002)(55016002)(26005)(8676002)(9686003)(186003)(86362001)(6506007)(53546011)(52536014)(478600001)(83380400001)(76116006)(66946007)(4326008)(66446008)(64756008)(66476007)(66556008)(7696005)(6916009)(316002)(6666004)(71200400001)(38100700002)(122000001)(38070700005)(33656002)(54906003)(7416002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDcrKzliVnlLUTVlZHNoMmowOWc3L2VYUkU0REFoZ2ZYODRxZEwwLzBES3Jw?=
 =?utf-8?B?d2k0M0RMNEdNOTJJSTU4T2pXKytRQzlldXdsM1ZpVGEvN3o4Q3JEd3NqTTB0?=
 =?utf-8?B?QlpycXVKa3NDSDNLOXB5dXM1NEpMWlpLUWE3dytKWmJDWGdPZnpFQzdJcGds?=
 =?utf-8?B?cTAwYklVRHh4citmWXpXZzJaSlVPQTRhNDkrMVVLTURDN2JCd1lrdkJ1VUIy?=
 =?utf-8?B?L3NFS3J4NWFLVzQ5Y2U2V0pXUTZ2SjE5ZVB0NVEydTZTMFcxaGpxdVdnWU9a?=
 =?utf-8?B?S1VCVU0vYmxmaGE1YmtrMTEzaTRHdjJTc0hVQWtPN05vTEQ4SlZNbVVld2l2?=
 =?utf-8?B?T3RVYTNpdDRab0JvZ3pzZ2F3ckhtVjJzWkhSZHZ2elV5TW5LRDd6QmVLL0pT?=
 =?utf-8?B?UURnMU5HSDNSZm9kTmFINUs3TlBUY29wYUJUTERwcGd5UUFiUEdRNnFvSE84?=
 =?utf-8?B?c1R5Vittbm1ocWdzT216eDJmdTE2YTlrb2gxZm9HRjlHa2Y0SER3MDdFd09q?=
 =?utf-8?B?MmlZVXovS1luN01GUXFKNjE1U01wcldoa3ZFSlh4WVNWMEo0Y0ZBWTlmeW40?=
 =?utf-8?B?eXhxZkFNQmJJMUU5dzRNTWk2N3ZvMWx2UjJIZmhUbW9IR3lHVXMybFBZZjgx?=
 =?utf-8?B?Z2ZxZVFXeHBPdVY1VEJITmRKT1krN0hPbHF4dklPRkRCZzhKaDVJYVBZYlBB?=
 =?utf-8?B?eTBDYzY3UzZ0bmcwcVE1eDduVzhuVGxqcW5vbFZYbFJrUndwOHI4ZFFaWDdC?=
 =?utf-8?B?Z3YzWmp6OGRTVXFtSE1uNkEvNWk4R1lINmcwbE9HOFNpdzcyWXpkMW1ybTZ2?=
 =?utf-8?B?dnhwMnlQNUtrWkhKV1o4dXRONTRZUER5NlVMKzVveFdLU0hJRDRoOVRHTVY5?=
 =?utf-8?B?TlEydkxvSDdtQzgxTzlpSmcreDM5Sjg0NTNBTUYyUGlQaktGY1UrOC9LNXVM?=
 =?utf-8?B?YzI5UmZwODlodTdleFlVTitDOTliQWt1QzRONEE2RlMyN3gvM0lKK3g5UWtU?=
 =?utf-8?B?dnZpMDM1MXJhL29Nd0VYSHFwdHdLdUJXbWdnQTZKTk90VDJXUkNUU2N6dGp2?=
 =?utf-8?B?MEk3MnZDZHROTnJTRlFrWktQQ21Ud3p6U0xWZlV6NU1GY2QveEtETkdOcFl2?=
 =?utf-8?B?WnpTbFVXenZsZjBnbmJJVGtrOW5QcElyeTlkc1BnRDlVZUhWbkh6OUxTTzN0?=
 =?utf-8?B?Wkg1dTdJbDNERHBUYy9hZHVNSHBwUWxielBzaURvRFY2SE1FVDZJSXhBTUtL?=
 =?utf-8?B?VnZrMzlnWDZ5eG5EOEw1ODJQaEZ4dlZmUEhVeFlwN0FVeHZ6RGh0M25kUk1C?=
 =?utf-8?B?clNoOTAwYW55S0lnRGFiT1ByVmdmL05iTG5Wem5lYjZqc2puSFFYaEVKMTRX?=
 =?utf-8?B?NC9EZjFyekZtcVQ1Z1VneXoxVVdyWi9FVEkyK2MzU0tDNm9DM281Wklsdmph?=
 =?utf-8?B?NmhDMm0xbWJTVmJUVVlPSHN0azVyUVZ1c1hSL0VhV0NJK1Y4L3NSZFRtb3dW?=
 =?utf-8?B?NytaNU5GT2ExL0RnL3VPNzdmRjVPV0J5bEx0MzZhSm03dit0cWRnR0M2M2hr?=
 =?utf-8?B?T1JHeFdGNVFobE82NlJkQWtLOTBqelZMeEYyRU5MODZpSTJZMEtvV2xteUdM?=
 =?utf-8?B?ajNySXEvTEZ2K01WWEdjTkR6d2ZsTTVkSGNzbkZSaTR4UjlwUDNub2RjYlFV?=
 =?utf-8?B?YzVKbGR6ZzNvbXNhZ0U4b3QzYmNyZVlRYTNhM0F3aUowL0FCdk1VdWVDVklU?=
 =?utf-8?Q?tWsnA0GsY0N74bBj8j/gImVujaNZKsglWBIv7Yb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d49de5f1-ba71-435d-7dca-08d95af4cebb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 05:16:09.2849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FOzZlVuWA/f42oqXTYw5tuqaIBH2Qzc5cvq1ZdK6J53QQ9grM6whICCMrcB/rP4l4OCv7rM5F2VhdP3Wfe2JIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4554
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210808_221628_990299_57C9EE7F 
X-CRM114-Status: GOOD (  22.66  )
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
> Sent: Friday, August 6, 2021 6:36 PM
> To: A, Rashmi <rashmi.a@intel.com>
> Cc: linux-drivers-review-request@eclists.intel.com; Michal Simek
> <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>; Linux
> ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Kishon <kishon@ti.com>; Vinod Koul
> <vkoul@kernel.org>; Andy Shevchenko
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
> On Fri, 30 Jul 2021 at 08:33, <rashmi.a@intel.com> wrote:
> >
> > From: Rashmi A <rashmi.a@intel.com>
> >
> > Intel Thunder Bay SoC eMMC controller is based on Arasan eMMC 5.1 host
> > controller IP
> >
> > Signed-off-by: Rashmi A <rashmi.a@intel.com>
> > Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
> 
> Rashmi, is it safe to apply this separately from the phy driver/dt changes?
> Then I can queue this via my mmc tree, if you like.
No, the phy driver/dt changes must go together with "mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver" patch.

Regards
Rashmi
> 
> Kind regards
> Uffe
> 
> > ---
> >  drivers/mmc/host/sdhci-of-arasan.c | 29
> ++++++++++++++++++++++++++++-
> >  1 file changed, 28 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-arasan.c
> > b/drivers/mmc/host/sdhci-of-arasan.c
> > index 839965f7c717..6f202fb7a546 100644
> > --- a/drivers/mmc/host/sdhci-of-arasan.c
> > +++ b/drivers/mmc/host/sdhci-of-arasan.c
> > @@ -185,6 +185,13 @@ static const struct sdhci_arasan_soc_ctl_map
> intel_lgm_sdxc_soc_ctl_map = {
> >         .hiword_update = false,
> >  };
> >
> > +static const struct sdhci_arasan_soc_ctl_map thunderbay_soc_ctl_map = {
> > +       .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
> > +       .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
> > +       .support64b = { .reg = 0x4, .width = 1, .shift = 24 },
> > +       .hiword_update = false,
> > +};
> > +
> >  static const struct sdhci_arasan_soc_ctl_map intel_keembay_soc_ctl_map
> = {
> >         .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
> >         .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 }, @@
> > -430,6 +437,15 @@ static const struct sdhci_pltfm_data
> sdhci_arasan_cqe_pdata = {
> >                         SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> >  };
> >
> > +static const struct sdhci_pltfm_data sdhci_arasan_thunderbay_pdata = {
> > +       .ops = &sdhci_arasan_cqe_ops,
> > +       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC,
> > +       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> > +               SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
> > +               SDHCI_QUIRK2_STOP_WITH_TC |
> > +               SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400,
> > +};
> > +
> >  #ifdef CONFIG_PM_SLEEP
> >  /**
> >   * sdhci_arasan_suspend - Suspend method for the driver @@ -1098,6
> > +1114,12 @@ static struct sdhci_arasan_of_data
> sdhci_arasan_generic_data = {
> >         .clk_ops = &arasan_clk_ops,
> >  };
> >
> > +static const struct sdhci_arasan_of_data sdhci_arasan_thunderbay_data =
> {
> > +       .soc_ctl_map = &thunderbay_soc_ctl_map,
> > +       .pdata = &sdhci_arasan_thunderbay_pdata,
> > +       .clk_ops = &arasan_clk_ops,
> > +};
> > +
> >  static const struct sdhci_pltfm_data sdhci_keembay_emmc_pdata = {
> >         .ops = &sdhci_arasan_cqe_ops,
> >         .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN | @@ -1231,6
> > +1253,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
> >                 .compatible = "intel,keembay-sdhci-5.1-sdio",
> >                 .data = &intel_keembay_sdio_data,
> >         },
> > +       {
> > +               .compatible = "intel,thunderbay-sdhci-5.1",
> > +               .data = &sdhci_arasan_thunderbay_data,
> > +       },
> >         /* Generic compatible below here */
> >         {
> >                 .compatible = "arasan,sdhci-8.9a", @@ -1582,7 +1608,8
> > @@ static int sdhci_arasan_probe(struct platform_device *pdev)
> >
> >         if (of_device_is_compatible(np, "intel,keembay-sdhci-5.1-emmc") ||
> >             of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sd") ||
> > -           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio")) {
> > +           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio") ||
> > +           of_device_is_compatible(np, "intel,thunderbay-sdhci-5.1"))
> > + {
> >                 sdhci_arasan_update_clockmultiplier(host, 0x0);
> >                 sdhci_arasan_update_support64b(host, 0x0);
> >
> > --
> > 2.17.1
> >
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
