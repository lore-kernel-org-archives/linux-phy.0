Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB56E81A45
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 16:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+e/XXBlbT9CtcYsxoZJfz1jf+T+gvAzu70Sg9JpIFOs=; b=eBStDKF3KSUh5u
	910Ki8iWoubCN0NLjkW63Y9bRMOeB2SwIdey30crdFpSaowPbu64pYJDoiBLuiDgaRRbTIYR8zmep
	2F/ASX9Ig+xTCkGcd3JMhP3SOmOg8i4ma7XPSIUFWIK2NICGPHvc1x4EMCGER8qZ3o1eTX3Cyi7CE
	cYyljtr4tHb07KdMaN0c1cfttGoDK29A6s7/Otj3A5bs/4SIDbSXurBNbrMUFqmqyrdVlJjZ/k8ph
	shKuCzdyaIEgQ7lc9UB+UI14PC7bh1j7Ym5xJnVItdUu0IUddvmiRhf0CI0NKCYJs4Qgj576YTwUB
	l4x6RHpeB77mXq6wmxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1PE-000000070xH-0LsX;
	Mon, 16 Feb 2026 16:25:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1P6-000000070mY-1oxv
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 16:24:58 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-4376de3f128so2269389f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 08:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259094; x=1771863894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sYr4kH26Cd3kQ0Yi5Y6B01aBIxSE1jviWCAWWKW+n5w=;
        b=ZzDXFkyDve/tD9sOnt5GZqTBsCZSFQkl2328Ug2Cd03dg5OR1tjtLjLkYA0a23RoK2
         UWp1Hgeg/jHQdE5sAAEmNWtujM/lWAVA50tcGzRva9qSgkJrenaxlS3CjPhY1poFnUmw
         r2SgcQKW1RTaX9++wYBneO++Bla/z5/UKGFxV69Xl6216dZFB9LLGBbnHOuC3TXt42ay
         Ye8GtPINCqJ+ySk8XwvkUQEWPJL4GJmixhmMrtspy6bVNRu42UWYnNkUpA0sz7E14YXj
         MtvsS66PqfAYTF17lob+5XlmpHfzr1BN3XrzmWwJSX2CtUZIBLzyTAYOEzxVNf7Gqqke
         kNXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259094; x=1771863894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sYr4kH26Cd3kQ0Yi5Y6B01aBIxSE1jviWCAWWKW+n5w=;
        b=fRfO6US2XAeQ/TtCb6ye8wZ7HgnsmZH+0IZvMMAxzwJuSX8kCp4hQTmgOI/jlHmvDM
         UH5OLI/WjTj9eLDSlDBqdIN76fpVkfeozwRSGp0Vbo55au1cD4+5uEgv2WqqkB8MSeaV
         BaOW+bcPF28AhtDFSpcxnod/s6BmmhwTnbNcZZzeTnYjAj3SDqvnM8IKW011BF5/ia0E
         GqfwUUj71d0H4jqST5vXvGFm5EChOzPe7XScGXgnqhC2CRNC0ZiFZdquRcHqwifDv0Ks
         I5OZvL1v2nCECVIGu5MYhdCTUOlmN7kVP4icTura6TUAUsHklraqtkd3O/mT7Ivg9P8Y
         r7RA==
X-Forwarded-Encrypted: i=1; AJvYcCVlHL+jsCsBFSDHe/7cgAfC60qwI38jLLv4PYHfKifj4fYMPjMbq2AQ2hSPvVkwcdSqfODffP8DEkk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwU2VCVxhlQoEJmz73C3B3YnLnTdl0R5Kr07ZLXa4m4VVIRyYDj
	4g0ROxaFiNIkNy5Z/cTwXmWbeKisiwJHMvxo/2paiDpV+8bjjRSNRR4V
