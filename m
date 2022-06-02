Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A69C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 05:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqCy/H58rU6LI5WfcE8EDZXXtNJY3zwPlMe92kvcl7I=; b=Qpg/7eLpD3ZMDK
	8GowEIH0Q0mDhYaUBQC9LFjsC7LlNHBikw64UiXWED0wKNy/EZs5ae72X+IoZMrme83gOm0mOeYVk
	CHRvuRHDrZV8dbldByna/s4z6zpqrTEtyl/rgGBH2MdIPcW/wRdRa4pdC5dISBaqwG4lGGawsppWE
	70U7f5cNXC45catXLViC/D9tNUnzuhmx3Yht25j0zUt87M1KgiHj8bslyek0KljsK5wS+B1jwss0P
	qTLjm4l84pIUnGfj+lDR30qw8EtsRIABaJljS+1owI0TfdgmRqJuCNqgPHvAenF1tVVA8mhDZUqL4
	OUty7m/0fXAy5o0FGjYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdSo-001Tlm-Ij; Thu, 02 Jun 2022 05:33:42 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwdSk-001Tgm-Fa
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 05:33:41 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220602053332epoutp01a98c2e8fc4f5e8a365444be9901baa13~0ttqASnwp0839608396epoutp013
	for <linux-phy@lists.infradead.org>; Thu,  2 Jun 2022 05:33:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220602053332epoutp01a98c2e8fc4f5e8a365444be9901baa13~0ttqASnwp0839608396epoutp013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654148012;
	bh=ZxRg88qK8qztD6NotaBYGtI2yR+16T/RMmgA5R92Q4s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r3BULmTaTjX8V7K8dh9P+HYxfxBO5EPx6fewU+nfn673e6vZVH0WC4FTwbc4A4d4k
	 y3eCVFE7ZNWGK4xX5P7FF1gLj/ou496OSlcGWvNvZQtYfuAjV0a8peGMfpc1TsKoiR
	 O0WPFTlQQenfprXlrpjXIqecM6ve0fWHqN9NRXDc=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220602053332epcas2p39f60655682a423be374938f3eed57763~0ttpbkrI22395823958epcas2p3b;
	Thu,  2 Jun 2022 05:33:32 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.92]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LDF6f1trJz4x9Pv; Thu,  2 Jun
	2022 05:33:30 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	9E.23.09764.9AB48926; Thu,  2 Jun 2022 14:33:29 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epcas2p3dc1aa5e50c5eab03309e67b95e2993ff~0ttnFaDKd2395823958epcas2p3P;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220602053329epsmtrp1e74cad7b2f193854096d195474603f16~0ttnEnNUL1617116171epsmtrp1Y;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-ed-62984ba9e501
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C4.1E.11276.9AB48926; Thu,  2 Jun 2022 14:33:29 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220602053329epsmtip2e73549035cbceedfef62f3b3b8ac3fbb~0ttm2cZee0794907949epsmtip2q;
	Thu,  2 Jun 2022 05:33:29 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 5/6] arm64: dts: exynosautov9: add secondary ufs devices
