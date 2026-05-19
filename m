Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA0CCD4F5B
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 22:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14WXn6kyRqx+tRwvFvn8/vbDP1Ds8NM0+3wzzFoisK0=; b=oqlilZo47PljeQ
	vuknvyVoF2xY3iC11cePkh4Lf/TOXqqtYveQj/B78rodwOl1FzZPIT0QURQFTLxMFXQwGAAa1I6Qj
	h6VSI35NMhI/RhADI2xM5fIDuAohn1k5Gi+EHrZV2OSc722UrpBISBd40ep8HIJisx1NWu69nPfZF
	M7jUyUO+g4uHf1di3b1djFWfzJRJIQxLO3ak/z1YpKlW+3wmaB4PsbdG5tymGFnDhv2liZVF18qXR
	wAy8CumlN68ki4F7VT2h9RjlXks+sYZ4Nmrp+MFWVkSaHeA1P0sp9CkS+IxCfp7YlXy1J0DbuDNyH
	B4lS/v39vqeAs1uPOEXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSc7-00000002uFq-0cBW;
	Tue, 19 May 2026 22:08:35 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSc1-00000002uBX-3QyF
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 22:08:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so45669745e9.0
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 15:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779228508; x=1779833308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zf9iiOefjbtai4lpZb0pjdeUtGQL3N0f8U40x/Ratvg=;
        b=JkTNsttSXx6dJEhOFD79Yu5JDDHwwKThA9DnyMmoGB7JpxDltNEevQ4JdshcWZcjJt
         afIFQ8ZsGnSmGydMs9q8hw3oAQNAj9FkEVIJVGrQHbYdP+Kc/p7twBm8Z7ohvdMQWkqv
         sXuLtM4lms4TO18m46xfdRTvENS+wsgMK42pDLQiMPBFHUXlpkKiBaIgHzjX+hclKKRD
         Wt/uA0jd6PwgqxlPuxIEkpclS+y9ttyku9UOcmtlGanb/EUutOOBXf+FVhnZYTrCmYdR
         uFwvTLcA6WODrz5yEb+hnHK8g/aan55rB7Vj1sMrAhGps/UJxv7Fjzqm1gbMRds1WR4l
         99rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779228508; x=1779833308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zf9iiOefjbtai4lpZb0pjdeUtGQL3N0f8U40x/Ratvg=;
        b=A1wnGSs4flfykwC3agVCKQgGa1vF7XDkzMUCtBt7bo9c9UpCX7q1J45ZGuc2yF138b
         DGOaKJN+nWjvhyYpOWxv30Pnl2lRLabS3Hlsm8+yg3E0XSg5Z+ZktndzpxVmVsVhcELH
         RKWKAwGwSkoIo/1pmSFediAeZq9XKs3Y2mcvuoseDnyxZNC8XmgblQS4vD4lOQN+Babl
         cEXYVvXrri3cnG19jqdTsxUjdsGukuVxtSN7JPiqC7IjFGmv0qgbwI6yFGh7wnLABZfs
         Aok1nFMd9YZKWvtdinSSeFsOV2EF7AnQjKXfol1/UXBV4VsdYv1UWNmUYduS0jQvRntf
         /tbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/8cIMeCdx40PjCiSMeLMOVr8Eh7yB+eOcdWrL5Ztty6AD7HfIfz6PlDpF0rg/tQzbRHWBVII9eELQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrwYJP+6Sc/s/dGawhJzRy20LUgEgn+1/4XQd/ZkERoG36nPjv
	0OxRQg7Tt4aHIMuvfbco5CWtT2w54XPM7LXzlP0KXpeuHw8T7s+KK2qv
X-Gm-Gg: Acq92OHT885JUXB4ciJkIxlLoClb+bWCNfcD8hwkM7TzKssxm3AtTUJV55LhHgPea64
	UKODLls16M70FiN1nzWdRa86CDuytx8l0ioNaBZTFWBjIZcdXJ49/e9YL6502sHnceU5WesvWSs
	sWBncrD1s8IIEFlzWIrrZOpgCEa3IHnH0M64QnYgR52/wxCiFpA+wH6NOqm/cAamCf2FvR+lk8Y
	xFobEPjAa2W+mubhxNXTqUcubU0nqZ8u+XBrLPNNWErKT48wvVyTwwIaKWhJCdSP8GKvm939n38
	HPoUFFK63V6Zbj/y7kLcT2qvW8DAVlODufVycLdknsYpV9O14lpLC4S3cArT2QKau45yo0G9U+j
	4q0ml6YswzA8pvoa6WfsiwCfdNlUhpbrCsNBiqiy65KfzzivpT7TMwUQpvWiU3zoI4YMZvnXgan
	x5L2RMxAS4b6bNJXopUUwMIScZKR1rDI6Q4ykklKvRnexZWjIZZmLnLO1vOHq+m+V3Io4RGkgPb
	9CCCaka4w==
X-Received: by 2002:a05:600c:a406:b0:487:1fb4:7e1 with SMTP id 5b1f17b1804b1-48fe632a02fmr276048075e9.22.1779228507861;
        Tue, 19 May 2026 15:08:27 -0700 (PDT)
Received: from Ansuel-XPS24 (host-82-55-252-101.retail.telecomitalia.it. [82.55.252.101])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48febe585absm118304005e9.19.2026.05.19.15.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 15:08:27 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v7 2/6] dt-bindings: clock: airoha: Add PHY binding for Serdes port
Date: Wed, 20 May 2026 00:08:07 +0200
Message-ID: <20260519220813.28468-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519220813.28468-1-ansuelsmth@gmail.com>
References: <20260519220813.28468-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_150829_902526_8D332694 
X-CRM114-Status: UNSURE (   9.72  )
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

Add PHY cell property for Serdes port selection. Currently supported only
for Airoha AN7581 SoC, that support up to 4 Serdes port.

The Serdes port can support both PCIe, USB3 or Ethernet mode.

The available Serdes port can be selected following the dt-binding header
in [2].

[2] <include/dt-bindings/soc/airoha,scu-ssr.h>

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/clock/airoha,en7523-scu.yaml     | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
index eb24a5687639..913ddc16182b 100644
--- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
+++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
@@ -23,6 +23,7 @@ description: |
 
   All these identifiers can be found in:
   [1]: <include/dt-bindings/clock/en7523-clk.h>.
+  [2]: <include/dt-bindings/soc/airoha,scu-ssr.h>.
 
   The clocks are provided inside a system controller node.
 
@@ -50,6 +51,12 @@ properties:
     description: ID of the controller reset line
     const: 1
 
+  '#phy-cells':
+    description:
+      The first cell indicates the serdes phy number, see [2] for the
+      available serdes port.
+    const: 1
+
 required:
   - compatible
   - reg
@@ -65,6 +72,8 @@ allOf:
         reg:
           minItems: 2
 
+        '#phy-cells': false
+
   - if:
       properties:
         compatible:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
