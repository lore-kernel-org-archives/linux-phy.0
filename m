Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 966A6C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 15:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TzrcXHXB24OJZ3B2CBgyH0obfCF4ljA0tGgiNzSpuM=; b=Pj+wbO8QtyX82+
	NNzmrgY068GriH0ABpXNXgbehHktny2yBwpxqq33Lp4ZHRSgb20nJp90e6BnuzILw9M6KtkRZ//eQ
	uozv+a6kPJARi1/UgSZYrTLYAMP5n/F+eD8R4jImwCubapx1QdPbAZYW25XsQJxywuMpKbvb9irW2
	v51O4rdtrn5wMj9PjgX9q8xh/0W3pT40D8+CG4qHSfe3hhai7R+HblABz5/PVE1Ud+mPQscv6S0OW
	KVCgvuPQ2gN2MOckix7xonbkEe+cBlNf/L0IfA2/vWvkDF2iL++Yjs8YWeMB2jmRyicbuHuMGN+QE
	Fl4SWvxGcIQ6Ba3fDmnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9aN-0084Cg-GZ; Fri, 03 Jun 2022 15:51:39 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx9Y9-0083GX-2x
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 15:49:22 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220603154916epoutp02ed8eb7c2e1247b7f26e255b9fa901066~1Jwiyynd71535315353epoutp027
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 15:49:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220603154916epoutp02ed8eb7c2e1247b7f26e255b9fa901066~1Jwiyynd71535315353epoutp027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654271356;
	bh=GKJmr86kB7TxwNHcq4Ru7OONVnHX6Ub75EnaPEqr+Mg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PN2syGKAjWMKofKaYNCvTbjp7W7txNWDzBDi7r70dQh7mivnljIQRJ2qlyde3dQ/8
	 YnixLw6OB5WC/xOS6k/YRJ7BRBd20HUTCTNcFlk1M5re9zJEB2Qee9JV8LHVFJwuYm
	 iBCbOivlF+Wfp6gZocp/fw5wbWk/cSXJBE9E4dBk=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTP id
	20220603154915epcas5p33d3ddd53155455e24e6337b9344923fd~1JwiAj0Fi1875418754epcas5p3x;
	Fri,  3 Jun 2022 15:49:15 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LF6kd00Wgz4x9Pq; Fri,  3 Jun
	2022 15:49:13 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	98.28.09762.87D2A926; Sat,  4 Jun 2022 00:49:12 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20220603154912epcas5p2bf984fb4e32ee1b1357a3cc595e70a67~1JwewVuAp1440614406epcas5p2O;
	Fri,  3 Jun 2022 15:49:12 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220603154912epsmtrp21b756d203773ea29d7606d6b63f310e5~1JwevSMRc0407504075epsmtrp2x;
	Fri,  3 Jun 2022 15:49:12 +0000 (GMT)
X-AuditID: b6c32a4b-1fdff70000002622-a8-629a2d78c9f1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	7F.27.08924.77D2A926; Sat,  4 Jun 2022 00:49:12 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220603154909epsmtip11e1a185d3c58c95348896101f19f2fb0~1JwcCuNKq2494124941epsmtip1K;
	Fri,  3 Jun 2022 15:49:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>, Bharat
	Uppal <bharat.uppal@samsung.com>
