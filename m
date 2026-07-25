Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2BAC531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qac2heALQUIVCzmyw0Um9Cf+R3eN39oXIkwbJD1M9tA=; b=kfb4ayL5/bokot
	FBRxuIdaxwH1r14bOFk5Zf73SyYKfX9FwVL9fp8BBfxdZj+HxDTw4yw1qG4EBcnwc9XClAqe19LAo
	FW/dRmeRtl20PXsr9bnIesrmIBFKh8tJv4Q/sytZavMfUKqoMgWJn74WczhtFPvCEmxTykQiijD1y
	yDn6heWVhJ2/whfk35VOJTmwFc9uFbEUT+RuPfJRNV4uepbGcV0+bbZ7QBSiFRZQ9UK16i+s6p8Rs
	5OMiJLWgfnX8/VYaoPA1PVCxSM/oQv2/kEPq1d3mVi6kufHIRVR+D81ixQEWxhNMwKlWCbeeWV/v2
	YvVaLhZS4aUMHgBlqIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnStY-0000000HXTD-1Foe;
	Sat, 25 Jul 2026 03:17:48 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnStW-0000000HXSc-1EIq
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:17:47 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-ca7a25cd87dso1015067a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949464; x=1785554264; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+s3XIzGgmCw98QusnVJUh5PtZQnQQOXqs7KUawjh9Mc=;
        b=DDZk516gbUIWk4IaELUOfkEOaIeDPE2eT6rLz7gFcgRX/CykXjcDxv6AxVgCEPLA62
         AUaDu6b5YlaUH5nz4Ogv81JkPcoVbDU04vZfX8pfj3r68baliBODQjON5kstF0PQICLk
         gYTk5zC19ST6XPMhzA0W/lQ6iGYHeF0RN+oRpFfBTahZ1AK+8rdRcyluLot9SnaRFFJG
         6eYRT/Mbk5+3z6JVjCJmiGVVaNse83pL3WAJR2TbyEuyfCMz9djsYLble9odRhwK4wgm
         hCvZe/VwSvV2gkcllJ34vja+aJtu4k99mLaUdZ6XpimoeRFWEalDtP7friyO733SjkLn
         5Ymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949464; x=1785554264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+s3XIzGgmCw98QusnVJUh5PtZQnQQOXqs7KUawjh9Mc=;
        b=GXSqBUbu4eLVX8QX0yYPHfABBNpW2boE88fu7EEl9kwBU6wCkANGJEE0P8nAvWBpc7
         DKDmaTqTLpxH1Ivki0AjVxnPmpm/OdVWEFL4XjRkM5KD5AaEdp/VUfIKXndWOALQmL9G
         Wht3mDVpXmCQIULeXlYt7FoP4WTMVgmRkqWMLF1IStljK9d9HzXIlVkUKadSN0/qr/NI
         cAGMeyX2qJazC8Ts5+ZXc9MxCvdUM0GxQlMoEQyBrqrKON5JUdEiEgVaudvDRQjBt7dM
         nEne09/R31ptVc1YJmYX3gNSnR9N/NFRBtm4Ir0Q4UTvBDDGMeIQ4hBuTyrVzeJyZ1sx
         Ucug==
X-Forwarded-Encrypted: i=1; AHgh+RqAV982zHyefnBd0UW2z5PTJiaKJ+47TsFw5xNgIApk+AzT2GNhtuM1nMMgkzVYgkwrLIyV2o0j1U0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrRRvtUAcmcOC4npr2PDczQwWtJBRQHeitII8Ad4t7VSS+AE7R
	iYsOx7FPYl2jzhemMoltsYbqMK1BEf88pilFCmLXC/rhcah3hsJpDkqQ
X-Gm-Gg: AR+sD10HfzJC4ePmc0cU9e9Y0NpYqoCb7L1+cFxaOd9tzeSb3Ox4cdydQ63T6mqtxhh
	qAnEUXa5PwkyuXUtqLdZCR7GoamJFeXGv40LRekxqk0mjB6VDYOW4LHJIUGe7WmtLCx02Kqo3ED
	wqgQ+eDBeD9E0CeFBgLWPKfzsAVG6Wi/sEd78dbpQyBaqoI34yF8zsgy5SLqK+TlxB+cBg12Rmo
	dK4WMYMdSivG4irCYqZyh/p4UJvy8ancBfetAqfUy7RSkIdYmJgQFy4d7dZIPuhUv0q/HoRx73g
	P2TTTeVnJQi+4nLRwwzzooZUCsruSFeGKIaSHSEeBQ7aFz0hwhIuTtTipaJuYmb0gTyqoqR0PCV
	plNYfDYMM9gIdxKlFkQhdg5ck3MhsRZpHICqts9hYv2NPXRTyB2uYRfM=
X-Received: by 2002:a05:6a00:9288:b0:848:2f77:e2da with SMTP id d2e1a72fcca58-84e595d33e9mr653832b3a.67.1784949464300;
        Fri, 24 Jul 2026 20:17:44 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:17:43 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:36 -0400
Subject: [PATCH 04/17] dt-bindings: soc: spacemit: allow eDP/DP PHY PLL
 pixel clocks on K3 APMU
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-4-f22a10a52867@gmail.com>
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
X-CRM114-CacheID: sfid-20260724_201746_330656_67CAE9E2 
X-CRM114-Status: UNSURE (   8.62  )
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

The APMU's eDP pixel-clock muxes select the DP PHY PLLs as parents, so the
K3 syscon takes two clock inputs the other variants do not have.

Gate them behind the K3 compatible instead of widening the shared clock
list, so a non-K3 syscon cannot silently accept clocks it has no mux for.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
index d3a7c93c3c54..b8fc6632a392 100644
--- a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
@@ -31,14 +31,18 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 6
 
   clock-names:
+    minItems: 4
     items:
       - const: osc
       - const: vctcxo_1m
       - const: vctcxo_3m
       - const: vctcxo_24m
+      - const: edp0_pll_pxclk
+      - const: edp1_pll_pxclk
 
   "#clock-cells":
     const: 1
@@ -95,6 +99,30 @@ allOf:
         - clocks
         - clock-names
         - "#clock-cells"
+  # Only the K3 APMU exposes the two eDP/DP PHY PLL pixel clocks as extra
+  # inputs (parents of its eDP pixel-clock muxes); every other variant has
+  # the four base oscillator inputs only.
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: spacemit,k3-syscon-apmu
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 6
+        clock-names:
+          minItems: 4
+          maxItems: 6
+    else:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          minItems: 4
+          maxItems: 4
 
 additionalProperties: false
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
