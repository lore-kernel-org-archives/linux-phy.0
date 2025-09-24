Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B14E6CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 13:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HsGq/4pIHSBzwWa6Gj7isQwp0Vlyg32CQvsV4l3Swv8=; b=nbALRPpdEsYecz
	5z7h2heaBzV9jr8Yymy5sgcaw/U6bHQUSLvQXdoM3jfK4fnSgJZkGgtLkRxwBKoKWw+wPy1s8GRDW
	+qruqaRy4hlwXbSSLG1MgCJDmmkGYls7N/Ps7IC1a8MT5vlE2nwlbOa7g4CUz4izW1qU9yDG7ClCb
	Uf4oCXm6wQ5+ij0OLuJI3OKs8Algrb1INikggecESNg1jW8A0dsERAPDlPX15jXDtxO5KOMSGuBEP
	RyIwJ44eqVQhA4IRhWNN27kmZZD9UdzicDCIXcfwruk3UyX/06joPpPnZyEL0ktpfWzkIZ5pLjeLa
	Eag7Z/ptCNOj+u+XnQTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PQG-00000000AEA-1keB;
	Wed, 24 Sep 2025 13:20:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1PQE-00000000ADe-2gpS
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 13:20:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1266C60139;
	Wed, 24 Sep 2025 13:20:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E48C4CEF7;
	Wed, 24 Sep 2025 13:20:36 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: renesas: Remove unneeded semicolons
Date: Wed, 24 Sep 2025 15:20:31 +0200
Message-ID: <a8807dafa87fcc3abcafd34a1895e4c722c39793.1758719985.git.geert+renesas@glider.be>
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

Semicolons after end of function braces are not needed, remove them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/renesas/phy-rcar-gen3-pcie.c | 2 +-
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 drivers/phy/renesas/phy-rcar-gen3-usb3.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-pcie.c b/drivers/phy/renesas/phy-rcar-gen3-pcie.c
index feca4cb2ff4d1e9e..c0e5a4ac82de2cfb 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-pcie.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-pcie.c
@@ -128,7 +128,7 @@ static int rcar_gen3_phy_pcie_probe(struct platform_device *pdev)
 static void rcar_gen3_phy_pcie_remove(struct platform_device *pdev)
 {
 	pm_runtime_disable(&pdev->dev);
-};
+}
 
 static struct platform_driver rcar_gen3_phy_driver = {
 	.driver = {
diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 3f6b480e10922950..6671616b26cec7c2 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -926,7 +926,7 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 
 	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
-};
+}
 
 static struct platform_driver rcar_gen3_phy_usb2_driver = {
 	.driver = {
diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb3.c b/drivers/phy/renesas/phy-rcar-gen3-usb3.c
index 5c267d148c90bef9..0420f5b283ce4233 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb3.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb3.c
@@ -202,7 +202,7 @@ static int rcar_gen3_phy_usb3_probe(struct platform_device *pdev)
 static void rcar_gen3_phy_usb3_remove(struct platform_device *pdev)
 {
 	pm_runtime_disable(&pdev->dev);
-};
+}
 
 static struct platform_driver rcar_gen3_phy_usb3_driver = {
 	.driver = {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
