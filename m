Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F76C624D5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2YuLtV5dqwnx02ixtGzSFDkpJnsTzIj3sV6cdNMlgE=; b=gu0vnwG1AOmL+b
	c6AjH/sy3E19T1DjIqc48sBqeSY1RwuyuhEjSSToGC3JYTzS5WwG/78WVl9lyydRnp/B327mV0ft4
	bN7M7zLXFGEUtu9u/Sg/RJX1DAER8l5dOEb2HlnWaMsllVgRBIQ4/WuokFMkXskvQbQ3p6eXTd0sN
	H5hU6wq+D65HpPI+MzM9mNiMFHsU9OOCpdF+eTORT02rLSBm0pm626RppbJhNrXggdRhW2UpGDsIb
	ojg5FZ6FGmopHquv3jvuVMT4aWa5IzQDWUue5bqFh3W52MxlKJ88EXi1w/aQR9S6MJPBIAgV9/Sq2
	i1CvgItu4Tu+85T2UuQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmJ-0000000C89H-2Xyg;
	Tue, 01 Sep 2026 12:39:51 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NmG-0000000C87J-1zDr
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:39:49 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-47f96c5b722so3010711f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788266387; x=1788871187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=PSi1RxUH1oU6vn8Qf+5AgLaeRjmhNUBH22lgQsnU2Us=;
        b=ZLzOVgV3KOW+/nosXHxTrB6w8OALI4wq0DxUG1IG0FmKsrsSyg8himpd1GeQktv+Ga
         TmPNlME3OMooy236B7IeRe+jKJSBlY4Q0z9/Gcuqwtn4AqSaIUBbPg9Ip0P2VxeOdntE
         Wj+VJG1h5HmdcwJy6ibRDwqe6Bi8uTEaM4IV+dhG4tOxYGsBLxAkZNEKHV9SJR+KRZdC
         fyWrnye8TNcYVWZGixinAwfv5pCERDl5rpq4Mv/H3toUYO0acUsQo6xWzbp1NdW/LTPg
         K8sG82THJTVODpwhG9ZA77eX2DcmgdpEQ78pZX19o8h+MzL4BzK5Pogx4JpCM9oF5z4R
         mYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788266387; x=1788871187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=PSi1RxUH1oU6vn8Qf+5AgLaeRjmhNUBH22lgQsnU2Us=;
        b=AZGZ815uZu66d2RVMeqCZ8Qt5STMUuL86tHOkDaYgvCr+QaS/3UpsQWxRb3vuA3YOn
         Zlwwc0aHaIDa3I1CpcYIl5GrNh86JBnldEqrGZpmERGRZcr1wtPHS37R49NqNqPY0TDM
         ZD0meJ4PpScuCA/kU43PX6+PXkSsqOxbWLaiFN3eNVjqc/oGXKKPAoZd4fzjaW/hvMFq
         acUrU5cQcqG79v6jN99lLQongnLm46rBmd01kMT2ek46eyItEvvKFx96Xu0Zqj/QyLQN
         ENuUXRW/QkrwgPFb0su906QqrAb7lVyFkh9q0Zp1d0WuxzdQwSWx/w6V90zyDnmJPLdG
         wBVA==
X-Forwarded-Encrypted: i=1; AKwUvBwRLYHf/maHJLlE7c40SPsNKTnoNbH5ipoo76SVa2khjck6DfQB+TmRhL/Ny1LXXDXhTBlA4MpnH1o=@lists.infradead.org
X-Gm-Message-State: AFuF++mutw2t+5OMgdeP9oqKhhW71Pc3bAFmHDEp6dEJpywudAmlGLRH
	12xcG7Z7rccBLh0pY5WycIDI4TLmdG0HTGlPfeNVWJwI9xXzNh4IpppaHdvUHuYI
X-Gm-Gg: AYBFou2/lS8i9KOvBGF9rJyEyhtJ6GmfG21KJcOUa8T01H0gZlKikuVAQtiBtpVOFTW
	pH/TlF1hQq3HbbQ+mKF3jFT4r38Hn1jemn5eLNXsKw1lKUPZWcHk2TogznglXwTKiUvQLzxjLU4
	QFrhy0qOxE4bCROL17Uz7ZFGOL1BPDIivsuKWE61rjURnCpRj73Fvp7BDKGIr0XkCzz5U0tJt5F
	9Z/BPxsQ9+RhQcEAeinFDJXh6lO/8CZxNLVDLi2D0DpcB1znYZFc5yQJBYKJTerNRLMPpOkjJPF
	chZativ8rK72Dk2is7PDYsIBtnSZ1xY0armXJdR8bD/gb0I9rsa/3IH8VO9g4T2VNhwwSZhQvY7
	clfyvaG8ZhIAXZ4ZPO5Te7LTyMQ4QG1L862mijxNcqX3jUA8J0W1mmffUf5Ptaq0Nz3ljXz1Eyt
	vbNEUfOyRBClfNCp6SMyxYcW9Ug5YTKw3HkjIyqpBUgTxJIK6+G4DLvPYrcYHbfNCZp31c0AwB0
	LTLbrkVXtgxj12Aa3SY9Jj/x03aJhl/7wVvWOmRh8RpDHiqqmqqgg==
X-Received: by 2002:a5d:54c6:0:b0:47f:4919:d5b2 with SMTP id ffacd0b85a97d-48440fcee78mr11971287f8f.1.1788266386406;
        Tue, 01 Sep 2026 05:39:46 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48442d3d2eesm4644130f8f.15.2026.09.01.05.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:39:45 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
Date: Tue,  1 Sep 2026 14:39:32 +0200
Message-ID: <20260901123933.15388-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260901123933.15388-1-ansuelsmth@gmail.com>
References: <20260901123933.15388-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_053948_521295_15C62689 
X-CRM114-Status: GOOD (  14.72  )
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

Document support for AN7583 Gen2 PCIe PHY used to make the Gen2 PCIe port
work. Add the required register to configure the PCIe PHY and provide an
example for it.

Similar to the USB 3.0 PHY, a dedicated phys property is required to
configure the serdes for PCIe or Ethernet usage.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../phy/airoha,an7583-pcie-gen2-phy.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
new file mode 100644
index 000000000000..424da3c5ad01
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-pcie-gen2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 SoC PCIe Gen2 PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC PCIe Gen2 PHY describes the PCIe PHY for the
+  Gen2 PCIe controller.
+
+  This PCIe PHY makes use of a dedicated USB PHY for PCIe usage and
+  can also be used for Ethernet usage for SGMII or HSGMII mode.
+
+properties:
+  compatible:
+    const: airoha,an7583-pcie-gen2-phy
+
+  reg:
+    items:
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: ana
+      - const: pma
+      - const: dig
+
+  phys:
+    items:
+      - description: phandle to Serdes PHY
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - phys
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@1fa5f000 {
+        compatible = "airoha,an7583-pcie-gen2-phy";
+        reg = <0x1fa5f000 0x100>,
+              <0x1fa5e000 0x400>,
+              <0x1fa5a000 0x900>;
+        reg-names = "ana", "pma", "dig";
+
+        phys = <&serdes_phy>;
+
+        #phy-cells = <0>;
+    };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
