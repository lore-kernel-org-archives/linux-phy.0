Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED26C7EE2F
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3iLR67LSHOBaK5uCcbaD/vohiVMyTbbudCOUCB2I5I=; b=wHR0yT5ey/pKR6
	2BV2ON+oEvQFeIBikO9EkXWyMOvitSgMaSmXnCMIOlPK+pgkjaVLpUOdO9L+O5e0LqOBTQNj4CAsQ
	3zOwHaIBahV8zVXG/aFJzt+VnZZo2cOJDojOUhKW/B/fYgfrXQFMtt91d2KGymURfC4ncAUQcBfN5
	UOE4jfEvrhSL18MWh0ICztgp0q5LpSCKLTp1ZTNMP1ShgHVpgYEMQWl+cRmy5FiDH1swxlW/KXans
	DwZ0a59y3TuFoipxU2vGshMjnr9gn0qU3Ho4ZkmAp/rDyqDqOxhTNlDTMQoiXi+n+qFvgnnqlPnXO
	6lY1yC/q+hj+xOr8u6Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmY-003yTm-2I;
	Tue, 09 May 2023 18:09:50 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmW-003yOp-1T
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:09:49 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so61520065a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655780; x=1686247780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sOxLtKQQVjzWmW6oMf5arrESUTg7L76NrXcLY8eEWIY=;
        b=h/Xalg+73qTYecR2RtFtm3tuJpHj9tjuvX9Eoeoi1yrKT6S/qlpEjSxNWyP0Bg5R+Z
         c6n1s3h36fbep6yxERo9p8+xZFVL/VRQidHslyr48QNTYB02rQyr3p26ugouGKwsuUpN
         6bSC69Rj3wmQlhIz0ngfGctDQI311hlnJfuss4MqYdPzdax+834fd1V6hf/ICPiZANyR
         YQHv17bGlOgnT3jZVr3of2u0izPDQNgKNs87xG/PTlPxme0t/+1mWurd6oCVUWVSHorh
         yVeNNHcnMpcRpv/dz6zty3KMklR/nYFb086yJuNo3GrrPqStPUJPA2qto7NJHw8y40LM
         1yGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655780; x=1686247780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOxLtKQQVjzWmW6oMf5arrESUTg7L76NrXcLY8eEWIY=;
        b=iKVYTx6TXnnUbpOK3R28lWFr54mMHyWUpamU1rQf3XY2w85k10t4TSdAj4Vdl9LsSC
         FFpZiP1dY60AqB9j1cUEytwQhM/kcCHyz4dhlD5Gv9zbBI5jxA+rIzXOOPD7CcZuNG++
         thXAknAsx8yBv5xM5IDGHyRkO7wVTP5qbBtFre9y4E9kRzHaQ1W559ATVATZErOyGvqW
         DxM5LKObhOay75mXYqZjMmTfituzHYiHxHlr5MSZPSxnHHXi5V9TNxgbcEMzOj9yMN2f
         eE6xkmM+zOfVyLTnZpecJ/yROaV6tO9rQ1mThDYW8C3O4PmDuC9J29M3l9pY+gvyLXOK
         77CA==
X-Gm-Message-State: AC+VfDw6+ZOqqs8EzgS+5+W10gJQRvjbndwSSmoMNwPdEt6zs8jxsJi+
	aIU/u5MqWcqCCR/vD4gVQB8d1w==
X-Google-Smtp-Source: ACHHUZ7ZP9TpSCN16a7TGu8HBolTKycKVwrMz/AgCz5Pz6hGWhLH011gKjd/yBRjPNbci8b64gxLLA==
X-Received: by 2002:a05:6402:34c9:b0:50b:c350:f9ca with SMTP id w9-20020a05640234c900b0050bc350f9camr14480931edc.10.1683655780065;
        Tue, 09 May 2023 11:09:40 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0050d8b5757d1sm1015286edb.54.2023.05.09.11.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:09:39 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v3 01/13] dt-bindings: soc: samsung: add Exynos4212 PMU compatible
Date: Tue,  9 May 2023 20:09:28 +0200
Message-Id: <168365575563.242810.473604395196843985.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230501195525.6268-2-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com> <20230501195525.6268-2-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_110948_491518_D16D1341 
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


On Mon, 01 May 2023 21:55:13 +0200, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> back the relevant compatible.
> 
> This reverts part of commit c40610198f35 ("soc: samsung: Remove
> Exynos4212 related dead code").
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: soc: samsung: add Exynos4212 PMU compatible
        https://git.kernel.org/krzk/linux/c/8a19d4a1508c62ff28ba427c3209cdb57379d325

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
