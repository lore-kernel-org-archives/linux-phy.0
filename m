Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 196D0D11183
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YHSr9Wjb+VaknVeVEvTTVxuxmLnRgkAUV6eE4LXbqJk=; b=UJHkDw9kNbmgoH5aa6lDpnetFA
	VLSuChOPNhsDZSe0DP43CVpHsKIFLOElVxtpg674UtFGJRtoPrtNjBtdZQeQy7IqUwNfrE4mUbPjt
	cYhRXZt0IDwvzB0AVBPrv02c2IIzj6yQDWTpJRbRjeIx42yUEHBaKu3G3uA1ABlQ/0M8WZ/yQoHJy
	Idr9pR+38npQJa+fC8J4wsg+XdfDkzhH7T2a0b1c5dO08AfvjPRYOCYgjFJHc9Dc67qQs5vOvGwGm
	HxJlTl2lAYd/wY7uPoA0z1VIRuEUSf4codfcluY6BfYyvKz46DaI/XwVFKCdENqA8V3Clj8uYrWsE
	U4kVbZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc4y-0000000GgbN-3PFp;
	Thu, 27 Nov 2025 13:30:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc4x-0000000GgaJ-3Fql
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C748960224;
	Thu, 27 Nov 2025 13:30:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D41C4CEF8;
	Thu, 27 Nov 2025 13:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250234;
	bh=cn9VrPGx8O8d67Cq596Nucl4T2GLkQ6vC881WnyUEDY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=EONxN74BponLklBaZkMH8KM86rZ3lNcF/RhvEyMW0etFJXTAZ05DalnkSESNuB5/x
	 N7p+UkAlhsFVXxEO/gDRIzQgvjSMLEVtPnkSQshArzLU8BiCOgfSDS5oRtg+SVPMpB
	 YNFfVsUJZstuvpg8+ehymmX91Dth1zlsvkkDHtK0NB1N6e19MN/5P77BJAqxGfVJCT
	 wYC7LrYl05k17vja2eqA4IJoVlq08MGnB+xzGvBFIXS4HGMOL2SzeHwKi0UJ67p7Ji
	 boYE40kZVbCTQdH11Erhs+KwCg76zF6ZEzYtf0b1rc6XQT6JtK4WeIWVo98Gxn7hPi
	 zGntbACHxZWVQ==
Date: Thu, 27 Nov 2025 07:30:33 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, tomm.merciai@gmail.com, 
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 biju.das.jz@bp.renesas.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 devicetree@vger.kernel.org, Peter Rosin <peda@axentia.se>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Georgi Djakov <djakov@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <9848482be3655a9351a13cdbf815db6b556201d0.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <9848482be3655a9351a13cdbf815db6b556201d0.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022416.4101652.1368465209303910384.robh@kernel.org>
Subject: Re: [PATCH v5 05/22] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Add '#mux-state-cells' property
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


On Thu, 27 Nov 2025 12:48:32 +0100, Tommaso Merciai wrote:
> Add the '#mux-state-cells' property to support describing the USB VBUS_SEL
> multiplexer as a mux-controller in the Renesas RZ/V2H(P) USB2PHY binding.
> 
> The mux-controller cannot be integrated into the parent USB2PHY node
> because the VBUS source selector is part of a separate hardware block,
> not the USB2PHY block itself.
> 
> This is required to properly configure USB PHY power selection on
> RZ/V2H(P) and RZ/G3E SoCs.
> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v4->v5:
>  - No changes
> 
> v3->v4:
>  - Switch back to v2 implementation.
>  - Improve commit body.
> 
> v2->v3:
>  - Manipulate mux-controller as an internal node.
>  - Improved commit body.
> 
> v1->v2:
>  - New patch
> 
>  .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml          | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/9848482be3655a9351a13cdbf815db6b556201d0.1764241212.git.tommaso.merciai.xr@bp.renesas.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
