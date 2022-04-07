Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D7CC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 08:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkrq87b+kwf5bQ+oX+/xqMGn4nP6NXSQAB9QoLWOJn0=; b=KWail89cApQQ2Q
	iZyP3pu3HswtHL7QZpcGOgaGoNrTJimRI+xA2Iwvk/WYBKLvHEBqqpALH4VMD9LCvytS8Nooc0MLQ
	rNg0SxD7cRB6zrCrvQAFj2iKWMXYOUtggaeksO84gFm0jKIuV6JVbhnU4+TgQtT05kqg1hkkkyPJT
	Tdc/R89UHGDPiiJBV66PeWFiSXE7kg6TxDf7qixi4+6lpvIvdd7P/K6Y0kKOVfkGR1y7kabIb0CgY
	/uVUupiPGQ/N//pZmwMv/PxuSYdKgNWtl8KB4ySHqiCX8a55ZCBrWiY+e4LBln3trpryzmUFG4Dob
	8k/Ocoem6lQDqaMuP4Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncNx1-00AcwV-Q3; Thu, 07 Apr 2022 08:57:11 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNXg-00AQPv-4g
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 08:31:03 +0000
Received: by mail-wr1-x433.google.com with SMTP id h4so6656772wrc.13
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 01:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=mhNafdINL/bGSsdlwXHEq3XpvjEJWoppfiwKb+g/P+c=;
 b=ueQuovcZvEt3n41Rr5VE/fSBy6pGmbFsDIHSEDegP7Du3XYgNWq9xzJDUuLESdpJ2K
 27O5kvicyEcqww64Id2bAU3wdmT4ulnvrCP3KEnFdrlZo24ekaISTuI+oDQnsa/lYBDC
 mfEl5+8MsJKNxPjf8HeSWf1WFJwD+VSINxrw8s5FuMnOqQ2wdp4LLDDMD6iW30HYArl7
 /iHWftqJlMj316Zw4w/T+st8ed53A1WUoC0E1d2N2VoUR5PInyHfgtC4CdX3zCLodMLW
 61PHkxhRX2KF4MIKnhn2PtQXHvlDyOeVAN9HR/JUmAKVfcbfXYdpI+h1axeibEfeO28L
 kycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=mhNafdINL/bGSsdlwXHEq3XpvjEJWoppfiwKb+g/P+c=;
 b=4yE1sD9tUR04AimStar62sXwvEKIYgC52B59CUQPzuRJ2QkI7MEvnAujSMFHZ6tKyE
 zvytKWzY+2BKy9LoRNUlpWOlCkyAyBY2Nt8fcXsJzNC0khZN6meoCFTHMk6nZRdMMmPS
 4/E0UQ/Xqbp1GKysCGbwmrDzPgCySF/cNnJTGWARdzWyTpenAqN55k1Jjp3YzYbmL8q9
 UysR4E+I8l69CoCP5PtVy3AVh73T0kOtcoc2HUa3AAmewcEqlTDPCxbXoBjwZT1S/AEW
 6n0DD1mqK8OeZkyf6VVcmP9it4zUmAbhS6nNDFKztpwQv+1G9t7niCL2IEmZvUZYtzIL
 bTuQ==
X-Gm-Message-State: AOAM5328xGHWFPKc+j7UyO0amEQOsGSvBiyckR6PeXNdTtVgFJAUdXoF
 VmUwwM6V1Bi7qmmG82PsTn62Fg==
X-Google-Smtp-Source: ABdhPJyDahYyDu5X5b9pS0X7gZEs4+O0WHJD+fGEmCO9oi7r9gXJOeQ3Y1cMEpPj7dDF7hjSGxZ0UA==
X-Received: by 2002:adf:f387:0:b0:206:1028:921f with SMTP id
 m7-20020adff387000000b002061028921fmr9785982wro.706.1649320257690; 
 Thu, 07 Apr 2022 01:30:57 -0700 (PDT)
Received: from [10.1.3.188]
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id
 11-20020a056000156b00b002040674fd13sm20116879wrz.38.2022.04.07.01.30.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 01:30:57 -0700 (PDT)
Message-ID: <b3abd199-0acb-a2d3-bd53-aa26182aa0c9@baylibre.com>
Date: Thu, 7 Apr 2022 10:30:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v0 01/10] drm/bridge: dw-hdmi: add low-active PHY reset
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-2-l.stach@pengutronix.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220406160123.1272911-2-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_013100_256986_D6A33124 
X-CRM114-Status: GOOD (  12.76  )
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

Hi Lucas,

On 06/04/2022 18:01, Lucas Stach wrote:
> Allow vendor PHY implementations to reset PHYs with different polarity
> than the current Gen2 reset.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++++
>   include/drm/bridge/dw_hdmi.h              | 1 +
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 4befc104d220..7600f26aab27 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -1365,6 +1365,13 @@ void dw_hdmi_phy_reset(struct dw_hdmi *hdmi)
>   }
>   EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset);
>   
> +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi)
> +{
> +	hdmi_writeb(hdmi, 0, HDMI_MC_PHYRSTZ);
> +	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_PHYRSTZ, HDMI_MC_PHYRSTZ);
> +}
> +EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset_active_low);
> +
>   void dw_hdmi_phy_i2c_set_addr(struct dw_hdmi *hdmi, u8 address)
>   {
>   	hdmi_phy_test_clear(hdmi, 1);
> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> index 2a1f85f9a8a3..9b3d52a1e62a 100644
> --- a/include/drm/bridge/dw_hdmi.h
> +++ b/include/drm/bridge/dw_hdmi.h
> @@ -190,6 +190,7 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
>   void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable);
>   void dw_hdmi_phy_gen2_txpwron(struct dw_hdmi *hdmi, u8 enable);
>   void dw_hdmi_phy_reset(struct dw_hdmi *hdmi);
> +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi);
>   
>   enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
>   					       void *data);

This has already been submitted at https://lore.kernel.org/r/800262112191a720639ba321be18f0926d4e1d2a.1649230434.git.Sandor.yu@nxp.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
