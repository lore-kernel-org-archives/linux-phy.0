Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 442A5CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5Cc/og8Dq90o+4rKyBMgRVZM48rGZiBT1mw6AhaMj4=; b=1y7b+KylG57P5v
	Lsf4bBILfRjAmP5xu5mf2Q6TDo/l7mx4pyVZ26ZsTDnbGO3SFSDb+XNybRu8WgPA7VZXvoKQ4CyNw
	9RsvmYtb1eXYx7O6w1CZlY4VA3AEdkJxHEfwJggIKiSBXsKXSA8jh9f8QAABG1VRUG3mc8XpiCiJF
	g+b5vXEF9+ZMe7ZLRpfm3I2ZT3To2GC/FS8UV2OIkXxKQFdsky98UpsF9g2ffovOZyZFdAW7utCbR
	yGqNP01l868YUBekwxSZR7gEolWEjOMEAHFrvM+sbYcFO1StX3n1XdeIADrISDU8SZqQmptoJ+apb
	oN/0GFn1AtWzK5eHmytw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rslCd-00000007fMr-3ZlB;
	Fri, 05 Apr 2024 15:10:03 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rslCb-00000007fGq-00Lu
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 15:10:02 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-516d0162fa1so2363053e87.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712329791; x=1712934591; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XJdX04IMH/Sr5fcTtZ7IsQwpDomVdtoarGfuP7SX06s=;
        b=oDyjptQ432GjGqWcCYmOn1zYbCf1ANYC59vuO0ZYQUD8h5+MOAWKNebjorO5+pLfjj
         g5ja3WkV7TVZfzB+t0Ipu0GBY38mielbQm2kTiMdRHz0jcnvhsYSKkn4SBXJ6jhER1Oo
         KWIvjH/BgE2EC+8cfJ0S6YIQ6RUI623AkQf7zEBDR74G0ic6Riede6/yZgEE4GM0sYyC
         Rbe3Y4/YdPUFOPqZztzlOIACFEbyzZbneF1joOyN33xX2JbWa0OvaofghUxNpLf3cZRy
         ogap81bEa02g9XCcB5CVWGA+iu5uX9vOrbpE2zowfYIy4a+k0lGnnyrvGYEjNYC0+Z38
         wlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712329791; x=1712934591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XJdX04IMH/Sr5fcTtZ7IsQwpDomVdtoarGfuP7SX06s=;
        b=RP90vgxfWsR/gtQSoAfxWAIFrrD+GqFgHlRtIvf2/VWcXfelNm3YyFQjvr6oR5/Dfz
         rdaDtWreQAVT1WduFGU0kgnMSaxVxHrL+9J0VeuUX1ALCYcxhXET0Na2A8c7sbUJM/f5
         x1GpdSpZidxTRlO+E1Bi36smVba9anwTqUrBX5obC4ZFLLjGlYxmZ/3XGcpvjBtQqmcz
         NBPRsw5bzw7OO1FjShpotgFLou0NpML8IwJIRZIoodxTHKWdS68TC0mXzAftTrX5tflm
         J7Og9V3OW80pVd68uy4TrYJ2b1lAlff+nVujv7CNCKHqRtGYYdtV/gHppE9K63I1a+kD
         XbDA==
X-Forwarded-Encrypted: i=1; AJvYcCUOC6KS/tfjvPfpUDlEsW04SRYoSB6lfSvyNrlz8+sbbG/dKBQwCy7k1GquJ0i3Dhm3DjFk1l07aCo/35pBJijvirlGhwEBo5G+7Y6/wg==
X-Gm-Message-State: AOJu0YwlXh2icB4PoAdmU6/udVw8rcponx2GBWojRJLQeS/UqZLmrYTy
	BVxaSxPgfTErJeg0R1LUKWUoSd2svqAhSKzFF6jpa55cyfEiQpDOF/LBXneaS/k=
X-Google-Smtp-Source: AGHT+IHr0Gt4JNXkFtNyK4SoOL2Aljmp8TnDpiAo6jcvc0P5uChKtBqN0OC5YPsqfbIT76tBCMSLfQ==
X-Received: by 2002:a05:6512:44b:b0:513:cf5e:f2ad with SMTP id y11-20020a056512044b00b00513cf5ef2admr1527967lfk.60.1712329790930;
        Fri, 05 Apr 2024 08:09:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b00516cf20b276sm214121lfr.86.2024.04.05.08.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 08:09:50 -0700 (PDT)
Date: Fri, 5 Apr 2024 18:09:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH v15 2/8] phy: Add HDMI configuration options
Message-ID: <7uculhmuov3z6o4xgv54ubdmju52y4jw7qkjbnslnyqbqgf5ku@sxrkuw4uwavx>
References: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
 <20240306101625.795732-3-alexander.stein@ew.tq-group.com>
 <20240306-inquisitive-funny-bull-017550@houat>
 <ZhAJridEyhUeFVr0@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhAJridEyhUeFVr0@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_081001_061439_BA3B51C1 
X-CRM114-Status: GOOD (  27.54  )
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

On Fri, Apr 05, 2024 at 07:54:46PM +0530, Vinod Koul wrote:
> On 06-03-24, 15:48, Maxime Ripard wrote:
> > Hi Alexander,
> > 
> > On Wed, Mar 06, 2024 at 11:16:19AM +0100, Alexander Stein wrote:
> > > From: Sandor Yu <Sandor.yu@nxp.com>
> > > 
> > > Allow HDMI PHYs to be configured through the generic
> > > functions through a custom structure added to the generic union.
> > > 
> > > The parameters added here are based on HDMI PHY
> > > implementation practices.  The current set of parameters
> > > should cover the potential users.
> > > 
> > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > Acked-by: Vinod Koul <vkoul@kernel.org>
> > > ---
> > >  include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> > >  include/linux/phy/phy.h      |  7 ++++++-
> > >  2 files changed, 30 insertions(+), 1 deletion(-)
> > >  create mode 100644 include/linux/phy/phy-hdmi.h
> > > 
> > > diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> > > new file mode 100644
> > > index 0000000000000..b7de88e9090f0
> > > --- /dev/null
> > > +++ b/include/linux/phy/phy-hdmi.h
> > > @@ -0,0 +1,24 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * Copyright 2022 NXP
> > > + */
> > > +
> > > +#ifndef __PHY_HDMI_H_
> > > +#define __PHY_HDMI_H_
> > > +
> > > +#include <linux/hdmi.h>
> > > +/**
> > > + * struct phy_configure_opts_hdmi - HDMI configuration set
> > > + * @pixel_clk_rate: Pixel clock of video modes in KHz.
> > > + * @bpc: Maximum bits per color channel.
> > > + * @color_space: Colorspace in enum hdmi_colorspace.
> > > + *
> > > + * This structure is used to represent the configuration state of a HDMI phy.
> > > + */
> > > +struct phy_configure_opts_hdmi {
> > > +	unsigned int pixel_clk_rate;
> > > +	unsigned int bpc;
> > > +	enum hdmi_colorspace color_space;
> > > +};
> > 
> > Does the PHY actually care about the pixel clock rate, color space and
> > formats, or does it only care about the character rate?
> 
> Nope it should not

After taking a look at the Cadence PHY driver, I share the feeling that
hdptx_hdmi_feedback_factor() should be reworked into drm_display helper
and then the struct phy_configure_opts_hdmi can be limited to having a
single unsigned long char_freq or bit_rate field.

I'm not sure whether we need anything corresponding to the TMDS Bit
Clock Ratio control. As far as I understand, it can be deduced from the
Bit Rate.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
