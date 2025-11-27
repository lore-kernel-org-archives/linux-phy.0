Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB57BD111A8
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XFgnpGAb3BJwUR7uqZvYf0wUIKdeZFLTP8Fvu9CSnxo=; b=YeJ2W1iPmwPVe+KIpzKiA48Hbj
	0yYbwF1E/UzgT5Q8T/FE8K1Ymnps96GoetNy+WjHTiAAD1oZt0jhd6qEZTh+HK89Nzx9rTJZktUNu
	olVXQqEHLYNPXOKJ6lgEYTJZVQx85M3GG8Y+0lhZbCWFPKpeJCkKqfepFAjOuH38h2ftoPyJOAwxR
	M6GxopWlniMlTEbclbwi7yylsEAAXWJtinnxu/Wrk695OIkHmKwmCdB6Qd/jNl3so08aIcxofcNGL
	Vx2cQD337uSMjCeimf6l2N+twF52m3bb5+lSN/KShhIjCxhBk5ZGArEX13Gc8EqAowdapT/htrss0
	yBra/88A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc54-0000000GggD-2uTT;
	Thu, 27 Nov 2025 13:30:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc52-0000000Ggeg-2rUo
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5FD2D43A60;
	Thu, 27 Nov 2025 13:30:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A3B2C116D0;
	Thu, 27 Nov 2025 13:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250240;
	bh=7W8m1gN6iJf6URJXr6P1P/KidZjp2vGFzBw9uIu20F8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=gMbf5A7CTRvABqJ/dgN2OT/F+AgyUwVkZR0IW2G5x+RetylR2amp7Dsn+OgeXuDbR
	 0ZPjC+prWEU7eIXio3ic321IPHk28ckzA3AvGQgPoi3kbOdRyyjiZhaEvK1JI3dd36
	 fff2bHzcr0ivLqY/4ncM6DNu/W5NqKwPuwaOTUeaqSaxW7iX6icWQq4xsx3FCz3u/p
	 g6QZFo/WG4grEC+zFMrOc3KvUHG9JbaUnb+TwkzsCivUL+JLRBctJvXFie1VdAYS5i
	 O4iGm9u7NQvL6N5mWcOqKEB7cGYTa2V5qIVP+5EA7jsD9f15tKP1Y1D41adEEDVv2U
	 NOra7lPJGjpwQ==
Date: Thu, 27 Nov 2025 07:30:38 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-phy@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>, 
 tomm.merciai@gmail.com, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>, biju.das.jz@bp.renesas.com, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Peter Rosin <peda@axentia.se>, linux-kernel@vger.kernel.org, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Mark Brown <broonie@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <32c6393bc89fd7f4b354def0028220a1916315e6.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <32c6393bc89fd7f4b354def0028220a1916315e6.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022981.4101836.1767439068441155398.robh@kernel.org>
Subject: Re: [PATCH v5 13/22] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3E SoC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_053040_767713_A79712A3 
X-CRM114-Status: GOOD (  13.58  )
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


On Thu, 27 Nov 2025 12:48:40 +0100, Tommaso Merciai wrote:
> Document USB2.0 phy bindings for RZ/G3E ("R9A09G047") SoC.
> 
> The RZ/G3E USB2.0 phy is functionally identical to the one found
> on the RZ/V2H(P), so no driver changes are needed. The existing
> "renesas,usb2-phy-r9a09g057" will be used as a fallback compatible for
> this IP.
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
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/32c6393bc89fd7f4b354def0028220a1916315e6.1764241212.git.tommaso.merciai.xr@bp.renesas.com

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
