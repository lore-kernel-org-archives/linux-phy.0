Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F67C197A0
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgH0PhecBfzQyJWfSyBATKgN4nIa2DZwBMM9SjwhDe0=; b=A5jiHau2Tk3uZe
	WKfNWzJnwGP5gVBVyJBnWKLSLZtt+fCjyraXfJQquxgoUyi3KnGKpGBDoqEOKIodGYX0d2DBd5r/s
	ISpl/AkhdwwexEeJR3v2LUWRFGDHDRlhETPl0GyGtw4pVLJ4rGYmPIwuU1R1rtdS7o4fY9M2WKCT3
	NB2/jKKmJok03n6E3XLk8QKivm1eseFYkzmMRCpwmmgdww/wShCTv24oUiGMOTXqaXYs/43UKI8Fd
	OknUQQ2WIByaCLx10adTswlXEYyXiV44/PIZHHW7RhGhNPjrT+px1ofeAGr1Bv6k7ykYzZLMueA5q
	c4juFENS6xR9Pn1ma16g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dr7-003kl2-0X;
	Thu, 16 Nov 2023 15:00:33 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dr3-003kjB-1y
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 15:00:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CFB2DCE1F81;
	Thu, 16 Nov 2023 15:00:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23A0CC433C7;
	Thu, 16 Nov 2023 15:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700146827;
	bh=6yJFsAiIgRdd7mwN0bgpBt2+ND8YpXifms7Wy+EMAl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BuzTlnhBTSCVNJ2gexMe/7CqYKGP1TYRYYy7izwRPvdtfmxFwKiqFMa3NtB7BbAkn
	 05U/3gPilj4S1bViWANu6WbeLRqBlQorzeTN2WD7Tu3hZU1Yms7so5UMbWmNm+iw57
	 fVoRBblDeTKYYUqHnm9G1/dUes7nSa8qXIuNhhb9Ytt3Kx8WEEaP5w0Bl/A5xt+29W
	 0QIDlOaQfDrL8zj12ujGKCMQP1WgsEb1DPq1doBDosqoe29tTB6j4gXazGxuBNvxkE
	 nYOZ6eICUMtOQvfl+NhoE7msov1FloN3iaOHQ5wGWlFX1qWPjXV3iVq145UdF+Liv+
	 Ud+d67ymKS1fA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Andrew Davis <afd@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231025143302.1265633-1-afd@ti.com>
References: <20231025143302.1265633-1-afd@ti.com>
Subject: Re: [PATCH] phy: ti: gmii-sel: Fix register offset when parent is
 not a syscon node
Message-Id: <170014682469.545161.9778178408196778168.b4-ty@kernel.org>
Date: Thu, 16 Nov 2023 20:30:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_070029_820036_601F8273 
X-CRM114-Status: UNSURE (   7.53  )
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


On Wed, 25 Oct 2023 09:33:02 -0500, Andrew Davis wrote:
> When the node for this phy selector is a child node of a syscon node then the
> property 'reg' is used as an offset into the parent regmap. When the node
> is standalone and gets its own regmap this offset is pre-applied. So we need
> to track which method was used to get the regmap and not apply the offset
> in the standalone case.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: ti: gmii-sel: Fix register offset when parent is not a syscon node
      commit: 0f40d5099cd6d828fd7de6227d3eabe86016724c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
