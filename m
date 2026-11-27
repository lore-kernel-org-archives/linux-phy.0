Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6BD606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=F7gEjhke;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=d-silva.org header.i=@d-silva.org header.a=rsa-sha256 header.s=2025a header.b=uK5FUJ0u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wvvc+Sx5ToJ7QIPJbnZ0lYMbtw7IBznEJGnrbOMd0CA=; b=F7gEjhkezZHdj/R2ARO+PDNcE/
	VemrJ8c1O01b12ldJ5z1H9hUgtW2UEF77TsQGI6JLN78OvPvsd6P6uZSmoV1e+UvFtQ3+rTpk/8yS
	M9NSSSLKoilMwM/ao8Lkw3LdZYFiCB7wegoRuRjFVyWQcxe16pIE0i73+dcdAZVEHLZmczuYhI+BD
	DZnTWrRjZRtNx34b8+fVt1ZNIqEBJXV4s1YCUE5QOw7l+5icDHGhE1afO0fckQwYptX7JABXtIZ3O
	QvUFbu16yQ5pUwHJSJnUwDHP4S25A5JZimWjairX1zS+dyrLGb8t8FbkxHdZ/Z+gHqTt2T1XsgKyX
	uckzZcvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWssW-0000000FVw0-3Cm9;
	Fri, 27 Nov 2026 10:08:28 +0000
Received: from watt.d-silva.org ([119.15.109.137] helo=www.nmnhosting.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWssQ-0000000FVrP-3m8J;
	Fri, 27 Nov 2026 10:08:24 +0000
Received: from Hawking.lan (hawking.lan [10.0.1.4])
	by www.nmnhosting.com (Postfix) with ESMTP id 112724C97C;
	Fri, 27 Nov 2026 21:08:15 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-silva.org; s=2025a;
	t=1795774095;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TeJd+vwhmTLCgDsuofMV5WXACzIkKKBVhaJxf8JRaIo=;
	b=uK5FUJ0u0C2fHqW2Lyc3xF93LRwkRm3fAYhgg1ZC4HLOMYQrAQVoSIm08yOxUEyWXzq1NL
	JUx0eJ74BhY4X7ONCy4FcS6S16VOeoN9YRPQz4D4+6FwlGeKcywh7NsJD0aXeHRFBQsmrR
	UiIzzLguNCswXfFCCKNSDc9R7BFcjX/HdRpLW2lXYoHkPr3MMcs1zs/33MxB/gX9VEaJX4
	neq7ycZnVh6b0lVj2A6RzoTcrbVpy4CrHoF9rKAZlTig/SQB7rPNXHEILwZclKLB7hHcTb
	f26tbjl+aPxgKqEeC52+S2JInB3QLma8ucn1liDg4XibPexY8x6G10ZBozOLOA==
X-GPT-Reason: This is a legitimate technical communication, specifically
	a kernel patch or system driver update. The content is a professional
	software change request regarding "dt-bindings: phy" and "Allwinner A733," which
	aligns perfectly with the personal/professional mailbox of "alastair@d-silva.org." The
	sender identity (From: alastair@d-silva.org) matches the mailbox
	owner, there are no phishing indicators or marketing elements, and
	the lack of URLs is consistent with a standard git-style patch
	submission.
From: Alastair D'Silva <alastair@d-silva.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Maxime Ripard <mripard@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Junhui Liu <junhui.liu@pigmoral.tech>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alastair D'Silva <alastair@d-silva.org>
Subject: [PATCH 1/6] dt-bindings: phy: allwinner,sun50i-a64-usb-phy: Add Allwinner A733
Date: Fri, 27 Nov 2026 21:08:03 +1100
Message-ID: <20261127100808.2292229-2-alastair@d-silva.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261127100808.2292229-1-alastair@d-silva.org>
References: <20261127100808.2292229-1-alastair@d-silva.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_020823_117771_CE775FED 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the Allwinner A733 (sun60i-a733) USB 2.0 PHY compatible string.

The A733 USB PHY requires the OTG/PHY register bus clock (bus) in addition
to the two PHY reference clocks.

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 .../phy/allwinner,sun50i-a64-usb-phy.yaml     | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index 580c3296a18d..4892c1766182 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - allwinner,sun20i-d1-usb-phy
           - allwinner,sun50i-a64-usb-phy
+          - allwinner,sun60i-a733-usb-phy
       - items:
           - enum:
               - allwinner,sun50i-a100-usb-phy
@@ -38,14 +39,18 @@ properties:
       - const: pmu1
 
   clocks:
+    minItems: 2
     items:
       - description: USB OTG PHY bus clock
       - description: USB Host 0 PHY bus clock
+      - description: USB OTG/PHY register bus clock
 
   clock-names:
+    minItems: 2
     items:
       - const: usb0_phy
       - const: usb1_phy
+      - const: bus
 
   resets:
     items:
@@ -84,6 +89,25 @@ required:
   - resets
   - reset-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun60i-a733-usb-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          minItems: 3
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
