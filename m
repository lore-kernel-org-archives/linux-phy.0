Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAACC3DA5D
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tvTW6aiHl+Zcq0gPtxaMAP8rWMjZSqwyBqDpj0jx9/E=; b=kudEA4o9+zM7gpSiNapoZkgRVn
	wJbCxTVbjAsMt2n7OfE8WE34jNl3kpnmjSrXvkoPPbjvZ/CBvUD2jX+ItIeEwzX9rex2gzyRL7UtB
	rU3Ka0+gK2Nk6IR38oLxBdn5RwB80UkQB8vwMXOEL6PA5+QDlPP5fCv2FR2zJ+9TKlVz6lxNUlBfL
	76vSz3G0VfZ/0clXLDDnHtWZl1fzRIV07iVfZPyV3hVJOnXzn+Aku6zii0tM5spnV2U0hIpDn9BR7
	GJ16QokgMg/ccfUQfL6e/X6CWF3uTEqe7BRmzOmvl8uS7Mfi7qcsbTF9OF0y96t8Ag/rfdf6RdN5k
	/b1gNX7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5jE-0000000BBP3-0p8W;
	Tue, 23 Jul 2024 02:58:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW5ie-0000000BBEF-3Osq;
	Tue, 23 Jul 2024 02:57:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BC4A9CE0DFA;
	Tue, 23 Jul 2024 02:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E264BC32782;
	Tue, 23 Jul 2024 02:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721703457;
	bh=S/zDUoK/wOB3rI+BZgSAPwfa6YvcK/ZFEfSAjQA7fkw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=mcNy7B/zTna23ZuGW3hu2uV2aX6ZzmjF+yDG/Ps07WonEgj876aF7xrL3AIaWhb5f
	 sVebQLFRySpZs6Mr8V9MV+h+/lcX6KuijBZskrViVWdCihT1P6nhE9n9GwwPdFry8V
	 SuuK52Uwfxrt+1HFAuPc/On5uO/ydPGJ3fUOmjSaoTb6a711+JHhgoxiH4vgl7Yu8e
	 lpey7xTJL0t9X53QFh4rbNxMFLb+6zLKAuSbkLwWcceI26BjTlCXASkel4aaHrjjFA
	 wiT6UTHXMkg/CI0cV3AZQdv0g02EUTLx1vQE1dbKzksiwWjJM+TakGH5FN9MgX6snL
	 dn8v1YC9jI5gA==
Date: Mon, 22 Jul 2024 20:57:35 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>, 
 linux-phy@lists.infradead.org, Yazan Shhady <yazan.shhady@solid-run.com>, 
 Konstantin Porotchkin <kostap@marvell.com>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>
In-Reply-To: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
Message-Id: <172170324618.205229.14421004930608036629.robh@kernel.org>
Subject: Re: [PATCH RFC v3 0/6] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_195741_234868_B53F7EC0 
X-CRM114-Status: GOOD (  17.88  )
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


On Sat, 20 Jul 2024 16:19:17 +0200, Josua Mayer wrote:
> Armada 380 has smilar USB-2.0 PHYs as CP-110 (Armada 8K).
> 
> Add support for Armada 380 to cp110 utmi phy driver, and enable it for
> armada-388-clearfog boards.
> 
> Additionally add a small bugfix for armada-388 clearfog:
> Enable Clearfog Base M.2 connector for cellular modems with USB-2.0/3.0
> interface.
> This is not separated out to avoid future merge conflicts.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v3:
> - updated bindings with additional comments, tested with dtbs_check:
>   used anyOf for the newly-added optional regs
> - added fix for clearfog base m.2 connector / enable third usb
> - dropped unnecessary syscon node using invalid compatible
>   (Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
> - Link to v2: https://lore.kernel.org/r/20240716-a38x-utmi-phy-v2-0-dae3a9c6ca3e@solid-run.com
> 
> Changes in v2:
> - add support for optional regs / make syscon use optional
> - add device-tree changes for armada-388-clearfog
> - attempted to fix warning reported by krobot (untested)
> - tested on actual hardware
> - drafted dt-bindings
> - Link to v1: https://lore.kernel.org/r/20240715-a38x-utmi-phy-v1-0-d57250f53cf2@solid-run.com
> 
> ---
> Josua Mayer (6):
>       arm: dts: marvell: armada-388-clearfog: enable third usb on m.2/mpcie
>       arm: dts: marvell: armada-388-clearfog-base: add rfkill for m.2
>       dt-bindings: phy: cp110-utmi-phy: add compatible string for armada-38x
>       arm: dts: marvell: armada-38x: add description for usb phys
>       phy: mvebu-cp110-utmi: add support for armada-380 utmi phys
>       arm: dts: marvell: armada-388-clearfog: add description for usb phys
> 
>  .../phy/marvell,armada-cp110-utmi-phy.yaml         |  34 +++-
>  .../boot/dts/marvell/armada-388-clearfog-base.dts  |  41 ++++
>  arch/arm/boot/dts/marvell/armada-388-clearfog.dts  |   8 +
>  arch/arm/boot/dts/marvell/armada-388-clearfog.dtsi |  30 ++-
>  arch/arm/boot/dts/marvell/armada-38x.dtsi          |  24 +++
>  drivers/phy/marvell/phy-mvebu-cp110-utmi.c         | 209 ++++++++++++++++-----
>  6 files changed, 288 insertions(+), 58 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240715-a38x-utmi-phy-02e8059afe35
> 
> Sincerely,
> --
> Josua Mayer <josua@solid-run.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y marvell/armada-388-clearfog-base.dtb marvell/armada-388-clearfog.dtb' for 20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com:

arch/arm/boot/dts/marvell/armada-388-clearfog-base.dtb: usb@58000: phy-names:0: 'usb' was expected
	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
arch/arm/boot/dts/marvell/armada-388-clearfog.dtb: usb@58000: phy-names:0: 'usb' was expected
	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
arch/arm/boot/dts/marvell/armada-388-clearfog-base.dtb: usb3@f0000: Unevaluated properties are not allowed ('compatible', 'dr_mode', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml#
arch/arm/boot/dts/marvell/armada-388-clearfog-base.dtb: usb3@f8000: Unevaluated properties are not allowed ('compatible', 'dr_mode', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml#
arch/arm/boot/dts/marvell/armada-388-clearfog.dtb: usb3@f0000: Unevaluated properties are not allowed ('compatible', 'dr_mode', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml#
arch/arm/boot/dts/marvell/armada-388-clearfog.dtb: usb3@f8000: Unevaluated properties are not allowed ('compatible', 'dr_mode', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
