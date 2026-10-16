Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD510CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 07:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7DV0WTqSpk0SguT8JpkpIu4WAPUMElwLcPW2cNTDJ4=; b=znXZCifkpYoZ0e
	wz4vlCKlcEcRbA0/XAznmMspSdwpG0bDQQQAyE8/aEZzcVOOtzk7D39A5Zh5fl8/0I1Vh7rxE8o5v
	mVDgKxrAlzy9EbYPvil378di99aTTp7Dc74EYIWyq+HH15ZBcofxD6ZgnXhZJNXzNOkMY0lX63QSQ
	7geBbr311GCucTwJMrSeriJaPvC28U89F72UmMPEDqtln9DHPWYBpeJsa6dN8nZhKMI0rxIl4s8Z3
	PbD+5uDSuvnayYlP6g1QUKWtNcxQeMEQWX74o7EACNFOAL5XL7SeKe3hbDi/bUzLyW7/2EV/dA/8Q
	LDjpImcRkAwMrwHsZoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHc7O-00000002D97-2Qu4;
	Fri, 16 Oct 2026 07:12:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHc7N-00000002D8S-21EC
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 07:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=J5xMolcA2jijade3hq2GliWPHkN3pbidlI2m81QLD6M=; b=UY9lSJXk28l0CirKK4S4M8417z
	C+wVWhEJAGV9PpfzeXb6xiO2hOvmjAvztw2JUkOYlNWuEB3x4q01xU+/ww9KmBoHn75mSqjQw81E0
	G0Sg5mBvrIuK4GuzQz2Ub7q278yHBQTfIMCZBpuR9YVLpZN7Gwd9QkSLEzWSCg0SPzi3CoMxwCfty
	CMlNUgAwAW6ReHrghpQLPT3FquVK+shU/4bq+zgTEE1+tQuiwtg9548A1c2WE9wKvkDOd/ogZbec5
	HCL+ocbyvGCukBJBs0g9cbStCSBiYlHGVQ4aW89/W3x7yjOA/GygIiq1t480R+bNQ3x1albhEBHAd
	7Z0CHM+A==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHc7J-00000001CQA-3tBS
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 07:12:40 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a1880e1bf1so25514155e9.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 00:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792134755; x=1792739555; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=J5xMolcA2jijade3hq2GliWPHkN3pbidlI2m81QLD6M=;
        b=rkhYEgnv4guZHTP8tbHQ6MAyu7f+U4RuHynbE0iUhFEHjxUt96RTdstSrdPbTM2eLf
         i1E8YwEglo8aWjyrIEhIMrUPPMgCHpYy2KPdgave1y3Ripa7AjLKj0Z+rtSilKWsWJWu
         iyTKHYcieDpm6/tpi+2wTjTecwPi6DfF/WAW5VkGyHC3SbOgMs7ONHq8q9AFRk4dqYb1
         xfkd18r+ZB8t3XCKSMthss502YyEqiyjY4AbKPz2SMYWZy1UAHjIc+RqqWHpMS7mN9md
         6eKM07BMlIat/qreGqC95Zy2xsIwO67IdAkafD7uop0wp3nrsVwsItkXXbymDBYWRpKx
         gMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792134755; x=1792739555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=J5xMolcA2jijade3hq2GliWPHkN3pbidlI2m81QLD6M=;
        b=1GIltOeZBp3APlWAcZo0k/uoTCViu8xmIBWJmCidSz4fmVVbhxmikzIBkyrfkOIFmp
         qM7+SLFtBJgXLWzvdV3CgAMNqn1saS1WdwF/bjxwqZOrW3TVmR7S185o0EifPjU3l2Qv
         8xSatM79wUKLNCfB3M86Il7fU+2sq5BHl9UqEAiMN5gQfuIFAGQu0DMykxzMEi2FIxvM
         A+SszDmjQvBVy9ZIyBdqAyoi4u0FhJYjPvgb4jvbR9TeG/prGB2ihaHpf1ltlBIOanSi
         KDlwUXN7ka6phSckAo3b6KwR1hGVgOBTVlrM9ddnQ0XTyeO21YDnKlvQO07OyHdkXkft
         GQvg==
X-Forwarded-Encrypted: i=1; AKwUvBx6T1p64ddeczvZ6G4ZmCuElCgGKK6MUKxiok31ovnzLBj9OkjNHbwBUro99+NCq2trGtmx3kYMH2Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYJuoJZdXC5RoFXw4MdatkGl2WN3TfBwM7XMTjNht2wvOSxZwwN6
	9Eo9FEbsMnGxbAn11AYbclOp+qmgHFYDL8rYwwRjr1vs60PLtbJ+ZNyq
X-Gm-Gg: AYBFou3R6D3hha1XLSNboy674oc7p3zB3gb3xyQ7f1QhGlIDGlOoHWzxiuJx1H8zleB
	JetyZJ8QF2rybQ+vJ5o3iJLWTMezYhJZXIlgYHY0YvtpEDduVOPdXpNtMZHXH7CR2T2NZkTTu3G
	xlZz06W20kTA/3/lS2KthzJSjKmlrjQEhTTlwoUHzpN9n2eaPsi5lj06u6f5a/wOqaS/MFAV665
	4M9+oqlvwzSRtgBFNx+ir/GgyiCsHRkAzzAHjfrGLgv4WaVk5Pl0dzgSRRjFiX7jnHLtUCSIacd
	/WJyAtWUL7WKDmMcs9399GYaNeLaaqPXXSivoIXq7+VFO7SDj8tST95Zj2tmtZyZfLGgLUiANwu
	2GSZqk390URd9TJLO07wsXeBIfyiPKmQQ7IUTGHc3ygDNGzJe/T6yERTNLV6DHWEjBdgQfqglfs
	mWfKgIoHXTshixK/KC9q0cqDynfcxE8CQ4y41YYmNOziIkEGYUZk2USQiOPlKesnCZ5CQHXHAhF
	es3Dp5wUKU+DE5Hh1VqCZHV8KyqNTy91gvGp1iNV9MtT6KTCdsiGNIl4fdKqFqSW1yKeyUi0L7U
	jYOkjM2zLX4uR2y62EVhbq7GgXhpPSDY4w==
X-Received: by 2002:a05:600c:870e:b0:4a1:6dca:51e3 with SMTP id 5b1f17b1804b1-4a18e4487ccmr433992205e9.3.1792134754909;
        Fri, 16 Oct 2026 00:12:34 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-95-235-252-189.retail.telecomitalia.it. [95.235.252.189])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a1c8a1b377sm61802015e9.0.2026.10.16.00.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 00:12:33 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
Date: Fri, 16 Oct 2026 09:12:23 +0200
Message-ID: <20261016071225.2092-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261016071225.2092-1-ansuelsmth@gmail.com>
References: <20261016071225.2092-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_081238_352869_50A8217C 
X-CRM114-Status: GOOD (  14.85  )
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

The PHY link to another PHY (the QPHY as described in the YAML) to
correctly handle Gen2 speed and mode. It's mandatory to have this PHY
configured for correct functionality of PCIe. The QPHY is a unified PHY
that both handle USB and PCIe PHY.

It's also mondatory that the QPHY setup is done in the PCIe PHY setup and
calibration phase or calibration might fail.

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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
