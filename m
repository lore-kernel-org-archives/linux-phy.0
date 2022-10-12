Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F66EC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddijF7zra+pOczWU6ny2PF4/t4FagKP/lYOvEOYz//M=; b=A0l3M0BxuPMgEJ
	pPSce8TN++lxvqJ+uGVwFVpcjXsl87BMgbKql2XBwofkN5Uvhto1aspeK93+cldrZw3yO3hn9reBI
	UCH2V/GA/bubU97IWlsw5txGsOqDdIH+g0REkZRwvd59JUP0KyVh2XznoWRvmGzoJIPAvdUEkf8LU
	fXSWtbltY9FcT5Hwr3cmUOfySSFWKkhzVKVhUVjlVqG1TXRESTc0VfmNTa+Db4ahFTMV+aEO7O8oL
	CTEsO81URQ2Chxk8IcrIg8caNQ6aqXL7Hug873aBSQo2PBznvxvB97HY8YbUc4T3kurGqmpXrb1HM
	c4pyxO6lo0JJSfphVfQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijB6-009NSA-4s; Wed, 12 Oct 2022 21:22:12 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijAv-009NQ1-MM; Wed, 12 Oct 2022 21:22:03 +0000
Received: by mail-ed1-x530.google.com with SMTP id u21so50141edi.9;
        Wed, 12 Oct 2022 14:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQfpRIt3DFuqO+zX1CeFTtSVeijb+PJxpHgqxCSADR0=;
        b=al3lXHrUDVuQJuNML3yc9OTVp8mBm1fceF0wyeRVT7rVZewHTS45N+wEDJE03RPt86
         whlP9ZfSGJADr+jLrP9hcsriMOhuem5pNu2pOAlJGKbIkvgU4vsvgsKImKxmYnPqvZ04
         Gy0dYOkAtFViIUJWCib2vOru/oXpiU2R5sCA5tIc9DrsT7nZUBEfhbCav1Ts2VeHxZg1
         3UPQI7BMu+saxhG/f9BQK7IpFypRaaRBR+D1hcpKxTgFSXFoUMQDXQQyxHYxn8zeyDbc
         JihcfTeXH5CI+eDdEWIsUu1fJgdoFDJYMUGCYlO33DjjtXQR6WbTQO4WMHCbg/3j38Sx
         57KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQfpRIt3DFuqO+zX1CeFTtSVeijb+PJxpHgqxCSADR0=;
        b=BWzDbMnw9o+3WXuceL4yewXqq/i2/N7PTebzhzH7PbUaXoQNoDDvMfH1zb7wee+4qv
         VUTxRoHZ7Fq5TFznbNhF1TTNzTC5mbW5Iu1KB1/AgLUlF4B3ZYd34/Sm5rPUAvwEtoQY
         4HTGvHIWEPUVRliFxXODVDAFPMMq6MGZTR2DTY1IGiv8INvH0wenAU0zQVew5Hs+JVZB
         A7Y/uEsAz0e+lvQXoMXnxPB0nu2RH/mlH/3fIg2uFKQwNfWH0M3dvvS6raTnRlbrtspe
         TN4oNMWtIeaoQHrP7HLeuKi2ti7c+TneJwpY4wRlMQLsdCx1aJbszPaq7h/+uaZF/E2n
         hx+g==
X-Gm-Message-State: ACrzQf1kGO5fo8kD4l9jT+P1nWT93ck1QzM/9PqjOZHpigSbsCjhH4k/
	d4QiF1VOqVBbEJsrCG3v1Bs=
X-Google-Smtp-Source: AMsMyM7ztgB9rREL8AMYuGYCWQ376iRMzD7aUi2+lPvEwK2yjjBdeM84G3oYxHblooq1M66KBII06A==
X-Received: by 2002:a50:fd16:0:b0:458:bf43:8dc7 with SMTP id i22-20020a50fd16000000b00458bf438dc7mr28513321eds.400.1665609712898;
        Wed, 12 Oct 2022 14:21:52 -0700 (PDT)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id a20-20020aa7cf14000000b00458dc7e8ecasm12009298edy.72.2022.10.12.14.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Oct 2022 14:21:52 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>, Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 04/10] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Wed, 12 Oct 2022 23:21:50 +0200
Message-ID: <4218006.ejJDZkT8p0@kista>
In-Reply-To: <20221012055602.1544944-5-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me> <20221012055602.1544944-5-uwu@icenowy.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142201_761563_4BAE04B5 
X-CRM114-Status: GOOD (  20.38  )
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

Hi Icenowy,

Dne sreda, 12. oktober 2022 ob 07:55:56 CEST je Icenowy Zheng napisal(a):
> The F1C100s SoC has one USB OTG port connected to a MUSB controller.
> 
> Add support for its USB PHY.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> No changes since v1.
> 
>  drivers/phy/allwinner/phy-sun4i-usb.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c
> b/drivers/phy/allwinner/phy-sun4i-usb.c index 3a3831f6059a..2f94cb77637b
> 100644
> --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> @@ -109,6 +109,7 @@ enum sun4i_usb_phy_type {
>  	sun8i_v3s_phy,
>  	sun50i_a64_phy,
>  	sun50i_h6_phy,
> +	suniv_f1c100s_phy,
>  };
> 
>  struct sun4i_usb_phy_cfg {
> @@ -859,6 +860,14 @@ static int sun4i_usb_phy_probe(struct platform_device
> *pdev) return 0;
>  }
> 
> +static const struct sun4i_usb_phy_cfg suniv_f1c100s_cfg = {
> +	.num_phys = 1,
> +	.type = suniv_f1c100s_phy,

I think you should just use sun4i_a10_phy. It has no special handling. I don't 
see a point adding new phy types if there is no special cases for it.

Best regards,
Jernej

> +	.disc_thresh = 3,
> +	.phyctl_offset = REG_PHYCTL_A10,
> +	.dedicated_clocks = true,
> +};
> +
>  static const struct sun4i_usb_phy_cfg sun4i_a10_cfg = {
>  	.num_phys = 3,
>  	.type = sun4i_a10_phy,
> @@ -988,6 +997,8 @@ static const struct of_device_id
> sun4i_usb_phy_of_match[] = { { .compatible =
> "allwinner,sun50i-a64-usb-phy",
>  	  .data = &sun50i_a64_cfg},
>  	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = 
&sun50i_h6_cfg },
> +	{ .compatible = "allwinner,suniv-f1c100s-usb-phy",
> +	  .data = &suniv_f1c100s_cfg },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
> --
> 2.37.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
