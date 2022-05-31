Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F6FC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 01:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYRW4TnDO8POgP13NC8c3UKp19XX7FVyoc+xO5NOvOg=; b=GJnoCEjlpmj/bP
	mnHsu1mQsw3zZ2bu73GfTzIhE0+bF9V8NhrFPrUrNWZ1rQAo2DacfMzC+HCvsfJpjAuBnsNDATKEI
	jX3u0aBdT+CzSj0MBvdxBbaZZFqANsWRSmtAgA6N0aSoVvcEkRZA4Ay6mjCqhrmmF3kLgAxMB7r0p
	JvpHR0WmQU34rZm3EFCM71IfGwPw9tR3m0pUBDuMxlnSYhm6nAeKbr3q7PKRMcsgeowtHv66w/A6J
	aTSDeGfnmjvajRfQZDUQIlh4050SCd59ohHjZZUV4UQN4Axg0NplTG2zN73jNo2YDb2O0xlsqeLFo
	MJ/Pfg8AgC42Afeo/oTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvqdn-008oo0-F2; Tue, 31 May 2022 01:25:47 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvqcD-008o8j-27
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 01:24:11 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220531012407epoutp0487128f6fc0b419d85d7bacce9539e97b~0DBTn2rRK0077300773epoutp04Q
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 01:24:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220531012407epoutp0487128f6fc0b419d85d7bacce9539e97b~0DBTn2rRK0077300773epoutp04Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653960247;
	bh=6vHI6egD62SVGnx4U2Kt2MBvuoPcgzdHZj6/6hBUX8w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vRKqScy81NYQtkJbdLdYqV2qqPRDTWLlDL8v9cHLDDIw5xgVgbtZyBM71HnKRBKpK
	 0NGHQJ39X+CjoCtPUraFHKbsigNGrlxJeN1NfQda3Y5WNrDUykmUpd+/0QAiFa0CTc
	 i8btzQgsE5wINEtD6JNRlaC5jgbxKwMmQGXvNnUQ=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTP id
	20220531012406epcas5p357e09c681a14b2ad7e73682e98f1f3ba~0DBS_LEY70278302783epcas5p3W;
	Tue, 31 May 2022 01:24:06 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.180]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LBvgj3Ym7z4x9Pv; Tue, 31 May
	2022 01:24:01 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	AB.6B.10063.13E65926; Tue, 31 May 2022 10:24:01 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10~0DBN1U3rh1063310633epcas5p1N;
	Tue, 31 May 2022 01:24:00 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220531012400epsmtrp26af95bbb0198d4c767cba8093e9ccbdc~0DBN0TsLa2336523365epsmtrp2J;
	Tue, 31 May 2022 01:24:00 +0000 (GMT)
X-AuditID: b6c32a49-4cbff7000000274f-cf-62956e3181c9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	08.E7.08924.03E65926; Tue, 31 May 2022 10:24:00 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220531012358epsmtip25d577968a0c855a2a15e88600739b30f~0DBLbqcdK1203612036epsmtip2B;
	Tue, 31 May 2022 01:23:58 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>,
	linux-fsd@tesla.com, Bharat Uppal <bharat.uppal@samsung.com>
