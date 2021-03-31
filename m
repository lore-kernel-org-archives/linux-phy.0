Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C09DC433DB
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 09:36:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD3E9619B9
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 09:36:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD3E9619B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcAK3keWJxPcRtA5D1CE/2SpAzFTZX+PDck4YpZy71A=; b=p1ZRjhRuSRRYUg1Ozx6LutxGI
	QrBBYxJBRclkv/eHr+hMayHLQYRU22AIkMPVJqTFWSRf44v23a7nVMhUutqVUtgy3/CnQZIw/NGkW
	ekaGhlVqWxk/epqEV2C/OcO50MrPyWqntskgyzRWmY0LK0fl1oCEYT77t7g1VNOpRoFiWVw1E4/hz
	uOxEP2vxzKXH70dfwwkZIp+QK55XvQzfULQEKWqnEuCwel54fbhX1dgchruZ9ijHlX50STnGkLmIH
	An0GRLD7jyHal4q9X+yPsPl/1Ac5zY1hcFlpRD7RMi9PKgE8nyTKgZDwyr1SQx8b9a4j7Im8dR9s9
	qqj8MearA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRXHR-006Adq-6X; Wed, 31 Mar 2021 09:36:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRXEb-006AKt-4v
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 09:34:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C1C7619F0;
 Wed, 31 Mar 2021 09:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617183235;
 bh=nO6ttpQXe+OeRL88ACEvx2io7aYwd7vnwQG1o0nC6Gw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h/JuXQ8QMS62JOS9+ByXnOqyzOo1u3p8/2y0FqKbbBkFG6wtSSRN6I1ayMSxygk3j
 qldKxHUcR0scfwhsSdITKQ7+94rabU11oLcDAa1BiNj+WKDU6v94KuqL/+hOp43z3q
 gQFfkJSlxy9axVYovQHURUYVgGQ91TetD/7hoDBWL3651g2Ipd0r0N5eqyDblVv5jt
 QKCzfa6PyBL78BiutkrA8CljFwSwXHv1OCDCjsOFYera4llrAZ/r++C8x7oLnie10+
 M5/ucomuSVbT3yqgBpg6NrNhKbc6VLYxhZMXzzifGCYvRuXL5JN8CanH/SizY8lZi0
 MCw/bOOFpQPWQ==
Date: Wed, 31 Mar 2021 15:03:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 00/16] CSI2RX support on J721E
Message-ID: <YGRB/42Q6aVBLoAq@vkoul-mobl.Dlink>
References: <20210330173348.30135-1-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-1-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_103451_042020_F1C26D98 
X-CRM114-Status: GOOD (  15.94  )
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

On 30-03-21, 23:03, Pratyush Yadav wrote:
> Hi,
> 
> This series adds support for CSI2 capture on J721E. It includes some
> fixes to the Cadence CSI2RX driver, adds Rx support to Cadence DPHY
> driver, and finally adds the TI CSI2RX wrapper driver.
> 
> Tested on TI's J721E with OV5640 sensor.
> 
> Paul Kocialkowski (1):
>   phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes
> 
> Pratyush Yadav (15):
>   phy: cdns-dphy: Prepare for Rx support
>   phy: cdns-dphy: Allow setting mode
>   phy: cdns-dphy: Add Rx support
>   media: cadence: csi2rx: Add external DPHY support
>   media: cadence: csi2rx: Soft reset the streams before starting capture
>   media: cadence: csi2rx: Set the STOP bit when stopping a stream
>   media: cadence: csi2rx: Fix stream data configuration
>   media: cadence: csi2rx: Turn subdev power on before starting stream
>   media: cadence: csi2rx: Add wrappers for subdev calls
>   dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
>   dt-bindings: media: Add DT bindings for TI CSI2RX driver
>   media: ti-vpe: csi2rx: Add CSI2RX support
>   dt-bindings: phy: Convert Cadence DPHY binding to YAML
>   dt-bindings: phy: cdns,dphy: make clocks optional
>   dt-bindings: phy: cdns,dphy: add power-domains property

Is there any dependency between patches to various subsystems, if not
please do consider sending a series per subsystem...

Thanks


> 
>  .../devicetree/bindings/media/ti,csi2rx.yaml  |  70 ++
>  .../devicetree/bindings/phy/cdns,dphy.txt     |  20 -
>  .../devicetree/bindings/phy/cdns,dphy.yaml    |  52 +
>  MAINTAINERS                                   |   7 +
>  drivers/dma/ti/k3-psil-j721e.c                |  10 +
>  drivers/media/platform/Kconfig                |  11 +
>  drivers/media/platform/cadence/cdns-csi2rx.c  | 269 ++++-
>  drivers/media/platform/ti-vpe/Makefile        |   1 +
>  drivers/media/platform/ti-vpe/ti-csi2rx.c     | 964 ++++++++++++++++++
>  drivers/phy/cadence/cdns-dphy.c               | 407 +++++++-
>  include/linux/phy/phy-mipi-dphy.h             |  13 +
>  11 files changed, 1754 insertions(+), 70 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
>  create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c
> 
> --
> 2.30.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
