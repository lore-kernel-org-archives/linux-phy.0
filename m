Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D391AC7EE21
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8Bt7Z+zHra1JLeLsSIztyuVKcuDFlUztbDJIE8EQEw=; b=VxP8Sm/DAmmXbk
	CUF/khUOzW0zI8B3NdI5hS5TFVFQ5UyKiw8CPDV6wgWuLOMEG87aKPInr4avIIn9pJ8iDNKUkhefn
	Fkn0r0XbRB4ECNLKMmbPBQk9oVu9TOVjwbshCoTt7gsnuOFqPaqJZWWaPce7sUu6USdmfRydRJ2jE
	OR2d5q8rsDACQjCXgV9HsCGZYyCurQW7MD1BTnSBGRjRz2YmsdMdVncz0ghi8xuQt0XRASanYu3uT
	/NW2O0zUuOFDX3VQPScvIheoTM6uFgWqHDvGLTBJdiI7UohFVAt4Xk1gmSPNMW7Y9eMZps3mXSrPh
	Hdsk5Fg9YkG09nQkle0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcj-00GoOK-1J;
	Mon, 01 May 2023 19:55:49 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcd-00GoH7-1e;
	Mon, 01 May 2023 19:55:45 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-94f0dd117dcso498374366b.3;
        Mon, 01 May 2023 12:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970941; x=1685562941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLv8sGaRe8aHSb+AdoBzh5LujY+igvlve60gkCrF8RQ=;
        b=C8DMc4JaKQvEjKgY9hBY4KRgwbrWrCzs43/QY8dxNhRP0YphFClq3AdINz2tDHQkWu
         gMokCSa26p16KAHxdYKlTeHd8qy9WYhXvLhSv6Ad0MKTdfbEmIRFhSiA3ULMZpLJABCd
         ddHvieNBYQB3yNcab8VPPrwNEV6uAC8QyRWJe4jEpizd6st7gKM75djw6xqgQbAIiQr7
         ayrUHj0YgVH9d4aUDDjemsNQ2HrGhXZyNncB2TnMCrt7RlPB2dRhZ/9jhNRT3Nc0VBZD
         mvMfk4u/Vse7gKlpRyBtVsGhn8idQNWAgsUwmZkcM4NZ0rDr8NmOSS5vWkUdXRZLbkmK
         psnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970941; x=1685562941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLv8sGaRe8aHSb+AdoBzh5LujY+igvlve60gkCrF8RQ=;
        b=lZGq1H61z7R4j2naWpX9Glftc9/P5VVWghI8xtRBzIGdi02T5ccKYqIitWB82EWmZL
         eNWyG45PDoKrpobZxZLlkRalA/3nIO73qP4oU5ElpqymkLXq32SgkEPKztuVGqVWRJ03
         Q2cDyQw2Lr7dF4V4k33EX7o7YqTy8usVYpB2U/uhAmW3XGW+CuH6BFzCzSzgNWEDscpe
         smjhFjfxDxJQ+aEsfBxx/0sA873kM3IDvmy9vHgxSnZk4At0ZVsWGT29OsQ0SYV845Kh
         NoaHqW1fEG8zbGWoqVm1s74PzVXkkIWXsiM5O+qDEcjOuBvUWqsIZyNjNmBUqs43A0+o
         q15A==
X-Gm-Message-State: AC+VfDxnxNDi1DZ8HhNGXOGJADwpAT4hOlJiWeSVB6S+jVE3M5U3TV+C
	XmLqAy416Pm9QKy9QA2V8w0=
X-Google-Smtp-Source: ACHHUZ7ocgZuC4FvvCMO40aJHJVgOYPYQUBdNycXgNijS5wGRU3ojlIhqdgXy5nJafD8RS/+RbwixA==
X-Received: by 2002:a17:907:1c1a:b0:94f:4102:25c8 with SMTP id nc26-20020a1709071c1a00b0094f410225c8mr14074942ejc.61.1682970941016;
        Mon, 01 May 2023 12:55:41 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:40 -0700 (PDT)
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
Subject: [PATCH v3 05/13] clk: samsung: Add Exynos4212 compatible to CLKOUT driver
Date: Mon,  1 May 2023 21:55:17 +0200
Message-Id: <20230501195525.6268-6-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125543_566439_3767FE96 
X-CRM114-Status: GOOD (  14.41  )
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
it back.

This reverts commit d5cd103b06f9d766295d18798de484528eb120ea.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/clk/samsung/clk-exynos-clkout.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/samsung/clk-exynos-clkout.c b/drivers/clk/samsung/clk-exynos-clkout.c
index e6d6cbf8c4e6..326d5fc58727 100644
--- a/drivers/clk/samsung/clk-exynos-clkout.c
+++ b/drivers/clk/samsung/clk-exynos-clkout.c
@@ -55,6 +55,9 @@ static const struct of_device_id exynos_clkout_ids[] = {
 	}, {
 		.compatible = "samsung,exynos4210-pmu",
 		.data = &exynos_clkout_exynos4,
+	}, {
+		.compatible = "samsung,exynos4212-pmu",
+		.data = &exynos_clkout_exynos4,
 	}, {
 		.compatible = "samsung,exynos4412-pmu",
 		.data = &exynos_clkout_exynos4,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
