Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9AB7C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9H7SAIzS3OaJMf4GnZzc5XhgwlOcL47p5VeKzf8pq4=; b=3C4F1Z5jJU3Gms
	D5I5JlUhDLLbIK+SyIzVY3VEavvJwlKNhafgMNjnaNs1Wu+P/PQnYKn9QPFnGennX30gCqd7DDGUd
	MLpTfCRxB3siNmjDJcCqmEcTqfqspvLdcq6ku+1q51HYd5t5+Ch+rWOwLYluh6mfBw2N2ezJc+ABt
	TEfwCyQCaTZPxRHPEfolOlWC5HTa39iAoz2b7bUlAgWpWxVL4gucNf8XpzWzrzS0MwjgOI4oX6QmU
	nhWeNQGs5KKm/GETvm9u/IFtpKFk2iTQMQcQlRXYPK4TcNFk2801xrdGneGT7XpPT1ok42PAp3crs
	EPemeDDRdx+FxnBvp/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelv-00000004vOc-2P4r;
	Tue, 28 Jul 2026 10:10:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelt-00000004vOQ-2siK
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:10:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0300C60AAE;
	Tue, 28 Jul 2026 10:10:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C5FF1F00A3E;
	Tue, 28 Jul 2026 10:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785233448;
	bh=C2lC3b1p9wpX1dDqiT/jVML7gi6qkNoMCPmJr3mtY7E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=ABQ1g51Il/uuahGBZA92Y3+8KO2/SEefyfsrbxSfq4RA+YQv2NZBsruNg0FOfiN51
	 vdfDWRhnB/1+SfTuoYyDYrS0QIvkE7wtVSp0gYvRq59PwUdDx4VaNsoHbgLfiImmiW
	 FbH5dO8wvyls4B+PGxuCFrikhDAy2izbjSaxn3g0Z3VwOMdPWuYt5IwRgNjHRTLUiD
	 hJJ/K/6bTocqy0j4XkqSJCvT0yHdE2yuAIrY0MHo5PicbTHogjbY+IIpyExZLkgDCW
	 bYX0Gbqf4LgH/VupnNx/QS+NeOhYQCBFktVivgX70k7gjNhZiYc/rN/5n3/sTbQNUB
	 eo9yBAus3nmzA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 28 Jul 2026 12:10:16 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY description
 for USB4
MIME-Version: 1.0
Message-Id: <20260728-topic-usb4phy-v2-5-5d9dd5149ec7@oss.qualcomm.com>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
In-Reply-To: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785233420; l=2189;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=bT0fXd6kJ0VzXUtEIvKV31ALc3gCZ+MqsJl/PQQkGFM=;
 b=C7QdoALEosX526pTHFcaG7AYAQ37lCycEsHCIA6ewSC3FcNK8a9YOr0JuzgkSNfnL88xh9Rur
 T0TKeRI0zPDCSWUw2M21rnLHqmhSM43Witixb4xoRRhg02s7zER/6Na
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

The USB4 part of the QMPPHY requires that one more GCC clock (P2RR2P -
PHY-to-Router, Router-to-PHY) is enabled for the PHY to initialize
successfully. Describe that.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 09527dcf9576..2effc0319a01 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -2825,11 +2825,13 @@ usb_1_ss0_qmpphy: phy@fd5000 {
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_0_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_0_PHY_GDSC>;
 
@@ -2896,11 +2898,13 @@ usb_1_ss1_qmpphy: phy@fda000 {
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&tcsr TCSR_USB4_1_CLKREF_EN>,
 				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_1_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_1_PHY_GDSC>;
 
@@ -2967,11 +2971,13 @@ usb_1_ss2_qmpphy: phy@fdf000 {
 			clocks = <&gcc GCC_USB3_TERT_PHY_AUX_CLK>,
 				 <&tcsr TCSR_USB4_2_CLKREF_EN>,
 				 <&gcc GCC_USB3_TERT_PHY_COM_AUX_CLK>,
-				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>;
+				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB4_2_PHY_P2RR2P_PIPE_CLK>;
 			clock-names = "aux",
 				      "ref",
 				      "com_aux",
-				      "usb3_pipe";
+				      "usb3_pipe",
+				      "p2rr2p_pipe";
 
 			power-domains = <&gcc GCC_USB_2_PHY_GDSC>;
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
