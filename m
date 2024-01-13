Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEDF9C47DA2
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqnQtxL/x49Y0k6WfXlpvObvE/lgG8siizQx4D9noM4=; b=ceuZoclkbz8Zdo
	K6rF/mi9OSkcD4/2FZHhx2O8XrE/xBm1K0+WbkANT4ucGQAy1QEmkG9wY2QZVixaiEubQqQrtUTBc
	EcvcKxRIFK+EHrXZ96NaD6yDYQ20bpVF1Vke9a7q3GPStW3o1iufPSs6ecuYfO8X1BM4gphoWK0L+
	fwPbVOWdN0vZmA+WA2zGOGpvMuYKqdORmnfBzADg3k0oaOtOipmPN7gwOWl4K3YHycWfLdDJ27hxp
	kvdV4r6xzzxlJOjMaH7SrYKclZ/aKp7DxgRseicHPe21qOjNa7B3DJVGGZMb/zQ2dDUws2GGC7K+e
	8Hu7X1AmxFi7IyjaJRcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnK-004ZkD-1W;
	Sat, 13 Jan 2024 05:42:58 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnH-004ZhS-0j
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:56 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2cd7e429429so40792091fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124573; x=1705729373; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zs9DV/jaFFsuf/FyKYG2D94+QM9WwP6rWL2xoLmx9UY=;
        b=KfOX8reSDyUCU6mVs7fBNQf6o4WS314C90xyx1MbZ+35nA/3gioWvGGYx2qRxwjXBS
         RgMZ9USK8N2I6wc2phwBcCJ3H2P0I5UAmu3uy/cithTypwznUmfHLhpVJzXl1CAKo7ml
         zWw7oFV++Mnh/XEDleTPzwG5XkhFu5uFuto1RkZhKA1TaaIxbB5e+2ZRC9RK6Xava3R7
         ST+pF4pWPp48S0g6P7K1JVBSPiec9pGpPFkVJPr72HMKvCMZQ3aZzjYHg+PyHe1emE0t
         8++vLx4vLFKlwfdIjnMidgLCF5159IwbVrVTogcQ3TZ6PTq8qEsDt+tYKsZJ0EmUyjrd
         mbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124573; x=1705729373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zs9DV/jaFFsuf/FyKYG2D94+QM9WwP6rWL2xoLmx9UY=;
        b=pFoFT2sF+U5Zswiz1Sn6qUjuC8z8r8QSkbgQJ2ffUp+0qgBeLnVPyRkyFzHyjabrcG
         ctvnbEm35yGeQOwobh8KbMN6RhgFJyY6ATefjK3icBCOoQqLHphWaJicVOM1ItS5bJ+D
         tlUjXNhgFb+Cz4RadJIJHutRFa8hedqdC0d3XAn1AhZ3JpK5Vi0MKB9nIZSlJTkC4/XE
         E8+8V+C3bVUM4ianPFw8ttMAhRXtN/9kYawj2cPdxUBf/XeciKiXlzEwtr+LZPTHumMA
         K2bGC7OZ8YaPKU+LwAOTUofqJoYCOrynwJEZryUdOwfdmyTXgHNv/86TBLjTnl/7yBbw
         UchA==
X-Gm-Message-State: AOJu0YwHIHZFghV7L1N1Agzk4jZL6rr/zBFSXuwtjD1A9DeQuZqSJDWN
	Z9Cj/vQXMsj7z55kERYKRp6KqHq/K+zsoQ==
X-Google-Smtp-Source: AGHT+IGJUtQ8hgr/IfQF13xUO6+a0792Lm2U7lgoN8AnmqKRlCnKHjXQqO8vrvfkcWonklMtDBjzCQ==
X-Received: by 2002:a2e:8791:0:b0:2cd:7fe1:3a1 with SMTP id n17-20020a2e8791000000b002cd7fe103a1mr1212342lji.66.1705124572881;
        Fri, 12 Jan 2024 21:42:52 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:50 +0200
