Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7231C77B76
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcezIquuxe4t5StGo6EIwnpXaSXgSeJ4ulenUjWEaYg=; b=aq54VV9ig0Cqnw
	U2l9dHbmXk2P05F/ClOq/lMuoMhxEZjgr4FVa8Tj/KqcQN9oV3T6c6EZORj5o2rvdO4MpbsX2nZWA
	IrrmojS81pwlMbDueAhZE8va81r/4l7bXE4a+MtDWMojf/h3+4T666o7FvtkGUIocm0v0veaY5/eB
	rPJK8CXVSRM8TbtxkKxu4SEF1KlTKhEZkAun9wAtbFfOKauwiqYFi0Tjcph9r0Xj5Kae/MV9vzQTY
	mz12qAlbz1ygVBExG0GXctkyGIdltycAzUD/A6q38xXoJ7bdCev+w5H6UzvxZtKiq6MJ2XL2sdUVN
	YPJf78+AParAkx0rh3JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSb-00DVW6-1G;
	Sun, 16 Apr 2023 10:18:17 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSV-00DVSI-1j;
	Sun, 16 Apr 2023 10:18:12 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-504ecbfddd5so3206764a12.0;
        Sun, 16 Apr 2023 03:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640288; x=1684232288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ictKT9aVXsy71NADauVKmbOAOmI+urQXpaOOBezHLGg=;
        b=NmVfd+lGkyzIR89aTXtzukxRcrjPYn7C0h2vuCLNzXGN+ESHg7XCpJ05A0r2JFDj8A
         ThSYnlSVdf/13t1J3961GHMbdlNv2jDuNPkJlyZjkQpoQAuDMQ019JKdzlhnNjhHsa2D
         fF8kmlHnLHneEsPKwni4PtIvZmmYjfJRYmQwNrKSQIjA2/H6QePZhY8yOK+Kuv/zbwhl
         PDA5PAAp+DXDXzgSneFDhQ5M5W+a1mPgofcdxOg5GbpESo+IvLoGqF1/f52FVuO5i8Jw
         4en1XGcuCPvnrP/0arn8WBfOQUQUGvUuA0ulv3xi+hslfOFu4dl0OrFKqk22Cn1W9ftc
         3QIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640288; x=1684232288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ictKT9aVXsy71NADauVKmbOAOmI+urQXpaOOBezHLGg=;
        b=H0GmT+0lT3VLosuVYNnZfoCIK6JdndyLjmSHcbmJHVFodbqsr+S7Ug1jdvYRnYdlvH
         z1WolJNZgV6tcdZnVxhQeXsjnOSqtzDZdC9A/F1Rz4TUkWHxl8MDloZpsW0e5a8GlzIH
         +ztgpeklXZWrInhXUa5/E/thL8hTRWnSFOkFImfmZt6BfZp8iE4C0joOxvEEI2nFKNWd
         8eUwNOI680wYcHLsUm6m9ixloG9rMypyNFM8w2xU8Py6ZbQLPAq9hQrmcatfuVnf5GiC
         0c+2c8f4MX+gX95vSelYyeKk0tX6JtEmp0YaLJhpq6tVL9TJB8CC2PFoQAgjBaEVI+dU
         RcwQ==
X-Gm-Message-State: AAQBX9cJ865wdAWMLvFZIVTW3I1jyRGzDHQjq0x4tP357DD9jvevGAwF
	lahoGa8p2co4swtWjITm6WUu0pciGIM=
X-Google-Smtp-Source: AKy350b4tPKvu3DKWB3ezxr4rb5TH+DVkFeKgGXShis+Z10SPj3vkg0ePywiJThMbrjGTZeKUqdoTw==
X-Received: by 2002:aa7:cb19:0:b0:502:6e48:65ea with SMTP id s25-20020aa7cb19000000b005026e4865eamr8951620edt.12.1681640288447;
        Sun, 16 Apr 2023 03:18:08 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:07 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH 01/12] dt-bindings: soc: samsung: add Exynos4212 PMU compatible
Date: Sun, 16 Apr 2023 12:16:13 +0200
Message-Id: <20230416101624.15866-2-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031811_576444_544DB08E 
X-CRM114-Status: UNSURE (   9.91  )
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

Re-introduced as part of the Exynos4212 re-introduction effort.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index f7c141dd11ec..be3128f2c0df 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -17,6 +17,7 @@ select:
         enum:
           - samsung,exynos3250-pmu
           - samsung,exynos4210-pmu
+          - samsung,exynos4212-pmu
           - samsung,exynos4412-pmu
           - samsung,exynos5250-pmu
           - samsung,exynos5260-pmu
@@ -36,6 +37,7 @@ properties:
           - enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5260-pmu
@@ -122,6 +124,7 @@ allOf:
             enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5410-pmu
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
