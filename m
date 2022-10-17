Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE1EC43219
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNbCiM4UwX50+GvO+5KhfKvP2d3tpQgiJanHGi8S/uE=; b=LmcSC8fH+373yR
	Ix6U5JkmxA49chLONyO/czgLqafoVyTOzYvPqRl8xnzKmFmhaplJec7Bupn9KdiwLz50/KKEVKqQl
	Ps3QTGRhquixfRr0untMLATGn7nBuXLcLtN4PSwjPeo7OiHNSwqyD1WQdrXOTMPsYYemBSUXWTnFE
	nIgAzeiTWU6ijrgoWdISMRF13nEaRBYNLvJ1t5zPX4iw1cE9B8AlbUdNLMmMd9RoMrLco4/4WIr6A
	QadzyUhyBX6gFnmKZl5vF9VYS/T1NILmbIj4Fe8X3OXvaDsdwWI4/DhTcpM0vGXlhVLIkwaKjruCc
	sudnJaa9+E/5/YcL1qtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIgq-007P59-SV; Mon, 17 Oct 2022 05:29:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIgo-007P3Z-9g
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 05:29:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C5366B80EDF;
	Mon, 17 Oct 2022 05:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029EFC433D6;
	Mon, 17 Oct 2022 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984563;
	bh=3Xbl7YVRSwxkla8P8wg2DtU1jeZKfi5JhHpnez5Evmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BsniOT+5eMF9qsWx3u6iuceuOO2kzTZ0QbQPZWpT12rwSZ+s23bifECVS6V3dLLPR
	 PKVKl1P67aJDhDqKAfKRKLTSYOfsbfSM1rpmZkLZ/fpKkqbepkLM8x0TvQpzU8uUNv
	 MK+M8fU0JbqhGdATQk+M6j5eU4xyEH4C950C/6DYiNgHrqZo1lC9cZNKepW1IFg+mo
	 HuqUoifarabj8m0lxX1O4g58Fy+Kekvffg29Supw6tQx3Fkha4OKHo/CF49NRt8YYC
	 4HZvxbMPlLLGQR57gOY2BKMSUPnl6ygrxtUALEWmoNvbtXzXXHPC46bjg1PKBfqcjp
	 6r3PiFwC2vp8g==
Date: Mon, 17 Oct 2022 10:59:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Matt Ranostay <mranostay@ti.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j784s4 support
Message-ID: <Y0zoLyLII4U8PQYn@matsya>
References: <20221015201123.195477-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_222926_505384_BE3B3C4D 
X-CRM114-Status: UNSURE (   5.71  )
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

On 15-10-22, 13:11, Matt Ranostay wrote:
> WIZ modules for J784S4 platform have two input muxes which requires
> additional mux sections options.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
