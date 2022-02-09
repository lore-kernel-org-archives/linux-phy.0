Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C3E4C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qds81s8vf+CxiGkBemdCIRx7r2q68QAm37NzlMaotE=; b=idlydrYazegN5e
	cWOHuUDH3KF2wNoWwg+QBxojJhh7LfXgAMFUvs/odJU5tovPjUeDsyhz236kTWrVh5KtcpbtFVtmB
	wlvLT0Cttw+Fj+RWGAZYeZyAqajfpnzRgY0bhwVurb9/pwyJsupdF983v5kJt2ZRM5DomaTj0ZDqq
	jCodZJhWEeaB0y0jvhdqnJze+pDG9HYoRj2EJS8DIhG4sjY3wYd5HNBXmz/A4ObxwoGHTDZUeyQ8s
	7hxW/Gnb2j3vV1MjWKkDeN7iyOBLoeLNJiEUNYHUAeOr69GAoEDEACnmLtQHEWdFyULQiQrW10fsX
	HaNkmU5PvGAKCJydrKZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvUC-001rkZ-0Y; Wed, 09 Feb 2022 22:30:52 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvTw-001rco-D8; Wed, 09 Feb 2022 22:30:38 +0000
Received: by mail-oi1-f176.google.com with SMTP id x193so4150784oix.0;
 Wed, 09 Feb 2022 14:30:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xtgernLkSkewJZUchZChhy/COp4zeAMKNzZo+56/du4=;
 b=I3y5N2oA3IvP8ILP/ONlz9uuATiu6BYAouL4Cy6UUdtsPgTywnJwi/DDt01fkKLcsA
 2SzvsDIWtBIeSn88tsp82rktliEVaX9JMzXK1mhyZukmAAjAsc3B7BNebk6MaXEVWiTS
 zNBmNZFg0fblXy2bWeTXdmAQUpNBi2rIDBFUqHwZpW2YFKHq6QbgbQrAL059CiFHf7UR
 8EHHOUdGNgDRa/1WO2nDKkRew6FwmP+RvSkBgxUTyD1HqBVK+KS4/fOQePsw3/xBZKne
 qEquqJPtdveD+jqyenkSZDH/f/1tmWTH8uF/HcRdp6pmwR0hVNFM4hpZYYPG1H8QzdAz
 WPaw==
X-Gm-Message-State: AOAM5328UogrLqcWrRz1QSjbRWqtVN0jJcJa0w0xzePm5gKTvD0wcfKV
 uNnblbc/JswnUTO8xFZhWQ==
X-Google-Smtp-Source: ABdhPJwOj3Wt+bxOBik7mwIlQJrNQJ5stTptsy5lWVZx2fKxa27UFpKlQuhz8ooAPqNilsmUKR5esQ==
X-Received: by 2002:a05:6808:f0d:: with SMTP id
 m13mr2057432oiw.9.1644445835172; 
 Wed, 09 Feb 2022 14:30:35 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x1sm7131493oto.38.2022.02.09.14.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:30:34 -0800 (PST)
Received: (nullmailer pid 1058111 invoked by uid 1000);
 Wed, 09 Feb 2022 22:30:33 -0000
Date: Wed, 9 Feb 2022 16:30:33 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 6/8] dt-bindings: phy: samsung,exynos5250-sata-phy:
 convert to dtschema
Message-ID: <YgRAif++EOuaIi+Z@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-6-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-6-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143036_471956_23F5BBA6 
X-CRM114-Status: UNSURE (   9.24  )
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

On Sat, 29 Jan 2022 20:36:44 +0100, Krzysztof Kozlowski wrote:
> Convert the Samsung Exynos5250 SoC SATA PHY bindings to DT schema
> format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../phy/samsung,exynos5250-sata-phy.yaml      | 64 +++++++++++++++++++
>  .../devicetree/bindings/phy/samsung-phy.txt   | 26 --------
>  2 files changed, 64 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos5250-sata-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
