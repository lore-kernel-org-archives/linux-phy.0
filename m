Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0630EC77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 19:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTokhp78XGlztX1hm1l1DGZM9o+GbovOMTDchebos9U=; b=q0Fyw/zSAgaSPY
	ger+TmoV+BUyqBP3O11VDKAMiwEaou/PQQZmjkX0SkOtHyr3Bhdq5UehpYifByePc0GAFvxgtV/vD
	Qu+hFia46fSWS7d/nfS6xoKOP26pcwW9eQtASAdkivUTfIsYfKq6rttuO+DOYNlFtqyeVlRIeD9w2
	GFl/Tmgwc/Ek7KC54LKMvBBiCfatdlc+kA3eZBb4jAuVlT/stjQE1X+TtCHth+laSaSbmaWrRUIXq
	If+1hNPXupRNTDHZyBz60smcPr9em11L2Uw5Y1EJSKmTFn/mZIbW2ppGeyrRSLL6QOlaGVJyqOcGZ
	ZNy6sXkkPA1RXH55FKrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwSoR-0045w1-23;
	Tue, 09 May 2023 19:15:51 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmW-003yPn-2l
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:51 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc3a2d333so9583430a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655786; x=1686247786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OOQJ77m1hn2uL1cTNrMZrbjBsCRcFkR8CI8TyWOVeFY=;
        b=OovPyp7aIg8w0Y2PWf73DJevlnGdLg6GkUsrV5aMhfHSA/KQaHoY89Y1q4g8zhbUe3
         cNTyTRLnrYWmioL+NQm7sH+YoyOTLtcEI0eXmQNHMGO3O6AxcD3g101jAc2BFiz5jCYc
         DkQLoj06QPse32O1Igj++xPPUtAcks/RooaQrH5VyjbCpwaVfCb4mmftt5wGXpO45jEf
         wwGvn+faJfzqPADD5jqw/msSmUOcrzf3WOJVTyoS/mLKIJ+GMoBF/C8DO/yQSWtmsLKj
         2XXq0b3BuqHulO3w8gNELQpPD8kbuMgqvsMLTJT2JtRJJw91y2SGsKK0pVUq/dYp9P7E
         k7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655786; x=1686247786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOQJ77m1hn2uL1cTNrMZrbjBsCRcFkR8CI8TyWOVeFY=;
        b=WA5oyujmvQL2Qzf18HE2Yrihd4iDDZp4ePuZoG2lmPc22F0u69P2HkQIem7pb7kJRb
         mWh3dhvr0VrNFJcSd2hoxSlZRDUsZEQwYa9HhxV6odCVLA22ZeS4NxlJ7H4C037CZkfT
         paUkN0igaKShPpDafNhZLJT+a2BNxg5Jvu+1B9OGnrHG+GcoLqgpdr48m1dvd7FhczKH
         AKiG5XbQdnLJv/3OpKOp3lzvRwZl0z1x7jFokr7xbh/YbPr2qpZkUJA9g4r2uhNFTyFn
         NeJlWkaRCOYhByEnMpmhV3rT2KHhn8bACxffpUOQVTfEFo8B8SyjZ6kPEJsICyZ/L6DY
         Bi1A==
X-Gm-Message-State: AC+VfDwhKcnQI0U9j5xyKtpzfGXV0bJgWkgsN4oRYz9miClhkq4XWueH
	uaoa+V7AUcGJjpgA2M+/h3xyZQ==
X-Google-Smtp-Source: ACHHUZ6cDJL6YidGvvj6uPnksNjdWxWsEBzwCc6yc87ckzFi/G3UAAmcV2j/+o2UMJfpv4L8Y5V2aA==
X-Received: by 2002:a05:6402:10cc:b0:502:2494:b8fc with SMTP id p12-20020a05640210cc00b005022494b8fcmr10929397edu.7.1683655785888;
        Tue, 09 May 2023 11:09:45 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:45 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 04/13] soc: samsung: Re-introduce Exynos4212 support
Date: Tue,  9 May 2023 20:09:31 +0200
Message-Id: <168365575564.242810.10871458937058949630.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-5-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-5-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110948_894052_9CDAD9A1 
X-CRM114-Status: GOOD (  11.37  )
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


On Mon, 01 May 2023 21:55:16 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> it back.
> 
> This reverts commit c40610198f35e8264f9175dafe74db6288a07eda.
> 
> 
> [...]

Applied, thanks!

[04/13] soc: samsung: Re-introduce Exynos4212 support
        https://git.kernel.org/krzk/linux/c/514a935fd0d4d522a08257f5acbc5439174c7cf0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
