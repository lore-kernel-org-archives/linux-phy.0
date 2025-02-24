Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E57C021A4
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IPskwX0ybbsyaFi9e3n3ZSMgTJN6dGRdB8cr17eU3kI=; b=xLsNyM5LTrk3lL
	MGl/D1GwP89BlQy1kiWCk/fPtSFmIGcIQyG2lHqBuGd9vBHXbh8Q9dOawJoDxV8s/ABqriIRUNGCl
	9jif5hCCjFY2rM7iw4GDOzLh/ibikvV4NZyQcNzOCeHgfl9TxHhCOq/Ds5KED4VgOXo2qG3qjLgp8
	ZVlKc5BaQDyZWw7z2VcsohcT4mPqXcySNHR9nkpGLE1UJSormm9CzulQmR6J4AaqqmUSubeAvA1/P
	IPTO1qwA+qvpGLBCWUxzSg0sNMs3nfaRrACEH6g9EHcZGOe4fkezZ1maq1Q+g07CEyuT+9ST8QmMg
	p2+XICRdKhuvWwHlvqTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmYI6-0000000DoUP-2e2K;
	Mon, 24 Feb 2025 13:14:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmXlO-0000000Dikh-0VHL
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 12:40:47 +0000
Received: from mail.ideasonboard.com (unknown [223.190.81.199])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61F99220;
	Mon, 24 Feb 2025 13:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1740400756;
	bh=W6turjkF5UgWj4NumzTU+qn8HpLaCyt0loPxOO4rxQ4=;
	h=From:Date:Subject:To:Cc:From;
	b=n0TKdl88755ynz/laGzH3bMTzpQ89L/roRoyLaMRSxDGKoMghXxhcxA2O6iO6zyge
	 BTgdBdfJ3iGG0gZYM/KS4Svjho6WdmE6aYcsuBz1k+rxTRFZG7eEDd/QVgH9icVeyo
	 XmYzocFedfx/W80Q4fVZgNg9MDTbLJ58sd1Vyt6c=
From: Jai Luthra <jai.luthra@ideasonboard.com>
Date: Mon, 24 Feb 2025 18:10:05 +0530
Subject: [PATCH] phy: cadence: cdns-dphy-rx: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20250224-cdns_phy_pm-v1-1-0fe2c544cc87@ideasonboard.com>
X-B4-Tracking: v=1; b=H4sIAKRovGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIyMT3eSUvOL4gozK+IJc3SSjJPMUE3MjC2PTFCWgjoKi1LTMCrBp0bG
 1tQBE2u2zXQAAAA==
X-Change-ID: 20250224-cdns_phy_pm-b2b7d472835d
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Jai Luthra <jai.luthra@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1208;
 i=jai.luthra@ideasonboard.com; h=from:subject:message-id;
 bh=W6turjkF5UgWj4NumzTU+qn8HpLaCyt0loPxOO4rxQ4=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBnvGi7z0kT3JUdhqyomX83zFcbIpSWh7NC3C9eK
 kx4WVY9RN+JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZ7xouwAKCRBD3pH5JJpx
 RdTwD/9m+sldr3u0wwJEVQJysKRRj3/bo6eQYmkgkY3tXeiL+6nGUMAP3+3WzpsJ/E8lwVp32Gi
 YtTpKTs5ysTMn0NqtR2BZOd8tCl9BDkkNx/pnFF3kz2S0ZqAJu+0gRwb3T+7Tu8hZ2dsKEFGB9p
 vnhCOjDERnHX5T6ZeJlCeQdyjP9Lj+aS50p5wiXxhQgqVDjo5/s/3QZKU1QgLkGLL5BpfpkgBTt
 bK7rGJrnPYUWReHfDSVu4UPxo/+xL9R4poinWspatuoByjoCayc1G5mKFCM+mlcigqj3QZm4RqK
 MLSp4U0SZQq4i+3wfPCWRnTuDdRw09gJsKFAPs0NCw6LFaA9gciaRZzk9CkeIhTWl50loyi48i8
 qd78OY+i7Az90D/npTUjac6LDl9hPi5AML/tvoB3G2imHBA4cjMQjWOFXG5lsVeWikRyIsEBXPC
 l2jPFavL1KW4DVHSR4d5pHgWJ1TgmO0y7/WIJO4lScUxAbMthdGwTxaPAN04bCGfcYQtksQNgd3
 TU4e2guVRhy5YEGaUAt9HsozBTw0KNDXbhxyUo67Oh4Zd0fBFxa6aCWHRtP/pbZpRidjgWMpf8O
 Xhe4lA52qHJFjbnJTGYphDCMpSLdqqdWsxxQz6mop9WmQONFtm+LCXwDqMQLvDyMB0uheqiHWk/
 hSLSTbnq8QWPKjg==
X-Developer-Key: i=jai.luthra@ideasonboard.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_044046_300063_6AB032F2 
X-CRM114-Status: UNSURE (   9.66  )
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

Enable runtime power management for the device. The PHY framework
handles calling pm_runtime_(get|put)_sync when powering on/off this
device.

Signed-off-by: Jai Luthra <jai.luthra@ideasonboard.com>
---
 drivers/phy/cadence/cdns-dphy-rx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdns-dphy-rx.c
index 7729cf80a9bd892c3e5db6cdbdc4ece9ada2d99f..3ac80141189c4c8c350b678998e5dec7a15c3892 100644
--- a/drivers/phy/cadence/cdns-dphy-rx.c
+++ b/drivers/phy/cadence/cdns-dphy-rx.c
@@ -12,6 +12,7 @@
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/sys_soc.h>
 
 #define DPHY_PMA_CMN(reg)		(reg)
@@ -265,7 +266,7 @@ static int cdns_dphy_rx_probe(struct platform_device *pdev)
 		return PTR_ERR(provider);
 	}
 
-	return 0;
+	return devm_pm_runtime_enable(dev);
 }
 
 static const struct of_device_id cdns_dphy_rx_of_match[] = {

---
base-commit: d082ecbc71e9e0bf49883ee4afd435a77a5101b6
change-id: 20250224-cdns_phy_pm-b2b7d472835d

Best regards,
-- 
Jai Luthra <jai.luthra@ideasonboard.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
