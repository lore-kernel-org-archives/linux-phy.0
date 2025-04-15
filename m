Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6B0EC369B9
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 22:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wULdYPP5tEWj3OX8eWHKe+mH4BVBpvABH0HVXFPBh14=; b=DIdCCnijMngIdd
	A1l0BJ2GFi4rnEdDGiJoMIA5ZSEeYJYMd1JbKjmyVeRt9Zd9+bsE2l+9K1bPs37aB2QO5d/bRDjEF
	jd3SP2Q3o8nrDsEFVvQXp66AmeHWcf10lqyuIrLdaFxE1btkn1OPOK4+C2+ukvORFEJSZCe64n245
	g3/IVVPiMrht69fKVOTrQUPrmDf49bRUoUugp3riVJ8p5DM7G6C/271sEPZ/m55Z/4MH16XAIAlXi
	LbgEqhyRqIlVHxLJx9s3hduwX4SZWjCfLPpNItmY3Ze7GAT36mgcz6ZK0T+e7qhwdOlkKfxO2Dbj8
	PYO4C71Zuq02+03MauJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4oVi-00000007IKi-0N0I;
	Tue, 15 Apr 2025 22:12:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4oTS-00000007Hvo-1c00
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 22:09:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DC87A44FA1;
	Tue, 15 Apr 2025 22:09:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F269C4CEE7;
	Tue, 15 Apr 2025 22:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744754985;
	bh=vepstU+VeqHh6+qowybjXxUtB+33ICGyCl2PjWvB54k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nrNpJFHqxnf7NuMjQ7A2rLJfEiZp/qUE+pTwIFP9WvmsQymAs3iOysdoMzq07esey
	 ECQ63f0Z6p2cXP3+v+h9RxOivgatgmqqctGsDIev9rNjbrJYBIRZt+7slWSQq/1BEW
	 3q0klbefSoZdlKSrBMlY+wudQDsYkjSC3K73bRINAl0oq0jBpi/SB5edCi2zeRT3ch
	 anK6KLLg9I2iKA295/swHvIGlgZ4qv3JWQOFYq8Vl52q1AOzLpfHP7VlYABQh2U0tW
	 CdELjZnRqxCGU4EcsWMKe3l/dLq2Q0LeQacAYkmIDdoHll0b6WklFK65X1DJMwBGwL
	 +Ksg5n09OYcxg==
Date: Tue, 15 Apr 2025 17:09:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Vinod Koul <vkoul@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/V2H(P) SoC
Message-ID: <174475498350.920532.9822490271876719178.robh@kernel.org>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250414145729.343133-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414145729.343133-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_150946_438307_F5AC24C3 
X-CRM114-Status: GOOD (  11.55  )
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


On Mon, 14 Apr 2025 15:57:27 +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Document USB2.0 phy bindings for RZ/V2H(P) ("R9A09gG57") SoC.
> 
> RZ/V2H(P) USB2.0 phy is similar to one found on the RZ/G2L SoC, but it
> needs additional configuration to be done as compared RZ/G2L USB2.0 phy.
> To handle this difference a SoC specific compat string is added for
> RZ/V2H(P) SoC.
> 
> Like the RZ/G2L SoC, the RZ/V2H(P) USB2.0 PHY requires the `resets`
> property and has two clocks.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
