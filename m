Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56DD8C531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf7zcUhu3wfnt1ghN7c32zC2v8YJeQri7hj14JTLqNI=; b=472HtQZNILvyYT
	nFgAxO8Q6q5MaZTkHByqywvlpVHNw0S9Y/pZlqpYOK8kvtaNoFobC/5q0Zh+fOUzhNEEx+PNd1xpO
	kq6FmfsSzcftEb9ZFfoT9geoWvyM0OEaplSFx3WJnmLREg9wNTfX1vPg4FE0DA2MuVGDVx+75kUFU
	/8eyneoX2AIx/0vRVLmrYJLJWrr4l9zD6mmuwbhacJj78S+owst8IvvnEim2HL8RO9bHLSqB+MRVJ
	KeFHL3qg0r9B7NHQr0kzpUqKAXBwmZRm5bVkRWcAfZWWYXaT6XpiX+hR2lkM7zvlKAwegXR7gi91T
	Svji2HgACXcZ3ewsTRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUlK-000000003zx-094R;
	Sat, 25 Jul 2026 05:17:26 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUlH-000000003zX-2IPK
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:17:24 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2ce7ac92dfcso10191225ad.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 22:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784956643; x=1785561443; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Fhok3rvowf2V2ZvTr/zIVWuKYiTyiporNQXpy3ArInQ=;
        b=k85MzQId/ZQpspXBdeLQlxf5BWU5eqLcloHXo0Wg476dW0h+yprVWlGKOuPWsshymF
         x4HJYxlN7EAPGfviSc+ws2MFRfKlK+VcSp8zFJ1UNKtKAPMQP1SJwQ/4ox4y4h9rkz/7
         s/BpYRGcWAkl1VaknrXMBcYzin0zq/t6LJR5sg1ZXzYRUOuUQGzWDSyx7zx92Pj431aY
         3rnAjw2n1a6wwlc2HTjShT8Pz3UTXq0JvYII+AjzMl/DvltYunYWflsaAlDIOVEmfpQV
         KeX26qCgiauTK9vmX6ShIGanVYoVamqH3G01cNHxwUubkZ9VyHjSEI9JH9cNQwCXdw7j
         fZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784956643; x=1785561443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Fhok3rvowf2V2ZvTr/zIVWuKYiTyiporNQXpy3ArInQ=;
        b=oN2X2K6Vt3YnvQusq06S9Z00SlEOdWAoKXW0iwjyLseQ2EpLrJLGcPqTUubPM2yA+J
         4waDaqaZ7dXj5y00HdR/sruIsqB8KF3pm45XO5EuakAdpAQCO3rI4i5t8fqyyb+l/HeA
         dCkppdEP2GXsTVUv0kywFSCrZVUYypDNxvspeMYI/uvXMDRDAfYtsJ9BFP4uCBo/v22d
         +2UfsjOqDlm2nEabWLHRoUmeJ8AR5HRruSk2ghRzwpYUJkuqkxZkH3awhKh4bgVkR5Wx
         ToZgfcGz/DfRDY3Gi8O8w1S+UQKWTCpeQHVxopexbLwkr9cH+J5okAjhE5jCoPLy08U/
         qwug==
X-Forwarded-Encrypted: i=1; AHgh+RrZHJAj5oxWn4dC6gMdqrf1KpjRZo84hjn026/fzu8pT0WlsXUoyQ7mkZyTi549jJWVDGLufiQqh9M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyeyi0tzAF/VcxTgfnvSFRYy2ETUSWO5QdEW1Y7yIJolVDS4QnY
	h+vhyxnenBYmDSTpkB4fZqJL8wfdmD70sdslTCElO+Kjgd7npwLoi+qVcwLGsfznNZ6TiA==
X-Gm-Gg: AR+sD11xMQDM3CHI1gs1v7AlKfn5pyUFl8mSQQcOaPoLw6C5RcL5NewYywmIMgZwgXg
	jBHGx5Jj0mFtIFNE8EUFVDjD0wHOUjJVt53jAi2etWkdQGeBOpM45g8A8ANvdIo7DF7/EANdTjB
	MbgM756WWRz04eFIWF5faofOC/In0YjQxnOQsUbTp39HaWlII9rCiEBfGwbTVbrYYStIHADyj+e
	iYVilD5XIvWUoWrpB5bYIcbAaDxt9QnSu9knQOCfXSoq53nPvFZdkjXYNFGsbGFqiIccvczvuGi
	m3v2yXhbR798SKqn8+8v2pILjQgkCeiqS1VMzhoeQXrMCeFaJIO85Qchc5TtPpqZzv5K4FaffxE
	PPJtGi/uKdnscx7PFNoNRfJeG/PR/M2rZ7E8XrO7HqJhwnW0lO+oS9ZvvMZDbxyn1+w==
X-Received: by 2002:aa7:8885:0:b0:84e:2bb:2d3e with SMTP id d2e1a72fcca58-84e594330edmr623584b3a.9.1784949446508;
        Fri, 24 Jul 2026 20:17:26 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:17:26 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:34 -0400
Subject: [PATCH 02/17] dt-bindings: phy: add SpacemiT K3 Innosilicon DP PHY
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-2-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_221723_586753_3E4E1FB9 
X-CRM114-Status: GOOD (  12.32  )
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

The SpacemiT K3 DisplayPort controller drives its four transmit lanes
through an integrated Innosilicon DP PHY, one PHY per controller. Add a
binding so the controller can reference its transmit PHY and the pixel
clock the PHY's PLL sources.

The PHY's registers are interleaved with its parent controller's inside
one MMIO window, so it owns neither a reg nor a reset and is modelled as
a child of the controller.

It exposes its PLL-generated pixel clock through #clock-cells, so the
APMU pixel-clock mux can select it as a parent through the clock
framework.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 .../bindings/phy/spacemit,k3-inno-dp-phy.yaml      | 48 ++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k3-inno-dp-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k3-inno-dp-phy.yaml
new file mode 100644
index 000000000000..f8f1ef372951
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k3-inno-dp-phy.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k3-inno-dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K3 Innosilicon DisplayPort PHY
+
+maintainers:
+  - Cody Kang <codykang.hk@gmail.com>
+
+description:
+  Innosilicon four-lane DisplayPort transmit PHY integrated in the SpacemiT
+  K3 SoC, one per DisplayPort controller. Its registers are interleaved with
+  the controller's own inside a single register window, so it is described as
+  a child of the controller and owns neither a reg nor a reset.
+
+  The PHY provides the pixel clock its PLL generates, which the APMU
+  pixel-clock mux takes as one of its inputs.
+
+properties:
+  compatible:
+    const: spacemit,k3-inno-dp-phy
+
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#phy-cells"
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy {
+        compatible = "spacemit,k3-inno-dp-phy";
+        #phy-cells = <0>;
+        #clock-cells = <0>;
+        clock-output-names = "edp0_pll_pxclk";
+    };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
