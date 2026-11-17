Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E309606A329
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 00:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=q7vb0KDt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eSuh131q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AApga8JOCgZa6Oz6iHP6vtOQrfYSTz3Cpv6Yn87/mrM=; b=q7vb0KDt0TiJJSgdOdHBcjj/My
	AB/UpaAEu8hHqCWau8TEjhzh1iFh5kDKswfTKqcZvI+JB5c1IaJf840BcysmyIYgyCuLBPH7baspO
	aJZCCAAL8PfN79vOLZfoOSKquR8z9XlOxwiPcDHKiaWmmWfj8BYJ7YPfWovGEEe71CUe/PPiZv+wS
	wGpS6aE0QXXxWAEMBiufvyN3wfYeJemfZdKYud5Eykuq0/oxnDxUwFLctG7cO2mS1L7PPdA8GT+yv
	P8HlfvrmvSn6k5U+SEG6mF+pmM4j1/f4+L31OZ8YgW5/LvFiSxwjVls89MXDtPJB5oEcD/BxP1pEQ
	6OWshiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT770-00000004FTk-3MtT;
	Tue, 17 Nov 2026 00:31:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT76w-00000004FSa-2Ijn
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 00:31:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E0743462CD;
	Tue, 17 Nov 2026 00:31:45 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794875505;
	b=AlVpFnaslZ1O1LIIQgjx5ZHYwCk0WYkvAW3Y872cKd5zhxNM7PCkT2jz/OPXbM8vOWAC
	 yh5POaOPSIKv8gaasfd6m6x3YQVtx6HGxKQvF6LX49/JiJzauwx7hf/9nq5Qns5AbPjTq
	 HaJtDYh7tBSuehbOYpMSu5NYB8tNix/2PKsD39daaCcDTNos2bm0V1s2oP9hO/xDYmhbC
	 zeqDLPWvahF1jIN2E5i+OaQqUfF3b5opAem7a8/dQUWLhyF0hSf5xUGA3v9u/2+ngNFqG
	 MeKj+HU+L2bKW1s+EWsLQKZxQoZDngiZ1DqNiGO5YgYc82JDqIszGg0uCUX4jQr2m7A==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794875505;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=ZKT+sZzZuKvfRrL66YEHa3jO8cYi7BVLbrVOtdzv/+s=;
	b=eeQJiRj8YUSOoa+j4g3bMsz7OqG0HZUq52nGQabmIxQPQ/eictltcXjIDf0HtfZ7qQam
	 6qbUJ0pC2EtMSRefvX2rpQ0+4+A0boPNC7pLUrPSCfUMO/iWj0kz92ZwUJsCGZjcNGU/q
	 m2ZDnL2ypCj0OqA7JKCAJOH2ivfOAoP0sJklpw9DOXyqFMk2+JhTPCtc050kedYlmIegp
	 +44M2fyjB4ODEoyB7aWzueTe+VsrYeobDiZ3CaqZSUbCr2ssV95ph4TDPBghw7xWgAHJa
	 OSCKMx0QEIhe1t310lkQDLjLNh8TD9hRK9sIl2go0nq7gMmgW3LM1TJtx5f7DV0OCtA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 7B7A11F000C4;
	Tue, 17 Nov 2026 00:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794875505;
	bh=ZKT+sZzZuKvfRrL66YEHa3jO8cYi7BVLbrVOtdzv/+s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=eSuh131q+DKzGfwToYM8ITAtf/1d3Ibn93TH2qJEiuWCBMlUjUK99Z6rPGaP0g4AR
	 B2SO7wGTo0Ard/sQY8K3aBPTvxcA93/E/YM4xzVwOosG6Sjpzp9Do+nAp/4u2pvMiW
	 Iq0I26Nc4H3C2RgnjtqgF5Z5411DFovpbutY3R3cyJOo9+BpDRpdJP18yb4vigfJsA
	 qgDH/uCDm26RTQQAkAGYjJT7s275PrBPg8FRak+igzZeuuWg5fJt50yC7QA/qLp1VP
	 rV4i0ktynYGeJI+BuuyKUsklJc2RB1RWZvDyWMUHiQEBQQio8I1wFN1cWbfDXVWCBX
	 iRWLHAYJhNITA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id F0CEA4A635;
	Tue, 17 Nov 2026 00:31:43 +0000 (UTC)
