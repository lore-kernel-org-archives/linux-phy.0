Return-Path: <SRS0=+Cw6=OB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E02C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 11 Sep 2021 02:54:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C04D610C9
	for <linux-phy@archiver.kernel.org>; Sat, 11 Sep 2021 02:54:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C04D610C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUhM5/a609A7gdGRoQkHpirD8XEvQL3ndqjto5hiqEc=; b=IJOBIXs7195VZH
	S4hjW69RYZ+eMWV+6NBBNQbwNlZ9B+SN4vcNdlg4sxbJJuMwy8XCSsambHBFs6zuOQWrox4iiFn4y
	6ihh4XZOaKTxKoOvD4f3K/zBLx9OyRMP8jO/3tDSQnCxweLk++8NOd+eZR/4Fq9NTH/i7cAr4GPgy
	TNhRCrFwVwoT7fdRhFi3iKkY9BXMj6PTd6ccP4jReYceRzCvmaK83XEKSlbuPp4F4LO+YAhJchxbe
	ACEc6Tap6vTZBgaYTPO2+KzPC3W6YAcBq10mebEFrGnsen+m+kKCQjk43itHFPW1uWdQCY4fODmD3
	aSUtqakbxzzykdjUEUOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOt9s-00EBLc-Ii; Sat, 11 Sep 2021 02:54:24 +0000
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOt9f-00EBJZ-Gn; Sat, 11 Sep 2021 02:54:12 +0000
Received: by mail-lf1-f54.google.com with SMTP id h16so7992131lfk.10;
 Fri, 10 Sep 2021 19:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=HrzUj2kOKfp3nelOA5Rh3JYBH3kW210KP3kKzozo3hQ=;
 b=CJ2b2h2sCw6L4UXmhQWIydSpI3OW43GP8smh4sWBm+IWyGLFkENMk8DebGDgZBgTyL
 +RdkqjHFfZuXyNtaQqc0RUHxu0GHBuGk9TdTAfAphFNEr1ZyWdrtEr+bNMzu6b7qi5Du
 i8kuXq4DU5Gm7BiwvYivMg2FTHKSeyrKBcUe088UNXcO+6WghKov6WnZWvKX5duenAQH
 vZsMFjuyc5yxhxDkjKijFhHCToc1RA7JV20DM5Kmuu6hzBULdTRvkjJytJ1A7FEDI9qu
 XNDh88tYGQX4BStbqO5e01+Jhu+NMZ6auMBxv78TGBNXskOGIkO/DlZCj/kB4IkQ2nKV
 iSOQ==
X-Gm-Message-State: AOAM5319HHVoem/5YOoQgaw/OGoI6mjPZjQ0WdEliPZ5EA6r4erZ+/ot
 qXiZOUN6qAW0OKoAhpK5xQ+e+qeX3z4kHg==
X-Google-Smtp-Source: ABdhPJyzASs2y+6y9JfSnd6mwoMNF8UQFY/4sfaCQy9REzE4/tM2Zi/CL5vVvFTAiLY6j8Z+zOlIXw==
X-Received: by 2002:a19:7101:: with SMTP id m1mr573796lfc.156.1631328847855;
 Fri, 10 Sep 2021 19:54:07 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id p5sm56126lfr.72.2021.09.10.19.54.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Sep 2021 19:54:07 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id l11so8039682lfe.1;
 Fri, 10 Sep 2021 19:54:07 -0700 (PDT)
X-Received: by 2002:ac2:482d:: with SMTP id 13mr583877lft.120.1631328846840;
 Fri, 10 Sep 2021 19:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-14-paul.kocialkowski@bootlin.com>
In-Reply-To: <20210910184147.336618-14-paul.kocialkowski@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 11 Sep 2021 10:53:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v66OHJREEg1Djkk=VyY0yUr5JE8Fp+xsb40wCk6E56bH8A@mail.gmail.com>
Message-ID: <CAGb2v66OHJREEg1Djkk=VyY0yUr5JE8Fp+xsb40wCk6E56bH8A@mail.gmail.com>
Subject: Re: [PATCH NOT FOR MERGE 13/22] ARM: dts: sun8i: a83t: Add MIPI CSI-2
 controller node
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev, 
 linux-kernel <linux-kernel@vger.kernel.org>, linux-phy@lists.infradead.org, 
 linux-clk <linux-clk@vger.kernel.org>, linux-staging@lists.linux.dev, 
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Helen Koike <helen.koike@collabora.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_195411_587191_407C6290 
X-CRM114-Status: GOOD (  21.00  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On Sat, Sep 11, 2021 at 2:42 AM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> MIPI CSI-2 is supported on the A83T with a dedicated controller that
> covers both the protocol and D-PHY. It can be connected to the CSI
> interface as a V4L2 subdev through the fwnode graph.
>
> This is not done by default since connecting the bridge without a
> subdev attached to it will cause a failure on the CSI driver.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

I believe you tagged the wrong patch to not be merged? AFAICT it
should be the next patch that hooks up OV8865, not this one.

> ---
>  arch/arm/boot/dts/sun8i-a83t.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
> index ac97eac91349..1fa51f7ef063 100644
> --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> @@ -1064,6 +1064,32 @@ csi: camera@1cb0000 {
>                         status = "disabled";
>                 };
>
> +               mipi_csi2: csi@1cb1000 {
> +                       compatible = "allwinner,sun8i-a83t-mipi-csi2";
> +                       reg = <0x01cb1000 0x1000>;
> +                       interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_CSI>,
> +                                <&ccu CLK_CSI_SCLK>,
> +                                <&ccu CLK_MIPI_CSI>,
> +                                <&ccu CLK_CSI_MISC>;
> +                       clock-names = "bus", "mod", "mipi", "misc";
> +                       resets = <&ccu RST_BUS_CSI>;
> +                       status = "disabled";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               mipi_csi2_in: port@0 {
> +                                       reg = <0>;
> +                               };
> +
> +                               mipi_csi2_out: port@1 {
> +                                       reg = <1>;
> +                               };
> +                       };
> +               };
> +
>                 hdmi: hdmi@1ee0000 {
>                         compatible = "allwinner,sun8i-a83t-dw-hdmi";
>                         reg = <0x01ee0000 0x10000>;
> --
> 2.32.0
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
