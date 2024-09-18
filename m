Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C445CCD1A5
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEVsR0mhsF1okQHNNWxI1PEkuE3UDI3EWP3ZWKJwVXk=; b=kahuJG32qLaW9w
	x8vFOV0iWGD4ks5tc2UuHSq6UBpnY1ovLOgcJzFnRRtgudLOdaLAaAz8DtVaTlpUGsryQKttEApyl
	lXXSiA1xjVfMdVFOOue3McYIaXuLAfWwmI49WyubkOJpG7hKGd9LUF55M5WUc04sKi6ePKeDjV5v2
	zbAhulwMIiA1F+89nbxKMDTnKeR+VQZvThqphSLKhslRXGlglTH3iKGKUV8ERXt+vpBLdMIwoPv7Z
	TlHdXeAajMGg6fHwSCUr2IldJ5wKoQu7sdRChqVB2TnqQFXwPgO7pQFtxuzpJfJWa+u1E2vq67A2/
	IFNMZL2FKMx+Ahsbp8HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squsJ-00000008LYk-10na;
	Wed, 18 Sep 2024 13:37:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squo6-00000008L1A-2UpZ;
	Wed, 18 Sep 2024 13:33:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 23A075C5C9E;
	Wed, 18 Sep 2024 13:33:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B4DC4CEC3;
	Wed, 18 Sep 2024 13:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726666401;
	bh=fnAKNf1YgRllmWdnPA9TSA49da0qGhW0KtZKcpCr5wc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=I30f/Y0M4kPGUVVS1Vx9xTW9WnWLfsbuQnbMyAjz3BxtuuJltNAQy0jr8hjBuoqlJ
	 5I689IYNLT2nAB6EyUbSEB2CqXB5pTAgjCWt6QSUZoSTESDObANScrXV2MkIlIEmMX
	 4pIXxoPubaaxQ1vmSL+9GklaWx34K7hkYA75zPh35vVtN+ItbDhc1PuBSR8RQPXRkp
	 Xb3O9dqkLWSYbtnxRt+CT574S6UAj9N8WMaYN+C3hf7PKwuPe+Kks3q23z7J2BqMTC
	 MD3B+4PVvGbMmcihrcp6rLfkdJ3Hg+zeyiwA/BMPDUECXwvNpTvnicfFpsPU9efdoe
	 llf0+uWImYPIQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 18 Sep 2024 15:32:54 +0200
Subject: [PATCH 3/4] phy: airoha: Fix REG_CSR_2L_JCPLL_SDM_HREN config in
 airoha_pcie_phy_init_ssc_jcpll()
MIME-Version: 1.0
Message-Id: <20240918-airoha-en7581-phy-fixes-v1-3-8291729a87f8@kernel.org>
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
X-CRM114-CacheID: sfid-20240918_063322_709379_D9C760E3 
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

Fix typo configuring REG_CSR_2L_JCPLL_SDM_HREN register in
airoha_pcie_phy_init_ssc_jcpll routine.

Fixes: d7d2818b9383 ("phy: airoha: Add PCIe PHY driver for EN7581 SoC.")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index 9a7ce65f87f0..56e9ade8a9fd 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -802,7 +802,7 @@ static void airoha_pcie_phy_init_ssc_jcpll(struct airoha_pcie_phy *pcie_phy)
 	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_IFM,
 				   CSR_2L_PXP_JCPLL_SDM_IFM);
 	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
-				   REG_CSR_2L_JCPLL_SDM_HREN);
+				   CSR_2L_PXP_JCPLL_SDM_HREN);
 	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
 				     CSR_2L_PXP_JCPLL_SDM_DI_EN);
 	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
