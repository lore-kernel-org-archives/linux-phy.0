Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FB6FC87FD3
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XE5e4Cj8BztQiJEkQXewYmgbZRyoWK/iFltIuzGBURg=; b=sZnCSuNEcvNnCt
	yLCfvYjFtftCTEob7S4+Kob7po5b652GQMzkjk/rCbIuVo8GjKrJn6hXx85M0Wyb7t+1bTGkvQ11k
	Qv/YB4ObtpHJSzWO8H3KImcmBVYxON9vg8QitdUStCTl7k4ppYyw5Tic3FT+6gmrH/9X9bz6v9Fyn
	xrwdC07lPqhm8d0A3q3ZWal5fs1pP0Ex2lKflcUwKv8BK/8Crz6dExjcK3nhdFYSy0siCkdkHyIgz
	GoNqzjCDFN0vfnz7dOvfKZfsrG5QHqI8VkGBWcA4hkjJtFjghz28EQmtr5q1HhOPX9SVVutPjf8yN
	Lg9Bf+YUUhg40Vae/wdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lh-00000008CuZ-3rl1;
	Thu, 24 Jul 2025 18:34:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBa-00000007vCh-0VW8
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7683A4677B;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57DEDC4CEFC;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372125;
	bh=I2v3Lw2r5yEjMULVac1C6vqKyPU+wNFZIWjH5WpdpCI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sb4Z/RDZ8VF6gbEmvAxAnPMC9W8guU1u+EzmO/+2JInBo1wnyaMoUbl1TgdRFMuoo
	 kB5rFJ9O2c7ZeSSO5Dj5TYOtGNPXzNdAzZ2XcOPJJ0pd5UxWaUhruip+kbvU7/qWMZ
	 P9qqsmYDZu8uaRtnpunjIh0xfEor+/scTO3P+27Zza/7xwnMlse9fpcie7beqtSlqj
	 MXm9bEpG+WJtDneS4qB5nnzlPyKskobP7xF5XbXRTeVQ50T+2uaYomnGqKolVy01ls
	 MGsFU2w6A4PJ6b8+CwXdK8CJOUkrnitViiIIF/1S1hDo+wkBxBYAvdiQJCNt1nCpsL
	 kooLEZZxbwetQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBV-000000004BO-0gnH;
	Thu, 24 Jul 2025 17:48:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 11/11] phy: ti: omap-control: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:23 +0200
Message-ID: <20250724154823.15998-12-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084846_222027_A18F3221 
X-CRM114-Status: UNSURE (   8.44  )
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

Since commit 4fd06af96b93 ("usb: phy: omap-control: Get rid of platform
data") the driver only supports OF probe so drop the unused platform
module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-omap-control.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-omap-control.c b/drivers/phy/ti/phy-omap-control.c
index 2fdb8f4241c7..4968434312f8 100644
--- a/drivers/phy/ti/phy-omap-control.c
+++ b/drivers/phy/ti/phy-omap-control.c
@@ -334,7 +334,6 @@ static void __exit omap_control_phy_exit(void)
 }
 module_exit(omap_control_phy_exit);
 
-MODULE_ALIAS("platform:omap_control_phy");
 MODULE_AUTHOR("Texas Instruments Inc.");
 MODULE_DESCRIPTION("OMAP Control Module PHY Driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
