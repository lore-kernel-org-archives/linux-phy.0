Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 520C9C87FD1
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILSSO0SR87qq749MI3YWybWoBSJG+AaDkGnNAKhHZJQ=; b=OQNJ+PVvoDtCrb
	//mpruE/ve7CNJOdvZnvzUpkhdJq/fqBbyWnq13kSKfzHWwWM39qPgW2swS7KF0yDCsptsrLlzTMG
	gp9htL54OvxnfhF1jnmjRrY2crhJNOj2tz8pqiF4tPml3U6vjPWWeH2zd8s8wJw1cJt2I7BWsLIB4
	WjPfCxxSjQNs7MhMA55ch/8gQwSHhRnAoaIfpw9rnL+XO9TIvx+Jhwxk664aIVzEKM1jrBOLr715N
	OJGTlmGkECVIr+blkVuC9xzs/GLQba1WTrZtjYdlmuttXgD8EMR4QHAaHsxR477CvyV0AWSRgUHxi
	m6N5JVdtCE4QkgYL95fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lh-00000008CtF-0Gzv;
	Thu, 24 Jul 2025 18:34:13 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCS-3HyB
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 05E27A56488;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8421C4CEED;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=e/8NAyoj8ZEz00eT4Nb5mCe50iuncMcLu4YwCuEbzFI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rMqKTTSNvkEVQ+EBczP9tBTslJzBuQCdmLWg1QqnEUWrO2eqtmQEVgpC0RBbV5vUO
	 kNVY89ik7MaMAV8GQVlmurF5O8AHB1QN6OJa4dyO6kij44/uL9fVxHvkOzghtVqm/P
	 vDfISwPr+dr8Npg64zhX9d+9DgzWP8FtPBYv3irbBgPGd83vAOaNzRuBR2ig0M0/Vl
	 cSuY+23MMrty3auP6zAbp7flJgx2mFFZUJkvT7m/+RsIN1HqgREnRZ28/IQsLppOqn
	 nIzmnIQ9aqPXy7kHUrePQiOoguEeV2BQEKzZJ42VJ2FKaumLE+UG8Zlubsw2czyNd2
	 Z5l3FfUSxY+gw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004Aw-1Mbh;
	Thu, 24 Jul 2025 17:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 01/11] phy: broadcom: brcm-sata: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:13 +0200
Message-ID: <20250724154823.15998-2-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084845_930074_1C0CC1A0 
X-CRM114-Status: UNSURE (   6.63  )
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/broadcom/phy-brcm-sata.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
index d52dd065e862..fb69e21a0292 100644
--- a/drivers/phy/broadcom/phy-brcm-sata.c
+++ b/drivers/phy/broadcom/phy-brcm-sata.c
@@ -850,4 +850,3 @@ MODULE_DESCRIPTION("Broadcom SATA PHY driver");
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Marc Carino");
 MODULE_AUTHOR("Brian Norris");
-MODULE_ALIAS("platform:phy-brcm-sata");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
