Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5CCCA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 06:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7T4HJxRBvXBytLskoldAal2fW965PTmtshybA85GxW0=; b=SpNlRasmC1iLHGpVg6LBSYtOJ/
	no3oj7v9hX9HbUQbg4RU43QYJuCasa7zDPgwZUic4RKWY/G1+lInzHK6p1PvQEFfc8ueoJWY8c9aB
	IkSTvERt9+6ykEbFeAXNlx3aEjM/DKV6wGYmt7O0HhaAJAiX8Wa7WlXCiw058aAO93vz56sn6NZCk
	k1IOwa5g+58a43BgalOcYGmOsPHcmzy82f7QAR91xZ12dt/SE3dXWz6u/yFK8zC123px5Otv3Pshx
	Mo06OYqK6iLMEbWpcALZzegZOKGS/DplSJvP9PvEZkWMdxX9uZcnM1+DyhEwTsqjp+nHOqp5b4Bke
	Nplofn3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFqT-00000009XAJ-1Kei;
	Tue, 19 Aug 2025 06:29:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFqS-00000009X9h-2J7A
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 06:29:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A5877613FA;
	Tue, 19 Aug 2025 06:29:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3474C113CF;
	Tue, 19 Aug 2025 06:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755584959;
	bh=33iJBot7S5LwwyXwV9Q7aUs8pqt5AdVKb1EuKgPON70=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=VB5z9w+yPAkEqZs+JpC5OAMBHnmP3l8z//DBSeMGv6HP0+pC3UXLhY+VViI0wYL53
	 kC9vOzszLygIWCz9uBFsDvN8i3sg5XuRROsaF//oPzr+zzoTlkX9fyBCWAwh8I9gnb
	 PxJ5KLCRwmBF5+1ArkKUcGhFD3sPsetxfU8sm8Wi6ztUlSg5RVLdFmIffzt/YQpxEg
	 to53WrfQ6D7DRS+M1SHiJFhs1kGVLTXMdfXFIP1ShcN8jtdXLt+KEMr8OLzL9Ne2tw
	 EmTK0fm/WwiF7B1ZW/jD9OOiBer8McVI5jMxL2aH086AU9YM97QJYMopY6x21HJUq4
	 rzIkocCx9jGmA==
Date: Tue, 19 Aug 2025 01:29:18 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
 kishon@kernel.org, krzk+dt@kernel.org, p.zabel@pengutronix.de, 
 yoshihiro.shimoda.uh@renesas.com, conor+dt@kernel.org, 
 magnus.damm@gmail.com, geert+renesas@glider.be, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 vkoul@kernel.org
To: Claudiu <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250819054212.486426-4-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-4-claudiu.beznea.uj@bp.renesas.com>
Message-Id: <175558495586.3265727.15591420113777968646.robh@kernel.org>
Subject: Re: [PATCH v5 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
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


On Tue, 19 Aug 2025 08:42:08 +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
> system controller set before applying any other settings. The PWRRDY bit
> must be controlled during power-on, power-off, and system suspend/resume
> sequences as follows:
> - during power-on/resume, it must be set to zero before enabling clocks and
>   modules
> - during power-off/suspend, it must be set to one after disabling clocks
>   and modules
> 
> Add the renesas,sysc-pwrrdy device tree property, which allows the
> reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
> controller PWRRDY bit at the appropriate time. Along with it add a new
> compatible for the RZ/G3S SoC.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v5:
> - fixed description formatting
> - collected tags
> 
> Changes in v4:
> - dropped blank line from compatible section
> - s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
> - dropped description from renesas,sysc-pwrrdy
> - updated description of renesas,sysc-pwrrdy items
> - updated patch description
> 
> Changes in v3:
> - none; this patch is new
> 
>  .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 41 ++++++++++++++++---
>  1 file changed, 35 insertions(+), 6 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819054212.486426-4-claudiu.beznea.uj@bp.renesas.com

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
