Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A59FC77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tod1Utf1xkn8EnQgCp7nzLALZ6/9Xt0P4Ku9uCG7kQY=; b=zng4YhOnrfEmxf
	GcNgXewShr9aON0XISYhcJf+TWOp2r1V3qbxRDB2XKAngi7+/+B81imU4l+vALg4eIgYhkJhhkfY6
	Op8rvIVumuHC+HscGvmOSHx/FkXIB98FO8tIH5PkHA4GOMxLnZEYD7S55RUPmEMiPLXnU5U7XRf0P
	vENldKBbt1QrZ+kpDOz5DFkgQq1bW5l+3KaahRyh83JFG+TIRRgeA0fhZkecZmoMs4OxY+mSq0fhb
	HEy0TeOEhggUIa8LbLt91mTBWx+GqoTRcbv2g47HvK79myFvRMgh/jtidbUBYOcCR9nN1wvosqUb2
	roO/Ej6fhtabl4t+S8HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRn2-003yfo-02;
	Tue, 09 May 2023 18:10:20 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRma-003yUa-0u
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:55 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bc3a2d333so9583582a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655791; x=1686247791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iy+cbzzMQuxCTrCfzjntf6kXXVEyP3ei1AGAzgxK3L0=;
        b=NPeP8kTFznlWkRMqcClddaeKDzmkjQbgNMwJxBfaSCN0pSkjTnuATgpYWNKk8HP1kH
         pGGpL46W7oww6yNoG0OKriH7VQgtwHYt4Kktq40HB1/WXQhC3ObC8//5Ui/BVPtsoOop
         BBWNXAKjB8XeYJNq5O9CnOS+QIYEprH8BtQHesWyflL+5DB3+7asFS01Vk59YlI5LxHX
         ANBO+LgErYOlDkUucmnl7hE5hasWOhl4EmRs7qf3idPoO0yM3EBiLPLK85/mDn/MnPT4
         N3cZsT3Ld5wsNGYiZZgufpWcr4fawSbi7+0LnsyLiEHvPZbMFT3BBnwkfqqHtZmhLDA3
         +d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655791; x=1686247791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iy+cbzzMQuxCTrCfzjntf6kXXVEyP3ei1AGAzgxK3L0=;
        b=WcV+eRErY5BUr4MoE9AzGOEd/hh7boWjWUG1FEDm2r3+e71EBLUFcGwcYdrGl/kWVp
         QSbk/K88kYXs2QsXjspZXw7DQAoJy9VC7uWb1zyMjpK780KTvCCiDao+JCkNky6/nV+W
         GdhNZ3HwJnb+VOz9KfUKodKBAwkv+YUXlxi5JHGZQVUl0e8XfPb1TzWzoWx4eaLO4spo
         GPXkemdYkMu2G97pC8RSSi5TT/IhENCbcVYRkFSP2zHGv3XH1bJHU+OvwaJCs5yzU7qJ
         Un7CEZCJ4SvdvN/aq/ShE0sXvgzRDnLbO7ZKB+1NMfGOfcjGz2E+MEZjpRj0daJhQp4n
         1d6w==
X-Gm-Message-State: AC+VfDwjnKeyguDWToSXwB6HeHkOI1C+6avcZCreieq76KRC4nWSpuBb
	i6qpuNyvTLvgMTQBHGMxe8NU4A==
X-Google-Smtp-Source: ACHHUZ47HeppV/iVh2N6EUDsOtopv6N36J1VqvXDHLRSjrs44zgmwmyzGrm7QSIaJADtmRvpEvSKuA==
X-Received: by 2002:aa7:d45a:0:b0:50b:c4fb:770f with SMTP id q26-20020aa7d45a000000b0050bc4fb770fmr10993092edr.34.1683655790926;
        Tue, 09 May 2023 11:09:50 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
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
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH v3 09/13] ARM: dts: Move common Exynos4x12 definitions to exynos4x12.dtsi
Date: Tue,  9 May 2023 20:09:34 +0200
Message-Id: <168365575565.242810.17999495054025034304.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-10-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-10-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110952_364711_D6DC51DE 
X-CRM114-Status: GOOD (  11.01  )
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


On Mon, 01 May 2023 21:55:21 +0200, Artur Weber wrote:
> In preparation for the re-introduction of the Exynos4212, move
> their shared definitions to a separate file. Rename the pinctrl
> definitions accordingly, and adapt the Exynos4412 DTSI to these
> changes.
> 
> This reverts part of commit bca9085e0ae9 ("ARM: dts: exynos:
> remove Exynos4212 support (dead code)").
> 
> [...]

Applied, thanks!

[09/13] ARM: dts: Move common Exynos4x12 definitions to exynos4x12.dtsi
        https://git.kernel.org/krzk/linux/c/b4354b9761437ba136329e3f2ea1386e8d483e1c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
