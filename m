Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9290FCA0EE0
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCrONM43oEYT6IU4tfY/gVgkmTILVibn9j8aeQfmb3A=; b=yn1xMkTQ4+TLFA
	f+WEpoVtp0zclS9JMh0gXvbyY62Au1YhjyBafDkKOsP67GEaE3bxTmlk+uHZD1daDFS76tu3Hslne
	afwg981KENLF9l8ygrwcvqlXSJAW8IwErgoAM0odSv0hbbosRXwLgZ7SvI6XSCLF54CDXs1nVErBu
	Y3Gmfdrx5zix9wnvPKF6/YT+akJHmIbfpSKBv1L9zXxZwnoxOQyhR4tdvoGgthhzCp1jiPhuuHlTN
	cc2rvHQt0XlEAyvzj0f8x6A7sYkncsCMqatIQyO+0hlg9dpcAhUGe442xZ98wy8/+XmhWmjqoudxk
	dx8vcrwgqI4wE9vfOcpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc0-0000000BoyZ-3CpD;
	Tue, 12 Aug 2025 19:24:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls2x-0000000BRyg-34zJ
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:40:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7228F462E3;
	Tue, 12 Aug 2025 16:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E70C4CEF7;
	Tue, 12 Aug 2025 16:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016823;
	bh=FP3+W4WD7PYdGcbVMt4lMvxd4MweItxFCQZ2nbvYrjY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oBf4lzGWc4rYRw2gl+eWYePVEg2rX8xAxmtPO5cxrradsZi1bZrEy+30vII34i0ip
	 rXKIO24aJoSJzZ/SDOfjHiXC6zQZ7sIZvFnt26+9k2+SI1OBfIY5UaWsbC7c2mESId
	 p2zA5dium/eA9SnECpUQGrWlmVBDIx2CAlMXVAshs83uEqLYDgyViFtVnTakG+uu/p
	 I9ORR5aIbh9ychmRqdBcE9L+dUJztmD6THfbJrchghA0J60wF17glFGHFYTIEy6rJV
	 paENv4Ieoscfn1Ov1ghpoPElf2BaiYQWRzwOyI8qlB73hMlvzw0mTFma+n/3eX62Im
	 JEvehX5CJsFQQ==
From: Vinod Koul <vkoul@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250806200138.1366189-1-robh@kernel.org>
References: <20250806200138.1366189-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: marvell,comphy-cp110: Fix clock and
 child node constraints
Message-Id: <175501682042.633066.13384009290495512266.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:10:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_094023_796093_D9E4057A 
X-CRM114-Status: UNSURE (   5.47  )
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


On Wed, 06 Aug 2025 15:01:37 -0500, Rob Herring (Arm) wrote:
> In converting marvell,comphy-cp110 to schema, the constraints for clocks on
> marvell,comphy-a3700 are wrong, the maximum number of child nodes are wrong,
> and the phy nodes may have a 'connector' child node:
> 
> phy@18300 (marvell,comphy-a3700): clock-names: False schema does not allow ['xtal']
> phy@120000 (marvell,comphy-cp110): 'phy@3', 'phy@4', 'phy@5' do not match any of the regexes: '^phy@[0-2]$', '^pinctrl-[0-9]+$'
> phy@120000 (marvell,comphy-cp110): phy@2: 'connector' does not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: marvell,comphy-cp110: Fix clock and child node constraints
      commit: 5cfdfc623835d40664f642b75a56d9934f24c5ff

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
