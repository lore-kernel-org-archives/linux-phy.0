Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D66FC6FA82
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 10:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEu5qkCilBbo7T/jQYAgSN/5fwNU4ZzlvDMi9B2VtfM=; b=b/bz/4cfzIF1tS
	P4wm7mXR4FLF+49iuSsQTYo7zARyaRYwlPmbfM1CVJlktcdaokydfa6jpWCFxFF6hTm5e7C3A2WY0
	qX7ZdIJTXvAHLXZCSzoHBv3h/dBO4ItSx2iztlNvfHVK5N8DaxIP10tI0n+FYZaMCOz+JuXc5BUZQ
	ivoLxIqCztgJbsscavu/VcCZlF6gdR1MDIPv8ktVu7+G+nnqtKMcRA8RZkBDNh+9xvh5gbRvQYuh9
	Yhdf4NrxGLYdxR7IdALuK7vhmnhGOXS3sO7kfZCrTpaNvT9H+ohxng6n6Sx1jX0HWUgWpZt3/k6L7
	m7xgsYT4KVvbkl2jgB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg19-003fpn-0i; Fri, 23 Sep 2022 10:34:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg0d-003fac-P6; Fri, 23 Sep 2022 10:34:16 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obg0T-0005sI-JW; Fri, 23 Sep 2022 12:34:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>,
	cl@rock-chips.com,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	jbx6244@gmail.com,
	s.hauer@pengutronix.de,
	michael.riesch@wolfvision.net,
	krzysztof.kozlowski+dt@linaro.org,
	frank-w@public-files.de,
	linux-phy@lists.infradead.org,
	pgwipeout@gmail.com
Subject: Re: (subset) [PATCH v4 0/3] rockchip-dsi for rk3568
Date: Fri, 23 Sep 2022 12:34:02 +0200
Message-Id: <166392923326.537565.15902590169294407373.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_033415_847699_5C9F2B09 
X-CRM114-Status: GOOD (  10.83  )
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

On Mon, 19 Sep 2022 11:46:13 -0500, Chris Morgan wrote:
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568.
> 
> Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
> 
> Changes since V3:
>  - Added labels to bindings in rk356x.dtsi file to make it easier to
>    reference in board dts files.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
      commit: e18d9b093006d8abd53e1ce13c0d5a8d0fcd5f64

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
