Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5512EF30954
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 12:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2+9gA3f16x07Zuv9zrTBKAsI+F4AJQtHKXp8Mi2HYM=; b=yqFAtQPMrJAi9Z
	IXwNzIH2Pj72SDX4Z18K09PBTkywEV5hD5qaPSqhm3cvHPSdYhvNVwtUeEs8DzqDGcrgVXrdoK5Pu
	/okdXeyofx/LQs41aP6l3ys28TBDLPiCX1N2tTWIaFFzRpDsIBGZkfe56Z8klHUD+R9MdG/1kXDHY
	HHpuVGPpzOrwTHglJ01wvYSj4+qqbmzl5xOFbadgKXoYqFn86+dGx45WqvK/yT/rK9+cWDFWmZLM9
	K5v1fK0cM/2E871iG00hy9S7JRYkdilchNnR94ehWmiua9bcovv8J6GNWYfKoVQx5XV2kTyE61htx
	7qoq8amsMnOJVd6Y8SdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cB-00000001k6T-2xQy;
	Thu, 05 Mar 2026 12:15:39 +0000
Received: from mail-pj1-f47.google.com ([209.85.216.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7c7-00000001k4k-2x8h
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 12:15:38 +0000
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3599019ae92so2353766a91.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 04:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772712934; x=1773317734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yS764krKV6WfB8kOxjvP29bXooB1nm1bNBDNiujlO4g=;
        b=PodAKltVZ54XNyeVRe8xLdZQQeUb/v5XA+gpB9lf4T/2Y5fCBQl0VvXCbl4aJCar5X
         ABD9I5Rga0ZTiciNizQ/lbuvOQOsxDkqyjG3MwX+bVX2ZSUmnnFYJnH8lnLnIVI7V3q5
         vremgjvuZwG50C1keboE5ZIGZDLje+yzyIBMMKyzGnlZF6M78s3aYMkdwffSmmiMpjUn
         6/w+TI+K81dBs+KlHyRh+cXYw2xAnPG0syrqYasH5zyC17cLgNQSV6vyvIR+WZjQ69iy
         SUy0pJWgviSFXS0ASWiQypT+HAg9XbQT3qMuFPsJ1+KyyNBn34Pw65WfPf5rSf3Np8Z6
         nX2w==
X-Forwarded-Encrypted: i=1; AJvYcCV3x5Jm29Nhfj38XsQhXPoWUw4K0ZDblRp6tlvuRj4mYF/Tze2veOlxxRgZWHnBdvKV71HZ7H5XVUw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+NthUk/OStwURBFmEoQJ8tfIz9PGZracC51thqKVysywLKb6T
	bVkdOBLRi7LMEZv5G2vYR8xY8614P6u7u6JTtS238/AUYtAo9/UeynWk
X-Gm-Gg: ATEYQzxuZDnEFJzkhsobRRK92QfPQ/391uFOjCU4ZmBlOrFf8I7se1hNB0jamTe5yX+
	GwhLI9LXIDwHkWVnGzROlAxtp81CyRSPTpxfWruTcJoYIAQq6LiLwMUU6Vh0QNAKNJbr6oZqXDS
	dNyNbVQcB1qFoGWyct/ifTRMHAUsrVrA8t9z2cOR5QjpKijODl38OAsjgLvNDBbSDYxgwjeQ6R3
	5QciF5nyJCcU5L/ApIPSOw3qfzJ+NMtGLx1o8Vm/hfsdc7ucmgk8vKVtaMMnXDiTWp1jJNEeHar
	cwlAcNxtdHFBZgPwKb+Ml3LcMDfC/OfVvMk8XFqp5LCtcxEKsi2PFkNN4BR7J/c+Xbp90aRM0iY
	mjiBRxI/pXrdYwpsLuzTNDgby5s1oEpcv/n7AEIXtpuXb6iO3yJ246UISdxNnvPMIe4FZuo+Aqf
	OT5xiEYW5qWaJu1fLqghNPwK1/aT+gAa599VPTPxuAb7dN7BkETOntiuuU/ZqxoAKFLF45nf7/R
	94EiC/CM8U5sATxaxVslQe+q6CLSvxj6SrQxv7bLmz4CnncSruUB9p20wVJ7A==
X-Received: by 2002:a17:90a:d44b:b0:34e:630c:616c with SMTP id 98e67ed59e1d1-359a6a92750mr4210979a91.31.1772712934483;
        Thu, 05 Mar 2026 04:15:34 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2c1daa6sm2391359a91.0.2026.03.05.04.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:15:33 -0800 (PST)
Date: Thu, 5 Mar 2026 21:15:32 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305121532.GA1649635@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305114352.2f7btqixg4tu5bzl@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_041535_733182_9005F987 
X-CRM114-Status: UNSURE (   4.74  )
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

Hello,

> K:	\b(?:__)?(?:devm_)?(?:of_)?phy_(?:create|destroy|provider_(?:un)?register)\b
> K:	\bphy_(?:create|remove)_lookup\b
> K:	\bphy_(?:get|set)?_drvdata\b
> K:	\b(?:devm_)?(?:of_)?phy_(?:optional_)?(?:get|put)(?:_by_index)?\b
> K:	\bphy_pm_runtime_(?:get|put)(?:_sync)?\b
> K:	\bphy_(?:init|exit|power_(?:on|off))\b
> K:	\bphy_|(?:get|set)_(?:mode(?:_ext)?|media|speed|bus_width|max_link_rate)\b
> K:	\bphy_(?:reset|configure|validate|calibrate)\b
> K:	\bphy_notify_(?:connect|disconnect|state)\b
> K:	(?:struct\s+)?phy(?:_ops|_attrs|_lookup|_provider)?\b
> K:	(?:linux/phy/phy\.h|phy-props\.h|phy-provider\.h)

What about

  F:	drivers/*/*phy*

or something along these lines.

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
