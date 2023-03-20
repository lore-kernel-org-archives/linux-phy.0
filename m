Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD2F8C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 11:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfRZ4sbC1r4QmkRhGvHodLozuyFnOPaNGiU4CmJ7G1E=; b=m6/iVq0PmdveS7
	rCeghV2wIuqfq+DjKv1KrZQyLcAt8FHdndxJypCiNPW7yaFasTViQR6cH+5Jy+BKz6MHsK0tQc8K2
	ZwHDhEYMWWVVnKzlbJE5ZJ/uTMMZIqoK7yBd+tY82/zxyzgkQY3yxgjY8PJs4LXU9kiEb14/ZzG8l
	N9oXXIvQbaGuUBwcj8nQWM+0urezFwCj4HLnmkOesUjZ1uXf9yM2vQxNLaTfPo+TBQTe55iLH2yay
	osgDqkgVqmC6r+FXaAp+xwrPvesNT7UEMPWZJ88eAJeirhmXdBIfvpg9wvUoomZhwdUae+S2K9a6h
	kZTn91F/mOVrUaekRBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peDwg-008rRy-1d;
	Mon, 20 Mar 2023 11:44:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peDwe-008rRN-21
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 11:44:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4DD7CB80E5C;
	Mon, 20 Mar 2023 11:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63D81C433EF;
	Mon, 20 Mar 2023 11:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679312693;
	bh=CHx32plH/8ZPNfLvdZDyAv14pUpvBNpy/SnN9m3SZ+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rw71ikQwxwHPh0LUoWeifO2qPO1q6+4tHyXlbhKMCVwQ1SErE8AH0a7oCpjDOxBqv
	 Q8CkXbq/BrA3ndnYFBaFUAeAlmzQS9nebhCg4OTR8Pig67o05t6XoTM7okXaYedchs
	 uuNMWj1hchYJXWq7XHQvvtTxAnnpPyl1Ql6OYsklp2R8kblwWxgtr+1LijWAjB2iGv
	 7yptd1lcoX8JS3QCOgqc9fNFptwl1jmQl7U/vSHtt/lUNU43ocZTnteHeXWV50HgVv
	 lfQTW28s7jRsGvSNHQ5hSthrpNEIbzEM2zXwnaeL7sUps96boGwOhlpjY7skqa/Wrp
	 8SZlhIw+JrLQw==
Date: Mon, 20 Mar 2023 17:14:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: marvell: drop of_match_ptr for ID table
Message-ID: <ZBhHMNAuETEutCNY@matsya>
References: <20230312132611.352654-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312132611.352654-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_044456_811702_D9EBDA0E 
X-CRM114-Status: UNSURE (   8.46  )
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

On 12-03-23, 14:26, Krzysztof Kozlowski wrote:
> The driver can match only via the DT table so the table should be always
> used and the of_match_ptr does not have any sense (this also allows ACPI
> matching via PRP0001, even though it might not be relevant here).  This
> also fixes !CONFIG_OF error:

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
