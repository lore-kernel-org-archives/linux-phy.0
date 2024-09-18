Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A817BCCD1A5
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syaiqlJwSA11GCiu4H+HX18OG3SCgEGhLktTnLMKvXw=; b=b9JVxNQVTKLWGC
	JqFWU1Vjb59Gxt6va0H5oMipYDq25ru1jeQ/kzQ3fQEZv9Ir5zvbAh0aZd+rgaq0GoVdWR6dzpjIT
	F3UPfnrd6pNnte8LsdGiXUh6dhBDUJGhnwxDKD4+xQWz4QShi6z9p+24NmTUj8U9gF1f9PHY+hV9H
	XaFf0SBK1hhOzrWb3PqGgjxheReT/U40luYSBRItrXgIHCboDI9O5IvlIX85QrDIjqUqYLRI4G1Rm
	dpfgpar6SDrgHUyw2+TPfhvHe8Nu2zWDZu4q3vjg2Z8ZbiHtJUOIhs4yyFRJPe1iFUAnr1HoPfMmq
	uJCGVQZbuOxh9Z7PUq9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squrF-00000008LRG-1IQ9;
	Wed, 18 Sep 2024 13:36:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squo3-00000008L0U-2uiM;
	Wed, 18 Sep 2024 13:33:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4396D5C58C0;
	Wed, 18 Sep 2024 13:33:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DCF3C4CEC6;
	Wed, 18 Sep 2024 13:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726666398;
	bh=P2ayhFCWSFoH0zK/84T8wa3mB/EO0EfDR38Tso3+BQI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WpDaFq9mEPqWyDUSZJ+RyTMbsbHO6MxhXhego8fmHpB/TUnO3TSbaKBwoINBkdJHb
	 e+k47YzoJwNs3Trkw+obWG/t6401swMnm6pQDGh0cnpH92zGTzm1YxKgZ4mIT/bxw2
	 RZIHQLJiPZ02bw+ofIWlDcVslzkkipPm7orPAS3Xt4QAiMFOdSVn2cpLK6IfuuhgA4
	 2WrUKS2utqnJ5Yoystf5bwAWDSw0cpQZT1pfw01D0lbf1jWQdl27TMr+FJ7mPjFJxw
	 NaNVYqw86NcdIVx4j0Rr3Kbr2InXUhOlHZyK0J79kPP6Lm6LPIzuP3eSQWwkSUXqWl
	 IRp3vQNjVUfKw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 18 Sep 2024 15:32:53 +0200
Subject: [PATCH 2/4] phy: airoha: Fix REG_PCIE_PMA_TX_RESET config in
 airoha_pcie_phy_init_csr_2l()
MIME-Version: 1.0
Message-Id: <20240918-airoha-en7581-phy-fixes-v1-2-8291729a87f8@kernel.org>
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
X-CRM114-CacheID: sfid-20240918_063319_833821_19C276E7 
X-CRM114-Status: UNSURE (   9.33  )
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

Fix typos configuring REG_PCIE_PMA_TX_RESET register in
airoha_pcie_phy_init_csr_2l routine for lane0 and lane1

Fixes: d7d2818b9383 ("phy: airoha: Add PCIe PHY driver for EN7581 SoC.")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index 4624aa9dd712..9a7ce65f87f0 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -471,9 +471,9 @@ static void airoha_pcie_phy_init_csr_2l(struct airoha_pcie_phy *pcie_phy)
 				 PCIE_SW_XFI_RXPCS_RST | PCIE_SW_REF_RST |
 				 PCIE_SW_RX_RST);
 	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
-				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
+				 PCIE_TX_TOP_RST | PCIE_TX_CAL_RST);
 	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
-				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
+				 PCIE_TX_TOP_RST | PCIE_TX_CAL_RST);
 }
 
 static void airoha_pcie_phy_init_rx(struct airoha_pcie_phy *pcie_phy)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
