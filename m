Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C16EC7EE22
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8Kisolqu1tvHeSeKpUPqdwsaCAwOx2tb0W61tp8FEg=; b=kYeR6m9cxAQQ3q
	31DkVoNS43/RbTPWqmvur8fXG4aP306IklcDskKp9LVVZ5UdADy8jP9/bgvmojKK/P5R7vmqMPFFn
	W/x3+LcAZ+j4QNH77T3kbw3bVUTzTU8uI5a2QRWdGEqisBAFhYFv0YjqzLvIzzV2wAALQUbEfhHC9
	CLl3agYHN4wY6tZ35BwvYAOJ++z17rnOLNIcQCWILnAkp73BVgQ6wyaHQm21dRS6EoN0+ZvFLJVug
	TqismOuJKwg+2u+TDNvv9FJzpqHQ2DS5hlz78ZDDPUtuFB8lVODIurDZ4+AuxnQ1MlEJFAHO65ePm
	8E/ceZZSx1OUkIWVQljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmv-003ydW-03;
	Tue, 09 May 2023 18:10:13 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmZ-003ySg-0v
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:54 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bcb4a81ceso11262438a12.2
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655789; x=1686247789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6Mk+624yxmJZhHaO1qWp2thr1eQhOU4HhCuia9Oec4=;
        b=gnn4JGqkuL8679yPpfpJdLY0T1E3exoerCewjeQWuzGfcaQBijpRSoJjdv7PKTg3Sy
         Mr499xZTPJvKc3McHFl/2hOG7VqPYfzv9aMhAh/UdAVJ0JbAQv/e6W1KlN6e5OZOc4JQ
         X9k9nod95QBEbjCPVdfD2pUVSLu1p6D2C+nB2wxq2S7lTXW5b4mmUtsFgfisFgbNP5kL
         VOKmBxCYBb+iZJtTaRMdF84Dl0G08u2Bd2c8IRTziwDnV4M1FEXFr7zztZGL0YkAxr/n
         qBRd95ga2VNqB4uS9X5fqnxSwIU3XxPet8Nkjfjqix6bUGegq85AY/8X/H9RDvpFIwdO
         iOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655789; x=1686247789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6Mk+624yxmJZhHaO1qWp2thr1eQhOU4HhCuia9Oec4=;
        b=jwe/BlYs8tthJJ2ikgvPa8meLaD+vilNxY9RKDUUl0GeoNoaWfRyzP9Ju24kxS4Won
         oZz8en2h4hnvSkakjFMSpEbL0lKvGuHuxGjonjSF1zW1VrvfgwSNQU8JIDo4yM7PiqWf
         1XlEyvgAKjxT9xxaXaFTEgoiILDvX2B6Sp89v54x/y8q26AGIZMY6F9vntBAviwmrE8n
         LJ7KrrRA3Pnk9vrwKr7ouKur2OfiqTYc4Y6+SMWUE0PMykhB2zJydo7yAwFCweNFeM20
         woU2HY0vu/Qrg4AP3hztPkMhkaUQqzR9NBal0wIZWLkHR2R6oRVLbi4xZKR7Qx7k4FsL
         6NLw==
X-Gm-Message-State: AC+VfDwSKILn+v2862jj3rVqaml/zvHJ0sEpU3jJAsgTWiIlLnKCUTeL
	pgyO4wmMHrtJaZK70VLTSvAvPg==
X-Google-Smtp-Source: ACHHUZ5Jg/H32sCIUzGZPIgCeMhANkCcCtIqqsjY4T3Eu0k8izMnFpTqj3Zeqww7zEiNewdh7JADeA==
X-Received: by 2002:aa7:dbca:0:b0:50b:d557:d446 with SMTP id v10-20020aa7dbca000000b0050bd557d446mr11080825edt.2.1683655789189;
        Tue, 09 May 2023 11:09:49 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:48 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 06/13] clk: samsung: Re-add support for Exynos4212 CPU clock
Date: Tue,  9 May 2023 20:09:33 +0200
Message-Id: <168365575565.242810.17090653188259271875.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-7-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-7-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110951_328835_F9DA8346 
X-CRM114-Status: GOOD (  11.51  )
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


On Mon, 01 May 2023 21:55:18 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> it back.
> 
> This reverts commit c9194fb623b0158029a268376df09fe28a2a2b05.
> 
> 
> [...]

Applied, thanks!

[06/13] clk: samsung: Re-add support for Exynos4212 CPU clock
        https://git.kernel.org/krzk/linux/c/40b4ffe5e921a8db911a7e5ffe3ad8da86ac0dfd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
