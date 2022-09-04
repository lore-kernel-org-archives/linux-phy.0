Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2DFC6FA82
	for <linux-phy@archiver.kernel.org>; Sun,  4 Sep 2022 15:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jC0uZ8OVJJ8oiASTvbUokT8k0fGTB6ELqPtjmYn4uo=; b=LGFUY6Pdr5ik7F
	wQ/6zOfJt1Xh/GcOiJXxz6bnpxBmNFkw9ayHL7BXipX2vy4UUKfrZSBMLXGCegCSIpo1uWkLXHJWe
	KL9L00gQgop0Wykm3MArlsme/grETaMyw5wD4GDmQs+GBOp8I/5BR99xrRdOeiiQ+BIJu2rMlFuDN
	HYhwGyYCdVC6x7F6R8uxsU/M4PRnkRGaCvYWHxYPY/B7XLaKw1l8jZqNko+gWB6iyzMb8cUxuuVky
	zI1P15UJZeKA1U1wTRH1ySe29cLNM7e1evNvLPm5oDVfcFC2Sogys18Tw1axOhyBfx8KMpT34umIX
	0btGfzMWQiS3EJFZB1sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrCr-007Me9-QO; Sun, 04 Sep 2022 15:06:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrCe-007MMK-6y; Sun, 04 Sep 2022 15:06:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4BD9460ED8;
	Sun,  4 Sep 2022 15:06:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3F67C433D6;
	Sun,  4 Sep 2022 15:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662303985;
	bh=pwPJZ7tg9YJru8UeTZSAissvCywCwuoVOcaEMeA0UGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WWTl1mnZduqQDq1DBgc4t+n3yGVFIgaqaqGBxdJpVchN3Le5ara2QcLnRZkp+ITnZ
	 fo0JoipBDM9ebgAByW5yFtVkezqL4T1rcgnwrs4I+4+YgBb3KS9JYS0aeMAr9oJgff
	 S7qQnkMLwjVmJxfhSJFuvZEjXkVmcC/SeDcNJS6oZlgHSPONtS8bFDNa2G+OICteN2
	 QDLDjPg2UsPsGJkvHKggNJnkGqE0X3ZzxyOhty/EvdNcH0ZoRSOR0dalDb8uy1hy1A
	 z7P8OervDN4zqxs02SnnOKUpExoEQk65SwKZYMzU9cwoDAFNyXFRo3kzvAS1n/7uUz
	 g8V2P52ExHtpQ==
Date: Sun, 4 Sep 2022 20:36:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] phy: rockchip: Support PCIe v3
Message-ID: <YxS+7B0d+TqEJH3v@matsya>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-4-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220825193836.54262-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_080628_328429_28321484 
X-CRM114-Status: GOOD (  12.09  )
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

On 25-08-22, 21:38, Frank Wunderlich wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> RK3568 supports PCIe v3 using not Combphy like PCIe v2 on rk3566.
> It use a dedicated PCIe-phy. Add support for this.
> 
> Initial support by Shawn Lin, modifications by Peter Geis and Frank
> Wunderlich.
> 
> Add data-lanes property for splitting pcie-lanes across controllers.
> 
> The data-lanes is an array where x=0 means lane is disabled and  x > 0
> means controller x is assigned to phy lane.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
