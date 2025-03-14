Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46640C282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 15:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+iFwGKiD2Ck2ZfMljArj2zFRr64b/j3HJtHlxhh/xCU=; b=QTPSg50kkcvn/H
	S/vbOgPCyq8i8B5z1LLblGsYCdHuUufljoHOTVe3rjKSLhZb0zJ3+mWnbXFsHVrMg/DQ3fPrQ3v/Y
	bFK2vsNTY9pLTXUymcbNjP3L1ubZwbX6hZ5fZd4DT3t1y1F5WoWZ/x4KycyMjQwKV3jAQNUtRLftK
	4OcabELFt9cFco68Bo05txKlkx1G/3siMJvvHY0qylBHSwWuZL6zK4MEnSwQ9TURFwphJPlHZaqlJ
	gbIFe2sX+tHPCO5ScE3oNxb/yrKkoDZu7Pn706Ae896MnxfUNcjiVkPNWP//r3QhiI2HJzNyJjPI5
	My2VIl+Vv1G/uWmggC1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7J8-0000000Ecpv-1pc5;
	Fri, 14 Mar 2025 15:50:46 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7Hk-0000000Ecbl-3EEb
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 15:49:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 37A26A47738;
	Fri, 14 Mar 2025 15:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6487C4CEE3;
	Fri, 14 Mar 2025 15:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741967359;
	bh=e64LI0/mup3NBwa2RJNj7g9YaxvNeqQ+qUtFG2l3n3w=;
	h=From:To:Cc:Subject:Date:From;
	b=py5QLb+CLk4medUOo+JzWJJ2YV3/unJHmckso8pvdUlOw6vdcuUeabSb3hV4GK/+2
	 0jcgt/aLVyFiYue0yvkG10/2gdWKn3/NnkLfHq/aiVrFgJpSZFnTXYf3wTHkgzMrTF
	 4z0DvHUXUgI3rsJWkwp9Hh1+db3Ff+/wwzyFPDR98oV7BHmT/vFuhyDr/nE7gSK7Iu
	 RBk8yjgMiOSnPUgvUf1doURvdYzzRe/yYsaE5cygge2fwvJxdgKWtOR5zMD8JjIotB
	 ItKAGuNMFlBBtKUffJJGdW8kY2AZlqN62a0gJidcDkgpPaUMBQ/4uPmZsUVcm+v9rk
	 s/rDG0LSEz5bw==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qcom: uniphy-28lp: add COMMON_CLK dependency
Date: Fri, 14 Mar 2025 16:49:10 +0100
Message-Id: <20250314154915.4074980-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_084920_870453_40A8C573 
X-CRM114-Status: UNSURE (   7.35  )
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

From: Arnd Bergmann <arnd@arndb.de>

In configurations without CONFIG_COMMON_CLK, the driver fails to build:

aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.o: in function `qcom_uniphy_pcie_probe':
phy-qcom-uniphy-pcie-28lp.c:(.text+0x200): undefined reference to `__clk_hw_register_fixed_rate'
aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): undefined reference to `of_clk_hw_simple_get'
phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): dangerous relocation: unsupported relocation
aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x240): undefined reference to `of_clk_hw_simple_get'
aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x248): undefined reference to `devm_of_clk_add_hw_provider'

Add that as a Kconfig dependencies.

Fixes: 74badb8b0b14 ("phy: qcom: Introduce PCIe UNIPHY 28LP driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/qualcomm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index a6b71fda1b9c..c1e0a11ddd76 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -157,6 +157,7 @@ config PHY_QCOM_M31_USB
 config PHY_QCOM_UNIPHY_PCIE_28LP
 	bool "PCIE UNIPHY 28LP PHY driver"
 	depends on ARCH_QCOM
+	depends on COMMON_CLK
 	depends on HAS_IOMEM
 	depends on OF
 	select GENERIC_PHY
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
