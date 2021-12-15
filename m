Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD23CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 10:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpSKU2b/HGKMNAUXYOoZiNjXtudW38Of85Z3w8zmhhg=; b=mXIvOi7mqHX13e
	my1lOIpGGe9TaLGFB0lR1h5KYeYq1WNMdkQZ8W9HLGsPLGaH7mUCRqsIS4hMJfsy8JKUpHaSekxh7
	e9SV+Bkp2h2GkxoWQYMyj993yhB5qs1FVCH6885FxeL2VuJrpYDz2G+YhUluM+cW+s9A4OxPr1EEu
	L0t3YPPva87s/PJsdkibBGj6PPsDHE2V6Es2cVZOK4HT3B3XuR3TXv6ytRCsyWlWWAchFLNx7B0K+
	EObJ/hBfgrPbaV+x3GxLbuKSR97JnmDmkN0ACfhXgDOfNyCm3tvosiFH/tCHy+AQgIuVZDjLHmZP1
	gzv8y6a4w7+omSnN/gdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxR6j-0004CG-3R; Wed, 15 Dec 2021 10:01:57 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxR2F-0002C5-Nn; Wed, 15 Dec 2021 09:57:21 +0000
Received: from localhost (unknown [192.168.167.223])
 by lucky1.263xmail.com (Postfix) with ESMTP id E73EAFDE9F;
 Wed, 15 Dec 2021 17:57:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18835T140477477144320S1639562220094025_; 
 Wed, 15 Dec 2021 17:57:13 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 15
X-LOCAL-RCPT-COUNT: 3
X-MUTI-DOMAIN-COUNT: 0
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <982e40503fd5a75f1c5138733054e260>
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de, cl@rock-chips.com, kever.yang@rock-chips.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v5 4/4] arm64: dts: rockchip: add naneng combo phy nodes for
 rk3568
Date: Wed, 15 Dec 2021 17:56:57 +0800
Message-Id: <20211215095657.13183-5-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211215095657.13183-1-yifeng.zhao@rock-chips.com>
References: <20211215095657.13183-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_015720_178485_2F8041D4 
X-CRM114-Status: GOOD (  10.53  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add the core dt-node for the rk3568's naneng combo phys.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changes in v5:
- remove apb reset

Changes in v4:
- rename node name
- remove reset-names
- move #phy-cells
- add rockchip,rk3568-pipe-grf
- add rockchip,rk3568-pipe-phy-grf

Changes in v3:
- Move pipe_phy_grf0 to rk3568.dtsi

Changes in v2:
- Move phy0 to rk3568.dtsi

 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 21 +++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8..91a0b798b857 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,11 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	pipe_phy_grf0: syscon@fdc70000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc70000 0x0 0x1000>;
+	};
+
 	qos_pcie3x1: qos@fe190080 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190080 0x0 0x20>;
@@ -71,6 +76,22 @@
 			queue0 {};
 		};
 	};
+
+	combphy0: phy@fe820000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe820000 0x0 0x100>;
+		clocks = <&pmucru CLK_PCIEPHY0_REF>,
+			 <&cru PCLK_PIPEPHY0>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_PIPEPHY0>;
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+		#phy-cells = <1>;
+		status = "disabled";
+	};
 };
 
 &cpu0_opp_table {
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index a68033a23975..93f230f799f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -218,11 +218,26 @@
 		};
 	};
 
+	pipegrf: syscon@fdc50000 {
+		compatible = "rockchip,rk3568-pipe-grf", "syscon";
+		reg = <0x0 0xfdc50000 0x0 0x1000>;
+	};
+
 	grf: syscon@fdc60000 {
 		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc60000 0x0 0x10000>;
 	};
 
+	pipe_phy_grf1: syscon@fdc80000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc80000 0x0 0x1000>;
+	};
+
+	pipe_phy_grf2: syscon@fdc90000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc90000 0x0 0x1000>;
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -1141,6 +1156,38 @@
 		status = "disabled";
 	};
 
+	combphy1: phy@fe830000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe830000 0x0 0x100>;
+		clocks = <&pmucru CLK_PCIEPHY1_REF>,
+			 <&cru PCLK_PIPEPHY1>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_PIPEPHY1>;
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+
+	combphy2: phy@fe840000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe840000 0x0 0x100>;
+		clocks = <&pmucru CLK_PCIEPHY2_REF>,
+			 <&cru PCLK_PIPEPHY2>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_PIPEPHY2>;
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.17.1




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
