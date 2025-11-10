Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FBBDCCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pCBqjGNzUefV9iyZeejWI1qUlu3dGfqhweaOQrgJmTk=; b=zW9LLSmxgfCNk2
	8j98rMQ5WSJM3Fj6vAThR0PM2JG3/1WwcW66aua6bAYZfBHeoY1wne3j6/XkMu4qvC7dR9V4tmIs5
	uQepxS7V76Q6zPX127E2pk078mwXhtCCrsVE76eP6fB9kC+wHgTqP2a6DmlnTxmonciiAy+tYKced
	x3/cC4Q4MNxRheKXHywBCv9FNA5B6X0KSgi05IyiseE5HlBQW22gTLEEkuyJDmDtsjY359lBS+8ko
	VQV2PUpeN5cDrffKrlyoqmJYvhDUsiBCvY3qXPmjMr1OTp4i75CVGq70k4mhb6xHygB9YdqAwwsMm
	Xu0JA7Uu30+dyWFhSVqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISW1-00000005YDE-0ssI;
	Mon, 10 Nov 2025 14:05:05 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISVv-00000005YC9-2Muf
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 14:05:03 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id CA32F1A19A7;
	Mon, 10 Nov 2025 14:04:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 96FCF606F5;
	Mon, 10 Nov 2025 14:04:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3C6771037190D;
	Mon, 10 Nov 2025 15:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1762783493; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=aXdArrEv7P8qjQLi/yEInj1C2PVSeCo3HZ1LFRj2r+Y=;
	b=AkTPAeGard5vsWGDDnr8h8SIpX/bbi1oAVovVGIlOzoQvCvmiQUVITervwEk4d9849Siae
	t4g5gFgE8iDBu3mqOWJuUeA2BmU0Ek7u8ZWQHHEEa2BVXDU2z6ljqPECfvXRcIkliseea4
	O5O4Vxn10O/IH2WpeQIBqnF+7BqwW0gX9I5Z/T9sPB+k637GnNxqgBhjZMFgYDgUX6VWsp
	RVzVUlhUgx7aSISafiSrSzSumsNhcgnsZ2fldz6bTqHlnUYOvtrvnG6yH18blNW8NySVg5
	vPfSckxA17VbRXeXIjQ/Zx7J+HnM0IfPSAktSRsZEp2Rf2vLjrbrJfL62+HJlQ==
From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Date: Mon, 10 Nov 2025 15:04:33 +0100
Subject: [PATCH] phy: ti: phy-j721e-wiz: restore mux selection during
 resume
MIME-Version: 1.0
Message-Id: <20251110-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-v1-1-b1cbde0b8367@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAPDwEWkC/x2NSw6CQBAFr0J6bSczA8TEqxgXfB7ShF+6QVHC3
 R1ZVWpTtZNBBUa3ZCfFS0ymMYq/JFS1xfgESx2dggu5997x3H54kRPdNXjwW76ssHXAH8uk4GH
 d2NBzlqeNS4uyQlZTLM6KRrbzdn8cxw8849iUfQAAAA==
X-Change-ID: 20251110-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-453f03abce4d
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_060500_118268_9C240868 
X-CRM114-Status: GOOD (  12.15  )
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

While suspend and resume mux selection was getting lost. So save and
restore these values in suspend and resume operations.

Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46b..ba31b0a1f7f7 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -393,6 +393,7 @@ struct wiz {
 	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
 	struct clk_onecell_data	clk_data;
 	const struct wiz_data	*data;
+	int			mux_sel_status[WIZ_MUX_NUM_CLOCKS];
 };
 
 static int wiz_reset(struct wiz *wiz)
@@ -1654,11 +1655,25 @@ static void wiz_remove(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 }
 
+static int wiz_suspend_noirq(struct device *dev)
+{
+	struct wiz *wiz = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_read(wiz->mux_sel_field[i], &wiz->mux_sel_status[i]);
+
+	return 0;
+}
+
 static int wiz_resume_noirq(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	struct wiz *wiz = dev_get_drvdata(dev);
-	int ret;
+	int ret, i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_write(wiz->mux_sel_field[i], wiz->mux_sel_status[i]);
 
 	/* Enable supplemental Control override if available */
 	if (wiz->sup_legacy_clk_override)
@@ -1680,7 +1695,7 @@ static int wiz_resume_noirq(struct device *dev)
 	return ret;
 }
 
-static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, NULL, wiz_resume_noirq);
+static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, wiz_suspend_noirq, wiz_resume_noirq);
 
 static struct platform_driver wiz_driver = {
 	.probe		= wiz_probe,

---
base-commit: a22c168bc6e1295fd878c87684a84db9e79c574f
change-id: 20251110-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-453f03abce4d

Best regards,
-- 
Thomas Richard (TI.com) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
