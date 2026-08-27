Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1ACFC61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 12:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=047s4WpSESgiSNk2ZgaGO3kMjvV+NsCpuJQ8rxKdWMI=; b=Vzx9P3TLn/O+7y
	9yjBOzxB6tp1xJhj6e/oLW/thzbbINaj435D8nhCCEayAeUtVfQcTXBW8vvOSR26oTBmd5RBkLj/F
	ioW5PDoc97RdOtd2E+aixdcTMmJp2JIN3A/9SVr5DHH+mDJ7CgFcO6dcsc57//UCJHjKWysGpVJ26
	ixpPPVdcTJwtaCc3ZNH8bEbJVzAqmPp+FZawKah+PbDJnzDDpzWSrm8sF/V4PYZ7W5PbSep2JOQvt
	tBq1Dn9zxdiD1xM2ky/tYb5nR6NrMghldDmPNdtjgJpIKwrfqnnQetI2yZzR9U/1legEWRgEKjSfm
	Yp2U1PG0SWW3SHVWADCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ7H-00000003x7y-2Spc;
	Thu, 27 Aug 2026 12:21:59 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZ74-00000003x3B-1IqV
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 12:21:47 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49b0d8bc2aaso11794895e9.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 05:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787833304; x=1788438104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=TfBamOBMdgFDLlZC37nZvSYpxKYZZF6KSv3Lu11CekI=;
        b=FtGM4X9WDha2Laid1vZSE+5DbkLrJrb1GFCMifkOcSvgDbhUrUmwncwukCLji8iT8p
         Symfm5Sf1dhsjje1nBvsSzbEvXAd8/9Uq5D+fZhInAoG/ZDE78zTdkqxQis1nF0wTul2
         m9ZsVVnxhrnecVlPcap+FY8iviZ2vkXA0+1FYJ41gViDn2275wxCzrbtpDUfB5fB2lXU
         VDmxNrlODprBdp6KmOJ2BMelSI8YnRTLNX+sFhSCmiM0h1sGu3E3l5MtxdWkufBJZBG2
         RofsLQqoxwOGolUeXIr8W0sjV3swdJSyqhgD+5DGEtPrngbwnmHe8fKuqX+E0K4V6xXj
         Ey6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787833304; x=1788438104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=TfBamOBMdgFDLlZC37nZvSYpxKYZZF6KSv3Lu11CekI=;
        b=UQgy9avEYSAcoupejgjyZTKUlQFw3JC+LDEoCIlMjbxeTh7p2lDRbUJ17oRwn36zLj
         avR/3UKxTY0qahsjMtvF9EPFv2otNI//qqwsJu1qu7nBn+VoZt6u4UYHE07oDNi9OREQ
         EfP/7ZlEEcdEx93vwV94hSyVN+YWFh3Q44Tzvl/96xlxeAzdNTC5T79RmHTXS1+XFRXQ
         v2UxMhP0/MPaIOimCqWKDAsbZSReNiil8Oll4o3RDK333UaGUwyedZDRXQyWaF2aSZPF
         x0wT4GNB/74hn7AcWPlqplp3mdZkwpTrmfpJRkaDrfowIkndNUip5JUUkOQTV3kC8iuz
         aW8A==
X-Forwarded-Encrypted: i=1; AHgh+RruJmVPwUcf9wONXeGPpCbE6Fycvf52j/iPEfJU13cTe65aV+XD0DdRG7TjYyd2ZgcR7krTHUZpXyE=@lists.infradead.org
X-Gm-Message-State: AFuF++mMpAXBRdV/owP0sfysfdkpKR1lZ/s8jOM8JDuf3cm6Hxj4gT4P
	fu5l/LBn3qpgVUyi7AvKVHcXbkcMbBuIdTMOkxi78VtVoIMDG76vMCdf
X-Gm-Gg: AR+sD136mYKZxVF0vanLwzqgJ+w5BvysyD+wmvEziMGTWwTJWJxCgWCoXwkIiWGBw7E
	FznykrZAoQxoWT7a45gsuxx3WltGv1och229qKfPWCEhdrfQb2ox/kV7fHHx40PuXUoEhl2WuCA
	FWangkNY5gXO5CQQtsPj20AodRO+gKbPyOx+gLzxOaDix+VOmPY09QBqDK9hEAi04pYqhPJ/7dV
	DsfaxFbB+iX3knnEDT961knZb3VIQU6rrOAmHKj5cR1+V031BvdMntK2CBXEZZIJz4wWFqXMpJb
	wW7Uz+cJog4lq/xt0ULP4z92bRLE/2vbltredLznkOsnFynQ00TZ3o9YyIRafmqOkLdHcd7qTun
	JXyaP6RZhu2KKuqHuE+IoEbyoRxPRXkczT3R6JMkiulm8xIdZaD/t1Dx50dmgaTpwYMmIzjf9YO
	As3/l9bSMC0WFf6S7UE60cxRWjt96WmoudQB4zXA+1PWFNOXPng4saXGlS4W6gHC209cWjH9rTJ
	RgXubJ2O78wFx2LbaLEiRRNVEPS9sjRp+MHBK+kjZ5Q9fWNIx7hKeY=
X-Received: by 2002:a05:600c:c48f:b0:499:dbc0:370d with SMTP id 5b1f17b1804b1-499dc6eaca4mr142110795e9.2.1787833304197;
        Thu, 27 Aug 2026 05:21:44 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49b465226d8sm50099535e9.0.2026.08.27.05.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 05:21:43 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
Date: Thu, 27 Aug 2026 14:21:20 +0200
Message-ID: <20260827122127.18874-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260827122127.18874-1-ansuelsmth@gmail.com>
References: <20260827122127.18874-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_052146_376758_61C34C1F 
X-CRM114-Status: GOOD (  12.99  )
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

Document support for AN7583 PCIe PHY used to make the Gen3 PCIe port
work. Add the required register to configure the PCIe PHY and provide an
example for it.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../phy/airoha,an7583-pcie-gen3-phy.yaml      | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
new file mode 100644
index 000000000000..07bb20152c0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-pcie-gen3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 PCI-Express PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description:
+  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
+
+properties:
+  compatible:
+    const: airoha,an7583-pcie-gen3-phy
+
+  reg:
+    items:
+      - description: PCIE G3 analog base address
+      - description: PCIE G3 PMA base address
+      - description: PCIE detection time base address
+      - description: PCIE Rx AEQ base address
+
+  reg-names:
+    items:
+      - const: g3-ana
+      - const: g3-pma
+      - const: xr-dtime
+      - const: rx-aeq
+
+  phys:
+    items:
+      - description: phandle to QPHY phy for Gen2 support
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - phys
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+
+    phy@1fc7f000 {
+        compatible = "airoha,an7583-pcie-gen3-phy";
+        reg = <0x1fc7f000 0xfff>,
+              <0x1fc7e000 0xfff>,
+              <0x1fc30044 0x4>,
+              <0x1fc35030 0x4>;
+        reg-names = "g3-ana", "g3-pma",
+                    "xr-dtime", "rx-aeq";
+
+        phys = <&pcie1_phy PHY_TYPE_PCIE>;
+
+        #phy-cells = <0>;
+    };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
