Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4BFFEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHvscs05QLM52Eco9tqm3axemrlFer4G2GsHZTE0LmU=; b=RgxIcsq9T1dh9J
	0+GpYvZnACyBEWgaucmJj3OWF/hWIeg6ksEKUmlcRuA+1UwiNmbhqr6HtwrcqHZrefioPguNRiI0W
	t7KGJlbu0M8MXqaBU6WP4F3ZILzs7uGkRvXgLYMkKUWIN5BkLw2KAIdT8lLQQg6HALtBdNJWxunPc
	J/q0v78d0f6jNlUO4kSZ3YQdJ4HuQz5g68O3/qDcgCJNm8x96PORad8Jh2r1L/Ps8whEqCexXcv2p
	C+LR2paeL8A7htlgKnSesG/IG1pGzYJyqHCUtmhbKcSYaTwHb0OmLCtEOjFAqqp5BLTZiUdzZUKAF
	ZNTfNuncsFJJXG5bxQgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziR-00000008bos-1bai;
	Fri, 27 Feb 2026 15:25:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziQ-00000008boG-0sXC
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:25:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A08566012A;
	Fri, 27 Feb 2026 15:25:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5D9C116C6;
	Fri, 27 Feb 2026 15:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205917;
	bh=dFG1Tyo5XKFHJHXWsT6oDLXvdG7yCBBF4QY/Fd8fcU4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nLRnVD08UtxRWHq45KtyiGEAM1YtTHQE5apWcN/hwH872vXmV2P4Th/AjMP+5vXPf
	 10je6p6FF/OjNp5imi8j3R+9aWaDOrmWhp41E6Xc3erT9V3GGKZOsCT0qAjyQi9fMb
	 G5XVMAr4bH1pVtRJgSo0gdR1A5l38J4NgxLTH2M8p2ZQFv4laG4IfbsrCzSKAsFRgE
	 ihP4Ain86dfEKlJN/1GOmpwqCgostG8W9yaRT18nN5iNNwLWyUa22SU4ARtV83NkSA
	 Iv33frWQjVIRKhN6zbPQMxANjIyEj8fhYiy/59Sfd4FKm/Xhq9a5q7G8i22H21aFSA
	 E8l4hFPpQxSJw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Jyri Sarha <jsarha@ti.com>, 
 Vladimir Oltean <olteanv@gmail.com>, Felix Gu <ustc.gu@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
References: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
Subject: Re: [PATCH v2] phy: ti: j721e-wiz: Fix device node reference leak
 in wiz_get_lane_phy_types()
Message-Id: <177220591507.320398.1632943326172969051.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:55:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 12 Feb 2026 18:39:19 +0800, Felix Gu wrote:
> The serdes device_node is obtained using of_get_child_by_name(),
> which increments the reference count. However, it is never put,
> leading to a reference leak.
> 
> Add the missing of_node_put() calls to ensure the reference count is
> properly balanced.
> 
> [...]

Applied, thanks!

[1/1] phy: ti: j721e-wiz: Fix device node reference leak in wiz_get_lane_phy_types()
      commit: 584b457f4166293bdfa50f930228e9fb91a38392

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
