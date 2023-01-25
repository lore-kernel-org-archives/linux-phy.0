Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6B69C54E94
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 19:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQndUpz0VVwadP9eiDQiJtsHe4unvzYUpV41rGbRI9A=; b=n3temIRXQ6+UoT
	fdhhDytJOGBCQxZuU/pXuw8FsHbLyDese4u/CUusG8NlS2TPrkBsPTPKN63oPIMpXhZWJLx1ms6Z+
	KCCWQnIHNeTPhLIwHAmUP36yjUdaT4dHVDfdY3KI6iLKZ9UawdQ6Oz5IoTtROBnnbO1VtAlw06VCT
	nGjJ+SckLroeDDLNmPtv6zJeIH1BpF5SvC0Guyvn/jaNyu/Ft7Szn7F1TCQyd7938N8c6PlRcZu0d
	2monJ7hEDICzcxds/fgBhUiUGawiapbpg3hyxeFX++xjalpkLtnPyBL7FyaIT9nFLPa3/qSLj0FEC
	iJQpag7KQW+pyY1ebSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKluv-008WYf-1b; Wed, 25 Jan 2023 19:58:45 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKlus-008WXB-38; Wed, 25 Jan 2023 19:58:43 +0000
Received: by mail-ot1-f53.google.com with SMTP id a1-20020a056830008100b006864df3b1f8so11775475oto.3;
        Wed, 25 Jan 2023 11:58:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2okyASH/JCrvQKLi2NuQ+QA06bfjxbFJqRj6dFE5tQM=;
        b=sLFxBO3bGXmU0uXId83qdrXIC5GbavWmMgGOyfu/8d4XuLlJvu5doZiAbv395eXfKt
         R6dnWX5YQXbYJkPaS3nE5ZBmQ562urBbSulzRwT0VrO7zgCr/pJ+aRxjqTl5JAEh1p+J
         Pj183b4gnN5DMSgv5HYDLfjt09li4aQLub1Q8auFbYTpEzh6b33rkkjVe/X7CMhtqtUt
         Um86y4yq8wNx+u/g4KxpPcHXZvi9r/bQo3lgriGmlLyudlOZmluIt1nTpZFtPku3XGIZ
         VeYDDq4UfDbRKcxZZjxCjCoiJGAvPwBp/0tZLyiyaPQta7Ph0lZmHXspQLUnkwL9uJVV
         /jww==
X-Gm-Message-State: AO0yUKWs0hcmyCfCPRHoqP9PPyz+XGeidbBl2NVufFMlH5oGndh07V8R
	vVw5ShtYl43biQyDJYi3tQ==
X-Google-Smtp-Source: AK7set9d1LiSdqBsy5DLQ2ic1F6Uy2cyrnOE/ZpKtoJx+XfCn0Ca8jvBCpbuk+lmAZEFdBwjVA88DA==
X-Received: by 2002:a05:6830:3487:b0:688:4c3c:71a3 with SMTP id c7-20020a056830348700b006884c3c71a3mr2890062otu.30.1674676717739;
        Wed, 25 Jan 2023 11:58:37 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g1-20020a9d5f81000000b0068687c98725sm2540366oti.62.2023.01.25.11.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 11:58:37 -0800 (PST)
Received: (nullmailer pid 2755057 invoked by uid 1000);
	Wed, 25 Jan 2023 19:58:36 -0000
Date: Wed, 25 Jan 2023 13:58:36 -0600
From: Rob Herring <robh@kernel.org>
To: rashmi.a@intel.com
Cc: mgross@linux.intel.com, linux-kernel@vger.kernel.org, nandhini.srikandan@intel.com, vkoul@kernel.org, adrian.hunter@intel.com, linux-phy@lists.infradead.org, kenchappa.demakkanavar@intel.com, furong.zhou@intel.com, mallikarjunappa.sangannavar@intel.com, vasavi.v.itha@intel.com, robh+dt@kernel.org, kishon@ti.com, andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, devicetree@vger.kernel.org, mahesh.r.vaidya@intel.com, michal.simek@xilinx.com, kris.pan@linux.intel.com
Subject: Re: [PATCH v1 4/4] Revert "dt-bindings: phy: intel: Add Thunder Bay
 eMMC PHY bindings"
Message-ID: <167467671590.2755018.3180084098513210344.robh@kernel.org>
References: <20230124054427.28808-1-rashmi.a@intel.com>
 <20230124054427.28808-4-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230124054427.28808-4-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_115842_148929_AD364846 
X-CRM114-Status: UNSURE (   9.90  )
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


On Tue, 24 Jan 2023 11:14:27 +0530, rashmi.a@intel.com wrote:
> From: "A, Rashmi" <rashmi.a@intel.com>
> 
> This reverts commit efb6935dd786a9d213ee542ed77d47ece700357c.
> 
> Revert Thunder Bay specific code as the product got cancelled
> and there are no end customers.
> 
> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>
> ---
>  .../phy/intel,phy-thunderbay-emmc.yaml        | 45 -------------------
>  MAINTAINERS                                   |  7 ---
>  2 files changed, 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
