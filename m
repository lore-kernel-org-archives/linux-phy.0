Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C620BFA3745
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 13:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyJLdtpcc2qYQ1LLnJcMUCrRZgHgPsPHT+iNboULH2U=; b=FOFQGhLcJ/2zle
	3ZN4RQQArJdZXhJmR7+jP5Vta9h4PXwvR7x5bexkEM5fD6bc3a3YFPXXDVm+asXG4bpXhNI7e5QgT
	0cx/s+kvqc9vcIa5/kcthLcTxZ7tfqbvSSVB3e5iu+UrC6GfmPvyS+T5+UoeyGQxaGoiEfdfvnFJt
	qh5Y0l+kxfSVHwhRhIWcKjTQiBEhBgUo/YBuUetctr3scN1OuyhpmBUaDEbjkqR7oqEuCw632o2Kl
	+Ou5UeC4Dj5bZ8fPTuP644fHTZ0IWRBuFgv4GCvp6Wafmko/Jf6G+QeUaRceeXyNe8v0R1NnjmOEx
	gOAc1lttAgI6UCEqMu4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo3Bn-00Derj-1D; Thu, 27 Oct 2022 13:44:55 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo37G-00Dc2B-Ap
	for linux-phy@lists.infradead.org; Thu, 27 Oct 2022 13:40:16 +0000
X-IronPort-AV: E=Sophos;i="5.95,217,1661785200"; 
   d="scan'208";a="140602797"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 27 Oct 2022 22:40:11 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 4CCAF40006BD;
	Thu, 27 Oct 2022 22:40:11 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [RESEND PATCH v3 1/2] dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
Date: Thu, 27 Oct 2022 22:40:05 +0900
Message-Id: <20221027134006.2343164-2-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com>
References: <20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_064014_501924_CF2C5BD6 
X-CRM114-Status: UNSURE (   8.85  )
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

Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 .../phy/renesas,r8a779f0-ether-serdes.yaml    | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml b/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
new file mode 100644
index 000000000000..93ab72874228
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,r8a779f0-ether-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas Ethernet SERDES
+
+maintainers:
+  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
+
+properties:
+  compatible:
+    const: renesas,r8a779f0-ether-serdes
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  '#phy-cells':
+    description: Port number of SERDES.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - power-domains
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
+    #include <dt-bindings/power/r8a779f0-sysc.h>
+
+    phy@e6444000 {
+        compatible = "renesas,r8a779f0-ether-serdes";
+        reg = <0xe6444000 0xc00>;
+        clocks = <&cpg CPG_MOD 1506>;
+        power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
+        resets = <&cpg 1506>;
+        #phy-cells = <1>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
