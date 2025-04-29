Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D89AC369CB
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 07:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EYpoYKADEc1EPpxyuscN30Nu6dR4TSQJnxWSGjz9rx0=; b=y3YCMUYK3gAjNs
	veIyOC858jxpctk92cEuqIsCVvnpV4nM+hNDD00sSkA9dEp3J6xkne1Ty/EmOjypGOZfS/WQkb34b
	AHanef4vh+Dez8gltYJSBKMzVMGMuU4H++uQ+L5/VzV07nREX65hX4rWWB1cJROiOqnZY/Ne5G8uT
	pT2ZWiKvL+rOqwvq6I+6PQT58Ln7wKPB1vbPUMLXfKiA3OsOPPxGfv10QdAVLi09cYjwAmzhxxC/e
	B5oxkjQz4iHKEr1ZWRl7QWPH3Kg8oAqu1uJGRJCjk/NQ8vnZ0Jf71s31dHNHl7ozz+xEdzuF4/NuO
	S/xHDmKA8wl38Ns0dVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9fqm-00000008qAi-09Py;
	Tue, 29 Apr 2025 07:57:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9fqk-00000008qAE-0cD8
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 07:57:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F4344A592;
	Tue, 29 Apr 2025 07:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF95C4CEE3;
	Tue, 29 Apr 2025 07:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745913473;
	bh=KLtqZvRbwbJaTol6oN7BIQ2k7etrDhCdVBh80rPYzXU=;
	h=From:To:Cc:Subject:Date:From;
	b=KtzbOD0xICGpO1H1ey7a+kojCYIJ7/6Ji+KUNZmwLchN3Sk3wKJiQvmX1bBHyYVi2
	 Dgqxp+sAKuArCB/lbDInT9ulKmIDwBCK5HtMfPQB97o3ojW4EFI/aFvixzkzYTwbeh
	 4kRdzEGfpgvk01iY+xfjTGr6j6rbSYSagvYS8tRrkdxnTSgeS14wyzPqdD1dCO5/bt
	 dZhlAGPYL+ER57SZH6o8RQWaEJYaqsmgwNs2aF6KiKlo/ZozWAZpGLABqtMKKGF1Bv
	 E2nBrMYv/oBXMokHw1AgPAPLVeltD44301Irag2F3b4QVv6I2ESv57JehbOsD7S0A9
	 cOsORqUehG5gg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1u9fqk-000000007H8-43Um;
	Tue, 29 Apr 2025 09:57:55 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Qiang Yu <quic_qianyu@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
Date: Tue, 29 Apr 2025 09:54:40 +0200
Message-ID: <20250429075440.19901-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_005754_202384_74FDED09 
X-CRM114-Status: UNSURE (   9.89  )
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

The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
one. This also avoids the follow warning at boot:

	qcom-qmp-pcie-phy 1be0000.phy: supply vdda-qref not found, using dummy regulator

Fixes: e961ec81a39b ("phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3")
Cc: Qiang Yu <quic_qianyu@quicinc.com>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index c232b8fe9846..e5277ce9c136 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4233,8 +4233,8 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= sm8550_qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
