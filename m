Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B51C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8L/rRVx1nwz5hcMXzpvdHkp70bV9Yfj0zx+bSw4Fbw=; b=WDlzJImStuOIOD
	/DiUlRzEcFdQyEGwSH8khfvgneMK19/C9pQ0Q0J4THIe5Sdgs30n1/RiOoNTI/0QFtLn1jMBaenbZ
	gXXOnXav9i+SC3wj8NPpLYLcGCx4OTyGarK4UQaJYEznVigwNV2xFJSslNFnFK0xcRq1uly8yjgta
	cSdNZjo1Bi+h3k5cWInb2TwMjyW9SBNineVJ7+LK4kQlMyE88XXlNrE5RBTAQczZzu7z0OSGip0ur
	mJbHX9ZrWQYcNzLGFIXRqtzcLb3wokNYJQafIasDzIlmL4TErSOozQ5XhfPOoKppvbJIq92azhrGe
	jYIjRl8qDhYFNgD6oo3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCz-00GPte-U8; Wed, 23 Nov 2022 10:42:25 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCu-00GPpK-4V
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:42:22 +0000
Received: by mail-lj1-x233.google.com with SMTP id q7so483899ljp.9
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ym3WGL/W4jQ1ZP3qhjFNZAcb10WDhi6X47RzwxkW1DQ=;
        b=VlWo9828Mw6MM7KAPhjdx029aBwearctftUAOKcl8BTvg+aN61gOiLAZABvU/lxBsd
         WWf2brV1g5TSvW4SMYP1PLTe5vIOVFQyfq62G/UAKW1e85mxEP8dPm1vpe8dwX1h0qIB
         OsZb/5otYvPucR62nagX5sYDinezaHaDcm3CUcvfMwQxX4eDBmJMIZKwsAhgnuCERDvs
         wtvgK8DZnnIYvu3Bly+1aBmnUpQ7AwA7U+Mdhjexs/EFC1peXrqVUzh/y60zmkD+tiQ5
         BZjn/d3abtaJ4x+kn7Xq+8QGP7FnhNSGAAyN7dEJQDpnZgD7d+8zrY99HbGTg0e5WPm1
         jaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ym3WGL/W4jQ1ZP3qhjFNZAcb10WDhi6X47RzwxkW1DQ=;
        b=FS6ym4+10nX1Xl1KfoZ2DnLbOS6M4DVdozUrxXUAO7qbCbnfI6/4yOF+fVnyTZDyl5
         FDiZuAQURVgJ9hrwa6zOb3CWx0MAAB1p7ux98ws9Dr9OwQouAAYcEPj1ojpiSygpOCv5
         yuyNttgMF2qu7W02ZZ2AzCkKfZ/OT8e25NeAPkmX/VXeRxwP/PsXfB/ysFgjN2blj37O
         NqRfiB1DborpUQpg4jWIomex47wMWyP3PWdVW/WGl+5jQhrXmT/kQ8wgFFN4xqpjA9xT
         eU5PwUjv0eghar1V6t1BkFR/eIIWtWj05T9N7OVRN8eegGlvwRt6pYJQnA2i8VhvqMCj
         pcyQ==
X-Gm-Message-State: ANoB5pmgdugSqswiWvgHdbaOTgsJB+yz3Ey0B2r96vEkSUZ1bQElLvl+
	H6nfgOyfKbrfJrtalLGLl7uLbg==
X-Google-Smtp-Source: AA0mqf7MalKVPbWr/GAFKGm1OeafPE84/vfCuu14OKHdg5q/nlpN4FlnuEUEAN0L4Ibcs5YxB63xvQ==
X-Received: by 2002:a2e:9d4f:0:b0:277:5928:f2fd with SMTP id y15-20020a2e9d4f000000b002775928f2fdmr4488007ljj.239.1669200136856;
        Wed, 23 Nov 2022 02:42:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id n5-20020a05651203e500b00498f570aef2sm2862908lfq.209.2022.11.23.02.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:42:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/4] dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
Date: Wed, 23 Nov 2022 12:42:12 +0200
Message-Id: <20221123104215.3414528-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
References: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024220_204699_92CB8144 
X-CRM114-Status: GOOD (  10.68  )
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

From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20221108005500.3011449-2-yoshihiro.shimoda.uh@renesas.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
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
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
