Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E27C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnP631Yb+y7YPZX+HJNELpHG44s3gr+c6IvYHOrmnNw=; b=R2wUyU7Xs+Jtbu
	aeIkEv9zGneSkhKNc0iRs56uWq/M1xpMUyaTI7Ug+DhkCcbZkIxnYfX5CmtTq2o8h/zGJkg8+pQtA
	HymK0b8BzGiXhaG9yoYTob4gUvx6Dz6vMH9O8BLLPtTzT7lGsA+uG6YqpSMDS48hvL56x73VTOCOY
	sNKHUGcHrgyen8h9P5LPIvF97mAAgjB5ipFl7Jm2xggDlm65WpcmMcmI1M8xikiCQ0wavVXakhsEa
	JyyfoOJmzRMExAttRsmFXG2BbxqO7ljlnqubJ3jRJvu4P63CilnNNRtVLsE2y03RCIi3fGAZ0fVCk
	dOQohK3Wvhe1UJmy4JGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6Md-00GyE5-P2; Mon, 07 Nov 2022 17:56:51 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6M7-00GxvG-8T; Mon, 07 Nov 2022 17:56:21 +0000
Received: by mail-ej1-x62b.google.com with SMTP id bj12so32164381ejb.13;
        Mon, 07 Nov 2022 09:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J5M84yR8KNE7J//HkmOfrU2wJfnp3oxXpkFv2HPRJ1U=;
        b=VzR9NOF7ibds6GvNg4Oy9x9HMK67mAuNUmqRtlTryLB1r8/IBq2VvzQCSlh/yUuLIO
         OIE/VdoZcyKManiV+u7N9cn0WiG0OR7CWkUM72C5E0FR2DQYqCKPMbq+mrigEkrqMCE4
         3B8ypglfllMhz5a88p6Y9vNxgD3nzzvd+NcajZ/2mwRPuPdLFLRV8buCHi40d7/tLbQ6
         ivjiLLaCDPO/pzXnQs5kqJRB2wdPeq5K2yK5jj+LpidjQdJy9kdf83miDY2csU5y4OG/
         zJqND2qonYyDXaWy9LaKkmOQZDeIBtot684WOkLQqZQGjt0F3NyfkiFIredeSVHv3uuI
         okPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5M84yR8KNE7J//HkmOfrU2wJfnp3oxXpkFv2HPRJ1U=;
        b=DZCK0ZT4MizzvvHMhgGE8KTCRgURqCz0M6/DBYl+/804FzVFPQw+5n8NdkE0rFNdmK
         dXCELVJSdkg8h2coiw3ZU/9MRd8ukgE6AF1e3nEbZP2DaooawDBZTT10kSpSqaFJApQ7
         H/gx7OcJG7Jq2hgfVE6xGVfhvGCsMpLCBrfwFp1mmn5kCz1vAU4jW1mUlKNCpzdbv7nI
         Zi54epkq+9Vdj7cgcqj88nEXKWlSuHiPgGWs4GSkRf/zlAFni7rO6rOVjXmuPvQk7Ext
         c5QLRh8SaT7sAbic7F95VfBqbIanPMhkU+Gby7SqsyrCRrbYisOmh23wtkvKTFLyRNXD
         hyTg==
X-Gm-Message-State: ACrzQf0+ENceo3QbCZWuPl+2TpSKVSIXWfB9uQ8xPRYCkZhSjLpYQnzT
	bor4PTGmorKmc2/LMfVKsF0=
X-Google-Smtp-Source: AMsMyM73NaXR5bS3Tds0v+JWeAryVlqO+sjHd7Q3UjZyhgcmfE25ZUhpkCzu1RdXg83KzF6K6uyS3Q==
X-Received: by 2002:a17:907:c24:b0:7ae:41b3:6a67 with SMTP id ga36-20020a1709070c2400b007ae41b36a67mr15286323ejc.254.1667843777564;
        Mon, 07 Nov 2022 09:56:17 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id kx23-20020a170907775700b00773f3cb67ffsm3655524ejc.28.2022.11.07.09.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:56:17 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Bin Liu <b-liu@ti.com>
Subject: Re: [PATCH v3 11/11] usb: musb: sunxi: Introduce config struct
Date: Mon, 07 Nov 2022 18:56:13 +0100
Message-ID: <8137106.T7Z3S40VBb@kista>
In-Reply-To: <20221106154826.6687-12-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-12-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_095619_382565_EA64B8F2 
X-CRM114-Status: GOOD (  25.51  )
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

Hi Andre!

