Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E46C3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQYJCPoUDxV66+LcjC/OFPiYukS0CYEy+GCSQDOuTAg=; b=WiaX4Km62jb0fV
	k9lSbQ/QIqBlqKblG85nHTnBe8zKD3+/IHPNGFzB9Wtrm/o2yPZrEcVrg2VPvYE0gRHsyilsuwU3X
	uk2FCcZS+aCVVA/lAvQCZSw04rUHPCTjgzuglx4YUknmcdwAIjH04z9PmdO2xcajc9Jy0Py1d2UsF
	ouofUuZVum5Chc5dLZk/x/aauODDc9EgPhI6ClaJfOk4upE6oHf1HOWZGZLrsWkzDQ8dTHzbi698k
	L/9rG6+HwDroXU78JrRkMTaXtLaj3voaG6FL3oab4rRNu5VDEwq0n4N0C+shpPfqSEXSMQ4VQezLc
	DWFSYuF0wbV+hiiVp/jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYi-0000000FIeW-2Gpc;
	Wed, 14 May 2025 13:54:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQs-0000000EuZs-0ypf
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB4CE4A2AC;
	Wed, 14 May 2025 11:37:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4A39C4CEEB;
	Wed, 14 May 2025 11:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222673;
	bh=R/MbuxF9Q/H1tecmqJbiAyPjtoLODQkOyXszcxLXrMI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uuclqcQIK1zA30nOKIaH/32sXQpqaGqEy/3n3KbGds0vfhZSwAyr7BXjqLd4A2KS9
	 g3UVFK/jiWspQWpPxB62OJYHGseA03C2VLPrQ4KM9zfQfIRHhiQvx5a15Dtz+8KNdA
	 tDUdMwMGjIxOfkMBu1pIVI7ygZh4EYSIcSppHgBL2FA4x1yIfwDDE7MxRkhSwund00
	 Uko5gtKVlvq5Q5Z1JwbYnhgQK3GOUAQjLXDblDQNdwICHR0GU3B4NsuVjQh1p38W+1
	 vFjOhyND5mNWf/R7rgr/GVCogdnMCzxMMpwgZjtVz3PD+25TdVCmhrK4r7ZlPhaKns
	 l6ADPQA3F7FgQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 0/4] Add USB2.0 PHY support for RZ/V2H(P) SoC
Message-Id: <174722267052.85510.5832087290882468385.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:50 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043754_294623_C77CBE04 
X-CRM114-Status: UNSURE (   9.10  )
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


On Mon, 14 Apr 2025 15:57:25 +0100, Prabhakar wrote:
> This patch series introduces support for the USB2.0 PHY on the
> Renesas RZ/V2H(P) SoC. It includes updates to the device tree
> bindings and driver implementation.
> 
> Best regards,
> Prabhakar
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: renesas,usb2-phy: Add clock constraint for RZ/G2L family
      commit: 31eebeef8cdd4c9bddc9d34053cab6553616d0b7
[2/4] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2H(P) SoC
      commit: 9c4fbefc962dd13694b4a5051f432ed435c92220
[3/4] phy: renesas: phy-rcar-gen3-usb2: Sort compatible entries by SoC part number
      commit: 9414ceb38a74470249dee69784d6079daa452c3a
[4/4] phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY support for RZ/V2H(P)
      commit: 3767474d7497a4d03f58118d02b742b903626d03

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
