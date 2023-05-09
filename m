Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 183F1C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LkRaQ2LYD42k+j9cmWKKQ2QzI6yubnL2s029tuEvWs=; b=ddIeGHxgo7tmDL
	l+1Dx174UJLvZQuIbQbTdgJMmgEfI+1ijEtRvWHVnH9aK5DcGTb/vG70P6/GXb2nk09qMgHkpbHEu
	rH2HkF7IR+R4uOGGs+SnYDCW1OvuS8mHgWuan/ILRdRlppWByyisISSnuqokLlcUInC6ZTA8Zi2nB
	DUT6fORp0zZt91u0W8pYYI414JK8iClUCPEuRkoz6wkPd7Cqty5m0YH5z2pH3uOgysni2U3QcizLz
	EDR0fLbtaoH/6k0rnICPVabXxC33mBvn6qdz9eQNhOSg36b6TdXWOXV7a0kad9IFH4Uqsta7RjWzy
	AuBWLrcfFh7DChiGKbNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmu-003ydL-2M;
	Tue, 09 May 2023 18:10:12 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmX-003yQL-1l
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:53 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50bcae898b2so11287357a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655787; x=1686247787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTAOCVPOPtOy5y17r+mtI5VSueoAcoLIpQdMbfiTcg8=;
        b=D1PFvAm7SlYpPsPFpbjzQy80gA8ralWcfpyiMeU/EMEfyrmde5hbToU9wgYycOcF5v
         YAGOBiJA9kXiZKh8/GLzZg7upeXk909wM4m461AZhHh7bb2RhFQ8yBduQ0nJJ4Nq/o2K
         RJBJUS6ydoWHlz9PeO/s9mEkytwTeKthMGp9hCNp8d2M6W/gi66naI1GvRJq+QY4uGz3
         ajzSsfVMOtdHHDtZEvJR4ZoDkE3zvfXq1G47DUgEzDOobj7be99w7fHB6KSl80Yqzuw4
         Bzc8ItdSUVWIHCFNGojsGVJQUzgptt6T3EG/wu3hWZwAytyZn5TQuhJcJP6Fph8ngztz
         7J2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655787; x=1686247787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTAOCVPOPtOy5y17r+mtI5VSueoAcoLIpQdMbfiTcg8=;
        b=LPSQpp0NriRPrWtlPyAEY5Fj/3n0HfQU742eTLIz8WZY3b3HBNqjuYeMl1xi14bIiH
         Hhug9bCoWPTuD95Cv0QS6kSMJN71iNWrc7GeZuttzEjPXQy4AXlWCiIeSlfGtfleyW8u
         azYmvHNgoxwobaXL5PNl3JpaFVY31rANGkrPbt34uTJwSvqbMnW2Sh0gjozXP7UgSr6t
         T37xZae8aSkzEqPdzrgy47Fgm5x8xnOKTi3elSvFh0yG66L3Qm4e2CfpE7xA3AZA5Stp
         6Jw8MHx1iSlxVfZ4zLY2Ag+dlHRksYOEOxTlaPrmm3ZSLXD9wPkxGsX/b2Z6+3po5/kx
         09ow==
X-Gm-Message-State: AC+VfDxnTyTr+TvWdGEzptT9es/IazRJA0PNyivDh6CBzR6JUVxCNJRm
	/3J8j535GrC+9nt/864tdHCS7A==
X-Google-Smtp-Source: ACHHUZ5hovFjTjykdEntWpkRkWy8gjb9Ub7wb8Lh4BgtsqFJo3AnBC7o0FPzHT4uW5ImOYI0KpKMUA==
X-Received: by 2002:a05:6402:10d7:b0:50d:bb87:247c with SMTP id p23-20020a05640210d700b0050dbb87247cmr2359508edu.1.1683655787536;
        Tue, 09 May 2023 11:09:47 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:47 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 05/13] clk: samsung: Add Exynos4212 compatible to CLKOUT driver
Date: Tue,  9 May 2023 20:09:32 +0200
Message-Id: <168365575565.242810.6906601762854965924.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-6-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-6-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110949_584382_346C5D56 
X-CRM114-Status: GOOD (  11.85  )
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


On Mon, 01 May 2023 21:55:17 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> it back.
> 
> This reverts commit d5cd103b06f9d766295d18798de484528eb120ea.
> 
> 
> [...]

Applied, thanks!

[05/13] clk: samsung: Add Exynos4212 compatible to CLKOUT driver
        https://git.kernel.org/krzk/linux/c/48b359732e166d0f5d53649e21eac8d9343b8e13

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
