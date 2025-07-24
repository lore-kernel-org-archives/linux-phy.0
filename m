Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4E2C87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26Fz1P3LXFXgxiJomJA7Teo/wVAvU3P2rU15JCKCt58=; b=sb9Ywn3Rre+sPF
	Uyqa81WfrMQgpbiEkjtqoxX/WDrz4XTTxQveBSpfUI+odkxPGxwfiescA05sSzcQRsSwf/q7atm3Q
	+Isniig3IUl1eWgNmX5p2LoPsSxax7VErILWRnIw1Y4KMS89eomt5oxtMIvKREz3TJCthxSrzD2FD
	XbcMbVJkvJeZ7dBq6fcP2NrKWaNWZpRa/dVc71qtoZTfz0/GnB3dt8s3q8IiFINt2iW5jR7V4QfL8
	skwzcidWaBV4mpNSbvUvX90AowTUJbuoR/dYY9UBskeYUUqrwfX4KoRmsqFBieTZhJKVJy5h2v3Im
	+arwh9RM148r+fg0EY7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lf-00000008Cr3-1R95;
	Thu, 24 Jul 2025 18:34:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCR-3nxR
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F2E4F61418;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8508C4CEF1;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=xwKOnbt7YW5Ir1KO5Nxt6zrjbbfYH8EjC1wgMuKrnEo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GpRX8MitHGQbUMZk+cP0r0NT/wyzfWHHwiprW+wM0aMYwGLxeefP7P8CgT8zj0COp
	 p2k3PLQSVxbJA5AGaTLowmv/fn7Odea1YbZUrLb7t+HjcTGsQk7mF72rfKdcHiznXc
	 OZGOLTR3/u/qasipnYSILLULjVNqdtth0Xez9Y2Kaz1REHF8DzdGwiX9A5y1MhfXjj
	 6bPSSL7PBbd7HeFMP/UGcogYheWmOY67+R4Cz5q8TL1mqGWrAdgwUYWMSzNBKD9D0f
	 RdZVDuHmGt9q+4waedmON2GaYT/28e6qHj/pS8UmeTZ0FMpo7QTVNIAALH3bhXgY4e
	 YLIXP2egXX3Wg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004B0-20kB;
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
Subject: [PATCH 03/11] phy: cadence: Sierra: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:15 +0200
Message-ID: <20250724154823.15998-4-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 45a5c00843bf..424a9ebd0d39 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -2739,7 +2739,6 @@ static struct platform_driver cdns_sierra_driver = {
 };
 module_platform_driver(cdns_sierra_driver);
 
-MODULE_ALIAS("platform:cdns_sierra");
 MODULE_AUTHOR("Cadence Design Systems");
 MODULE_DESCRIPTION("CDNS sierra phy driver");
 MODULE_LICENSE("GPL v2");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