Subject: [PATCH 13/13] arm64: dts: qcom: qrb4210-rb2: enable USB-C port
 handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-13-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3579;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4/rs+MHUItB53QwHSPgf9kfH5rPH7c8tTRRjdfnPLl8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLSizQm9ZA4Y4bbpKWaVIGaR7MUZ8jUBCMYV
 PsYJAo3NiiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0gAKCRCLPIo+Aiko
 1ZRnB/4xXKJ3eGp9xagKvMmv5n4K4r8iL6MDrSZsEvWUvHf1dYZKcZ1wZ8n3G3OBFMXfx+748Rk
 w6gZ9Bd38a/D3e5lOtuKlalCWa2LfigpsH38eWBHOOYAxgJVERGPSra0LTpwOvKCYbHinxjPj4H
 dl96+mHnXx/P4/IRqC/plDCFu4ZCMsieRmd/2DfH+y+/gTi2yiqCQRvNyo+XWvNsOpbSyqLWCmd
 p8srCka3Es53PPlXGnlLfWthSphT0Gzq12DOiOh9SmwLRj/0Su/q/l6ZIsUqFAe7lhLgQLL4zYg
 9YMmYi1tn6dkWcEkyfW+eudKCvZUUBmuy2exLHINoxivMi+6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214255_282557_F1570543 
X-CRM114-Status: GOOD (  10.31  )
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

Plug in USB-C related bits and pieces to enable USB role switching and
USB-C orientation handling for the Qualcomm RB2 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 62 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 38 ++++++++++++++++++++
 2 files changed, 100 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 52f31f3166c2..a96e3afb65bc 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -6,8 +6,10 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
 #include "sm4250.dtsi"
 #include "pm6125.dtsi"
+#include "pmi632.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. QRB4210 RB2";
@@ -256,6 +258,53 @@ kypd_vol_up_n: kypd-vol-up-n-state {
 	};
 };
 
+&pmi632_typec {
+	status = "okay";
+
+	connector {
+		compatible = "usb-c-connector";
+
+		power-role = "dual";
+		data-role = "dual";
+		self-powered;
+
+		source-pdos = <PDO_FIXED(5000, 3000,
+					 PDO_FIXED_DUAL_ROLE |
+					 PDO_FIXED_USB_COMM |
+					 PDO_FIXED_DATA_SWAP)>;
+		sink-pdos = <PDO_FIXED(5000, 500,
+					 PDO_FIXED_DUAL_ROLE |
+					 PDO_FIXED_USB_COMM |
+					 PDO_FIXED_DATA_SWAP)>;
+		op-sink-microwatt = <10000000>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				pmi632_hs_in: endpoint {
+					remote-endpoint = <&usb_dwc3_hs>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				pmi632_ss_in: endpoint {
+					remote-endpoint = <&usb_qmpphy_out>;
+				};
+			};
+		};
+	};
+};
+
+&pmi632_vbus {
+	regulator-min-microamp = <500000>;
+	regulator-max-microamp = <3000000>;
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
@@ -607,6 +656,14 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3 {
+	usb-role-switch;
+};
+
+&usb_dwc3_hs {
+	remote-endpoint = <&pmi632_hs_in>;
+};
+
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
@@ -618,10 +675,15 @@ &usb_hsphy {
 &usb_qmpphy {
 	vdda-phy-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
+	orientation-switch;
 
 	status = "okay";
 };
 
+&usb_qmpphy_out {
+	remote-endpoint = <&pmi632_ss_in>;
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&vreg_l8a_0p664>;
 	vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 76c429e8ebab..252074219bed 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -880,6 +880,25 @@ usb_qmpphy: phy@1615000 {
 			#phy-cells = <0>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_qmpphy_usb_ss_in: endpoint {
+					};
+				};
+			};
 		};
 
 		system_noc: interconnect@1880000 {
@@ -1614,6 +1633,25 @@ usb_dwc3: usb@4e00000 {
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				snps,usb3_lpm_capable;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_dwc3_ss: endpoint {
+						};
+					};
+				};
 			};
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
