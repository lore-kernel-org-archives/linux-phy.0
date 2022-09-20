Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 984FEC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH1XxKSfWdGL8e5xNaMXK9n84vGZwq/AnH6mTTRMD3A=; b=Cp128yY4cvATmt
	uxY9xziUd5nn0PCkNl0q2wSiz/3FjpMC7c4tYIWw0/YphN1itEifFvFm4F2H4EzkE+vFxFalydFLd
	goa1+JYHXCeJyjozO8ZJyW3ZXzRJJfQtSE3+mBz9wfQA3tdW1u+eKRZxJ64QiXjRylvkhJF9CDuiE
	NWbfTuI/Ctp0SWPR8/Q5DskGHq96jGOuLVwTf0edYZ/VVJTtil//yI/MzIVOX0VpvJrBDAZ6PkCvQ
	vleUfwwVfoDFMt2m76fQxgvYvzdRq0udZqqNk4oIfOBr5s6t6YM1sE9cKTMPUNjRmlfK4kqamEyYW
	Np6TiKf8ruNVet7UlQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaeT-00329o-Th; Tue, 20 Sep 2022 10:38:53 +0000
Received: from mail-dm6nam12on2064.outbound.protection.outlook.com ([40.107.243.64] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaeE-0031x0-O7; Tue, 20 Sep 2022 10:38:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JB53M1+W6kWo8OvgYl5vn1MMd+mqAQib5iIBPHfVwG8waSa2oWRvaJhizZOaV1iPAth2KGyCunzuaKet7ZCZ6A6O+TySOE8nLRdlV0hU7vd7K97YUE5y2+Fpju5k2im1EFeU5uO9kuGnzOfViYkUvi2xf5xTGARhsyzQa+brXtoFej417uE7XMbLBI6Q+ZW/ypsG9SRer8OYrfk/3C4t3oJzuUMjjpaDNkAPDIkovcFC+P1rIsOgyiNkZGaB1Hpb+0HA1R7k8+uMpP+zgn4ObMAo3s7jPpUyEz4WcEuAIRhLQJYmjKOwJYROsy+jrJR/X6ZKS1HAsSsKpfMKBJZKZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZGuc9yMlBFI9bIirPT66wqp2BOL36zYZA1GYHgj5l4=;
 b=SfxGj8QBfTpNFkP8V6TTTMEgkucW+n5QHyvX+N10nwBv3VKtQNVCOPvrwxdGi9oL9ZLB3rU5F7esv4dtSE3YAPwk37Y71xl3RnsOoiuhW9TmyWV5ykrAXwLyOpIaiGHioJKPU2QHXxuVTXgNZO/8T/2Man1xsG0C0ph3uZs1WXTArJ6Mmj1+GA5EkirFSXasbr6EIUpS7vJo1pmMfolkdkOZrm5m42Ighh5All20cUL50tY3O/UHUyC2FBxdgEjkaR0iQUQOtJHisjnW1JYFwSm5Ei+ZyVyzXjE8ROv2y5wc3+FIYd3YSytzqj+xJ/oHFTeONZAj6StcEqg6lY2Y0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZGuc9yMlBFI9bIirPT66wqp2BOL36zYZA1GYHgj5l4=;
 b=fMm3KHC0gbExfmMylw9PzqStPKw9BawLEqTkAIowbOiCVfOlBGLs/aUCmoSurptpC2GMPXo0IvWS9Z7B4Rcwzsk5Q/yoCLMdfGro8qQmxhXNZuxFg1uJqKaGOnDZnmh+lQ/7/9o4ukLXdCsNd6i9GYj9bbWLQeBoBXI0AZicPy0=
Received: from MN2PR12MB4333.namprd12.prod.outlook.com (2603:10b6:208:1d3::23)
 by DM6PR12MB4106.namprd12.prod.outlook.com (2603:10b6:5:221::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 10:38:29 +0000
Received: from MN2PR12MB4333.namprd12.prod.outlook.com
 ([fe80::355b:bb87:4cf5:7b83]) by MN2PR12MB4333.namprd12.prod.outlook.com
 ([fe80::355b:bb87:4cf5:7b83%7]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 10:38:29 +0000
From: "Mehta, Piyush" <piyush.mehta@amd.com>
To: Vinod Koul <vkoul@kernel.org>
CC: "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
	"kishon@ti.com" <kishon@ti.com>, "michal.simek@xilinx.com"
	<michal.simek@xilinx.com>, "Simek, Michal" <michal.simek@amd.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "git (AMD-Xilinx)" <git@amd.com>,
	"Paladugu, Siva Durga Prasad" <siva.durga.prasad.paladugu@amd.com>
Subject: RE: [PATCH] phy: xilinx: phy-zynqmp: dynamic clock support for
 power-save
Thread-Topic: [PATCH] phy: xilinx: phy-zynqmp: dynamic clock support for
 power-save
Thread-Index: AQHYxEzLO8kPLQOEdUinB8ZW4dRjaa3n71yAgAA8TxA=
Date: Tue, 20 Sep 2022 10:38:29 +0000
Message-ID:  <MN2PR12MB433380451E7C3F6D6C332973884C9@MN2PR12MB4333.namprd12.prod.outlook.com>
References: <20220909130442.1337970-1-piyush.mehta@amd.com>
 <Yylgi+E2BAStgkEx@matsya>
In-Reply-To: <Yylgi+E2BAStgkEx@matsya>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: vkoul@kernel.org
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB4333:EE_|DM6PR12MB4106:EE_
x-ms-office365-filtering-correlation-id: f69fa575-226a-4f26-7cdf-08da9af441d3
x-ld-processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  lvPvRpRc/DsVZhR/M1iQpR/+rFY0ZQcLMPArNOFRWt/uof0Nb8aTCuUxxuh+qhcwYlaDI2ri1DY42HX79RoWXcyGN0Cgg9e4FBExUBDZj/LD9n6efkS3PyIa1cmsHmwIlRxeri+BGgNvlGpl+LVW+VPNCzdFM7nqin3E8bw+xI1J7c388RpBXiy7DPAmj2KZoIsuV3seau4+VXoAQORBNwz8fyzGCM2bP59/y2j6oDeYUKM3u4zp21Om4R7v/TXhovIXv9lXC+106V4ZwvvC9vqL15cbz16AlQrfzU2V21pcw0XQH89TSTzE1F+SGDJEKVGNjMdHkBuIWW4zZvvzcCSXdEDUM6RgvKJfvCs7C4PM+3W9nXeHXDbupnovZ0xBImvoxxOvt90D/WTLjd7q68lg2XgBPayByvvcCMUA4D4M6SSFuM/WHs9BPATBE1PcaaysKX3EIYsY7AVstTPgD155riSPJULshtF5E4IwLamYPjFGsNrt9kxUmg4iHCF2VNue92Xwehm5ktfKdyqHtWgRCiGSXqp2syPzwPrSDoVLQkMmwQlBbxPKD0+vkDBp9cLWOyRODeilwgZNY7h3h4jS5stlF2Xs50+x5yFSaydHN7ESlbeHAs7sRbUmneP/mUjHsVk4uUHDtm3BGif5LHZmlCs+UlqZvODW7VrKHt6B8lNgCsQhQPcghlLeU9xrOX3/mJyzSuwdnBeR5r7wpTw5MzaYh6gvm82i77KhPWGC3k9m67GAKti2O2Ar9NJ5zOpI70KmmPRA8Ve+Eu0oNA==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4333.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199015)(52536014)(5660300002)(2906002)(83380400001)(38070700005)(7696005)(41300700001)(316002)(66946007)(186003)(8676002)(38100700002)(122000001)(66446008)(66556008)(64756008)(8936002)(66476007)(9686003)(26005)(53546011)(33656002)(71200400001)(478600001)(86362001)(6916009)(54906003)(6506007)(4326008)(76116006)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?uo2IRInkvIUOkSqaTvN8pv3fWkXQpBXu6XXivDGSyRc8Z2PnhteApMfPau+w?=
 =?us-ascii?Q?Jw+aSvkLfD15xQ4zcEnyCYY1vY4jRjErU/kXnP5jdMdiCy/w3cjYp7U0im+r?=
 =?us-ascii?Q?fSlevYZpPzwWoMxjLL8+k5ovY/vfSsDzDbFCHkMQh+Pksuvj+aiy7LNs/nbJ?=
 =?us-ascii?Q?1iAl1Ar3sma5ZuLSNZ9V10k9zAxQrNgpFfQW2mOP2QXRzpQWltYS3WigILmc?=
 =?us-ascii?Q?8gm4Tm14046qBaigBy4jm/h30pJUnlKJuX2WeX1MkNQGZEg9+TULzmWx36qX?=
 =?us-ascii?Q?pKXmJ7wGmO13Ls87edkVInnrJOi6TgrQgx94S3gpUL2pryASwgWx2eCLJBWq?=
 =?us-ascii?Q?UIF5Kl/RioR9k56uCkBjHiyUZATFEcgYGydgwChHlUcfTwaY9yAELf7lo7u/?=
 =?us-ascii?Q?lykiicWL/JYk+Y+N56IAmiHlQlVFXKJku1PqmpLDsrK8wB5LlvOOyaA4nJJh?=
 =?us-ascii?Q?6lXpgYRyzhH9AtjEn7QruTjvK1VjgOYiaMfQGOXkoCmsWiyHuHwW4y5CEuQA?=
 =?us-ascii?Q?O/0PTUp1WtO7TxqbzU2/xKX3kFS96g65XSCDKwlo9NHvK4YMj65cFVYcuWKR?=
 =?us-ascii?Q?LUJ9DYjADe1jh3suUKH+pQDoWor7x8veT6TRlfonNee+nFVX155Dl4yaL51a?=
 =?us-ascii?Q?8zERuLaxxBfax8nrNN61JQJ0vf59X9WSYelokFzHaPGl+JTIE8Nyn6/TOO2c?=
 =?us-ascii?Q?MVqM0g3+cyutTmSI8eSgQemS+gQFf5/0Xio1lZUDxSvX+O0py//pu1PKbYCU?=
 =?us-ascii?Q?ofvmwFq2rZ+rNiRLfhjH4v/EvAF/MaUDpv4prhoORCaYd8EG9doZeFrkVElG?=
 =?us-ascii?Q?BU7bGMEG/Yi8oWFNBlOOupLmiOzB2edM2FzwBxiMGxgIKhjhazZsSaaqVhLl?=
 =?us-ascii?Q?NrQirab9PX+9Tdd9U6ky25tnI7js5Bh9aQvldW3fONtc6kH5h80uTwxa4yyJ?=
 =?us-ascii?Q?A9UM4Zlh1f+BTBUdts1WA9LsWZP4gAPKrwyRiCdMWv92oDzJQELW6/fr/uUn?=
 =?us-ascii?Q?UiYT4eLikID4o9Na+460NHlbXZrA9Wr/1o5+EtvrsgHJDOsCew1Bs79aIjAz?=
 =?us-ascii?Q?JJEt8UnDo74H4rtGjSZl03Gbg87othsaI2G8N+BKUBD/BaWN5n7g498/7qTf?=
 =?us-ascii?Q?+K/mZQ4P9TmicQvJXl2a8Fnt+ErnfBn8W9mwT1MRBcLaEQZIMMsJiBvxUgUk?=
 =?us-ascii?Q?IR9Aizvsp6BNCQ6DdcZ3VeCVOp4J9Bw3MzwXFajN1PXVnesRBm/jLGkvjmwb?=
 =?us-ascii?Q?JJB13D50fRnuJ7+XX7Mgx2SDztdYzr2XkjzLpq+5rWlDSRj/LunQ0EZ1RHCB?=
 =?us-ascii?Q?5JVmZxHaNR3dfEHMX5P996TpaPxydAs5wfy0SxaspwHVRw6JRE+4jw/dQktm?=
 =?us-ascii?Q?AVbw+UxAIBTCUjpMK73ywMMaCEsiffX7xiL6A7lftGtT6c+PFDFgchDzhhLd?=
 =?us-ascii?Q?TZEIlVkyi2+KFwwS9ml/BYvCRlCAN94c9kS2uqchL4jJ0Ey66T4zxQhfkFzC?=
 =?us-ascii?Q?on+Db9lCjP1Sc77ttRTL74AHTVjSZNzh5OcIaR/mocU+FyQDVnn77VxG05D0?=
 =?us-ascii?Q?Zr03E6bsBHPJSIikNlI=3D?=
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4333.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f69fa575-226a-4f26-7cdf-08da9af441d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 10:38:29.2954
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xnw686GclStSvWiWT8MtIuNy0nRsOu0Zye9AUcoJMnnPpcLQ1zcTU7Bte5X33zTP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033841_175909_DDCF9F0B 
X-CRM114-Status: GOOD (  31.04  )
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

Hello @Vinod Koul,

Thanks for review comments.
Please find my inline comments below with tag [Piyush].

Regards,
Piyush Mehta 

> -----Original Message-----
> From: Vinod Koul <vkoul@kernel.org>
> Sent: Tuesday, September 20, 2022 12:11 PM
> To: Mehta, Piyush <piyush.mehta@amd.com>
> Cc: laurent.pinchart@ideasonboard.com; kishon@ti.com;
> michal.simek@xilinx.com; Simek, Michal <michal.simek@amd.com>; linux-
> kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-arm-
> kernel@lists.infradead.org; git (AMD-Xilinx) <git@amd.com>; Paladugu, Siva
> Durga Prasad <siva.durga.prasad.paladugu@amd.com>
> Subject: Re: [PATCH] phy: xilinx: phy-zynqmp: dynamic clock support for
> power-save
> 
> On 09-09-22, 18:34, Piyush Mehta wrote:
> > Enabling clock for all the lanes, consuming power even PHY is active
> > or not.
> 
> Pls consider revision to:
> Enabling clock for all the lanes consumes power even PHY is active or idle..
[Piyush]:  will address in next version of patch.

> 
> >
> > To resolve the above issue and power saving,made clock
> > enabled/disabled based on active PHYs on call of phy_init/phy_exit.
> 
> To resolve this, enable/disable clocks in phy_init/phy_exit
[Piyush]:  will address in next version of patch.

> 
> > By default clock is disabled for all the lanes. Whenever phy_init
> > called from USB, SATA, SGMII, or display driver, it enabled the
> > required clock for requested lane. On phy_exit cycle, it disabled
> > clock for the active PHYs.
> >
> > During the suspend/resume cycle, each USB/ SATA/ SGMII/ display driver
> > called phy_exit/phy_init individually. it disabled clock on exit, and
> > enabled on initialization for the active PHYs.
> >
> > Active PHY configuration depends on the peripheral DT node status,
> > like USB DT node status 'okay' then driver enabled clock for the USB
> > configured lane.
> >
> > Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
> > ---
> >  drivers/phy/xilinx/phy-zynqmp.c | 59
> > ++++++++-------------------------
> >  1 file changed, 14 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/phy/xilinx/phy-zynqmp.c
> > b/drivers/phy/xilinx/phy-zynqmp.c index 9be9535ad7ab..912c4defdf8d
> > 100644
> > --- a/drivers/phy/xilinx/phy-zynqmp.c
> > +++ b/drivers/phy/xilinx/phy-zynqmp.c
> > @@ -572,6 +572,10 @@ static int xpsgtr_phy_init(struct phy *phy)
> >
> >  	mutex_lock(&gtr_dev->gtr_mutex);
> >
> > +	/* Configure and enable the clock when peripheral phy_init call */
> 
> when peripheral invokes phy_init
> 
> > +	if (clk_prepare_enable(gtr_dev->clk[gtr_phy->lane]))
> > +		goto out;
> > +
> >  	/* Skip initialization if not required. */
> >  	if (!xpsgtr_phy_init_required(gtr_phy))
> >  		goto out;
> > @@ -616,9 +620,13 @@ static int xpsgtr_phy_init(struct phy *phy)
> > static int xpsgtr_phy_exit(struct phy *phy)  {
> >  	struct xpsgtr_phy *gtr_phy = phy_get_drvdata(phy);
> > +	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
> >
> >  	gtr_phy->skip_phy_init = false;
> >
> > +	/* Ensure that disable clock only, which configure for lane */
> > +	clk_disable_unprepare(gtr_dev->clk[gtr_phy->lane]);
> > +
> >  	return 0;
> >  }
> >
> > @@ -824,15 +832,11 @@ static struct phy *xpsgtr_xlate(struct device
> > *dev,  static int __maybe_unused xpsgtr_suspend(struct device *dev)  {
> >  	struct xpsgtr_dev *gtr_dev = dev_get_drvdata(dev);
> > -	unsigned int i;
> >
> >  	/* Save the snapshot ICM_CFG registers. */
> >  	gtr_dev->saved_icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
> >  	gtr_dev->saved_icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1);
> >
> > -	for (i = 0; i < ARRAY_SIZE(gtr_dev->clk); i++)
> > -		clk_disable_unprepare(gtr_dev->clk[i]);
> > -
> >  	return 0;
> >  }
> >
> > @@ -842,13 +846,6 @@ static int __maybe_unused xpsgtr_resume(struct
> device *dev)
> >  	unsigned int icm_cfg0, icm_cfg1;
> >  	unsigned int i;
> >  	bool skip_phy_init;
> > -	int err;
> > -
> > -	for (i = 0; i < ARRAY_SIZE(gtr_dev->clk); i++) {
> > -		err = clk_prepare_enable(gtr_dev->clk[i]);
> > -		if (err)
> > -			goto err_clk_put;
> > -	}
> 
> hold on, why is this being removed from suspend/resume?


[Piyush]:
Now, each peripheral driver calls phy_exit/phy_init in suspend/resume, and respective active driver will do clock enable and disable.

In above xpsgtr resume calls, by default all the clock enabled for all the lanes, that consumes power even PHY is active or not.
So, the clock will be enabled only for active PHY in the phy_init and disabled in phy_exit. Clock enabling is not required at multiple times.

> 
> >
> >  	icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
> >  	icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1); @@ -869,12 +866,6
> @@
> > static int __maybe_unused xpsgtr_resume(struct device *dev)
> >  		gtr_dev->phys[i].skip_phy_init = skip_phy_init;
> >
> >  	return 0;
> > -
> > -err_clk_put:
> > -	while (i--)
> > -		clk_disable_unprepare(gtr_dev->clk[i]);
> > -
> > -	return err;
> >  }
> >
> >  static const struct dev_pm_ops xpsgtr_pm_ops = { @@ -888,7 +879,6 @@
> > static const struct dev_pm_ops xpsgtr_pm_ops = {  static int
> > xpsgtr_get_ref_clocks(struct xpsgtr_dev *gtr_dev)  {
> >  	unsigned int refclk;
> > -	int ret;
> >
> >  	for (refclk = 0; refclk < ARRAY_SIZE(gtr_dev->refclk_sscs); ++refclk) {
> >  		unsigned long rate;
> > @@ -899,19 +889,14 @@ static int xpsgtr_get_ref_clocks(struct xpsgtr_dev
> *gtr_dev)
> >  		snprintf(name, sizeof(name), "ref%u", refclk);
> >  		clk = devm_clk_get_optional(gtr_dev->dev, name);
> >  		if (IS_ERR(clk)) {
> > -			ret = dev_err_probe(gtr_dev->dev, PTR_ERR(clk),
> > -					    "Failed to get reference clock
> %u\n",
> > -					    refclk);
> > -			goto err_clk_put;
> > +			return dev_err_probe(gtr_dev->dev, PTR_ERR(clk),
> > +					     "Failed to get ref clock %u\n",
> > +					     refclk);
> >  		}
> >
> >  		if (!clk)
> >  			continue;
> >
> > -		ret = clk_prepare_enable(clk);
> > -		if (ret)
> > -			goto err_clk_put;
> > -
> >  		gtr_dev->clk[refclk] = clk;
> >
> >  		/*
> > @@ -931,18 +916,11 @@ static int xpsgtr_get_ref_clocks(struct xpsgtr_dev
> *gtr_dev)
> >  			dev_err(gtr_dev->dev,
> >  				"Invalid rate %lu for reference clock %u\n",
> >  				rate, refclk);
> > -			ret = -EINVAL;
> > -			goto err_clk_put;
> > +			return -EINVAL;
> >  		}
> >  	}
> >
> >  	return 0;
> > -
> > -err_clk_put:
> > -	while (refclk--)
> > -		clk_disable_unprepare(gtr_dev->clk[refclk]);
> > -
> > -	return ret;
> >  }
> >
> >  static int xpsgtr_probe(struct platform_device *pdev) @@ -951,7
> > +929,6 @@ static int xpsgtr_probe(struct platform_device *pdev)
> >  	struct xpsgtr_dev *gtr_dev;
> >  	struct phy_provider *provider;
> >  	unsigned int port;
> > -	unsigned int i;
> >  	int ret;
> >
> >  	gtr_dev = devm_kzalloc(&pdev->dev, sizeof(*gtr_dev), GFP_KERNEL);
> @@
> > -991,8 +968,7 @@ static int xpsgtr_probe(struct platform_device *pdev)
> >  		phy = devm_phy_create(&pdev->dev, np, &xpsgtr_phyops);
> >  		if (IS_ERR(phy)) {
> >  			dev_err(&pdev->dev, "failed to create PHY\n");
> > -			ret = PTR_ERR(phy);
> > -			goto err_clk_put;
> > +			return PTR_ERR(phy);
> >  		}
> >
> >  		gtr_phy->phy = phy;
> > @@ -1003,16 +979,9 @@ static int xpsgtr_probe(struct platform_device
> *pdev)
> >  	provider = devm_of_phy_provider_register(&pdev->dev,
> xpsgtr_xlate);
> >  	if (IS_ERR(provider)) {
> >  		dev_err(&pdev->dev, "registering provider failed\n");
> > -		ret = PTR_ERR(provider);
> > -		goto err_clk_put;
> > +		return PTR_ERR(provider);
> >  	}
> >  	return 0;
> > -
> > -err_clk_put:
> > -	for (i = 0; i < ARRAY_SIZE(gtr_dev->clk); i++)
> > -		clk_disable_unprepare(gtr_dev->clk[i]);
> > -
> > -	return ret;
> >  }
> >
> >  static const struct of_device_id xpsgtr_of_match[] = {
> > --
> > 2.25.1
> 
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