Subject: [PATCH v2 7/7] arm64: dts: fsd: add ufs device node
Date: Fri,  3 Jun 2022 21:17:14 +0530
Message-Id: <20220603154714.30532-8-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220603154714.30532-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjk+LIzCtJLcpLzFFi42LZdlhTU7dCd1aSwcEZlhYP5m1js3j58yqb
	xbWXF9gtpn34yWxxeb+2xfwj51gt+l48ZLbY9Pgaq8XlXXPYLCas+sZi0X19B5vF8uP/mCwW
	bf3CbtG69wi7xc47J5gd+D0uX/H22LSqk83jzrU9bB6bl9R7fHx6i8Wjb8sqRo/Pm+Q82g90
	MwVwRGXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl5gCd
	rqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMCnQK07MLS7NS9fLSy2xMjQwMDIF
	KkzIzni29ypjwQPxip7dF9gaGLcJdzFyckgImEhMntjC3MXIxSEksJtRYseXI0wgCSGBT4wS
	u1bKQCQ+M0pc3bqVEaZjzY/1rBBFuxglVj/lhChqYZJoOfWSDSTBJqAtcXf6FiaQhIhAM6PE
	wY5dYA6zwE4miYu/pzODVAkL2Ei8XPEDbCyLgKrEijP7wHbzAsXP/v7KBrFOXmL1hgNA9Rwc
	nAK2ElNP84HMkRCYyiHRtGwi1EkuEkefLmSHsIUlXh3fAmVLSXx+t5cNpFdCwENi0R8piHCG
	xNvl66Fa7SUOXJnDAlLCLKApsX6XPkiYWYBPovf3EyaITl6JjjYhiGpVieZ3V1kgbGmJid3d
	rBC2h8Sqht/skHCYwChxYtJs9gmMsrMQpi5gZFzFKJlaUJybnlpsWmCcl1oOj6fk/NxNjOAE
	qeW9g/HRgw96hxiZOBgPMUpwMCuJ8JbNm5kkxJuSWFmVWpQfX1Sak1p8iNEUGGITmaVEk/OB
	KTqvJN7QxNLAxMzMzMTS2MxQSZxX4H9jkpBAemJJanZqakFqEUwfEwenVANT25fs888ajsYY
	vvLyMdyRvyK0Z+32/AidjyxOr//dWtwdVeS7LHiavERxqdNZ1/Kp0+7z7RZRbv/ZIX3nZI5I
	mGSOyaT0KxP5Ftr6/A4LzZ82ozDNdum92z8+L3M19ZJlr2UR63q1YcqMqILZP/9tMLIy/35i
	WdkNprfNq5a3pd/qdvrnVtq7Nywk5uzdLqmkV6/2BGROMCy+mlGUUq6i88tRb/eeGVadnxRb
	kxdtbZx21CKx6PzlKZbPP3Ys/FxjezW4z+hw6941Zq2Vbyb2dk34e7+LjWfz8wmacsYuUzkf
	+sQ3PVr84UFaQu5Hk8iTx045H57E78i+eK++n3nbsRuKDHOy2hW916Xe/BCkxFKckWioxVxU
	nAgAM3wXehkEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFLMWRmVeSWpSXmKPExsWy7bCSnG6F7qwkgwmrGC0ezNvGZvHy51U2
	i2svL7BbTPvwk9ni8n5ti/lHzrFa9L14yGyx6fE1VovLu+awWUxY9Y3Fovv6DjaL5cf/MVks
	2vqF3aJ17xF2i513TjA78HtcvuLtsWlVJ5vHnWt72Dw2L6n3+Pj0FotH35ZVjB6fN8l5tB/o
	ZgrgiOKySUnNySxLLdK3S+DKeLb3KmPBA/GKnt0X2BoYtwl3MXJySAiYSKz5sZ61i5GLQ0hg
	B6PEn82v2CES0hLXN06AsoUlVv57DmYLCTQxSbS+EAGx2QS0Je5O38IEYosItDNK3N/OBjKI
	WeAok8TyU8eYQRLCAjYSL1f8YASxWQRUJVac2QfWwAsUP/v7KxvEAnmJ1RsOANVzcHAK2EpM
	Pc0HsctG4vv5+6wTGPkWMDKsYpRMLSjOTc8tNiwwykst1ytOzC0uzUvXS87P3cQIDm4trR2M
	e1Z90DvEyMTBeIhRgoNZSYS3bN7MJCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8F7pOxgsJpCeW
	pGanphakFsFkmTg4pRqYZHXMLxROZnhxoP93XLlwcp3c8luxDOkTjCMF9jByrNnn9/R/SCHL
	tOWMJjt/vGefK+exu6Tykfzy2KRvm9pF5pTUJdcLfg2v4bfRlVmn43njn926TzUMgtzBHsnV
	0bsETzxuU0uzfpE645q62nb+h312jfoNH0UZ3x9ctZnDVW+pU9TsbXVPS+4rB4Zc+rYuYlb3
	tr9XxDIvnA/nUn45a12vkwujof2We8xmNSLb19j1ztoTu1DkVkvrf9/ZMtnbzj1TFNx2o+WO
	+6W1ar3KvTsWepyvdA40nJtas/z9nBaZkPfKsuKMFS76TUcXx7Y1HZtVd9Dgdc/ktAfxvf94
	N8/b27TQbNPZ8ujHaaJKLMUZiYZazEXFiQCnEuK/3QIAAA==
