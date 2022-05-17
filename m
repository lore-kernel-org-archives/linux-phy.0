Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2631CC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 13:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JBaay+fk1ghGzaTARaxJzUs0BQyxZgjLpe6nmcyzLc=; b=xGKA3yOa5vteXI
	Knk0bVwlrC84yZ1/WmlLc8cyBxLt1nfAU3wZAkof98kc2M8Ra4bV2prEivP/TETEUSpAQZm4sfQud
	25BuUGHMFIiYMU3TXwdaB9IcUxC7uQNDgrmgfoD750aT4XljPAUMhrYY17O2d408SZK4ar+yDIo3T
	KazMivn8qJegreGHDCh5k8ykv4JsArt7IsPSQG9FQbzKPORidw4yLjNs/jJSRmFxoDJOjYU1o45ii
	8csBdSRTMyehJRqTVHCZAEKrjBxm/vUnOwZqRH+iMs4NnryPUFEs1FxpRLQCb/1u8k8VAjBlExm61
	iMnHTto2d1oWpdeaOatg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqxhp-00E8Hm-Qj; Tue, 17 May 2022 13:57:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqxhi-00E8De-Uf
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 13:57:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ACD166155F
 for <linux-phy@lists.infradead.org>; Tue, 17 May 2022 13:57:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A997C34113
 for <linux-phy@lists.infradead.org>; Tue, 17 May 2022 13:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652795857;
 bh=KwOBNdhdnb/8ytGEUEM5Zd4g0LGQZYEQdyjYJaTwoAs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EujX2Y6rxyCjCCl5Rcb7vcEHHOrA4QKrJoZBjU8APW1Z0K0qbRN4SKPhQYiGGW09Z
 79gCpaOC1lV6owAOHt8Dx3+mq2RimvV5EFcpnzLO18xprxhp9vOrqoYhOGhUF2ZJQ3
 LGKb9FugzkFEloKf+9YMoa0fVpNXR124A3HqyEfKnjo0l2TermjHrIYKx2QFwN62Mk
 rIHa8b2Gjghm3HXV3jSCH7I6I2Vx4uQBaOTFK7P2anu0T7bhrFSssUqWxwufhRaMxa
 UPwmdQaS8rJ2hpjF5/OKl4qa5qs+GAYthu4bfdogha0i2oo9eealwEdzXG6RUQxlWf
 1kHg5qjNXL0KQ==
Received: by mail-ej1-f54.google.com with SMTP id i27so34841051ejd.9
 for <linux-phy@lists.infradead.org>; Tue, 17 May 2022 06:57:37 -0700 (PDT)
X-Gm-Message-State: AOAM532nAJ9pR7Mg9SsoK72AuK/7n90MUCUJtE2Fa1AsFuPzlgTcRPTj
 ZKPh2VC1alo6b48jGPb0GddTVRF8CMPmAIrnUA==
X-Google-Smtp-Source: ABdhPJwzgu1W9RnBAOnMWBllqPoxw52IE1DVZ3YRFzHKgW+BgyKyNlWfBhuprgxuC9BZxBvbGdCO79trhY14QFKNUQU=
X-Received: by 2002:a17:906:a888:b0:6f3:e990:e554 with SMTP id
 ha8-20020a170906a88800b006f3e990e554mr19872439ejb.19.1652795855281; Tue, 17
 May 2022 06:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <8e48edc5e7b65f8dfd8b76c583e0265b9b97e62b.1652099944.git.geert+renesas@glider.be>
 <20220517010408.GA3690472-robh@kernel.org>
 <CAMuHMdWnvYx93Xo4XHRi3vv8c1OCvX7zqGswHApRnc7VYM+X4g@mail.gmail.com>
In-Reply-To: <CAMuHMdWnvYx93Xo4XHRi3vv8c1OCvX7zqGswHApRnc7VYM+X4g@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 17 May 2022 08:57:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJo-p+bh6VOKANq8pmMPbm1vZwmHt73yYaEhe9GfQ50dw@mail.gmail.com>
Message-ID: <CAL_JsqJo-p+bh6VOKANq8pmMPbm1vZwmHt73yYaEhe9GfQ50dw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,
 rcar-gen2-usb-phy: Convert to json-schema
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_065739_153537_C5440E86 
X-CRM114-Status: GOOD (  27.88  )
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

