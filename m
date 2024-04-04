Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A7DDCD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 19:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rD9jovA/u18Z6KUNslh8nfrK15FwY7F7yrq1OAprZDc=; b=EidXyOtzE61Kh4
	ZrdeCAuIYbk98Luq/EInHjrNTwQHWz/R6Tz7oPOoiViBXobj+d5owwEsAUUlR6g8L8UTnf4sI8lc5
	CLvHiFv5iZKJRl075b+DOqQJxoTo0JvMX3HSQoCcr5ZqlM2gwg2a4JG0qQFkyMPxy5ZIueOAUSHjj
	4Glo07c95UqNwLOttt2Z/OHnFPcN0nJyU4XaS72GWJC4efEyPW+9jGVqj/ZLi8FqmoclgFEmv2emJ
	vASNcDSobJ37mpeFJv5zX9Lue2DnIjHAqOTTiL43baN3k30dvIEBsQMLO5K0WkJyG9JzJJt2F5T2A
	/0TlPJQ6k+rc6v/+vG1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSjj-0000000436r-2yrb;
	Thu, 04 Apr 2024 19:26:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSjh-0000000434w-1TYR;
	Thu, 04 Apr 2024 19:26:58 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rsSjZ-0005PO-AW; Thu, 04 Apr 2024 21:26:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 2/3] phy: rockchip-snps-pcie3: fix clearing PHP_GRF_PCIESEL_CON
 bits
Date: Thu, 04 Apr 2024 21:26:48 +0200
Message-ID: <5232346.31r3eYUQgx@phil>
In-Reply-To: <20240404-rk3588-pcie-bifurcation-fixes-v1-2-9907136eeafd@kernel.org>
References: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
 <20240404-rk3588-pcie-bifurcation-fixes-v1-2-9907136eeafd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_122657_421145_80C0C298 
X-CRM114-Status: UNSURE (   9.95  )
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

Am Donnerstag, 4. April 2024, 19:11:27 CEST schrieb Sebastian Reichel:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Currently the PCIe v3 PHY driver only sets the pcie1ln_sel bits, but
> does not clear them because of an incorrect write mask. This fixes up
> the issue by using a newly introduced constant for the write mask.
> 
> While at it also introduces a proper GENMASK based constant for the
> PCIE30_PHY_MODE.
> 
> Fixes: 2e9bffc4f713 ("phy: rockchip: Support PCIe v3")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

after checking with the soc manual

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
