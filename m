Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FAFAC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 06:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnKWXIDzID3TwcrIghATb7uPPdXHPpwXRzZImQJB+5g=; b=HzJPkLrSeNVZYD
	xAXLcctkf4VWYMBrQ3wS2L858JoLVpGu7rRl8dLB8wauQ3HEBYxxy6oE21sYr8C/6PAOWES3TgpQe
	gqSrcBAjbzgm6eFTkA7+kC/eOVygquB5qllgjo2sc+CnSlnwcOMB+xZFS5K8J0Wy9ibKScTAVG9i7
	8dAvN/xHDSJNcTtxmN1toD7zLUIIhAHxLrjioteYFxGHG7V4/KaUbNswnrEtDj/HaQK4RGN9PUQ7Z
	I3T5xyPw95RGpBxJLNg6crqP1yeac/cL8RwJVfpzPThtydkyxAGqTrEDnBuLr5auC4+IhW1WDbJVH
	aUvoGwUcGSEYVjssRYvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqrAi-00Bx5r-9a; Tue, 17 May 2022 06:59:08 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqrAe-00Bx4M-7k
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 06:59:06 +0000
Received: by mail-qv1-f53.google.com with SMTP id kk28so13800322qvb.3
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 23:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S7g/R0oDW9fAvwgkkRy9KZG6rWZymEuKVEhzrVDAwow=;
 b=bg9iqV2F2gjysgOvjuP896KHAuH7ZggUY1CExXK4qiMDjy9dCMayBfJWffGUdn/rph
 MQMNpl8qRzdJefWmGWXxZF/KriEQgau2Blh3TK4MHN5hbW7IJdsSkOvV0k4NrEIWU6o9
 4mKGtOf4bjOc4PhUK+wnQw7WO3jUUGgJ2Ef2vgilQM8IgfxZB7+RyWUwpJPxjrtTw7/3
 U/yfKNg0sDhEnhZ8sX2qy5pnldjH2rNHoHrhjBr16VDoC6/w6cr6a6Zu0PbxgjrBLtTU
 bJc8pRtHiACuoGUIev7IfPD7f4LmgnrnDhjIJGXmm7frO7AR9eHI5omQin9OJlT9c8mi
 RnNA==
X-Gm-Message-State: AOAM5329E249M8C1u9tjjjV58UX2Q0Lh5l1R4NWB4WDKVwT0Op+AcNdQ
 WspIJQ8i/7ZKq6MPQfBba/alThOMrLl0Rw==
X-Google-Smtp-Source: ABdhPJxytsYX0hZDsNIBa3F/FzQZHuViSC6Kf30fdNDxTMYMJtsfJESPRNC6dhGK29pBHJBGO/2BAw==
X-Received: by 2002:a05:6214:29c3:b0:461:cec5:1ee with SMTP id
 gh3-20020a05621429c300b00461cec501eemr7139841qvb.108.1652770742516; 
 Mon, 16 May 2022 23:59:02 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com.
 [209.85.128.169]) by smtp.gmail.com with ESMTPSA id
 d15-20020ac8118f000000b002f39b99f693sm6866477qtj.45.2022.05.16.23.59.02
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 May 2022 23:59:02 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-2fee010f509so61282987b3.11
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 23:59:02 -0700 (PDT)
X-Received: by 2002:a81:9b0c:0:b0:2f4:c522:7d3c with SMTP id
 s12-20020a819b0c000000b002f4c5227d3cmr24431985ywg.316.1652770741766; Mon, 16
 May 2022 23:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <8e48edc5e7b65f8dfd8b76c583e0265b9b97e62b.1652099944.git.geert+renesas@glider.be>
 <20220517010408.GA3690472-robh@kernel.org>
In-Reply-To: <20220517010408.GA3690472-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 May 2022 08:58:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWnvYx93Xo4XHRi3vv8c1OCvX7zqGswHApRnc7VYM+X4g@mail.gmail.com>
Message-ID: <CAMuHMdWnvYx93Xo4XHRi3vv8c1OCvX7zqGswHApRnc7VYM+X4g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 rcar-gen2-usb-phy: Convert to json-schema
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-phy@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_235904_325832_DDD0AB82 
X-CRM114-Status: GOOD (  29.85  )
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

Hi Rob,

On Tue, May 17, 2022 at 3:04 AM Rob Herring <robh@kernel.org> wrote:
> On Mon, May 09, 2022 at 02:41:38PM +0200, Geert Uytterhoeven wrote:
> > Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> > to json-schema.
> >
> > Add missing properties.
> > Drop the second example, as it doesn't add any value.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Validation gives:
> >
> >     Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.example.dtb: usb
> >     -phy@e6590100: '#phy-cells' is a required property
> >           From schema: dt-schema/dtschema/schemas/phy/phy-provider.yaml
> >
> > The latter considers '#phy-cells' a required property, as the node name
> > matches "usb-phy".  But in this binding the actual PHY providers are the
> > child nodes.
> >
> > Is there a way to fix this? Overriding "#phy-cells" to "false" doesn't
> > work.
> > Should all nodes and child nodes be renamed? The (Linux) driver doesn't
> > care about the names of the children.
>
> There's an open issue in dtschema for this. I don't have an answer other
> than don't use 'phy' in the parent node name.

