Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7493C77B7A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zgaa7H2y+Aw/6C4Ak5G7q5rlk7z7TpR5kPl5XMU0eho=; b=eKeGw7tG2B525A
	pStadqeYg11JZcBRsU4UcQEOV0Ajrm4x1LcV7Os8hpeK5FL5alIDiHTOcqYFDfK3rYfu5xmww39yQ
	v3/itz61zWhJo308d0UQ2S1vr+Xfq4gd8VixpPdsOgP2fGIfv4JHXaE6igGPfJ9rr6Iw2vEv3rpch
	xwPABYIhxBPYVtgkEMvDYfkgxx4A9GAjitB6T5GIYB207yGR3vSIpZg6iB5Quf0RKVcDJAyN18ctn
	By1MnhvCKK0nXEJt2Z6LKDAaXF0Y/FT82ni6I1PR0V6dbi7BP6YHQy4lcF4RtfLjwZdj9zHKPma5S
	vuD56pT4NCvgUZZp/XzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xr-00DsEA-1J;
	Sun, 16 Apr 2023 13:35:55 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xi-00Ds6v-02;
	Sun, 16 Apr 2023 13:35:47 +0000
Received: by mail-ej1-x630.google.com with SMTP id xi5so57466149ejb.13;
        Sun, 16 Apr 2023 06:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652144; x=1684244144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjXGUzPKMMr8ygNmvKTs+ca+O+QBcfL+qA6w2J0vS7w=;
        b=UgUKRtwE4oogpbBNh8fzZ3FqYbVAAOAtKTi1c6uAgDKatTn7KPuM6DbVmUVkVTtmuR
         FSp52Dzw63N5O+/AzrgnCXSoYK2oSQ6Pk1xUfJ6Wa5OU0++bSc+N3LQgK0GOHmzJX46e
         hadyNfBXqpFptAYcDI0LULtH95r/hbrEvaAYEQZLVdnIUXIkK+ilqyKez5dYbcmosIGt
         gGm7HCaPN82U9qgXychN+Bc+WPuHmKEeO6r2sWVdFeSPesYbW6EUQH9UPMjaKL2MVwhG
         rCQY7wNkclVIuhCpcbx1T8+HQsk4OCgOYiYT6yMiQJnQIN4Di8RJkRrOYlyZ2ZTldpSH
         kitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652144; x=1684244144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjXGUzPKMMr8ygNmvKTs+ca+O+QBcfL+qA6w2J0vS7w=;
        b=Bv0kI3WH6DIncW2gfNEQVAW+kTk8kUkgneQYg1F6R0SvffHQ4HEH9jM3Cy2XqCD2F5
         lPxleOUajZocuwJNMNXqNXotje8VM5EsMBnKED08G0NpV/ZCijda0gMwwH4ZF+StM/bb
         fasYtreXxVSeEp0Zmq07g/Nyn0dohRNmtuKJhzQ9eI/9AS1J4FdG/cMJ7CTHCyMRJwmY
         PcsFbWZMu6nG8ppP1xD1rp1Pe/d8H4zkKaXtHwCBCyvywMhwpnjxKmeEzxmew9rDC69F
         P7samIfhkDtNRGRGaibL12OuwCX16nGcEpx391OiT+TzY4CSLL/6WTDY/peg1QaRVIMP
         NYOQ==
X-Gm-Message-State: AAQBX9dqiY4/b1277ArlkMq/hrcG2qe4Lit3wXGn+LWyzqzgjuWbHT3Z
	wDo2DMc90hrAisd9YLqUo2I=
X-Google-Smtp-Source: AKy350aB997CQTiblOPPq0SvVcmrg3sVPcAu4d+kAnkGtuMsIWRj3quw4TlqSzUjasl+SrIb1dRo3Q==
X-Received: by 2002:a17:906:8805:b0:933:130e:e81a with SMTP id zh5-20020a170906880500b00933130ee81amr4134021ejb.32.1681652144115;
        Sun, 16 Apr 2023 06:35:44 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:43 -0700 (PDT)
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
Subject: [PATCH v2 05/12] clk: samsung: Add Exynos4212 compatible to CLKOUT driver
Date: Sun, 16 Apr 2023 15:34:15 +0200
Message-Id: <20230416133422.1949-6-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063546_046846_0618DB28 
X-CRM114-Status: GOOD (  14.66  )
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

The platform was originally dropped in commit bca9085e0ae9 ("ARM:
dts: exynos: remove Exynos4212 support (dead code)"), as there were
no boards using it.

We will be adding a device that uses it, so add it back.

This is effectively a revert of commit d5cd103b06f9 ("clk: samsung:
Remove support for Exynos4212 SoCs in Exynos CLKOUT driver"); the
driver has changed significantly since then, prompting this re-make.

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
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
