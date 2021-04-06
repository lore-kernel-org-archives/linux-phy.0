Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B79DC433B4
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:05:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C21D0613C4
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 15:05:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C21D0613C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CDZv3LHe7ECk2k1/OMMOqGnW8TaFoYAVC6VVUljNG1A=; b=l+3qPyx6otnIUWyjcdT5AMSEA
	s5W2olgQ2kNJawdknT0Mb6roi2NgUX4u463Js6z/gW1XWUA7ysn/NTBNjggVXX3Pk9zX12Q4Fp4Gb
	cC4T2k9AJ9NIEU12OJiBmdMGHjD68kTx23dl9AF9Wm05ud2Jq6SRcakR79Rr9zkEcK/ExpKlTi5tz
	6Gyo97/8LVExR/tQznwoqLIr8hFQ1zsVp//yGAFy9wlEdvld11p3m/ieSkn8Sx6DeW5TPHGr4+iSW
	QWp2K99j791scmJQmWqai7kvMcoTtgzrMRYbV+UX83w3V1A3TUDWWmMevnEvJ+MqWmqEOGyJNnenr
	zxVjCs1cA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnGn-002td9-6q; Tue, 06 Apr 2021 15:05:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnGi-002tcb-PM
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 15:05:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 136F5HVr049644;
 Tue, 6 Apr 2021 10:05:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617721517;
 bh=XBmEDieA+skNRILQW4BZSH6UOH2I9m+4MVXEObgkjII=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=jE9/f/uhlbh+sMmXd4Bph/+0VuPORLT0b4j8h+VrTBHmT1MEGzGG2eXXnprL/Qr3R
 YY2SEhc5a3LsvvvPB4kcG6WSyad6iKBmjjywBT597qlHdq5DrZ2gaB+npYktQ5guy3
 0xfUOB5z/ulYyRT12LnsgVVDaI2uo9gATzRrOGAQ=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 136F5HQ8075901
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Apr 2021 10:05:17 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 6 Apr
 2021 10:05:17 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 6 Apr 2021 10:05:17 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 136F5Gqn089797;
 Tue, 6 Apr 2021 10:05:16 -0500
Date: Tue, 6 Apr 2021 20:35:15 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 13/16] media: ti-vpe: csi2rx: Add CSI2RX support
Message-ID: <20210406150513.zj4g6zrtghgunvor@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-14-p.yadav@ti.com>
 <91bbf2a9-9d27-7f9b-1c17-ad6544a828f1@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91bbf2a9-9d27-7f9b-1c17-ad6544a828f1@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_160529_361258_260CB48B 
X-CRM114-Status: GOOD (  30.66  )
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

On 31/03/21 09:06AM, Tomi Valkeinen wrote:
> Hi,
> 
> On 30/03/2021 20:33, Pratyush Yadav wrote:
> > TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> > capture over a CSI-2 bus.
> > 
> > The Cadence CSI2RX IP acts as a bridge between the TI specific parts and
> > the CSI-2 protocol parts. TI then has a wrapper on top of this bridge
> > called the SHIM layer. It takes in data from stream 0, repacks it, and
> > sends it to memory over PSI-L DMA.
> > 
> > This driver acts as the "front end" to V4L2 client applications. It
> > implements the required ioctls and buffer operations, passes the
> > necessary calls on to the bridge, programs the SHIM layer, and performs
> > DMA via the dmaengine API to finally return the data to a buffer
> > supplied by the application.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >   MAINTAINERS                               |   7 +
> >   drivers/media/platform/Kconfig            |  11 +
> >   drivers/media/platform/ti-vpe/Makefile    |   1 +
> >   drivers/media/platform/ti-vpe/ti-csi2rx.c | 964 ++++++++++++++++++++++
> >   4 files changed, 983 insertions(+)
> >   create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c
> 
> Some quick comments:
> 
> "ti-vpe" directory is not correct, this has nothing to do with VPE. That
> said, the directory has already been abused by having CAL driver there,
> perhaps we should rename the directory just to "ti". But if we do that, I
> think we should have subdirs for cal, vpe and this new one.

Right. I thought about doing this but then figured "let's just follow 
what CAL does". Will move them into separate subdirectories.

> 
> "ti-csi2rx" is rather generic name. TI has had CSI-2 RX IPs before (CAL) and
> probably will also have new ones in the future. If there's no clear model
> name for the IP, as I think is the case here, it's probably best to just use
> the SoC model in the name. E.g. the DSS on J7 is "ti,j721e-dss".

Ok.

> 
> This driver implements the legacy video API. I think it would be better (and
> easier to maintain) to only implement the media-controller API, unless you
> specifically need to support the legacy API for existing userspace.

:-(

I'm afraid the documentation has let me down here. There is no clear 
mention about the fact that media controller API replaces the "legacy" 
API. In fact, [0] seems to suggest that the media controller API is 
optional.

  Bridge drivers traditionally expose one or multiple video nodes to 
  userspace, and control subdevices through the v4l2_subdev_ops 
  operations in response to video node operations. This hides the 
  complexity of the underlying hardware from applications. For complex 
  devices, finer-grained control of the device than what the video nodes 
  offer may be required. In those cases, bridge drivers that implement 
  the media controller API may opt for making the subdevice operations 
  directly accessible from userpace.

Anyway, I don't think supporting the legacy API makes much sense since 
this is a new driver. Will convert it to use the MC API. We can always 
add the legacy API support if some application demands it.

[0] https://www.kernel.org/doc/html/latest/driver-api/media/v4l2-subdev.html#v4l2-sub-device-userspace-api

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
