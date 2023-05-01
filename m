Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 256D1C7EE2A
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkiF6MFddS9BCPNc59k0nKVMgMBoFNKzMnwP86SpfYw=; b=N0aahBchwuu1p+
	bLGSHCFVs2f/+Y3gkpDEndMgQHaxbsm7XwY4Ydp7d9lfh/r96zyaUQlHN0iS+n2xwI6bBYyl5blUB
	pFfjzn1w0WF2kovqXg5eH0nH/2vqZKwtrU2zm3/jPJq8i1nvgGEQylCAv6X9CaOS2P07y7sqANXu9
	rYfyPUXuBsptOF9bdEwbZrMya8icMXOO0TO16tltCVchSHgpf7zuBP4schP6CQBa61TN5it+1+qM/
	D1JiiTIEUxVqhpZb0ni0k9JbBUSMRRy/lGNV/izSr6sfu9q6aiqRUKIHYYexP9UWBnzxAV/p5kI3S
	4WYcizzHtZkC6Lh0u2dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcZ-00GoEs-2R;
	Mon, 01 May 2023 19:55:39 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcU-00GoAA-30;
	Mon, 01 May 2023 19:55:36 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94eff00bcdaso582395766b.1;
        Mon, 01 May 2023 12:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970932; x=1685562932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oG5Sr+UvBJkF4hZeZmJOgj40jy7b88Q0+yZEwWLbmAQ=;
        b=MnfkLblocHM2pnbYno0bochDrSf7U8mdgl6+UEZqa25Az1IZ+gLrgZP5WgHCZRuKF9
         7xLz18zVJd/K7wrCBlV32h6cfZPOFqvcpBdbi1U8hJE7PXY4RKiIKo1qLjqDBSn5Lz/h
         hlYQz8y3Ee3GSecIo9nMWXcf8EnKkljqF+NRTOSI+aM8cKCblZRuagjGLJKRLrczL9ZO
         ci3Oq1r1NFmtnztD7+J53zsSP8ve9BE1TmUMpq1hogIaF+qeU6eoMLv4YZXPiQRjTPbH
         1CwQTatLo3sUVL76icF9L0Omo8zm6xrZNabw1HnIW7IiDPmLW/YNuKHoNxvvtT37VcPD
         +xFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970932; x=1685562932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oG5Sr+UvBJkF4hZeZmJOgj40jy7b88Q0+yZEwWLbmAQ=;
        b=HiprDLkHGuzX1afLZdK32t9gZxnyUUG0S0BhYMrzjyyxr5jroCH6efSVz5aZ89JlwS
         7O+8tX2Fayh6ed/dDmJevBFe/3BEQuxLHnKbPNPOZWgKKi75FoQDbYZsU2btMM5+v+cR
         FW9bnoWmEGUBk8udl7xXm0+ZWdSO3OdrVGKZ91BF6l/KM2LXvtJFZtx76ctKifYBxGpx
         CW5MFpdOp++D7lEFyYESU79JIM1Esr/FGBuRLigmHHcMFYCO7jPk5wHHyYcjh3ETnFMg
         3toS0iSMpullD+jloCBP1of+3+e4jDVlfDUH3YcpNQs057/zTn1ipdrstEiDguhKEpga
         a2yQ==
X-Gm-Message-State: AC+VfDyNg6c2IN31So0NgxQvC0CFs4QtcuMJb5XNxrhqZhPyAFVofG7f
	lfaBcg+niPU4m57oS3k8cCw=
X-Google-Smtp-Source: ACHHUZ6tUMl/jI3cnu8jGQfco5YOb/fN6HlvvKCVpDZoo0ebUZMqmLdiZI6JNGRKPJqWQmqchr3dSQ==
X-Received: by 2002:a17:907:3e08:b0:94f:29f0:edc0 with SMTP id hp8-20020a1709073e0800b0094f29f0edc0mr13127980ejc.44.1682970932547;
        Mon, 01 May 2023 12:55:32 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:32 -0700 (PDT)
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
Subject: [PATCH v3 01/13] dt-bindings: soc: samsung: add Exynos4212 PMU compatible
Date: Mon,  1 May 2023 21:55:13 +0200
Message-Id: <20230501195525.6268-2-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125534_969485_FE21D054 
X-CRM114-Status: GOOD (  12.74  )
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

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
back the relevant compatible.

This reverts part of commit c40610198f35 ("soc: samsung: Remove
Exynos4212 related dead code").

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changed in v3:
 - Added Exynos4212 compatible next to all Exynos4412 compatible
   appearances
---
 .../devicetree/bindings/soc/samsung/exynos-pmu.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 5d8d9497f18e..e1d716df5dfa 100644
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
@@ -50,6 +52,7 @@ properties:
           - enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5420-pmu
@@ -125,6 +128,7 @@ allOf:
             enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5410-pmu
@@ -143,6 +147,7 @@ allOf:
             enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5420-pmu
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
