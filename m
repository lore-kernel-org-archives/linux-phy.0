Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF04C04FE0
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jul 2023 17:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYLes2xPMJb/SA15X8MBzP0u5Svbol5qouS7b7+p/VY=; b=mJBkU6GvR2lcps
	IUGt70HSHMNNrfzZbMU9SkTM7vh3ZC9fHRz6hSjeJbtJGENDET0JfQkPCRzHcy7zzcR3VboFiHBUW
	uiiRDrC0ENUP4p/p83o9MpyHdtt8O6EYPzBTfGsjRdBWzESdLXYJ1tGuQ5J+2ArPFINxdnUYbko9a
	96Nbc6PnWb9EIyaZIp5506Uly4A2oKwUP3jw78AskA+zRjX+uFoQqFINYS2GdoW7WEEhr7Hu+wXQ8
	9BlYqnGEhUKNL8rLvt/tpT9A5VAx7vM1wNUxzM9b+oF0EQFG5/RT7tS6iUSxe51vOyo1nb39pQC44
	0900/+iZgwQN+8rlnFQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMzO-006tVK-12;
	Fri, 14 Jul 2023 17:53:58 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMzK-006tQd-0B;
	Fri, 14 Jul 2023 17:53:55 +0000
Received: from jupiter.universe (dyndsl-091-248-208-179.ewe-ip-backbone.de [91.248.208.179])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5382F6605954;
	Fri, 14 Jul 2023 18:53:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689357226;
	bh=wX8auK31Dgn9eqocHqcN+eNmo/yYDWpGmugDZ3zb274=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M+d23B74uq5E5wjx2dE9tUR8yZCdcBovWFyzSLO1z02uBe3Is/JSLjb6lbJncP7xJ
	 NNrvPwGv4pI+jRQMwR1cisQYvgLEgGLqSV/JIWm1fZ+lLrnyX9Pdg1lHj0QaAsV2fJ
	 KmOyF+mIQmzGplFqwexk/54qOFkFZnaOaLTh2h9rTyeRlRBbwZH/I4I+USSyfkPGFc
	 ums2C0ytlupS907IMP4s3BcOaaB4zdRPeq/5l7tcF30beBohHtrm2Ei0D9OKWNa4xK
	 jXkSrXaBbm4WIryehPV9PK8bChjeu4cMr597e2TrkIerkdKyzuRRd0iSw4okLlBgob
	 EqqhO9B7zJv2g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C124948059A; Fri, 14 Jul 2023 19:53:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/2] dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
Date: Fri, 14 Jul 2023 19:53:30 +0200
Message-Id: <20230714175331.112923-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230714175331.112923-1-sebastian.reichel@collabora.com>
References: <20230714175331.112923-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_105354_291893_E624105E 
X-CRM114-Status: GOOD (  10.32  )
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

When the RK3568 PCIe v3 PHY supported has been upstreamed, RK3588
support was included, but the DT binding does not reflect this.
This adds the missing bits.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/rockchip,pcie3-phy.yaml      | 33 ++++++++++++++++---
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index 9f2d8d2cc7a5..c4fbffcde6e4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -13,19 +13,18 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-pcie3-phy
+      - rockchip,rk3588-pcie3-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    minItems: 3
+    minItems: 1
     maxItems: 3
 
   clock-names:
-    items:
-      - const: refclk_m
-      - const: refclk_n
-      - const: pclk
+    minItems: 1
+    maxItems: 3
 
   data-lanes:
     description: which lanes (by position) should be mapped to which
@@ -61,6 +60,30 @@ required:
   - rockchip,phy-grf
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - rockchip,rk3588-pcie3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          items:
+            - const: pclk
+    else:
+      properties:
+        clocks:
+          minItems: 3
+
+        clock-names:
+          items:
+            - const: refclk_m
+            - const: refclk_n
+            - const: pclk
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
