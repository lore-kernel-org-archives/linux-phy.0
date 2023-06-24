Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58340EB64DD
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jun 2023 18:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4ZLSjbQZVVCfHernl7SotSnxJLSNNXC06VSI0Q1YiU=; b=UoxAEJj4KWICz7
	QgKWupHnqE8LhTj2wOMZbNrqaQ1+4IrCSmxCL/YNycjF787lnxHmXb7QmZA1vxRYLzRURWFcvEFUQ
	pJSoLzQfdoApNaEQm3Z2ozZzTqOn/ZBxBdQX4HLxoy74VLCatTt0H3U2yg3t/tzrfJJMQCecvW4o0
	WwAbkHXf5WFCmKpu7mNs9qEVvbSm3IosiUBq9P4lgO+nkaL3L+c54w8vtap0gCb9icHhcidMBsYgl
	D4KOAgxRVj/E6hsXnpTBqvagwCFNJcUdMCkqa9hhH3s3X9rKjn/gyHwjv+c4SG2OTZdOX96OPlXKw
	F3jKc2mXcQWw3+3o6zxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qD7aS-006LqA-2D;
	Sat, 24 Jun 2023 18:02:16 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qD7aP-006LpF-2K
	for linux-phy@lists.infradead.org;
	Sat, 24 Jun 2023 18:02:15 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f96da99965so2260015e87.1
        for <linux-phy@lists.infradead.org>; Sat, 24 Jun 2023 11:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687629729; x=1690221729;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b8aXK79fA9FR8gAtXzWQUHnQm80+lmfMQEsV5inLFFs=;
        b=HWf9+bLfsRsQ5gE5EplC6PQgmM/X18AmoRfH1ZpiWsNARJZdODjeXjJL4WSLHnirjP
         tUXHS7lRPy8UB4ot23yvWGA5rmp8sX0moTPJYFCAaT1xNZOy08gHKgEbmI+J2RH6IXKO
         0Rw+CGF2tc0EY3SmtGu4Sc0HuSTGwooqfVDjZ8bJUPgDSyFGheq5PDJ7DbeiUIqng3Kj
         i2OUAeajWNEQjbdn3X5/Nvw8MO1k6YY/ssyfjvAxzllzn5RQ4Ib09vPQMUlXCzCrbLEK
         KuDnSjuKBWtnX6Xl3FoX95oj0KZ5AQhft7FdRDTs4kQ8cLzCevkMsmOZgguTqloef1Fg
         VDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687629729; x=1690221729;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b8aXK79fA9FR8gAtXzWQUHnQm80+lmfMQEsV5inLFFs=;
        b=GiYeiuhtuN6NX//yOGIQJofWcfO+vB58iN6asZExbnfr8OJdJfdTwpDvOwYu1zVHMc
         4CmR/yTdUXuXHtu/yEODvFu3JUuvaCHvqwrwhdJLDu6hyTe44alfV12VADVUc0/mpeVR
         VdxhYzbWOy/gL9GwWe0usb+AY0pbhJhGUk/ZV48INd+thgBGlmbs10Z50/N9Zb//OyLE
         XArdliW4MFOGFvJxY5uXuh/SMzMJZhhE7dxqSFLW3Av+pdSoeBYfSYJIHSX/4Bb5w0R6
         +Th5K4pt+EMjVzKgm5uLt2FgdUZUC9gvulAoKQvAFfpmGMh8Bs8jcUNADtADcE3IFK6E
         mozQ==
X-Gm-Message-State: AC+VfDydT9EyXBF8DhI71tLSp9BKoobOvX6p5ajpmOk4l/4evk2zmx5I
	DoixEe33PilYkylh3Xp9I9US9g==
X-Google-Smtp-Source: ACHHUZ4AwY7UKYyZJUEu0YUv5C4sz9uG4mSL1/otAdmuKa0+0lafodbdvnsMQ8A0fkFvV5cdyGqgfw==
X-Received: by 2002:a05:6512:3f05:b0:4fa:abe7:7c80 with SMTP id y5-20020a0565123f0500b004faabe77c80mr320140lfa.39.1687629729435;
        Sat, 24 Jun 2023 11:02:09 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m25-20020ac24ad9000000b004fad16596fasm61996lfp.21.2023.06.24.11.02.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jun 2023 11:02:08 -0700 (PDT)
Message-ID: <6f590bb6-7d17-3ae8-684d-2d4403d6ff55@linaro.org>
Date: Sat, 24 Jun 2023 21:02:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 4/8] phy: Add HDMI configuration options
Content-Language: en-GB
To: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
References: <cover.1686729444.git.Sandor.yu@nxp.com>
 <cec469206a166c4b070fd7d7bbf89a8df656ccc6.1686729444.git.Sandor.yu@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <cec469206a166c4b070fd7d7bbf89a8df656ccc6.1686729444.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230624_110213_804827_7DB77BD9 
X-CRM114-Status: GOOD (  21.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 15/06/2023 04:38, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> should cover the potential users.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>   include/linux/phy/phy-hdmi.h | 38 ++++++++++++++++++++++++++++++++++++
>   include/linux/phy/phy.h      |  7 ++++++-
>   2 files changed, 44 insertions(+), 1 deletion(-)
>   create mode 100644 include/linux/phy/phy-hdmi.h
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> new file mode 100644
> index 000000000000..5765aa5bc175
> --- /dev/null
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -0,0 +1,38 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2022 NXP
> + */
> +
> +#ifndef __PHY_HDMI_H_
> +#define __PHY_HDMI_H_
> +
> +/**
> + * Pixel Encoding as HDMI Specification
> + * RGB, YUV422, YUV444:HDMI Specification 1.4a Section 6.5
> + * YUV420: HDMI Specification 2.a Section 7.1
> + */
> +enum hdmi_phy_colorspace {
> +	HDMI_PHY_COLORSPACE_RGB,        /* RGB 4:4:4 */
> +	HDMI_PHY_COLORSPACE_YUV422,     /* YCbCr 4:2:2 */
> +	HDMI_PHY_COLORSPACE_YUV444,     /* YCbCr 4:4:4 */
> +	HDMI_PHY_COLORSPACE_YUV420,     /* YCbCr 4:2:0 */
> +	HDMI_PHY_COLORSPACE_RESERVED4,
> +	HDMI_PHY_COLORSPACE_RESERVED5,
> +	HDMI_PHY_COLORSPACE_RESERVED6,
> +};

This enum duplicates enum hdmi_colorspace from <linux/hdmi.h>
HDMI 2.0 defines '7' to be IDO-defined.

Would it be better to use that enum instead?

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

[skipped the rest]

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
