Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E04AEB64DC
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 06:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9qv4cAdqixmG80wKaOCeIMfD17jsGXCl08zCQCKYEE=; b=aJGhmkQZlrAMG6
	w4YPYTENWPNma8+Ncu0tUvIsYoCUDKcReXXD6nrG76o1rL55rs1CFQtSlIM2GV9aZSjK5k/rczQsJ
	sR67WR7nzlzBpw9/C4mRQVMX6zyTI0aXY4/6FytppGkdqcsu5Ukq5WkpWIJYEnG8fPRFUyxCby47/
	9CNKOq480VqRKM2vYNt3gZrCpmD2Jvnkkk7HHT49A+GUSOjOsk+oe0Bn3H9Bm/jWynUSQayCFjvDg
	8S1P/OABidcMqSLYw0631D3cIs1Lp9d/FXokP6gcZ5CIWdeZT5SJwEJrM7uB0v9dFAwZIO45TIXKe
	QFgqfFFEAYvgwC5Oyeng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLHeB-0035jF-1r;
	Mon, 17 Jul 2023 06:23:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLHe7-0035gB-3A
	for linux-phy@lists.infradead.org;
	Mon, 17 Jul 2023 06:23:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5E92460F11;
	Mon, 17 Jul 2023 06:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF82DC433C7;
	Mon, 17 Jul 2023 06:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689575025;
	bh=nBThRVZ4Oky8fa1QW1VgwmNUavOj/4ZPF5yh4TAUhuI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O5OOkwfzWWtIBTdhwEPjapd6eDcgqOJj67AtlmVTorNdb3tRtfNLXeb0jkdixdxHw
	 2QhFP0WjpX3B5xi8z1DlH+jzf/I5Irujwn/LCMlaiaFiMjxWl46wx27+/oRWK5rIdD
	 TLRxygISdzaJAbGuB3ahar8D45H17DSfUqyNAe2TtvC5DnUwCzQfDhIhI02IV6QbK3
	 BzzeIvXYqe9whz3cNV/Fp5IJCTsQbDs3QqMYZp70qwycFENPxZRaQlRJnfh3e1Si3L
	 oumzwfh38Qh69ADXsYvJNhEy5f89UDVeFhRTjZteZxJQckG4iFGRdE2jk/Cm0vbGvj
	 gwL4ASVZtOvOA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Andrew Davis <afd@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230713200957.134480-1-afd@ti.com>
References: <20230713200957.134480-1-afd@ti.com>
Subject: Re: [PATCH v2] phy: ti: gmii-sel: Allow parent to not be syscon
 node
Message-Id: <168957502328.294691.10049399572182946150.b4-ty@kernel.org>
Date: Mon, 17 Jul 2023 11:53:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230716_232348_083918_B0D2FAD4 
X-CRM114-Status: UNSURE (   7.83  )
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


On Thu, 13 Jul 2023 15:09:57 -0500, Andrew Davis wrote:
> If the parent node is not a syscon type, then fallback and check
> if we can get a regmap from our own node. This no longer forces
> us to make the parent of this node a syscon node when that might
> not be appropriate.
> 
> 

Applied, thanks!

[1/1] phy: ti: gmii-sel: Allow parent to not be syscon node
      commit: 1fdfa7cccd35519d97a1f301b8143ea4196b2d16

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
