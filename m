Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF33C7EE2F
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnE4gP4AutinfwZPfBck4qxSrGEVXlfBlBEIxmii99o=; b=tCvPb1/oXa54El
	S95njHwM8mmulxLOpIbE3Mftwey1l9GkPm0EPPNYiWN/ZJPGW5yW5vJhxOQhefysrb7r2HbczZH11
	BkBoub5mGPeM0Q1BJm1VUngjMpkI43ZWUCxTQZ39GShrwfyj4Qjs4nr3+g5X6RMCZlakARyd1PHI2
	1DHEo9ugjZAAVXP/IfiUUj6dMCRRA76ioegxpBXK/mEQQ0p6iRHmCniLGP/bTuZX6nRFNB7I3cmew
	aNDURhYSbs3GYUEFmXzJHbjodAaSJBeMtJwUMHVzVNZV7aB2o/2ndeAa3GQOwZp/z0xRBex7vGy7w
	nNUmDw0vp7ci2ChTROeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmi-003yYe-00;
	Tue, 09 May 2023 18:10:00 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmW-003yP3-32
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:51 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so61520358a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655782; x=1686247782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P531oV9/x4YHyyJQpy3FZFac9rbq6io6m/JeWQjftLM=;
        b=PzuJq0GFfFoj6RYV71gN0FpO0c7kgBNVclZp3ScvSdrwCgPvIvtiitjlQPUWYijCzT
         lgBdMEDYmo16sorhdRCZZ2BzE9NTB6YkYxizyhW+4l4IToWnsjGCUcqoSwstw4QUuz1I
         xDa/2rT4imCNx4inRSVeLRv0OHxZduyxfjcMCltpuEu7L5mbtkS7LzDdl27CCybJpBAw
         u+GW6TUZ2NxRNiXYs6juxBtzEnhBI4097rg6luDHEgMDzsCkvOzqj/tEp0f4jk0WU8v3
         +yV/GyHj6smfz9rDL9C0ni0qAjQK/+JArtvwNPvSbL7p95MOF7wXb8+yCAVTwEujSZTt
         TkNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655782; x=1686247782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P531oV9/x4YHyyJQpy3FZFac9rbq6io6m/JeWQjftLM=;
        b=PX6wkpZnV1rS6oVu6+mxx0LCo9viaLMNODL4sON1sRGpr83foALLzoy0DcZJwaVXuv
         SEMvnCLTnN7UbN1ZQrZgcFdS+yPiXrkgNsGSyyFLryPPXUPHwEpY2T14EW3HHNZhfMxB
         r77Xa9ynsuYBLSC1SnMuJTYDq5/op8xfOA6C5JquGDf1FuVgAr80S+uoqLXKmE53ETrN
         9fghfMYpTOKDuZkyAZ87pmgJeaceVpDNsYriJydDf46LYc4RSBhM9f4LaUC+M1r2m8xm
         rPUptn5iktzWCVVRy3eHWvlwYbjTqb5pJQLs20I9l3Y0rAUPSJl0Rx1OFGTi4qAZDgUO
         A4vw==
X-Gm-Message-State: AC+VfDw7FhGEyfgcgXRmkcpBHXES5ADqDmfIeq6TwHAPWddrsjsHHICd
	0iPbQeaKwsUwBQ7qqudwkwfEBg==
X-Google-Smtp-Source: ACHHUZ6Z2hWW4kJo4XA6wPEBn0RJsE0vvL841HD+tBBP3RwHP6qfpE0ZE/ZwoCyHJIplknssHD1coQ==
X-Received: by 2002:a05:6402:5202:b0:506:bd27:a2f0 with SMTP id s2-20020a056402520200b00506bd27a2f0mr13339691edd.15.1683655781945;
        Tue, 09 May 2023 11:09:41 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:41 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 02/13] dt-bindings: clock: add Exynos4212 clock compatible
Date: Tue,  9 May 2023 20:09:29 +0200
Message-Id: <168365575564.242810.8233098910658144453.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-3-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-3-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110949_049668_8CA3ACB4 
X-CRM114-Status: GOOD (  11.15  )
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


On Mon, 01 May 2023 21:55:14 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> back the relevant compatible.
> 
> 

Applied, thanks!

[02/13] dt-bindings: clock: add Exynos4212 clock compatible
        https://git.kernel.org/krzk/linux/c/5b40732af063c3fa2085b247129f065276c4947c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
