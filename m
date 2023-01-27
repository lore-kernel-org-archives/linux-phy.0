Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE46FC38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMypPLQ+bR/ierO/cZjHx7wPcXveG0D4TZUVKNq2wBc=; b=1a4HeiD4boMxYQ
	LOkSizb9wKkBCbY1kPhmMltrqSByxN3ORfkeAfHnxsQfXbsjtREsFlzOVobaj7arVzpmTO7tHIfbs
	WJUBiT6pZg/cx4CY7bURIHCk1uCwYlMp4e1zXyDgVGVh5o0ytqcyV4qLj6BvGMb76XQcjAIRyg4di
	sqbUEDOTnmocDM48mBvOF7taYafcD9lcsxKivtf/2BdrWdcPc38QzCOgcMWWSoVpGm8qHEvvRbKWi
	nQ69WZwY0Xp99EKobQ+yh7RzbOxIn/IcK+pc9BjVBH/UtEof+E8mbjhk7//kfW0NZyvO800asJVkq
	9fLmoGGjsGiXWEnbhu3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLV0a-00GJ0Q-K9; Fri, 27 Jan 2023 20:07:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUwu-00GHMO-8c
	for linux-phy@bombadil.infradead.org; Fri, 27 Jan 2023 20:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lt+BQRUkVwG5AY299cvvsisO/FIKbvndsHMl4pZfRMk=; b=I6AqH0Q75AWkpgkwqHnunxHcqv
	vThtGcHRhsdV6PTTneF6uuOSFzhLQdqEr630/KJZrUwmlEeaEs4jUV4qEX1d13/91M5/muhwQn6z/
	mXaus2TuCY0vJKqtrzCvb6DHkBF3GPolReZmSQXITcz13yaLA1Gbb3CkWYJq3YHGrruaYXgJevoo1
	v2EcbYhPJio+Se9ttFEZz/EJiGIcJMgBLXcc8yEFwC4xQ++M4SuOxACQywljm8IQHpdJRcWWaAW3y
	uj4DdFqDQFcmekiYr8/E33D9luPVVjiuXzTTQUrGenJ3BuEFbAwcbK6t9j4tHHGiF96CnVsgyXNne
	wLimnVxA==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pLUah-002xhi-0H
	for linux-phy@lists.infradead.org;
	Fri, 27 Jan 2023 19:40:56 +0000
Received: by mail-wr1-x42a.google.com with SMTP id bk16so5888097wrb.11
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lt+BQRUkVwG5AY299cvvsisO/FIKbvndsHMl4pZfRMk=;
        b=fXOWLG86zl7dLNoOfrtLG2LDDDFOaeVYTumck+Oi0XdoziW+QPSIuPZMMob2St1S6L
         cgoUi1DZwOpAQpEAYNSDlXLMHfYiEkUV++bVcZuJdf8NXaoFa65a/TUO6OgrsBpXTONK
         h9ap40zTIYBWGkZm1w5L35XD46ECyfGJzH7ToHO2BX46uwSOnCI/9rHmVZUcW7J+y+T0
         VGt6Peyy8x0YbInO8ZAYkgiKB4vTqEgB3qJf8HUhe3+SliiOG2zr02bNomvJ29ns/QeE
         wXAYU/yuJC2NgVtmYIZv6xf0an22eIpq90KxEfLwxyapwcao7K3zaf3ln80FEK3An1kM
         NwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lt+BQRUkVwG5AY299cvvsisO/FIKbvndsHMl4pZfRMk=;
        b=hE3oIq4O/6Y03nyeenAbVVK75jS4u+uyGnVApsYaGgPcvQFg3juow/WPPFAXVwhwDm
         qasu0DCwfFqGezvVHjVU8ggcbsyVRd56/z7DCypES0PS7booOS3UtxbxVIy5dza+hwn+
         1Iv6r7L2cYNWeRTQUTnebtYSfo1NhOHengxErmz0xWzHuF5HKicvCF/9zY/EYElTVcDd
         7KUB/QgTGzaRVz7oti1foVZ+tLta65r8o7i1wbwxQdqhY0D/LDzDAv61bgmc/eF7URrL
         usoSx6EuMbYS8kxpWJzdgRaNOHlZxPjhweX2D+PD3zJ2u6jQYzi0cJbAJCR/SH6IantH
         TdZA==
X-Gm-Message-State: AFqh2kq/oNrjIh1vHOnfN+0eLwa6375kEexWjhp3hu/pvtsFSisAm9r2
	VN3drhaSYJIwQfpWH3d2Zhytog==
X-Google-Smtp-Source: AMrXdXvK0+FHXkZkxXvhKqcDYinThadMV34TC4+bbQQYM0mPZLE1nitz9lp4mqXEtWCgarftFafXPw==
X-Received: by 2002:a5d:5a8f:0:b0:2be:53cc:ca5c with SMTP id bp15-20020a5d5a8f000000b002be53ccca5cmr29109152wrb.15.1674848480281;
        Fri, 27 Jan 2023 11:41:20 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:19 -0800 (PST)
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
Subject: [PATCH 7/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
Date: Fri, 27 Jan 2023 20:40:56 +0100
Message-Id: <20230127194057.186458-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_194054_237696_336FA039 
X-CRM114-Status: GOOD (  11.61  )
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

The DisplayPort and MIPI phys are actually part of the Power Management
Unit system controller.  They do not have their own address space, thus
keeping the nodes under soc causes warnings:

  exynos5250-arndale.dtb: soc: video-phy-0: {'compatible': ['samsung,exynos5250-dp-video-phy'],
    'samsung,pmu-syscon': [[20]], '#phy-cells': [[0]], 'phandle': [[24]]} should not be valid under {'type': 'object'}

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos5250.dtsi | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 97e89859ba3d..a35c00f055a3 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -290,7 +290,7 @@ pinctrl_3: pinctrl@3860000 {
 		};
 
 		pmu_system_controller: system-controller@10040000 {
-			compatible = "samsung,exynos5250-pmu", "syscon";
+			compatible = "samsung,exynos5250-pmu", "simple-mfd", "syscon";
 			reg = <0x10040000 0x5000>;
 			clock-names = "clkout16";
 			clocks = <&clock CLK_FIN_PLL>;
@@ -298,6 +298,16 @@ pmu_system_controller: system-controller@10040000 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 			interrupt-parent = <&gic>;
+
+			dp_phy: dp-phy {
+				compatible = "samsung,exynos5250-dp-video-phy";
+				#phy-cells = <0>;
+			};
+
+			mipi_phy: mipi-phy {
+				compatible = "samsung,s5pv210-mipi-video-phy";
+				#phy-cells = <1>;
+			};
 		};
 
 		watchdog@101d0000 {
@@ -810,18 +820,6 @@ mixer: mixer@14450000 {
 			status = "disabled";
 		};
 
-		dp_phy: video-phy-0 {
-			compatible = "samsung,exynos5250-dp-video-phy";
-			samsung,pmu-syscon = <&pmu_system_controller>;
-			#phy-cells = <0>;
-		};
-
-		mipi_phy: video-phy-1 {
-			compatible = "samsung,s5pv210-mipi-video-phy";
-			#phy-cells = <1>;
-			syscon = <&pmu_system_controller>;
-		};
-
 		dsi_0: dsi@14500000 {
 			compatible = "samsung,exynos4210-mipi-dsi";
 			reg = <0x14500000 0x10000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
