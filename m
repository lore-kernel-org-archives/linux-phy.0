Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579E3C07E99
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 16:50:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1571E61186
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 16:50:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1571E61186
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=wirenboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	Subject:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8rAVSIlIeejhFfAlW0QnQny7C2TIOVmOhMwcueol8ko=; b=bobOXhd8UCFK5FPZH8YOI9vtp6
	PTiewcX7xsRdfwTtLDKKciZY/ZrOv2jJZF0DzR8/6+i2WYSVk088BShCD1FH0+fAfOJwAtNr6KuKM
	keMkh5qnwIJRFLV1PWUUdNVilD3M9N5coCmDghat2ls1VnzZcIFowfi4xL79k6vUJQzos3lT/7gPI
	w+sRG1h9A/nIk8Hdk08IUe6FjeYrtDfKiWEHwsoQna1B2lRu5giON6Qx8MNGbE9CuzJg8XI9J+2rV
	bQoVmSkDafJR5kttsOA/Fq5VjSO2OffN2ZbpfWrxa1JStaaoEDjASUOHmOFEkDNnvx2+pkxa4GWDl
	ezL3004w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2z8k-007zWU-Ji; Mon, 12 Jul 2021 16:50:42 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2z8U-007zTc-KS
 for linux-phy@lists.infradead.org; Mon, 12 Jul 2021 16:50:32 +0000
Received: by mail-lj1-x22d.google.com with SMTP id s18so25302123ljg.7
 for <linux-phy@lists.infradead.org>; Mon, 12 Jul 2021 09:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wirenboard-com.20150623.gappssmtp.com; s=20150623;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=o8W1dNWyc77g/GhN9T2NWTwNOeLb+k1LmC+rbhxkZPc=;
 b=MLL2y6mGJpe2v3dc+r2DITIyOSOUsd0A923QC4WmFqRpZJDdsZKUMuo0+xRo5BQCgg
 Skpt2ZwNTKiCfEqYAFRARwHuin4Wp4kjXCUDc/UgWe90g+GnmT/+asoMQVk9Mazdi82n
 J4VnCL3umFyyDSdAs9763NTJjn0VPVU/u+vE9rhoN2DJI1Y6ty3cKHtK2TW7PeMEvqEa
 2Ooz2+tKUpQoBnoMZzOIJEzHJMZvbgQ9k5V2Yth/mmADEmOnDVQK1E2ryeasONwlZc5l
 SvT9sw5FLV7l66C82YWQKpfMKQGr02hASm4GbfRCzYyAS+CnBM/VWvlwvhl7JsF3EpuJ
 PkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=o8W1dNWyc77g/GhN9T2NWTwNOeLb+k1LmC+rbhxkZPc=;
 b=nrrd9gp93G4EwDYPLzok4QvJcEWfyQGUPTIJ57GobSTwVlQGDYmoi1gbLjd9iqzLOH
 uqezp3QseqwxM1x/j3+DYxeaQ0X+3xPYunB+KiblPIIcIFHgBq5leSy/j9rn/B1M3dzU
 plV73SbH/RrtDKjsnbP4TAR+82T9Ct+PmJWpLzZ7PlapFM/zutaHffj8wn55kbVQ2uCD
 SEL0dENijbxQ5Nokh30yu19Vzc7u9CeWK1M+l6WXZMNrfFWhA5GneCl3E0nrwTIStvj+
 nzFr3eIcGBIGfHZh0wJpE/qiw7TQix7UdrvwnF0r5Zu9KapK2M9PZmJqBn/tD3DM4quU
 6quA==
X-Gm-Message-State: AOAM532cqeyzNaiQVnoyvFMMUgnzSD3Fd8vLq/xKrOtrMHU8wCiQuFGr
 asGo2TjS6PJyGItcO/zpTFWM8Q==
X-Google-Smtp-Source: ABdhPJzRmjg4ige4Q76R9GfUzKH6Q22fEzHtFe8dsyFLremmfKDTEGCbOYwPjkmdRfug1Ybfd1mC+A==
X-Received: by 2002:a2e:9059:: with SMTP id n25mr130746ljg.314.1626108623325; 
 Mon, 12 Jul 2021 09:50:23 -0700 (PDT)
