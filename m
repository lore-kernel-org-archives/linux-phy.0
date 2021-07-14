Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28DBC12002
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:33:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62A68613CC
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:33:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62A68613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBWoq6m9G0eTrch6eNDmYpxaATrBchspuHmgIEhLndQ=; b=ahCK7TILO5n5ZN
	70vG8sQ0u4eF1xHZtstftQ3hmXh+01kVw0rSzBHCmN74kbTsw8ZrlzzLWs3iUPBL8lymS9wwtcX8j
	qlQt/5aYClRDDK0ftFOUL1Z7wIkP/Xcuof9h+ze6vrdMSJn74HpT1ChN0O52CBvRhkt8/KmIgE7uH
	VlL2BzDmvYHMyoMWHzf2EwAbXGChZkcX5pdjyExntntJf+UrFenCS6p+5lRjKej6yd1n/sd04ACzu
	JhbekLjooHtwTqAb6WkUJqHfCPpToMOOKgoT9VNX3ehDeHvk6s5Oq12tAePt6fZayz7emaZcG1QUo
	yjfokPlc/S7E3JZzq7PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3oO1-00GKOD-QS; Wed, 14 Jul 2021 23:33:53 +0000
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3lmi-00F8aO-E8
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 20:47:14 +0000
Received: by mail-il1-f182.google.com with SMTP id e2so2934307ilu.5
 for <linux-phy@lists.infradead.org>; Wed, 14 Jul 2021 13:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kco+/XxZYLDb1ihGt1/0DCCP9J4L9oldTTVHBfVd0KI=;
 b=ja0vY7E1nRmoZe98nLZfbPty7QeWnvOH9Maf1SNzUZTdz5GZemwl5ywBNLQoDb1N+k
 O/68qIgl4En1TXi+TL8kmhmRPCVF7Hj68NclVsv8RJv92hHnAtdQppG2f5V7ZxpsbI2r
 z6ZEHFjdtUHApfqiTmYk6xIzQMDaQErmqq3AClEp91lXhkHdjbm44eAEb76RU9AaHa02
 HpCT1v9uqWW1HXo7cqMGIhttOAaxeHQBqmkhb+pTYqnpEN9mPZtTNhDfCywiFenxTjFW
 G+HcUKthwLn7aFjsSjr+7TFwYrSMHGhjCrujA1R14CKc8AC4b/0x5ipJdn7cRyiJb+oJ
 U7mg==
X-Gm-Message-State: AOAM531wwchk5lUgHMuuPuu5U7GAK8RXj978QVhHsj3c682uswNu74IU
 Q/byibxEEfXlK6GB6cOyFQ==
X-Google-Smtp-Source: ABdhPJy9xASZGcOP/LI92DJsMDZVCmDOQGStFYEqHGuGiLCYT69R7undrrRAibu1aU/kGujw2Kr5mw==
X-Received: by 2002:a92:c888:: with SMTP id w8mr7701379ilo.140.1626295629874; 
 Wed, 14 Jul 2021 13:47:09 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id w8sm1701212ill.50.2021.07.14.13.47.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 13:47:09 -0700 (PDT)
Received: (nullmailer pid 3492671 invoked by uid 1000);
 Wed, 14 Jul 2021 20:47:07 -0000
Date: Wed, 14 Jul 2021 14:47:07 -0600
From: Rob Herring <robh@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: qcom,qusb2: document sm6115
 compatible
Message-ID: <20210714204707.GA3492616@robh.at.kernel.org>
References: <20210627185750.693222-1-iskren.chernev@gmail.com>
 <20210627185750.693222-3-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210627185750.693222-3-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_134712_520433_3E10A0F4 
X-CRM114-Status: UNSURE (   9.28  )
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

On Sun, 27 Jun 2021 21:57:49 +0300, Iskren Chernev wrote:
> This compatible string is for the HS USB PHY on sm4250/6115 platforms.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
