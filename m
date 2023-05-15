Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AB9FC77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 14:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qglVVU0wy7ei2ZX20szzcFqfj6Z99Rn+eGkF80kueVg=; b=NjoBaXyvGM0kx8
	wWvb3KzUJnMkOx9ICMryxYiq8gYRDOc9KzFjNLUOIprH24xGtMLYOZ3Z3qHC2/S1ZKLWOqIdjF95v
	8jYi8c6NWCpfX7SO8wyQ7FS0Mfn5p7oh5R6sXmOMEr/EDS/qTAUV8OLBULSJQt5wkR04AUSitEwsX
	RinMQIXSWiam3l3sWDlTsgHLSZ1mWzfrDIJOsluoueWUfe9rbNW7cylGMmqBryh7ObxmaOKfDeRoV
	7l6zuq2CoTQEIVcqvZBAATn5WarvVeOhoWONcTLsAExgh6TNgxpis+lQyLsZv9e++F9VeC0/zH4Zc
	2VB1DqkdNxFUIyP95A5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyYr6-002LzF-0I;
	Mon, 15 May 2023 14:07:16 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyYr2-002Lx8-2h
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 14:07:15 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-30786c87cdaso10027299f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 07:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684159629; x=1686751629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n75gxWwijMMTI9GiXx1bdZzw1eSKDQ/JY3MbdqyyfJ8=;
        b=MybEwHb7tKFR+czM65dq6Won8HWSGsgYs9IN4ez2NUgHvZhPq/Fjq3SQvBRDwj2apk
         TQlRnqRGsmPdmCCiuAQcNV5mzBWUfS345LKMeMaqnYmHN1XGmlqe+rc1IsW5hQGIN2hY
         Sk7HLb6fGLLzfm46sD0+z8iN/0C24ndOXGjNqF6egg+usyu0Bf3KHWzTofwatANRJWl4
         NM6U67P7oQUYPeY4ghnVyPngLeXR/uhODxoz4qrOAMKkje2MBG2F+8kinM7BX0ZLPHGd
         S/9F6uqsD+yaKQT/H6KccQdorGqjBBxvsrr+IBeIoiXO2e2PeafrSkbg/OX5wBedzpfb
         rR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684159629; x=1686751629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n75gxWwijMMTI9GiXx1bdZzw1eSKDQ/JY3MbdqyyfJ8=;
        b=NCamV+x4EZcrv3yO6be4UyUoJH/GUrpP0X/1WW/3O4msj4b/5/Uen4IaZBJq3Dxv/e
         rWZFek4myFh4agnVWGABzub4Qvra2shleCPfX7KVOwESaGq8oj6krOLlJ7EIGLz3AIuO
         TV58t5JNIBxWRV3X/i26vgrC532fjaBD5YYftNPBbkBKymZGdtUmKmeXVuBdHE0ipAR7
         d0DFsT/+To+xfJJol2DddoOzPYKiS16ULZxLCtharq6NZ/lumNfbe1pIvcHnncyJx7V7
         Pd1vgYk3Mi9phTckBqNvd97ZEJBCQ2eTykBZprzsQi6B640JCme85elgk9LQLOb0TQ/U
         E65g==
X-Gm-Message-State: AC+VfDyKbXjOjH0llgeqyU5lpH5xc+QSFDVimMN3DawKmsywlg6pa5Uk
	uooVLkRI80eDOxw+fAwqw6N1SQ==
X-Google-Smtp-Source: ACHHUZ79hANfbDvpP6oNPyXKE1ftm/gHtkEaa9Icb1GGlaeSnOsVu4I4PEo/Jz9DCazNFmJCLmAmFg==
X-Received: by 2002:adf:e492:0:b0:306:2dd6:95d3 with SMTP id i18-20020adfe492000000b003062dd695d3mr30832770wrm.22.1684159629085;
        Mon, 15 May 2023 07:07:09 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:fd3b:9fed:e621:cc8f])
        by smtp.gmail.com with ESMTPSA id a2-20020a05600c224200b003f4253ddb7dsm23548392wmm.43.2023.05.15.07.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 07:07:08 -0700 (PDT)
Date: Mon, 15 May 2023 16:07:07 +0200
From: Julien Stephan <jstephan@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzysztof.kozlowski@linaro.org, robh@kernel.org, 
	chunkuang.hu@kernel.org, linux-mediatek@lists.infradead.org, 
	Phi-bang Nguyen <pnguyen@baylibre.com>, Louis Kuo <louis.kuo@mediatek.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Andy Hsieh <andy.hsieh@mediatek.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Message-ID: <b2nk4jw2hpy4ndoq4cojazkn6h3tra2zjffhiswb7aqryabf7q@mkbtzhzcbivv>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
 <20230515090551.1251389-3-jstephan@baylibre.com>
 <cd6067b2-660a-8f2c-697d-26814a9dc131@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd6067b2-660a-8f2c-697d-26814a9dc131@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_070712_873197_1ABC9F56 
X-CRM114-Status: GOOD (  13.36  )
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

On Mon, May 15, 2023 at 02:22:52PM +0200, AngeloGioacchino Del Regno wrote:
> > +#define CSIxB_OFFSET		0x1000
>
> What if we grab two (or three?) iospaces from devicetree?
>
> - base (global)
> - csi_a
> - csi_b
>
> That would make it possible to maybe eventually extend this driver to more
> versions (older or newer) of the CSI PHY IP without putting fixes offsets
> inside of platform data structures and such.
>
Hi Angelo,
The register bank of the CSI port is divided into 2:
* from base address to base + 0x1000 (port A)
* from base + 0x1000 to base +0x2000 (port B)
Some CSI port can be configured in 4D1C mode (4 data + 1 clock) using
the whole register bank from base to base + 0x2000 or in 2D1C mode (2 data +
1 clock) and use either port A or port B.

For example  mt8365 has CSI0 that can be used either in 4D1C mode or in
2 * 2D1C and CSI1 which can use only 4D1C mode

2D1C mode can not be tested and is not implemented in the driver so
I guess adding csi_a and csi_b reg value may be confusing?

What do you think?

Regards,
Julien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
