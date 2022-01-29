Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA385C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=krDgkfqIJMHDGLPi1vNGHclxt1lQHrNChfWnJ+0clfA=; b=kBVeNrm7Mgdkeq
	9pWJOOXs702PG01iFPN7Yj48ry05MHVUg8IyCOi1aMAdIbzzuu3HLTFXKqIb03u/Q7N5HgVQCD85W
	YFIswVD7zcBhfSPy1H28ONv3FuzvEyAWTAlmRIvykYTi2NfL7UzTv9/B3JPgyrYT0VOiEhXIRlbum
	OTfk0Eri6LkZrihUJVuL/EeHAtGtXaEm6cSXaHRuA7YpysfaO71ZaxUNLwNTSxv6EQu5icAEVtXvn
	InVL5rlJJpLeXsyp1wL3KlxDTG46WpAi3pITMXbSnnf6vMCv/YrV9lusX4dL/0MI0kPkNGo0/zKrp
	2HF7pMwp5vgd0Gcxcx4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtXW-005K62-Vv; Sat, 29 Jan 2022 19:37:38 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtX7-005JvF-PN
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:17 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 96A4940045
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485015;
 bh=XuPLAqAJ9YY2uh5AhVfTrXkOsUrsAC204eUS2kAaJyU=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=Y2uLP/Yl2zL6bTTctHi7wAAp/Uk2FJePeDaikYOYEazxdtIjhafuaZ9Lv8t8MP+3d
 a34dyOwMw6MwCLFpATwWM7g8HyQH7vrIpp8Su1Q7/7jgDXODnUz7asEIyEv99RYeNi
 /DbdLn3Fdm2Mr/b9378kh3uwRSqNgtuQsNxgeZI6sWI6gWQbehIMGjLOQdTNatadFa
 0o+EpT4PD7anZpabDB9+ve9rIYW1OiiR6JbNRf+D579ynrokRb3zioymctO46DDXR4
 /7THT0RWrimMUVe7UAJs2z4yR0nVZkzw8hP/aj1sS7fCwkKY/luxejPG5X9ZYEjg0F
 9iU+LToJFRx4Q==
Received: by mail-ed1-f71.google.com with SMTP id
 n7-20020a05640205c700b0040b7be76147so268381edx.10
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:36:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XuPLAqAJ9YY2uh5AhVfTrXkOsUrsAC204eUS2kAaJyU=;
 b=vnXBul4cFb7CRG2jh2ec87xhEUyH31HE0boArO7Wp1uWBW3ogO0xKjByC4r3PlYE1C
 aBK7PEvmHaauKeexA+khAgL9sKdAmlFlKhhh8IM7nlPZdofInlEViXBbRP1mI9dpukoX
 YeuFz9FJIwAIdBYUa31+O+LCd9IPS18ucF2Fh/hEEdCoz56ULopdZvC5gir/sD+8OH/K
 2bGFQ5f2h5eZc5YYsTQmT+EseQUe10aF+LHTTP5/6kn/UxI1NG3Jb00Gkk17VzkU7o1b
 AXfF57V1+3FPyHjONh+oAN9ANOmYFh6MJsyDcnpO5DGstT3gAkdEOU9anRnwgfDzWw3Z
 U3Jg==
X-Gm-Message-State: AOAM530WBaLoMVs+sY7qNHxiPQcHNNIYRIdFNHiV/xgaE0gLuaexK3DT
 mlglA+Ve8Lm+I6n/olEsFF9I973FR0Bccnt8wK4MdVFRqL/v8tR3tRDLj8A6KCxYD5LeUMm/9kL
 2IsMXcj1p8x8k0fygKQp64XALyj4FWSGBGmyfNQM7C0U=
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13885350edw.293.1643485009962; 
 Sat, 29 Jan 2022 11:36:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwkRER9zOkkAySGx0C0YpNLKKRr5Djve4lerBLmDsvqlQap4YIrDFg+B4EOx7UpKxurUyVhXg==
X-Received: by 2002:aa7:cdc5:: with SMTP id h5mr13885341edw.293.1643485009830; 
 Sat, 29 Jan 2022 11:36:49 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/8] arm64: dts: exynos: adjust USB DRD clocks with dtschema
 in Exynos7
Date: Sat, 29 Jan 2022 20:36:39 +0100
Message-Id: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113714_100481_F14F0CC8 
X-CRM114-Status: GOOD (  11.33  )
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

Use the same order of USB 3.0 DRD controller clocks as in Exynos5433.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos7.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index 3364b09c3158..e38bb02a2152 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -684,11 +684,10 @@ usbdrd_phy: phy@15500000 {
 			reg = <0x15500000 0x100>;
 			clocks = <&clock_fsys0 ACLK_USBDRD300>,
 			       <&clock_fsys0 OSCCLK_PHY_CLKOUT_USB30_PHY>,
-			       <&clock_fsys0 PHYCLK_USBDRD300_UDRD30_PIPE_PCLK_USER>,
 			       <&clock_fsys0 PHYCLK_USBDRD300_UDRD30_PHYCLK_USER>,
+			       <&clock_fsys0 PHYCLK_USBDRD300_UDRD30_PIPE_PCLK_USER>,
 			       <&clock_fsys0 SCLK_USBDRD300_REFCLK>;
-			clock-names = "phy", "ref", "phy_pipe",
-				"phy_utmi", "itp";
+			clock-names = "phy", "ref", "phy_utmi", "phy_pipe", "itp";
 			samsung,pmu-syscon = <&pmu_system_controller>;
 			#phy-cells = <1>;
 		};
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
