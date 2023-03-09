Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08056C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iI0CU+RDz2Sru9xXXxYmwPztdN/pQySKoMih/VXTjhg=; b=RUkP5yZcX3t1pm
	1QNjKrf5/LSY44BVnnEcIRRKAiKmquhX5TN2Ped5eZbPNTy3z79Vc7h22JXSRTwwKvGL46T2JJbT5
	8BaMo9TMeU0e0EI5Wr1kRtG13g+UIqwjOA3KeC2qahZsWZ9T9Q6nIagtutol5NWoPuEyq4eQkM3e+
	bjfFfKRExM0Wh8NcXlo01+bkhAyoVh7j8hWkV91Rf9HRHimBt6kAKMNODo5xYACA/CU7tRpi2289Y
	flagbMTOJGWK9pGo6B7V15xAavkOXLExJoUi+X+qeucTGbrB7HGBulFQ/2cIzlxK9tztR3QYgk9f0
	BThCAY3yBc91Kyc8eabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9zz-0088jp-Fm; Thu, 09 Mar 2023 06:43:35 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9zo-0088iE-AN; Thu, 09 Mar 2023 06:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678344204; x=1709880204;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Of/Y0BaC6F4pHEFY2stwvByH8/NPe4eu5jJn+kl+aIE=;
  b=FIuvSVHo+k25H+enGthPbW3gDIVReIiKqzLy5dHaNLqiihfT1PhRkFJZ
   RXPCZrt7HVgKJ+1/y144WBei1IPxvThTVX/F45yiCxmqmvp7q6X7FKIMj
   T6SD7IfYmsvo8QJU25W9fcOky+kfbvHkWwiDxFe68H1ZlzAJ5IfAmNufE
   7RyadvrgBVPQPGZKM+xcjV/avP5eyxJ2ZAt7YbmvuLefnc0SNYj8RHQ8/
   bqV9lgChhj76ypNR6yM9CFpmwJ0DyyOvEIs5PCQnKoh7do/gAXTZnpge5
   Baj6VEMFp/RZZ+lRFxdoWHEYyx2gEC4gzeObZtjafrOO04rpaATFf+/+k
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="364004241"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="364004241"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 22:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677260918"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="677260918"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga002.jf.intel.com with ESMTP; 08 Mar 2023 22:43:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 22:43:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 22:43:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 22:43:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 22:43:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwFJk/PtX+KG5TXYd5OgzXgI+5KkFhhtEj2ULaYrulRxHaOo7q7JmizSzrVa8oD9hdTQYnHusPkHwRAmIarIQKUmQlrq84lzOC6awKW7sqXSvfAmqY2xb78Exnawi38L8TBHR+QxEIH41GpDjyyPeRvV5GGbvPffKYxuI+OzMbme7S9MCIP4BdQIIaj2DzH8rN7LHsXDqEcIeBto6+ZB/NpRzgBOGspE6VEqqvWl+QHqPG/lq8Cg876JCLB0iApc0C70FY3aZc/gfz2JiZHdrQeJvxWMc7/iZ9c+3X69mkbp0u9w5b6c6NBl+Fx6EKF+0ttwihrbpeNjg+xG41ifYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Of/Y0BaC6F4pHEFY2stwvByH8/NPe4eu5jJn+kl+aIE=;
 b=kRbnbdmGnhmrN2y9ozd8L/KuWy06QNHseeIS5jUqPqDBff8D2Eidf23nJl+afsVb+TLRBEpYypHC8HsPHtuJ+gjYo5bjauNDuPMOL9q+I6KXf4iWtW8lXi0pnruwuM+s/QC/+XFUNRkzwPsvi9FPm43y5wmGWgmNzdXIjwSJOC5Rw0MeGpOVkXv/Y1HnXWMBu9KSdyWbwhfQOAbHMD93/WfBB+a+0XUz9cNGBE/XGp+zQl4tBVAC1V0kH245xsz2HkzFhkIvdJrY4EmEDnX+ChjQdQCzZeRr3LeLsX+UunpLn4420wqpWbewAI7Ig4euxVxDbTUINxu2HBil7jLR0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3065.namprd11.prod.outlook.com (2603:10b6:5:72::15) by
 IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Thu, 9 Mar
 2023 06:43:15 +0000
