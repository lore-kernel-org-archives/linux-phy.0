Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AA1C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vl40qvsT5CsdSOMxH8KJCZy45T07rhQHjV5LFjl6nWM=; b=PgZUbhLpFYvUiL
	Ayc74hb49UgzK3C6hsqMQLC2VK+EorzaSQtj52C4PsFPleMipb4reeFwc5WKbnAVzmsfeiE21VjOv
	QaV2zAfjquU4DZztQxUDgF5ZtMmdeB83owZ0jmuZG/P+V2wNMSsHo/p0xxnjt55gQBWgQ657jxq+m
	vQ/h/chjFm7lNdjFjz637WnFEsUb6RFr4jHOzIBEukGATSDVRfl1YGO8EZQPVqr8oT8Wc3G8/e2mz
	UlYc6IFESvsvaUeonBr6c+9Lz1PPyxQblJ/XbEfqIpcJ36dhHv+hu/sFL2Zx0JgpN2H6oIy/ONRLo
	o9cDhcMtTzsNxp6osb0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yw-00000001A3Z-1qrv;
	Thu, 07 Aug 2025 16:33:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yu-00000001A2s-2ScW
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D2464375D;
	Thu,  7 Aug 2025 16:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBFCAC4CEF1;
	Thu,  7 Aug 2025 16:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584431;
	bh=Ab/Ah5RUXiTyINsI8I1OGN6wqisIn1u/rAQpJWs7vE0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=m+2RoI+cFka6dYRS1AJnE/6VrN5i6v4VyoZIVMn/3hMloFoMUsN3dq7tidXoVIQZ5
	 jZux80Ih73hfD2Nt3P97N3NjR+Y2OwLwWZ+K0AjAsepbPERzLMHB0Z5K+jiO6IQ3g8
	 eeAagWCZzrc9p+gGmXEcrsUOsYTld2oQYx0hs1Vu8jNAc381AGGOrT/+F+t9NkpAGQ
	 Xt11NbBFdEuoum64oMh++EGN6LJRrRUIS3aVXuDwxH0/yZvU4Nll/l/tZsx2rqxVYn
	 JHzWPAgSQzhxgZYU9Zlq06tl3oP6d74z7nAalYoNscP1Ckt6CCQiJc40sC5uoYx1Sh
	 oyhW+yFUPV2dA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 07 Aug 2025 18:33:24 +0200
Subject: [PATCH v4 6/6] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set
 up 4-lane DP
MIME-Version: 1.0
Message-Id: <20250807-topic-4ln_dp_respin-v4-6-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=1518;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=fpPnWdsJhI/IO7HnqnWUuSXUlLyBucXjVncZV83CkyU=;
 b=5ncn1mUnlV92O1tj3/FTe+weymWpPODxEKbJ0u5j7X+ZRUDTt5bd46Y34DmDQ2fEd78FaZLYe
 W2tgmWFbAjBC4v8W3dNvdLHqVqqw3Loj2mJLn7d3sgcmFVSgstbvaEP
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_093352_653169_B1C36D26 
X-CRM114-Status: UNSURE (   8.45  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers and allow mode-switch events to reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
[konrad: reword]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index cefecb7a23cf579b1f62ef6fccf9a27a6ea92ac4..b298ec1162357f7f273cb603465dab8388d4b38c 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -726,7 +726,7 @@ &mdss0_dp0 {
 };
 
 &mdss0_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
@@ -735,7 +735,7 @@ &mdss0_dp1 {
 };
 
 &mdss0_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
@@ -1360,6 +1360,7 @@ &usb_0_qmpphy {
 	vdda-phy-supply = <&vreg_l9d>;
 	vdda-pll-supply = <&vreg_l4d>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
@@ -1397,6 +1398,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l4b>;
 	vdda-pll-supply = <&vreg_l3b>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
