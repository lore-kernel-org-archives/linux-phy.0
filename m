Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2044C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 19:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL/s7KRqH4RVq2bHF6SxeGitgJqs4gJHOgKCzbVB48Q=; b=S1B85J455BbycH
	SFlMi05mjiNd/1I+zBRuJzcBManSEBMIdbZtJ2EZxkjm/xESuOv346/yQbM84M449JmdCb8y5fp36
	EVOsrIom5/IPOPan26qF8ii3mfTbY1/9meJukSI63hPyG+ZVAd9tHMyvOimJYPsuFiNiOLgftpU91
	ks5VpUCdR7N0N0uLxf3W3yXqO9Ch4lcNAnHkYIQGtBjeFHpGPlUN4UKk7lzMsVFaZtbuuILhBOcBC
	cZHFsoHXUi7oIoHqKmgYKTyNURIVDp1FG9QdBHbLJHhYf5DmndF2QqnLwKJIMmCCQ6ytwavkF6Jpq
	emP8fbLPrDtxhepjfWjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUcb-00G9bg-0J; Fri, 27 Jan 2023 19:42:49 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb8-00G8vS-RO
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:21 +0000
Received: by mail-wr1-x42b.google.com with SMTP id bk16so5888036wrb.11
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXF/FT5VGcZwGc673y38gqasO1Ez04eMNkbruDEnIiI=;
        b=gdCf/BsV0BYHDAVQaGj5uEJC9/P5TJgw3sLCjI3tvD5gHFroLZUguanFfSw57RPvHI
         bye/8CUczKtkj9n1YhnsZ3GaqSfodFcfyZDFKw9On2IYALM6xlQkOpZCnETKLul19xX8
         KW0nPXpMlJbXMTNKtbulWGFLKv9hImcMnghQjAv73k/a4SezMjGkOhX34thvQmQMluHN
         6MNFoC7IEyp/bkKPYOHxAo5KVOLiByKXQFSDDc8L9ibSa3QuziNoIn4g9XLwyp/VteK+
         mF/RM1SorxAI+BKuuDh6k5GBuOn1D8/aEtMSWZhF9i8gjCrqyIjIkrbxnQewITtXf5e2
         PbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hXF/FT5VGcZwGc673y38gqasO1Ez04eMNkbruDEnIiI=;
        b=DoCBAlRlsqkkzZ3I0I/txPUcyB7w7AUdTfh8MNFBKqmOX0Ri/uCxjZ9CK/AVaACRYn
         lS2vyv27rWkTG13cGDZFq3g6JXcXPnVmtpJ9q3xsV5ZkqNFo3x2XTMJnVRdnq2knDSPS
         x75ugiaDnmunh3/9vUVw7K2nKbVdvAWSoAJdVECiY8nvMO0hdxMqod5wq4dUPbCEZ6fo
         IvK/MH5Mc5ZVGatyS+x4hyp2t+s9Xf5RNezdbQ3Lj8ANZcBADPzU9k2Z6Mq4jPTdVjEf
         xoOxXNuIglDNBvdagPz1MGTGc3yU1yYP4icPu4wI53AX11XKk5KtwCkhUEJUM12ybAAH
         F5xA==
X-Gm-Message-State: AO0yUKWq0VlpGA/YvnNTMpRybPY4RHbLlgZ4SgNSlB6T9vhs2tfxJRZC
	h6eNCZ2lG2TeWzc6Gq/GM0Q6UA==
X-Google-Smtp-Source: AK7set+jJD3RzRxwzaa36W6wlFcd+BsYxdURd8hMG6GYx8fH7v5XbeXGgf7+C6HLF/HWbchZLVIS/Q==
X-Received: by 2002:a05:6000:104a:b0:2bf:ae18:34dd with SMTP id c10-20020a056000104a00b002bfae1834ddmr13491676wrx.56.1674848478404;
        Fri, 27 Jan 2023 11:41:18 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:18 -0800 (PST)
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
Subject: [PATCH 6/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
Date: Fri, 27 Jan 2023 20:40:55 +0100
Message-Id: <20230127194057.186458-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114118_950628_5D02EF44 
X-CRM114-Status: GOOD (  11.29  )
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

  exynos5420-smdk5420.dtb: soc: dp-video-phy: {'compatible': ['samsung,exynos5420-dp-video-phy'],
    'samsung,pmu-syscon': [[11]], '#phy-cells': [[0]], 'phandle': [[16]]} should not be valid under {'type': 'object'}

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos5420.dtsi | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index b1051a7d07af..6cdb1a832fb9 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -585,18 +585,6 @@ spi_2: spi@12d40000 {
 			status = "disabled";
 		};
 
-		dp_phy: dp-video-phy {
-			compatible = "samsung,exynos5420-dp-video-phy";
-			samsung,pmu-syscon = <&pmu_system_controller>;
-			#phy-cells = <0>;
-		};
-
-		mipi_phy: mipi-video-phy {
-			compatible = "samsung,exynos5420-mipi-video-phy";
-			syscon = <&pmu_system_controller>;
-			#phy-cells = <1>;
-		};
-
 		dsi: dsi@14500000 {
 			compatible = "samsung,exynos5410-mipi-dsi";
 			reg = <0x14500000 0x10000>;
@@ -822,7 +810,7 @@ jpeg_1: jpeg@11f60000 {
 		};
 
 		pmu_system_controller: system-controller@10040000 {
-			compatible = "samsung,exynos5420-pmu", "syscon";
+			compatible = "samsung,exynos5420-pmu", "simple-mfd", "syscon";
 			reg = <0x10040000 0x5000>;
 			clock-names = "clkout16";
 			clocks = <&clock CLK_FIN_PLL>;
@@ -830,6 +818,16 @@ pmu_system_controller: system-controller@10040000 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 			interrupt-parent = <&gic>;
+
+			dp_phy: dp-phy {
+				compatible = "samsung,exynos5420-dp-video-phy";
+				#phy-cells = <0>;
+			};
+
+			mipi_phy: mipi-phy {
+				compatible = "samsung,exynos5420-mipi-video-phy";
+				#phy-cells = <1>;
+			};
 		};
 
 		tmu_cpu0: tmu@10060000 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
