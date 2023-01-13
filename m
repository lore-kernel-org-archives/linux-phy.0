Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42264C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 17:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KM7pa3kSmgEKVk3xV76uFP1jYuwPekXtsWLlh/YNoOU=; b=fxBIY+6Ib+2OtB
	oVDbBtallrAVcXA2Wlbsy+Bd3bnprsCETnkEmjE3fKkKeDlZw5WZ6RcoQ7gDO3snkHdwrtmOGadBw
	sMwrY3Lqibyg/fjMpdW5WoqpQzyLEdWzRvw+dccEXvtC5Tl7wClyEuWLVHTfPGux/Sz8xHEOKVc57
	T5QUloF6yTcg4OlodSShnhBhPY7EByov9oH0T+XrWLj5PWy6KWlSBK6KITXhAMC/Ja5eeMKwOBIEF
	hC63g+hdNfdsEdkkvhIntDLeFbyWi/Dm/NzzQy7kEmqjmEKGRCgHYjY/4yug4z8DGBd7Cp0gow6h+
	NYFNBst5FcrpQfsq72bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOHn-003uht-Ir; Fri, 13 Jan 2023 17:56:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOHc-003uef-Hg; Fri, 13 Jan 2023 17:56:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 309B7B821AB;
	Fri, 13 Jan 2023 17:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42882C433F2;
	Fri, 13 Jan 2023 17:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632561;
	bh=/GVEUUP4mneSnkfi1l5t3SvPf2grhVDkhm+ADUOZSSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VQeBHaXMo4Uk/lpbKxlqnYw4NsWX0pCjG1cQVCXsH4LnfMzh71XvmD4Gsjjwylsy/
	 LV41D+ZF3biawMYobpadCEwVC+32G+lrY+boQkcOoL6SBgNCkvPrzMxTZsIaPrsBVO
	 3JlEK+pTtiiQJs4rk5OjRVFoT+6+FvHEg4aOsks3NYcnEGF8zI10yxsyNqhhK6XKZ9
	 x64sSj2jfYkXSehP6/vrti0vFyG6TGiUYnaSyNPFUhu2CiJByHtAqknChCumZKv3Jj
	 apy1RxZ+PwYc5xdD2RL2kdWgQdIKcSqEiqrv0nvsNboJgSMdsbgRCwq4kw1uPxDzTK
	 bypQTdQL2kFuA==
Date: Fri, 13 Jan 2023 23:25:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: marex@denx.de, alexander.stein@ew.tq-group.com,
	lorenzo.pieralisi@arm.com, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Add one missing error return
Message-ID: <Y8GbLuI7pSar9P2y@matsya>
References: <1671433941-2037-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1671433941-2037-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_095604_749431_611D153A 
X-CRM114-Status: UNSURE (   6.94  )
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

On 19-12-22, 15:12, Richard Zhu wrote:
> There should be one error return when fail to fetch the perst reset.
> Add the missing error return.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
