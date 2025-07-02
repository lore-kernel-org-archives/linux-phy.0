Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65B3C7EE30
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jul 2025 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9IUbrlU/Pjy0iN6D9gSDfRY6CwxnuKdrEMXpa7hn6g=; b=w4JM9kApYli0IE
	CsrARpF4Z7UM6erkFgH90nvKWpWzVmEtBUhDteharLUwoctvIFygOiuyxUtoNNcs4u73KhqmLNQHO
	U60eOtHJs29pQf01FF4QCdMa/Wph4ZM8ClmKR7FRHX3qptQi9aJYfDJTA7T6eS6NzyBB681lInKK4
	i86IEs83Lb1SsIXflanbvpkvJMy7XF/iX/PXY51wr1QzAnccyexykAXVD7gRn9e4ZapXZSTgWS6iu
	BpJogcCzcDDGRt+q8Lr0BSoav1X/68258MLMTRHwdcoHlaR6GE0UpMTAoB+qgrlnKNHLq2FsA7GcY
	vS7Z3tJD2+O88DNRWZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWuKj-00000007sqM-24mq;
	Wed, 02 Jul 2025 10:04:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWtvJ-00000007nbu-3kBz;
	Wed, 02 Jul 2025 09:38:39 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 966C4E91;
	Wed,  2 Jul 2025 11:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1751449088;
	bh=DGKrttRsQr4Iev/uBW1PHry4ekiuQTspS65d9746Hfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OaQRH80s6vm2oaq0DfRpQ8cCRCiwGUiKn9uTbKfY2N5A5lVPkpUNu2d23a80gt6kj
	 ZNipU0xVGKEARmwGwLxQve3e93XgPhXPlqa4QG1qZ0GEyo+pcKGpKPDLEGG1Z9DQTT
	 JGHs9kaLxL5FYJyPWFLq6nEjQDFhfcGOBwG1hLd0=
Date: Wed, 2 Jul 2025 12:38:06 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Alice Yuan <alice.yuan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, "Guoniu.zhou" <guoniu.zhou@nxp.com>
Subject: Re: [PATCH 5/7] media: nxp: add DesignWare MIPI CSI2 controller
 driver
Message-ID: <20250702093806.GF16835@pendragon.ideasonboard.com>
References: <20250701-95_cam-v1-0-c5172bab387b@nxp.com>
 <20250701-95_cam-v1-5-c5172bab387b@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250701-95_cam-v1-5-c5172bab387b@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_023838_065947_4400FD58 
X-CRM114-Status: GOOD (  11.92  )
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

Hi Frank,

Thank you for the patch.

On Tue, Jul 01, 2025 at 06:06:10PM -0400, Frank Li wrote:
> From: "Guoniu.zhou" <guoniu.zhou@nxp.com>
> 
> Add V4L2 subdev driver for DesignWare MIPI CSI2 controller.

This seems to be at least the third instance of a driver for the CSI-2
receiver, the first two being
drivers/media/platform/raspberrypi/rp1-cfe/dphy.c and the second one
drivers/media/platform/renesas/rcar-csi2.c (the latter seems to support
multiple CSI-2 receivers). drivers/staging/media/imx/imx6-mipi-csi2.c
seem related too, likely for an old version of the IP.

Could we please try to avoid code duplication ?

> Signed-off-by: Guoniu.zhou <guoniu.zhou@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  MAINTAINERS                                |    1 +
>  drivers/media/platform/nxp/Kconfig         |   11 +
>  drivers/media/platform/nxp/Makefile        |    1 +
>  drivers/media/platform/nxp/dwc-mipi-csi2.c | 1675 ++++++++++++++++++++++++++++

This should go to drivers/media/platform/synopsys/

>  4 files changed, 1688 insertions(+)

[snip]

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
