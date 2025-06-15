Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4531FC61CE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 16:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/Ic7vDudu0BIJBli8+Kfua4fIuEwv9YTK0ree/vs7Q=; b=UDoVdtC50phi09
	AW5EMu8hIQ5a9a2MylYEnrZr5C0M5EZF9NGXNcxrfS5Zcp3SfjKRLTEkmhqEmC+8n22f4BfTAah1C
	B1cqPmewsygojDnGxRWItYs6zWSE7KYjSpjfNtOlP60J5M+SM1LSwM06AIlPyjwW/PPU5NoExIuEn
	Uy6HH/ZZ9eqjX7kg4kpykMvuatLl9O7vIK53fJgFe6D+xecxXsk0NyL6Sea+YD0bei3T6EDAEfyTb
	os1Fw/omepU1IY5gaHNalGQMSb/f2gZcQSzB6sGmHhVc2Q2Ryzn35IcmkIFWKx4V8RU9GRwV+y7Sf
	Atod541LklvLG1XvnkmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqac-00000002fn1-063g;
	Sun, 15 Jun 2025 16:52:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqaZ-00000002fm9-2zOr
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 913EA5C42C0;
	Sun, 15 Jun 2025 16:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD49C4CEEF;
	Sun, 15 Jun 2025 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006329;
	bh=l/fGt3Zz/3ZUxPCveJXSuMJcWc2tzptxBmmNZmFRBqk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YP5jYylcUkG7aEJrMeOvZkqIxxQElInVpAhhRQbwPmlIjZK40iv6coxEFYMM4lJoM
	 zX4iH1OzbgLpKp3LdR0vp1ppFKmd23IGLbvNYRDKUMJImYviyE04t6lvETQoxnk4fS
	 5Fd+kARy2kvbrEkehDI8Zc6HKu8cO82fNLHlsVbVYCPsI9x+/z7qrigBEJohE907NY
	 FqPKRlde3tr3Swxr0vU/H6WNiVf+9whfA5ZhUs9CthKxlIYXEzzDUjbnEM9MzImI23
	 B369fdHtqwOpPWmEcf3mFk72XDHisdgVsmHsVko9FPR/SbvLPu+n+DOAEB/lbxV1gm
	 5HDR3m2I9DrmA==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com, 
 jonathanh@nvidia.com, Wayne Chang <waynec@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20250502092606.2275682-1-waynec@nvidia.com>
References: <20250502092606.2275682-1-waynec@nvidia.com>
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Fix unbalanced regulator disable
 in UTMI PHY mode
Message-Id: <175000632608.1180789.15034099318224353632.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_095211_800834_B001C61D 
X-CRM114-Status: UNSURE (   7.61  )
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


On Fri, 02 May 2025 17:26:06 +0800, Wayne Chang wrote:
> When transitioning from USB_ROLE_DEVICE to USB_ROLE_NONE, the code
> assumed that the regulator should be disabled. However, if the regulator
> is marked as always-on, regulator_is_enabled() continues to return true,
> leading to an incorrect attempt to disable a regulator which is not
> enabled.
> 
> This can result in warnings such as:
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: Fix unbalanced regulator disable in UTMI PHY mode
      commit: cefc1caee9dd06c69e2d807edc5949b329f52b22

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
