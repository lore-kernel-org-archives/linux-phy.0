Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FFBC7115A
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbFcvGAU+agelbwEDav4tHuv3W8ijuTUYKuUVUhOhpg=; b=u3yxsRqJatRgbg
	aw4D2WXE/252e6FxTBaEMi8jmS8EfshHiudmUW7Xi5b/BbuLFL7jKbJkx01pFOpzwUFvY0PcseA7e
	1UL3A5AVHxYeBhmvn5MA+CuIM9XaEa5UxNUc/5Zy1rLXiWJ9ZSg8gT0z1/iTgbK9fXhI7Getd6CDC
	6brzFcmwvZmxf/7ZCBAcf+jbhxMg3tQ+V7tIJi2K/+Qn8ogPqrOhBvLSFKQ0QxNaMcA9ZAIPd1/++
	yZXRRErVpaImOcT9+OLPoYq5VSDzHoOvC4HW21VxYUodYxAjeK8de56fypWVCd2Vqg33P09mYH3q2
	0WCCuF5RoOeBYWLXFonQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqjX-00000002gnM-1Uza;
	Sun, 15 Jun 2025 17:01:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqbG-00000002fvm-0ayZ
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1182C5C428C;
	Sun, 15 Jun 2025 16:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10DD8C4CEE3;
	Sun, 15 Jun 2025 16:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006373;
	bh=TqLr/OCBktBZQpeIStq66n7a03Pl9cTeFHgLsL3jA5Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kUy74Sp5/YdI9tbwp3MmfXvHsGNeh91SLmRJp+dX5BoAZggUkRJriagL1FJe6s7G7
	 Mpo4gho07NrQfQvNOp0tFHFwUG+JR76cKnjI4dnzn5j14BU5MNyvS52b9WT+JWSwT9
	 6Johrp3AyysxuWhtfCeX1hCG01y9XkjF2JIPij+tC8rWfckKoylyPfj0NGM251yMgw
	 HAeOrF/3KgT/sC3uJ7oGfWirhNRqoj9gkg7W85lL0LvtaHI3ae2nrpdbPYlc2YUf0A
	 lQUKmrspkUn7iDeIT33F41YG3CGKSwvEZyum6NsBXKvDbc3LjxXyu2Vx0NUY/o8ImK
	 xAURId6iywE1Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2N
 SoC support
Message-Id: <175000636867.1180927.12382475104046951897.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_095254_226554_7E96A3E8 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
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


On Wed, 28 May 2025 14:38:58 +0100, Prabhakar wrote:
> Document support for the USB2.0 phy found on the Renesas RZ/V2N
> (R9A09G056) SoC. The USB2.0 phy is functionally identical to that on the
> RZ/V2H(P) SoC, so no driver changes are needed. The existing
> `renesas,usb2-phy-r9a09g057` compatible will be used as a fallback
> for the RZ/V2N SoC.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2N SoC support
      commit: 00399bbe02d2bb6fd8d6eb90573ec305616449f4

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
