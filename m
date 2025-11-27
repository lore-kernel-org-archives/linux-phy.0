Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9149D11183
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=erKKUxXao9j3cnNZnIRES2QwJXN/qghW20L4Hh8qEV8=; b=zvOkBWLGPGFrgNu3TDXOKYYQlJ
	axRX9/z1b5MC18F31SxQY3qdu/I0RpJx5aKqkACKGqRQkgiUbcFKyM8ZRqjzed1ZW44eRJ+HDVFmP
	O4nMQdw51+Mu4dSFlfZOcuj+x8xy76qUzI31XCE3NDjnvihcp4t7RGLTs+5/gId3u9JZKiQIijTNm
	fMctXbVxJGPuxW8uLI1uB8cD7ZT0jgScJYJ+Px1MTlKG4FGK+RJg0ccpwF+8NakH2+gTXjqHl1ovv
	o+2KhIwHOKzEKwpUcSsVybBeJ8tnddAwJB1A6NfIQqhlDcZNCNxhsC8YSztWsgmJUGXMCmaELk43k
	UkrhJ2tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc58-0000000Gghz-23Db;
	Thu, 27 Nov 2025 13:30:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc54-0000000Ggfd-0Aal
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AC94343727;
	Thu, 27 Nov 2025 13:30:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51D16C116D0;
	Thu, 27 Nov 2025 13:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250241;
	bh=pSESYEnUKyu08mrKfHQDZ5cAjFCRoX+nSdnwwFzzBoU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=O086NR3LcDosRFq36fL/6nhqc3C4yIsK5uceqV0dZ55x8L18kcrwolKn5grr61j+T
	 ADb/Cv3GE3BWy7bFszgRCUbMBSPbbAm9aaN2/+APk3MBUoF31GJ5YXGLAUHH/BnHfI
	 TBJY3lNw+WmWtoRij72e1nyEC2zi4CsujVOmpzivnrsC+JfjNGvLl6uy4j7xO42Zhm
	 /1XoQX0+a62xYOiVA16kQ2lcbaxQioU+njcO/kPFwQ/sp7bquEt/knMsQTeaU2GmYk
	 0LasDi/3F4kvDCHFLcIWMsT/ENBjRxWFhGm+H848iGXTBbsMwFZYqcFIedrhlkIWR5
	 7tQCq4Y3dSV8Q==
Date: Thu, 27 Nov 2025 07:30:40 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 linux-renesas-soc@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Peter Rosin <peda@axentia.se>, 
 biju.das.jz@bp.renesas.com, Georgi Djakov <djakov@kernel.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, devicetree@vger.kernel.org, 
 tomm.merciai@gmail.com, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <6f2ba4b376b0ed5652dac4729d9c020d2059eb70.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <6f2ba4b376b0ed5652dac4729d9c020d2059eb70.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425023140.4101874.6056536862726379533.robh@kernel.org>
Subject: Re: [PATCH v5 14/22] dt-bindings: reset: Document RZ/G3E USB2PHY
 reset
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_053042_151198_6ABC5FC7 
X-CRM114-Status: GOOD (  14.14  )
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


On Thu, 27 Nov 2025 12:48:41 +0100, Tommaso Merciai wrote:
> Document USB2PHY reset controller bindings for RZ/G3E ("R9A09G047") SoC.
> 
> The RZ/G3E USB2PHY reset controller is functionally identical to the one
> found on the RZ/V2H(P), so no driver changes are needed. The existing
> "renesas,r9a09g057-usb2phy-reset" will be used as a fallback compatible
> for this IP.
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
>  .../bindings/reset/renesas,rzv2h-usb2phy-reset.yaml           | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/6f2ba4b376b0ed5652dac4729d9c020d2059eb70.1764241212.git.tommaso.merciai.xr@bp.renesas.com

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
