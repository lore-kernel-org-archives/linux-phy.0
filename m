Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A31D9C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 19:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wrhZTuKf2yqykqjhbK67CY3bVLU2jsIAXqbCAQon9xg=; b=sgtWD8hG3p7sWd
	evZKFULpN/B0aYpnXAnYsxagBwJxpfDxbn8cyLwHPfsqEJyBB1Nk1kenarriYdeE68wR78+VP1eze
	VRBRRfhnUikFgBO6cZCpIsR1jdbeik3mVC86LHvW3zo4xMBN9yYInSbkptOwg4vwyY8+jgigt4dGi
	qtBDgNuHPEyDfRynwZNr2cCsTeDykcM05vjUHtqZl8laDODQ3bkpzWlZQJpLasRht2lJGDauoejDP
	TedfpwUPULHSEPb+Ym3gBt+bN8PJmlmIyKvc2iGlhz0b8WZttNvSvGC53smlGDyaXmOAOCg+CmrrB
	WeQNGulAQz2BrJCGBQtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3qn-0000000H6W1-1Pcg;
	Mon, 05 Aug 2024 19:58:37 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3qG-0000000H6Ou-37C2;
	Mon, 05 Aug 2024 19:58:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EC8C8CE0B66;
	Mon,  5 Aug 2024 19:58:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA69C4AF0B;
	Mon,  5 Aug 2024 19:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722887882;
	bh=ZYeP1S6n5vib3RJBGi2NHMcCj/OfAdzeGIemUcSu48Q=;
	h=From:To:Cc:Subject:Date:From;
	b=a56FCWUJlF4QG4wtLFsZ+U3UZqiS2bBuTD8raAnp2nZR0HoEfU/JMutS3Z4QkxrPB
	 dOPkMfhAdEOFOPwgCBadB9zZ6jP1RoaodYYw4jv54JyxrS+Ty5hc6I30hCaiG97iQm
	 uYCxqx3ESRhw+xMLffrbRxPf14lUId9tltfbXXZjdC6j1U6OfkVJaMO12IheOlcRVp
	 prhDgtZ9NeVGyYc943m9fQHmm8TIFLBs+92fiu8lFK/BzpdtpHU9tkPSOFuKenUv97
	 68LIYOH1YDQ/PFHKEO+VVDzd+wVtuoy0NAYXe3KgVspUP3yJ0ikDNGxEPFsf3Jl5Yu
	 /KJQJGdwNoLAw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	lorenzo.bianconi83@gmail.com,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2] phy: airoha: adjust initialization delay in airoha_pcie_phy_init()
Date: Mon,  5 Aug 2024 21:57:23 +0200
Message-ID: <d174837bcb5a53f7b2c2580211d60a175d0ce8db.1722887003.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_125804_984112_5B74444E 
X-CRM114-Status: GOOD (  11.38  )
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

Align phy-pcie initialization delay to the vendor sdk in
airoha_pcie_phy_init routine and allow the hw to complete required
configuration before proceeding

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes since v1:
- use msleep() instead of mdelay()
---
 drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index bd3edaa986c8..6d61e6486a03 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -18,6 +18,9 @@
 #define LEQ_LEN_CTRL_MAX_VAL	7
 #define FREQ_LOCK_MAX_ATTEMPT	10
 
+/* PCIe-PHY initialization time in ms needed by the hw to complete */
+#define PHY_HW_INIT_TIME_MS	30
+
 enum airoha_pcie_port_gen {
 	PCIE_PORT_GEN1 = 1,
 	PCIE_PORT_GEN2,
@@ -1180,8 +1183,11 @@ static int airoha_pcie_phy_init(struct phy *phy)
 				 PCIE_DA_XPON_CDR_PR_PWDB);
 	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
 				 PCIE_DA_XPON_CDR_PR_PWDB);
-
-	usleep_range(100, 200);
+	/*
+	 * Wait for the time in ms needed by the hw to complete the PCIe-PHY
+	 * initialization
+	 */
+	msleep(PHY_HW_INIT_TIME_MS);
 
 	return 0;
 }
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
