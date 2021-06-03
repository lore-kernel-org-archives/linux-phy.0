Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF81C47096
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:49:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62CEA6139A
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 12:49:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62CEA6139A
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBdzuUwZu9WP0rET/7ayMnDYUDulgiD6ZtzZleDgmIQ=; b=fP5lLCYHIsyJbZ
	9XpwjKxlvAiyW49r9t4Ev+rMx0JM9XGAA+urKEDY0dbbbK6XZ6bP/WgpwBMkYoL3E/Oq4pm4PDmsb
	rNH8AZWihXEIc8Jt+ZHjq0u31RZA/xALIcOyUZn4Wyru5beZH94jDSW87KoT+Tr7xAtplZ2Vhb1Ta
	d40Ns+QPUnOrFfIqZ/LBvYb/ZMujBPTp3QUUlj88qNVV6kjApCN98u8raG1ly1wfV4xLdhxDGLyMp
	bX74paoFuh/v4NuyKb5WA0hqfQixN671UzSU4uRA0DC5sTeD/EYiV91c28eYPt0Md1Le9nJM1qwSV
	Kbpaz7V1sgDEFq4J9xLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lommy-008kiy-TH; Thu, 03 Jun 2021 12:49:32 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lommt-008kgp-Mw
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 12:49:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 153CnOt7104242;
 Thu, 3 Jun 2021 07:49:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622724564;
 bh=3tUasl4CjwBSl1XuXyKNpzOo0NZEAhF7Cos3of0Pn/0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=gpY/wdWqzf+TJzbRHQ8xQPS/e2T+SqgRBJOC5zIu5t63drg7HktQQW+OTZQCz4J18
 KG9h0PXZP1FNEBVL2DkqrJISHvz9aaMQlWNBf0SehNzL1fbk1oEOJLZftHeOkDbDTE
 8McbzYFrjZHko+buU50aMYR8zjqAmSp1A45iON8Q=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 153CnOlu074023
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 3 Jun 2021 07:49:24 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 3 Jun
 2021 07:49:23 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 3 Jun 2021 07:49:24 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 153CnNnH075333;
 Thu, 3 Jun 2021 07:49:23 -0500
Date: Thu, 3 Jun 2021 18:19:22 +0530
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
Subject: Re: [PATCH v2 13/18] media: ti: Add CSI2RX support for J721E
Message-ID: <20210603124920.5o34klhlhjg5phlj@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-14-p.yadav@ti.com>
 <5e00444a-683f-b4fa-9156-4450ca4edaf6@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e00444a-683f-b4fa-9156-4450ca4edaf6@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_054927_875259_0831EA3F 
X-CRM114-Status: GOOD (  26.07  )
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

On 27/05/21 04:29PM, Tomi Valkeinen wrote:
> Hi Pratyush,
> 
> On 26/05/2021 18:23, Pratyush Yadav wrote:
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
> 
> I noticed that my test app didn't work at all with this, and I also wasn't
> able to use v4l2-ctl to set the format.

I have not used v4l2-ctl, but I can see yavta works fine. What command 
did you use for setting format via v4l2-ctl?

> 
> At least for my test app the problem was that this driver doesn't initialize
> the format at all. My app first calls VIDIOC_G_FMT with v4l2_format.type ==
> V4L2_BUF_TYPE_VIDEO_CAPTURE, then after the call modifies the fields it
> wants to change and calls VIDIOC_S_FMT. This failed, as G_FMT returned
> uninitialized fmt, i.e. type was 0, which my app didn't set again.
> 
> I believe the driver should have an initial format, something that it will
> accept if an app calls G_FMT and then S_FMT.

Right. This is a bug. The question is what should the initial format be? 
It is more or less arbitrary since there is no configuration made yet 
and we don't know what the camera can or will send. So for example, what 
if I use UYVY 640x480? The camera might not support it at all. Is it 
still OK to have it as the default?

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
