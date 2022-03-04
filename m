Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C0B3C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  4 Mar 2022 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQxEUb3hLO+U3R60ybyaO9UcVZ1nfmXFkoStjT1wSBg=; b=iSzf0IxAv3iUml
	uvwWpvR3sCzvuE212U3oF8qP0XNjnKnUhEsmbNiH4pGA2pXiAR3Db/iJYmvXgYzKK5tpF3lnGNYbI
	9wgZSlSe1gsK9DnPyjdbYQIESR/VG6RqrZ4eoEjJVnqJm4bddRfQthVBZwBeKyzXNG3d46xxz54au
	ngUYRd+aljaf6ry2h7nn4j5TGEOO9pZIkIOFCSxqY/KAWD6XScvBfgBqOMgmdHeZD9XD4H6zUC9ij
	MkPpd6+7SktWHfokPEAaVFuJNXsX+oUXU9V38xka0nAtisUf0awI97kmEkRG7ZDxmgonsM8TFQ1ea
	3EwnqXtABoWJKlvdZNuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQHoN-00CPu2-RU; Fri, 04 Mar 2022 23:58:15 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQHoL-00CPtZ-0V
 for linux-phy@lists.infradead.org; Fri, 04 Mar 2022 23:58:14 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 l21-20020a056830239500b005afd2a7eaa2so8641874ots.9
 for <linux-phy@lists.infradead.org>; Fri, 04 Mar 2022 15:58:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7shUq9I7yQHeTKVfNDbhhFsZTM4LwR3N2qzKXb2oavk=;
 b=DwqcNu7EC3HhmNmcu356SOHHstm38Dq2URABWd1D/3YQvIjYBL/+Aswm1HLIcaiEo6
 IE65lQpM5bArjyvqjETE2GVHmtK8CC0UzpXQX5ITX0c3FexdDJHTlW4/E7nKB8wkTg83
 8BhNZqABuaqAf5VkRmzW8IiKUN9deN3i3BIyYb2/11ZhvUrYjYTuLD32jAjUdCLJvg6I
 8ygwhpvbJWHqhKDDifp1ohtaRu4MrAfwcxwLLfVHdosgAxDhC9bLKtV3Ef6Nd5gRrFmw
 kMk7Qo7MmGqFSNbtOp19vdHLVeDq5PiUHDfokDimoukZl1+XEsFheA2LWWszT9uaDPeT
 ft0A==
X-Gm-Message-State: AOAM530Ny3iVLFu1FaP7dihuPuw5OJAjkfhXFZQtWYMUEXd/lFPtpO7E
 Zk7u7Alj4O4asONTGNwgo7F+2Z6lYg==
X-Google-Smtp-Source: ABdhPJyOOqMhAb+ZDmCDWzK00jEJxcGH/1VqZn9ZHYoe8kQbOMrKk0nAZxp56TsJX92XoIcF2xOspQ==
X-Received: by 2002:a05:6830:1393:b0:5af:8b50:2e15 with SMTP id
 d19-20020a056830139300b005af8b502e15mr509919otq.168.1646438292162; 
 Fri, 04 Mar 2022 15:58:12 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 l10-20020a9d708a000000b005af3e65ce95sm2835589otj.70.2022.03.04.15.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 15:58:11 -0800 (PST)
Received: (nullmailer pid 720286 invoked by uid 1000);
 Fri, 04 Mar 2022 23:58:10 -0000
Date: Fri, 4 Mar 2022 17:58:10 -0600
From: Rob Herring <robh@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: robh+dt@kernel.org, linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
 shawn.guo@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, agross@kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Message-ID: <YiKnkg2gXnWFq/W9@robh.at.kernel.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_155813_095115_2484BBB2 
X-CRM114-Status: GOOD (  11.81  )
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

On Mon, 28 Feb 2022 18:00:13 +0530, Bhupesh Sharma wrote:
> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.
> 
> This fixes the following '$ make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
