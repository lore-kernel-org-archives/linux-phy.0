Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36945C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSigEoN4oonH4Ht8LPL8ZdPHQDGnA7HCpd5Aeq2JS4w=; b=yLaZxvzo0S9CqL
	FUQX0ckB7bVuKBqECu45NWpUBFZnu63Qr5HN1qzt+ZWuK07t8SIft7HOuV2KAvHtj7jRwnJnI+D+1
	K2686jNavWk0bw77RB2/s4rABjU2mqnpqdUIZWFZIqnc/DatQfK6gZPNI6DQeoivNr4vEX4cfQo8I
	4RuI3Zhu0qndz+CR/kIbCHHAOPr6ZDBCU6l6tCS52rv0dRi8wdmIu7mrtYHskreRSAQgFynjUXNz3
	DOp+F3mbvc4parNA01+8SZyBFxTK7Z0ln3vRENON7nKHkD0kBYkPcWDxwdFRyWtsiUdSS9WqWeid6
	AWHTz5LD44Te7ox+UTjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRn9-003yiR-2j;
	Tue, 09 May 2023 18:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmj-003yZb-2e
	for linux-phy@bombadil.infradead.org;
	Tue, 09 May 2023 18:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Ykc+NJpWYwnllZDoX+4ReA3Lc/adaxGurWdFgmTtwT0=; b=HB5w8OllBicOxe56iZw6zTK9xr
	IrFfVARvBW7g1gN5CzXczv6yplUbAVpp+FicTbFCR8Lih4Tni+xPG4djlKPGFqxC+8LVapPNk4+a1
	nkpuqduDl1NGaYGf6YEV8CkZTU160yRxODvdF99Sz+jy3zCwnKzMAIWOR0SMtrZqaBzxSuU1LlvVT
	MvqQnyp8IeEhpsWUatm3dOfnKUjNtiTVrXdJcVWaFLH7u1B+F1n/0qYDdFXzKPmizgijNulsE5L53
	+phDTT3M7OTBB7KOV2nN+X4A2OWj3SxLFPGCFwrDJTV8zFRdM/181/WDWCjFEilPT527OYujpz83G
	nn5KkquA==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmg-006Djg-0q
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:10:00 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bc37e1525so12036774a12.1
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655793; x=1686247793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ykc+NJpWYwnllZDoX+4ReA3Lc/adaxGurWdFgmTtwT0=;
        b=B6Yv33IStPyelhF8OdQygmYARdIpTY5gvloVmpFKVFLdmY36IHBVaIqGzzC5awUkeN
         /IkIB9KZxwsd3X5wqYzNtkm/8WuidZ39KahyAroxdgonmgJprWHZLx06lUeOSWhvTLFX
         2nEPns/1AE9vYOfufWTnTHwL+KDXRF2nWToaeiaBH0YaCCBXcmTHk1ia03YOuMN+qh4g
         nQfU874wLJOcTPMvwggyb2PLML1Z8y+KxRvxqvm//kJzsW37Ry7j4oBBmdDVjjbTrUKc
         OrzU7aKP6lTL7mwQgjZajKzB4caL1HBVIphp38ZfnuM9BngPb6E/t82gJV6hu0H2NKef
         S7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655793; x=1686247793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ykc+NJpWYwnllZDoX+4ReA3Lc/adaxGurWdFgmTtwT0=;
        b=QVnXLMAc+OFbp5rddWCOCVEGuAnYYc19cB+qf8KPxPH4xyjGYHoSD8gGy+Hs+abVJc
         uhWudNA7aE7bXOPkBlz8/JyuUF6m972tstxz1fM5EF0clFSR4R6T3gVp2dO65I6rwMLF
         ocx3jZhIMeLZ0uiDUSO1fPCob1GbZZUuArGt5z0J0HZvlsdEVApS+X45gSYwK6w0g4S6
         NkQjSHubm/rj+nhrhAL5x3DUheb5AAy0LGHO3LGECjc96fZsrW5m9JC8j4vEfsEfOy8g
         C0D7sb6Q2JhYr9WYhBy8d4vTpiWWoGeHss9wxJHPPGS0GkTuyeYrW6wKPcWs993zcYHp
         08Nw==
X-Gm-Message-State: AC+VfDwQKk94cJqZoZVuWVKoPNoeDlx6RdXJsvgvjxnSGkQj2i+hf+W6
	Shc382yGsdyQEJ24Kk0qDqogRg==
X-Google-Smtp-Source: ACHHUZ4K/EPxDUp5cN5i+MrYJtRHUxzNOUDZ9RANSIgFtgZnmxcaiqDZslD35IsjyHMjpIBOsiCHEQ==
X-Received: by 2002:aa7:cb87:0:b0:50b:c8b1:574b with SMTP id r7-20020aa7cb87000000b0050bc8b1574bmr10792916edt.3.1683655792838;
        Tue, 09 May 2023 11:09:52 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:52 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 10/13] ARM: dts: Re-introduce Exynos4212 DTSI
Date: Tue,  9 May 2023 20:09:35 +0200
Message-Id: <168365575566.242810.2057690967168679631.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-11-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-11-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_190958_494564_1233A355 
X-CRM114-Status: GOOD (  11.31  )
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


On Mon, 01 May 2023 21:55:22 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> it back.
> 
> This reverts commit bca9085e0ae93253bc93ce218c85ac7d7e7f1831.
> 
> 
> [...]

Applied, thanks!

[10/13] ARM: dts: Re-introduce Exynos4212 DTSI
        https://git.kernel.org/krzk/linux/c/41bf1a9f9fbdec5dd1ba69fe26157f42e44dcee4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