X-Gm-Gg: AZuq6aLfflAwoxibJBrQOGYqYLaEwoCEFiUa2hYjbZHnxZHY4IjgPEjM81vyE4C7OD+
	PZ6K3rlocLkqCSgcT4N4P2tj2u8/6vjFezFmiobgkDLUM4EPnszcF2QpQWEtZZ7oickMDxrAmIU
	Mbj2/k5kKTKDxyN/msrZJxq+auJ3AeJ/GOP1WEsNJtyv4LPn/qaUFzMyJVJSYt+T30ocQfdT6RP
	xYcfvDnlSzUufXz3h1iDmPFoj1dn2HUj4IhNAGnyrvjV6OQRQ6EOxHNQXmE1ONoqRpJTWYVbnRG
	DmdfrlcVFJcagfTzAcpbEd0Tjx3l2GAOoKTrZgKtE9BeOPme6mOanaLFog6yZUbH7oTAfiLXkel
	6s2H6ap68LPKzR/CB4yi47QSEdWmm6uR0Kbk/gT2IqvPCVamcCXJH/t6EeNQeZ6tSvzQB4GbpJo
	j5jT2BUdoLp1Sar3tAaEPD5N/AdXFI9A==
X-Received: by 2002:a5d:64e7:0:b0:437:8f98:8c91 with SMTP id ffacd0b85a97d-4379db34172mr14117696f8f.3.1771259094415;
        Mon, 16 Feb 2026 08:24:54 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:54 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 2/6] dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
Date: Mon, 16 Feb 2026 16:22:13 +0000
Message-ID: <8f86f229e564723b424b4d621244cfbe158c0f08.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_082456_491447_3F58B770 
X-CRM114-Status: GOOD (  10.42  )
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

Add compatibles for various display-related blocks of MediaTek mt8167.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,aal.yaml    | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,ccorr.yaml  | 4 +++-
 .../devicetree/bindings/display/mediatek/mediatek,dither.yaml | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml  | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml    | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml   | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml   | 4 +++-
 7 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index daf90ebb39bf..4bbea72b292a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
@@ -33,6 +33,7 @@ properties:
           - enum:
               - mediatek,mt2712-disp-aal
               - mediatek,mt6795-disp-aal
+              - mediatek,mt8167-disp-aal
           - const: mediatek,mt8173-disp-aal
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
index fca8e7bb0cbc..5c5068128d0c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
@@ -25,7 +25,9 @@ properties:
           - mediatek,mt8183-disp-ccorr
           - mediatek,mt8192-disp-ccorr
       - items:
-          - const: mediatek,mt8365-disp-ccorr
+          - enum:
+              - mediatek,mt8167-disp-ccorr
+              - mediatek,mt8365-disp-ccorr
           - const: mediatek,mt8183-disp-ccorr
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
index abaf27916d13..891c95be15b9 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
@@ -26,6 +26,7 @@ properties:
           - mediatek,mt8183-disp-dither
       - items:
           - enum:
+              - mediatek,mt8167-disp-dither
               - mediatek,mt8186-disp-dither
               - mediatek,mt8188-disp-dither
               - mediatek,mt8192-disp-dither
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
index 48542dc7e784..ec1054bb06d4 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
@@ -28,6 +28,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt6795-disp-gamma
+              - mediatek,mt8167-disp-gamma
           - const: mediatek,mt8173-disp-gamma
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 4f110635afb6..679f731f0f15 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -23,6 +23,7 @@ properties:
     oneOf:
       - enum:
           - mediatek,mt2701-disp-ovl
+          - mediatek,mt8167-disp-ovl
           - mediatek,mt8173-disp-ovl
           - mediatek,mt8183-disp-ovl
           - mediatek,mt8192-disp-ovl
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index 878f676b581f..cb187a95c11e 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -36,6 +36,7 @@ properties:
           - enum:
               - mediatek,mt7623-disp-rdma
               - mediatek,mt2712-disp-rdma
+              - mediatek,mt8167-disp-rdma
           - const: mediatek,mt2701-disp-rdma
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index a3a2b71a4523..816841a96133 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -24,7 +24,9 @@ properties:
       - enum:
           - mediatek,mt8173-disp-wdma
       - items:
-          - const: mediatek,mt6795-disp-wdma
+          - enum:
+              - mediatek,mt6795-disp-wdma
+              - mediatek,mt8167-disp-wdma
           - const: mediatek,mt8173-disp-wdma
 
   reg:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
