Return-Path: <SRS0=Ugb/=KX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72B0C4708C
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:24:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51BC9611C9
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 07:24:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51BC9611C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AIVSxMDa1Renu1vOE1kocZbiI8OYhl/tpf5agfbshs=; b=la3oWpM78cyOS8
	C1wpP9p8Z+nzf+IW1b53XXzV2YFzsSmIs8zTIYhW7vxCwVPNeLh60yniufKtY7VFNvYOSBVNx6ezW
	x3h7OQLW3ya0Fgfd600H0aB5zJ06rgw/g8Qt5QxhyFoplZV19ZUNDIVZFhnPHlqdjk5JQE6Xg+N5o
	ySMM9lBofsKTrrekcfz788yKpBJOIte2LRMIFR5q0EnexEOHhrb7ZEF9TgcRVhd68DH/XlZnWEoOR
	BT57OKbUVqWEuwvIMu6OpYNhQTjnThl7TCW78Jgm8nyG1esEHB5HpbKn8lh+cjx3ckK8yzRih3hqB
	VXkjyVa+X/bmoPJENKgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmWr2-00Cxw9-RL; Fri, 28 May 2021 07:24:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmWqp-00CxpP-83
 for linux-phy@lists.infradead.org; Fri, 28 May 2021 07:24:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14S7O5Sk130782;
 Fri, 28 May 2021 02:24:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622186645;
 bh=nu/t+eRoAY6NtRobRU6f3fX1UwivEdiSbjMIVTJEhRI=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=otvU6YfVvMb0VmTfNfLokxvoHGITg5Yqi+Bg+rqneUxQeQU2hHXR1nsy8ADTT+ODj
 UKffTmjq+TT/E03XgDbRKrsSR7kdKMa9jK1D8xYlG2KiTEailf5y6KtRIkpnTc1V3R
 BGUBsVhf6bxHEjX7l5zTRtw1lu6o95vdcNLI32pA=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14S7O5U8036400
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 May 2021 02:24:05 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 02:24:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 02:24:05 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14S7O4dV114575;
 Fri, 28 May 2021 02:24:04 -0500
Date: Fri, 28 May 2021 12:54:03 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit
 Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>, Vignesh
 Raghavendra <vigneshr@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 10/18] media: cadence: csi2rx: Populate subdev devnode
Message-ID: <20210528072401.2vdrtjdiepnr72vv@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-11-p.yadav@ti.com>
 <9c38a72c-18e8-1e54-b3b4-85ff5d47857a@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c38a72c-18e8-1e54-b3b4-85ff5d47857a@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_002411_399435_20350C01 
X-CRM114-Status: GOOD (  21.43  )
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

On 28/05/21 10:16AM, Tomi Valkeinen wrote:
> On 26/05/2021 18:23, Pratyush Yadav wrote:
> > The devnode can be used by media-ctl and other userspace tools to
> > perform configurations on the subdev. Without it, media-ctl returns
> > ENOENT when setting format on the sensor subdev.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> > 
> > (no changes since v1)
> > 
> >   drivers/media/platform/cadence/cdns-csi2rx.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> > index 1df21f462f3c..49bed63d5faa 100644
> > --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> > +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> > @@ -613,6 +613,7 @@ static int csi2rx_probe(struct platform_device *pdev)
> >   	csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
> >   	for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
> >   		csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;
> > +	csi2rx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> >   	ret = media_entity_pads_init(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
> >   				     csi2rx->pads);
> > 
> 
> I don't understand this one. There's nothing to configure in cdns-csi2rx
> from userspace, as far as I can see, so why is the dev node needed? And why
> would the lack of csi2rx dev node cause sensor subdev config to fail?

Sensor config does not fail. But when I run media-ctl to set the format 
on /dev/media0, I get an error message that comes because the devnode 
for the bridge does not exist. I was not 100% sure about this patch but 
I figured if media-ctl expects it then it should be exposed.

I don't mind dropping this patch. Just want to make sure what the right 
thing to do here is. Should every element of the pipeline have a devnode 
or not?

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
