Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0994C52D7C
	for <linux-phy@archiver.kernel.org>; Sun, 18 Aug 2024 17:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MMp0+/3F5DItd1Eua8yOb4wlEwQiKh0HdwAExv4lN+4=; b=k+1GzxRiInUljs
	ru2OdoRlL5kpJYP14H/7aiilfEaXfIAh1JZJpF+f4MJOuj1p0zpdkyXaOpuL9GdA5FxkwJicNNmvK
	6MODlNuXuWakVRHZi8uL+cBi2zmhYGiJcXIiLxEFDWLRkqa2gffrK7Gwny2PwC7Asy6Q4dgHreJgk
	OdOaQK9uHSa3hQxr2yDG5f5c00HyBt4bJhm+izo18D7q5s6bdBoGUQqj0Oqk4D3Da5HPoebTCDyqt
	eaQeI1K5puIusYQHDNY3P30Ee/jvfKTg22Qc/qOzG7I+r8TxAKGfYm7ctrSyDdGOdZ5/YW8gILb4H
	FLsC8PLgwZn5L3f2Sk8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjK-0000000Gt5N-0gbO;
	Sun, 18 Aug 2024 17:30:14 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjhp-0000000GsX0-0aAx
	for linux-phy@lists.infradead.org;
	Sun, 18 Aug 2024 17:28:42 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-37193ef72a4so1556383f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 18 Aug 2024 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002119; x=1724606919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PMnjAah/UWroMhE148PgxhjcZt84A7eF0pUsqexp/xQ=;
        b=USLXKAZEKxgH2O/ARrXcFA7flheLLUyzFcZqO3N7AI3K8FnVPYUeo9tWoDFHfTjUCK
         3xjULB2+glgYmREJ7sTR2eIDDl0GUrsoIDemBPsiBQnS8lXvJjcLT6bohJ1heB/3pxIr
         AelPtpQqJGzMzJW2W3f/ICG1GUEBeZj8QpMCdQ3DePKm3QNwdvU/bY30neVdeF3qGzn4
         VjuRxSK+gBdnH1mG1LV/HhwxbF3ARLuMSA0FrstpNmZ//F0R6smJgvxTyet4oLHcmKJ3
         1VGS8PudGCtRz0GQWaOr70OwPMwoKNxLiA+mfw4MUYT7yFzrzFndVjcsHDh0H9f8oJ99
         WoKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002119; x=1724606919;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PMnjAah/UWroMhE148PgxhjcZt84A7eF0pUsqexp/xQ=;
        b=G1etpKxXLf/P3S8KCppe9qm7q8ySisAMVNUZ7B8xD5c7di2NyBjO0v1LpVloabMnlg
         0ZinuoMGi5IYC1hM3YO8iuESZxb+Ka4yFGdc6uG8XQOtwtnety6QlT0Y4Bpt16JL9pEQ
         l7vhCd5MHNd6ODbQYHhaWR7cBjCuafzHaaoscU6AIiDEUtTtMMlZmk/cFqhAhvSTZBGu
         AznNYQaXjifX4ykz6qL6qVietHktEYnmUuhlWzTCIJsYiV2YLHIaTjNKXFIgblJNhbzZ
         ktcdQQPvrSUR/J5GzbGdE6qd4NCwiBm5Yz6GZAa/345QpA2GRn9jILeaqnJnO50aieVq
         qfMg==
X-Forwarded-Encrypted: i=1; AJvYcCUlqI/HOsq+BOzEqnIviUWQRfbiX4PPVdkFb+S+43mL6hc/ZjIV90rUCti9Gi2XVT92c/PLXuyl79I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw79eVerKW7b0QPwo2nMHBFngzmfG3GqzPB8s+a+KeJObfNt43J
	bwirmLKzv9Cvjx1wvDdLGKIwH5ja6byCGqzYDvS3bVgux4zsDc04CJpQwloghp8=
X-Google-Smtp-Source: AGHT+IHKIKkAiJcdyepoCL+1/HhHa4+A1IIkB0xWHjT0oRr8pb2bKGRlOXa3/rVSag8EpoJHu5jWLw==
X-Received: by 2002:adf:b347:0:b0:368:3b21:6643 with SMTP id ffacd0b85a97d-371946a1372mr5523675f8f.48.1724002119278;
        Sun, 18 Aug 2024 10:28:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898498casm8461112f8f.42.2024.08.18.10.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:28:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: socionext,uniphier: add top-level constraints
Date: Sun, 18 Aug 2024 19:28:35 +0200
Message-ID: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_102841_203168_A7E8C312 
X-CRM114-Status: UNSURE (   8.60  )
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

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clock-names and reset-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/socionext,uniphier-ahci-phy.yaml         | 8 ++++++--
 .../bindings/phy/socionext,uniphier-pcie-phy.yaml         | 8 ++++++--
 .../bindings/phy/socionext,uniphier-usb3hs-phy.yaml       | 7 +++++--
 .../bindings/phy/socionext,uniphier-usb3ss-phy.yaml       | 7 +++++--
 4 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index de3cffc850bc..e34b875a1bb8 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -30,13 +30,17 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 6
 
   resets:
     minItems: 2
     maxItems: 6
 
-  reset-names: true
+  reset-names:
+    minItems: 2
+    maxItems: 6
 
 allOf:
   - if:
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
index b3ed2f74a414..9fc0e87c508e 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -31,13 +31,17 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    minItems: 1
+    maxItems: 2
 
   socionext,syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 2107d98ace15..25c4159f86e4 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
@@ -34,12 +34,15 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    maxItems: 2
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 8f5aa6238bf3..1f663e9901da 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -35,12 +35,15 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    maxItems: 2
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS, only for USB host
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
