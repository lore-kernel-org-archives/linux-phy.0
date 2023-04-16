Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B948EC77B79
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 18:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqnm+iFrhzoUowvwSKNS7Z5QDBA7q20QJWVuO8Vx5yg=; b=YCwAWHo8BWFj5j
	e82N+EhtlPFYO6y6Y68KOpdrGKCpu5RFx38o84JlqbVswn8fNh7o4h0LIIjffDA7+raOl++Ll7dh/
	7Gds/R+5pYgWi1ni4pz2+glbNDLFgHhVzRmDtWXCAjXhThoLbOuGUfWN/VF9WtZtnoImaYEkuWuQy
	5wNLlM3FOZTSFWkX/V1GqUJX3yMC2QXj477jAQRqC4m2TaeSPDzxCgC/NSZb+OGXOX+qnNmYPUiKZ
	qyn3Bt8yHIFPl2peYNpi4gvkj3FL3vkAhvY1bQUANbTMmJw51qtFeTm1UzovaRq2M0BnNS/8TqBFt
	R2KbLdXxPRdLeSxS1SoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6lg-00EF8N-0f;
	Sun, 16 Apr 2023 18:06:28 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6ld-00EF7K-1u
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 18:06:26 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u3so6521931ejj.12
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 11:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681668380; x=1684260380;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zx4HOdq1glymmchauCaLCgaY7UhtC2caCXREOqnLcnE=;
        b=ddakFiPtPqcA6nXNg9qB79RhsTIQJkU2ZRVv3zqRn9m4GLf8VHwtPzmMb/HkqKx3TO
         QgtiFm9x04J54FEgP5o0dZC70R4QnPpum/vVl0or2d4pelkja8AIamHrNbqjP9V3Io59
         iDuQeYhw1d93IPJv5i+ZVKhpEu741aUYqv0AfrZUPXCD6Z6V1OfQa6rWRQcbyHM3I1CH
         QOj2GzhEXqk71OyChXdSPodkye+GFJSL6S1AEczvmNdgi8MpD8csdOPQ2YD2e3Vz+sG8
         x4sxuXBzS9H+50F62r+FTY7DPNuRD7OcS0ZksVCYZiv+ufVWN7x+CboTSbrmUbQvup1a
         dMDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681668380; x=1684260380;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zx4HOdq1glymmchauCaLCgaY7UhtC2caCXREOqnLcnE=;
        b=MWpTUnDuoT33zEhcU6aFylLoyGjHZ3Il0kwt2n3a2YwativLrvoVqNL4D9/6pMiLY5
         wPCNJ+uIPl3XsUCUIMKYP8NJbT0RW+7nNoU/7VCOmt/6wLqEpXTR9R3dnbSsoqh4dOom
         64W4W4ptRWzQgSWvp/07rMmAC1RpBe9DXmftOwGXRQqDtDVjjNDz0YcqlyFAohLNh7jP
         rREn5Q7OTnTb2abkkMKVanVXoginncYxmEa5jvWRdvsBMO/7qjEfnAqIifl6wxjKD7RG
         xzetJNjo/pZP9GhvciC/p1agnZiP0yeFLmSZxgYmHDT474fC+Od4i7wpPj413GemQkEM
         5ZsQ==
X-Gm-Message-State: AAQBX9fL5MBEts7Qv5iQM+K0972H9CkrQ6STR9cM3GjlKH16W1tN2svG
	JGPv9X9ddtYAlULkOa1fQrXfGw==
X-Google-Smtp-Source: AKy350as9Ry/0XZTLgutgv5F71m3xIEIuueZ6CB5ap8/e/hdGHn/MB6do5KVKLt/AnCFrHGfPkHrUQ==
X-Received: by 2002:a17:907:a424:b0:94f:6218:191f with SMTP id sg36-20020a170907a42400b0094f6218191fmr1809248ejc.52.1681668380277;
        Sun, 16 Apr 2023 11:06:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id f21-20020a170906739500b0094f7c1b6a94sm191773ejl.11.2023.04.16.11.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 11:06:19 -0700 (PDT)
Message-ID: <cedc7ebd-9852-9cef-7020-abfeb873b0a6@linaro.org>
Date: Sun, 16 Apr 2023 20:06:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 08/12] Revert "phy: Remove SOC_EXYNOS4212 dep. from
 PHY_EXYNOS4X12_USB"
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
 <20230416133422.1949-9-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-9-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_110625_625995_41C54242 
X-CRM114-Status: GOOD (  11.64  )
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
> The platform was originally dropped in commit bca9085e0ae9 ("ARM:
> dts: exynos: remove Exynos4212 support (dead code)"), as there were
> no boards using it.
> 
> We will be adding a device that uses it, so add it back.
> 
> This reverts commit fee7e1d50c6e6da1d99035181ba5a5c88f5bb526.

As in all other commits, do not reference the DTS but the commit which
removed this part you are reverting.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
