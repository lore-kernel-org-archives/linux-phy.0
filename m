Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21AA7C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 01:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LM+u2y3K012P3tBT0inXTVJJVhdefHSKI7k209UUn4Y=; b=vlnNT2NEnQsvJz
	GBpP3x8/svLqAWcSRjbzjTCjH03ncho7XhK1ECzVBKx0MYTnIDmSJeMkCecw80m9qsfj8Gur+UNsl
	3srsXy8Otw+LKnOh1cdsc3oLlgR968wvpC9trgYhflXUcUBxhgUIMp+lk0MEvmyBd9iOtdsFptYSP
	Q7MSbmdLxd6r8x80seoSqJTWvkpEBF551e8mIfWjHJ+tILWnbzckxLHGzTL+kDQQ0OnE70i5pMsdd
	EZaCHh0XKLgwjSJ0/veq2iHrwjawOaTRXm5lnqLTA3LwGQKH7L6YeRiAQMHhvS9hYI45Gsq8p7ctQ
	xHaaU+d4NIAk45ojkV2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqldH-00B548-By; Tue, 17 May 2022 01:04:15 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqldD-00B53Z-VL
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 01:04:13 +0000
Received: by mail-oi1-f179.google.com with SMTP id v66so20709851oib.3
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 18:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KY+QPIdpY9AYCIk1QlFa7rVHWIHqF8P4GNI2gsYC8vE=;
 b=aGEHQ1lynkEmfSnmv3uc7459PXBNd635vhObvXBqIrFrNffMnWJcgJexsMBP3YUnrU
 hSz48SnKENius9Ov0zbrPvQ87AMjrK2JhH1uBKUVqiJYuzJudp8dR9llpqPWqsF/WWFU
 +cofioHfGc/X7/Ub+9BNFzXWI+NY3tKinjxfgkK1RcvwCJkWYbJY+9IWwSngnjXJVgCH
 hscl8eJAg9hZh+6cCQZjJHrurGB/BJwjv80FSa3wN40LAGHfIBe50gzucd9hCxReZqQ1
 Q0pdLSdfxsRSruPYbWuxBmOJ8cWvY1Jl9H1uHPelXdRBXxTjYuRb82plmTT9c6bslNUx
 Ka3w==
X-Gm-Message-State: AOAM532/562UG/FhTqg66CDKYXAteIJX/LIb/ehWm6RvQd369cKAkjwb
 +BDEbmDAKRRGZPWI35Q36Q==
X-Google-Smtp-Source: ABdhPJw/iV8lYByMOe+HPVx71PPh6yhbeRQslmXszUH81CIxDaZRhTLo7U7V3vLLE/kPr/t/N3vkWw==
X-Received: by 2002:a05:6808:d52:b0:328:acfc:d265 with SMTP id
 w18-20020a0568080d5200b00328acfcd265mr14773980oik.290.1652749449949; 
 Mon, 16 May 2022 18:04:09 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 d12-20020a056871040c00b000ee2bb503d0sm5914393oag.50.2022.05.16.18.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 18:04:09 -0700 (PDT)
Received: (nullmailer pid 3712320 invoked by uid 1000);
 Tue, 17 May 2022 01:04:08 -0000
Date: Mon, 16 May 2022 20:04:08 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert to
 json-schema
Message-ID: <20220517010408.GA3690472-robh@kernel.org>
References: <8e48edc5e7b65f8dfd8b76c583e0265b9b97e62b.1652099944.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e48edc5e7b65f8dfd8b76c583e0265b9b97e62b.1652099944.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_180412_046035_50169582 
X-CRM114-Status: GOOD (  19.41  )
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

On Mon, May 09, 2022 at 02:41:38PM +0200, Geert Uytterhoeven wrote:
> Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> to json-schema.
> 
> Add missing properties.
> Drop the second example, as it doesn't add any value.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Validation gives:
> 
>     Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.example.dtb: usb
>     -phy@e6590100: '#phy-cells' is a required property
> 	    From schema: dt-schema/dtschema/schemas/phy/phy-provider.yaml
> 
> The latter considers '#phy-cells' a required property, as the node name
> matches "usb-phy".  But in this binding the actual PHY providers are the
> child nodes.
> 
> Is there a way to fix this? Overriding "#phy-cells" to "false" doesn't
> work.
> Should all nodes and child nodes be renamed? The (Linux) driver doesn't
> care about the names of the children.

There's an open issue in dtschema for this. I don't have an answer other 
than don't use 'phy' in the parent node name.

> 
> ---
> This is the final conversion to json-schema of DT bindings for Renesas
> ARM SoCs, hurray!

Great, certainly looking better than some! My tracking in linux-next 
gives me this:

For arm:

Processing (r7|r8|r9|emev2|sh73a|gr-|iwg): 
warnings: 283
undocumented compat: 32

arch/arm/boot/dts/(r7|r8|r9|emev2|sh73a|gr-|iwg):32
['ams,as3711']
['arm,coresight-etm3x']
['dlg,da9063-onkey']
['dlg,da9063-rtc']
['dlg,da9063-watchdog']
['dlg,da9063l']
['dlg,da9210']
['i2c-demux-pinctrl']
['renesas,pci-r8a7742', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7743', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7744', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7745', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7790', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7791', 'renesas,pci-rcar-gen2']
['renesas,pci-r8a7794', 'renesas,pci-rcar-gen2']
['renesas,pci-r9a06g032', 'renesas,pci-rzn1']
['renesas,r2a11302ft']
['renesas,r9a06g032-dma', 'renesas,rzn1-dma']
['renesas,r9a06g032-rtc', 'renesas,rzn1-rtc']
['renesas,r9a06g032-wdt', 'renesas,rzn1-wdt']
['renesas,rzn1-dmamux']
['renesas,usb-phy-r8a7742', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7743', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7744', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7745', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a77470', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7790', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7791', 'renesas,rcar-gen2-usb-phy']
['renesas,usb-phy-r8a7794', 'renesas,rcar-gen2-usb-phy']
['sil,sii9022']
['st,stmpe-ts']
['st,stmpe811']

For arm64:

Processing renesas: 
warnings: 312
undocumented compat: 15

undocumented here means no schema.

arch/arm64/boot/dts/renesas:15
['ilitek,ili2117']
['micron,mt25qu512a', 'jedec,spi-nor']
['nxp,tda998x']
['ovti,ov5645']
['renesas,r8a7795-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r8a7796-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r8a77961-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r8a77965-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r8a77990-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r8a77995-mlp', 'renesas,rcar-gen3-mlp']
['renesas,r9a07g043-ssi', 'renesas,rz-ssi']
['renesas,r9a07g043-tsu', 'renesas,rzg2l-tsu']
['renesas,r9a07g043-usbphy-ctrl', 'renesas,rzg2l-usbphy-ctrl']
['renesas,r9a07g043-wdt', 'renesas,rzg2l-wdt']
['ti,pcm3168a']

I guess board level components don't count and some might be pending.

All this comes from here: https://gitlab.com/robherring/linux-dt/-/jobs

> 
> Note that there are still a few plain text bindings left for Renesas IP
> cores that are present on non-Renesas SoCs (nbpfaxi and usdhi6rol0).
> And H8/300 is being removed.
> ---
>  .../devicetree/bindings/phy/rcar-gen2-phy.txt | 112 ----------------
>  .../phy/renesas,rcar-gen2-usb-phy.yaml        | 123 ++++++++++++++++++
>  2 files changed, 123 insertions(+), 112 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen2-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen2-usb-phy.yaml

Ignoring the node names for now,

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