Date: Thu,  2 Jun 2022 14:32:49 +0900
Message-Id: <20220602053250.62593-6-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220602053250.62593-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMJsWRmVeSWpSXmKPExsWy7bCmhe5K7xlJBtfvmFs8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
	wFDX0NLCXEkhLzE31VbJxSdA1y0zB+g6JYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
	Sk6BeYFecWJucWleul5eaomVoYGBkSlQYUJ2xtxTD5gKJvJW9B3axt7AeJSri5GTQ0LAROLE
	lduMXYxcHEICOxglejYfZYVwPjFKPJm+lQXC+cYo0fF3OXMXIwdYS/92Q4j4XkaJ+QeuQHV8
	ZJSYu385K8hcNgFdiS3PX4HNFRFoZ5I4cW8uO4jDLLCZUeLkhA3MIFXCAt4S2zacZwOxWQRU
	JWa03mEEsXkF7CRO/D3ICnGhvMSG+b1gqzkF7CW2nPGAKBGUODnzCQuIzQxU0rx1NjPIfAmB
	qRwSJ85/YYHodZGYMX891BxhiVfHt7BD2FISL/vboOxiiaWzPjFBNDcwSlze9osNImEsMetZ
	OyPIYmYBTYn1u/Qh3leWOHILai+fRMfhv+wQYV6JjjYhiEZ1iQPbp0NdICvRPecz1AUeEpu3
	bAeLCwlMYpRYuNVyAqPCLCTfzELyzSyEvQsYmVcxiqUWFOempxYbFRjBYzg5P3cTIzi1arnt
	YJzy9oPeIUYmDsZDjBIczEoivCW7piYJ8aYkVlalFuXHF5XmpBYfYjQFBvVEZinR5Hxgcs8r
	iTc0sTQwMTMzNDcyNTBXEuf1StmQKCSQnliSmp2aWpBaBNPHxMEp1cB0LMFHa0vpVZsaRtVv
	BQ9uSb/8vdK9e9MfibKFgsuycutksiey+zXfdO19FfP/7ZKqXQ32/fd87R90n7auU7QxTRMO
	WpJaYy63ILtq+8ezxjqFXq1M/xg+aXZ+SoqZV3iXLXjGuxTXifyK8w4cYlvm1Wso2bXCL3la
	lOPsuGvJz+/2zn+x+5dHlspSPwOpV01Xv8884bGsKSqsRcF6TXptsJEuh+vd+qad4pli37ZZ
	n/5yY+62kv8BNc/PZp9ZO+tDrdFD64IcHkPL3aF7p1ocU1H1ae3//v/z3ta9L5+KarzbLBd2
	uENoPsNzec4KHY35bxdcf6yVHzN5l7Rg/tLPc94fOPxnYlBoyPPlb74osRRnJBpqMRcVJwIA
	/zFzOjYEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsWy7bCSvO5K7xlJBt9vSFs8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtissmJTUnsyy1SN8ugStj7qkHTAUTeSv6Dm1j
	b2A8ytXFyMEhIWAi0b/dsIuRi0NIYDejxM8XE5i7GDmB4rISz97tYIewhSXutxxhhSh6zyjx
	9uxVNpAEm4CuxJbnrxhBEiIC3UwSczb1M4E4zALbGSU+LF3HAlIlLOAtsW3DebAOFgFViRmt
	dxhBbF4BO4kTfw+yQqyQl9gwv5cZ5CROAXuJLWc8QMJCQCWbL29ghSgXlDg58wnYSGag8uat
	s5knMArMQpKahSS1gJFpFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcBRoae5g3L7q
	g94hRiYOxkOMEhzMSiK8JbumJgnxpiRWVqUW5ccXleakFh9ilOZgURLnvdB1Ml5IID2xJDU7
	NbUgtQgmy8TBKdXAtG6dSsSH894OSyb8OPf0yaNQheNvp7Heq5LSZEqtOCmn8LLkuE2c17NC
	xSkv3bbP5Zn8tn3h1aUmH7V0Yp8f+9TuMN1h3/5nUeV7/nzfzsrWcGHWS/nr98LOC1x+cc/Q
	f53oiwmv3nEvC3TZse/ZnIPc5V1cEo36IrZfP69wq3BwYbXtnX3xafqZOvlzRryfj7+RlN3g
	02B88VcyX1JfmcsUQ8PUxhdvGfp9cx9tzNgjo7Hn1OUXCpZ3dwT0uUb92edy5obO0sz0t5r7
	O1fdmtoVZxFmwTzRpfMb26zYH19cpwcdMmA/Ia1nZVwoceWtueKlJYqLFlXl/RVtKrFsjTlx
	WfDE6sgFk4/obmdJ+K3EUpyRaKjFXFScCAA8eLYD8QIAAA==
X-CMS-MailID: 20220602053329epcas2p3dc1aa5e50c5eab03309e67b95e2993ff
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220602053329epcas2p3dc1aa5e50c5eab03309e67b95e2993ff
References: <20220602053250.62593-1-chanho61.park@samsung.com>
	<CGME20220602053329epcas2p3dc1aa5e50c5eab03309e67b95e2993ff@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_223338_918676_5E6E4D43 
X-CRM114-Status: GOOD (  14.77  )
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

Add ufs_1_phy and ufs_1 for secondary ufs hci controller and phy
device.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index beb46b5a83b6..161fd36e718d 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -400,6 +400,38 @@ ufs_0: ufs@17e00000 {
 			samsung,sysreg = <&syscon_fsys2 0x710>;
 			status = "disabled";
 		};
+
+		ufs_1_phy: phy@17f04000 {
+			compatible = "samsung,exynosautov9-ufs-phy";
+			reg = <0x17f04000 0xc00>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller 0x72c>;
+			#phy-cells = <0>;
+			clocks = <&xtcxo>;
+			clock-names = "ref_clk";
+			status = "disabled";
+		};
+
+		ufs_1: ufs@17f00000 {
+			compatible = "samsung,exynosautov9-ufs";
+
+			reg = <0x17f00000 0x100>,
+			      <0x17f01100 0x410>,
+			      <0x17f80000 0x8000>,
+			      <0x17de0000 0x2200>;
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_ACLK>,
+				 <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_UNIPRO>;
+			clock-names = "core_clk", "sclk_unipro_main";
+			freq-table-hz = <0 0>, <0 0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&ufs_rst_n_1 &ufs_refclk_out_1>;
+			phys = <&ufs_1_phy>;
+			phy-names = "ufs-phy";
+			samsung,sysreg = <&syscon_fsys2 0x714>;
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
