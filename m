Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264E4C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUOlHufIcYS36IzMEOILHu9mLS4mLHZXILNjCDzBIsQ=; b=HMhIk86dvBJU4i
	MZ2Ejxmhi+5kE4b1/okuXbsJMtIVvHXFb8zCtDYo8QWMagqdObd6RX0G2fU+hvIxWqFIDPjUY/lsl
	HAdK0xK5FRINMxZDGwXHHSdguoAbpE64PmnITN5YDN5zqcsYkypJ1fcep7r3TCWJK6bcWP3cCSu29
	RHJ5Ts/nSGNhnTQofC8PvOFMJt5+k88/lRclhieGxAha7E0FxnrSA9esHMEfW0Z72/TrDG2bFzYxv
	DGn4qmFnn3at5gE208sejbztbATF8oUygu/VnFZeHlLuLH0HJ9PsP8gwCZm3xHLcXRN6FUJm3Zv2d
	sStagha+5D3nW9PI7eoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijDA-009NjD-Ih; Wed, 12 Oct 2022 21:24:20 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijCz-009NgF-Hc; Wed, 12 Oct 2022 21:24:10 +0000
Received: by mail-ej1-x629.google.com with SMTP id q9so47620ejd.0;
        Wed, 12 Oct 2022 14:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AeJANbhYyBwy4ZbmnuIiUtzQb03C3ow/09NmLLrUl6A=;
        b=JPL4aQt1cmlonH9wzqkdGwGX4yiWzBYuoNUgmryEg9d/JOfQlDrmkcICVOC/33yqcl
         s0mTrzMYEWAgpf0uUa7YeZFD7CZ68ey2ehAGfeag4Z2kxjakghVUyBtUToFJmxKe+1wG
         yJTCP2EuO/e6a8snlf+yd6pfpqoYRtMGSRyL3dmp7H0rzxos9JYoRmle2O3h9lHUA/DC
         +K7hxS8Pn4f3tUSLLAPFIUxmVCpr/sSqr25uP6x3TlKVAwyzLB+POxUi2ZY8CECqmyKi
         2HKXnaZIbOLLDoX2ntROXy4GRbnHUyek0QBvzOilU9uZ2dpSccEDOhCzPMmlsvSxPiLM
         9ysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AeJANbhYyBwy4ZbmnuIiUtzQb03C3ow/09NmLLrUl6A=;
        b=5z/HYF5i9cSEPNazCJaZjvhwyFhl6L4CCeYUV61OBzDbwTqeDNP75SdjoYNhCEIb4W
         7DXG/fNerccSRA3nWD2uthRkQZYZi4CH5AqdZx4aa1N8BT7/1+jH06HTOdUiooDp87E+
         ESMo+P8iIhbZ+D7AoQ9MKpJRNRLYF30uZx+WPb1I/o8J2SnbjI5oGRSBTrkMbG34scWg
         VDkkl1Csqu/cl/2L7xxuhEHeoWy5b7hGojqJIBoxLDMYFLtLht3dMVDLMEoYJvVe2BIt
         tVQrRo7Vz33t3O9TMxJoNyGwWoeARUjhdce0BX8N1z4e4LC4u9gxp98ZMNgVPZEQUlBl
         RcFg==
X-Gm-Message-State: ACrzQf09tYsaO79phkwYuqDUvavKYdamUyQC4ua0kW03fMHbxH4WBe1p
	P7Ur9Yi4dejJgZEc4atNLxo=
X-Google-Smtp-Source: AMsMyM7BxsquvcB3WVD34NXGQwFZsJW43aw77Eq7EcPTf+1OXMK4gIIlb5g5xCn3wdhAQzLGAw7V7w==
X-Received: by 2002:a17:907:8688:b0:78b:eaa5:8a9d with SMTP id qa8-20020a170907868800b0078beaa58a9dmr24591147ejc.509.1665609846821;
        Wed, 12 Oct 2022 14:24:06 -0700 (PDT)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id kw24-20020a170907771800b0073d87068042sm1807772ejc.110.2022.10.12.14.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Oct 2022 14:24:06 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>, Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 05/10] musb: sunxi: add support for the F1C100s MUSB controller
Date: Wed, 12 Oct 2022 23:24:04 +0200
Message-ID: <3515217.R56niFO833@kista>
In-Reply-To: <20221012055602.1544944-6-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me> <20221012055602.1544944-6-uwu@icenowy.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142409_616268_3AD34806 
X-CRM114-Status: GOOD (  19.13  )
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

Dne sreda, 12. oktober 2022 ob 07:55:57 CEST je Icenowy Zheng napisal(a):
> The suniv SoC has a MUSB controller like the one in A33, but with a SRAM
> region to be claimed.
> 
> Add support for it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> No changes since v1.
> 
>  drivers/usb/musb/sunxi.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/musb/sunxi.c b/drivers/usb/musb/sunxi.c
> index 7f9a999cd5ff..4b368d16a73a 100644
> --- a/drivers/usb/musb/sunxi.c
> +++ b/drivers/usb/musb/sunxi.c
> @@ -722,14 +722,17 @@ static int sunxi_musb_probe(struct platform_device
> *pdev) INIT_WORK(&glue->work, sunxi_musb_work);
>  	glue->host_nb.notifier_call = sunxi_musb_host_notifier;
> 
> -	if (of_device_is_compatible(np, "allwinner,sun4i-a10-musb"))
> +	if (of_device_is_compatible(np, "allwinner,sun4i-a10-musb") ||
> +	    of_device_is_compatible(np, "allwinner,suniv-f1c100s-musb")) {
>  		set_bit(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags);
> +	}
> 
>  	if (of_device_is_compatible(np, "allwinner,sun6i-a31-musb"))
>  		set_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);
> 
>  	if (of_device_is_compatible(np, "allwinner,sun8i-a33-musb") ||
> -	    of_device_is_compatible(np, "allwinner,sun8i-h3-musb")) {
> +	    of_device_is_compatible(np, "allwinner,sun8i-h3-musb") ||
> +	    of_device_is_compatible(np, "allwinner,suniv-f1c100s-musb")) {

All that should be eventually converted to quirks. But for now:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  		set_bit(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);
>  		set_bit(SUNXI_MUSB_FL_NO_CONFIGDATA, &glue->flags);
>  	}
> @@ -815,6 +818,7 @@ static const struct of_device_id sunxi_musb_match[] = {
>  	{ .compatible = "allwinner,sun6i-a31-musb", },
>  	{ .compatible = "allwinner,sun8i-a33-musb", },
>  	{ .compatible = "allwinner,sun8i-h3-musb", },
> +	{ .compatible = "allwinner,suniv-f1c100s-musb", },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, sunxi_musb_match);
> --
> 2.37.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