X-CMS-MailID: 20220603154912epcas5p2bf984fb4e32ee1b1357a3cc595e70a67
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603154912epcas5p2bf984fb4e32ee1b1357a3cc595e70a67
References: <20220603154714.30532-1-alim.akhtar@samsung.com>
	<CGME20220603154912epcas5p2bf984fb4e32ee1b1357a3cc595e70a67@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_084921_509786_665233D5 
X-CRM114-Status: GOOD (  13.17  )
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

Adds FSD ufs device node and enable the same for fsd platform.
This also adds the required pin configuration for the same.

Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm64/boot/dts/tesla/fsd-evb.dts      |  4 +++
 arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi | 14 +++++++++++
 arch/arm64/boot/dts/tesla/fsd.dtsi         | 29 ++++++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
index 5af560c1b5e6..1db6ddf03f01 100644
--- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
+++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
@@ -37,3 +37,7 @@ &fin_pll {
 &serial_0 {
 	status = "okay";
 };
+
+&ufs {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
index d4d0cb005712..387a41e251d5 100644
--- a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
@@ -50,6 +50,20 @@ gpf5: gpf5-gpio-bank {
 		interrupt-controller;
 		#interrupt-cells = <2>;
 	};
+
+	ufs_rst_n: ufs-rst-n-pins {
+		samsung,pins = "gpf5-0";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
+	};
+
+	ufs_refclk_out: ufs-refclk-out-pins {
+		samsung,pins = "gpf5-1";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
+	};
 };
 
 &pinctrl_peric {
diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
index af39655331de..7d1acf8f6466 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -740,6 +740,35 @@ timer@10040000 {
 			clocks = <&fin_pll>, <&clock_imem IMEM_MCT_PCLK>;
 			clock-names = "fin_pll", "mct";
 		};
+
+		ufs: ufs@15120000 {
+			compatible = "tesla,fsd-ufs";
+			reg = <0x0 0x15120000 0x0 0x200>,  /* 0: HCI standard */
+			      <0x0 0x15121100 0x0 0x200>,  /* 1: Vendor specified */
+			      <0x0 0x15110000 0x0 0x8000>,  /* 2: UNIPRO */
+			      <0x0 0x15130000 0x0 0x100>;  /* 3: UFS protector */
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clock_fsys0 UFS0_TOP0_HCLK_BUS>,
+				 <&clock_fsys0 UFS0_TOP0_CLK_UNIPRO>;
+			clock-names = "core_clk", "sclk_unipro_main";
+			freq-table-hz = <0 0>, <0 0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+			phys = <&ufs_phy>;
+			phy-names = "ufs-phy";
+			status = "disabled";
+		};
+
+		ufs_phy: ufs-phy@15124000 {
+			compatible = "tesla,fsd-ufs-phy";
+			reg = <0x0 0x15124000 0x0 0x800>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <0>;
+			clocks = <&clock_fsys0 UFS0_MPHY_REFCLK_IXTAL26>;
+			clock-names = "ref_clk";
+		};
 	};
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
