Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9491AC352A1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9X5RS71IyRuw1VDZ4zdTp/2S2r2vJCGQ9rv7uPB4Z0=; b=qKqzzxfLf0KVdG
	VRcOdCNKmtquMzNptO8BAX/Qd2sPV06TRDOBbE2VRs+7nfQwhLWUPV+G8G3e/d+2vrPf1dowPv1EP
	Zo8F2wJKaRIP1s8OpKjvZVrfgLceHJrCtltluQnqwdPOTsrSsul3X8r/1W0SKI/6nfBs+8BqEJAXc
	60hEu7zOw0oHs9F9YpE42Qjmhax8PSoqQWDU42y1xkIcUa6bfjMaoiP0vUIyB/8Oc8pOwwHhX8C8M
	fW9NWAIwDVE9SOF1ON/mRJ61sL4PZ3DHTmSAymNsPLFiAnDPPwH+IgGo0X31Cgp1p+v+Us+CJISPM
	hl8jNKIl6z45z4R77g6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X5-00BUga-Ss; Mon, 21 Nov 2022 08:52:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X0-00BUaM-F9
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7AA8E60F5A;
	Mon, 21 Nov 2022 08:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4EC0C4FF0E;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020715;
	bh=DPEC4Ilp5QnQgwZzP4PbKBn+Zx699/V1FQSwG3qGmeU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o8osry22nL53W47ZE0NwmycIslGm9kD2qDGnYUq5eWCLqZvdYC7U5wtGNQuxIwJ0F
	 zGi/Mu2AKNlqHACcOi2U/GCsG/SE3dAImFGbU5WDXb2lr6mB4c9nFpQBC7jumQxbuF
	 oIDxUEFCGVLF5b9Iaxfj45/QIaDWQ1GauuQXW8cmDi7fubomTWSfGMMNdbTildFxJe
	 qUbaqB4XqtPZFHR0qKbEBh3j7K4d/7oipih11WQG0pVzXMbpUCmKUPfGuBLd2O068s
	 PdhPmxDO6MbwxMgN+rSeuSqwId2xTecvWM8/VnU39XOgM4Hj4zVVtc1NbHyWkSpXv5
	 cuXbyxep+yXCg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WT-00088q-Ks; Mon, 21 Nov 2022 09:51:25 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 14/15] arm64: dts: qcom: sc8280xp: fix primary USB-DP PHY reset
Date: Mon, 21 Nov 2022 09:50:57 +0100
Message-Id: <20221121085058.31213-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005158_603268_508888C6 
X-CRM114-Status: GOOD (  12.10  )
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

The vendor kernel is using the GCC_USB4_DP_PHY_PRIM_BCR and
GCC_USB4_1_DP_PHY_PRIM_BCR resets for the USB4-USB3-DP QMP PHYs.

Update the primary USB-DP PHY node to match.

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index e769b7b0004b..85c674e7e1a5 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1682,7 +1682,7 @@ usb_0_qmpphy: phy-wrapper@88ec000 {
 			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
 
 			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
-				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+				 <&gcc GCC_USB4_DP_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
 			power-domains = <&gcc USB30_PRIM_GDSC>;
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
