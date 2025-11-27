Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C84CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Aak51G6xbT6wvVPY0NyK3t3HPIg/0yJfVsU7AG+3YA=; b=VTVpqRIkhz72NklwnMaxqrbke8
	eNhTite0jgOPRy3vfkdXby2Apj45p88vmaLfL2CYSOstvk7xkesany3lexiU3xOqVNbCAlLIsZFxz
	LGDW8kxAu3c/OSPUIQR6/rBXqicMhgdDDV1tVNQCX0o1rx/K2oe6qoAGX1oE7uOVylE0PMeNNIYIo
	90pYt6TmB65McBD3plBFBmT3fgnnzHz70+YB77yVWMexpav5Fs+PPBwJ3NvgjK+529mlriDzpVEGH
	yNpKO9emyGe6DvuL5j/94/rIPEh8eAe/Vjd9H43gACvUCCDq9UJvGSoKseTqovHewgQtDWwmk+/uB
	x5Jzi5jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc53-0000000GgfN-1rWo;
	Thu, 27 Nov 2025 13:30:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc51-0000000GgdQ-2HP6
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E79236020D;
	Thu, 27 Nov 2025 13:30:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61963C4CEFB;
	Thu, 27 Nov 2025 13:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250238;
	bh=qfCyuPWT5K6vsKLyo7M2+8kULAW3XzKDaTl3mUicdWg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=h/zdPLFTwBrn/TQD+O3Ne2L5zDppooLS+N0Vo+Pk2xvn+SmxKbrZtqta8otTzSEY5
	 gBaGeOSLqxOjWXEwKIXnj+J2Ql+oRQY13V/DCLtXSmdUO1T0cphEBjvGdnPUafD6zT
	 Bmv/5wHYnJQbFFzbTEDdTMixhDUBaFGfm3j4et8n6r1pPAZJfWdGEAM9YRypt3qrmX
	 6SyL1K3MgpAK52uHwgo6xHFsiSBIXUNElMLIUjIqAd4ckWel3aYWXBMGVtfuRkBcgT
	 0H+mHk3qnSxfFNmHkyIkXPrH4HCa+xR0cRpcIinUgrWqb14LtWKdcSq50NbO9UtyEL
	 Q/+zYA1pC6Mcw==
Date: Thu, 27 Nov 2025 07:30:37 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 biju.das.jz@bp.renesas.com, Georgi Djakov <djakov@kernel.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Arnd Bergmann <arnd@arndb.de>, 
 Peter Rosin <peda@axentia.se>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Mark Brown <broonie@kernel.org>, tomm.merciai@gmail.com, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <33e2552871c7a93a75ccaface5491f994c6156f1.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <33e2552871c7a93a75ccaface5491f994c6156f1.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022839.4101786.8488594837632751244.robh@kernel.org>
Subject: Re: [PATCH v5 12/22] dt-bindings: usb: renesas,usbhs: Add RZ/G3E
 SoC support
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


On Thu, 27 Nov 2025 12:48:39 +0100, Tommaso Merciai wrote:
> Document the Renesas USBHS controller found on the Renesas RZ/G3E SoC.
> The USBHS block on RZ/G3E is functionally identical to the one found
> on the RZ/G2L family, so no driver changes are needed. The existing
> "renesas,rzg2l-usbhs" fallback compatible will continue to be used for
> handling this IP.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v4->v5:
>  - No changes
> 
> v3->v4:
>  - No changes
> 
> v2->v3:
>  - No changes
> 
> v1->v2:
>  - Collected CDooley tag
> 
>  Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/33e2552871c7a93a75ccaface5491f994c6156f1.1764241212.git.tommaso.merciai.xr@bp.renesas.com

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