IC...

> > ---
> > This is the final conversion to json-schema of DT bindings for Renesas
> > ARM SoCs, hurray!
>
> Great, certainly looking better than some! My tracking in linux-next
> gives me this:
>
> For arm:
>
> Processing (r7|r8|r9|emev2|sh73a|gr-|iwg):
> warnings: 283
> undocumented compat: 32
>
> arch/arm/boot/dts/(r7|r8|r9|emev2|sh73a|gr-|iwg):32
> ['ams,as3711']

Board component

> ['arm,coresight-etm3x']

ARM core

> ['dlg,da9063-onkey']
> ['dlg,da9063-rtc']
> ['dlg,da9063-watchdog']
> ['dlg,da9063l']
> ['dlg,da9210']

Board components

> ['i2c-demux-pinctrl']

I2C framework

> ['renesas,pci-r8a7742', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7743', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7744', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7745', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7790', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7791', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r8a7794', 'renesas,pci-rcar-gen2']
> ['renesas,pci-r9a06g032', 'renesas,pci-rzn1']

https://lore.kernel.org/r/20220429134143.628428-3-herve.codina@bootlin.com

> ['renesas,r2a11302ft']

I2C device without bindings or upstream driver.

> ['renesas,r9a06g032-dma', 'renesas,rzn1-dma']

https://lore.kernel.org/r/20220427095653.91804-2-miquel.raynal@bootlin.com

> ['renesas,r9a06g032-rtc', 'renesas,rzn1-rtc']

https://lore.kernel.org/r/20220512143920.238987-2-miquel.raynal@bootlin.com

> ['renesas,r9a06g032-wdt', 'renesas,rzn1-wdt']

https://lore.kernel.org/r/20220413082527.155740-2-jjhiblot@traphandler.com

> ['renesas,rzn1-dmamux']

https://lore.kernel.org/r/20220421085112.78858-2-miquel.raynal@bootlin.com

> ['renesas,usb-phy-r8a7742', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7743', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7744', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7745', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a77470', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7790', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7791', 'renesas,rcar-gen2-usb-phy']
> ['renesas,usb-phy-r8a7794', 'renesas,rcar-gen2-usb-phy']

This patch.

> ['sil,sii9022']

https://lore.kernel.org/r/3b2619682694050696e5c85269ccc4f864590e66.1638540704.git.geert+renesas@glider.be

> ['st,stmpe-ts']
> ['st,stmpe811']

Board components

>
> For arm64:
>
> Processing renesas:
> warnings: 312
> undocumented compat: 15
>
> undocumented here means no schema.
>
> arch/arm64/boot/dts/renesas:15
> ['ilitek,ili2117']

https://lore.kernel.org/r/0c5f06c9d262c1720b40d068b6eefe58ca406601.1638539806.git.geert+renesas@glider.be

> ['micron,mt25qu512a', 'jedec,spi-nor']

Board component

> ['nxp,tda998x']

https://lore.kernel.org/r/1f6bf58d76efc2e869b800534b818d1451ef98a2.1634822085.git.geert+renesas@glider.be

> ['ovti,ov5645']

Board component

> ['renesas,r8a7795-mlp', 'renesas,rcar-gen3-mlp']
> ['renesas,r8a7796-mlp', 'renesas,rcar-gen3-mlp']
> ['renesas,r8a77961-mlp', 'renesas,rcar-gen3-mlp']
> ['renesas,r8a77965-mlp', 'renesas,rcar-gen3-mlp']
> ['renesas,r8a77990-mlp', 'renesas,rcar-gen3-mlp']
> ['renesas,r8a77995-mlp', 'renesas,rcar-gen3-mlp']

Driver in staging without any bindings

> ['renesas,r9a07g043-ssi', 'renesas,rz-ssi']

https://lore.kernel.org/r/20220423133154.141027-1-biju.das.jz@bp.renesas.com

> ['renesas,r9a07g043-tsu', 'renesas,rzg2l-tsu']

https://lore.kernel.org/r/20220501081930.23743-1-biju.das.jz@bp.renesas.com

> ['renesas,r9a07g043-usbphy-ctrl', 'renesas,rzg2l-usbphy-ctrl']

https://lore.kernel.org/r/20220423134601.141975-1-biju.das.jz@bp.renesas.com

> ['renesas,r9a07g043-wdt', 'renesas,rzg2l-wdt']

https://lore.kernel.org/r/20220424071323.151757-1-biju.das.jz@bp.renesas.com

> ['ti,pcm3168a']

Board component

> I guess board level components don't count and some might be pending.

Some have been pending (or blocked) for a long time...

> All this comes from here: https://gitlab.com/robherring/linux-dt/-/jobs

> Ignoring the node names for now,
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
