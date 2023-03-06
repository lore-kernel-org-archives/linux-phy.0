Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09FD6C678D4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 11:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3LfthrOoVOlVQskt40md1ETLUSgstUob7jLfGevTaI=; b=Bnv2jiiKiBWlQE
	uAnIEUP/cOa5PIKcdX01AcCzedF4DkNTxnoixX3Bky8DU6MDELySblC/aivoRhpdN4vUOoGyDjPuJ
	LHVj9EBdzN1eag4cCb1QDBNEYwZ9pxXCUoPI+XHQUR3TvZlkPpnYpZDwv0M2ri04ZyrMqxaR6PlHA
	WODcdvm/KIzo2oRQ2ns9KlZt96IK5NXzSm1FX50uHCa4YW9UzE2t9ylHPPm7JKik0OiNOmFYMry9S
	g69Ucfd8e9qMUU8XlgQGdaSxosxtuCInOG6LQhamQ3gW7gnNmMIO9kmcj6ipNz0va6+U6sztqs23Y
	BuFbygvDeGm5U3p5Jw4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9FF-00CVV4-Ak; Mon, 06 Mar 2023 11:43:09 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9Bc-00CV1F-PF
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 11:39:27 +0000
Received: by mail-ed1-x52c.google.com with SMTP id u9so37295705edd.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 03:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4VTlImCQ0Akzg12jCam2LM0sLRJaXIwXOB8ngPColRs=;
        b=C0p1w2VxYFJQy2xArnQJo875OA3dC5rIxQ+gKWjT0frGVkreQMk7ilWePjnd8al29U
         cFXMaSJQQP360MuKqMJWXzeRpIHoy2FfhWvwta/SdGdcF7ZCZt5EYKGksw9uFSnFpu5d
         5vHy+KVTCeJTp25KdwtLX/Icrdd5+OC4R3hdXpmXpGOMblPg1eLEaNaH+YXV93Pjt5/B
         /BfflBy+5YJ3UQcvXZvT/ibNaeZzgepQbkmQcNgsntV0+fV16GbZlm7ilWxIlK1013AQ
         lfFkYElDgG4mIPfH1fPgrbPlj1ZFcdr0QItIQxgr5wwlJH5Oyy9vW/p+7yN9J0J9l1Rr
         XpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4VTlImCQ0Akzg12jCam2LM0sLRJaXIwXOB8ngPColRs=;
        b=CcisIhEblXNS/xp6bFzDHoGj3TZYJTuxaxMa2/mW7Uog8kTZPzg4GsI21141HEKMSZ
         cy4XZrrOWTRVl14+Ff+3LLVAh2cxgCkdtTWEBnquJ7fbDcvrdiaTJqKFlSdTgJRKO9IW
         wh05ID4/R8qsgV2y1g5lAgTi8A5XMPIMNsS8LOj7I9Wmch9ETjZr5w2WDMuvmnwF1BMj
         TDTD6T6jLGOOgir9zJojEQcCD2PwFw0zOmp0BMrDc1Kfi8Bo8YkxFdsEAJ3onPU4Oeih
         RPKFn2/MLJURRgNXnKVxUbLxZUys4GUkmZpCvro3t1A7QLTV+eUCHWnezEdxrqKSJBUq
         psYA==
X-Gm-Message-State: AO0yUKWSu7zc4ySz6sM8wiC15MgfuqoqBWY7Helkg0WifK3iNWcEEXul
	GRH9C2D1ol3LPoIkCn8MpF/n3/x0gif3zvT843k=
X-Google-Smtp-Source: AK7set+FO8FZ6QKY7FQYoVxuyaNpT1+xnfN48dmf38sSux0CqMYcn/v9N/3hy+fOOX4q5fiOunJDkw==
X-Received: by 2002:a17:906:5daa:b0:8f4:5bda:b755 with SMTP id n10-20020a1709065daa00b008f45bdab755mr7780540ejv.4.1678102764409;
        Mon, 06 Mar 2023 03:39:24 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Henrik Grimler <henrik@grimler.se>,
	phone-devel@vger.kernel.org,
	replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Chanwoo Choi <cw00.choi@samsung.com>,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>
Subject: Re: (subset) [PATCH 7/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
Date: Mon,  6 Mar 2023 12:39:11 +0100
Message-Id: <167810274096.82312.14858691013742983476.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-8-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_033925_069677_B8F27DF9 
X-CRM114-Status: UNSURE (   7.32  )
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

On Fri, 27 Jan 2023 20:40:56 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort and MIPI phys are actually part of the Power Management
> Unit system controller.  They do not have their own address space, thus
> keeping the nodes under soc causes warnings:
> 
>   exynos5250-arndale.dtb: soc: video-phy-0: {'compatible': ['samsung,exynos5250-dp-video-phy'],
>     'samsung,pmu-syscon': [[20]], '#phy-cells': [[0]], 'phandle': [[24]]} should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[7/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5250
      https://git.kernel.org/krzk/linux/c/6dc01bc640b1278f225ed73b891645202be72b55

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
