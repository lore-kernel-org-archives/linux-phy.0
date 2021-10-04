Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F09C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:41:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 697506139E
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:41:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 697506139E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytM2zHGWQlY9UyW0O9T4GWQ6dAFwrJODVG4lsleIofY=; b=Bfa+0SGFYePIup
	hVWqJ7uvdsVgpM4hoqn3jqEk4yVf0swezz2tSulppQtlj46ufXI/AW1Oogw13lRcRThtTU+VVEh//
	taW4h1viTmISTi3Pb6QJX9nFUhIpi+35eSo2zfQxE6sl9jVDPYMG1dOgE6H2Z54+/ZsLTn+Lffn5y
	R5SG177+ic6h2fAjb3eJ9+wd/g4UR7CnHsV5UVhfluJTZs70jz1DyGgHO9L36nXcUGgC5IxKdV8GW
	8fK3He3zb9zAnnI7XwWxvM0aZPnZ+ckkIGSBOOivq19wmVBGd6v4OzLvmyLJQm1O+N24rTk4GEaL5
	yeTHwNKMssTLA2t3Vk7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXSuF-007jwm-02; Mon, 04 Oct 2021 18:41:43 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXSuC-007jvb-Hw
 for linux-phy@lists.infradead.org; Mon, 04 Oct 2021 18:41:41 +0000
Received: by mail-oi1-f181.google.com with SMTP id n64so22917984oih.2
 for <linux-phy@lists.infradead.org>; Mon, 04 Oct 2021 11:41:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OaxfJ9WeAacJextF1LUh1UTApymtb9KWZSq5ZSpqAg4=;
 b=AQoYXjxU54YCdBNzVjGxJKM0m3mO44RyCnwEl5lpwuzvPLn1O/8tbOmKDv9y+hbdJq
 pcpvgcoaHyni97OjCXhLu1QqaBgdj5TbUPvXOWYYbCPZ4anHrxv7LeG9ZGlFMj76m/c1
 aVJcSZS3IcvM2+BFbwTWAZp41PTtVL8EA5d6NvWkXyFxFNypAeJ2lRQU9Rmn3iHNgS8d
 FLQmtAwaBbc3oKJ92w5tYOJALC+eWG6hbxZB5IO0iXWDOFc/OaSJFA/KYe5gSojW+Yz/
 6ycJCj7b78PJBeN5+2zIrVvwIKhBffrlaZZH50Fdyhmcy5GzaBX/Szv3z4O3fWSmukY4
 PXKw==
X-Gm-Message-State: AOAM530YJyJ5g7/oooV5IYNVnLGHb6Cts82CPk8pxrWVMTfJ7wml1PtR
 YGwy/2S4WR2qJhfMJExuig==
X-Google-Smtp-Source: ABdhPJxV6Ig+R8bck/wFPmkReq6uPg8Rc4tS3uq37MxmXoYN5t8+xVwGyHX6IyZYrcCBP3Jth6LTbg==
X-Received: by 2002:aca:39c4:: with SMTP id g187mr14997691oia.44.1633372898951; 
 Mon, 04 Oct 2021 11:41:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q20sm2987004ooc.29.2021.10.04.11.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 11:41:38 -0700 (PDT)
Received: (nullmailer pid 1633173 invoked by uid 1000);
 Mon, 04 Oct 2021 18:41:37 -0000
Date: Mon, 4 Oct 2021 13:41:37 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 01/10] dt-bindings: phy: qcom,qmp: '#clock-cells' is not
 required for parent node
Message-ID: <YVtK4QsIrao/hGTq@robh.at.kernel.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929034253.24570-2-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_114140_624697_4A7503B5 
X-CRM114-Status: UNSURE (   7.86  )
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

On Wed, 29 Sep 2021 11:42:44 +0800, Shawn Guo wrote:
> '#clock-cells' is not required for parent qmp-phy node but the child
> phy/lane node.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 5 -----
>  1 file changed, 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
