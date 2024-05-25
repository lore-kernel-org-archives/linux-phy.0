Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3624AC25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGBd9z12kJxSoaMbsqhsjjw8aaj0P513C9KmDjwj8hM=; b=EiIs7i/3tviT+f
	jcXupi315W0+N7SL0UDD1aZepYiSEHwq/8Rkzj4Q7WqQGagTEMUxA/qXGIYdw8XuRGIIzBJNZBQH8
	fApA7//3Xnu2WbVfyGF1CgVljU6WejEs5NnRf9WOkN6SchABrOgd2tlhGmQ8ZjqG+O9hOJgMTj3z6
	3+G7recYPO+9sNK9Y5De614pMdjJWjClBda8NDgY7itLHeA9NUTwGrZ1CLnHOSeGqtcfbZ6FO5s2k
	jFhDOMIxX0SkWTzq0QypiG6oQltsySVUeUo0pNFUAVKRTIwQY6M/qcZ1pQRRn+lhTtXe22u2jOLaG
	nrs4vCUTbK5ri+6+QQNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfy-0000000BSty-3t65;
	Sat, 25 May 2024 17:59:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfw-0000000BSrr-0lIY
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E43CECE0A26;
	Sat, 25 May 2024 17:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDB84C4AF08;
	Sat, 25 May 2024 17:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659961;
	bh=KsAmp/Jpl+aoBvYuIOCjghROnM89Np+AJ6hEEntneRk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iFd+V5SWaySiqa+AKMAxNj4ROI27gCvr9EeyKKdLYHBPi8BdU5F53chbEH/sPxV5X
	 k9LNheXkF5QX4DdupPwC7dqMeChyxughDdxQEnvtRAp+pxzUY/JPeDbQXejyg64Bfu
	 oURv7nSgN/Xl1xH1Fm96HVxnEOCfPQFSh1oawO1Chk33V+NMmIfAd1/v3w18OwI1QC
	 836e85SXr/OuxmCgZDfAmDMAaNE3h2q5P2amuArTzn0AZIIali7TFxRfj5UUyu3Fyd
	 3XvhA3GImEEiuVUqKmo1oTMoeNo2FCiVjYUTiawipDF67wyRcBZgqPuT14qfwlSbGW
	 mMmAqeDolcuqA==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:04:02 -0700
Subject: [PATCH 09/10] arm64: dts: qcom: sc8180x-primus: Enable the two MP
 USB ports
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2196;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=yBfHZjKorUkAjuU8wZYDXMlV6YNOtdO+oEQ/Pdz50CM=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigNgg6i3cQBkU0oOk8Bo3ZOhSDH+NXONlgRj
 HQ3w6aA4ruJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDRUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXgWRAAl5ZBUWIZdNNTaSQO8vE74nOcbTkM8cjnSIPSLMx
 6PQR4YGO/o0Hih4wEyKTWd6NM//+WYNaZukmoqReq9tWyCgCDnDBZ5iYgsHYYlP+7DD0zwcWn1O
 rxdz81pwNfh4Py0SSpyL3ftS81uDvloqwvE3NP/6Lw8K1+xw8vqiRnfzdy5ShQkJYqktv6Lzj7j
 nOC2v7/pY2p/ESe9093mS7LIoqE5szuiVBv8lRAsTkQsULV0EaIYD9Jq9XMhxU+H3Xaw2xbFSgU
 4J0S0E1BuOFiM+GxavZYmJh2yhirc2zDPhjH0W9Ya89GCsXivxqAoNOTrzukH0GecqSFJPNK0cs
 m39e69uMpAKmQ+c4rUSpIBVduAcBqBY1tzQLix2XcWdpBl/BNf2wovUXynqLLS5eCp3Cu8oYkzZ
 l9yppklzlB8nq3aUaKk95BUnkkahWKMfj1Ywyu7RajnaN1m/mo6onCZLF/vah9LlJb6N3jNfdRR
 voIdQUdG3/O2wcM3ohWrx2mcvhjaRPuQK9twLewFjdeocr7TU79gKkA+TBsDoKuudZBLOWR/kTQ
 u0uSmgZHQ5LHW6eJII+iLuffCOlamNIipXtwabtcN1GAE14WHn9JR4tedWXd2m94GK/Qp+Zpjgb
 PmABA7aLMlIMuKdYnZevDmG3A2tOBYR7RetLoARHhQc4=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105924_652070_FF43F370 
X-CRM114-Status: UNSURE (   8.04  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The SC8180X Primus comes with an AUX card with two USB ports, fed by the
two multiport ports.

Enable the involved nodes and define two always-on regulators to enable
VBUS for these ports.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index bfee60c93ccc..f7632f13ac43 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -223,6 +223,32 @@ vreg_s4a_1p8: pm8150-s4 {
 		vin-supply = <&vph_pwr>;
 	};
 
+	vreg_usb2_host_en: regulator-usb2-host-en {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_host_en";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		gpio = <&pmc8180_1_gpios 9 0>;
+		enable-active-high;
+
+		regulator-always-on;
+	};
+
+	vreg_usb3_host_en: regulator-usb3-host-en {
+		compatible = "regulator-fixed";
+		regulator-name = "usb3_host_en";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		gpio = <&pmc8180_2_gpios 9 0>;
+		enable-active-high;
+
+		regulator-always-on;
+	};
+
 	usbprim-sbu-mux {
 		compatible = "pericom,pi3usb102", "gpio-sbu-mux";
 
@@ -623,6 +649,40 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp0_hsphy {
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+	vdda33-supply = <&vreg_l16e_3p0>;
+
+	status = "okay";
+};
+
+&usb_mp0_qmpphy {
+	vdda-phy-supply = <&vreg_l3c_1p2>;
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+
+	status = "okay";
+};
+
+&usb_mp1_hsphy {
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+	vdda33-supply = <&vreg_l16e_3p0>;
+
+	status = "okay";
+};
+
+&usb_mp1_qmpphy {
+	vdda-phy-supply = <&vreg_l3c_1p2>;
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+
+	status = "okay";
+};
+
 &usb_prim_hsphy {
 	vdda-pll-supply = <&vreg_l5e_0p88>;
 	vdda18-supply = <&vreg_l12a_1p8>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
