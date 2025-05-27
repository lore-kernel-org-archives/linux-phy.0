Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C9E8C5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4XwqtMwjEKfylTBUpQ7Uum7aoXql0mt5nrA3KAx3AQ=; b=j0sHBWOZz738uM
	IFYKUORXilX/bzQuox16ixFnZurgPpyMMeu5xKx6qq9U8l0r2cHwB+XDDeUUrTlNhigGrLDgZDAju
	bfg7N15NPPSATM7oFqEPHUu4Dg+uMG1i2XrvOpLwlerKmAopCdsQ00hOza07YrH+t++vD+JrmxqGt
	+LABqZOs38KjvxEqFHqZ7lVw8WQbSjUQqeMAO6FYH/ciPoWNi7f/2vmoJdTeVGbUQJAONFb403xsb
	RvIFQpHU7L4pZCDu5cshi0t16ddGq0LIn1KlRY65zkynn7Po9FPKAfPlBQ2pil1BCZRmgTJdAaVty
	dt7fC4ytPxLtLyDo8JnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16Q-0000000BWeu-0QZh;
	Tue, 27 May 2025 20:40:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK16P-0000000BWej-0GW7
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 80C7F614B3;
	Tue, 27 May 2025 20:40:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86AB0C4CEEB;
	Tue, 27 May 2025 20:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378448;
	bh=RVazM5ZtiGWCT+v8DRQoiisLlKYFeeVIeRZlRvqZqDg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fRO4fevTyyA62iyayKIH0sMFandXs774MO8JFXftoyD1qAkx3qkiAQ5CkCF7UVodP
	 HXnMGvVWX6s+wp6cxUC2WN5dv8OeS9/cM/uJUGYa8CHRlLXq/rMo1poimtyXE8E/9n
	 seA3vdvizNji73PlhEMwpXhOMlcmCVFm4i8vCd7TaQf3PzMNe3eRyQCeLU8R35YE6P
	 rSmFcQvAkMrldRaqyJV1IoKiqY7qRxmjkWJW2ZiZ7kAMOxeAaid/Ju2J5BIeCB7afq
	 Sb5ycg9Xnh1duZVd953E9aorKmFTMeyQmeGNknmDlVUbviqA1O1w3frCfrO0IkqT6j
	 gBqIFzXhZMy1w==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:08 +0200
Subject: [PATCH v3 6/6] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set
 up 4-lane DP
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-6-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=1518;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=dS87KXTh0HxELr2bjO6fgUYK0yoQHdoxs9VWcCRgRHM=;
 b=ijTqtJXk3zoLfEpe5EaAa8pNz/m3Ca2XRRwiXvfAsXRJeq978apZRm5fRDWdC2mcZ9mYuuUjl
 Rxo3GZA8wfgD8xmlSS5YGylOxzZcRLC78JdmkLgIB1uGNz1pLQyJG3p
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
index ae7a275fd2236a2c71808b003fbcb66687e6e45e..336704e2a806e74c98a8dd483d8da0311df95389 100644
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
 
@@ -1358,6 +1358,7 @@ &usb_0_qmpphy {
 	vdda-phy-supply = <&vreg_l9d>;
 	vdda-pll-supply = <&vreg_l4d>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
@@ -1395,6 +1396,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l4b>;
 	vdda-pll-supply = <&vreg_l3b>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
