Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 787A5C79F80
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 07:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eg/SqrvEjl5eWLGo8ZPIplzHJU8KNcuomraJrz6lm2w=; b=eTuVVBHbYfTiqv
	G3O5D4IwVnsVkIYkQTYMqTvN0vOBRL3jtfZbp3ifzraBnpr/XunKpv0xcHbtBEWyDxXnY3ICcW/Qo
	dghc8kD1abLDMFTnpuN3q1kQVvTJxpDgO1AVa4Kk+fglxeMfaCFIl8u18WPwrv/rCMmU89siBISC8
	ujkVQa+Ca0EzkEbApSxtXN5hP5A8VXBx4wus2W6taDvhXf/+CgNUj11uZL/poPZXw3WNp7ft3XlIo
	qrpnuxEzDnQpqFvTsj5x3VuZQCmpXnNYaAOJ83bjxdHXkWbML9e3+SXutz7eKaFJKhz7A4c1dD4e3
	e2WOQRdvIUy8DFU8jCOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Omw-00000001J5n-0B1e;
	Fri, 04 Sep 2026 07:56:42 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Omt-00000001J2J-0P1T
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 07:56:41 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc1ab16a9b0so29290a12.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 00:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788508598; x=1789113398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GLyFekJ0N8Lq/xlKUVCeo3LPrbIlgpH48f7aKuVq5pE=;
        b=OwgJegL1U4BEuDHIGpRyO4VFl8vcZXzEaJ9sBWkHKq0pMBmYM3iShyP6LKvBTW/cCZ
         s5KqkC70vHWlQiahKHaaOfsZ7woHL8lK9gCOsW2F2pgKloCppgqTlzT/qK8RDCikZ+Lq
         o4E2GwqadEhxpM1R8Ey3bp8ZKCyutnj1g2B7rEAvnyHUyqWpvDg+I65ckynG2R48TgyL
         T8ImTzKYHuuFmwc00whg+PVOMDy9Gk5rxzamDv9uyi7if2u9UpnyQ3Ixnt8YuM5Pqb0X
         yF5y0WFiKr1NEYKHMbSJPmSlN5N3yTAcQwR6TQVukRIjEAD0As9NcNmtYc5boktxVAoO
         x92Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788508598; x=1789113398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GLyFekJ0N8Lq/xlKUVCeo3LPrbIlgpH48f7aKuVq5pE=;
        b=nNGxvtZj2jLKRatIgKnhbbRwWgljunpXlBt/EzW+PAjrFiA6ha9btkwll063DskQ49
         7mjKIUviWUKtcxGSBXfKraa+5oAZ3N4DvsmS5zfCJpk1Bni/EXAm4/z7wvFkRueflVP2
         +pvnP4+FQoerHQh4CgUVwJsJMZQ7kZAr1XbIuBdecYU/u1se0KOQo5O92BSwPrM5JHhU
         RO9MAJEEnHyrJxJKKZvGxXFK85DnodEkLFJZoYbIGG0x1bBHxnFvccPHHBF+nxJhOO1z
         C9PhJC/aQ0O7abWRyfTnCuweCBltq9GjKi+w8jMcmT4R9V3mw9bfG0uixekx2yns5Z3N
         C2PQ==
X-Forwarded-Encrypted: i=1; AKwUvBzGLiLAZ1YQeYtVSTV2R7eNnJEK3mbDiLNDuvoPQTXtHMZ+iM9K2XYsT5p4pQnWoU/xPWN7RuxDuuk=@lists.infradead.org
X-Gm-Message-State: AFuF++lT3FqkTDjiZPGmokgq5pu8pOFFPt5ax5sgTiV2y53ZKXxhwHQE
	U3qlkXKqEZjG+Opsf2EGxund5bWEjGzwjN1gJCGt9kA3K7V3KxTy13KQ
X-Gm-Gg: AYBFou3bS/MYfI+hSWN5I03+QouFQm3wEvl6quQ2NvqEL3gKCabtGdq8AfKsOVZGluR
	1kzT1bN0IbHuU4Bfv/iVmGQnNT6uyroPiuh4UuzdLrW/XshmyvVUJ2XtzEVUb8p4UjBK7k4xBO/
	WZ+IcgspWLdtAMdXP1YYkRUiZG9MYQd12qFmQzuxsrCBGz7RdDL9rc7laR8GKcb8PTYKCrn16uq
	2Xamr8JQT9SuHjQbWvBbx8812QioIk3ET5XUr9RA8JtI0wMm+p0QdUetdoxEVJ7BglIw/RZFQcM
	zggh/IuX8pXAF4dFKuvVHNJrF8tZmdv+wRqUduPQ3fJuMuVPoaWsnncEgE5a9DADs+LcurugXMi
	fPvWPclWp8tHPYTlDrqWROO2tiwdX0F8Vj44IhgKixGGEh52IQF3egA1bsPWFPdHGnyicECIjCB
	Qq+8ioxjFxTS1ueGyG1pmq5aY3v2HmelHRxQqsogM92SZksHvPIYxH2YXSz7+eSR5bwCqE5Irjz
	XIv5eIJl4RIGQ==