On Tue, May 17, 2022 at 1:59 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Rob,
>
> On Tue, May 17, 2022 at 3:04 AM Rob Herring <robh@kernel.org> wrote:
> > On Mon, May 09, 2022 at 02:41:38PM +0200, Geert Uytterhoeven wrote:
> > > Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> > > to json-schema.
> > >
> > > Add missing properties.
> > > Drop the second example, as it doesn't add any value.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > > Validation gives:
> > >
> > >     Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.example.dtb: usb
> > >     -phy@e6590100: '#phy-cells' is a required property
> > >           From schema: dt-schema/dtschema/schemas/phy/phy-provider.yaml
> > >
> > > The latter considers '#phy-cells' a required property, as the node name
> > > matches "usb-phy".  But in this binding the actual PHY providers are the
> > > child nodes.
> > >
> > > Is there a way to fix this? Overriding "#phy-cells" to "false" doesn't
> > > work.
> > > Should all nodes and child nodes be renamed? The (Linux) driver doesn't
> > > care about the names of the children.
> >
> > There's an open issue in dtschema for this. I don't have an answer other
> > than don't use 'phy' in the parent node name.
>
> IC...
>
> > > ---
> > > This is the final conversion to json-schema of DT bindings for Renesas
> > > ARM SoCs, hurray!
> >
> > Great, certainly looking better than some! My tracking in linux-next
> > gives me this:
> >
> > For arm:
> >
> > Processing (r7|r8|r9|emev2|sh73a|gr-|iwg):
> > warnings: 283
> > undocumented compat: 32
> >
> > arch/arm/boot/dts/(r7|r8|r9|emev2|sh73a|gr-|iwg):32
> > ['ams,as3711']
>
> Board component
>
> > ['arm,coresight-etm3x']
>
> ARM core
>
> > ['dlg,da9063-onkey']
> > ['dlg,da9063-rtc']
> > ['dlg,da9063-watchdog']
> > ['dlg,da9063l']
> > ['dlg,da9210']
>
> Board components
>
> > ['i2c-demux-pinctrl']
>
> I2C framework
>
> > ['renesas,pci-r8a7742', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7743', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7744', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7745', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7790', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7791', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r8a7794', 'renesas,pci-rcar-gen2']
> > ['renesas,pci-r9a06g032', 'renesas,pci-rzn1']
>
> https://lore.kernel.org/r/20220429134143.628428-3-herve.codina@bootlin.com
>
> > ['renesas,r2a11302ft']
>
> I2C device without bindings or upstream driver.
>
> > ['renesas,r9a06g032-dma', 'renesas,rzn1-dma']
>
> https://lore.kernel.org/r/20220427095653.91804-2-miquel.raynal@bootlin.com
>
> > ['renesas,r9a06g032-rtc', 'renesas,rzn1-rtc']
>
> https://lore.kernel.org/r/20220512143920.238987-2-miquel.raynal@bootlin.com
>
> > ['renesas,r9a06g032-wdt', 'renesas,rzn1-wdt']
>
> https://lore.kernel.org/r/20220413082527.155740-2-jjhiblot@traphandler.com
>
> > ['renesas,rzn1-dmamux']
>
> https://lore.kernel.org/r/20220421085112.78858-2-miquel.raynal@bootlin.com
>
> > ['renesas,usb-phy-r8a7742', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7743', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7744', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7745', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a77470', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7790', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7791', 'renesas,rcar-gen2-usb-phy']
> > ['renesas,usb-phy-r8a7794', 'renesas,rcar-gen2-usb-phy']
>
> This patch.
>
> > ['sil,sii9022']
>
> https://lore.kernel.org/r/3b2619682694050696e5c85269ccc4f864590e66.1638540704.git.geert+renesas@glider.be
>
> > ['st,stmpe-ts']
> > ['st,stmpe811']
>
> Board components
>
> >
> > For arm64:
> >
> > Processing renesas:
> > warnings: 312
> > undocumented compat: 15
> >
> > undocumented here means no schema.
> >
> > arch/arm64/boot/dts/renesas:15
> > ['ilitek,ili2117']
>
> https://lore.kernel.org/r/0c5f06c9d262c1720b40d068b6eefe58ca406601.1638539806.git.geert+renesas@glider.be
>
> > ['micron,mt25qu512a', 'jedec,spi-nor']
>
> Board component
>
> > ['nxp,tda998x']
>
> https://lore.kernel.org/r/1f6bf58d76efc2e869b800534b818d1451ef98a2.1634822085.git.geert+renesas@glider.be
>
> > ['ovti,ov5645']
>
> Board component
>
> > ['renesas,r8a7795-mlp', 'renesas,rcar-gen3-mlp']
> > ['renesas,r8a7796-mlp', 'renesas,rcar-gen3-mlp']
> > ['renesas,r8a77961-mlp', 'renesas,rcar-gen3-mlp']
> > ['renesas,r8a77965-mlp', 'renesas,rcar-gen3-mlp']
> > ['renesas,r8a77990-mlp', 'renesas,rcar-gen3-mlp']
> > ['renesas,r8a77995-mlp', 'renesas,rcar-gen3-mlp']
>
> Driver in staging without any bindings
>
> > ['renesas,r9a07g043-ssi', 'renesas,rz-ssi']
>
> https://lore.kernel.org/r/20220423133154.141027-1-biju.das.jz@bp.renesas.com
>
> > ['renesas,r9a07g043-tsu', 'renesas,rzg2l-tsu']
>
> https://lore.kernel.org/r/20220501081930.23743-1-biju.das.jz@bp.renesas.com
>
> > ['renesas,r9a07g043-usbphy-ctrl', 'renesas,rzg2l-usbphy-ctrl']
>
> https://lore.kernel.org/r/20220423134601.141975-1-biju.das.jz@bp.renesas.com
>
> > ['renesas,r9a07g043-wdt', 'renesas,rzg2l-wdt']
>
> https://lore.kernel.org/r/20220424071323.151757-1-biju.das.jz@bp.renesas.com
>
> > ['ti,pcm3168a']
>
> Board component
>
> > I guess board level components don't count and some might be pending.
>
> Some have been pending (or blocked) for a long time...

Can you tell me which ones and I can apply them. If they have my tag
already, then I tend to ignore them.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
