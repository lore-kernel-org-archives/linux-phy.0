Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D656C47082
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:43:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43231613E7
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:43:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43231613E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALm1zIDJ4C04QUNcLXAOtwQM1fvb035dEZBgi1bZ0VU=; b=g6Ehe3E+EvC074
	KymHCGjN/nxI2ga6jsG2/UhqEMUVynMZ1Xvb8JoKNSzZnK7QaoUyxaRwQeqOJWvrwP5ksOqNUXtlf
	V6go8McjYS++l2rF7jTi9kIihNWcmdeR80Z2pyfNqZEUomv4TKNb7mN8u3VyUcIPLcds2R1i0w3Mg
	8/458MtQ2U4m/V0tAZkpIX+CafQwpQKrgP8vHIAg81UlQzZUAjTR2YbXOWGiCQurtoB49Bl5GYFeU
	0HTh2UzonqkXlQVzyO6EwTcekSMFUNeWZ5KC3sJyo8f66P834CI1leSFg0H+xD/Hd19byf0lwBN0T
	cHfrOa+ppufKuJ4iCHLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomge-008j5l-Ls; Thu, 03 Jun 2021 12:43:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomgZ-008j3Y-Ho
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 12:42:59 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 153Cgp2W101671;
 Thu, 3 Jun 2021 07:42:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622724171;
 bh=Ld2ZYEAAJsMe8VGDEMRHK4KP5BnvM8RHtb2fs8ozz44=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=SjeOvqCm8QWJHJNEpKhM4orHSFy3DQdmXXXfbsIHiZwRIli2yadTzQZ7QOZFs2vtk
 0rtYbfitbaSF7e+25CjqjaQ2F6STjDMrzziY3fwkIwpFgqVvV1DrqsBu4BJSnlOCb4
 kc8E8+87LfFEe0I/h/ZbsFLxyoLXxAUkEXSQHhrw=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 153CgpXE124022
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 3 Jun 2021 07:42:51 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 3 Jun
 2021 07:42:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 3 Jun 2021 07:42:51 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 153CgoAC025764;
 Thu, 3 Jun 2021 07:42:50 -0500
Date: Thu, 3 Jun 2021 18:12:49 +0530
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
Message-ID: <20210603124247.qk42workxhfirbum@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-11-p.yadav@ti.com>
 <9c38a72c-18e8-1e54-b3b4-85ff5d47857a@ideasonboard.com>
 <20210528072401.2vdrtjdiepnr72vv@ti.com>
 <e36baf77-6de8-595d-b440-92bcfcdd8467@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e36baf77-6de8-595d-b440-92bcfcdd8467@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_054255_705583_CE2CD9CC 
X-CRM114-Status: GOOD (  29.94  )
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

On 28/05/21 10:35AM, Tomi Valkeinen wrote:
> On 28/05/2021 10:24, Pratyush Yadav wrote:
> > On 28/05/21 10:16AM, Tomi Valkeinen wrote:
> > > On 26/05/2021 18:23, Pratyush Yadav wrote:
> > > > The devnode can be used by media-ctl and other userspace tools to
> > > > perform configurations on the subdev. Without it, media-ctl returns
> > > > ENOENT when setting format on the sensor subdev.
> > > > 
> > > > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > > > ---
> > > > 
> > > > (no changes since v1)
> > > > 
> > > >    drivers/media/platform/cadence/cdns-csi2rx.c | 1 +
> > > >    1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> > > > index 1df21f462f3c..49bed63d5faa 100644
> > > > --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> > > > +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> > > > @@ -613,6 +613,7 @@ static int csi2rx_probe(struct platform_device *pdev)
> > > >    	csi2rx->pads[CSI2RX_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
> > > >    	for (i = CSI2RX_PAD_SOURCE_STREAM0; i < CSI2RX_PAD_MAX; i++)
> > > >    		csi2rx->pads[i].flags = MEDIA_PAD_FL_SOURCE;
> > > > +	csi2rx->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > > >    	ret = media_entity_pads_init(&csi2rx->subdev.entity, CSI2RX_PAD_MAX,
> > > >    				     csi2rx->pads);
> > > > 
> > > 
> > > I don't understand this one. There's nothing to configure in cdns-csi2rx
> > > from userspace, as far as I can see, so why is the dev node needed? And why
> > > would the lack of csi2rx dev node cause sensor subdev config to fail?
> > 
> > Sensor config does not fail. But when I run media-ctl to set the format
> > on /dev/media0, I get an error message that comes because the devnode
> > for the bridge does not exist. I was not 100% sure about this patch but
> > I figured if media-ctl expects it then it should be exposed.
> > 
> > I don't mind dropping this patch. Just want to make sure what the right
> > thing to do here is. Should every element of the pipeline have a devnode
> > or not?
> 
> Tbh, I don't know. But I don't see why they should have. Also, my test works
> fine if I remove the devnode here.
> 
> What media-ctl parameters did you use which fails?

Media controller topology:

  root@j7-evm:~# media-ctl -p
  Media controller API version 5.13.0
  
  Media device information
  ------------------------
  driver         j721e-csi2rx
  model          TI-CSI2RX
  serial
  bus info       platform:4500000.ticsi2rx
  hw revision    0x1
  driver version 5.13.0
  
  Device topology
  - entity 1: cdns_csi2rx.4504000.csi-bridge (5 pads, 2 links)
             type V4L2 subdev subtype Unknown flags 0
             device node name /dev/v4l-subdev0
         pad0: Sink
                 <- "ov5640 9-003c":0 [ENABLED,IMMUTABLE]
         pad1: Source
                 -> "j721e-csi2rx":0 [ENABLED,IMMUTABLE]
         pad2: Source
         pad3: Source
         pad4: Source
  
  - entity 7: ov5640 9-003c (1 pad, 1 link)
             type V4L2 subdev subtype Sensor flags 0
             device node name /dev/v4l-subdev1
         pad0: Source
                 [fmt:UYVY8_2X8/640x480@1/30 field:none colorspace:srgb xfer:srgb ycbcr:601 quantization:full-range]
                 -> "cdns_csi2rx.4504000.csi-bridge":0 [ENABLED,IMMUTABLE]
  
  - entity 11: j721e-csi2rx (1 pad, 1 link)
              type Node subtype V4L flags 0
              device node name /dev/video0
         pad0: Sink
                 <- "cdns_csi2rx.4504000.csi-bridge":1 [ENABLED,IMMUTABLE]


Setting resolution on the sensor (with cdns-csi2rx devnode present):

  root@j7-evm:~# media-ctl --set-v4l2 '"ov5640 9-003c":0 [fmt:UYVY8_2X8/1920x1080@1/30]'

The above command works. Setting resolution on the sensor (without the 
devnode present):

  root@j7-evm:~# media-ctl --set-v4l2 '"ov5640 9-003c":0 [fmt:UYVY8_2X8/1920x1080@1/30]'
  Unable to setup formats: No such file or directory (2)

This sets the format correctly on the sensor but fails when it tried to 
set it on the bridge.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
