Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58489C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/RhEySW/zJ840dvsF84VnYQVswmCUJ0cV/CSWY93zM=; b=NH0QtrUOsWDNDR
	utEJbvdoWvJ7kGwbkH1QpxOFJRRST8aqVK1ZvKw5wAXWNWwfSCh2m2DrL2F4Oj26sJidgy3voH5ym
	iQ7dTuRwl/q6VOkW+dEj2yIPtLoIyVeyWW7Vc3o9Sq8J0vWdUIKYAWoXjHwh4ZHiuDVxlO/Yriuv7
	Dje92xF08Flz2Tof2IJLbe9Maf6e53p7Pl/6YZJwHSpLtzB0/rITrDWwyFjGHavUGDkEIwsqb7ZKh
	WkjsnlEFJmYW6ezb/F2zMN37w3t8X29XdEm8CrIdfm6ABm/5V5By0+e1rdtcN5QvG72MQaFCYmlDl
	l5lyv9k5R8Sik0arK0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvdH-001uFh-NN; Wed, 09 Feb 2022 22:40:15 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvd0-001u71-NV; Wed, 09 Feb 2022 22:40:00 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 v17-20020a4ac911000000b002eac41bb3f4so4176434ooq.10; 
 Wed, 09 Feb 2022 14:39:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9LTj9g9v9fEplqwzV7DqYmU2pd1A3USTNnaU4aUzRKI=;
 b=CZ9aD6F21XNGww5uwqA2rrNrFkrAMV5wRnt2wUQw/rebR71ocmOqBrWOuvApdV6jUV
 YNJsHXhn1R1c5IHBwg5HT3rlXThXGu94+XDbQka60IAsZxFYM7WLqGCIp2s2dWw3BIs8
 oWxrprv6BCY8wy6Tt+b4vctwBAmZ8eyxL99Vyj0b3vWHJ66CC/4xxI4Vt7FUMoDX9voX
 oouPj4g0uEiNk9bYdaixDPF0ZrXwkdOmTIMRNe9EUc4AshaczIICbJhw9jpLmA1/n0kq
 STBIG6NlpshRCIa7BL/+GYRdsVDZ4FXP+cSfcx33b2lUYawTN7odG5HoCv/LG9bxA7Fn
 sMrw==
X-Gm-Message-State: AOAM530Jfegx9tQq7GJL8ddaDK51rOBAJusAiMyWeJofIP/eswXBTu7w
 KVTAFgWp1k0Xyy/tvZYzmg==
X-Google-Smtp-Source: ABdhPJwA3fufMa0ThKPBXJGk56i5UtdHUNSFdzuPQv1ozVU8rJvBLQ8Uhfgheg5jwu54rD2fDfP8nQ==
X-Received: by 2002:a05:6870:44c2:: with SMTP id
 t2mr1742372oai.287.1644446397906; 
 Wed, 09 Feb 2022 14:39:57 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d1sm5282504otk.70.2022.02.09.14.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:39:57 -0800 (PST)
Received: (nullmailer pid 1074568 invoked by uid 1000);
 Wed, 09 Feb 2022 22:39:55 -0000
Date: Wed, 9 Feb 2022 16:39:55 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, devicetree@vger.kernel.org,
 Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-samsung-soc@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, dri-devel@lists.freedesktop.org,
 Alim Akhtar <alim.akhtar@samsung.com>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 05/10] dt-bindings: display: samsung,exynos7-decon:
 convert to dtschema
Message-ID: <YgRCu8I7VqMCiJtF@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-6-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-6-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143958_786599_15A0BCBF 
X-CRM114-Status: GOOD (  10.03  )
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

On Tue, 08 Feb 2022 18:18:18 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos7 DECON display controller bindings to DT schema
> format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/display/exynos/exynos7-decon.txt |  65 ----------
>  .../samsung/samsung,exynos7-decon.yaml        | 120 ++++++++++++++++++
>  2 files changed, 120 insertions(+), 65 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos7-decon.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
