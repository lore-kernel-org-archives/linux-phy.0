Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A8F4D116F5
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xCMaaSxCkLxxVgc9Pw/L6WsF6oyEP6jHUGFGp1J9/rs=; b=GoiXFbmZd5CKo/juzBzB/SIfGH
	dUY8m7PACnc1GbWo3zarkNipuRRFVZWAny5JodAfullqXjpjTguBZ7BN1IqYA7qT0IPPo+QdYZzNP
	E7u/UJDFUv9xG7rHp3h61DsHULrQmtiSqzI6qWSMKX0wSc5LdKA/dmRTq4MJOBDNXu/FAciIwT2q8
	xF/A+QFQmkNfFZ3witdrVELa2CalhuG0H/VStf2D6Pau530YzpENLletj/JzlbiDwRr99Bg+l8XjU
	CKuG02pt1qyZcr2XxIn3MyoMX4tg8U8wBTCpyuMbXfrkY+7Gd2LycODh+eKdJEuat/1AB0NCjsUVh
	TKASUxTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc50-0000000GgdC-3ltL;
	Thu, 27 Nov 2025 13:30:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc4y-0000000Ggb0-3oUR
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C7BE443B9;
	Thu, 27 Nov 2025 13:30:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A674BC4CEFB;
	Thu, 27 Nov 2025 13:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250235;
	bh=Iwo7c+gTV15uWo/DLGABqk68Tu9bHSjs5z33OjF7zo0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=olDXfODVbYLJx3/tYA6VsaG6KrHqm4QcIkm7sAfnfuYxSpZzN18Fro96R600bEQq1
	 EhuMYaGC8n1Jx3Ng1CVmX15dcZkIphAaaUfNV5Ejk15jno0NG6nQ/wUH4bCXK8ZaGq
	 vDSAnrKQQNkp3Pd9ajobH1n33PiaB1C/F7ximvquzsd2USqfxcPRaga+zlwHuN8NtY
	 3ohLbvSCyyd/QRdGMdwuU5rcQOjgK9TfnHNjoNlAABgsTd9DRbhpJTV/HX6CzR+X95
	 fnnIKWtsf2ZJJBKeEgnml30rjMp2Zhh5nWcKuneL9VADb4Ap3HkOXkZEBLANC8tu1e
	 0hSsqavHY2l6Q==
Date: Thu, 27 Nov 2025 07:30:34 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, 
 Guenter Roeck <linux@roeck-us.net>, Vinod Koul <vkoul@kernel.org>, 
 linux-kernel@vger.kernel.org, Georgi Djakov <djakov@kernel.org>, 
 Peter Rosin <peda@axentia.se>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor.dooley@microchip.com>, tomm.merciai@gmail.com, 
 Arnd Bergmann <arnd@arndb.de>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 linux-phy@lists.infradead.org, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, biju.das.jz@bp.renesas.com, 
 Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-renesas-soc@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <40bb7feff08d6564dcccf50ff51bfcd3023b5ef6.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <40bb7feff08d6564dcccf50ff51bfcd3023b5ef6.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022557.4101692.10561712884961832980.robh@kernel.org>
Subject: Re: [PATCH v5 08/22] dt-bindings: phy: renesas,usb2-phy: Document
 USB VBUS regulator
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_053037_002624_6458576F 
X-CRM114-Status: GOOD (  12.62  )
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


On Thu, 27 Nov 2025 12:48:35 +0100, Tommaso Merciai wrote:
> Document the 'vbus-regulator' child node in the Renesas USB2 PHY binding
> to describe the internal USB VBUS regulator.
> 
> Require this regulator node on OTG channels to accurately represent
> hardware dependencies in the device tree.
> 
> Documenting this regulator allows device trees to model the VBUS power
> requirements of these SoCs properly.
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
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/40bb7feff08d6564dcccf50ff51bfcd3023b5ef6.1764241212.git.tommaso.merciai.xr@bp.renesas.com

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
