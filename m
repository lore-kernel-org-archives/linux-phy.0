Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AACC44533
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 08:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJho9bIsQUM5erJ2NcWP3UuFGU6bNnSSZqbVBfnNQI4=; b=f/B89AmpeVd/2q
	A8OrExfVrPEcWPB9LMhPYnT3bbWt3FwiJtJM3lSSEEXnnXuGcwEAAJExaSOGBqQU//mLolEo7nzlI
	hSf4ArDAElszoTJHj/SpPu7B48wyUapx8c6JG/9Q682zk7FJIxS9DsvsTJQyKH36lxqyR94m3Ig+C
	K9LS65/OiVok4MAVNNYAfKYuDoXldWoOWJ7Mo7cmQPIDAvFAhY8J64FAuwfWMVtfwA5tX/cTYF7fK
	w+HOx3ORmYMKn6aB7oB+fxQ32RF3o9tZW2n7THfrAkBDn8lH7UpLcLm134xbNxp/YGLu5Yx4RsHsA
	QsWKH5EKxSwIN9onr0qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmSP1-0000000BGal-1KOb;
	Wed, 22 Jul 2026 08:34:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmSOq-0000000BGWr-1yH8;
	Wed, 22 Jul 2026 08:33:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7F5AA60A67;
	Wed, 22 Jul 2026 08:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08D281F000E9;
	Wed, 22 Jul 2026 08:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784709235;
	bh=wtg9G2dp9qrHcHk+gGP2VMglqa7zLggUFlaPWcMwIKY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=KqoAGV41PR28Cfy7PtbBSBNW8Zi/rKvmaPUxp1n1VfHcGnGdt38CTAHOEIfIY2ltk
	 1FiWFfC21E1Fcnj5i4t1lkbKrPwP3K2w2ghlsEiDy1cOA8O4b+C4mLYn1iP+OmkRTL
	 M7wF4e+AYI0FvnZpgpSc4QrgiG1IqplhT8Oo9CliiZuWFgriR1arqW4bj+FNb/AIxH
	 6mN/UQaUK3zyIFHKrS0MBZlbWmrGVRGPt8z7jetS8WdFF8ZHf8Gfnp8mpeiVhVahgJ
	 mLg1P5WyrPf+IeXfOtveLIvvFuZKLsEW/XOgthgJtFrVVYe7ZfpEM4tCu7aN3iCSnl
	 TERg/lOA1cJUQ==
From: Vinod Koul <vkoul@kernel.org>
To: tomi.valkeinen@ideasonboard.com, neil.armstrong@linaro.org, 
 michal.simek@amd.com, Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, git@amd.com
In-Reply-To: <20260720153832.1130006-1-radhey.shyam.pandey@amd.com>
References: <20260720153832.1130006-1-radhey.shyam.pandey@amd.com>
Subject: Re: [PATCH 0/2] phy: zynqmp: fix clock and runtime PM error paths
 in xpsgtr driver
Message-Id: <178470923263.211476.9299503935837490359.b4-ty@kernel.org>
Date: Wed, 22 Jul 2026 14:03:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 20 Jul 2026 21:08:29 +0530, Radhey Shyam Pandey wrote:
> This series fixes two pre-existing resource handling bugs in the Zynq
> UltraScale+ MPSoC Gigabit Transceiver (XPSGTR) PHY driver. They were
> reported during review of the SERDES scrambler series [1] and were
> intentionally deferred to this follow-up series.
> 
> Patch 1:
> Propagate clk_prepare_enable() failures from xpsgtr_phy_init() and
> disable the reference clock on initialization error paths.
> 
> [...]

Applied, thanks!

[1/2] phy: zynqmp: fix clock error handling in xpsgtr_phy_init()
      commit: e4779e2a16d600892aaf743438f6ce8cc4eb3c4c
[2/2] phy: zynqmp: fix runtime PM leak on probe allocation failure
      commit: f3506e15cf72e94f62d5f2d173e5b7008f644cde

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
