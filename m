Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60EDC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6863sWE6gbRQtRYLOFUuw7vzPIX9/FM1qevs8dPeR8=; b=CWi8U2S930eJj0
	1Kjdj8+0FjMZiGfr3dQL2YNGfJpdLoR9/tANY1QmK6iEPTFW6kX8Tv0FjKdSOxhCxvNKMlNLrKA7k
	S1+oG0POJCmJH/auwvdLur6o7xA9Kt4XrhLc2Wvhi47LZ/taPGJNGFG31e5/iR81TYh6kZ5kZGtoM
	vZlG7yH2I4AosW5M05jc+ev+t9Gk759Ah3tCZl3otgo2lkq/kucLkiPDRDhw6wE6oRwSQUZqksx7l
	hcP3yK01vfLqFP/GfyH6+txbuok5dOVltjeh3a9RnYserAQbIUP5xYkm8wtilsDRFwDd+gudioP75
	h7Jo5e5FjHF/PMHVH1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxQv-00EPtU-A4; Thu, 27 Jan 2022 05:34:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxQs-00EPsx-Q3
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:34:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 74403B8210C;
 Thu, 27 Jan 2022 05:34:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5910FC340E4;
 Thu, 27 Jan 2022 05:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261692;
 bh=5S9wWt15TRVrJ6Yz4hj/m81O+1PNXTybGgjTNNXdhLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jc3bvfoBF2XboC0ign5S4JZO6wKpsCTDkYPjC4+VK+aMfXtA/HizbWmoh5/ca26kA
 L6KkgQ4ZyR5oWOMQiwjoslod79EF+928mYSjO1jVF3Nb0JB8/zNvgo9WbZSXjjR1B4
 mWmjeB8vJttQC4TQ2yJGdjijyMD3YtXvOuGu6siaIDRL9prjSXiNJqIUvUsnMy2OkR
 DZ8o/VfBDZB73m9u/nXihQZeVngJc3pAFUHtJJngtopQz4y51fGOskhQu/hVAAuvag
 LK4YXQ5ieOj6pMkRX07yWfy9ayJsoDoNG8OapcmoyG9PKnd6MNtjsTij5dvPbTzZ6u
 KJfS+ZhaaNIGw==
Date: Thu, 27 Jan 2022 11:04:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Amelie Delaunay <amelie.delaunay@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: stm32: fix a refcount leak in
 stm32_usbphyc_pll_enable()
Message-ID: <YfIu+PYohxp6+VYe@matsya>
References: <20220112111724.GB3019@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220112111724.GB3019@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_213455_012882_B1709ECB 
X-CRM114-Status: UNSURE (   6.06  )
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

On 12-01-22, 14:17, Dan Carpenter wrote:
> This error path needs to decrement "usbphyc->n_pll_cons.counter" before
> returning.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
