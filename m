Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FB5DC25B75
	for <linux-phy@archiver.kernel.org>; Fri, 31 May 2024 16:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vpprnqe0crzrF4NzYQnukstPhLSqGgmWK7k3rIHlj5g=; b=gUn2dQbcKGDGNP
	mo3kLV007KxbHLczz3S2Xz2UL35JYpY7AzrRGcOH7v9IpNJegmQNTEhBvAPj+6E97zxM247yoMeOX
	cUnaSxbjhMWWNFfKG32CEp8yy1c5/0eJU8yasPnARYfTxYtFG169N5AIB97KCvYm9hIJEqyneK+Hb
	63MoXynxpXVk4eM9gBhrVT0OYECcr/hhG/qNRm8TzEOabjOXI0lskQFMp/ztfVLVhseWiI5FYnfo7
	zHJ61E16Oiu8AxgOELcDYKq8lTmYG7UmbqLxYQAPbGj2QFWc6cLAuFynavaHVTv16vQiKvh+vAVjE
	5VF0XoTkf10TuWnBaAZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD5R8-0000000AuSJ-0Z0M;
	Fri, 31 May 2024 16:49:02 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD5R4-0000000AuOz-137Y
	for linux-phy@lists.infradead.org;
	Fri, 31 May 2024 16:49:00 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 28E6CC0004;
	Fri, 31 May 2024 16:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1717174132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v/yv4AtesztMvKs3Dy53Bfb+WU3NfhkM1gOgzOFjdC8=;
	b=eVhFnIzZA5uZr4P0MdG5r9nKiFIhTwGlMX4q07Vog/BqFN091gujcv5FRN1W/k7IxXRrzD
	NWceODQ4gDJql5tUanC459FNm/4gtlkHnWc+GXt5SsQQSgrDcUob2AeTLH5w230x3S/Irg
	b004+S2UD5MCIjrvTOYxkYvRghqO2fjWPz8Dk7nUw+f4LwSWPniMu49ebqmf1CiOp9chrb
	wI1/NCdIsu2aQIXcar/+hgtFXzfVsVFg7erMmPsmiSsb2O5UecOw9K6Kbyep7xp9dq36+I
	X2N1wC0YOE1viVDBVRCZmZhNzdioQ7UC3t6izv8nfcx3e5TcGdgUv3vS4dcarQ==
Message-ID: <13f4bbb5-272c-4f3a-9c75-90a8b3898cad@bootlin.com>
Date: Fri, 31 May 2024 18:48:48 +0200
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
X-CRM114-CacheID: sfid-20240531_094858_453787_691DE9EC 
X-CRM114-Status: GOOD (  10.24  )
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
No merge conflict with 6.10-rc1.

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
