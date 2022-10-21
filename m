Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8116DC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 03:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtMRo6dIVHgoKNFcMnSiofnw1G3hwoh+YEUnmjZ0U9s=; b=fB9RGHc5F+8sSM
	kqEQQhF9Si2QwssJ9isChTCZrE9rfNLYt7OKetAn61eIdR84uhCzwUvUDDcrMqjcpOOkHWpCE1sRW
	x5WzAht23n7DRGFMa9PIrJ33kKzEFKkO8Oaq6uUcpne4t87DvMybqvYrUsMRzMOZAorwujExE7aJo
	O39yF2WGOnUnOvAm04XBJMLxLZZv5qMJQV55DkySVwGg/5O9nGREjjUiEob0TfKcUrZo//tUZ3A6S
	hfxUfd9sjC7lNIQw6wKvtzBG/hvV720IKhm2Sw40dy2+1r97679WxLjfLYtdT3P3E68K1qOcdf9Yu
	tmP74LM75FmFI/OfyaLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oliQR-004gEW-VC; Fri, 21 Oct 2022 03:10:23 +0000
Received: from mail-bn7nam10on2055.outbound.protection.outlook.com ([40.107.92.55] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oliQO-004gBM-Nf
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 03:10:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBc9jRGvANx+Nn1mLmvddYpTAjnKDiRyp/cKSqWXgQtkHohLdKWjsji3fMmj6gj+WTMXlqA30Fg053lIy6dJsSJlBAlE+JMNjYKXzlqDEQgs7qagoqFpJ0Fs2D5bBwpqwbmfODlYqw35bDA4l/QEUkLVBbNWiloy0zYZSpDrwVuQNofPfE23iqW9YsjnR4ImuWLHm/vJxzF1YC72/xrOEL1CHudgYBjFUyVjk2EG4cD+lWKvz0V1iYpUcZk/DCagbLVvSEwgshQAkD+a9GD/zHSDIfKUw0VmSwmJiU1aiLPvyxa7u77wPhPcmqbxt0xGa6Ocwz2xKZ3xweY23BoJeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xgyzSMw2+DudyAsWBkbOfn+c3Us/JCJeb+MVgNc4t5I=;
 b=kzMX0JK2bDpeMKbsSE/KOPfeYzE1TPGNI5g+G3Hh3cQGyKpHCNUXUsCBT44fjP5tUEToLCqe6XHcBwNwaFAqosImleKM9ZromswPP6Zxbw5e1PNIWhhnwKT7oDMBD56MuWqISA5cv7xRTynbJxiN+/LajLJFJZj02kJ60KmzCPhrZo40hOSFhOMESNmPHC/L3SerT6xCmFxcoNFrsqFBHB2/mIrC5MRi333qK4j3pxsUXq4htamwLqaxq0fMZNAH0X86hDSB2dB5rsvIA2S/tTfXzOvh/Ts5SANwMFz1OIrKJqEZ/09zWLP8s1sSG2fN8DdL5kiPn7ysxk1MJe39pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xgyzSMw2+DudyAsWBkbOfn+c3Us/JCJeb+MVgNc4t5I=;
 b=Sdstw+RkMB1krxVu6DFMMlDcwQ8ooAgZ7hPAgnKvWrQaJag7/RkD77nj4xBsef5gW2odYVvsYkY8CQHPMOAJwcr2RtsuFOsrRo796AMEQfqpAH58VvP13YNzdZ4c8VLgr5Wi+FL/NNovSuJwLZr2hzuCXGrEskwiwYy5jPt8hbtFcD64PmASffMUZ5cmRq7vg2me50oGsDIyVPzGfLvTAermLNtetuqle+MGJXz/HvUoIGq9nUUkmGOvc4xjyJxjN0II1cq4ddn8yJndM4BruAm+b/yAUNNu8aUs8K9sJYUN7ks/bGAtXWkoDdcCnn0D35PDQ+JsMBgDxt99enNoyA==
Received: from DM4PR12MB5988.namprd12.prod.outlook.com (2603:10b6:8:6b::20) by
 DS0PR12MB6485.namprd12.prod.outlook.com (2603:10b6:8:c6::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.26; Fri, 21 Oct 2022 03:10:14 +0000
Received: from DM4PR12MB5988.namprd12.prod.outlook.com
 ([fe80::f992:1d1c:9a:71f0]) by DM4PR12MB5988.namprd12.prod.outlook.com
 ([fe80::f992:1d1c:9a:71f0%9]) with mapi id 15.20.5723.035; Fri, 21 Oct 2022
 03:10:14 +0000
From: Haotien Hsu <haotienh@nvidia.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
CC: Jui Chang Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
	<jonathanh@nvidia.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Wayne Chang <waynec@nvidia.com>, Haotien Hsu
	<haotienh@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Remove usb3 supply
Thread-Topic: [PATCH] phy: tegra: xusb: Remove usb3 supply
Thread-Index: AQHY2JYu6BOcgfNol0mxxdlP1PdQvK4YRBmA
Date: Fri, 21 Oct 2022 03:10:14 +0000
Message-ID: <5e3792d9-4814-a813-3cef-815242661d64@nvidia.com>
References: <20221005084031.2154251-1-haotienh@nvidia.com>
In-Reply-To: <20221005084031.2154251-1-haotienh@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB5988:EE_|DS0PR12MB6485:EE_
x-ms-office365-filtering-correlation-id: 19948d17-e3fc-4169-b14a-08dab311c622
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  ERmg8JNZjBKTK8nQ7Max7vrKYl2wGunPA00PnXiB5fkPdVVLw7+7ol8a0GWiyT+9QHN30bssU8P/MxXVQ3RFgpHnuFoI/u5CKaK1NF8VTXBgvG/j7BagSHjMr7OpvZ2y/OfADva2Dj2vk1tC+xySyGAj6z+yjsuwQxu8CnQFm+yodEXsB4mHLp28PbYi49p+geipZ5mELkpPUbe2m2I2P48W5GaESLD05rdHp3936H8IlkZRbmCuQA/a/aMvbT88DuJGEqZAOUdP26sItvePf5TQk7oyj1gAZVYj7ZqwB8EEgllsBhFhAaJnQNZFAwjQtRZ/CNBEM7jyLD5qCSjPrhaheiLaeoO3WAHP3WBT9jqGRiUn+wH0jqi+5kIdn5H6V6pGrllqVg1XANiKuCqOTWf2ASmC/9BIizMz8hZUv5BYIbVw3U0agdIk2RVS47tEj2uF2KLZc+T71EXbcf8lPXR88VhPQRrJQi0PqOc5CQHAA5FuDSygCCmqT5y1i3sDMLtVqGK+0+FwQjtt1ZPq331TpLIncfvrdSMNORojCUGdKRobLTpuaP3YbkURUw5mBJ2iWBUujV9n5XbGY/7fHPn2y6oFCnk5mx/R1B5n4q+BK7GPCudNcIbAV3kppctEXQRWCWh4F9rqAT41NWTxD92x6HV2ZZ/ABiXORLdeUZP92CvB++9bf8K0OLR4Xxrh/NtMVSF6dEEZQtIKOqNF3Jziev0gC/La2LLIMKocsxp7cNEP4hzmt8ArwfGtBkxD96tFqaBQcmDJNh60sRmWAQawsQcSwRWcxHBcOT1wpKA=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB5988.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199015)(76116006)(36756003)(31686004)(86362001)(122000001)(31696002)(5660300002)(2616005)(2906002)(186003)(41300700001)(91956017)(6486002)(38070700005)(83380400001)(4326008)(38100700002)(66946007)(6506007)(26005)(316002)(6512007)(66476007)(71200400001)(54906003)(110136005)(66446008)(66556008)(8936002)(8676002)(53546011)(478600001)(107886003)(64756008)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?aFYzQTBWNjgvNzRtUjFIcVlJd3d0T3VkRDc3RkxrK3JYZG5xQTNZdDZHalR5?=
 =?utf-8?B?enp3UTVpVlZPcUpPakQwQTNrbkpYeTVoYW1DZm1WWjA1MnFVR1VwRWhueEQz?=
 =?utf-8?B?TXZ4YWF0V2JQRk0xS0JqKzNqUnhHVHhER2VZZityZjExTmJaY1pvZ1QwRVVp?=
 =?utf-8?B?RHFjaE5pWkRzWnp6K3RDUng3MlMzam9WL21IeFJJOE5hOGZueXVHQWJLbS9H?=
 =?utf-8?B?by9ReW9lREFROHZMaXcrbzltWXo0NmJabUxoSmsvQ1RFMVNpNms2NjFuYnRH?=
 =?utf-8?B?M1BIYXRQQytIajJsa2hwRTFQUDdydmxFYS9XSlVSSUVOQmtEUWhCcjQwbkU3?=
 =?utf-8?B?aGJ5QWZuNWx1VjcxN2NvTDc3bW1zc1JDK2JrcDlNSC9ZOTVoOVR1bEVpNmR3?=
 =?utf-8?B?cmdsUlJCbXEvUmt5NmFjR3NBS2J1Slg4dDAxUWRQRGFhOFlxcWcxQ0VzVjdR?=
 =?utf-8?B?SC81V1FrZFd3YXJZOVRucldyYVpEK2RWQzVvUFowWXlZOFV1QkZMUG41TkRj?=
 =?utf-8?B?T0JrUy9veDZHYUg1UDNuVDNsQ21peFJkektQbjBHUW5PMkFRMWNjaCtUUWZa?=
 =?utf-8?B?TjJCcmxWWWVid3lqd1N6aENuOG1WZm1UUUhTdEd0Q3Zhdy85RTVDblViR3hm?=
 =?utf-8?B?c0RSZVdITlZKaW95Sk9aSHBXZkRvb0JXLzM4RHhSMmlLMTBEWjMzR1o3Qkdo?=
 =?utf-8?B?eVNCQXpzR0MyejVJRml1RHFUY0lQOXBTRjZaNXBRZWVIK3Y4bDRRSEw4V1FN?=
 =?utf-8?B?cXVrWHdjQUhCUGY2Unp0QklVaHU5VXIxL3dhN2FqWCtvLytIV3lhem5aQzBG?=
 =?utf-8?B?WWFEcGxTRmd5QWZhb1lWaUg2QTEwd1phTjlFU0RBaElQcG9OUENTOVpMdDJZ?=
 =?utf-8?B?bElzWk1GekZCWVpwS3ZNRytUTTZYMUVMdzZrSFZTNkJUWHU0WFlGQzlNaWdD?=
 =?utf-8?B?RWl2SWtuSHR5QUl3Mk41b1BzWFN3M29HUnZ2cXdvbERBSmtNWmNINUxOa2ZG?=
 =?utf-8?B?WXFjUDN0aVlPK1k0SEFtQkYvc09pRmtsN3V0STBYa0F6MGp1OUhSNnhJekpy?=
 =?utf-8?B?WVdQSm1say9DQ1k1UGtUZm1EUk1kVXVqUDVkVFpGU0ppOGNTdG8rRWhTRFBS?=
 =?utf-8?B?ZDZvTjlxS3ZzR3hWMEtOK29NdVNoc0ZNWGhCUWRadHA3ckZ0MzBwNVBYRTdt?=
 =?utf-8?B?VUlISzhFOVBCWWZFYjRhQ0JhYWFpSGxpOHpuMCtPTDR3LzJURXArUWt5ckxk?=
 =?utf-8?B?V3ZCT25ML20rSE1HREpvZWJqZGs2S1ZvT1FIcFkwM0tkTXVmb3k3Q1gxcG1j?=
 =?utf-8?B?ZDdteWxQWnUyMkc5YXhwL05EZVRYWlFNclNtbzFkT040R0xBM0JQcFdVSnZM?=
 =?utf-8?B?b01MRjJFOTFGRUIwRVNYT01MMzdVTFFpMitnK1lPaks3KzBodTNMdTNnM1NZ?=
 =?utf-8?B?TXVHRXlWalhVd3B1R3Ezb0VNTkNkZHl6U1gydkNkV0MzM3hwVHJZUElMeTU1?=
 =?utf-8?B?V0hXS0R6dTgxWm1nWDFnczA4SUk0b0ZOZGVUd0dTNzZsTXpsck91Kys2WmRt?=
 =?utf-8?B?eUxPTURLaFVaRzlBM0YxckZaWjYzWS9kQkVUK2RLZzdHOHozV0xQVHdBekMv?=
 =?utf-8?B?Q0E1aThjN3pHWWZIdXdlcXQyUHNJMmpZVGdFNE00MkJsL3RUdDd0K25QMGV5?=
 =?utf-8?B?eHBLUkNJZ0d6OXVFSkxXaUxZWjROLzZOVWw4aXpIY1IvZ2hreGpadk53OUsz?=
 =?utf-8?B?ejhuMzJ4NUhaRjZRNy9PS3pUSEEzQ2ttd1BFT0pPc24yYlVQZDVZNGhqRFBw?=
 =?utf-8?B?VzlueWJRL3ZWdUtjN25oQy9VY3dGYWVFcUptN2pHZXl2NkRVbzFJdi9tWWRV?=
 =?utf-8?B?cER6Unlhb0xPZUJ4YkdyQ0labVBiYm4va1pZTmxINndOVkcyMjFmRXVHeXZB?=
 =?utf-8?B?Szd4ZGFUL3l4T0lpYWl5MUN0cVFNSGhTZkVGMDRTMHRGN1RDUXVRS0RYNEdo?=
 =?utf-8?B?WXJXdGR3WDdmK0NzbXROOFBSUWtwMVlZcGVNZUhwS0dtRDE1ekZ2TkFSZE1Y?=
 =?utf-8?B?dmtRenRXUDZndnFlWHVFcnhPN2sxczZIbGpKTFhuZEtZWkthekhJY1ZyZldK?=
 =?utf-8?Q?Bb9s1xYR5YPH3qju/jIvebzdc?=
Content-ID: <37E8A75B33990043B4D4DF14A3269DAC@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5988.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19948d17-e3fc-4169-b14a-08dab311c622
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 03:10:14.6168
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+JhfeMSG6Szsd+CctbGqpe7L17Eq3PU5uGl3DfnsKsagaQLWg1CnSF6tXN+VrRMsJq6qS7xiw8L/tGhGaZGkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_201021_060940_A7FEE63B 
X-CRM114-Status: GOOD (  15.97  )
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

On 10/5/22 16:40, Haotien Hsu wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Remove redundant codes for getting the vbus supply of usb3 ports because
> we get and control the vbus supply by the companion usb2 ports
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> ---
>   drivers/phy/tegra/xusb-tegra124.c |  1 -
>   drivers/phy/tegra/xusb-tegra186.c |  1 -
>   drivers/phy/tegra/xusb-tegra210.c |  1 -
>   drivers/phy/tegra/xusb.c          | 10 +---------
>   drivers/phy/tegra/xusb.h          |  2 --
>   5 files changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/drivers/phy/tegra/xusb-tegra124.c b/drivers/phy/tegra/xusb-tegra124.c
> index db56c7fbe60b..f4f75ea033b8 100644
> --- a/drivers/phy/tegra/xusb-tegra124.c
> +++ b/drivers/phy/tegra/xusb-tegra124.c
> @@ -1652,7 +1652,6 @@ tegra124_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra124_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra124_usb3_port_enable,
>   	.disable = tegra124_usb3_port_disable,
>   	.map = tegra124_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
> index f6099609f154..25db49789f41 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
> @@ -1213,7 +1213,6 @@ tegra186_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra186_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra186_usb3_port_enable,
>   	.disable = tegra186_usb3_port_disable,
>   	.map = tegra186_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
> index eedfc7c2cc05..ebc8a7e21a31 100644
> --- a/drivers/phy/tegra/xusb-tegra210.c
> +++ b/drivers/phy/tegra/xusb-tegra210.c
> @@ -3078,7 +3078,6 @@ tegra210_usb3_port_map(struct tegra_xusb_port *port)
>   
>   static const struct tegra_xusb_port_ops tegra210_usb3_port_ops = {
>   	.release = tegra_xusb_usb3_port_release,
> -	.remove = tegra_xusb_usb3_port_remove,
>   	.enable = tegra210_usb3_port_enable,
>   	.disable = tegra210_usb3_port_disable,
>   	.map = tegra210_usb3_port_map,
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index 46661a8d5bbc..0eaab6d846bf 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -960,8 +960,7 @@ static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
>   			return -EINVAL;
>   	}
>   
> -	usb3->supply = regulator_get(&port->dev, "vbus");
> -	return PTR_ERR_OR_ZERO(usb3->supply);
> +	return 0;
>   }
>   
>   static int tegra_xusb_add_usb3_port(struct tegra_xusb_padctl *padctl,
> @@ -1018,13 +1017,6 @@ void tegra_xusb_usb3_port_release(struct tegra_xusb_port *port)
>   	kfree(usb3);
>   }
>   
> -void tegra_xusb_usb3_port_remove(struct tegra_xusb_port *port)
> -{
> -	struct tegra_xusb_usb3_port *usb3 = to_usb3_port(port);
> -
> -	regulator_put(usb3->supply);
> -}
> -
>   static void __tegra_xusb_remove_ports(struct tegra_xusb_padctl *padctl)
>   {
>   	struct tegra_xusb_port *port, *tmp;
> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
> index d66b22bfeaa7..1b6b780efeec 100644
> --- a/drivers/phy/tegra/xusb.h
> +++ b/drivers/phy/tegra/xusb.h
> @@ -360,7 +360,6 @@ void tegra_xusb_hsic_port_release(struct tegra_xusb_port *port);
>   
>   struct tegra_xusb_usb3_port {
>   	struct tegra_xusb_port base;
> -	struct regulator *supply;
>   	bool context_saved;
>   	unsigned int port;
>   	bool internal;
> @@ -382,7 +381,6 @@ struct tegra_xusb_usb3_port *
>   tegra_xusb_find_usb3_port(struct tegra_xusb_padctl *padctl,
>   			  unsigned int index);
>   void tegra_xusb_usb3_port_release(struct tegra_xusb_port *port);
> -void tegra_xusb_usb3_port_remove(struct tegra_xusb_port *port);
>   
>   struct tegra_xusb_port_ops {
>   	void (*release)(struct tegra_xusb_port *port);


Please let me know if you have any comments.
Thank you.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
