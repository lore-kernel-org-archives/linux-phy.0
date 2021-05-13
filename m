Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DCFC433ED
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 02:28:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5E07613FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 02:28:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5E07613FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u417iibaYFZ6jVM/b1j3+w8tZc1iWSG4DvL/2/jW8WY=; b=JYUeho1bK4HjcX37e/qny2RBc
	gVstVNYct2avgv/UfAe/MBJTdw9SdnVfPulni7tiV/y92ntffa2yDf19OHiuFZdbxNbfRDrDJrSui
	7VqH3SLRiCbGby/zADwgL5yf89RpNlOTbWXNC6klHDhvAgw2vNVeWFEFQvCY0uIH3DoRP1OeT/zeR
	LIVHeDQCAzIKR7TmVuyLU1g5CQFHEOJhvz0iFrRnJnckqvTcHeqWEF8ZjoRBv//HjKJho69PpliDx
	5GiIDbCI8hbBKJMfjt5itWPlE1oaLNJoKnNAkfbam65Jlw3DV27p9ddq+xXc6WzqwMIw4VTSAdJow
	MseRyCQiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh15T-004VZv-Sg; Thu, 13 May 2021 02:28:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh15D-004VVb-0O; Thu, 13 May 2021 02:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WM3wqjbZ0uWUsYgTc6vUqFiP5RXGtVRH28XdkWq9dp0=; b=Hftvhd2pkql5OhiFj5yPX19RYK
 pBHPojtobdiUeNeF1MWqoKo4CGsMiwsOngSEKcX8HqFeihm0Kn52klAttJm2iTxYtlunmf9hexEd9
 i/YOZti8yCZvjFNoj6O3wrFWqPV83yFDLeeBZEm8xjjZ9vTT70zCDVd+hBysZnzB3xMpPCdENL4E8
 lTusDAHwMbl7Rr109bQPwCKg9CtuDZXsEmtYXnEkZH7/8jTDqF4UPaRq487Y9Dh3y27kY0D+FThiS
 3gR38+4h+LvYUK2Qn+yNCBX5qPNGYD33zYJVUI487H5ZCtH2AXfy/dSLfGubM4r6GJwy9rmXQ3P6m
 mhtXEUYw==;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh15A-00AyJM-IB; Thu, 13 May 2021 02:28:13 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso22432549otb.13; 
 Wed, 12 May 2021 19:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WM3wqjbZ0uWUsYgTc6vUqFiP5RXGtVRH28XdkWq9dp0=;
 b=hucTqDMQ+gvejdheAYF1m4kqY0Y0OaFYwNGg24w/TPHylcGAK1gWDRNlFi2YZcao2w
 vGLLiVi8eSAUWcNcbQxAQiEe9NfMZ1vOpSRak0o44tYLZIm4R59ViAdtT4Vj3xxg9ojZ
 sYpchlEdEZZ5SLVX9iQ9ZU3m74IQelNnBAjzqoSC8H/SVar4f/IMxK9kgpgWwX/sos5+
 rJ8UEtGYyPKE5zEtWkU7aDpMvFcShiwhHnVUBjI6LVdHBVfj2l/nnl67/4ix8mOkChz7
 /KnS/oWueKWp8H24EWb113Z8irWwe1ydN/FcSLdQdtPODi1VSEMLJrss+k+M+neApC0c
 k2sg==
X-Gm-Message-State: AOAM530zCIczVxkxk8CdLSEiRDGOghyYuCM5xOE/QJCj+UHMe8T8vBfT
 TuaR+ywdEjSVOaGoRrPWnA==
X-Google-Smtp-Source: ABdhPJzDrlevnOEgIPO65TeRK+k0GXi9QHGUAlJ5o92znRn3uqMrp3SjO26UMzEtCS+trS7DZGXSsg==
X-Received: by 2002:a9d:1ac:: with SMTP id e41mr33575541ote.166.1620872891436; 
 Wed, 12 May 2021 19:28:11 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h9sm386817otn.56.2021.05.12.19.28.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 May 2021 19:28:10 -0700 (PDT)
Received: (nullmailer pid 908108 invoked by uid 1000);
 Thu, 13 May 2021 02:28:09 -0000
Date: Wed, 12 May 2021 21:28:09 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: kishon@ti.com, vkoul@kernel.org, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, jay.xu@rock-chips.com, heiko@sntech.de,
 david.wu@rock-chips.com, linus.walleij@linaro.org, zhangqing@rock-chips.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
Message-ID: <20210513022809.GA907945@robh.at.kernel.org>
References: <20210512122346.9463-1-jbx6244@gmail.com>
 <20210512122346.9463-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512122346.9463-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_192812_622901_7325B479 
X-CRM114-Status: GOOD (  11.66  )
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

On Wed, 12 May 2021 14:23:44 +0200, Johan Jonker wrote:
> Current dts files with 'grf' nodes are manually verified.
> In order to automate this process grf.txt has to be
> converted to YAML.
> 
> Most compatibility strings are in use with "simple-mfd" added.
> 
> Changed compatibles:
> "rockchip,rk3066-grf", "syscon", "simple-mfd"
> "rockchip,rk3188-grf", "syscon", "simple-mfd"
> 
> Add description already in use:
> "rockchip,rv1108-pmugrf", "syscon"
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V5:
>   changed compatibles for rk3066/rk3188
>   add rockchip-usb-phy.yaml
> 
> Changed V4:
>   revert separate schemas for each 'if' subset
>   add additionalProperties
>   move properties to top level
> 
> Changed V3:
>   remove select
>   change unevaluatedProperties
>   add separate schemas for each 'if' subset
> 
> Changed V2:
>   add rockchip,rk3328-grf-gpio.yaml
>   rename grf-gpio nodename
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 260 +++++++++++++++++++++
>  2 files changed, 260 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
