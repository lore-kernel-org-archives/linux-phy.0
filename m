Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9567C54EE9
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 21:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qbf2grR/p83bxzTRJpcr1VQ8YLgjkKUTlWaP6kYPeuU=; b=l3H5nD7J0uI1/2
	RD3KoR6MVDISgsnMxAmIhtDfKGQbs0g/xXCrWORhWA505+PnEYXV5Cmgu8beIMsFs61oKkxZ4PXPr
	p8VIotY260wRohR2paHyUKjtOYuJ/3VzoAgUFKNJI/cagpcDBYQJH4W7LvX25AvStcbbk/7S9bSU/
	oiSELOArSgK34m2SgbvP4aIg3EHmHdIvome7FBvL9lPOSZrakL534wr8aMemF8sogXFXwYjiYm2m3
	KmO90C5nIkYldXmLzcMBda9IfK6yrgqa7TyDVFmR8cfgSR5u17NtlMnhItlzSARAaxch3hZNe2wEf
	5OOmlzye0e5qpyReRaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2DC-009tIM-3e; Wed, 07 Sep 2022 21:03:54 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2D8-009t2a-Ps
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 21:03:51 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-127f5411b9cso7783513fac.4
        for <linux-phy@lists.infradead.org>; Wed, 07 Sep 2022 14:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=EZ9HUgSqvyNc/+TpiOeV2TgoBH0eafNx+Qz6byNR00Q=;
        b=ibWPnSdMkrnpHRRGI0W7yU/ukTasFDMuRDGgAVFvTRg04KqYuTeFSur6tYOfdB77Oz
         EWyYWMpDsli9kQYupCQotgyUXqY7Gt1b9i+o+SiatHh4FL7w/qOvX6LFhttX2fe8zRZ4
         RNjjxbabiFgLeQvExbF/lkfe+S+xf1n4v5VVT84e0OeJ3W226snyca8Z+8kv9k5lwVUc
         BExnnPR+mFcSOM8+nks5VVqdBZ2b0GPZUNDNT96fqlzRhHk5avey74U98BFfUD/XGFbe
         TvMRPfb5LnOr12lS62AwVhyMXL9aRvpLi2vs5bkHcTs4ZDyaj/QeidcOgAmIWBRD4iIF
         vCIg==
X-Gm-Message-State: ACgBeo3QrdmgPjQnGwLz7PTq+G63HhlcF5sNJDr64KBpEt1AjgS/IEHk
	7rjVzcclg8pRuJ3wShRteA==
X-Google-Smtp-Source: AA6agR4rooqn7kfNEBlElGIRJEZFX1hZK2LfGqQwHU4505TZ2naJ3R3GcWRUN3L1te1UQPxaHUaY3Q==
X-Received: by 2002:a05:6870:45a1:b0:10b:8ee3:b3bd with SMTP id y33-20020a05687045a100b0010b8ee3b3bdmr172442oao.9.1662584625672;
        Wed, 07 Sep 2022 14:03:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n189-20020aca59c6000000b003430d6696e8sm6912227oib.8.2022.09.07.14.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 14:03:45 -0700 (PDT)
Received: (nullmailer pid 342051 invoked by uid 1000);
	Wed, 07 Sep 2022 21:03:42 -0000
Date: Wed, 7 Sep 2022 16:03:42 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Kishon Vijay Abraham I <kishon@ti.com>, Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb: add missing
 power-domains property
Message-ID: <20220907210342.GA342002-robh@kernel.org>
References: <20220902080705.12050-1-johan+linaro@kernel.org>
 <20220902080705.12050-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902080705.12050-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_140350_859483_03201B9C 
X-CRM114-Status: UNSURE (   9.64  )
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

On Fri, 02 Sep 2022 10:07:04 +0200, Johan Hovold wrote:
> At least the "sc8280xp-qmp-usb3-uni-phy" binding requires a power domain
> to be specified.
> 
> Fixes: aa27597e594c ("dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-usb-phy.yaml   | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
