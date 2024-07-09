Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA79C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 07:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vbTHLxbXaggVpQBf/X19DcNimJaz4ieDsXhnOoJ3ndE=; b=DWY4pPTb8HRXus
	5LON+DRIZNDlVxCwidCYNJIqqo7Bu3kym3xKGlbIhedDYi4DGsZmmNoWNWB9t6IHK8s6jzOarSRtL
	Qa+JDM1urZ7yT3vckDabL9Rdb65kHXa683xjym92DbUtrZ2Zv2tl6qEkygYA3m8MP6PhFKmjME2vq
	sCr0FIsuBX8vehmEBbhnyw+Z0iJPrR0qLlY8AQK07LPhyDyTlVMDSgLGUtfGjhCspO3Jg7A2iendf
	z1CphkZMLoXtB5xK3HtGsSybobB+g4Ftm7jaMMWOvbzLh7alsNJuAde1O5CVmnsS/Q+2hUMUs8cqq
	5yBP0TG8EUPUp4oTNqkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR4tm-00000006Avi-3s2d;
	Tue, 09 Jul 2024 07:04:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR4tW-00000006AuF-1eba;
	Tue, 09 Jul 2024 07:04:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7342D60DF8;
	Tue,  9 Jul 2024 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4916C3277B;
	Tue,  9 Jul 2024 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720508649;
	bh=JMWEv9wu3nJTiY/HEu32TATVVhco2eNTxl/5c0PdHgs=;
	h=From:To:Cc:Subject:Date:From;
	b=sv8XyFITSF2xILb4B4R7ceFPSE0nXLQnD6ApdWs3T+3ltAzjUEgxH6HGed0z6dgOK
	 bTor6d0x2o0P8MqJFjEZhaMpM/kDxu19rzy4cHSxNQBPlTCnRwlY27Vlsxmy51Qnpi
	 jEWt51pRwfIBASNNGUuQwUBXyhH0HJt1VX+H9RwFy3oMrqfMGXuRSoqyzJCwZgTM+/
	 vf9FxmiCjGCmEUgqhW3mufbovuqOsj7K1FmYYY0TSzRIMyyNsnXe91lF44UtSyH8Le
	 AgnbogaJz+o/ClAEb7p8rJona+LfsThfRvmRcUhWkKnTxV1VyeVxJeaO5ZILORNPUJ
	 Wq5PHX9EPIoFA==
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
Subject: [PATCH] phy: airoha: adjust initialization delay in airoha_pcie_phy_init()
Date: Tue,  9 Jul 2024 09:03:50 +0200
Message-ID: <82e50875deba44e34f49bd92578b4dc24f121b01.1720508349.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_000410_517992_708FB70F 
X-CRM114-Status: GOOD (  10.33  )
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
 drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index bd3edaa986c8..445bacfdaaf4 100644
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
+	mdelay(PHY_HW_INIT_TIME_MS);
 
 	return 0;
 }
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
