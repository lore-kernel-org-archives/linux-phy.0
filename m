Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A5CFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05405613AC
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 05405613AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmY+6mM19KRb9zmcIyb2+fqoIl9DU+WIMu0GvDaKmrs=; b=twOb+Ydt6qX0Xe
	cErnQcMB5UDnclbrrFkp0xHJYrqEJ0i6LmJxY0WsM6kLG/j6IdKNbQCmnyAeRCJBGfJGV6xcWEVe9
	ufk616lBjNAA/DkHymHYeQc+NB7v83vTX56axomWNyBpPCtYiZMDee0CiR0o1yqqxgdHjoqWrRhDZ
	sCVeLYloO5JXUJueX8xSrYvs8efSbhfHddGGJgL8b/2uzHMnomlADGk2xojVRWjFKGr5LFh3Js6lC
	kQiqipnI27zhzrpB0B+JuWiaBGM9J4VoE67HV56inEziJgljF1oKsw5MDmxihXzRidUlWbnS4k5ED
	7GaTrqsUnZMf10KnMeGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtG-001F8o-6M; Tue, 16 Nov 2021 10:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsg-001Ezf-4m
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E52960F44;
 Tue, 16 Nov 2021 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059201;
 bh=XQNhhOwY7CNCcEEDeCs8Qr9sMVB4unBMSmPawoOiXGs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KMNXEVQIj5ecNinUXIskocjhA5ebXZHxafEfWSSoyZKscqC676ixPWFVXGxkBLT4l
 E5V4djFgVl6Eru079C3HSPX4bHN84nfILjwqwcaIotCM58/65oICT9MHs2d2qI/E+1
 +7AbIRZ2XiN3GYlbSaWGTjbViUCCWf2KbhD2gBxa+msiIc7+TSzccIUOwHUTNLYMGJ
 QglozS3sdAhomB74li73hx6STbgi1j6rK2OMouTx2492tPhhGK/5VWoNDcLgR6P8GR
 uuoDjp9wZXC9GNxs2KW4XIgMzNs7I5AX3RdHOErYN97xLn2K+LXqh/AgglAO1XX7Qs
 w5YdXj2KBE4mw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Date: Tue, 16 Nov 2021 16:09:47 +0530
Message-Id: <20211116103951.34482-2-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211116103951.34482-1-vkoul@kernel.org>
References: <20211116103951.34482-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024002_277073_52A4C7B7 
X-CRM114-Status: UNSURE (   8.97  )
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

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index bfff0c8c9130..e1b8fa911416 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -127,12 +127,13 @@ struct phy_drvdata {
 };
 
 /**
- * Write register and read back masked value to confirm it is written
+ * usb_phy_write_readback - Write register and read back masked value to
+ * confirm it is written
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @offset - register offset.
- * @mask - register bitmask specifying what should be updated
- * @val - value to write.
+ * @phy_dwc3: QCOM DWC3 PHY base virtual address.
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
+ * usb_ss_write_phycreg - Write SSPHY register
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @addr - SSPHY address to write.
- * @val - value to write.
+ * @phy_dwc3: QCOM DWC3 PHY base virtual address.
+ * @addr: SSPHY address to write.
+ * @val: value to write.
  */
 static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
 				u32 addr, u32 val)
@@ -209,10 +210,11 @@ static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
 }
 
 /**
- * Read SSPHY register.
+ * usb_ss_read_phycreg - Read SSPHY register.
  *
- * @base - QCOM DWC3 PHY base virtual address.
- * @addr - SSPHY address to read.
+ * @phy_dwc3: QCOM DWC3 PHY base virtual address.
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
