Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2B6C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8190360F44
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8190360F44
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvhdtxU5x4XBRAtfaG1RgPuFp3UEGlSXZtWiVK2npQA=; b=oadms+mxNstnNj
	4CsR3dERkIq0r119TxSpqXY+O+75UUucHTnZ1KOHrJupPM1NT4P7bpUGi5i+EAMA3DQTIf8Be2NZS
	aKPqdpJYZopyua+IW3uclcMImg6nluLVdSerMfU5lq5DvEyKWSK+oXLCkgvKdr519wErDywP/R6OL
	0vz0Hwt09W34nQeRahMwiWIzg7TjvsswUComO+X8y5d8QlSlfLk94Ui0kERr7AIFBrPgUHx+wpWn5
	x2LL2bX8GUZAVwSSumi5q/1zezB+R8E0Sjf27nqQqLgNx5s3h16u+Kzr6GSRoCe9NThRElKsobwxH
	cI7wIBLa8MjhZkL/lSPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtF-001F8g-Qf; Tue, 16 Nov 2021 10:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsc-001Ey5-UR
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 96FDB63219;
 Tue, 16 Nov 2021 10:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059198;
 bh=KXVulQyk9zj7rAfwDnBQuE3jExJ9gnFzn/aqFe3RSzU=;
 h=From:To:Cc:Subject:Date:From;
 b=BpsHgfdJK0JErilME0uqhNp7mPH2m8XWz7IpHoWAQ9TzUPprWQbiPnQlihisP7axc
 V05AW2yBmfWGpIV554iUB0GbGFjIDpaPywnKIOHXB+JUMHkC/LwnnJyVJ1VCoNPJHL
 09mgPmyC+JjTjuc5N7KA68oA94bQ/IppDLP+OZ3aLVuSBYgfjyvSOX/g6XGAGSnIoL
 itl8d1Cv4FeVFV/Uer6e0nngMi1sb+memK0uPGs9WLt0aeXzN1gTKR6a55O1+6f7+W
 KWbFxkuwZpWlDNC8TgTpGTO7HUz1iqzABFI4a9IH6vpsYjIiShcBKNdfJLwfZ6qclq
 Ome9uuHYVJ/lw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Konstantin Porotchkin <kostap@marvell.com>, linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] phy: mvebu-cp110-utmi: Fix kernel-doc warns
Date: Tue, 16 Nov 2021 16:09:46 +0530
Message-Id: <20211116103951.34482-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_023959_061373_A1BF55F6 
X-CRM114-Status: UNSURE (   7.86  )
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

Fix the format and add description for ops to fix the below warnings:

drivers/phy/marvell/phy-mvebu-cp110-utmi.c:94: warning: Function parameter or member 'syscon' not described in 'mvebu_cp110_utmi'
drivers/phy/marvell/phy-mvebu-cp110-utmi.c:94: warning: Function parameter or member 'ops' not described in 'mvebu_cp110_utmi'

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/marvell/phy-mvebu-cp110-utmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
index 08d178a4dc13..aa27c7994610 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
@@ -82,9 +82,9 @@
  * struct mvebu_cp110_utmi - PHY driver data
  *
  * @regs: PHY registers
- * @syscom: Regmap with system controller registers
+ * @syscon: Regmap with system controller registers
  * @dev: device driver handle
- * @caps: PHY capabilities
+ * @ops: phy ops
  */
 struct mvebu_cp110_utmi {
 	void __iomem *regs;
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