Dne nedelja, 06. november 2022 ob 16:48:26 CET je Andre Przywara napisal(a):
> Currently the probe routine explicitly compares the compatible string of
> the device node to figure out which features and quirks a certain
> Allwinner MUSB model requires. This gets harder to maintain for new
> SoCs.
> 
> Add a struct sunxi_musb_cfg that names the features and quirks
> explicitly, and create instances of this struct for every type of MUSB
> device we support. Then bind this to the compatible strings via the OF
> data feature.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  drivers/usb/musb/sunxi.c | 101 +++++++++++++++++++++++++++++----------
>  1 file changed, 75 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/usb/musb/sunxi.c b/drivers/usb/musb/sunxi.c
> index 4b368d16a73a..266f8baf5af0 100644
> --- a/drivers/usb/musb/sunxi.c
> +++ b/drivers/usb/musb/sunxi.c
> @@ -15,6 +15,7 @@
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/phy/phy-sun4i-usb.h>
>  #include <linux/platform_device.h>
>  #include <linux/reset.h>
> @@ -67,6 +68,13 @@
>  #define SUNXI_MUSB_FL_NO_CONFIGDATA		7
>  #define SUNXI_MUSB_FL_PHY_MODE_PEND		8
> 
> +struct sunxi_musb_cfg {
> +	int nr_endpoints;
> +	bool has_sram;
> +	bool has_reset;
> +	bool no_configdata;
> +};
> +
>  /* Our read/write methods need access and do not get passed in a musb ref
> :| */ static struct musb *sunxi_musb;
> 
> @@ -625,7 +633,7 @@ static const struct musb_platform_ops sunxi_musb_ops = {
> #define SUNXI_MUSB_MAX_EP_NUM	6
>  #define SUNXI_MUSB_RAM_BITS	11
> 
> -static struct musb_fifo_cfg sunxi_musb_mode_cfg[] = {
> +static struct musb_fifo_cfg sunxi_musb_mode_cfg_5eps[] = {
>  	MUSB_EP_FIFO_SINGLE(1, FIFO_TX, 512),
>  	MUSB_EP_FIFO_SINGLE(1, FIFO_RX, 512),
>  	MUSB_EP_FIFO_SINGLE(2, FIFO_TX, 512),
> @@ -641,7 +649,7 @@ static struct musb_fifo_cfg sunxi_musb_mode_cfg[] = {
>  /* H3/V3s OTG supports only 4 endpoints */
>  #define SUNXI_MUSB_MAX_EP_NUM_H3	5
> 
> -static struct musb_fifo_cfg sunxi_musb_mode_cfg_h3[] = {
> +static struct musb_fifo_cfg sunxi_musb_mode_cfg_4eps[] = {
>  	MUSB_EP_FIFO_SINGLE(1, FIFO_TX, 512),
>  	MUSB_EP_FIFO_SINGLE(1, FIFO_RX, 512),
>  	MUSB_EP_FIFO_SINGLE(2, FIFO_TX, 512),
> @@ -652,18 +660,18 @@ static struct musb_fifo_cfg sunxi_musb_mode_cfg_h3[] =
> { MUSB_EP_FIFO_SINGLE(4, FIFO_RX, 512),
>  };
> 
> -static const struct musb_hdrc_config sunxi_musb_hdrc_config = {
> -	.fifo_cfg       = sunxi_musb_mode_cfg,
> -	.fifo_cfg_size  = ARRAY_SIZE(sunxi_musb_mode_cfg),
> +static const struct musb_hdrc_config sunxi_musb_hdrc_config_5eps = {
> +	.fifo_cfg       = sunxi_musb_mode_cfg_5eps,
> +	.fifo_cfg_size  = ARRAY_SIZE(sunxi_musb_mode_cfg_5eps),
>  	.multipoint	= true,
>  	.dyn_fifo	= true,
>  	.num_eps	= SUNXI_MUSB_MAX_EP_NUM,
>  	.ram_bits	= SUNXI_MUSB_RAM_BITS,
>  };
> 
> -static struct musb_hdrc_config sunxi_musb_hdrc_config_h3 = {
> -	.fifo_cfg       = sunxi_musb_mode_cfg_h3,
> -	.fifo_cfg_size  = ARRAY_SIZE(sunxi_musb_mode_cfg_h3),
> +static struct musb_hdrc_config sunxi_musb_hdrc_config_4eps = {

While at it, you can mark above struct as const. 5eps struct is already marked 
as const.

> +	.fifo_cfg       = sunxi_musb_mode_cfg_4eps,
> +	.fifo_cfg_size  = ARRAY_SIZE(sunxi_musb_mode_cfg_4eps),
>  	.multipoint	= true,
>  	.dyn_fifo	= true,
>  	.num_eps	= SUNXI_MUSB_MAX_EP_NUM_H3,
> @@ -677,6 +685,7 @@ static int sunxi_musb_probe(struct platform_device
> *pdev) struct platform_device_info	pinfo;
>  	struct sunxi_glue		*glue;
>  	struct device_node		*np = pdev->dev.of_node;
> +	const struct sunxi_musb_cfg	*cfg;
>  	int ret;
> 
>  	if (!np) {
> @@ -713,29 +722,35 @@ static int sunxi_musb_probe(struct platform_device
> *pdev) return -EINVAL;
>  	}
>  	pdata.platform_ops	= &sunxi_musb_ops;
> -	if (!of_device_is_compatible(np, "allwinner,sun8i-h3-musb"))
> -		pdata.config = &sunxi_musb_hdrc_config;
> -	else
> -		pdata.config = &sunxi_musb_hdrc_config_h3;
> +
> +	cfg = of_device_get_match_data(&pdev->dev);
> +	if (!cfg)
> +		return -EINVAL;
> +
> +	switch (cfg->nr_endpoints) {
> +	case 4:
> +		pdata.config = &sunxi_musb_hdrc_config_4eps;
> +		break;
> +	case 5:
> +		pdata.config = &sunxi_musb_hdrc_config_5eps;
> +		break;
> +	default:
> +		dev_err(&pdev->dev, "Only 4 or 5 endpoints 
supported\n");
> +		return -EINVAL;
> +	}

Overall nice cleanup! Only thing I would rather see different is to use pointer 
to struct musb_fifo_cfg directly in config struct. That way you avoid above 
switch case.

Best regards,
Jernej

> 
>  	glue->dev = &pdev->dev;
>  	INIT_WORK(&glue->work, sunxi_musb_work);
>  	glue->host_nb.notifier_call = sunxi_musb_host_notifier;
> 
> -	if (of_device_is_compatible(np, "allwinner,sun4i-a10-musb") ||
> -	    of_device_is_compatible(np, "allwinner,suniv-f1c100s-musb")) {
> +	if (cfg->has_sram)
>  		set_bit(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags);
> -	}
> 
> -	if (of_device_is_compatible(np, "allwinner,sun6i-a31-musb"))
> +	if (cfg->has_reset)
>  		set_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);
> 
> -	if (of_device_is_compatible(np, "allwinner,sun8i-a33-musb") ||
> -	    of_device_is_compatible(np, "allwinner,sun8i-h3-musb") ||
> -	    of_device_is_compatible(np, "allwinner,suniv-f1c100s-musb")) {
> -		set_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);
> +	if (cfg->no_configdata)
>  		set_bit(SUNXI_MUSB_FL_NO_CONFIGDATA, &glue->flags);
> -	}
> 
>  	glue->clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(glue->clk)) {
> @@ -813,12 +828,46 @@ static int sunxi_musb_remove(struct platform_device
> *pdev) return 0;
>  }
> 
> +static const struct sunxi_musb_cfg sun4i_a10_musb_cfg = {
> +	.nr_endpoints = 5,
> +	.has_sram = true,
> +};
> +
> +static const struct sunxi_musb_cfg sun6i_a31_musb_cfg = {
> +	.nr_endpoints = 5,
> +	.has_reset = true,
> +};
> +
> +static const struct sunxi_musb_cfg sun8i_a33_musb_cfg = {
> +	.nr_endpoints = 5,
> +	.has_reset = true,
> +	.no_configdata = true,
> +};
> +
> +static const struct sunxi_musb_cfg sun8i_h3_musb_cfg = {
> +	.nr_endpoints = 4,
> +	.has_reset = true,
> +	.no_configdata = true,
> +};
> +
> +static const struct sunxi_musb_cfg suniv_f1c100s_musb_cfg = {
> +	.nr_endpoints = 5,
> +	.has_sram = true,
> +	.has_reset = true,
> +	.no_configdata = true,
> +};
> +
>  static const struct of_device_id sunxi_musb_match[] = {
> -	{ .compatible = "allwinner,sun4i-a10-musb", },
> -	{ .compatible = "allwinner,sun6i-a31-musb", },
> -	{ .compatible = "allwinner,sun8i-a33-musb", },
> -	{ .compatible = "allwinner,sun8i-h3-musb", },
> -	{ .compatible = "allwinner,suniv-f1c100s-musb", },
> +	{ .compatible = "allwinner,sun4i-a10-musb",
> +	  .data = &sun4i_a10_musb_cfg, },
> +	{ .compatible = "allwinner,sun6i-a31-musb",
> +	  .data = &sun6i_a31_musb_cfg, },
> +	{ .compatible = "allwinner,sun8i-a33-musb",
> +	  .data = &sun8i_a33_musb_cfg, },
> +	{ .compatible = "allwinner,sun8i-h3-musb",
> +	  .data = &sun8i_h3_musb_cfg, },
> +	{ .compatible = "allwinner,suniv-f1c100s-musb",
> +	  .data = &suniv_f1c100s_musb_cfg, },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, sunxi_musb_match);
> --
> 2.35.5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
