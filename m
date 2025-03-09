Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC879C28B28
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 09:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwJeJf/EBjA21BjjmJbEP+RU7pUIduNyrf3CaQQwHRQ=; b=VrH4Q4RexZTsfk
	Pp/+6dJ0rq+8J/EWIpaRrtyCTp+4UbCDaK1/Kv7MWAc7qCJYjl+x4JUrwUc2yXaC1YODUqF24A4Fs
	ng5asWSSUCoZAX96Bp/QwcfPprNef3nVWxE2JR4oEdDnxNFRBylmOohP6xvizP5KOcxkX3upqQIgk
	UGO+A0/976vIRK3gWQ4iVjy4qEewKRnMoJWjnG4PXWhNmKAmmUNngyOZiW1IhHlEukuf91hqcoY+j
	sK8MOVOv2JxEYveBGsknxP+wC/Te2sROy0/7BN49pkYt/VxiGWMQs8hG3dP6poIoDGA5npc+e8a/v
	X0FDTBRo/Wl4rfT++Gtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCvo-00000000HVI-2bQs;
	Sun, 09 Mar 2025 09:26:48 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCvk-00000000HT4-0wnQ
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 09:26:45 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e62d132a6a7so2283598276.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 01:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512403; x=1742117203; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y+UfwYvKoniH4ediByf7+QM/x5ez72G5r941EDLOy/s=;
        b=AqvhRbn7wDK2aqAMbm+xhibCRlVEYXUrsP1mHKEAvCCZM6sajRqMXfBIoZ/IxFTo2c
         +GA8k1xw2zM40xYo/+YaNe7/1OW9lpeubr+mGLDY83ley+UNyj6vrLstc+tAKkTjZSu4
         NOLInddsdiViKbrGzxWl9QBqxY0VyNfXnl3iIvK+qi/oiVlCPcSMZ1c2xKh6x5wCRX9d
         f6i/nCvHfRy+YTqdOT6oyiRyCG3GqGMXeOacC8LcAyLvmYi5XtVqLieKoDCa1BeLBoBU
         4UoufUN0JxO1n8gsKpqjwr7i7xo5tM0C2XFCXszWqUjjYt7oSPpF2QL9eKVBJFNOQrNj
         qBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512403; x=1742117203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y+UfwYvKoniH4ediByf7+QM/x5ez72G5r941EDLOy/s=;
        b=Vw4Bcew7rFtMeaAbFfivGOoSKInVTZjIRivcqLdgSlAQnRlK+1tcH0r5aBZyIqz/pj
         HzbxoGGnEZB8WwbbDBX2uV4dZkc8hS6Q6I8esBBvmXDaqHFCJ8gdd77pb5AAMKY28r5i
         T4oAp13MOxCMDwlF1ob7UWJFGEokZ8+XvfdPIy0QWC0UkhXyrO5rI1ek2mE3SOBlsts+
         9yNN3SX8RoxCAX+CccydQ0WKo+TZQpiFi+iqYkF1CVMjj5gI1ee0uZFLcoUfmqGr5Kj1
         //XPW4sYdCBHEGX6CVT9n7YaOEwfcL2h5gfRz2IS05wlGY7LuAn5usexr6yr/wioxqCt
         26LA==
X-Forwarded-Encrypted: i=1; AJvYcCXg1FGQCQEk/lVsbZ7U8fBmBe4GZxaIvzYy5s8hPcvtN0HvaUQb+8wKrC7u54kE0kmIYrljwEHIYo0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj/WqXKuGrqbr89uM8f40Gq9atXSlkdrKgrKtCd9GRsUv+hptM
	AgCSkDA6bif93/t7JQCxUhjRbvG6En5B0gwzHI8fdclsLKErZa2wKjTwxkNDdhkPCFmRUVWy91i
	nvHb+KS52eB3p6N6mewwVbgl3KwIGQpt61M3NOQ==
X-Gm-Gg: ASbGncuRr2gHdMqN3N4rgV3J5y8DayhwtILnipTF6BOgrFtOFCR7jJY6CvN/Ce1t3kX
	VOGNXP6UWRH7EXQJ/jPwxWOw+JODOg/V4MHDc12f5TFHVJ7Xg/B+rjKPdDkhtcz+SOVgiGnxCi/
	oAWT49cU72XFFrIUdrrZv8PQzzPXJXXV8UME5WygS7
X-Google-Smtp-Source: AGHT+IEN3V2OLC8hZDOELnAVWI6ww13m5GBnJ8YaCGEl0AbmzOskx9R9Se1xuJeZm/tmBc9JT8v5uFIi9nlaU4PorAA=
X-Received: by 2002:a05:6902:2683:b0:e60:b17c:423f with SMTP id
 3f1490d57ef6-e635c17bdb5mr13660886276.28.1741512403353; Sun, 09 Mar 2025
 01:26:43 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-8-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-8-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:26:32 +0200
X-Gm-Features: AQ5f1JqfxNZ22KnfkCh9BmlsU97_eUwp8gZfAiDHoYY-EuyqHBEuJ0Y2Zcaf2N0
Message-ID: <CAA8EJpoGu4Tq-wt09Jj+b+=eJ3dNXhPWVOg4DyCQxrJbFNFfYw@mail.gmail.com>
Subject: Re: [PATCH v5 08/12] phy: rockchip: samsung-hdptx: Setup TMDS char
 rate via phy_configure_opts_hdmi
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_012644_274950_8EB2E645 
X-CRM114-Status: GOOD (  18.95  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> The current workaround to setup the TMDS character rate relies on the
> unconventional usage of phy_set_bus_width().
>
> Make use of the recently introduced HDMI PHY configuration API to
> properly handle the setup.  The workaround will be dropped as soon as
> the switch has been completed on both ends.
>
> Rename rk_hdptx_phy_verify_config() to rk_hdptx_phy_verify_dp_config()
> and introduce the rk_hdptx_phy_verify_hdmi_config() helper to check the
> HDMI parameters during phy_configure().
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++++++++++------
>  1 file changed, 47 insertions(+), 17 deletions(-)
>

> @@ -1469,8 +1474,27 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
>         return rk_hdptx_phy_consumer_put(hdptx, false);
>  }
>
> -static int rk_hdptx_phy_verify_config(struct rk_hdptx_phy *hdptx,
> -                                     struct phy_configure_opts_dp *dp)
> +static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
> +                                          struct phy_configure_opts_hdmi *hdmi)
> +{
> +       int i;
> +
> +       if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
> +               return -EINVAL;
> +
> +       for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
> +               if (hdmi->tmds_char_rate == ropll_tmds_cfg[i].rate)
> +                       break;

return 0;

> +
> +       if (i == ARRAY_SIZE(ropll_tmds_cfg) &&

Then you can drop the first clause in the if

> +           !rk_hdptx_phy_clk_pll_calc(hdmi->tmds_char_rate, NULL))
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int rk_hdptx_phy_verify_dp_config(struct rk_hdptx_phy *hdptx,
> +                                        struct phy_configure_opts_dp *dp)
>  {
>         int i;
>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
