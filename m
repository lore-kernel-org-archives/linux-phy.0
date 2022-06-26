Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2023C43334
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jun 2022 17:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQxJd/G0lZMh8hCcYSy+rJEhS//bgnnM84Xf7cum18I=; b=1a9N6fpRz6/FSy
	lwohyyrOANxaXdl6OgoFWZGgUjUvD9iRkW+EB79hNqsDJe39dC+e9vRip1PHXUZFmsTjWZzN5vr7W
	aJO8uSKQ3Hqc0o/9FncshAghSCRu3oDK12eD5dHtP+yHmtYFRTZvNmIhZgn/q/9Sq6ThH0gg1/it0
	OrYnEdGSCwD58v6K1+R8dPuaKbpysORiPj1GEgN8VuT5ers8dEiY3LAcFr0clkPoS+s9ts+7I8kZz
	xEmLW31CerG3lbPGSSd67ESiN+d1MpRRYuCmJT/XfQyYW/9o6dIZXQM3iRepDA8T4pfr1gHnzxQeK
	4TARj7xbtTqv/KMNF1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5WDP-00CthZ-9D; Sun, 26 Jun 2022 17:38:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5WDG-00CtYS-AT
	for linux-phy@bombadil.infradead.org; Sun, 26 Jun 2022 17:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=68B9lJ1vmzx8DGV8aIXPTfB6PMzhU14Z31jyK76XQi0=; b=VwcOF2+7tp/BnqCVfBee6syuHW
	TByWMhJIaV0v2H3r2Eb724Iu1g9UD/0JYW468wdMz6meMVubocf2A1xr8B8mUMGQcq2LONBLKdMGM
	wZOp7Xe87sRSr3qwbb3rqVsXRIoYfwd4x6jLKUlRiV9MX3GL7GzkGItoQ4Tdytq7HtcMdxHk5mDoW
	CvpuU8x5tb4U55KbKqawJPn/UbdO3xmc/UicE1Spdyec0Y1uDz7Wvupi1kxb/EArr6Nf4GT0N7mVg
	4CPvFp8RAM0/ZmRbxpMqrqlW3lp1AIX9sQFYjfzT8BiPgElo6tiF6bGDKV1AQ3+NC0g1gbFrB2CGh
	o2AxFdKw==;
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5VCg-00DAJW-3T
	for linux-phy@lists.infradead.org; Sun, 26 Jun 2022 16:33:44 +0000
Received: by mail-ed1-x52a.google.com with SMTP id c13so9925913eds.10
        for <linux-phy@lists.infradead.org>; Sun, 26 Jun 2022 09:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=68B9lJ1vmzx8DGV8aIXPTfB6PMzhU14Z31jyK76XQi0=;
        b=ly/4ffXIoVL9bTAPzHFXDg2QSNnrZffTLrDrkkzDT8vaM0YC9Wa7o5fuyzBO4/afDW
         GA2JgZrRuOdlFGWZIuxnrD4wm/4lda5EYGfwcA3GiOpv5c+vEw3C8lJ7lMswbXx6WKT/
         3jalfdPMfeEBNknwo+rz8JoF/9GWRXP6WRiirkgnHsoAVfqoMGNsdywizXLK4KtQoRjn
         CZIkwbMDaUiUlkr70fC3CV5GD1xuT2rVZ4ujyS0FzAoRB6NOt38sFKY2XaMyjs82Ll4g
         e1asTcCqq+HUDlNDMOThZ/lCmMnvG2+w3y7J22IiuGjzSVXJoJD6DX1w7YKkI5/sE1kW
         OGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=68B9lJ1vmzx8DGV8aIXPTfB6PMzhU14Z31jyK76XQi0=;
        b=4XCyvZ7/HYbsxcQu5iQp/8m43OqIRtT31OkCMddIT1yvkr/fDOmYtagUlMd8yrOxIR
         69j10Q95iHUTb+Kx6thJg6uiGxuKppeEgQsUwb/HIbSfNiIRfZ21Zene6qtQ6vWNghHw
         Qe/JW5qIjt7H5bK34coNYhFghSQaG3/7DX+y5dISBn54DX5gDNKcb/hF480Kd/3fgF6n
         uQVhUSOBD2NIFkQuuenUMTE5eMD4bS5VWc26svjo4LIQeQsdjclGAfhX0ki2B74jKrWr
         EEXwbaiv7d8V2H+K88ZgpnR4DMo5jHuCSg6ecjchIdSLLcuGLn0D9+qityFFwZbgGpqg
         fn5w==
X-Gm-Message-State: AJIora9za6DqhAZROE+u7nV+GTgh7smQigwi63sdxO7CXrTjkdc3oXvn
	xarUzm2JA4S9VfYvJCUqYY0u1Q==
X-Google-Smtp-Source: AGRyM1u1ZfRB1y3TcPVT4N9WeFl3Dl2yUL5xcrrcr5hym04I/wxAO0O+zyDC7FUtggQl28BDAZhUUg==
X-Received: by 2002:a05:6402:1907:b0:435:c243:a66e with SMTP id e7-20020a056402190700b00435c243a66emr11638456edz.44.1656261208128;
        Sun, 26 Jun 2022 09:33:28 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g5-20020a17090613c500b00722fb3c99bcsm3930403ejc.203.2022.06.26.09.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jun 2022 09:33:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: remove Joonyoung Shim from maintainers
Date: Sun, 26 Jun 2022 18:33:20 +0200
Message-Id: <20220626163320.6393-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
References: <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_173342_907452_F7BFEBE0 
X-CRM114-Status: UNSURE (   8.39  )
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

Emails to Joonyoung Shim bounce ("550 5.1.1 Recipient address rejected:
User unknown"), so remove him from maintainers of DT bindings (display,
phy).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml        | 1 -
 .../devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml | 1 -
 .../bindings/display/samsung/samsung,exynos-mixer.yaml           | 1 -
 .../bindings/display/samsung/samsung,exynos5433-decon.yaml       | 1 -
 .../bindings/display/samsung/samsung,exynos5433-mic.yaml         | 1 -
 .../bindings/display/samsung/samsung,exynos7-decon.yaml          | 1 -
 .../devicetree/bindings/display/samsung/samsung,fimd.yaml        | 1 -
 .../devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml         | 1 -
 8 files changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
index 919734c05c0b..458d399cb025 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI DDC
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
index 63379fae3636..e4a68c5a1a09 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
index 00e325a19cb1..25d53fde92e1 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC Mixer
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
index 7c37470bd329..921bfe925cd6 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos5433 SoC Display and Enhancement Controller (DECON)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
index c5c6239c28d0..7d405f2febcd 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos5433 SoC Mobile Image Compressor (MIC)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
index 320eedc61a5b..969bd8c563a5 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos7 SoC Display and Enhancement Controller (DECON)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
index c62ea9d22843..5d5cc220f78a 100644
--- a/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
@@ -8,7 +8,6 @@ title: Samsung S3C/S5P/Exynos SoC Fully Interactive Mobile Display (FIMD)
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
index 3e5f035de2e9..efc679c385ab 100644
--- a/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
@@ -8,7 +8,6 @@ title: Samsung Exynos SoC HDMI PHY
 
 maintainers:
   - Inki Dae <inki.dae@samsung.com>
-  - Joonyoung Shim <jy0922.shim@samsung.com>
   - Seung-Woo Kim <sw0312.kim@samsung.com>
   - Kyungmin Park <kyungmin.park@samsung.com>
   - Krzysztof Kozlowski <krzk@kernel.org>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
