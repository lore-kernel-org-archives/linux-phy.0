Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F8CC38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 19:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K/A/KmV9RdmlhJflQ3aCT6xA0j9SzFbU2sdXU+G+Vc=; b=OkCMkQBjJHkX57
	zxw4akcoRFVLZSILKFlIAS/b57S6hjzh8vz2uxgs9CmeQgCv90vdtO07x7ZJz0jBFVeQWkp4mm+iY
	PfTLX0ZLR43g4i1kvjyI2yA4yJ7Gh1AEDDGB51IN3x7SXegmZeET/7YMmEHYSgYUxtS6MDlXoiPe/
	RbcGDQkrbv/RxuduN88w8e2x6jt+6SNj4KDseBhiilDpk9Pj+CrEnsGGDN1ZeY9xaM3kR0hbjgOZr
	XK3OPpZAqXwFmaRCzdFv2iHpGdrp09vFe5UVvjaqIyOU08DyMT8M7VM6pU0QfiTA5ONCuBysb3Ri5
	Oc0Z8ePKWlNwZ81tTutQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUdk-00GAAE-Re; Fri, 27 Jan 2023 19:44:00 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUbC-00G8vW-Lx
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:28 +0000
Received: by mail-wr1-x42e.google.com with SMTP id t18so5930774wro.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQALOu0zos/2GKo4V4/cAoGCHCC2uLMqJ6031+6X5Jk=;
        b=sGXCHL8sCDU8JXo0+6/UceORrD3447j/IvhVsvXkReOZIMb1iKKx6TZD/aAtI1Nsic
         6/m1uQP8xTiny7FHKn0qi3/7Jklks14xKZRiMYybUveq5p2fqrtNBemqpUu2/05hrEKh
         8idqM4mgqNPoL8MiqLWCLGXeEC3ivz1xmUcmxIWp2sxotYiNX5VCbfyzzmE1C+ko4aBx
         6ljDx+2AAra8sz9FqXnp1xQx89uJSJOqefeCwJ7941Csnwa0x15aqBbwNmzBOetBjpz9
         h4OHv5awdNsCdv9rkmFhno3r+mXFJJzBMSOyjjvcpAEM0Cej7qum9CPOfO1H5rpjqMFd
         XA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQALOu0zos/2GKo4V4/cAoGCHCC2uLMqJ6031+6X5Jk=;
        b=2Z6RWRyRmhTNmNmtL16cC2vElZPPWiSnoMe6iRHQmp9wk1cF+knShaY2JBTkBXtCYp
         ECfvG5zLyyKoOoN9FBuukVdInI/d433neyuEKQxHf2qXW9QAXWCaz/KdZGB9+W42W9RU
         Ni4GPxcfLi6GB/MbxRJi9gx04FGUmThbXty3T/D5TERLYp+DOtBF99aXd6Wxc4m6DiQA
         LPDIhW5toPN8tLBIYW522OtN3o44awS2PpNdwhyGAeZvyb6MT0y1r82yjs0VEa9cZ/2O
         flmE0uPcAvP+1O2bX8GAf4HY+pokDnO+r72b5sM1+uIll4pWfEsjodDYDWzvxu/IZ3fT
         6C5Q==
X-Gm-Message-State: AFqh2kpLK8H7JNQ7AuX60vx4Xe9Tm4vIj1jiv+em0RPfv40/tCE/Y59F
	7yQSeA9sduOnk54sJqJ/CcwIww==
X-Google-Smtp-Source: AMrXdXtHCz5lyTuBDBjfZVraQ1cpBDmDluPB/WtBMnbu+8cXUQblVz7YLrQFitgm3u+uI9Bmt0CrQg==
X-Received: by 2002:a5d:6b42:0:b0:2bc:7e6c:7cd8 with SMTP id x2-20020a5d6b42000000b002bc7e6c7cd8mr34616383wrw.26.1674848482242;
        Fri, 27 Jan 2023 11:41:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: replicant@osuosl.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 8/8] arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433
Date: Fri, 27 Jan 2023 20:40:57 +0100
Message-Id: <20230127194057.186458-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114124_254552_E515C449 
X-CRM114-Status: GOOD (  10.24  )
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

The MIPI phy is actually part of the Power Management Unit system
controller.  It does not have own address space, thus keeping the node
under soc causes warnings:

  exynos5433-tm2e.dtb: soc@0: video-phy: {'compatible': ['samsung,exynos5433-mipi-video-phy'], ...
    should not be valid under {'type': 'object'}

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index 9da24fe958a3..842976addbd9 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -911,12 +911,20 @@ pinctrl_touch: pinctrl@14ce0000 {
 		};
 
 		pmu_system_controller: system-controller@105c0000 {
-			compatible = "samsung,exynos5433-pmu", "syscon";
+			compatible = "samsung,exynos5433-pmu", "simple-mfd", "syscon";
 			reg = <0x105c0000 0x5008>;
 			#clock-cells = <1>;
 			clock-names = "clkout16";
 			clocks = <&xxti>;
 
+			mipi_phy: mipi-phy {
+				compatible = "samsung,exynos5433-mipi-video-phy";
+				#phy-cells = <1>;
+				samsung,cam0-sysreg = <&syscon_cam0>;
+				samsung,cam1-sysreg = <&syscon_cam1>;
+				samsung,disp-sysreg = <&syscon_disp>;
+			};
+
 			reboot: syscon-reboot {
 				compatible = "syscon-reboot";
 				regmap = <&pmu_system_controller>;
@@ -936,15 +944,6 @@ gic: interrupt-controller@11001000 {
 			interrupts = <GIC_PPI 9 0xf04>;
 		};
 
-		mipi_phy: video-phy {
-			compatible = "samsung,exynos5433-mipi-video-phy";
-			#phy-cells = <1>;
-			samsung,pmu-syscon = <&pmu_system_controller>;
-			samsung,cam0-sysreg = <&syscon_cam0>;
-			samsung,cam1-sysreg = <&syscon_cam1>;
-			samsung,disp-sysreg = <&syscon_disp>;
-		};
-
 		decon: decon@13800000 {
 			compatible = "samsung,exynos5433-decon";
 			reg = <0x13800000 0x2104>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
