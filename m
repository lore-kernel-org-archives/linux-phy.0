Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CE56D116F7
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yjE5gY3z4fS2KCOxkbIdVzgD9im1MH8PyoGS8NndRac=; b=YQnvsDXfWb9K2gOgH/Pyk0wnhW
	nd6Sp7iEEDDRmSW1rXP4ZYygbyytBJASLOhSPHSm/ZII6iaUTOTyp2JElmwD0rwbTmeV+RGRPZz4X
	GrHXPt/X3zPIMNSsAOCFhQ8HxKd8/uXXgHeYNEI61j8yAaNuttrRKNQgv431p8/5yTV3fIERisrRV
	k/RbRHuk7O/ulTX7vwAjd3trdnzrNO9F4ud2MBHWfW/99Kxy7I08xJV+vGTyvXpX+Rykoq1+FrqEC
	LkicAhUDB/1xT/oFIKOyWvCBQfoFweCnTdj1sCr8wJgpEf/qfJNoPTvdCUMt5NxOs+9ukuEmEP5V4
	rjlFtr7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc51-0000000GgdT-0dLB;
	Thu, 27 Nov 2025 13:30:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc50-0000000GgcI-0eRW
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8F2006020E;
	Thu, 27 Nov 2025 13:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B9B7C4CEF8;
	Thu, 27 Nov 2025 13:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250237;
	bh=b2yoGxwAA3ugcSh2vOXlMJhKFbpukq1Md+KWqVQY0I4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=sOcCVY8bn0GaKeo4jGywq3iw2Gk/iJxvIweigNPMCcLHsPmZYbIEHo4W3lM8wKiDv
	 F8SOLTN1nimsBTra9mfYaSyVRzwWZ6K9fg4x17oDwYTty7JGmk3HZb7xH57E/dOJad
	 iU6mNHrqoW+3JJGkkjvGbZp9i0/Ts5SAbo8bLDK9y2ePylD2pEjjmB6hhus6RirAyK
	 JgfLqp4tggIBJlgI2hkHk4Ni8OBBwescJFA7I0a5llDZghqgxHA9VEBKZ6v/J6Z8qz
	 U4KqEMoh4sDW2E0BDes+iAlQKIBtnp/qytRHuwsoXXgjP4pZVsf1omsYJzZQh30j+m
	 FDQxBM31jJTuQ==
Date: Thu, 27 Nov 2025 07:30:36 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: biju.das.jz@bp.renesas.com, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Georgi Djakov <djakov@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 linux-phy@lists.infradead.org, Magnus Damm <magnus.damm@gmail.com>, 
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 linux-renesas-soc@vger.kernel.org, tomm.merciai@gmail.com, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Mark Brown <broonie@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, Peter Rosin <peda@axentia.se>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <5c5a85eb777f327e659cb3a969ebed8531c05a26.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <5c5a85eb777f327e659cb3a969ebed8531c05a26.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022696.4101743.14899408887981951821.robh@kernel.org>
Subject: Re: [PATCH v5 09/22] dt-bindings: phy: renesas,usb2-phy: Document
 mux-states property
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


On Thu, 27 Nov 2025 12:48:36 +0100, Tommaso Merciai wrote:
> Some Renesas SoCs, such as RZ/G3E, provide a USB2.0 OTG PHY with
> configurable VBUS control through a multiplexed hardware register.
> This register allows selecting the VBUS source via a mux control
> line exposed by the PHY.
> 
> To represent this hardware configuration, support the standard
> `mux-states` property in the Renesas USB2 PHY binding.
> This allows the DeviceTree to model the VBUS source selection as
> a mux, consistent with generic binding conventions.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v4->v5:
>  - No changes.
> 
> v3->v4:
>  - Collected CDooley tag.
> 
> v2->v3:
>  - Improved commit body.
>  - Improved mux-states description.
> 
> v1->v2:
>  - New patch
> 
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/5c5a85eb777f327e659cb3a969ebed8531c05a26.1764241212.git.tommaso.merciai.xr@bp.renesas.com

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
