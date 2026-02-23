Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8603EC1106
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiU/8mXtvG93mNeLLY0GzqPiHW7vcKCmQBBGRHjEQQE=; b=lNLkb1PZXKSFQX
	S4VVJvrAmtZSLPKcwQeerXMm/YGhXrjQi7ov9tJmNIb+0/nlHQk4C+fNflWL7IMr65t2RytvY6Dfw
	IGhzeGc534mj67dJ7opN5p+RsgkxSySgialG0e3vE6W7OPGWGoEBas9MoN+7BRHajnuWjHUYWyu7+
	e+tNTZ/flIt+6fxscycjMkEJImOkvdGoW7egasTfJ5Kl7vlYqXDD/UQgEVbpkr1dkZDPgfWY7dfvl
	lro/sL6LNI5Phq8rFY63Cut4ZpSh/bfXOg5gbKZv/t00pDG3KNEG0cynpLgGWRloGRWoOJ5ZSiJMy
	k8uer9nGyWbno2/R3esA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYli-00000000frN-2uFZ;
	Mon, 23 Feb 2026 16:26:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlf-00000000fo8-2aVO
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KDLimeHtxVS5SKcWIzN8e9OscOYHFIeGGM22w7ht1RY=; b=CiBatts866uDclKcAJksKWhL/P
	XKyaZAmAC+OcKbHCh4S8glPQAAJfR2MqkJfldswnW43i0IDAwr3QalAw76iYqx5SqaNyHmn/1oLBG
	V/NzXqcr418lCZjcYm/kFlZ94Wd/uXDAGZNoKgG19LInY2ua88HY1djq9jinE/2shNwOwkI/eXM0L
	NXOEWlJjfGGTiivZ/isSPmC58wA6XLOA6aRFJZQc9n31vS1/qbI0yzgwLbW0ykpd9dGYZ4TiAxr4I
	D8DmlV6Uq0TYQ48drvi9Mf7j3L0vnFVx6m9PdOzO0kSRoRsYoSR12XdT+yZX5uFXvL+IwTD61gmZ/
	KFR2mZBw==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlc-00000005T7b-3d33
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:42 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4375d4fb4d4so2907351f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771863999; x=1772468799; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDLimeHtxVS5SKcWIzN8e9OscOYHFIeGGM22w7ht1RY=;
        b=Dj7d+VtU8FMWMQrwIvlzHNabt4Zxc1znoDb2c1926lqHHOrUyl4vIuomAhxKNKk+OV
         aw39v9P+OmRTAEgW3KAjagUgV8M1iZ14p5Xea5Zn7fw8ZiYkQsHpZyPYpEIIcCVmAidd
         KFbuBOBKMsRPWQB0EWT4rKFk3x+YH6OkAQ6fpYwUir+yE4X5/3M3S5UmY+48DkyBdt87
         C7Q+y375XalOSD53utlM1L79xkiNEPGfxc9n1JgzSw7X6Z985fIiJ5KIqtLZ/gOWOuNq
         XXA+U2U306/8N879FgZk5m2SXFIQQdngyF2mC/6ypgWhhNP6EZT2ocEqfFkMw7qkMgwu
         4nFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863999; x=1772468799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KDLimeHtxVS5SKcWIzN8e9OscOYHFIeGGM22w7ht1RY=;
        b=gIbiAYxoPDodzbcWlMQ8LWLgaEDJqGVKPCTQb29t2TmpZz6ACBE1cKQE6LWog5BVcI
         4GWjiWS6PnmpQjmdtw3Mlchx6c8zZe2zDtBclo2US4mraUyaUniMCZlvLc5z9PorHZDA
         xvH2WPPN4WIWshi7gYk1HMCtbidtiQg+wwF+u4foDGyUzcFj7Zg+g1serFQH+sTl0Kpr
         JmBCD3ZHOSfjcxll+TY4LwKOCb5nMS7hOt2Jr9d3gSKuSPy/TrszD036JX6fD/S15Yn0
         kxOvc3tDH5I6axHk7WV4P9jFIY8Z3uqaTVNMjuUsmKKBW1sZ12Icphf/UfynQZbcOTtl
         q/8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3jweqxDda6pLuTOdULic+RtPR909H2LsRh+WiTId7CBTd6AktfRiZ4pBgX380TMiZULg4CqKQKP4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFhz9wPVnYxYA5LU94+OVZy+NpiesPZur/oUURaIaRmK6VNRdN
	FJh8ivDLRIqrpTcWgZGKDXMzrdl2Tkz6cfH9PtVMBJIcPoJm+ZUxBUzJ
X-Gm-Gg: ATEYQzzg8KAkdYg5YiNFkIRavibDAQqa+uHo7Svp1ogOBzzQeQwj+uHelWYKS60rRcj
	EU3HDme4CslooZQFtVTmysohLFg/C07awdTADrPcIZRTTOa8ANZLndlYKsK4/+Ez7F024S9R5y9
	7rftRy3EaoXEuaENnasD5IE/qEQvQZ3ADBLrGG30oWe1D6Ur1aX5q2DZGR/asO6+sTUuVnzJ15v
	BkdcA1AC+H+ZJndrLEQ92zWr/doBe2iNGRWItQ8rCkdj5pN6NGeQLdhmQDZYeEgzlMUBdp9hfOw
	YsSlV8veVp1slDhR6VU3lfZqFUAdaoTtNq4frYstpVkJ9T008yl4Qdb462Dlwpp1p902wZ0BCyH
	uogiTIedHy0HHXcLZ5LKLiJk0BEi8MYw92X/zhlPqoSeXbsPr/b6Vw378gtBhaQQe6dsYDffEjR
	Aj5vXC2ENB9zbQyL3OhDE=
X-Received: by 2002:a05:6000:4282:b0:437:7168:af37 with SMTP id ffacd0b85a97d-4396f1808aemr16070237f8f.42.1771863998881;
        Mon, 23 Feb 2026 08:26:38 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:38 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 2/6] dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
Date: Mon, 23 Feb 2026 16:22:46 +0000
Message-ID: <66eafae30f9fe00b469e79d385c1ddd24d209475.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162640_958805_D0EA5211 
X-CRM114-Status: GOOD (  10.37  )
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
