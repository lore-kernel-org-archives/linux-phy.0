Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 496C4E74904
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 02:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39oozY+jZLIlE+qalX09lUdp66rqc6Cl0p+0oPabcnE=; b=I9sAmVENorGbMT
	66nR1TilHxV8xzOQdrI8I1IuUXo3gXuUVtUdo++At118MBJOvRDvxcwLTvQZlrPrI8k7kothKP6Re
	C0KLrjzw0a4a4T2i6bufISVUZ69j+fG9PXPvEXCtGAItvKC4dgZa3ZD8WheOR9iW6JyNOmTMETOG0
	A/1Jc+VprlLimGbvCDaqJtleHhIWF6mEBX2JsvEUDUnwqqLXfKr6OsDGRL92EhIt57yyPi0HuKhhv
	QfVxAC3seJr4jsJa2KifXOKltOvbOf9zQ7Xq0eHpHqQB6FrfVrx1z9b2rlBsDp/aoQ98ARIGYo2ot
	JjhQWwcizqNSVHsaMdew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYEr5-0000000GKXr-3nAv;
	Wed, 24 Dec 2025 02:44:03 +0000
Received: from woodpecker.gentoo.org ([140.211.166.183] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYEr3-0000000GKXL-39v2;
	Wed, 24 Dec 2025 02:44:03 +0000
Received: from ofsar (unknown [116.232.18.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id C8855341EB0;
	Wed, 24 Dec 2025 02:43:50 +0000 (UTC)
From: Yixun Lan <dlan@gentoo.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	Alex Elder <elder@riscstar.com>
Cc: Yixun Lan <dlan@gentoo.org>,
	ziyao@disroot.org,
	aurelien@aurel32.net,
	johannes@erdfelt.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v7 0/5] Introduce SpacemiT K1 PCIe phy support
Date: Wed, 24 Dec 2025 10:43:34 +0800
Message-ID: <176654417344.105270.15876939192797072148.b4-ty@gentoo.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_184401_814763_3CD223E9 
X-CRM114-Status: UNSURE (   7.33  )
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


On Thu, 18 Dec 2025 09:12:26 -0600, Alex Elder wrote:
> This series introduces a PHY driver to support PCIe on the SpacemiT K1
> SoC.  The PCIe controller implementation is derived from a Synopsys
> DesignWare PCIe IP.  The PHY driver supports one combination PCIe/USB
> PHY as well as two PCIe-only PHYs.  The combo PHY port uses one PCIe
> lane, and the other two ports each have two lanes.  All PCIe ports
> operate at 5 GT/second.
> 
> [...]

Applied, thanks!

[4/5] riscv: dts: spacemit: Add a PCIe regulator
      https://github.com/spacemit-com/linux/commit/73a6c811fa0d07078c9e1eaecea76ce26fb5f10e
[5/5] riscv: dts: spacemit: PCIe and PHY-related updates
      https://github.com/spacemit-com/linux/commit/0be016a4b5d1b927de04e2e7a0a2bce51aacbfff

Best regards,
-- 
Yixun Lan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
