Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D516ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 15:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCflIEkoXJXETh9AzigvK6ljK2uyBeM5OiEBAlDOHV0=; b=grRnpUMNRMeoq+
	i0fOVKYo1B7Edkorcp8UIY+xwLyPBXkV+sMBYm/UXRgmKagl3U0zvTmkulJSpmjnq2RuMBbzkYS+g
	Z7fPflEE4jop+TT57NdZAfZNHP7rIhMdO7b3s7jFNNBz8U4NE+JTppEfowAG1kWWHiL4pBuTWLegj
	EX79dyQDNGOam2MtZV24V7QgOw8TOGSYLfrwStSijLOrx7gLoXVud92CLdmYIOdMpYnrfLbIi7kz/
	OLFs6wqyyTtH3Zsu5XKS2p7R/mbGXHcgRRV9X5U2AWNjW9w9B6QeY2nMdWF1zUTozOLNGVx0kj/5P
	6JtzIN50UfBqeFWka8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfxU-00HS8R-LE; Fri, 09 Sep 2022 15:30:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfxO-00HS5A-FP; Fri, 09 Sep 2022 15:30:15 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWfxD-0006GD-6x; Fri, 09 Sep 2022 17:30:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	pgwipeout@gmail.com,
	vkoul@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	kishon@ti.com,
	airlied@linux.ie,
	krzysztof.kozlowski+dt@linaro.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org
Subject: Re: (subset) [PATCH v2 0/5] rockchip-dsi for rk3568
Date: Fri,  9 Sep 2022 17:30:00 +0200
Message-Id: <166273738605.3499664.11822406703030868338.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_083014_549481_FE743436 
X-CRM114-Status: GOOD (  12.63  )
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

On Tue, 6 Sep 2022 12:48:18 -0500, Chris Morgan wrote:
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
> current series DOES WORK now, but it requires rolling back clk changes
> made for the HDMI driver. If the clock changes are not rolled back, the
> image on the screen is shifted about 100 pixels to the right.
> 
> Clk changes in question:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=ff3187eabb5ce478d15b6ed62eb286756adefac3
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=6e69052f01d9131388cfcfaee929120118a267f4
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: display: rockchip-dsi: add rk3568 compatible
      commit: 1c3b502e4327e8e24e617a6f922df72870c0cb5f
[3/5] drm/rockchip: dsi: add rk3568 support
      commit: f3aaa6125b6f1532d3276d705b1a3791f18a872a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
