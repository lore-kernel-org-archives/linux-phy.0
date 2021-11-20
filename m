Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C30F7C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 06:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0yHq0Y9ncat6pqR1Ho7jyjOLE2OEJFU7Wi93gAaKMac=; b=Kgj4lhEOjlju9m
	hXeJi6B3MmrQZJn/P3RbkVUiOX5ZE19ucUD0DViiWwlzTsaoCSXKbmuN4h+CqWNOfnUKtnOg08TI2
	GKyc2ZBdujCvIP+UC9BWo3gcCgyGcRZGQnh6kK8F1cFnLZ5DNz+R2OvyUPkFUDUGVPh17WzTBpQKc
	/uftjwxGq0VD9nZfeo/pVYf0xjCyZtBZi6ZAbvQebSZ+iDpKPCa5udwlS32K2ru1d51mkoFZWqKR8
	TovQCIzT48dohC6/bAzKjBZisnletQ8F1W5/wbZlhBzQmMviTWRElJqPtKLlu2OZInKCeFr0ZsAjb
	BJW3+q8hvMVj8mJ2omRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moJf8-00C6ho-5P; Sat, 20 Nov 2021 06:15:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moJf5-00C6gt-8T
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 06:15:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9924960241;
 Sat, 20 Nov 2021 06:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637388940;
 bh=MwmJXvJiEzl5Za9EAC+KE5v2GyljABkbj0U0pxgAMUI=;
 h=From:To:Cc:Subject:Date:From;
 b=rAstRgHHv4ZxyeMSf0HAMgMKoukvFmhJc2OKCPCz0uhPvkVE0yE341OoH4FW+tIbG
 jEDJPO5ZFnH0/dPIFZc5uxKUIo/L19MJKK2oaYvyIgAgF+ieVQFgyoBZEcJY4zQ37F
 T5z4PtOxsONSCmeKxhgBs6Eav07IwWH82eo2TqgXduSAuRtU7flQm1tCUMccELH73Z
 fhHJ6i0KP5oLZUoOvzJQuCxIn3uC859cOlMv6MOE/29ODIKcbdm49K8WxbSeQvbUYD
 PZP+pr/kS7Hc7CtfliUJlOQSQQJC/UZNATHqmLutLo03hYYeikeMBlRhtjVNYy8QdP
 v11TB/HM5vMYg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH v2 1/2] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Date: Sat, 20 Nov 2021 11:45:30 +0530
Message-Id: <20211120061531.410771-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_221543_343792_486EEA9D 
X-CRM114-Status: UNSURE (   8.86  )
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

The functions are documented but there were style issues, so fix
the style and add missing description for phy_dwc3

drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
This comment starts with '/**', but isn't a kernel-doc comment.
Refer Documentation/doc-guide/kernel-doc.rst

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---

Changes in v2: use () for function names
update description of @phy_dwc3

 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index bfff0c8c9130..fec1da470d26 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -127,12 +127,13 @@ struct phy_drvdata {
 };
 
 /**
- * Write register and read back masked value to confirm it is written
+ * usb_phy_write_readback() - Write register and read back masked value to
+ * confirm it is written
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @offset - register offset.
- * @mask - register bitmask specifying what should be updated
- * @val - value to write.
+ * @phy_dwc3: QCOM DWC3 phy context
+ * @offset: register offset.
+ * @mask: register bitmask specifying what should be updated
+ * @val: value to write.
  */
 static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
 					  u32 offset,
@@ -171,11 +172,11 @@ static int wait_for_latch(void __iomem *addr)
 }
 
 /**
- * Write SSPHY register
+ * usb_ss_write_phycreg() - Write SSPHY register
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @addr - SSPHY address to write.
- * @val - value to write.
+ * @phy_dwc3: QCOM DWC3 phy context
+ * @addr: SSPHY address to write.
+ * @val: value to write.
  */
 static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
 				u32 addr, u32 val)
@@ -209,10 +210,11 @@ static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
 }
 
 /**
- * Read SSPHY register.
+ * usb_ss_read_phycreg() - Read SSPHY register.
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @addr - SSPHY address to read.
+ * @phy_dwc3: QCOM DWC3 phy context
+ * @addr: SSPHY address to read.
+ * @val: pointer in which read is store.
  */
 static int usb_ss_read_phycreg(struct usb_phy *phy_dwc3,
 			       u32 addr, u32 *val)
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
