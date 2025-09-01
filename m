Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF7DCA0FF0
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 19:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/z3LABOsrvkF1+8BC/03Vxt/zM6iA5RplPf+icIoZI=; b=SpHrPSDR02B5zI
	huefxFkBtM1Q+rBi9wYpttQk4PFco9WOtHgmapXF8dBMtsFneIlwvgUScsN2PFO/FXVeh3W4C+cl5
	IHJL33HzVgr8pkeItRO5AnusYh78JilUUk6k6np5fbpxr5v0UsH7jNXQPQPvgEE0O31bI9kMgrLdm
	SiBzCNvGo74+jnMGO47n0j8UZc1FWkZRsUiadDjwO7Fg9LPHTej70IURwiVRRJn5naooTJo8mgpyT
	TVxxio55YeJ/j4/dZ3/9Iw0tHmBGuIn1WqDToGIrph2Zccv9EwTU6SKXtL9JCKb/eEq5dMPHk2yM5
	kY9o0IFMLnUivWwF2Tfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utAYE-0000000Dhkc-1PBY;
	Mon, 01 Sep 2025 19:50:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7OL-0000000DG6J-0RST
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 16:28:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 73169601E2;
	Mon,  1 Sep 2025 16:28:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 414DEC4CEF0;
	Mon,  1 Sep 2025 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756744104;
	bh=viw6wcLJ9dNt96CV0hewJVgxtXzq50eavaC2cG7cjho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=erBBuXVgQZv37o75NFkFnzj1JNuHwmNa41C2tuunXJAqdAhWWn7gdM8xoRjhLtlbb
	 l3Gt/sYbTdnD86ODgtofGn00enO0G/o935z81/DrlJ5Uu5GID0rTiTzlM3ybqAxLAK
	 RwmRKVEGnqQqxUhLF0eELSiFKNoAtsarvrLAJgn01uBwV5aihRhNUHJYvt5L6XjpRP
	 BYwsqsnVzA0Ay0a8kZxfNDiEhdHDxHBfhoCridA0acWUkU9jfuds893IYqv3islZ+7
	 0XxVjRvVhzxjbiHM096hMIy3lm0D6+PXyn+tIs++d+MyTIC9fETjiwPCDpQEXgoSAQ
	 uWNsyn1exfBlg==
Date: Mon, 1 Sep 2025 21:58:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju <biju.das.au@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
Message-ID: <aLXJozzGsbIndK9P@vaman>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
 <20250820171812.402519-5-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820171812.402519-5-biju.das.jz@bp.renesas.com>
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

On 20-08-25, 18:17, Biju wrote:

> +static int rzg3e_phy_usb3test_phy_init(void __iomem *base)
> +{
> +	int ret;
> +	u32 val;
> +
> +	writel(0x00000100, base + USB3_TEST_CREGCTRL);
> +	writel(0x00000303, base + USB3_TEST_RSTCTRL);
> +	fsleep(20);
> +
> +	writel(0x00000004, base + USB3_TEST_CLKCTRL);
> +	writel(0x0000000d, base + USB3_TEST_LANECONFIG0);
> +	writel(0x00000301, base + USB3_TEST_RSTCTRL);

Magic numbers...?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
