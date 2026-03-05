Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9771FF30924
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 10:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCLXgjMLgaInwUkyweOyoo9IQNGIHNVZvlNRY+ZXcrk=; b=ePW/8X+xbTNHfv
	GAwOsz9nH2gGnebgIB3caI5Wb9BhmKP4Tw2KHbD6zlHo7ocEyYNGSD1FWVBw6FVYiewILO3EMlyji
	C3xjszsRXt9YyyTXcSZO/L+SOuilrOW4n36xbCu6WnoKMoy+4GbpeJNhmelKG3HwxLkrH7xRN4CPC
	K0/gAb0Qr+CHhm7vscFGxzfomDukmrLa24Z/L+IptP5P7V4Ua5m3ZS5QT1FVWCeqaOz/fofYuEjxw
	+0T/tcCaPKaKpNyTPwjxOtA94VLAVxH7pwLrObhQ73hsF0vLCDSh2s3x14Im47STjm6U0Q3LAOrGY
	OypgQ1PYS7XeiQI7E8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5k0-00000001XQY-19Ya;
	Thu, 05 Mar 2026 10:15:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5jw-00000001XQB-3jXX
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 10:15:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0778E42AE6;
	Thu,  5 Mar 2026 10:15:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BB08C116C6;
	Thu,  5 Mar 2026 10:15:30 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: renesas: rzg3e-usb3: Convert to FIELD_MODIFY()
Date: Thu,  5 Mar 2026 11:15:28 +0100
Message-ID: <a52020ba597e2e213b161eee21239f10e6057d9d.1772705690.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_021532_948560_2389BD1D 
X-CRM114-Status: UNSURE (   7.22  )
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

Use the FIELD_MODIFY() helper instead of open-coding the same operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
No changes in generated code.
---
 drivers/phy/renesas/phy-rzg3e-usb3.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
index 6b3453ea0004cf59..7f809ef1bb5135ec 100644
--- a/drivers/phy/renesas/phy-rzg3e-usb3.c
+++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
@@ -78,13 +78,11 @@ static void rzg3e_phy_usb2test_phy_init(void __iomem *base)
 	writel(val, base + USB3_TEST_UTMICTRL2);
 
 	val = readl(base + USB3_TEST_PRMCTRL5_R);
-	val &= ~USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK;
-	val |= FIELD_PREP(USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK, 2);
+	FIELD_MODIFY(USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK, &val, 2);
 	writel(val, base + USB3_TEST_PRMCTRL5_R);
 
 	val = readl(base + USB3_TEST_PRMCTRL6_R);
-	val &= ~USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK;
-	val |= FIELD_PREP(USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK, 7);
+	FIELD_MODIFY(USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK, &val, 7);
 	writel(val, base + USB3_TEST_PRMCTRL6_R);
 
 	val = readl(base + USB3_TEST_RESET);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
