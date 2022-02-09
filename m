Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E7CBC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQcB9aohRYJRmHh5XCTWuEd4gOd9m0jirkcfaQR0uXI=; b=44PXDTdXsp7aYU
	aC6ekHyLr0X/oWiBlWDRY2jY1GLFynTowgMQTmlCryybQILb5UohERVoKWrUunSq3654i82prWo4H
	AiknzRZxk35zphajyTmUuYcfUXT4tFv4Akg+YOe/uYCsA9hurcmPREwDVCFM4GK5d7aKWJnzMvB3G
	/log7duBNtfv9JeSYkJg2AN2cRR0LXgzbjSMv9OiNuArRvaWfP2ak6bVFnPXPh2E13JADW5zyJqx2
	b+26NZ+3UjMJSfkw1ckvbcttWW9xELXvuHR+ZWQI5oJcGtlNooqxkO0ULyy/TYTqTxzYKope0vk2G
	d0aILTwgX5Lg+tJ0H+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvSF-001qvk-UE; Wed, 09 Feb 2022 22:28:51 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvSC-001qtg-Da; Wed, 09 Feb 2022 22:28:50 +0000
Received: by mail-oi1-f181.google.com with SMTP id x193so4146154oix.0;
 Wed, 09 Feb 2022 14:28:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EwsIVdLEfVGoPBqdrgLhnimUnbXgmktMKOR1sSjl/NA=;
 b=40WjePfvwe0Nlq4R80PRwYCDRQOpDO9lVEo4NkBRbrDwYPs0YTi404Xaq/6L0nA+0H
 edQYu3gt/DAEUVnBDG1ADF89A5pjxu3fLHMnfFbTWumPJ+dLhIqdaSBHsOIWykjZTPMG
 ierbsLDW4//RckUPC86/NYYRCTOTu6eIJWPTlFSRuZIum38B8Nj8D3EXsG5qDw/ngHaE
 D9Uc6o/Qrv43ychYjT0q+qVguzszk69dR8nw5DGfJ8mFHH7lpiEQYl6X6idAP72DSxbY
 QOSruT03+vg1nTojjgEY6Kg+c6MDSUUvAFO6JvGZ3UPwk26nCgxGAI1ifOpo6jMMCPhc
 NFNg==
X-Gm-Message-State: AOAM532pw/Y/3YZpqTZ1ne3tDBgwJa94MPsROhS1wrL5dyV3iVyqFeEI
 Okr03/2T+JjlzPjspZx0dg==
X-Google-Smtp-Source: ABdhPJwXeEEP8ZHw42f+Arl2+dsKF/Kx5gEjZkyRcS4vl+YGewrTUiYb/gG6eyh0erPXu4cr1yLEiw==
X-Received: by 2002:a05:6808:1598:: with SMTP id
 t24mr2269183oiw.50.1644445727247; 
 Wed, 09 Feb 2022 14:28:47 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id y3sm7473612oix.41.2022.02.09.14.28.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:28:46 -0800 (PST)
Received: (nullmailer pid 1054786 invoked by uid 1000);
 Wed, 09 Feb 2022 22:28:45 -0000
Date: Wed, 9 Feb 2022 16:28:45 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH 3/8] dt-bindings: phy: samsung, mipi-video-phy: convert to
 dtschema
Message-ID: <YgRAHeOA5m+rd9qu@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-3-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_142848_475266_B4363DA5 
X-CRM114-Status: UNSURE (   9.52  )
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

On Sat, 29 Jan 2022 20:36:41 +0100, Krzysztof Kozlowski wrote:
> Convert the Samsung SoC MIPI CSIS/DSIM DPHY bindings to DT schema
> format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/phy/samsung,mipi-video-phy.yaml  | 113 ++++++++++++++++++
>  .../devicetree/bindings/phy/samsung-phy.txt   |  29 -----
>  2 files changed, 113 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
