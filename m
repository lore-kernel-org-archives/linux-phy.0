Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D5E606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2Tr38JzF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=I2out3Jn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eujCDn5GmxN1bH9dCyeeUGQJ36HXFT7sUQL0UEsG7hc=; b=2Tr38JzFWR1p/BsrN1ZI5TF++e
	taK5RIdzjSjxfgn5YZsLMM5WvjPd+jgbZrJFz4e8rPNlMyhtH96eyp+SmHM7EiXx2MJQD7SW9lS7J
	ESK7o7RtsjTm3Z6I5tbA6GBopJp4cQE2WETBDRiklttkid4Nd5qeN+G7EkC1gnzaA68VghuWKdKvn
	h63RLqDOPGNvaS8QZMTpYSP15Cd8ZcuLydvVroaBGy9TvFKPt327Cpk65LGdUmZ/5tusZaBXa3DyX
	eXGfAq+iCm/ayeWlqYQcdHbR0GFSz769YnokBWGldM/rQyjC0pWpbClo3Hxlkh5lGqlh89gPT04dX
	Hl47RHDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYev-00000007ohe-3rWK;
	Wed, 18 Nov 2026 05:56:41 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeb-00000007oDW-2Mpm
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 05:56:22 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-cd63b18598dso5866a12.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 21:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981381; x=1795586181; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wQwtBGptsppIiSD2EEtPZn/sWs62aWDTih2dvDjWrWg=;
        b=I2out3JnAdMBQCKSmn6c3/26hfmhfNtT+m9zdyev99G8vs1K4F1T5MQOuaEzU0PAhP
         sU+ECNq8Bp73gQz0/rplH9gPFbZ2XGSSFTp+bXzDwWYPlKdL9DnN+kSHRtZyJoXePd8N
         wx5OIEl92e2yt6mnjMTtxmRiVY7FUC1obcC56b5fT/RjVu8U5F604TjtX8tx4D7kw/2T
         GK9Crw/OuVdIqM/DGnwj+5y3hFz9vip7dbpFOgXpnjnB1bbcgwx9HZubvLYuTufB7kVZ
         cQBQ1Wq6gBo09fK51EiNkRaiKQQv8rhBt1ryEJK5+SYCirSLCwcPvedWK0aCGwfzPvvN
         8ksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981381; x=1795586181;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wQwtBGptsppIiSD2EEtPZn/sWs62aWDTih2dvDjWrWg=;
        b=HDPNvdEj+LPX3Vcwp8PuB+K5eILpOuLvh/1NJND5jEBOO8v2/ZxgUEzFoNSW94SIgb
         Mx/dTaJ+4jLWs1ai3cVGujnxr//3MmSmqFdRBnxIpQGUsyqSQZ2wKf47rDF5mRO6dkuZ
         qjMSkjrAN3lTDDUPfZhV8AHkDg2aMTtkqqWwWkOiJaIMTqkKC1uAE7CXxyFoWaQBQdGu
         y7IATcJcIYYqY/J2WWeE0Ggk4SpzueZC+uV7FWu8Ktop7Lr1MFyK1QiPQXup4Ebq1AHj
         hZ1g2TTV1pD6lznpGcjb4Q3As2Q/lVnCrHxlCDlkAhCb7w8hve2RPKofYHWOIu+sjzOp
         Nu1A==
X-Forwarded-Encrypted: i=1; AL+hErF+9FaZ7vlSU7WdTjqysvg0jhCwNv605+uNd2/GgGS7/Nyp9pkEtYHl2SmmOjNpUdgOvEQTRGnwU1k=@lists.infradead.org
X-Gm-Message-State: APuU4Z+8RmHbwSvvf+5Eitqg3SDnlzqBy50d1nVkBa5WYmY2/4uCVsAq
	L9bTQcNy1ICtWO0UoQKs6bfguKDw4EqsgGsxHlDpLjyLmDDW93QFbRiGpd6f2IBLZRU=
X-Gm-Gg: AYBFou2mC5otD3lFvE/Il598bHN6e62Aky1FvK4I9dqj+6Mnu0eazQftRA63DdLTWqp
	SD0cJ3KkT4mVSF3Fio9/Xb7mKACJYTxHZm6o3zQe6GGzOo/kLKUhnb92Z9mDKG+MlbDFxo5UUYd
	hbFIz9NscQ7k6kxtYc6/rr4OCQtrX2HV/aPQT34oolK29SH30jjrujxZiRBA/i+PNit0YqNXFda
	YJiiqix0Z9bw7b1ZB1eMyamj04UT6IqyifgthrWQoLq7Yk2s+8tXeLmLcpmSzWfDnSjtEN471h/
	1hsU46e2VAuGmMMpqWaretTdMamg+BEegMYZX0wVBj140fZDQPWUsuVA7aNMS/sMb3D4NkEMK+Q
	lu0t395ksWr7+4PkYrC8lM72GNdrCY1PDzHU19y0A7vvOP/uDt5Bja/5LxmrYfmvACA5qCXRDT1
	iMXcCqrPn+kuRScNf4KM3KTHAeTYz8B6CyOLTbasolwIeDgumzyqijur8QCdJjeKyZjZflInnYw
	9yxmvQZORoqI874B/vPCVS9KS0t3pqxf8A7kL3oSblkqEH1rFZGt1S3g+CN0gG71JI4cenImGsv
	DRTbJxZKIJ8subxyvoWkrXcFfe78g74/59wLB0s2v3Vz1q6vsII2MOfL+9g4ahBfKdUddqV1qH4
	KCCe8TB4iH+a1ML/V4q8P
X-Received: by 2002:a05:6a21:c219:b0:3fc:7f4f:ba46 with SMTP id adf61e73a8af0-3fe888eb7b0mr1972957637.2.1794981380287;
        Tue, 17 Nov 2026 21:56:20 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:56:19 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:22 +0800
Subject: [PATCH v7 9/9] arm64: dts: rockchip: add the dcphy mipi csi-2
 receiver nodes to rk3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-9-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=3591;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=wHYitdr9DGtZWdI+e6LvB71Er0urXzEmjuek2OzfqCA=;
 b=8DgSgyPhpQNduk9l/SM/4dMAVGgXDC3dSb7ZJjM9K4UTaLkxLcbj5MRsPNdpQa4pp54aTKeyl
 /jVizBopUDuA0gxVUv0l9MYhwPgtlRDmP/mh/ZJasL0zxGzgI4x0Zyy
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215621_612825_440A9741 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI0 and MIPI1 receiver units are connected to MIPI DCPHY0 and
MIPI DCPHY1, whose receiver side is now supported. Add the two nodes and
wire them to the VICAP ports.

The csi nodes select the PHY receiver with the new PHY_DIRECTION_RX from
the dt-bindings header. The phy nodes need no phy-type: the DSI host and
the CSI-2 host both run the block in D-PHY mode, the default.

PHY_DIRECTION_RX is an ABI change: an older kernel takes any cell value
as the mode of the block. The csi nodes are disabled, so an older kernel
is not affected until a board enables csi0 or csi1.

Before v7.0, there is no CSI-2 host driver, so enabling csi0 or csi1
changes nothing. Since v7.0, a CSI-2 host driver probes the enabled csi
nodes. An older PHY driver then gives the CSI-2 host the PHY transmitter
that drives the display. The camera gets no frames, and the display can
stop working as well.

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 68 +++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..c7174c2f15c3 100644
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
+		phys = <&mipidcphy0 PHY_DIRECTION_RX>;
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
+		phys = <&mipidcphy1 PHY_DIRECTION_RX>;
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

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