Subject: [PATCH 6/6] arm64: dts: fsd: add ufs device node
Date: Tue, 31 May 2022 06:52:20 +0530
Message-Id: <20220531012220.80563-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220531012220.80563-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAJsWRmVeSWpSXmKPExsWy7bCmuq5h3tQkg1fTJSwezNvGZvHy51U2
	i2svL7BbTPvwk9ni8n5ti/lHzrFa9L14yGyx6fE1VouHr8ItLu+aw2YxYdU3Fovu6zvYLJYf
	/8dksWjrF3aL1r1H2C123jnB7CDgcfmKt8emVZ1sHneu7WHz2Lyk3uPj01ssHn1bVjF6/Gua
	y+7xeZOcR/uBbqYAzqhsm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRb
	JRefAF23zBygH5QUyhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BSYFesWJucWleel6
	eaklVoYGBkamQIUJ2Rnfzm5gL3ghXnFy6Q7mBsaTwl2MnBwSAiYSvxvmM3cxcnEICexmlFjy
	bhMLhPOJUeLTmjlQzmdGiWdnDjPCtFy5tZEJIrGLUaL5wTsmkISQQAuTxLdtPCA2m4C2xN3p
	W8CKRASaGSUOduwCc5gFzjFJPNu7AaxDWMBSYv7BhWwgNouAqsSd13/BVvAK2Eh0bD/OCrFO
	XmL1hgPMIDangK1E98bTYIMkBOZySOyf9hfoQA4gx0Xi9xcFiHphiVfHt7BD2FISn9/tZYMo
	8ZBY9EcKIpwh8Xb5eqhv7CUOXJkDNoVZQFNi/S59kDCzAJ9E7+8nTBCdvBIdbUIQ1aoSze+u
	skDY0hITu7uhjvSQuL7iCDQYJzBKTHr2mmUCo+wshKkLGBlXMUqmFhTnpqcWmxYY5qWWwyMq
	OT93EyM4aWp57mC8++CD3iFGJg7GQ4wSHMxKIrxWEVOThHhTEiurUovy44tKc1KLDzGaAkNs
	IrOUaHI+MG3nlcQbmlgamJiZmZlYGpsZKonzCvxvTBISSE8sSc1OTS1ILYLpY+LglGpg8v0r
	N2VR4PVlDp6Z//bOZJJaoiDy94Tk4teuLfVCOz9fXrx7s98mW2meHxWzpgVXiB2/rRM6U2fS
	Sd01GUEMmRqTbvJP38tw+urBbI6y9396BcTyL+1OnbTShdHUP3na0fbM7+Zij5N0Zh5dyf/t
	A2MA25452Qbr5Vnv3YuuzbG9JRMoOPtB7vob3/K8dnkwyGkXBt0qzW1dbnv3bbDMTMmvmlnJ
	CZu+ftHokckx0XATfHXss5Xfx2dam/Nq9i2I33I1+mftqR2bzx+Y09KwdJVCllq375UX7r4n
	eI3udUwMPyDFOy3utJigmi7Lt38zNO3Fmbd+n1r5xsy+fuEa5g3yMmd4A7XzqgIumPN+VGIp
	zkg01GIuKk4EAG8aQsQjBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMLMWRmVeSWpSXmKPExsWy7bCSvK5B3tQkg20r9CwezNvGZvHy51U2
	i2svL7BbTPvwk9ni8n5ti/lHzrFa9L14yGyx6fE1VouHr8ItLu+aw2YxYdU3Fovu6zvYLJYf
	/8dksWjrF3aL1r1H2C123jnB7CDgcfmKt8emVZ1sHneu7WHz2Lyk3uPj01ssHn1bVjF6/Gua
	y+7xeZOcR/uBbqYAzigum5TUnMyy1CJ9uwSujG9nN7AXvBCvOLl0B3MD40nhLkZODgkBE4kr
	tzYygdhCAjsYJabvcoeIS0tc3ziBHcIWllj57zmQzQVU08QksXHbNFaQBJuAtsTd6VvAmkUE
	2hkl7m9nA7GZBe4wSazqEQGxhQUsJeYfXAgWZxFQlbjz+i8jiM0rYCPRsf04K8QCeYnVGw4w
	g9icArYS3RtPQx1kI/H4/muWCYx8CxgZVjFKphYU56bnFhsWGOWllusVJ+YWl+al6yXn525i
	BIe7ltYOxj2rPugdYmTiYDzEKMHBrCTCaxUxNUmINyWxsiq1KD++qDQntfgQozQHi5I474Wu
	k/FCAumJJanZqakFqUUwWSYOTqkGJsfzYs4/NwtOYvGxyXo1ref36hM3PII2NXL5qpUzhh1K
	eH3nX8K7sIWdOQtjzStm7zFU2le9ZYbPhqV5Np4+mv7mPgIuV13eeFSp62tOs5rfwcb47ULM
	i97Dc+fFC/O+Zj07b7/xslUH92q5fyyc2B6mIdy0VeTx2d0FiQ93e3G0fXOYUcXKvlM+N9FU
	1ubTrQyLOecfzlctXvv0v9vypnUzlFJjC20F5zXlTGjpV1rxnOWoh+a/cD3N4qsa0xxPSlku
	1lkt5im14afDn2f/J3nqRd8teLvX4aRkuv+SY9Mu5SfxT9jZJLtty866XPWg1EmsnKyW2ZkP
	r6tzX0m2/qKa6xH16PvEy9bb9ogYKLEUZyQaajEXFScCADIDpGrmAgAA
X-CMS-MailID: 20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
	<CGME20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_182409_562365_CB0D7EC0 
X-CRM114-Status: GOOD (  13.68  )
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

Adds FSD ufs device node and enable the same
for fsd board. This also adds the required
pin configuration for the same.

Cc: linux-fsd@tesla.com
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
index af39655331de..a5972e9a2585 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -740,6 +740,35 @@ timer@10040000 {
 			clocks = <&fin_pll>, <&clock_imem IMEM_MCT_PCLK>;
 			clock-names = "fin_pll", "mct";
 		};
+
+		ufs: ufs@15120000 {
+			compatible = "tesla,fsd-ufs";
+			reg = <0x0  0x15120000 0x0 0x200>,  /* 0: HCI standard */
+				<0x0 0x15121100 0x0 0x200>,  /* 1: Vendor specified */
+				<0x0 0x15110000 0x0 0x8000>,  /* 2: UNIPRO */
+				<0x0 0x15130000 0x0 0x100>;  /* 3: UFS protector */
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clock_fsys0 UFS0_TOP0_HCLK_BUS>,
+				<&clock_fsys0 UFS0_TOP0_CLK_UNIPRO>;
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