Received: from [192.168.1.213] (81.5.110.226.dhcp.mipt-telecom.ru.
 [81.5.110.226])
 by smtp.googlemail.com with ESMTPSA id f14sm1627141ljk.42.2021.07.12.09.50.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jul 2021 09:50:22 -0700 (PDT)
To: andre.przywara@arm.com
Cc: icenowy@aosc.io, jernej.skrabec@gmail.com, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org, megous@megous.com,
 mripard@kernel.org, robh@kernel.org, samuel@sholland.org, vkoul@kernel.org,
 wens@csie.org
References: <20210615110636.23403-16-andre.przywara@arm.com>
Subject: Re: [PATCH v7 15/19] phy: sun4i-usb: Add support for the H616 USB PHY
From: Evgeny Boger <boger@wirenboard.com>
Message-ID: <880c62ea-4844-04f7-7b40-a9e8a14de202@wirenboard.com>
Date: Mon, 12 Jul 2021 19:50:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210615110636.23403-16-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_095026_703439_88A01BD1 
X-CRM114-Status: GOOD (  23.85  )
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

Hi Andre!

> The USB PHY used in the Allwinner H616 SoC inherits some traits from its
> various predecessors: it has four full PHYs like the H3, needs some
> extra bits to be set like the H6, and puts SIDDQ on a different bit like
> the A100. Plus it needs this weird PHY2 quirk.
>
> Name all those properties in a new config struct and assign a new
> compatible name to it.
>
> Signed-off-by: Andre Przywara<andre.przywara@arm.com>
> ---
>   drivers/phy/allwinner/phy-sun4i-usb.c  <https://lore.kernel.org/linux-sunxi/20210615110636.23403-16-andre.przywara@arm.com/#Z30drivers:phy:allwinner:phy-sun4i-usb.c>  | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff 
> <https://lore.kernel.org/linux-sunxi/20210615110636.23403-16-andre.przywara@arm.com/#iZ30drivers:phy:allwinner:phy-sun4i-usb.c> 
> --git a/drivers/phy/allwinner/phy-sun4i-usb.c 
> b/drivers/phy/allwinner/phy-sun4i-usb.c index 
> 316ef5fca831..85a9771280b7 100644 --- 
> a/drivers/phy/allwinner/phy-sun4i-usb.c +++ 
> b/drivers/phy/allwinner/phy-sun4i-usb.c @@ -1024,6 +1024,17 @@ static 
> const struct sun4i_usb_phy_cfg sun50i_h6_cfg = {   	.missing_phys = BIT(1) | BIT(2),
>   };
>   
> +static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = { + .num_phys 
> = 4, + .type = sun50i_h6_phy,

Since this usb phy is considerable different from the one in H6, 
wouldn't it better to define a new phy type here? The way the driver is 
designed, I would expect the type to be shared by more or less identical 
parts.

Honestly, I think it would be better to get rid of .type in the 
sun4i_usb_phy_cfg completely replacing it by a couple more traits in 
.cfg. It's impossible to know for sure which Allwinner parts really 
share the identical revision of this hardware.

> + .disc_thresh = 3, + .phyctl_offset = REG_PHYCTL_A33, + 
> .dedicated_clocks = true, + .phy0_dual_route = true, + 
> .hci_phy_ctl_clear = PHY_CTL_SIDDQ, + .needs_phy2_siddq = true, +}; +   static const struct of_device_id sun4i_usb_phy_of_match[] = {
>   	{ .compatible = "allwinner,sun4i-a10-usb-phy", .data = &sun4i_a10_cfg },
>   	{ .compatible = "allwinner,sun5i-a13-usb-phy", .data = &sun5i_a13_cfg },
> @@ -1038,6 +1049,7 @@ static const struct of_device_id 
> sun4i_usb_phy_of_match[] = {   	{ .compatible = "allwinner,sun50i-a64-usb-phy",
>   	  .data = &sun50i_a64_cfg},
>   	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
> + { .compatible = "allwinner,sun50i-h616-usb-phy", .data = 
> &sun50i_h616_cfg },   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, sun4i_usb_phy_of_match);
> -- 
> 2.17.5
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
