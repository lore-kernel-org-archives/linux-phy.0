Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E4EC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 22:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOXXzyoh6ddchaOAa/lMOZdvSwbwjZ/TSoTag7OhYd8=; b=DsipaS9uP3/qfA
	9IoteoJo9R1QmHLkd8QRQUBmGQN8UhWBDx9J6Wi1zn9NSZhaRS6crjT9AFHuGpjQBLQbZAUpaGNV0
	w21bDf4PW14scLBjXivssF3swf3FQaGWLYX35r2WWApkKu9H0/OpQJ3zklMBi4me9z7k30VEEsBam
	mSssCVIe6FWPaQAgFQa/vHXfsFli519rqvoxA+IJLHo9CXGBkvG2upUW9L/wWHuXejC/5wZKaSmrB
	d7Dy2UEVvenkU1Ey4xeMx+dQ6ouJWoo9fx32VNOAnRCQLUMCuWDVVsibgxKC1dTzWwOK9OP7Ep0ce
	xv7W2csomL/n9KXf0TVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvo1j-003vLe-Am; Fri, 10 Dec 2021 22:06:03 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvo1g-003vKc-Ky; Fri, 10 Dec 2021 22:06:01 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 w6-20020a9d77c6000000b0055e804fa524so11033884otl.3; 
 Fri, 10 Dec 2021 14:06:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z0ZIWpgf+ozqCXjjJqmBIsm6dGvp4HgfAzO7q4NuCw8=;
 b=gB0OhvK959QwqOaI2+7iF9skGO2X/oPShtPfuUGWINXttW2yCzX6mHZV9u0bkHiwQr
 a0m+Gq206HEdDlBx/u5N+L9WWFgBx19cqg10dfdDcDhl2JMIwOywuUp2gpuLk03Kkzx4
 i6UgZSVa55HFExjv3t7kwAdXyp76FeTvg28M4FpO5cwb4YaV4/58OtyiPrAcDEV76SXh
 rP18gH9mwgqFmm+gIH3enCQy1nhubcBHhb42S8rrpC2hR50hMJFQjm45WSgFKmUwBGAr
 7ticHRMPTKkUp/2jGhmka7ptzwg/0W6jay5ybjjIlb8YHgXNRNzVd+XNw1lOqRq+QxiL
 Z/og==
X-Gm-Message-State: AOAM532RSI7O1bcN+wKPXLegEcmnm5J8QruGnYkVYk2sR7E5UQzzErFx
 Jfff6+OrZ2Q/PAqkFOHC7w==
X-Google-Smtp-Source: ABdhPJzE1v5OmwDcvB5jsdLIarkvcrqvllmn9doaEKyiymwKfG7SjrwD4X03lykl1F1KBPo+plnVfg==
X-Received: by 2002:a9d:12c:: with SMTP id 41mr13206819otu.322.1639173960028; 
 Fri, 10 Dec 2021 14:06:00 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id y12sm1084779oiv.49.2021.12.10.14.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 14:05:59 -0800 (PST)
Received: (nullmailer pid 2010456 invoked by uid 1000);
 Fri, 10 Dec 2021 22:05:58 -0000
Date: Fri, 10 Dec 2021 16:05:58 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: yifeng.zhao@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kever.yang@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, linux-rockchip@lists.infradead.org, heiko@sntech.de,
 vkoul@kernel.org, robh+dt@kernel.org, kishon@ti.com, cl@rock-chips.com
Subject: Re: [RFC PATCH v4 2/4] dt-bindings: phy: rockchip: Add Naneng combo
 PHY bindings
Message-ID: <YbPPRu+KYRLFKOkD@robh.at.kernel.org>
References: <20211208185449.16763-1-jbx6244@gmail.com>
 <20211208185449.16763-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208185449.16763-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_140600_714845_204705F4 
X-CRM114-Status: GOOD (  10.28  )
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

On Wed, 08 Dec 2021 19:54:47 +0100, Johan Jonker wrote:
> From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> 
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V4:
>   restyle
>   remove some minItems
>   add more properties
>   remove reset-names
>   move #phy-cells
>   add rockchip,rk3568-pipe-grf
>   add rockchip,rk3568-pipe-phy-grf
> ---
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
