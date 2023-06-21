Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915B2EB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y49iZripIK6UVy5FH0cWVvQJLZEvZWfrwNLzFFmW6/U=; b=BIcKW4/115V52K
	EK3VS51QZlM4bug8yHxN8Ta3+4ttgpnipComRrrYF6P2cU/FrB4KvNYnD5qhKNGJN+upxAZATbfAn
	lRz3mqoozSSzeG7c54xuMaUTq4UHVey9N3JZZ8aS9JbBUd4D1JUlKSuzNXPAgZ8KhoxxsyP/kvXcI
	UvQnSjsEpGxC7Z06hPqWGwYu2oMRBxNLqCyuEY6O4xrkZ3lBhUoQodLg3A5SqUlYf+iE01eKs6Hj1
	bih0Cerk0lBbL8q2L6NJGVlWg3M1PR7As/x2J1Mk4KpQ6ftSVm7Mwkl7AJkKTeUBnGquaVAJXI9s7
	zHE66HIv9uZaPXA3St/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1ls-00FFBZ-0U;
	Wed, 21 Jun 2023 17:37:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1lp-00FFAF-0w
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 17:37:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 87D6961645;
	Wed, 21 Jun 2023 17:37:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F7EFC433C0;
	Wed, 21 Jun 2023 17:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687369048;
	bh=Ofow7TPhTby78fiLDgvFRr9YEMU8BzTuo+3QlFVgybo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lcSfXMrPdldMiaJQp2qajwo1CJIGRK0b0TT5+todi+ByYMIHp/+iz46WCmF/qHTWI
	 xeLA/2Be/C0VpWNQC03aaSP66+R7uN1lEd70E0FgyZiC66F9S1Vnfv09rXlbgxTKLU
	 rRuw3+V6HSOVfOwvv1mjk0gkcp6X3E4945HBE+GE7Wt/yaSOjea0qmJJq3XhMl2pNE
	 9p4CDIaWAmGzfK+z6ChGnkxI23mNaBJyDTgF4Pe50tJ1KHE52Og6CTMW9RyFzisQEW
	 eqbk6CdnsYIZTiPhUG9ZQJSZNyLCJxryfzW9Dx0V9SrvscZ13ATLxdTkDC1NCnnG9X
	 vos3EDlyhA3/Q==
Date: Wed, 21 Jun 2023 23:07:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com,
	jonathanh@nvidia.com, nkristam@nvidia.com,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: check return value of devm_kzalloc()
Message-ID: <ZJM1U9RPV4DUPgWp@matsya>
References: <20230531073950.145339-1-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230531073950.145339-1-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_103729_366617_A1FAD13D 
X-CRM114-Status: UNSURE (   6.25  )
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

On 31-05-23, 10:39, Claudiu Beznea wrote:
> devm_kzalloc() returns a pointer to dynamically allocated memory.
> Pointer could be NULL in case allocation fails. Check pointer validity.
> Identified with coccinelle (kmerr.cocci script).

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
