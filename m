Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 591B1C7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 09:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DU9kgsVOmm2NZIm+72hjOyf04DVslat+FrSH43iJ84=; b=ppSLxxA5mzgrNY
	PykeUMMgTbaXguTxNI8WLAOTqiEBsWm3vjPp6hSgBSkHmtg+bA2Y4pUEitYYsanMjcKlmmfL0UdWw
	uKFNIryJraFIo3+ohQ4SYPrbygFm0hK5WGm/ibQozzNerX3qNsgHSCbPFGazrT/SRIfSQrl2GlBfs
	19p3SYCPHi0rCSRuxZx3epcIMrreN0/dRJLynQbjX+mf9fc+ro2d8YPWTOG7BNVaq7QC7mD7qYSEV
	Z4G86JiWYHRkJVyHNdF2a0KV2Rh9RQa0i7mTFAkba2pLphmmssLN9yq+mziUYgjUf6gd0b5iTDIP/
	shZlomsPjCZHkfTDjL/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzQv-003wzj-01;
	Wed, 05 Apr 2023 09:28:01 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzQr-003wwq-2M
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 09:27:59 +0000
Received: by mail-wr1-x42f.google.com with SMTP id q19so32434092wrc.5
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 02:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680686873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nbxb6pOBobAspVURmZV5qw9xso4MEJwnKnyDKhuf9Zk=;
        b=OOAgHuCVOjJ1ff7sJbGp70M1TYsellJraMNNqALPTmQetFjYslPpiJGgMjg+i0Q1uS
         p2+UYnPbfi9udTNtUOZ1jUPDQS5kAR8sd5NrtSNm4GROMvpU3KxwMDb6zY7HadyoKZOs
         wlhWIyJoyqdmbeTXsjpsZxsjjxZjekgcVYAKGJ9qIZxDmUHTSpFscdwrCnBAS4qTTlUJ
         VGDcM+EW/dXt6zhL9ZhnH3lxniF8zlidAFd0DBk4lx046s7iVdcfNkhg0JIy6FKd6n0O
         wbVcBtv68/8QtEOlOGJaI19Yd0Bgs25xqhO2SN8TM/AhbQUVkZE96EFgn4hEbD0fi9Uh
         7GZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680686873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nbxb6pOBobAspVURmZV5qw9xso4MEJwnKnyDKhuf9Zk=;
        b=1vGwjmqPniiRZUmBSVCjYlCvqus1IuV8dl66Rs+wsIql4AP4c7QwT6bbSGqc7aykMG
         u1IcZuT+mKlbLlbEg4OVNhLyjhESShHj21SuYR/GGL0U92OPEgNZEy9HZo0XMxIpJgw8
         uNFyPWqmA+IaKZ9/9HcojlzwzEcNj3o7Yz8lfxOb+Zq7arZKeozAwhngJrq0PRpU6kkY
         C9xPIRtXQW/2iJSmOPfHJOlA653lN4PnZOj2wFOZaFf/CpdqsHa5i6eF6XKSMAwz724r
         KiiBomu8lTv+xRqmXbngTySqX868a9ZYURaoyG5Jlg9bHWkeq0Wm7vxdqo3DCDYPF3fA
         Hg1w==
X-Gm-Message-State: AAQBX9fEu965pLSoyQLhcjlFclBSKBn5NVZGJYK0j/VDtSk4Jxf6tJf7
	CmTpK/bT/746ZVIK+/k0QGSRSQ==
X-Google-Smtp-Source: AKy350ZTLUZ8C5oWQIqlnzLbcauR0nQz5678A9ppDmkWQi4Z5mSQP5i3id5jdUI4YRVmSOACLzI+Aw==
X-Received: by 2002:a5d:5262:0:b0:2ce:a30d:f764 with SMTP id l2-20020a5d5262000000b002cea30df764mr3274578wrc.21.1680686873617;
        Wed, 05 Apr 2023 02:27:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id ay8-20020a05600c1e0800b003edddae1068sm1606494wmb.9.2023.04.05.02.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 02:27:53 -0700 (PDT)
Date: Wed, 5 Apr 2023 11:27:53 +0200
From: Julien Stephan <jstephan@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Phi-bang Nguyen <pnguyen@baylibre.com>, 
	Louis Kuo <louis.kuo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Andy Hsieh <andy.hsieh@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-mediatek@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Message-ID: <ucoak3m7tlroscd2txdsbx5kr67sjvp342msva6rz5xwedub4q@xjb5kfdigxf5>
References: <20230403071929.360911-1-jstephan@baylibre.com>
 <20230403071929.360911-3-jstephan@baylibre.com>
 <6c9c74ee-b9ed-815f-dd92-37eb4c8f802a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c9c74ee-b9ed-815f-dd92-37eb4c8f802a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_022757_773637_B383A9AB 
X-CRM114-Status: GOOD (  24.11  )
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

On Mon, Apr 03, 2023 at 11:51:50AM +0200, Krzysztof Kozlowski wrote:
> On 03/04/2023 09:19, Julien Stephan wrote:
> > From: Phi-bang Nguyen <pnguyen@baylibre.com>
> >
> > This is a new driver that supports the MIPI CSI CD-PHY for mediatek
> > mt8365 soc
> >
> > Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> > Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> > [Julien Stephan: use regmap]
> > [Julien Stephan: use GENMASK]
> > Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > ---
> >  .../bindings/phy/mediatek,csi-phy.yaml        |   9 +-
> >  MAINTAINERS                                   |   1 +
> >  drivers/phy/mediatek/Kconfig                  |   8 +
> >  drivers/phy/mediatek/Makefile                 |   2 +
> >  .../phy/mediatek/phy-mtk-mipi-csi-rx-reg.h    | 435 ++++++++++++++++++
> >  drivers/phy/mediatek/phy-mtk-mipi-csi.c       | 392 ++++++++++++++++
> >  6 files changed, 845 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
> >  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi.c
> >
> > diff --git a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> > index c026e43f35fd..ad4ba1d93a68 100644
> > --- a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
>
> NAK, bindings are always separate patches. It also does not make any
> sense - you just added it.
>
:( I messed up my rebase -i. This need to be moved and squashed with the
previous patch. I will fix it in v2. Thank you for reporting it

> > @@ -33,9 +33,14 @@ additionalProperties: false
> >
> >  examples:
> >    - |
> > -    phy@10011800 {
> > +    soc {
> > +      #address-cells = <2>;
> > +      #size-cells = <2>;
> > +
> > +      phy@11c10000 {
> >          compatible = "mediatek,mt8365-mipi-csi";
> > -        reg = <0 0x10011800 0 0x60>;
> > +        reg = <0 0x11c10000 0 0x4000>;
> >          #phy-cells = <1>;
> > +      };
> >      };
>
>
>
> k_mipi_dphy_of_match[] = {
> > +	{.compatible = "mediatek,mt8365-mipi-csi"},
> > +	{},
> > +};
> > +MODULE_DEVICE_TABLE(of, mtk_mipi_dphy_of_match);
> > +
> > +static struct platform_driver mipi_dphy_pdrv = {
> > +	.probe = mtk_mipi_dphy_probe,
> > +	.remove = mtk_mipi_dphy_remove,
> > +	.driver	= {
> > +		.name	= "mtk-mipi-csi",
> > +		.of_match_table = of_match_ptr(mtk_mipi_dphy_of_match),
>
> Drop of_match_ptr(). You should see W=1 warnings when compile testing.
>
I do not not see any warnings when trying to compile with W=1. Am I
missing something? I will drop it in v2 anyway

Best
Julien
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
