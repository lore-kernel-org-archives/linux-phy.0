Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC2DCCD1A0
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vZH0Gx2bdffIODH5TK2RoPPqT+jEYP69Zq7C3/pgZM=; b=tzk2Wq0O0PgjIE
	NMBj0tGRjv54EXYNzTm1wFPI7MOUH3gjEJ43xIVKvoKt/U+TfZBLDsLYi7qLe4mUi09oslT8Kah1A
	6Pwr+9edQ6XvK5oVhaY/CYJmxYXatuRdlfLDeAVg6crgaXLHq0ZOTjRaOv19umam1IZcoGGw/qjsi
	4b+nm3Pjg7Ix5s8bRkZt6P653L2W/Lq0s2uXOX3vHv9SdmJLxfR76N0UtayPqHT6NJY12Gn60nxfZ
	ugdLagcAe6JLwto6AJN181oBb70NK3f5mq3vm5WtoeODTyfpUv7ZhKJsNFC5Balt9et6xc2A0b5n3
	ihz3ovqzapMz8ncjST1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squqB-00000008LHZ-2OD9;
	Wed, 18 Sep 2024 13:35:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squo1-00000008KzZ-0UtT;
	Wed, 18 Sep 2024 13:33:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F1645C5C9E;
	Wed, 18 Sep 2024 13:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE951C4CEC3;
	Wed, 18 Sep 2024 13:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726666396;
	bh=YM8rwaj/aKbxGALsmKPe+zv9CAIkByMtZlqjj6nmxQM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=X/yeiXWQf7FpiHX7OIzvElhyAsD6h3GQIxr4aY+vOwbp04NamkIJ1eC+vwhiBkzpn
	 lD75Ha0EwAKGwy86zADN4ESkdduTjYW8EniUFHAUhu6D/0jp1RPqRQg1W9MMrLXHar
	 aJ9UV/KRlJdnWlpi+R4xkFK0gUdZWqW0/272IqLlKifqT2q6vn39UoyEb9NCWclc2z
	 7OMBVf7PXmheQU0PGksPqbOB1G6G1Z5h1qemydL2s3zOp6O5tVR+9iCv7NFX+0ze8W
	 syZ5XXd9aTrJ29rpO+HC+8oMnhKrDqWEoWOnQsyxX+amtkqloqnzzhNuYxE5paTawJ
	 1jpVMS6ofG+oQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 18 Sep 2024 15:32:52 +0200
Subject: [PATCH 1/4] phy: airoha: Fix REG_CSR_2L_PLL_CMN_RESERVE0 config in
 airoha_pcie_phy_init_clk_out()
MIME-Version: 1.0
Message-Id: <20240918-airoha-en7581-phy-fixes-v1-1-8291729a87f8@kernel.org>
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
X-CRM114-CacheID: sfid-20240918_063317_264163_80B6B104 
X-CRM114-Status: UNSURE (   9.34  )
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

Fix typo configuring REG_CSR_2L_PLL_CMN_RESERVE0 register in
airoha_pcie_phy_init_clk_out routine.

Fixes: d7d2818b9383 ("phy: airoha: Add PCIe PHY driver for EN7581 SoC.")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index 1e410eb41058..4624aa9dd712 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -459,7 +459,7 @@ static void airoha_pcie_phy_init_clk_out(struct airoha_pcie_phy *pcie_phy)
 	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
 				     CSR_2L_PXP_CLKTX1_SR);
 	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_PLL_CMN_RESERVE0,
-				       CSR_2L_PXP_PLL_RESERVE_MASK, 0xdd);
+				       CSR_2L_PXP_PLL_RESERVE_MASK, 0xd0d);
 }
 
 static void airoha_pcie_phy_init_csr_2l(struct airoha_pcie_phy *pcie_phy)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
