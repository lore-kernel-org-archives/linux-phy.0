Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D341C3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUCvga3DWVWJHoWWhCGfwWzZsWPaqShzSMHin4ZLS8c=; b=pTe8LFXHi1e3AF
	ZxGFBSk0I9+5t2LrWXTszSUYn7/V50p/rl/HdpUcBOyiynXDSadWkKv2nUeJa8HXINhJ82MSwVKdh
	f7/29Vtt8CNidTPk1WDd7ta1jlK8EpqlHLML/hS8+u9WD67xdelNT8yIdXcfkatbK42FW0r8SRPQT
	ij0bnqnloJfsYxry3nA8um0ZLuMRuCx4okmZhoOREGA0iwTRvoCVydt9ztGqOVlkmFXkyzTP8Mj/+
	wGheg9FQb9qISCJYv6c/eLhyqmuJ45ucEu1ZgPI5v321i89NdOzLBLtg2h+Zlm6yUxwqjBoEL/pKB
	uOJYsni76MGOqNAxxFnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYR-0000000FI6S-0vks;
	Wed, 14 May 2025 13:53:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAL1-0000000Etzw-3jUB
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:31:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CFE5B6112E;
	Wed, 14 May 2025 11:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A74D9C4CEEB;
	Wed, 14 May 2025 11:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222310;
	bh=TjHZy0Qfxt/73KW8i7sJ4rh5wCGHa3DkSz4VAJQCJ6g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YB/8ByW00FbNFBueMKwnoMSXkVUdZ1lwH2w7mN/kBXoW4srl3mplbK9fPjF4daagl
	 qTzcE8/fBtF1q0vw7oaBLgfrJkiBuhzksA6Ck26mrxehzkd9rulxq8RBYQc8ITaPlO
	 OH2s5Xr1kQGhCgTDAk8FNxMqOidG+Pf0bqyZ5yrWynPoxPCFEERHNBcKprKiJktQR1
	 5nLp/HX4ruV1ddcDZv7V7XhxVWrxoBnN/b2RRwfDAKhgaY+gIC4V16DL/K8kTMQzPH
	 LULIOM1SZ1E8RUvbSrSOJFWoo/i/ploc3RUQC2oKSpbn+efWwOrA4cQxBYIitt8RLI
	 l4gMkSqLvlP0A==
From: Vinod Koul <vkoul@kernel.org>
To: Wayne Chang <waynec@nvidia.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <aAjmR6To4EnvRl4G@stanley.mountain>
References: <aAjmR6To4EnvRl4G@stanley.mountain>
Subject: Re: [PATCH next] phy: tegra: xusb: remove a stray unlock
Message-Id: <174722230834.74407.625250786881304963.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:48 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Wed, 23 Apr 2025 16:08:23 +0300, Dan Carpenter wrote:
> We used to take a lock in tegra186_utmi_bias_pad_power_on() but now we
> have moved the lock into the caller.  Unfortunately, when we moved the
> lock this unlock was left behind and it results in a double unlock.
> Delete it now.
> 
> 

Applied, thanks!

[1/1] phy: tegra: xusb: remove a stray unlock
      commit: 83c178470e0bf690d34c8c08440f2421b82e881c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
