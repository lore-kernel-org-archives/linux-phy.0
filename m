Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8164C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NddY3JIQKDQUl6Zt0GSFubwqEsUjbi2h5JLGQA6Ykos=; b=mvTp8TZSYWk8bq
	qAkwMfcF69X+Pu1KSq5/tJbW1+PPU8IYxdJgwUCEem0Vbj0oEECohsZ+EDnTOkHMW5cnZvT8ZBZgN
	DnFJKMFQng/JiBLr+prkcjT4km77noqMAim4GxsLrM7iLDtKtDHxwjdm7bPNHoBMJGfZxfA/7ZLm1
	syGJaC8a4bPdKOnM38Su6lgw1EdbEG0PxVD3uoSfo1TDHBizOtNBVt9gh7Qx+fKNsaFGdvGZuyzrZ
	yuOv24FYrKByTzw/ugiiNtEtNCMz1UID4F4CCyu+NmwjTvqOFGKfSCLLZEIv7ml7yIwDvLD7fD5P4
	E/h6meX8bZLJMsDlkWdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVcP-00GRBW-3D; Fri, 27 Jan 2023 20:46:41 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb3-00G8vW-K3
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:15 +0000
Received: by mail-wr1-x42e.google.com with SMTP id t18so5930468wro.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ndc/iaR7jbpFClfbGd4ofgtC3FYEzqRlKdVRxlgp+PA=;
        b=gMwA6nngkfIZpPGhH4Lg/vrN9j2ELujkTuJqBUSU0s9NpnlZLPoQnnLWHJ+VMshPmf
         0ArZIdo133rszRVf0iJ2GO63/wyxGgraKhAkhxVfZ/Jt4p4yM8rodnooVDmEZLgrWw2m
         23R2CkmGjix/NtD0tDEvjzBwq/EDjm87xVWKfZElSSAhJjP/t/rsszjrU9B/+21CKGU4
         DOhc7gnw0m778fPEPCma2jSv0z4yRfhpBRchmtpriTsKcmpd90a5xrTIIRcBCmEH9fnQ
         fZEsDS/bvvYNstFae5exsHqllPmbfDrjUJnZUZpYarguFuMJ05V4vEeIk8xO7wyD4xjB
         hhuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ndc/iaR7jbpFClfbGd4ofgtC3FYEzqRlKdVRxlgp+PA=;
        b=WPkLTNzOUVrvzIndVgsqLEX3Boh6thTwfXLLJny7eXZCH3ksGSWGj4ttoo9vuiLZ88
         a/DdO70Xqf3FAf/iQlRS3FVyvKs6qArUsXPiblECnBuPNmdIhZnJvBypqf2rYEMmbt5B
         fupqPiciSNJ3cyFr+b573wz13S5u8VC1tBM6r0ArDXFWlVNP7X8lwtb3I2aaSePAurJV
         4c3x2pS7LQ1USB0wkuTN0qgfTlBcvMbrl4AZ9TSHUuoBjzC5BBp6jTW5tfNlh8Kd2Y0T
         Oog7oN47Fua1PArue/LvXc0+S7/j4Ljms77zYtDbHuO3VZgEG0gQAReu5pANdbyTJMrS
         j//w==
X-Gm-Message-State: AO0yUKUISBAsiujY+eVaz1zitlPfmcfBLYaIdccbFp4HcFgp34pZ+Sw7
	hUoGB/baRVy1DJspVdhOic7sTA==
X-Google-Smtp-Source: AK7set+pMclzg8jxiXChlpxrY5YQXujzRSx2mjUjSxo2KkccFdEEzPo3yaBlRtyHd8d+lw/pLZGQCg==
X-Received: by 2002:adf:a153:0:b0:2bf:b710:c0b with SMTP id r19-20020adfa153000000b002bfb7100c0bmr10540460wrr.1.1674848472491;
        Fri, 27 Jan 2023 11:41:12 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:12 -0800 (PST)
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
Subject: [PATCH 3/8] dt-bindings: phy: samsung,mipi-video-phy: deprecate syscon phandle
Date: Fri, 27 Jan 2023 20:40:52 +0100
Message-Id: <20230127194057.186458-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114113_696667_B81A5C30 
X-CRM114-Status: UNSURE (   9.51  )
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

The MIPI phy is actually part of the Power Management Unit system
controller, thus it should be its child, instead of sibling node with
syscon phandle.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/samsung,mipi-video-phy.yaml          | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
index 415440aaad89..b2250e4a6b1b 100644
--- a/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
@@ -35,15 +35,18 @@ properties:
 
   syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
     description:
       Phandle to PMU system controller interface, valid only for
-      samsung,s5pv210-mipi-video-phy and samsung,exynos5420-mipi-video-phy.
+      samsung,s5pv210-mipi-video-phy and samsung,exynos5420-mipi-video-phy (if
+      not a child of PMU).
 
   samsung,pmu-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
+    deprecated: true
     description:
       Phandle to PMU system controller interface, valid for
-      samsung,exynos5433-mipi-video-phy.
+      samsung,exynos5433-mipi-video-phy (if not a child of PMU).
 
   samsung,disp-sysreg:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -81,13 +84,10 @@ allOf:
         samsung,disp-sysreg: false
         samsung,cam0-sysreg: false
         samsung,cam1-sysreg: false
-      required:
-        - syscon
     else:
       properties:
         syscon: false
       required:
-        - samsung,pmu-syscon
         - samsung,disp-sysreg
         - samsung,cam0-sysreg
         - samsung,cam1-sysreg
@@ -99,7 +99,6 @@ examples:
     phy {
         compatible = "samsung,exynos5433-mipi-video-phy";
         #phy-cells = <1>;
-        samsung,pmu-syscon = <&pmu_system_controller>;
         samsung,cam0-sysreg = <&syscon_cam0>;
         samsung,cam1-sysreg = <&syscon_cam1>;
         samsung,disp-sysreg = <&syscon_disp>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