From: Joseph Telaak via B4 Relay <devnull+joseph.telaak.dev@kernel.org>
Date: Mon, 16 Nov 2026 19:31:32 -0500
Subject: [PATCH v2 1/2] dt-bindings: phy: Add Siflower SF19A2890 USB 2.0
 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-sf19a2890-usb-phy-v2-1-df3ce9d23f5a@telaak.dev>
References: <20261116-sf19a2890-usb-phy-v2-0-df3ce9d23f5a@telaak.dev>
In-Reply-To: <20261116-sf19a2890-usb-phy-v2-0-df3ce9d23f5a@telaak.dev>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Joseph Telaak <joseph@telaak.dev>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794875503; l=2519;
 i=joseph@telaak.dev; s=20261104; h=from:subject:message-id;
 bh=f6jkKWPEJpHvw7GQNBeKtVPZhfiBTHRuEikeBW1F/aI=;
 b=0TxT4hFwBX4ctjLhXol0oKfxcNcIOA3WJkP411dJR2TC1ExAKcf6SnHtBpX7wIYkFW2lqMbTI
 lu+kvH7q+VzAcikxQhTikykSr72v7kvhRN87bMjSXdeBLXYdLyI6Oly
X-Developer-Key: i=joseph@telaak.dev; a=ed25519;
 pk=oQI+UfddlZ0wK2ac4WKOGNjUl1ZEN8j9ZVFSqEDoNP0=
X-Endpoint-Received: by B4 Relay for joseph@telaak.dev/20261104 with
 auth_id=1404
X-Original-From: Joseph Telaak <joseph@telaak.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: joseph@telaak.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Joseph Telaak <joseph@telaak.dev>

The USB 2.0 PHY of the Siflower SF19A2890 serves its DWC2 controller.
It takes a reference clock and two resets, power-on and PHY, from the
USB block's clock and reset manager.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Joseph Telaak <joseph@telaak.dev>
---
 .../bindings/phy/siflower,sf19a2890-usb-phy.yaml   | 58 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 +++
 2 files changed, 64 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml b/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml
new file mode 100644
index 000000000000..77b8e35d8017
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/siflower,sf19a2890-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Siflower SF19A2890 USB 2.0 PHY
+
+maintainers:
+  - Joseph Telaak <joseph@telaak.dev>
+
+description:
+  The USB 2.0 PHY of the Siflower SF19A2890, used by its DWC2 controller.
+
+properties:
+  compatible:
+    const: siflower,sf19a2890-usb-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: PHY reference clock
+
+  resets:
+    items:
+      - description: power-on reset
+      - description: PHY reset
+
+  reset-names:
+    items:
+      - const: por
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@19e0c040 {
+        compatible = "siflower,sf19a2890-usb-phy";
+        reg = <0x19e0c040 0x60>;
+        clocks = <&usb_crm 2>;
+        resets = <&usb_crm 1>, <&usb_crm 2>;
+        reset-names = "por", "phy";
+        #phy-cells = <0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 93abbb315065..7033d9b6152d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25698,6 +25698,12 @@ N:	sifive
 K:	fu[57]40
 K:	[^@]sifive
 
+SIFLOWER SF19A2890 USB PHY DRIVER
+M:	Joseph Telaak <joseph@telaak.dev>
+L:	linux-phy@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml
+
 SILEAD TOUCHSCREEN DRIVER
 M:	Hans de Goede <hansg@kernel.org>
 L:	linux-input@vger.kernel.org

-- 
Git-155)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
