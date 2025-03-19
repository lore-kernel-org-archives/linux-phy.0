Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C5BC35FF3
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 03:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XKu/eOZ6nyZNm5CfX+YFEVmh8Ut8B9aJMIGAOERqWQ=; b=AdAlTfzBsKonke
	ugFLTiOd+yhwxKAar57unQiNMPSWOeALvEcuyD4XUfmuZojJnRaw/MVriFqbqWnDYRMPi817lsfCF
	3OOPRDzBfOA06D5PCvS7zskS/2Dy4Gf9MZ6QLskinuCO/Qht2Vaorfl3C7Eiv7boLbC5fhVwtruGq
	/YsdF6nzaeXpX2QIXe2rPpriOBkH7tSzVfbJTjsdwZrqqBG1Nc2/WGIU8ab21BoHCvCiLqKQWkO9q
	zERKzWjEJSJDQLVB8f1Gvh6Sbt0qfLGcAuHBL3u/SifhkvfXjsix5QxasQQ9iskL290j1NS5OsCwx
	ZVVRPLayS5Fvrt+0fVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1H-00000007szt-3KIQ;
	Wed, 19 Mar 2025 03:23:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1C-00000007sxb-1f0E
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 03:23:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E1F95C59F9;
	Wed, 19 Mar 2025 03:20:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4540C4CEF1;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742354576;
	bh=A+qGhWclSTQgJLfO6HsVTrl9lT2YLZYjDUmxW1OxdLg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=aXZaKHMuPh9SMOMyJIU2qNcHonFUYFKzCoruEMpmgJwGko0OmlQArTa1+Mu5aLN/Y
	 Zn89NaWXrjH97f7ByzqXzxQ4vggEpOUA1xIIKJLP7e5iTdEPS5qUtSnAkti3sBbWBK
	 wuSHMaQu9XDZQmzNP1cdASBObYl4mXvxuIGGXANwQy4VowdFqDiSOad3uVjWNAKZJk
	 6zyVxWNYtemH3hGqGTX7U7FD+rMKPNMk//hEQUyenYQ5Y4+o+gqxQGrOqVP4xqXP0h
	 ajhZNbnBVg0FhHUs6AGYmG7PyWEhsXiPm+QvfA+tS5s49Aq0T3JMq6waP30dxc/IhE
	 EMcxKoQv+JIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA79DC35FF3;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
From: Bjorn Andersson via B4 Relay <devnull+bjorn.andersson.oss.qualcomm.com@kernel.org>
Date: Tue, 18 Mar 2025 22:22:57 -0500
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
MIME-Version: 1.0
Message-Id: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
In-Reply-To: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742354576; l=2311;
 i=bjorn.andersson@oss.qualcomm.com; s=20250318; h=from:subject:message-id;
 bh=KSwrj8xKMzxf6ypfNwkySkK2Q48YHl4Qf210H7WoC74=;
 b=p4E23SmrYTjT4d3hpFlI9Hk/U1ZFSFLDMzYhgP7g98WcIrxdMTwAnsDGcJ40o5WVDjwTVMyUa
 6UAUGhcdcoIAE2ziNSxH2EgRJa/qBXHOdwBBpylHI6W8+1DTAxn2zBS
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=rD3O9C9Erg+mUPBRBNw91AGaIaDVqquHZbnn6N6xh6s=
X-Endpoint-Received: by B4 Relay for
 bjorn.andersson@oss.qualcomm.com/20250318 with auth_id=362
X-Original-From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_202258_540171_04FB1608 
X-CRM114-Status: GOOD (  10.95  )
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
Reply-To: bjorn.andersson@oss.qualcomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>

The fingerprint sensor, hidden in the power button, is connected to one
of the USB multiport ports; while the other port is unused.

Describe the USB controller, the four phys and the repeater involved to
make the fingerprint sensor operational.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
index 967f6dba0878b51a985fd7c9570b8c4e71afe57d..a35557c562d771e2ce209fca05b82c1943d70f63 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
@@ -744,8 +744,21 @@ touchscreen@10 {
 
 &i2c9 {
 	clock-frequency = <400000>;
-	status = "disabled";
-	/* USB3 retimer device @0x4f */
+	status = "okay";
+
+	eusb6_repeater: redriver@4f {
+		compatible = "nxp,ptn3222";
+		reg = <0x4f>;
+		#phy-cells = <0>;
+
+		vdd3v3-supply = <&vreg_l13b_3p0>;
+		vdd1v8-supply = <&vreg_l4b_1p8>;
+
+		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&eusb6_reset_n>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c17 {
@@ -967,6 +980,14 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	eusb6_reset_n: eusb6-reset-n-state {
+		pins = "gpio184";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	hall_int_n_default: hall-int-n-state {
 		pins = "gpio92";
 		function = "gpio";
@@ -1172,3 +1193,37 @@ &usb_1_ss1_dwc3_hs {
 &usb_1_ss1_qmpphy_out {
 	remote-endpoint = <&retimer_ss1_ss_in>;
 };
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	phys = <&eusb6_repeater>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p9>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p9>;
+
+	status = "okay";
+};

-- 
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
