Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 671F7C7EE23
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 11:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94xZID4PKbJD4rlm7YYLRQFk/QhBI3mrc+l9HFQBBeg=; b=4wm49+a2dZ2bBU
	sLX8uzKkl0x6Em5eQtLVY5Jw8uBVVJoNJUzbQ8t2cqG8XwVia6EkxFuIJok9qsL2OdmyL9IHPGQlS
	vWTgpynLh5iieZPB1jDZ/XaBqvHNcD63mFO8DYgBDIJrZIfFM1EjPZXZFECvOdSjqdkQ28G7MRfwg
	Fkkw+7pRdPLPHm1w8CG3oVQkrZcSXoE0SVGcxssrpJLNThy+Z5RlSa9r7FHXTNxoW3TXlgzos+pPE
	XV8Xg6OC2nCQWrmVUuXlXBs4yO+UHmRNm8PMUC36Es3aKzfN1tiOoXcqLh7hvG452hUz8oCDU/Fbq
	QuFoua+9Uwpp8J2uLs3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzB6-000Q2p-3C;
	Mon, 08 May 2023 11:37:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzB5-000Q2S-0C
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 11:37:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C9EC6332A;
	Mon,  8 May 2023 11:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 520C8C4339B;
	Mon,  8 May 2023 11:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683545834;
	bh=giVqtQlww6mIBA418bV1pWOnhuUCVDv+i6YbGkwJtIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TXiao1YhVL6eTh3MNaEKIUedEvyr3hatiBqBSKPEdYDvMUArWL2VdKM9wgqm3QZvz
	 gEbLHPxT9//yAy4gfWizRssAn716qqVvCD2xf135V5FjzbnQbKMgfeA4h1x5O+ujST
	 JsS9ptczlcAeH2dqW/IBgQCaYTqioQZC4ImuWr+nTIEx9XeB7ANfstiunpN2BdWKo0
	 rbE1KKK1BvSYdnrkgvBLM1a/Yf96FWaFpPX5TgQIZEVkTgOTlsf3ICd5ZoGSACT6QV
	 5nyqTkVxVAp+1D+N/7tFTrFGHNFfe5ktt3uqOGjG7F7/JYI52v+LtfQKlGxLh9EOVP
	 ZLcvnAFsQmN1Q==
Date: Mon, 8 May 2023 17:07:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, mparab@cadence.com,
	r-ravikumar@ti.com, s-vadapalli@ti.com
Subject: Re: [PATCH v3 0/4] PHY: Add multilink DP support in Cadence Torrent
 PHY driver
Message-ID: <ZFje5Qs2o8DgOzlR@matsya>
References: <20230418173157.25607-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230418173157.25607-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_043715_160168_9A929A9A 
X-CRM114-Status: UNSURE (   8.82  )
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

On 18-04-23, 19:31, Swapnil Jakhade wrote:
> This patch series adds support for multilink multiprotocol DisplayPort
> configurations in Cadence Torrent PHY driver. Following configurations
> are supported:
> (1) PCIe + DP
> (2) USB + DP

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
