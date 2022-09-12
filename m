Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4270CECAAD5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMS0Wa5o49cEIQxBFMgoVi+AzzM/lo2q7PoWT2HCra4=; b=AD5TExapqjy1Vh
	DII13qnyIhKQQ14Wii0It8umhBDsfOA1sT9GsfQ/qWs9LAypYVZyy9hjs2kssVVCAMF2JPXT7wxn+
	+JwNsTvuMoXmpq/Epy7aihai49Lb+AqGz3kmCxdy8FlfwtYxjVW7gSXcvLfyUj6GIrAtcHWzajBcs
	Ib5GAKDx30T5p8xyPyxTxZGjjnwCW72ssZDFUFmL663kPRH90g8CjD9qeoYkR8V8qK7byt8Vn3O5z
	V/vA9ttXieBIb9qLvh4LMaFrxYLPL5rztWxyWTpc9tb4GQOaQRlDCxxD64siCa9+RW13T4mMWJ3gz
	KGkZvxMwVrgoI7U9djFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfGQ-0082Ha-Cf; Mon, 12 Sep 2022 08:57:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfFh-0081qR-SK; Mon, 12 Sep 2022 08:57:19 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28C8v0AS079787;
	Mon, 12 Sep 2022 03:57:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662973020;
	bh=fAivhQVM6hQQbfgAr/GHmRylgYVeRwC5HFPlSEF1pu4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=eXr3QmTi4V9d7SF033e8gI4nVWBM8dBMj50MaN5HDCp3zFV8rZmNgV0/Q5XkdMWhF
	 O/SqADLeE38p1plde2Fvd91lKkK1llMVgSxy3JVnVFGSibY4swonON61mNoo7Rk1oY
	 nGJ+KLGdcNKHBBtwKKw2waS+LYWaIpOJIaUBacOc=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28C8v0mG097124
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 12 Sep 2022 03:57:00 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 12
 Sep 2022 03:56:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 12 Sep 2022 03:56:59 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28C8up6v104303;
	Mon, 12 Sep 2022 03:56:56 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v5 1/3] dt-bindings: phy: ti: phy-gmii-sel: Cleanup example
Date: Mon, 12 Sep 2022 14:26:48 +0530
Message-ID: <20220912085650.83263-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912085650.83263-1-s-vadapalli@ti.com>
References: <20220912085650.83263-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015714_218244_E97829E6 
X-CRM114-Status: GOOD (  10.26  )
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

Change node name in example from "phy-gmii-sel" to "phy", following the
device-tree convention of using generic node names.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index ff8a6d9eb153..016a37db1ea1 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -97,7 +97,7 @@ additionalProperties: false
 
 examples:
   - |
-    phy_gmii_sel: phy-gmii-sel@650 {
+    phy_gmii_sel: phy@650 {
         compatible = "ti,am3352-phy-gmii-sel";
         reg = <0x650 0x4>;
         #phy-cells = <2>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
