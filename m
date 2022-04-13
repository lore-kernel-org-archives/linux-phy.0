Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CDD8C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 10:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7NvDG/3aT4M6MBTATBeX7mWqCu8Q7jl0U//h7uNqCE=; b=uGjL00BlkqHJrK
	QLILQh/S/3a5oxfIYtGUGXdZXcOmbKRw9VpTvsJeEP1G46EADCQ8rlUkalY/Uem7OKYzPShXVZGgj
	YBaiO0C3G1OdDbjnxe71WJFbplT5iH5wos/NsxcBk2Xpy0pY2tEUd6Yi14hxW7QkpDXmTK11pey74
	mrOYOQXmrYAg9qdF8fp6DxD35I1A4PJj4UZw+MEC4neR92f4DH1X1i8GCcUPxD/H5dnIc74vJUMTw
	tU7MnN5G/lFbDLH+xL9zYAEXzn6n6mf2M542HwBMk0WppVxH6Zx7MpwGFE6wX/usVCFrXsMxBBnK4
	UrWg5LiPIEV4DFQGUUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neaea-000hU2-95; Wed, 13 Apr 2022 10:55:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neaeW-000hS4-Os
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 10:55:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6492EB821DB;
 Wed, 13 Apr 2022 10:55:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90F3AC385A4;
 Wed, 13 Apr 2022 10:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649847310;
 bh=dFm1wyKu10QMvm3Wr7qBRB92zACCEpo2u5gPlOnXCdk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iNqr58yFVPSQ71lRauNoO5lETAbXYUa8GTDtcg2dYHmFV2g2Gf+YoJJMKs1fDCWT8
 urxzGuXb4Mmxvt6A7+yClA1vaxCEqQM+Tp8EetPK/DxXCtaAJDQp5sQ+WizWcmrJZa
 kpDelMAHTwEUdPBYpbH6QXHR655FaOgz28xtUpLUcJxUgPdSLw0xyRNlJENWulZlvu
 7irtPP2RQbClP7U6PER1IgMLMdbQYawQ9MzDh8p7871Tbut1113h4HaIaKFhAw2BK6
 4zHfyacF2duQFbikFycXp3lVu5p8G/8XhYwbORwDEc+geo4GKU1kL65AkmRdMNTKvq
 TbLttlnlCuzww==
Date: Wed, 13 Apr 2022 16:25:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Randy Dunlap <rdunlap@infradead.org>, Roger Quadros <rogerq@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: ti: Add missing pm_runtime_disable() in
 serdes_am654_probe
Message-ID: <YlasCq2IKMfcafvx@matsya>
References: <20220105090225.20507-1-linmq006@gmail.com>
 <20220301025853.1911-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301025853.1911-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_035512_995689_A756C30F 
X-CRM114-Status: UNSURE (   7.48  )
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

On 01-03-22, 02:58, Miaoqian Lin wrote:
> The pm_runtime_enable() will increase power disable depth.
> If the probe fails, we should use pm_runtime_disable() to balance
> pm_runtime_enable().
> Add missing pm_runtime_disable() for serdes_am654_probe().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