X-Received: by 2002:a17:90b:3882:b0:396:a47f:d38f with SMTP id 98e67ed59e1d1-39b268ce386mr3923722a91.3.1788508597140;
        Fri, 04 Sep 2026 00:56:37 -0700 (PDT)
Received: from jason.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b08c397b1sm9356695a91.8.2026.09.04.00.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 00:56:36 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guochun Huang <hero.huang@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jason Yang <jason98166@gmail.com>
Subject: [RFC PATCH] arm64: dts: rockchip: add mipi csi-2 receiver nodes for the dcphys on rk3588
Date: Fri,  4 Sep 2026 15:55:34 +0800
Message-ID: <20260904075534.574037-1-jason98166@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <8e10a8c0-3648-47b5-9131-a1abdd7eb8c5@kernel.org>
References: <8e10a8c0-3648-47b5-9131-a1abdd7eb8c5@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_005639_139200_6EDE5C55 
X-CRM114-Status: GOOD (  11.65  )
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

This is test patch, contains the following 3 changes:
  - raise #phy-cells to 2
  - add PHY_TYPE_DSI to the dsi nodes
  - add mipi csi0 and csi1

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
Hi Michael, Krzysztof,

Here is the test patch for
https://lore.kernel.org/r/20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com

I have tested imx219/ov5640 stream with csi0 and meanwhile stream on
rpi panel with dsi0, both using mipidcphy0.

Related commits:
  2e177b85541d ("arm64: dts: rockchip: add mipi dcphy nodes to rk3588")
  0d0947766d87 ("arm64: dts: rockchip: add dsi controller nodes on rk3588")
  5052c99cf052 ("arm64: dts: rockchip: add mipi csi-2 receiver nodes to rk3588")

Best regards,
Jason

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 76 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index fc1fdbfd3162..dd2bbc02f8d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1516,10 +1516,18 @@ vicap_dvp: port@0 {
 
 			vicap_mipi0: port@1 {
 				reg = <0x1>;
+
+				vicap_mipi0_input: endpoint {
+					remote-endpoint = <&csi0_output>;
+				};
 			};
 
 			vicap_mipi1: port@2 {
 				reg = <0x2>;
+
+				vicap_mipi1_input: endpoint {
+					remote-endpoint = <&csi1_output>;
+				};
 			};
 
 			vicap_mipi2: port@3 {
@@ -1568,6 +1576,66 @@ vicap_mmu: iommu@fdce0800 {
 		status = "disabled";
 	};
 
+	csi0: csi@fdd10000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_0>;
+		phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_TYPE_CSI>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi0_in: port@0 {
+				reg = <0>;
+			};
+
+			csi0_out: port@1 {
+				reg = <1>;
+
+				csi0_output: endpoint {
+					remote-endpoint = <&vicap_mipi0_input>;
+				};
+			};
+		};
+	};
+
+	csi1: csi@fdd20000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd20000 0x0 0x10000>;
+		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_1>;
+		phys = <&mipidcphy1 PHY_TYPE_DPHY PHY_TYPE_CSI>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_1>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi1_in: port@0 {
+				reg = <0>;
+			};
+
+			csi1_out: port@1 {
+				reg = <1>;
+
+				csi1_output: endpoint {
+					remote-endpoint = <&vicap_mipi1_input>;
+				};
+			};
+		};
+	};
+
 	csi2: csi@fdd30000 {
 		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
 		reg = <0x0 0xfdd30000 0x0 0x10000>;
@@ -1788,7 +1856,7 @@ dsi0: dsi@fde20000 {
 		resets = <&cru SRST_P_DSIHOST0>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy0 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_TYPE_DSI>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -1816,7 +1884,7 @@ dsi1: dsi@fde30000 {
 		resets = <&cru SRST_P_DSIHOST1>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy1 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy1 PHY_TYPE_DPHY PHY_TYPE_DSI>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -3429,7 +3497,7 @@ mipidcphy0: phy@feda0000 {
 			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY0>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 
@@ -3445,7 +3513,7 @@ mipidcphy1: phy@fedb0000 {
 			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY1>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
