Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE961CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 14:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqblvMNR+DXDCXNl/3XISTr7UxhbyBEV/avjTzL9Gnk=; b=dxOM72vDO+kGT/
	CcGE/pWVm9KDVfGVJxsuPILTTXYBDfM0Mv3b/73FRrHRmVXcKD5MgsTxMsUP/VROgM8JAytoPfAis
	MbZTfgJwBguHSHwMM0U3pxmhfAUQ6mZfoUwUaxua+OlO1lJXCG1VlsflVHc0alBdDUVXhUb1I6ELo
	doMErLoSEB1kjaWyAC9b5GNyYz4q5g7H+s48feMLp5cMEIAsMgggrzvZ259iO2QdSwrGe6KMG6i+A
	/HBbfRCEOZnWu0cUcos7YBdV1U09eZUpDDN0iOY+doOcDpFCV6YYJNhap6Se5ftP0omHgeIHV9/WR
	AlMSD7hOMmeissijvd9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskUy-00000007RZD-1tIU;
	Fri, 05 Apr 2024 14:24:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskUv-00000007RY3-0o7G;
	Fri, 05 Apr 2024 14:24:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5D57ACE337D;
	Fri,  5 Apr 2024 14:24:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A85AAC433C7;
	Fri,  5 Apr 2024 14:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712327090;
	bh=9u276kZaHIRoTA4fadL2lfzY0PJaTWAhflWuDXQc7KI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eltXqxIseJTpiuRAJ13spAdHEBB1EkmRpmBqdjP6Uehu/d9KdmHKmpaLerp6rcb1b
	 ytDBJQ9mj8iYPDlAFMU+rbHbI7B2A8Dr21YQV5p+SLT9bq/BLo1HPCnJfXavCO/sUD
	 6OTWC0kWWTQefiM8pVw61K31PavRnvXPa4a70nAJN7WnIQKT+hl3ylfcO4+L5O9/FT
	 01vmrmu0p3OPsUPjB0zEVjw7EglL8QZBLzv97TXIquUwe29e9IJw8PdTBlDh7jqG0B
	 YEj5U8jtyTF0LwOlnHvMtkjYZnV0BpVaMaTgGCz7MrGdazCCg4SuYfSnMLyrUHnzed
	 boUmhxbFl0yxg==
Date: Fri, 5 Apr 2024 19:54:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Sandor Yu <Sandor.yu@nxp.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v15 2/8] phy: Add HDMI configuration options
Message-ID: <ZhAJridEyhUeFVr0@matsya>
References: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
 <20240306101625.795732-3-alexander.stein@ew.tq-group.com>
 <20240306-inquisitive-funny-bull-017550@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240306-inquisitive-funny-bull-017550@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_072453_600985_05300A10 
X-CRM114-Status: GOOD (  24.02  )
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

On 06-03-24, 15:48, Maxime Ripard wrote:
> Hi Alexander,
> 
> On Wed, Mar 06, 2024 at 11:16:19AM +0100, Alexander Stein wrote:
> > From: Sandor Yu <Sandor.yu@nxp.com>
> > 
> > Allow HDMI PHYs to be configured through the generic
> > functions through a custom structure added to the generic union.
> > 
> > The parameters added here are based on HDMI PHY
> > implementation practices.  The current set of parameters
> > should cover the potential users.
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Acked-by: Vinod Koul <vkoul@kernel.org>
> > ---
> >  include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> >  include/linux/phy/phy.h      |  7 ++++++-
> >  2 files changed, 30 insertions(+), 1 deletion(-)
> >  create mode 100644 include/linux/phy/phy-hdmi.h
> > 
> > diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> > new file mode 100644
> > index 0000000000000..b7de88e9090f0
> > --- /dev/null
> > +++ b/include/linux/phy/phy-hdmi.h
> > @@ -0,0 +1,24 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright 2022 NXP
> > + */
> > +
> > +#ifndef __PHY_HDMI_H_
> > +#define __PHY_HDMI_H_
> > +
> > +#include <linux/hdmi.h>
> > +/**
> > + * struct phy_configure_opts_hdmi - HDMI configuration set
> > + * @pixel_clk_rate: Pixel clock of video modes in KHz.
> > + * @bpc: Maximum bits per color channel.
> > + * @color_space: Colorspace in enum hdmi_colorspace.
> > + *
> > + * This structure is used to represent the configuration state of a HDMI phy.
> > + */
> > +struct phy_configure_opts_hdmi {
> > +	unsigned int pixel_clk_rate;
> > +	unsigned int bpc;
> > +	enum hdmi_colorspace color_space;
> > +};
> 
> Does the PHY actually care about the pixel clock rate, color space and
> formats, or does it only care about the character rate?

Nope it should not

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
