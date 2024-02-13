Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 307F9C4829F
	for <linux-phy@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgAjuj68nnmiTaggYf0nCuFGSSrDGfb5UDaNXVKbSDE=; b=uT1Me6AHJ358NI
	3mPjV+A+e56pptSylbvxnx60ofyrCC9TRfnRHiueHU9tmyR8NvwGbQUHobKSpfT0MSvSu2UWb6vZM
	gaRjIg1MreZch5zB9VzVWSTzohyRsXVhMrc7WA2AiI0fdVytleqL3W2HHLPraIcGLzs97vaXOtrOd
	jp4v7SuL/diI0Gj7Gz0SnBlju1iA7eE8MR0F3TReoC50KxFj3oy6mryVMCE6eQLtbI+P9nNPelZe0
	/iBVavmHDVs/PYGs1eg0pglrOc/tGzUBNE8GHAtteQ6HzcvX/7m2xWEahS1SR8ktgtNSvyiohgrz1
	YUyO7qOxT0W44m6RtL+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlc-00000009yIh-2n7C;
	Tue, 13 Feb 2024 16:36:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlW-00000009yDh-47zX;
	Tue, 13 Feb 2024 16:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842171;
	bh=K950Xkvfyz4ijLJ0v9Erb08jeYAOV6dFtvqKORe/kmA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=5MyP6xmq4XvdwZY7E20AIkoS8RHhQ++fUPjOj/QxSlkR4SEegj/JSQKxBYaYl0pW0
	 7+66XYGurAjdtwl35nAQSnEWuGC9Jug+IFBQH0037ncbUZwHqieXPg6cw1WGJo8I9q
	 JSNNwPOcTwkdiPNR9zVgb4r3+/hes00T3wdMDTzuKMPV0f1eeffstYovvJgo9HXZew
	 qkWKfzIVmRQgejXebxBeJONyyTFlro+r3D0lOicCizNzmPZXxJSKBOSx4/ZGAHXq8b
	 BHfWAb7BVSrD4wolqa72ImXvTLVkUbrBly4XnvjtdBYLQfKzrfGSVdf3AUXObozpuT
	 7srMi0Ozz4zrA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5987A3782043;
	Tue, 13 Feb 2024 16:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id EFA5A4800CD; Tue, 13 Feb 2024 17:36:10 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 01/12] dt-bindings: soc: rockchip: add clock to RK3588 VO grf
Date: Tue, 13 Feb 2024 17:32:35 +0100
Message-ID: <20240213163609.44930-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083615_192552_453718C0 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

The RK3588 VO GRF needs a clock. This adds the clock to the allowed
properties, makes it mandatory for the RK3588 VO grf and disallows it
for any other Rockchip grf.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 9793ea6f0fe6..20bc1f46384c 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -66,6 +66,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -248,6 +251,22 @@ allOf:
 
           unevaluatedProperties: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-vo-grf
+
+    then:
+      required:
+        - clocks
+
+    else:
+      properties:
+        clocks: false
+
+
 examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
