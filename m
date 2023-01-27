Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F585C61DA4
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xA92dXrNpAAE3RePFwfSHRNUz7wBp9vTIdgX613Rv/k=; b=Zw/GULCCzLGztH
	fUjcEErILMRkbctRMQbTi5FplFIEy8cLCXWTMe69wDhY+bTkKm1Cn9aZTP6LM3lwWbJIV+2VwGr/o
	b5lbg9fLXcguQ/OM8Yt3SOPdISckumGutZmX767WOzNCWoypAApQFlxvyqjrgxQa0IKRkGMD4gqS9
	b5xeW4cKsFUEiWIrdGTVY8MtpalsN5jTVMJwRUfUUJ1if4Y51+0UPpmVK0LT9XlI+8jwsC2iRu8nU
	Co+5CkYrFPMQ9B5o7ItflVJ0rUgMLYydkuRAYybF8uJFjOcvjJR45Av8DVrrJFjrnvd2D1PTcgAcK
	AmiCXbWVzEtdbdl/493g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUbG-00G92t-MX; Fri, 27 Jan 2023 19:41:26 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUay-00G8ub-QQ
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:12 +0000
Received: by mail-wr1-x430.google.com with SMTP id h16so5870679wrz.12
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=laJbzm3hNFvKVQdtgilxX5HQETMASKmZLxjfb/658O4=;
        b=nI6Ug6W8ctMCQtI1vVqDWj8MpjBhnWeeT31JylQQfqpiYHv2PIYko9EILdTGUMfHun
         BV7C4e6AAanGxKd7QxFGz+11XVELz2+slWa28dZ+PhwvPC/xB38end1xN7C1jAPghC+4
         Ti3PlMCgNRCz8JK07atg7xAtsDuCaG5gGwiS8rR8UrN7WYRAYQOTSAkwiHWviWYP0iKa
         5ClGwzCxxtcm3FdBL4Mh03InXChGiUDmVL0UzT0vnUkKiZQEFCibj37cuwbirsQhDbX9
         WNxhw85wenI0Fhc3ler070sioGpH0o+6Yamb5V/OORturTxwSie1BBaAInjRQ6lAASUJ
         gF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=laJbzm3hNFvKVQdtgilxX5HQETMASKmZLxjfb/658O4=;
        b=kWPYppcGIJRRd4U94Bz0bX0Z4M/VEr3Y8F6pJOIG700fUE6QvW0vRyaSPDPvFRxuGB
         OgcSCCbxBCBhwRMbFw0flNmY93m0fmSX4tWFxa2wMUAhyLXF0y0cc7IHqBPcrQWCxcvq
         Qt6QE/byLZc53nlihKq2fcrjLDEKLUsmx1HFBIixhmHPSziaQEIZcR8fkCM6LR6g0/rH
         vAb6pJMAcmmAf7D5729SXhdd68Eq1oumbHOWFP/Q96K4p6dTeGkNsmBEpQcr0f+P+f++
         UDa3jiY4M85gzm58DZ/CVaGDQqw9mt5vua/ADfUH5Eg16+E5WNm1shlV05jOjO0cf5mu
         drTA==
X-Gm-Message-State: AO0yUKUywrvEadaiHsYVDgQ8psVSgjQ2EJum0GEstjAb5Ox6TnbpSCL2
	FM/SmkbbmFXlT44A/0YwR4t/yA==
X-Google-Smtp-Source: AK7set8N28+EX6KUi96o3PeCOm9vKAuOFZYK3aIRSmt7I8LzRlQeQ5HFryKL/vW3McfrcWRpm4j0NA==
X-Received: by 2002:a5d:658d:0:b0:2bf:ae43:108d with SMTP id q13-20020a5d658d000000b002bfae43108dmr14352920wru.28.1674848466678;
        Fri, 27 Jan 2023 11:41:06 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:06 -0800 (PST)
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
Subject: [PATCH 0/8] dt-bindings: phy/samsung: move MIPI and DP phys under PMU
Date: Fri, 27 Jan 2023 20:40:49 +0100
Message-Id: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114108_896017_6CD62144 
X-CRM114-Status: UNSURE (   7.41  )
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

The MIPI and DisplayPort phys are actually part of the Power Management
Unit system controller, thus allow them as its children, instead of
specifying as separate device nodes with syscon phandle.

Dependencies
============
If entire patchset is okay, then it can go via separate trees:
A. I will take first soc patch.
B. phy patches #2-#5 are independent and can go via phy tree.
C. DTS patches depend on (B above), thus they will wait one cycle and get
   applied later.

Best regards,
Krzysztof

Krzysztof Kozlowski (8):
  dt-bindings: soc: samsung: exynos-pmu: allow phys as child
  dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
  dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
  phy: samsung,dp-video-phy: deprecate syscon phandle
  phy: samsung,mipi-video-phy: deprecate syscon phandle
  ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
  ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
  arm64: dts: exynos: move MIPI phy to PMU node in Exynos5433

 .../bindings/phy/samsung,dp-video-phy.yaml    |  5 +-
 .../bindings/phy/samsung,mipi-video-phy.yaml  | 11 ++-
 .../bindings/soc/samsung/exynos-pmu.yaml      | 71 +++++++++++++++----
 arch/arm/boot/dts/exynos5250.dtsi             | 24 +++----
 arch/arm/boot/dts/exynos5420.dtsi             | 24 +++----
 arch/arm64/boot/dts/exynos/exynos5433.dtsi    | 19 +++--
 drivers/phy/samsung/phy-exynos-dp-video.c     |  7 +-
 drivers/phy/samsung/phy-exynos-mipi-video.c   |  7 +-
 8 files changed, 105 insertions(+), 63 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
