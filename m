Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25DC8E77180
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGuwsA4ZM2bagXvrMUSnvyw9LLShWdk+xi1pkJcqX+A=; b=G9z9Vw5Ay3yg42
	0YUU9CSJm1VpkND5YYJknppkI/PyVjCTNA2DWZuz36S5LwIyByjXfZqO6qS9vh2KcPBqqdiFZeNz4
	iWaBD9xXhpSY23YmgvbpID+GWgCvqBmKpjh5eTeVqfuneFa9ZOc1PuDFODtDZAnXLUEKIETyYFAfu
	kKPmQ/KBqBGa6fSQxls52ByX6tPdfWbDfc9714hKi2+2WmxUwls/aU0dyIZxQFxkUWrGQ3xlCeaE6
	bwrzIBgblfjaTzGr/9DjAIwAl5aQuJJi5ZEuJIDKrtyyB6c6TfqgSGohaQSvYYxZ7rwr1WpTSlAJn
	wHLBfLpGxE9HWLmceznw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKhB-00000005c2o-3ZlO;
	Sun, 08 Dec 2024 17:03:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgJ-00000005bmK-0VxC
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:02:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 059E55C4A98;
	Sun,  8 Dec 2024 17:02:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26F94C4CEE0;
	Sun,  8 Dec 2024 17:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677374;
	bh=ZWho2upAeW4Yl/HHcd5o6hWdyOJYuXvjof6/QTXHk0Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TgQLHRs1Gkh5ZLROsIaFLz0lZR1WnAo4yZno4+MQco4/lzZo91T4ew3QHnBRZUSld
	 +KucDO8oxfNzG/9wZrLbBmB91XmPKoKjbgHE5JVtB3qkhumAtGSXl9aZnO1vNLo6ho
	 JcIbawMItxPtel83L7ZYOgS1AceAIm73NsA2UO7aKRxBK++OHhZpx39f4j4mNHuPor
	 enelig0xWzssIm0yZfzna7/djerKxe47eDb+rCgwBFb0n4Piu5nMA8jADsdBXGaj/B
	 TFkh7xIq47MGxh/3QQJiDMiQCN3nys/5h0pKDFWOFmnZWxIYCJJFSsiarJhwZNMvbn
	 lY8Y37bFHRGng==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vidya Sagar <vidyas@nvidia.com>, 
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
In-Reply-To: <20241201002519.3468-1-lars@metafoo.de>
References: <20241201002519.3468-1-lars@metafoo.de>
Subject: Re: [PATCH] phy: tegra194: p2u: Allow to enable driver on Tegra234
Message-Id: <173367737174.1042266.7031082302793933090.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:32:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090255_203148_6B0EC160 
X-CRM114-Status: UNSURE (   7.06  )
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


On Sat, 30 Nov 2024 16:25:19 -0800, Lars-Peter Clausen wrote:
> Commit de6026682569 ("phy: tegra: Add PCIe PIPE2UPHY support for Tegra234")
> add support for Tegra234 to the tegra194-p2u PHY driver. But the driver is
> currently not selectable when Tegra234 SoC support is enabled.
> 
> Update the Kconfig entry to allow the driver to be built when support the
> Tegra234 SoC is enabled.
> 
> [...]

Applied, thanks!

[1/1] phy: tegra194: p2u: Allow to enable driver on Tegra234
      commit: 3d811a4f38c773779748ed52f49cb7a609428b61

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
