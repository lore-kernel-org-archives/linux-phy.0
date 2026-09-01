Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF67C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpZsvfO1e78X7aNEkDo95f460lWj+zo7uvnHeEj6ris=; b=hKsjNJsYEMUbmj
	4Q1pfg7IXJV6eCYHOoQveTTA6UNGVOF1X45uugboOO8/6dBl027n7Ms7N8im+NNY4uOs3JcdszJm7
	FAeHrit+3pJr/iSSRg/Oo5oS0iPAglT5EzHUu6DtdLvjoVWCebF+polzSFxr4vjz6DZMcHKPwfSro
	u5lccinNGZWukzCnyN04kO4w7xu9BCSI+8PSoy+h1JQC/kT54kB2kiVlHSOnlLrYutYz7gUxUU/gt
	30EQlCk+xNZKoxQMxzuayQ3F5lzQSySfhJCsbU4YSvxjnBG3DwbF0VOGfzFyPGTs+rg46KehPaUGk
	rI2tXG3QEX1to+qa2Xjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1O4Q-0000000C9Cg-1rCR;
	Tue, 01 Sep 2026 12:58:34 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1O4N-0000000C9AE-2fPo
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:58:33 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6a668cacdadso2050013a12.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788267510; x=1788872310; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=3SoUapY3IA8tD1+b3WHVHM5822Ty391/3XnWQKi5WWU=;
        b=ePPYjQC6ZkumV82wFe5Zzjmo/OEROCwsFwGzanI5/KFWBWrz9FPXBcIpTsH1da3Aqg
         8al0Y7hWBLRsOZQ/YDf2OaUdv3/DfoFmuSxkBczias4rMyNJV5rL6ipHfVuPyXyYYHvn
         /gs74OGB55BfBytSvM6l9zHB8GuCtg47d9ysOneUV5lGycRiJvcFvxc4BtXoXMzfwk5t
         J/qth+adWsCtNwuFu0Q/DK8/Yex1knWWYXn4/ueNPguMveyv/3ri8rF4mGf1jFUf4vs8
         XbOy0QSAAPnDQo0vDCcz2qURKABIgDeg8GWzCLUZAem6zRwF2SCpm4ryZB16nsmkpPWa
         oaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788267510; x=1788872310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=3SoUapY3IA8tD1+b3WHVHM5822Ty391/3XnWQKi5WWU=;
        b=jE+rvuCvPt3ZkrjE7y0TvS96m6NdNcFD5qlfdlEyKLRY8EkSAeThBqJOmzsDWfbrMy
         1+VB1Y4HgooS4rkGQaaj/oZ9lmcGjaFGVzan/CBP6B6ctDZ4ciJt1JG07HUMbFtDQwht
         K+qTs8ZIQr9DehCwTp/nAImlkKXKKu3BHGQC6hk/vHqU3kUjxMmZnoswDGzLFMse8LKz
         I+CVehJGIxhCD9Vu0iGcTFsXigs/uUtmc07nymKjinXUQnkT01FiK8WKUr6xJL3tRHVM
         8MyWSyznbNnpjyBt+FbGI84jKZqprgn7jRG6Zjy0/9yV82PB8R6BHE0CJqx1N+M7TswG
         goMQ==
X-Forwarded-Encrypted: i=1; AKwUvBx2OSxfNXTxJlfWgJ5jzG+EHn+htF9ITiAp3+CCACwgsClSU9SOOhdbGtMCkCFPvmwx1LwEZYa48WQ=@lists.infradead.org
X-Gm-Message-State: AFuF++kk6olvnkdhH04jyeZ1B0GmHjMt3Fdcp3mpe3HFTQBaxo0Eoc48
	iOe2DJpJ36eWVh38Hh7WyAtBG3t8Qew7dDVG+eHY5ALAs/7ppURfsD3Z
X-Gm-Gg: AYBFou0NQ2itiCJUztDo87QUxf3e+xojfQazW7NMgz2efN5evYszvDhQuSVp4ivENTB
	4RBIV95s+eQLKXiMtVoHhaZGqcUdVkgnC659KOeSvNS9yRXd7nQ8CbVF8Iflxx3DBfOvXv4lR0Y
	ZHdqVprAidst9FlmVU6GwHJHP/q4t6svTSjf34zvj8SPK8QYm5VfOAHmy9MGuh5lMxu4K2GrbQ4
	Bh8lss5uXAZtzTO6jGeCcWlXS8K9vYuRdFv1lgi26ONMmcxRqnpcQvdiPColRo6UPGP8ObVUuif
	TqQ3jkzDOTFn7c0OQpFNFEvVkgfbaGj4lch0v9Q1PRxDGtlm7r6lAz0AiwbM1f2xwIR7Oo6CBob
	4mHgAdCdrnM9RVrl9ObUYt4EguWM6TV4RG86G4Lr2GquPQvW6s0XAiRYiftP8CZMfTE98LMnxVJ
	vF5FxWxGIcXXRSm+aQWpWTnxqYF7hX8IQFtVO9iakcYIxqvgvreWSTFCob2tuEpoGj1G29ama2L
	/gcVsSUBTqkmYP1lBBlNrg0e4JqZrQ+Z1muIwHfqRFXM+UL+w64hABbfpzXX68=
X-Received: by 2002:a05:6402:5048:b0:6a6:32f9:d7cd with SMTP id 4fb4d7f45d1cf-6a632f9d943mr12264712a12.18.1788267509677;
        Tue, 01 Sep 2026 05:58:29 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6a66d15d10asm773959a12.28.2026.09.01.05.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:58:28 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
Date: Tue,  1 Sep 2026 14:58:17 +0200
Message-ID: <20260901125819.20378-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260901125819.20378-1-ansuelsmth@gmail.com>
References: <20260901125819.20378-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_055831_723255_45E935BE 
X-CRM114-Status: GOOD (  13.80  )
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
index 000000000000..a8ec5ac781cc
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
+        reg = <0x1fc7f000 0x1000>,
+              <0x1fc7e000 0x1000>,
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
