Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D168C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjhG+HV0EyXg6KQKtDEpmjubEy20VHAf5Gyzi/5Z6g0=; b=vOkq3utjzl47S8
	cH/wcfNmSjuLAlnFNsOnw4sNS3D7ULegvorNdl2OJ/BCD07ctUN0gByP342RQ7NJawPV590pjIXkS
	LSjOn0DABA09wT9C67DsY43oaLDnpjv2OsVgO1RnAGv1PEpfffFPhsCfoTCOngKoB+ZiYImv/fcqR
	eRDKSaDSHzqMz2sdcvvBE2z8wrM8zmGbFo7jUSMxn8iAh+X+5Aif4oGNzx8mvcTzrpoxRTP+ByrAw
	GKHZxeGEqQocmwKoHUTzmpd9WuhHqGdwKoWL2hmLI0T8dd1fC0dBN7hoSk8oPBjlmMYHvU+n0/DtS
	SOE3DTBJcugFZd+AbBiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot29V-003tU0-I6; Thu, 10 Nov 2022 07:39:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot29H-003t5I-Uq; Thu, 10 Nov 2022 07:38:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3353461DAF;
	Thu, 10 Nov 2022 07:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5653C433D6;
	Thu, 10 Nov 2022 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668065934;
	bh=6Hb2huiH9obJz8hEtiwK2CxoxvD5BS2sJQTW/SKbV94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fNROmp4QzpH/0wd7m2KVyaEQkF1PH1v9rBx/33WDmatJhUyBU72xBYfXXGn3Q+lbb
	 PuzzAUOqpzUu83xcd8+xdXrsjlOXINvMaisx+X8VjON/B7A5UqNNm2cSuOft/1oQwI
	 CWMUQdH0gfeOTSwjANuZ7QfAmapqZ6MwiUNW9X6SFJTmurHlxOZDXyUBJ9QBnZ9IXs
	 1tXI7rgxHo+eynssNYel1i2UQduMABsE/TtLtnYp8oJecVnJw86NbPoAJx+GIEjalV
	 XOydKfjQqyjAszjwoPAo4r1noj5hc0taTYOIi1FhRz2vyMXlhhCf4itl4yzuFTlhpZ
	 pHMyC1byEwuuQ==
Date: Thu, 10 Nov 2022 13:08:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, robert.foss@linaro.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
	tzimmermann@suse.de, lyude@redhat.com, javierm@redhat.com,
	ville.syrjala@linux.intel.com, sam@ravnborg.org,
	jani.nikula@intel.com, maxime@cerno.tech,
	penguin-kernel@i-love.sakura.ne.jp, oliver.brown@nxp.com
Subject: Re: [PATCH v3 04/10] phy: Add HDMI configuration options
Message-ID: <Y2yqiuk13Jjbokum@matsya>
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <3edf9db8261e7f59dcd84a61a492d2483b1e9970.1667911321.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3edf9db8261e7f59dcd84a61a492d2483b1e9970.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_233856_086679_97CF606E 
X-CRM114-Status: GOOD (  25.03  )
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

On 08-11-22, 21:00, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> should cover the potential users.

Is there any dpendency b/w phy and hdmi, I dont see anything in cover..

Pls consider splitting the phy series ..

> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  include/linux/phy/phy-hdmi.h | 33 +++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h      |  7 ++++++-
>  2 files changed, 39 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/phy/phy-hdmi.h
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> new file mode 100644
> index 000000000000..73a32eb535b0
> --- /dev/null
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2022 NXP
> + */
> +
> +#ifndef __PHY_HDMI_H_
> +#define __PHY_HDMI_H_
> +
> +enum hdmi_phy_colorspace {
> +	HDMI_PHY_COLORSPACE_RGB,
> +	HDMI_PHY_COLORSPACE_YUV422,
> +	HDMI_PHY_COLORSPACE_YUV444,
> +	HDMI_PHY_COLORSPACE_YUV420,
> +	HDMI_PHY_COLORSPACE_RESERVED4,
> +	HDMI_PHY_COLORSPACE_RESERVED5,
> +	HDMI_PHY_COLORSPACE_RESERVED6,
> +};

kernel-doc style comments here too please

> +
> +/**
> + * struct phy_configure_opts_hdmi - HDMI configuration set
> + * @pixel_clk_rate:	Pixel clock of video modes in KHz.
> + * @bpc: Maximum bits per color channel.
> + * @color_space: Colorspace in enum hdmi_phy_colorspace.
> + *
> + * This structure is used to represent the configuration state of a HDMI phy.
> + */
> +struct phy_configure_opts_hdmi {
> +	unsigned int pixel_clk_rate;
> +	unsigned int bpc;
> +	enum hdmi_phy_colorspace color_space;
> +};
> +
> +#endif /* __PHY_HDMI_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index b1413757fcc3..6f6873ea7270 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -17,6 +17,7 @@
>  #include <linux/regulator/consumer.h>
>  
>  #include <linux/phy/phy-dp.h>
> +#include <linux/phy/phy-hdmi.h>
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  
> @@ -42,7 +43,8 @@ enum phy_mode {
>  	PHY_MODE_MIPI_DPHY,
>  	PHY_MODE_SATA,
>  	PHY_MODE_LVDS,
> -	PHY_MODE_DP
> +	PHY_MODE_DP,
> +	PHY_MODE_HDMI,
>  };
>  
>  enum phy_media {
> @@ -60,11 +62,14 @@ enum phy_media {
>   *		the DisplayPort protocol.
>   * @lvds:	Configuration set applicable for phys supporting
>   *		the LVDS phy mode.
> + * @hdmi:	Configuration set applicable for phys supporting
> + *		the HDMI phy mode.
>   */
>  union phy_configure_opts {
>  	struct phy_configure_opts_mipi_dphy	mipi_dphy;
>  	struct phy_configure_opts_dp		dp;
>  	struct phy_configure_opts_lvds		lvds;
> +	struct phy_configure_opts_hdmi		hdmi;
>  };
>  
>  /**
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
