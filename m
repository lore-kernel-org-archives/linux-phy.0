Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 387FDC3DA59
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 22:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uMjbVCwAUoZtDJI31zoXAg3K37vkSiYTMwI56CIGEj0=; b=xwlGQ2ImBgjHfxkOyP+N1OZSBG
	dW/JAJrt+r6uuUGQC9Iw+5cqsdRVtJWSf00CiZ8gRRHEhX8NRiQ1vGwBA3sNUiNuteomI0czJd6UM
	jMdNFURUBicFEaIci33uMOEfiRKtJ5Jo62lIysGPZNObB4Ah0AQ+uAfzOwouZT1CLedzVW+pfKISC
	fXsqBUW7HoGNr1nd/3VsCrB0JEfDIKR87P6hfM/7OvJrIZxdSnO9VQ0rw7a3uZDVl/GW2sOvmNHAf
	9NYeYekwsyrUz+PVSjqeWeRMvt6wSkYXqSiaWHCItM8JIS6c3dCND7alctNCasFOoIrFZ/81DxKOy
	5clZCpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTqw6-0000000BzjY-3Bxx;
	Tue, 16 Jul 2024 22:46:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTqvk-0000000Bzea-2XRz;
	Tue, 16 Jul 2024 22:45:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 18D25CE0F42;
	Tue, 16 Jul 2024 22:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CECC116B1;
	Tue, 16 Jul 2024 22:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721169953;
	bh=w276R0jHD8o5myzBdBEzxgmIblQgkaaXfmG48sGgNW8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QWxXG0wOb8j9ivRtn3Gd38fHK50GDlmPJ604zmgSmn2Jw/5RasVl+dNIhkkg9guiW
	 KWySTN8qdHxBEo82oZ+8e9MRbWFPa+mc43ezSvzK7KG++au98L06BY2BBSN6uy1bs4
	 XUMuFwHZF0PB/sNab7TkblnQOuWC0DBYPHCgM4yMs6amDZRtSYxQPPhaN+tlkQfcMm
	 CyyV+XY+Djwx65n2ISep01f+DXgymN/brYCFyFx24iSARIMrRE3/cFEvVNWgJP71Pu
	 VShBu0+QR9fiSVHe2Z6HYGy2l6HDRnmeE0DXLnf3h8JlwxbroRLi976bsVB5vdOV5d
	 nR2NwaYZYxCDQ==
Date: Tue, 16 Jul 2024 16:45:49 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yazan Shhady <yazan.shhady@solid-run.com>, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-phy@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>, 
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>
In-Reply-To: <20240716-a38x-utmi-phy-v2-1-dae3a9c6ca3e@solid-run.com>
References: <20240716-a38x-utmi-phy-v2-0-dae3a9c6ca3e@solid-run.com>
 <20240716-a38x-utmi-phy-v2-1-dae3a9c6ca3e@solid-run.com>
Message-Id: <172116994973.743769.12500781470975159877.robh@kernel.org>
Subject: Re: [PATCH RFC v2 1/4] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_154556_846026_E50C1889 
X-CRM114-Status: GOOD (  11.21  )
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


On Tue, 16 Jul 2024 22:52:37 +0200, Josua Mayer wrote:
> Armada 38x USB-2.0 PHYs are similar to Armada 8K (CP110) and can be
> supported by the same driver with small differences.
> 
> Add new compatible string for armada-38x variant of utmi phy.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  .../bindings/phy/marvell,armada-cp110-utmi-phy.yaml       | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.example.dtb: utmi@580000: reg: [[5767168, 8192]] is too short
	from schema $id: http://devicetree.org/schemas/phy/marvell,armada-cp110-utmi-phy.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240716-a38x-utmi-phy-v2-1-dae3a9c6ca3e@solid-run.com

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
