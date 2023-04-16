Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2E54C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 18:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9X51nOyBt+IwxKHwZL6sWYTT1GnzJXnIi2PVV53qrw=; b=OFEdnKpNajAfhb
	DlKfvGnLdwv77OthKPe+Baj+Y7iZ+zo+Qt6NUyQK9GvwFTCFWHXsEQFQcvWHdD0kpYbNKDAaOqNBx
	IrUB72DTDU4PC0UOJvI844mmCRcx/tifujeq9/1q8vJJadPzYDBj3xbW+f8xdo+G6i1degNA20FbS
	uqnbQej8y7vDCM8Lu6NbJfaR48BR0ODsLZkMXsKDKzFGXIE6k0QnJiJHBF2oDjaU7nJh+lA5PbreI
	X+OA+E49l4/HscTreIEB+TYvvuL4P1IpuR7YaJApN8FSkGYNccNAzRyVjtq2RCsZJYm1h6BaL2wv7
	ulE/XnLeqiYC/vxTmhUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6pT-00EFbD-1F;
	Sun, 16 Apr 2023 18:10:23 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6pQ-00EFYH-2z
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 18:10:22 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-94f0dd117dcso83275566b.3
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 11:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681668613; x=1684260613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oo9vwDAIQGWd+ZBgWogqeSzYCOSuwuz4YdLXaQda4hk=;
        b=oo/jGAthzIYHD9CeJNKGhp4vfFFhrsxkzAj1QZp2gwQ1B01ATFLNxFCGe1892EehrH
         XDK8LUfmRXSlyBXRach6rloo2FNbY9m3dYgxIXwHG/5nNm9UCSNAcK6PMrKvs2ezUL+1
         uznSFP4iNYkZ9Gd5qHACFzVgJN1s/bVZYnKv08jcGcDAD+OGXH3c6Ko4t4+07F/oh+CP
         Q/RumCJjaCzq3rdq5BlYHibK65gjUtrz7C5RH9K2HVEdquvEZR55kB96EsJ7ZHrOUDQm
         vDi/2cBrSmhL/6qh+zP1u7SibPet6IMy71FDUK2yj92S4LpwBQUJ9lh+X1R/FX11Nl4k
         Mwtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681668613; x=1684260613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oo9vwDAIQGWd+ZBgWogqeSzYCOSuwuz4YdLXaQda4hk=;
        b=VA5mMrr3V++D32H7RcsXvEbJBgd9vsl9QO9SFJI5WKVfbkshq2MImKPQrfbTmwFJCn
         CRtLCkXaa+I/wf+urRxLSmcUe2IaW33lOM59lzTY3kuHNRLuVKM90mUnbMFbjt0PPDyV
         MjdRrMXHzVJR2ls4hsWNOrV7Z1cDGi6dK+b9YED6qJ2jFOf3WyS+3TKp7vYrLWIndz1H
         BjwdncD3zKAaYC+5QVyAfnVUefOCDYANwlImGLU1b8mn4v0oZLMV3ubVHC4GocpuhfUR
         evHwJ0C7vjMIA9U1Ye1WewwjciOnFGQGvpGL8cWjGP6a9F2GIdaal6LDyo0m6sV1p2Wl
         k1hw==
X-Gm-Message-State: AAQBX9eXFpfT1qOqJ6toK+w6aXVapUuRIlNPM1CMV1Jdzi7AejfOSJ5M
	e8RCzpz62G6ma8bgqdvdK/jzyQ==
X-Google-Smtp-Source: AKy350awJUSJApohEW9Y2HjTY0hDK7meag+QYuc/qIbodh49giYK5YHhG9LMgMx3rmjwQW6KlxBkWw==
X-Received: by 2002:a05:6402:1154:b0:506:83f7:157b with SMTP id g20-20020a056402115400b0050683f7157bmr8288181edw.10.1681668613362;
        Sun, 16 Apr 2023 11:10:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id a7-20020a50ff07000000b00504a356b149sm4706745edu.25.2023.04.16.11.10.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 11:10:13 -0700 (PDT)
Message-ID: <185485e5-fa17-dcd2-2354-cdf29d556a53@linaro.org>
Date: Sun, 16 Apr 2023 20:10:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 10/12] ARM: dts: Re-introduce Exynos4212 DTSI
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-11-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-11-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_111020_965964_0C1967EB 
X-CRM114-Status: UNSURE (   9.46  )
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

On 16/04/2023 15:34, Artur Weber wrote:
> The DTSI file was originally dropped in commit bca9085e0ae9 ("ARM:
> dts: exynos: remove Exynos4212 support (dead code)"), as there were
> no boards using it.

Revert the commit instead, with necessary changes to the files if needed.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
