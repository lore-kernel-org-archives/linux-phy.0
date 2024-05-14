Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3EA1C04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 14 May 2024 13:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4idPhwdhnieARhLI6y8sV3zAdKjRuaWOd/GqlNqVOEg=; b=IRPNIeFQyRrooW
	o3bHCKwoELiPUOqRqjDm/8vD0+U3R2POyGZSv1uBYInWlhKAjBcDw4o32WDX1PWvAWCRJs5wy9uUx
	CN06mo+Put4Bypp74TfubwCO8w6p4Ob5XGeKU8a5lJkGKFzXZ8nwVbDftw0CPqKI1NABubLSanY5v
	k+VZRI1791Fl5ag2lcALLoYMyy1JkhKozUuIEz5nLPKpF4heY8NswbDc/24Ayb801RWkmmUvEzKC7
	1ZNSIihFtuup+fThtseaTkc+gx5gQGP+0D93dVbF8TbP9/jO9p4yqVhJjGiH0Da+QcDbQ8jBotmfs
	SZL9WalatnmGUq5DvtSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6s97-0000000G1mX-0xhJ;
	Tue, 14 May 2024 13:24:45 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6s94-0000000G1k4-0MAT
	for linux-phy@lists.infradead.org;
	Tue, 14 May 2024 13:24:43 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1598B20008;
	Tue, 14 May 2024 13:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1715693078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lPmbOf+cV2TY5fzoxjAfYPDEJeui1lKONXKpY2Rs3z8=;
	b=AIz0sgADrQdNgNKuBuINGz6x07fq3e6RrHdrg/Vt8Zk+RBbubwBBGED2oGTOZvVdW3XYpm
	PjLPF4DOvISXC4PZHARVdNlOnPDFYsfbp9ulb66oepBs450rK63lqlv8sdtDJM2fyhHoA5
	aWKv3pL+58XSYaDOYiZ+VnmlVn4bOhAhzpVI9iHDe/gSrzSBkKG03TwB2tanPYClHdc8Ml
	q32GWDxLVGpxyv3MLjUk0DxluXdCpX9d0YBZ7qrdroFtJOF1FCPzokjGtb/qS+PpMV+uu7
	zEywU+9RyFgDmt5XhQi6xLy/RTskQAb9d1EIe8faA4TnU+f+M/M4WnlwKZYfUQ==
Message-ID: <2f39a26c-fd93-460c-876d-f1103b275b85@bootlin.com>
Date: Tue, 14 May 2024 15:24:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Add suspend and resume support for
 phy-cadence-torrent and phy-j721e-wiz
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com,
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_062442_301529_64EE8BBC 
X-CRM114-Status: GOOD (  11.24  )
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

On 4/16/24 14:52, Thomas Richard wrote:
> The patches of this series were originally in the series "Add suspend to
> ram support for PCIe on J7200" [1].
> They were moved in a separate series as requested by the PHY maintainer.
> This series adds suspend and resume support for the phy-cadence-torrent and
> phy-j721e-wiz drivers.
> 
> Compared to the PCIe series v4 [1], these PHY patches were rebased on Linux
> v6.9-rc1.
> The only change is for the patch "phy: cadence-torrent: extract calls to
> clk_get from cdns_torrent_clk". Now the cadence-torrent driver supports
> dual reference clock, so the patch was updated consequently.
> 
> [1] https://lore.kernel.org/all/20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com/

Hello,

Gentle ping.
Do you have any comments for this series ?

Best Regards,

Thomas

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