Received: from DM6PR11MB3065.namprd11.prod.outlook.com
 ([fe80::fcc8:cfc8:5056:5f8b]) by DM6PR11MB3065.namprd11.prod.outlook.com
 ([fe80::fcc8:cfc8:5056:5f8b%4]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 06:43:14 +0000
From: "A, Rashmi" <rashmi.a@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "ulf.hansson@linaro.org"
	<ulf.hansson@linaro.org>, "michal.simek@xilinx.com"
	<michal.simek@xilinx.com>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "andriy.shevchenko@linux.intel.com"
	<andriy.shevchenko@linux.intel.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "mgross@linux.intel.com"
	<mgross@linux.intel.com>
CC: "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>, "Hunter, Adrian"
	<adrian.hunter@intel.com>, "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
	"Srikandan, Nandhini" <nandhini.srikandan@intel.com>, "Itha, Vasavi V"
	<vasavi.v.itha@intel.com>, "Demakkanavar, Kenchappa"
	<kenchappa.demakkanavar@intel.com>, "Zhou, Furong" <furong.zhou@intel.com>,
	"Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>
Subject: RE: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Thread-Topic: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Thread-Index: AQHZL7b54OzBYjM1LEyj3sR4Tt2gya6tb0sAgETROwA=
Date: Thu, 9 Mar 2023 06:43:13 +0000
Message-ID: <DM6PR11MB306560B02E22BC934A6BFD1F8CB59@DM6PR11MB3065.namprd11.prod.outlook.com>
References: <20230124054427.28808-1-rashmi.a@intel.com>
 <20230124054427.28808-2-rashmi.a@intel.com>
 <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
In-Reply-To: <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3065:EE_|IA1PR11MB7367:EE_
x-ms-office365-filtering-correlation-id: 2e9a7baa-c379-4c52-109a-08db20698e85
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HYcfrpV3Vy9DX5PVUcYmxIrvh63+Lq0YbZ3z3kxiv+NmGFqJsSIaN3qfzPD8PwlkVov2lIfWaPyd5FE0DBccs3Kbc9L5h4ExFc4ym6inHFx+0SlAyBVq70dGEMJXlQ+hUuev+k2OuPGLhgWuPcPGrAWVvWQxpVKx2SUkQ7H4TDwZ3mwJ66FC3Quh0ExKiMJ3ORSUSzHBQPSVfoSpFytCXrmjWYTKQXpgtqEGiQwPPWhpx++e/vfbs7ppkz4oVUJfcSuiPeR9f09N4TgTPVcUUGwOr3QnEj7Jzv9pm9mh3f4EQnGkoxypnLHjCOhD15sOYuHVgEXraABVWK+0h2hXkAu8q4PY4BJAKwYsiKb46y0tu/qICCIkKlPfIVEn/QGZZmoT1mg+GgVOametwyrBrzG2HWBEdbSUYFvRr0NkteJ6EwrKsxYNLD1c8HlGfbPg25cjd46CjLR3it0LkOtrfq/clqIZZ+B6R6c9YIBBG6XAuJ3p0s3TAswCd4Hxn1cWY9zdIU2YFvu8sTX5SdEp6PpTuBfV27XGO1CBjkubOdfUYP88eeookA+09P2TYbHfOa+65XbN/BEyWTj2q+6nxTDiApJXRzgZ7kPWKzLMGorZxajpDmBa6gF9nY9zEC3gHB3rjulusrf+TfpeLuvhyxj36COKuo3YXG9esAw74W7QZPeX8JnW7j3olSgWjfkDK+ed2bf+V+iSOPc+A/BOVKyiRkbyN2lfNmBUAkUypaI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3065.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(366004)(136003)(376002)(39860400002)(396003)(451199018)(33656002)(921005)(110136005)(186003)(38100700002)(54906003)(316002)(66476007)(52536014)(71200400001)(5660300002)(478600001)(8936002)(7416002)(7696005)(8676002)(66946007)(64756008)(66556008)(2906002)(76116006)(4326008)(41300700001)(66446008)(122000001)(82960400001)(86362001)(6506007)(26005)(53546011)(38070700005)(55016003)(9686003)(55236004)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVZrTTRsZFB4Wm9pMmdtYXo3MHBrN1E5ZCtlWG5qWTJLSHpUWmlydE96eDZF?=
 =?utf-8?B?eVJqVk9HbFNuM2o2bkxMZllNWEFKS24vSWVzRFpnak5ZY0paUEJiYk9VVzBB?=
 =?utf-8?B?c1RpZHkxQVROdVhWRzBXcmU1Y2JKYnZpTG9OOWhiUVlZeUQxZzNJNGwxSm94?=
 =?utf-8?B?M3RpRFBuQy82SWZDaW9jNW1hSE5QMVBaWmhTN0NaNzFEekZ6empVZWEyRzNX?=
 =?utf-8?B?N0xhUTl5UHpNY2x0K1ZBMlJLeTNZbHExZjRiT0Rwa3RBYXROdkJqbExoWHJy?=
 =?utf-8?B?VDhMRjBBT2t5dW84SHNPSGZubGdyTGlYNXBtT3J6VWlBcVk1NkhZbkkwdWlp?=
 =?utf-8?B?bnJOd0VBYW9JbGNkTXRNQldyNEZQdVBLU2hCaDhSUnJWZ0VCb3dRU1NMQXo2?=
 =?utf-8?B?RExXWng2Y2ozR0ZEdjhiRTV6bXhLUzZuM3N0Z0VzWi9hQWIzTjYyM2JBZTV1?=
 =?utf-8?B?cjQ1RXlQNUV3RW52YTBRaW9STWFYYUVCSzR4LzVCZ1RyVmlNT3hPRnBTazh2?=
 =?utf-8?B?dnh2cVI2Q3lCY3hIaFhtV0dKL2VDbEZyV1JEZ0hmOS9ST0dQaDhWQ3hUVVpm?=
 =?utf-8?B?ZDg2dzhocnNBUzhGN2kzczh2L0l6bFpqc1ZJWEowc2hXdVZ1dGJWT05YV1A2?=
 =?utf-8?B?QTd6cFFialVwVlZpYkRzTDRGRkFocjFFMEM5VjNrWHdBNVZwOUo0MERYVXlr?=
 =?utf-8?B?L0prMkxVajY2OElnMGlRZ1JVMEk4ZnFSUVNhK2J1aUJKOGZPNlFSRmpjaTlz?=
 =?utf-8?B?K3pDcy9waCtXamFQZmt1NjBYNFRmdmJUVWxhekFrVzRxOGMxNWxsNXJQdXFv?=
 =?utf-8?B?VXlFUnJRdU1idEkzTFlTV3JLV2J2cEc1ZmUzSmxOb2N6RDBFMXJ4dDRtV0NM?=
 =?utf-8?B?V3FQd2krSFhKUHR4V09nYkNSa3MzWHNhRHVaRWVEd2RUZlY2YUJrdUtSYWpY?=
 =?utf-8?B?WlNVSThyQkJXMDFJVVpFenNBd0NIa0N4cHRtVVY4OFNmdHlPUFkzSktrcEJO?=
 =?utf-8?B?WUM3SjhERTcwYXZLVGZ2ZW1RR215SUc4SFI4QnNRRTZEMEZKNzRzamNIK25P?=
 =?utf-8?B?RlZDeWxFMnVxcDJydWJaOTVZR1hEMjQ1aFM4ZjJrZ0c0RjhLbk1PaHdnVWtN?=
 =?utf-8?B?eTRML0xGaE9MOElta1FPTFJnSmNFOHk2MUF4b1I4cFdZelBpSFZKcUgyV1pU?=
 =?utf-8?B?ZHZpeEFGcXNFWlRuYS8zZ0x0S2V6QW0wRFlyQUNqd2htZnEzcHB1ZlVBTVpY?=
 =?utf-8?B?UGdIZ3ZmSnNXTDg1Z2tPb2IwQlVIZ0ZTT3dRVjhMS1N5Sm42cWZXTUtPaDIv?=
 =?utf-8?B?WmdIdVhMemlRVjQ2Q3dibmJpYTBaNmpyNlAzeDB2bk1zbytaUmdRK3QwZVFV?=
 =?utf-8?B?dFdTRmlSZHBpOGkvSFc3bWhSVCtZMU5FNFdyQ2FmWXR4ZW03WEZKYWJxMHQ0?=
 =?utf-8?B?Q0NLZmY5RExUZWVKMTltaVJVV1Q5d0FvZkt0bGI3OHJkeisrVDBtSkt4V0Nr?=
 =?utf-8?B?ZXFSRi9HNmJMNmlGZDRqSHRkVnJlOU5mL1FUSEZMck1lYk1vL1E1ZXJleWx2?=
 =?utf-8?B?ZXUvcXo2bTFsYkQyQkNqNzlFQklSZTkvM1pXZGdlcGVUMkxUWnhTWHRVWU1H?=
 =?utf-8?B?SE1nUUFnVUNKM2hrOHJLVnFIOEZzNzZpbXpHV0NkN09KZWdGVHBCU21TcGFE?=
 =?utf-8?B?eDlLVEpGcGVvUXJpWmlaZTNBNDU3NzFCTTdJVDFnUHpqSnVPbFhTRE9qTCtX?=
 =?utf-8?B?aHlucUlkRnI5N3pXRDNSVy9MTVJzZmxTdENLeEVBSnJQTkVnQ2xDckx0NTRp?=
 =?utf-8?B?Nys2NzlDMm11R1BkVEFYcmJVK0YrY2drcUtqNGlySFFZamM5ckJRb1FobUd6?=
 =?utf-8?B?dXB4dG4rVENoUDJ3Z3NKMlhESDlXV2tYVHplK3YwNkNkR0xTN3FSVGJVTERW?=
 =?utf-8?B?Nk4xN1E2aURHb1lVaUJQRzQ3cW56Qlk1aFUveUtDazBUaThpMjV3SDdNUi9x?=
 =?utf-8?B?bkQ5d1FqQXY4Ui9XekZpb0hqSU9HWmtKbnVORVAxV2NTU2ZIQktEQk1ZRzRL?=
 =?utf-8?B?ZTBuTDRsUXROMDI3WndEZzNhR0tJVXVVQkdkc2M3UHE1RkZDaVVzN2hmd0hn?=
 =?utf-8?Q?HLd5rQci64fZdun7nZ3Ok5s26?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3065.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9a7baa-c379-4c52-109a-08db20698e85
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 06:43:13.7172
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQOq/Rzgh48xOPs7VQ3oB6KoMC7t6q4mxaW/AruTU4Mqu5qLfOjxNsWM5IPflNUFOsejSBXKzl83cg84IjZD3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_224324_433801_9FB4441A 
X-CRM114-Status: GOOD (  25.09  )
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
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Tuesday, January 24, 2023 5:01 PM
> To: A, Rashmi <rashmi.a@intel.com>; ulf.hansson@linaro.org;
> michal.simek@xilinx.com; linux-mmc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; robh+dt@kernel.org; devicetree@vger.kernel.org;
> linux-kernel@vger.kernel.org; kishon@ti.com; vkoul@kernel.org;
> andriy.shevchenko@linux.intel.com; linux-phy@lists.infradead.org;
> mgross@linux.intel.com
> Cc: kris.pan@linux.intel.com; Hunter, Adrian <adrian.hunter@intel.com>;
> Vaidya, Mahesh R <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini
> <nandhini.srikandan@intel.com>; Itha, Vasavi V <vasavi.v.itha@intel.com>;
> Demakkanavar, Kenchappa <kenchappa.demakkanavar@intel.com>; Zhou,
> Furong <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa
> <mallikarjunappa.sangannavar@intel.com>
> Subject: Re: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
> Thunder Bay SoC"
> 
> On 24/01/2023 06:44, rashmi.a@intel.com wrote:
> > From: "A, Rashmi" <rashmi.a@intel.com>
> >
> > This reverts commit ab991c05c42853f0b6110022db9bf30fcc6323dd.
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people and lists
> to CC.  It might happen, that command when run on an older kernel, gives you
> outdated entries.  Therefore please be sure you base your patches on recent
> Linux kernel.
Acknowledged

> 
> >
> > Revert Thunder Bay specific code as the product got cancelled and
> > there are no end customers.
> >
> > Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> > Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>wq
> 
> Stray characters.
Acknowledged

> 
> > ---
> >  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25
> > -------------------
> >  1 file changed, 25 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> > b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> > index 4053de758db6..0d5d21dd30bb 100644
> > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> > @@ -88,12 +88,6 @@ properties:
> >          description:
> >            For this device it is strongly suggested to include
> >            arasan,soc-ctl-syscon.
> > -      - items:
> > -          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
> > -          - const: arasan,sdhci-5.1
> 
> Instead should be made rather deprecated, unless you are sure there is no single
> person in the world using the bindings (e.g. with BSD or bootloader)?
May I know what has to be done in order to deprecate the complete patchset?
We have a proposal to club together the 2 driver patches and 2 dt binding patches and send out new patchset containing only 2 revert patches.
Patch 1 - revert dt-bindings patch
 Revert "dt-bindings: mmc: Add bindings for Intel Thunder Bay SoC" & Revert "dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings"
Patch 2 - revert driver patch
"Revert mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver" & "Revert phy: intel: Add Thunder Bay eMMC PHY support"

> 
> 
> 
> Best regards,
> Krzysztof


-Regards
Rashmi
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
