Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D93CEE342
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 17:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rezhO+OHIYKuif4OF3AWTNeocF1DVGHBmhmEpSMvczE=; b=ozJt70vdX1CcNN
	YwVkrlNjO9PJgB3LPAsLEZBXeSe0FBoQzSDa5xWodeStyd0JpQ0qdqm+ly64370B0WiuXD9oATS93
	pHqHCnHIzZKS+2aNEA0XhlNwPYg5SkFIBb+o7zN7rkKfnkZGW0c1Ej2uZGmTzcZ2QFx+3sW5v4hv7
	1msI/Ug+Ga1io0YFWNIksmvGz9Npn4s0nhbB7p/fVr7TEuWcVFRPiB6VZV3ET7sANuJXOF0uwmSHJ
	mfAuxH4FEul0Bqh1sl/6nDy1WVuvDDEvlb/Ta0TEWcAKWxUNVGe4koqeOKKyp1yCLsd4qMZmOhdzb
	pIjWngDT3JxuGHdGPYgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLe-00000000qWi-42Mv;
	Tue, 18 Nov 2025 17:18:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLd-00000000qW5-0kc7
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 17:18:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D19794068A;
	Tue, 18 Nov 2025 17:18:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96638C2BCAF;
	Tue, 18 Nov 2025 17:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763486312;
	bh=RiGFzfXmZO4+VW2Jlm31IvVgpbQb3+giKHuHjhhJwgs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=I18UtjqPqYnixIi5FDSgas4/atMW1EQ9o6lY185VTZaiaL7ZvAESGiRL0HYiZwad/
	 LiwAxvGPNNH3jdl2mbMLR203FMWcCXM5EoEJkMkEFidY+0x45ecx37EfDwsrl1P9tL
	 6fINqEuE6XFGLiBTXzsRZcnevpFTzKKGZUVdvOWrcPlbOoLzEKnYj/lDLdFabnRQxT
	 jJiviQ1Smlvrx+oVGwuiO3b1AsxuzwroINlTog92wzexxRpVz1/5ssa3nh4COnH/QJ
	 V4kXSrWC5b38H3emVxqHg1BcR9gCu/sgsfeLqbNM1WD9qdKJqGqblpm/OuwHk4LSkv
	 kbhgcrr9aRrfA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju <biju.das.au@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
References: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
Subject: Re: [PATCH v4 0/2] Add Renesas RZ/G3E USB3.0 PHY driver
Message-Id: <176348630816.62598.8877829293827996179.b4-ty@kernel.org>
Date: Tue, 18 Nov 2025 22:48:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_091833_242205_7E8BDB77 
X-CRM114-Status: UNSURE (   7.26  )
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


On Wed, 29 Oct 2025 08:40:32 +0000, Biju wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
> 
> This patch series aims to add Renesas RZ/G3E USB3.0 PHY driver support.
> This module is connected between USB3 Host and PHY module. The main
> functions of this module are:
>  1) Reset control
>  2) Control of PHY input pins
>  3) Monitoring of PHY output pins
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
      commit: 4f816512aaa1fa3b74df7473ef771ebef511255e
[2/2] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
      commit: ee5f1a3f90a4720f89fd1e250fa6754470da1510

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
