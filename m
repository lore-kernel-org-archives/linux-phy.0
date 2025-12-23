Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22875E6F085
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjT+CTdBjK6YnBlU8gsVrjVvyNT/JjxNcO/sHeu2KiQ=; b=45UVflVsGt+LOQ
	iM3WWcSGdKxKuUnScuy+OFgiVpA7qwJMSEd5rFLPNzb6BzNTqbUG8r/ZCmLwQZ3MynczSVJ7TCWDI
	NQyGepvFhW4ByfZ8X/nijZFlXjydJP3ss16XEZVB1+PWYNdf4mseAxX2AH2xegffYxag790YPwRiT
	+EIB8wysSThzKp0GKecRSLBRSFyNuic4G9Dy4d9xFpj+Wbi7GVy7L3rSk/fdYARAiWIII11/5lBxF
	YfNfsqA8fYbehDMORWOaHjTP+soZYNE2DJJ/I5NyKbkN2yVcyJZ0UMbhMlLSGuAZlpA03ymA7LGBV
	4+yTTTgz/gkGIvU20fUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RT-0000000Fr8B-3dsO;
	Tue, 23 Dec 2025 17:45:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RQ-0000000Fr6A-2Jkc
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:45:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 40F4F43805;
	Tue, 23 Dec 2025 17:45:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD2E9C116B1;
	Tue, 23 Dec 2025 17:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511900;
	bh=7UcJoh+9uo128/NiZFzblIxses8/TnRGhjyIQQ/1NLk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZBanMw5CTV2hTrz20Sz2zEqujCGmBDhmW9ROrWfnaochVVmDu1wtLhzSFeeOm/wq9
	 0MN+Tzxg9Bodh7VEhhA9FGMNpVLScfbRyN69yQrDqYdCCbDKTKqTjrevUdW81FqL/e
	 2ItU4Stak97SW12gJFIRYo2cgV9nk1GhRzC0+HJZ7cMY5isl3I/66qi3n31tNeBG1W
	 vQs3cIAEdoGNr1rOv3nowsXrusJI4Xm9XPtbKCZlh1kte51bth9KUUThZilCYKvwwF
	 P7Lz2z4WyZRH9gtDW+4QTv7aFZedVs8B6lRycXmM71bPiDFwLweHRpjrJ90G3ar/wg
	 FAmSkpVTHw62w==
From: Vinod Koul <vkoul@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>, 
 Frank Li <Frank.li@nxp.com>, Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
Message-Id: <176651189540.759340.9131667922285339029.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094500_631552_9BAC8F91 
X-CRM114-Status: UNSURE (   4.85  )
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


On Tue, 09 Dec 2025 16:21:19 +0000, Prabhakar wrote:
> Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
> dual high-speed CAN transceiver with sleep-mode support and no EN pin,
> mirroring the behaviour of the NXP TJA1048, which also provides dual
> channels and STB1/2 sleep-control lines.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
      commit: 5442f9fd8814932e42602670bd013fcbc10a6906

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
