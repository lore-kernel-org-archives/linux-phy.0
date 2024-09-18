Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89663CCD1A6
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkPLcRCaNBLxuiQ498pcxgsop12OwjyKCUb94/xV9/I=; b=NgjgCZzP9Do+Gs
	DVtDzq7aEW0fk0d5TL897FFAwtCj9hIFGYoUPAgIU/DQllWvtw1Ee0LPyqzO6enFrFzKWMI6V4M66
	zVWnistmCAaTKkMlsxl/KvznyKFIFrAqTDSZSCXguwKXO84UVj6lePtqM8fNFh+pwPBwlGyddiab0
	REsfcAcx/gep/YrJ7UY0neyu1RljtOQ+S8Dwsy8C1juMcypcRi7QIJUaBnjVBsjBr/kCr6b/3m3Nb
	3OwaaqVoj4Je/TYokzTKVprpnYS8qSlOL9wDcubwXwI0Y+PCWFshENXGvbUqI0FXhMOoesiBD2b/l
	wRaB/KakgZgFgccRo+xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squtQ-00000008Lfv-0r8C;
	Wed, 18 Sep 2024 13:38:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squo9-00000008L1X-0EXA;
	Wed, 18 Sep 2024 13:33:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF6C25C5CB3;
	Wed, 18 Sep 2024 13:33:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBA8FC4CEC3;
	Wed, 18 Sep 2024 13:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726666404;
	bh=DOm2BG6AMxdE927gikbeKZHeNqkczmwrGnj2NOpTHwc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=P0+98eD0EYLxkd0RxjjjZq3Kt89O8hWXJ0sgWOLzRKiW6OkU3HJatu5uEjnrL+zj8
	 OIbZrpPbpJk/2M8wKhy1que2vHAZU+ZE6fmavMcMlfstblvL2x4Kkc2sc8RmC80tws
	 NtV0rXTkt4OZpsJ8umEl0hnbmU4EAbbwEMOYB6JRqWZA9GIt67gGOxSHvFEx9gnGcL
	 Kellz5L35WQ7jrzWvk8UzK9QLD0oCquByU9gzUj/H/b/xu4eZ2jxrJFhVisKtrzKsA
	 aST5pRkwsXcJDYnNY9c71YAAbEIkbTCcwOPD/zCupEiF9L267g94f66Cysi7LfYWqI
	 7Mp0e8lfncunw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 18 Sep 2024 15:32:55 +0200
Subject: [PATCH 4/4] phy: airoha: Fix REG_CSR_2L_RX{0,1}_REV0 definitions
MIME-Version: 1.0
Message-Id: <20240918-airoha-en7581-phy-fixes-v1-4-8291729a87f8@kernel.org>
References: <20240918-airoha-en7581-phy-fixes-v1-0-8291729a87f8@kernel.org>
In-Reply-To: <20240918-airoha-en7581-phy-fixes-v1-0-8291729a87f8@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 upstream@airoha.com, Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_063325_168121_BED0D2C6 
X-CRM114-Status: UNSURE (   8.42  )
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

Fix the following register definitions for REG_CSR_2L_RX{0,1}_REV0
registers:
- CSR_2L_PXP_VOS_PNINV
- CSR_2L_PXP_FE_GAIN_NORMAL_MODE
- CSR_2L_PXP_FE_GAIN_TRAIN_MODE

Fixes: d7d2818b9383 ("phy: airoha: Add PCIe PHY driver for EN7581 SoC.")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie-regs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/phy-airoha-pcie-regs.h
index bb1f679ca1df..b938a7b468fe 100644
--- a/drivers/phy/phy-airoha-pcie-regs.h
+++ b/drivers/phy/phy-airoha-pcie-regs.h
@@ -197,9 +197,9 @@
 #define CSR_2L_PXP_TX1_MULTLANE_EN		BIT(0)
 
 #define REG_CSR_2L_RX0_REV0			0x00fc
-#define CSR_2L_PXP_VOS_PNINV			GENMASK(3, 2)
-#define CSR_2L_PXP_FE_GAIN_NORMAL_MODE		GENMASK(6, 4)
-#define CSR_2L_PXP_FE_GAIN_TRAIN_MODE		GENMASK(10, 8)
+#define CSR_2L_PXP_VOS_PNINV			GENMASK(19, 18)
+#define CSR_2L_PXP_FE_GAIN_NORMAL_MODE		GENMASK(22, 20)
+#define CSR_2L_PXP_FE_GAIN_TRAIN_MODE		GENMASK(26, 24)
 
 #define REG_CSR_2L_RX0_PHYCK_DIV		0x0100
 #define CSR_2L_PXP_RX0_PHYCK_SEL		GENMASK(9, 8)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
