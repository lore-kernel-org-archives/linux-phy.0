Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F230C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 02:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suZFArHQIj0phdctTALPnT1fs1K9OwMgKGTCTHuHsPQ=; b=3q7NEA26wwvxcG
	tQv/3IDtzR26zhcEgGZQrH0Pv9Oj4Es9yd4Fr9z9JIYPtbI/uYL8PAr9TSZ86eUMLMp+i7zYt/hN1
	bZqQXF78RCuUFjj0DMZ6IBBEO0O1AODkPa4Ip0np/SYUWiDGhhlNQ5SHtkUcGM2h62DC1MQOxQnJR
	zzmQ8vNUt1hdXwGwI4AGnF7IngEUUjJSOCGd+Dct8dne5ep619Jl6aI60RBLPuHqE6JMvxJ3PvyI/
	Rkm6SovCije9sMLounLAR203gZEC6P+xIjku4CGTkCM1g0iVVkzcvi/zs1eg0by/5QUdwfI5unGBq
	061MQzpHRtEkg7f3IADA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTMu-00000005s7V-0a5e;
	Fri, 03 Jul 2026 02:11:04 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTMq-00000005s57-2sYn
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 02:11:02 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-37d46e0d246so65146a91.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 19:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783044660; x=1783649460; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fLtOt0nYZtjUYJXDOkZT3LzWT/GyJY005mggTmWgITg=;
        b=F7W0iRxZ9sRYZkSIUyyrZ40T8L4gnDGAn4E/Wpg5hW3LZ4EQtjQ8GGi8lDECywLDFf
         JkIeow9FyTfqbSJOQNiMUe5k6I3YVr1n/K/H/p9A/nD5wonGOrYSwqUN35Tz0yd/AFXJ
         MStM3dMMbkMdZ0jJ6dM1xaTJroFfIMXY2zM2vSOBiZiMuOuXzBVXM705GPjkxWX3MQI0
         Q8LKLkC5GzwygEZBwyUFXowe9kDEWYpBy0fUQEs4NSygQ1RNgsH2gtNDrafQkQ9eusW/
         94Z2x/qSs6n7HZN79whhF3QYJsfWTNyGhToa+IIEIHZDY8xZhIaix3wAC0pY948eD6uS
         /qLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783044660; x=1783649460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fLtOt0nYZtjUYJXDOkZT3LzWT/GyJY005mggTmWgITg=;
        b=L+jlXrtFCljsInUY5FbGSiMGxPsd/YmKQZHYuVwi854BerWFvP0roaY0xPgkxSxm2U
         UEfjHKPX2+XtCHePb9H5pbvutWfoqjnoYmpKElvDswcGTilVHDJrLq9BNLLXw16THHwu
         1cEiCnL1JBCfWYJ8zTkMsVOXQCPVjckX/MBmbXNZXQH6bLxSsdnZdOA6O+HFs80mMnld
         8o1u1I3ySCegdyxYMT59u3gnlSWsaDme89b5teaqcOTUdEZ3GVToX3oER7kTr+ZEwO8+
         R15PIQ+HtxhdP2VHSlf6t6in7SQ0LZlU1H4ECCvK4dRG1gVkDInD7CljP0qeTgeNHeTW
         bGYQ==
X-Gm-Message-State: AOJu0YxnwoEkaPPDtpF0GixTcqWhWONvQKWw6Zt1phWi9oFXrDY0tdD+
	FhvILWuyiBE5H9RhmDJ6hA/jSTZkCHO3t18XP7AEoGHZFX5LHWz9hPFf
X-Gm-Gg: AfdE7cmLLVlVLOQu69V/ixV7X2D7RanfeFxRLeF5i/9LnmONLC/KJk1bTFUtyPrNiEv
	/35tgfvxumIJKUiROfBpHx82jpJFBdNuwehQDkdoR4sbu4jHi2cX+OqxNvtU7VDoXHpnkupib2K
	CPWvuI285GH30EljKMcHMHKABuDs0dYvocbIXDbJoVooKfog92LV0nR2YhnZ5e5bHYz8FvXoaLD
	K8E7HBeewZJWHqDpZJBMPzcQ0tMwzgKw1MtSmva21N4ZVAe5SZywfZ4Nitx3+/b8WFFQEOtnFZ5
	CUlHVYfE98VysGKDmaltkClvKx4zUsJRyaao0r3kgdrKMPlPVkd+/ohnijr8Y3JIL9E50uxVU9H
	h8Fs4VeHQE8hPepVZRi6MzFhMCq74AQTNmdfEGknUYtCeQ8rGNImMsjYfgY0NyY9nOHCkiRuM8o
	teU4PnniXO7D0=
X-Received: by 2002:a17:90b:4d88:b0:37f:bfd6:8b40 with SMTP id 98e67ed59e1d1-380aa0952c0mr8804402a91.5.1783044659714;
        Thu, 02 Jul 2026 19:10:59 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38128174885sm194920a91.16.2026.07.02.19.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 19:10:59 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alex Elder <elder@riscstar.com>,
	Ze Huang <huang.ze@linux.dev>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
Date: Fri,  3 Jul 2026 10:10:22 +0800
Message-ID: <20260703021024.495433-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260703021024.495433-1-inochiama@gmail.com>
References: <20260703021024.495433-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_191100_733400_7851B528 
X-CRM114-Status: GOOD (  14.29  )
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

The USB3/PCIe comb PHY on the K3 is a complex PHY group that
can provide multiple phy for both PCIe and USB controller.
Its mux configuration is controlled by the APMU syscon device.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 .../bindings/phy/spacemit,k3-combo-phy.yaml   | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml
new file mode 100644
index 000000000000..ed820cf697b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k3-combo-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Spacemit K3 PCIE/USB3 Comb PHY
+
+maintainers:
+  - Inochi Amaoto <inochiama@gmail.com>
+
+properties:
+  compatible:
+    const: spacemit,k3-combo-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 2
+    description:
+      The first one is phy id, the second one is phy type. This
+      only supports types are PCIe and USB .
+
+  spacemit,apb-spare:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to APB SPARE system controller interface, used for
+      PHY calibration.
+
+  spacemit,apmu:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of APMU syscon
+          - description: configuration of the PHY lanes
+    description: |
+      Phandle to control PHY mux configuration. The configuration
+      is described as follows:
+      bit 4: 0 - PCIe A x8 mode, 1 - PCIe lane share mode
+      bit 3: 0 - PCIe A x4 mode, 1 - PCIe A x2 and PCIe B x2 mode
+      bit 2: 0 - PCIe C lane 0 is PCIe mode , 1 - USB mode
+      bit 1: 0 - PCIe C lane 1 is PCIe mode , 1 - USB mode
+      bit 0: 0 - PCIe D lane is PCIe mode , 1 - USB mode
+
+      The bit[3:0] is only valid when bit 4 is 1.
+
+      This mux control does not affect the PHY for PCIe E, it is always
+      in PCIe mode.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - spacemit,apb-spare
+  - spacemit,apmu
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@81d00000 {
+      compatible = "spacemit,k3-combo-phy";
+      reg = <0x81d00000 0x600000>;
+      #phy-cells = <2>;
+      spacemit,apb-spare = <&apb_spare>;
+      spacemit,apmu = <&apmu 0x00>;
+    };
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
