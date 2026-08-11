Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29008C5B572
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gbonjeNlamvt07kWprUG5bK8zoRZJrsastTxr2nz46A=; b=mHhCXTqPaISQqI
	DQrH/7kGwbkUHsoJKd237ebfuMOuSmPrhBytwYkRunvTps4sd3nvASQfeNDSvv6T/Un6QNX4F6z9F
	3Y89RMkhaWK3Ey2UMVt/sN/8V+FXJlWKUv1VQjYq4jSaEss+k6i6BF/YGfi0960ZRji96KRzHK8WK
	9hq2kwQn622CRvnfp3BIYp7afORvzciODoSKJhbqOdTzVZu1DzZ8z5rw/gFDf+GMdOWcc+y//3yI9
	cxA2WSiElgdsNHe3Uus/YPsOqPtQzvh8y5jmX8rGS5EaRQZWw7fnutgdz9z+yCJkEeh9v/9waUNxg
	f3U61r5hKgk0DQH7cjXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtnYm-0000000EEHh-2r1l;
	Tue, 11 Aug 2026 14:34:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtnYk-0000000EEH8-21oi
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 14:34:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B00A8600AF;
	Tue, 11 Aug 2026 14:34:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4538F1F000E9;
	Tue, 11 Aug 2026 14:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786458869;
	bh=BR+ccRMo4IqQ1ujxoIWSTdW1CLmkDa/5IOSMvIaZjp4=;
	h=From:To:Cc:Subject:Date;
	b=VUR+mhKvr39ZMvnBdLg5iMX5eUaUN7GqkyBG5kVWihe5auyUhw+vRrhAZIoYCz9+S
	 xCdKDOO4tapr2ocrCHPb+zlEwcPdoHcXpN1CCbtugDlLBDucTG2EajJ4fjngYmRvtL
	 F/mwPZC5GWvnd6McGorC1z8ITRz4RzH9sUyz6VKSR/16aMKgJxJy+IbDXB3tKC8OLX
	 eW4y/9WiyIl59064Xdl8z03Klpb7U82zmNDtMJSFGPTErvGzjmhyaSmYjBQ5BfgrH6
	 hBuwBxbKch6pczcaH20BfleUJoSUzBHCdjDo8ef2PmIBbTSXAkZpw4wFShlePjaih3
	 YCnr6s/2QFb5w==
From: Manivannan Sadhasivam <mani@kernel.org>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH] MAINTAINERS: Add Manivannan Sadhasivam as the Reviewer for Generic PHY Framework
Date: Tue, 11 Aug 2026 16:34:17 +0200
Message-ID: <20260811143417.336664-1-mani@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

I'm volunteering to review the PHY patches. Hence, add myself as the
Reviewer.

Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 15011f5752a9..ef8b09df37db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10920,6 +10920,7 @@ F:	include/uapi/asm-generic/
 GENERIC PHY FRAMEWORK
 M:	Vinod Koul <vkoul@kernel.org>
 R:	Neil Armstrong <neil.armstrong@linaro.org>
+R:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-phy@lists.infradead.org
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-phy/list/
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
