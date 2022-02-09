Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E75FFC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYgxAtCZAWAJUGECO80ck7027B/pGMnh8NcUor6YIOo=; b=xrR8VE+5mLzJgF
	OqGwQQpQMtjdSih7bhxqpkw2vFmf0nr8lBWgZZgyVez6XzaeqOiHZF32ltDUTmbmocjqb6eYMIXkY
	4A3D0hGKvh7Y/8/ZupWOt3bcR+LSqMuAowgR11yi0PvCHoX+E81dJtqE9ftqZgH/nZ1DKH2869YJj
	C4D+aSgM8KnAuvtbG/oUY83MiX0jPA/lQiKX+jO8Ts175LcUDX7AHll/u5KAdEQnn3koqyl1+fsat
	v8jS9ue9SDmDhAan+uxYmJvTdSlSW16wX8H80uSvLLm1K6y2HYDIYjoOzLPcWXMBU1LfXaWrTBoLl
	Gu76K2TclaWuK9ObtlCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvZ8-001tDe-Ck; Wed, 09 Feb 2022 22:35:58 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvYv-001tAL-9O; Wed, 09 Feb 2022 22:35:46 +0000
Received: by mail-oo1-f50.google.com with SMTP id
 u25-20020a4ad0d9000000b002e8d4370689so4167813oor.12; 
 Wed, 09 Feb 2022 14:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z5fTrwS5rMcO9/kl6ojaw4OQF9uM5X4OfMj/GMQCbWk=;
 b=VU4Qi1pcYg3digDlFJXJevImN5oyKFqWbcQevvO8mmvOkm8sjDx+T466niKObNm1p2
 WYjaDwsmb3bFby8sDesb4kbHkG1mu6B5RhizC71ojI+v0TiqaxnNx/l5f2V7vnEInIdS
 DgNvgMRdpuA7kmSk8774byxD4rO0lnxB2ncg6cH7xdmhYRDVXO0x6tdPL+6SZK4KVK2P
 wRYO1CA2w6bZZKv17C23OiupY76yr/JHhRs4u8Zg68+gACoiNy1rChzPzquMoRmBkn6s
 Fp2DY0/BqTiRpDOsauCLymzRRQoV0XZRuk6IUmtNiwCBnv8E24LxOAttZf5oOo9cpYQR
 3r+g==
X-Gm-Message-State: AOAM532+Nym4C/0TdVEqZVzdr0TNmB0Rj17UMIRYenlq6ONsB4nJjL5d
 da3gH1oeWMcF7OJrTgkHjwQ4UYPgXfMK
X-Google-Smtp-Source: ABdhPJxqfDJ9yCEcYw3PdO97m7IdVwwhJ4cf2NE0mwgb5Nm481pxklEis7a3JldAdbzsJSVROGs1RA==
X-Received: by 2002:a05:6870:e505:: with SMTP id
 y5mr1804779oag.109.1644446143483; 
 Wed, 09 Feb 2022 14:35:43 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l38sm7447772otl.45.2022.02.09.14.35.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:35:42 -0800 (PST)
Received: (nullmailer pid 1067145 invoked by uid 1000);
 Wed, 09 Feb 2022 22:35:41 -0000
Date: Wed, 9 Feb 2022 16:35:41 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH 7/8] dt-bindings: phy: samsung: move SATA phy I2C to
 trivial devices
Message-ID: <YgRBvd6Dzn57e2i1@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-7-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-7-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143545_350837_42AFB887 
X-CRM114-Status: GOOD (  10.45  )
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

On Sat, 29 Jan 2022 20:36:45 +0100, Krzysztof Kozlowski wrote:
> The I2C interface for Samsung Exynos SoC SATA phy is a very simple and
> limited, so move it to trivial devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../devicetree/bindings/phy/samsung-phy.txt        | 14 --------------
>  .../devicetree/bindings/trivial-devices.yaml       |  2 ++
>  2 files changed, 2 insertions(+), 14 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
