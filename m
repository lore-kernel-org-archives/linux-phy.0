Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F94B606D827
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 07:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1mqiyj38;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=I0/U8m+M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=q9sS/6+9FScbIhA39s7n1tDol5xawQAtUOTTuGDYiCQ=; b=1mqiyj38VGQ+L8eKx6r60955xG
	1yGq/6B/JbiFrB53qzFeuRc/i81YZoS8IKbYxUb7G+dy5+x5xmLh71xGPYniovxj1nPPUFJHrbTQ9
	DpvHwwHUrQYFupMRe88M6lJF+mfuqiKmJCEOMd/DnnUWZKvzt3aqpFCY3MVPYMt+xNmIRyEd5Mz6W
	RAXgmBPvcSnnjvSGyHVSyFHncYSK5ZmHJBNu5RisZs0XcbkhNtKOo+WlPUQe9BVpRVNL8SHdxXThW
	1FYGGvEwQB6tcQtAktilhewpBJKmTCjool+tY4LVkrZ4N1sZ03ZGiJ0hitFVhL/gmSr4lChyBZdJq
	3nnwWjsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVJp-00000004VfN-16UV;
	Wed, 04 Nov 2026 07:22:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVJo-00000004VeJ-22gV
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 07:22:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E8E8A60DAC;
	Wed,  4 Nov 2026 07:21:59 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793776919;
	b=Ds0T0RG9V2ZUvgggRbf5MzEyxG6R/3VBOczPZU/GHInvHkByNopzDBNAK6dK0Mxe4dMd
	 /Ac2VUqLwT/bL0ejTqDBzOU/1rbm7pIKbx75+S90CGzv7xUuD3auTrpnFyX2ZqaXlLEli
	 y8a9ZXpq4xbJ6JI0NLeIn8CI4AhxTtQbRn8J/MC3/2fAjfzUEGOJdLH3w30SQNBNUOGJp
	 u19JQ4HLKHP88lJVthbQaa24FuXtWg9n3cMm7v6pRj6g2zvhRHMsYbeeyeXRx8v0vybkD
	 wNRZvNGr0kMZi4S7vmk5PxsHahbQW+S6Cd7LRhcrCN+G/q5+tN5g0zwEcS+RUkNKg0w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793776919;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=kaYjtPZUoVrDj1nOWxW35I3iHngWVmtTFkKHlkBv6Io=;
	b=wMKioiWsWV0hPfkwqMdjKW+i2U4+gTkxyF4qOIgSCn6Q2ljmD4ksPPBCWj7RMULc9r8l
	 BrAenlcHpCk5iOD+aZNJnma8McUeeRJMbIV1s0OErj5vHX6rQAOXHRH6lUXTHrkWW3wlE
	 7UzG2wfZJg8kv69suE5rwuIZX+b5CQE9xW/40aS+fcogPLHNQqisrxRUo1R+VQ2BX80na
	 FeyZfSFPfJ5a0zzF9P8uxOLimIZ6SRqnnW5QcQTUgbOpAQoAjlBvKAU2UavU/Z/8WY9ZU
	 JG1R/au+UeqTQQNGrCHSrr5+dfTsM209gs13wH/5YZZ17QgeUSh1cUvOjPcfvF0WzOA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 029F71F0093A;
	Wed,  4 Nov 2026 07:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793776919;
	bh=kaYjtPZUoVrDj1nOWxW35I3iHngWVmtTFkKHlkBv6Io=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=I0/U8m+MyI5fZ9gcN6v5mwQNdjJoNn6B1TE3JEToeFNW9YXaToi0QzuTgyCYXMB9E
	 p5BbQhht2p978ZbNaVhrY2vGxWS/skcJoroHymFZG848IQyXcgdTYSXJnlQtMpVCrc
	 giQY+ySZYNJIB+BYQ+uiHKGt1emwUMdv6/JySeqvLhxabkXM6mSDzgS98fR9D3RjDx
	 M5Cygf5HZXUw0qytqQ8n4q13YH2dZTCmE8NC579cRXbU9/0GGVdLky12tQwsjmrO9G
	 Sd1KQW1ZO6bEXicrxTWET90qAKFczy+88cK8820bldMNVCh77Bg3pf7WbOKPSiNamy
	 ixNc92olaX/jQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 8CA2246D18;
	Wed,  4 Nov 2026 07:21:58 +0000 (UTC)
From: Joseph Telaak via B4 Relay <devnull+joseph.telaak.dev@kernel.org>
Date: Wed, 04 Nov 2026 02:21:52 -0500
Subject: [PATCH 1/2] dt-bindings: phy: Add Siflower SF19A2890 USB 2.0 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261104-sf19a2890-usb-phy-v1-1-db0cad937614@telaak.dev>
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
In-Reply-To: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Joseph Telaak <joseph@telaak.dev>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793776918; l=1906;
 i=joseph@telaak.dev; s=20261104; h=from:subject:message-id;
 bh=L78MlUOk5gZfeSsbnMT/Q+d7GI1xujs8BnbBhuQJ4ak=;
 b=S0+qrfCc4jlcI0wF2PTmgXo3vKl2FLJ74NXUncXO4hPQN5uK0b3lEfp0yIN8I2GUR1VxfazEG
 hM7pafvztlZDtw85hEqat821BHMmMtIwsXdoIApjgwDO8UvQkw91GhT
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

Signed-off-by: Joseph Telaak <joseph@telaak.dev>
---
 .../bindings/phy/siflower,sf19a2890-usb-phy.yaml   | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml b/Documentation/devicetree/bindings/phy/siflower,sf19a2890-usb-phy.yaml
new file mode 100644
index 000000000..77b8e35d8
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

-- 
Git-155)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
