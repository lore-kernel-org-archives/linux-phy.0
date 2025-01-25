Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77F55C02181
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 03:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bH2ojJLPtowYHWRqLKNrM1MMxTU5/dnPwNeFHaxPPE=; b=Q6liR0M6RuBPCy
	qO0fnlvkkwKQlD6Bs6Y+PhwIpqJ7VfTkwqdGG73N8MNjwO7k3uGDuMTmDdhnDmguaIZJuUGAtk7vg
	q/pwFHxaAyb+V8znpcTlomO9JyCJB/yYKPudWF50mDc6pFTZlopS9WfSbQ7+WVEm7b2jE1vm7Dvns
	/3Ky9ufGvEAyfZ52D8byS0DN1wc2qCSv6P592jEq3QYFpNw27U1CLBgD4AVYib8Wcnr7+MpjWrzyR
	ga6re8/A96KMJSfArEr76rTqQO3KvbGQ1x5XLv0g3E5qz/+BJC7yLlv9fgnF4wxXMIzoUIQ/7VEO8
	agAwoMEebLpskQfi8SmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtd-0000000Fxpb-10TX;
	Sat, 25 Jan 2025 03:31:45 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtb-0000000Fxob-1iLL
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 03:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6E530A40A83;
	Sat, 25 Jan 2025 03:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4317C4CED6;
	Sat, 25 Jan 2025 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737775902;
	bh=GDujCMhOVVbF/OGkA/cD0FQzNrWz3/J//fAtWlpG0fw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KdRvdploAPIfn6EEtynU0HDdM0aQPYTyG/c4wjZB+1Bc3g+CZFIWk6D6Wgy5pTti5
	 6bHuKWW5V3zlJBiGPxeTtIdxQJfKnPK1FldhIh89NYXnW+ofF/u3igx0aZ7IrmJXwQ
	 BFJT1Obbk+B/2aJ1c6uQEQaJHujyTZtqVqxoDpgwZwLyIYGoE0/nDz5E4kAYswe1kO
	 JshrPKvgteelV40A9ybdUTnryJ7Nqw/y9oRXc0EwOsP6TXK9a63PpvsjCwS+VpYHo+
	 k4JBCVgFqjYC3Ahlb0Z8O+tGxuF0idbEBM/SFcoNMpeuV3ZzO5VkPfmciwginZGqyR
	 V3hPobjiZoTHA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Sat, 25 Jan 2025 04:31:20 +0100
Subject: [PATCH 4/6] arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR
 resets
MIME-Version: 1.0
Message-Id: <20250125-topic-x1p4_dts-v1-4-02659a08b044@oss.qualcomm.com>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
In-Reply-To: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737775883; l=1504;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=//cWEbi2fnq+Tpg4TDBCdb1vBluwbx64WbsKihfsqNA=;
 b=jQMru/hQw4aehAAXP9OupLWu1ucELuM6zrqR4TDeUoHjoT0I2sQlCYpvspCdD4p/oY5G7Yqin
 DCUA9PPmhzTBaSNr6xyovArY2a6Bs7AuULmECOMSC9bDLw984fVkmYE
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_193143_525835_155533CB 
X-CRM114-Status: UNSURE (   8.73  )
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Asserting the NOCSR reset line keeps the PHY registers in tact.
This allows us to avoid programming long tables of magic values in the
operating system.

Wire up these resets to PCIe PHY4 and 5 (it's there on the others).

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..a244cbb84aecc23ce11414c41f2e5d0905f455ee 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3558,8 +3558,10 @@ pcie5_phy: phy@1c06000 {
 				      "pipe",
 				      "pipediv2";
 
-			resets = <&gcc GCC_PCIE_5_PHY_BCR>;
-			reset-names = "phy";
+			resets = <&gcc GCC_PCIE_5_PHY_BCR>,
+				 <&gcc GCC_PCIE_5_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
 
 			assigned-clocks = <&gcc GCC_PCIE_5_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
@@ -3692,8 +3694,10 @@ pcie4_phy: phy@1c0e000 {
 				      "pipe",
 				      "pipediv2";
 
-			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
-			reset-names = "phy";
+			resets = <&gcc GCC_PCIE_4_PHY_BCR>,
+				 <&gcc GCC_PCIE_4_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
 
 			assigned-clocks = <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
