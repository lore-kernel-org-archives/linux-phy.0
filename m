Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03B2FF887E
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 02:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFCrg0UfZDaI0y6A9wq6Pl9Gwz51C5aYAOyGb2TOa4k=; b=xUPl/gID96madg
	ks5C6B0WW1i5Scn/zV2DTPY+zCZy+7OBDXuiSLuWqipgMwhFgGn/PScGlszPO8DAz0riFyD+ZY0sF
	gnYcyF+XK4MRheHdjRVKjOgYidbxTgTrsPTWGpT7tSYRK0IycHhFh5tC8f5igTChfokcOI6lVr8Lc
	ECJNV2CUvPMk0Y10tWJ4TrAlfjv8TlNPV9aKUu5uxNV3YPVg1goqtJtU/y0YCeKmWh93q/6w/kXzG
	qrPnEysKWLENu4BO+jssgVhkxAxPW1tOdngUx2YD5Qw0aIFW3RZxz1FmLzI1Rua+jYW4eEIa96jDC
	iy6u6cjKuA2HrXcCivyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIH9C-00000004SDx-1fT0;
	Thu, 30 Apr 2026 02:29:02 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIH99-00000004SC5-3FfF
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 02:29:01 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-c795f096fa5so128250a12.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Apr 2026 19:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777516139; x=1778120939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yamg2LURb/TSAJp5ESv6zShjxXxQYQ9667SLJMB3Nuc=;
        b=sEx7JQw8Ym8zXW7TYXjOogQPTKGESEJNOlKPH5VD1MZim+9JDrmJ4YdZly2mFbgJWh
         TqxK7O9FeOjjD/Pn7Cb9+FlR5OKihxmZ09iGvBta0S3VxZ/bhAjQQM71dAia5U200tFz
         ombJeveD7g9PoLlW0spnjbMWiwvRiUStwlh4Zq+txdecZdYWC6Z/xKumNfR1gqCvp31e
         +Ut6ETnYntIV8twtdbf3nlnS6PIbE+SJgkB0pxyScGkYee8VP22Z82uYFJ4Mdnrty/rR
         zHwjfybRg5P9t8QkCJHalUC5d3tmZjcV0+M1FDsaooN26mIMvprNlWBR26YtR9sZD2Nk
         5Wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777516139; x=1778120939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yamg2LURb/TSAJp5ESv6zShjxXxQYQ9667SLJMB3Nuc=;
        b=T13PegHhVOK8za9Hca0xh+M5JrbTtaxp8eaWlShqMAqYSrQQIcCsq5E9CfQbKo/z5R
         Fz/3C7VzhzJY1g+xaMtSxTKw3J5yChl7FfB9b9yNROCPAtEi8JwOhf9FKFZxnuQU6/DP
         gQyvSMaOTiRrDU79DH2O8KqkVtozKvMCOC13GWTrBlFlotYgU0OWyocasmdzimRDwYGQ
         UexeUKecDP6ep7UeLjt181+BnZQDCyyH2iC8qWCAyukAAnK67RV1hebS3sGH0zTw11BR
         0ILzxext5GNmuFhHLgulFfd09MdQj9VxBmtrlpoN5bMEyi0gEgZLJIJIiQzO63LB7Q3J
         fOcQ==
X-Gm-Message-State: AOJu0YwsC0EEOVtjdVdj8WWDOqupIk68opgS3XDcO6l/BldtiJvmnjd0
	Q092rMvGUvlacA5+9Cep2Hrm/SJvIKGeXGXeB/75Ks0ee4V+Rx9DQ+Ce
X-Gm-Gg: AeBDieudVDM+lIbptbh5TD8bZsCmZtaY4XqJwg2Q9HAl+asmRuudBoyZDEx8hBvU/Qg
	gfhwvoQwjbu+gmXqPD+jaoGelsSKWNOiIGOvup3Kk6SXlawWmZiOSzzbhnDJ4z+amTme7c3oS2N
	EtsLl3VXEKr2L5I/nkfk99eYB/DemZuFfAoWbzsv9uwU61dR6PwtZDh+ttdv5J+l8aYpfrSOWmX
	AybrDdu+HUptGD2X0BP744ItcWWzbGfgPOyiBGI98GaLDR9yR3ow7h6Ox7FBmTeuEcWJUZzOfFM
	2zRkzoykgJNjgyheeEydelcF8vmFI43Qg1U0AYb6ld2chFbJ8DUodEuamuTadsuzdm+/jdVdi3M
	UuRuCwXClcacGRMfUfqUe/aIb/zOpW0lHgRi25HKwsyjR3x29PotjOYIA2kCiJzAGvVenE6A4Zo
	MfqjexGx8kJ9a9QfBBvJGlC8+aU2JKPCs/NQ==
X-Received: by 2002:a05:6a20:1aa3:b0:3a1:90fd:dcd6 with SMTP id adf61e73a8af0-3a3cf6b2d12mr738604637.31.1777516138751;
        Wed, 29 Apr 2026 19:28:58 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7fd64f0a08sm3373649a12.15.2026.04.29.19.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 19:28:58 -0700 (PDT)
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
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 1/2] dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
Date: Thu, 30 Apr 2026 10:28:40 +0800
Message-ID: <20260430022843.1090138-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260430022843.1090138-1-inochiama@gmail.com>
References: <20260430022843.1090138-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_192859_842010_D73AF73A 
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

The USB3/PCIe comb PHY on the K3 is a complex PHY group that
can provide multiple phy for both PCIe and USB controller.
Its mux configuration is controlled by the APMU syscon device.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 .../bindings/phy/spacemit,k3-comb-phy.yaml    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
new file mode 100644
index 000000000000..7aa2cf9301b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k3-comb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Spacemit K3 PCIE/USB3 Comb PHY
+
+maintainers:
+  - Inochi Amaoto <inochiama@gmail.com>
+
+properties:
+  compatible:
+    const: spacemit,k3-comb-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 2
+    description:
+      The first one is phy id, the second one is phy type.
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
+required:
+  - compatible
+  - "#phy-cells"
+  - spacemit,apb-spare
+  - spacemit,apmu
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@81d00000 {
+      compatible = "spacemit,k3-comb-phy";
+      reg = <0x81d00000 0x600000>;
+      #phy-cells = <2>;
+      spacemit,apb-spare = <&apb_spare>;
+      spacemit,apmu = <&apmu 0x00>;
+    };
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
