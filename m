Return-Path: <SRS0=z2Tz=MV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 010CEC4320E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 20:01:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C475360F48
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 20:01:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C475360F48
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWAzc2w2UwNMqHQmGl113NQhzQsyPWjY6d/PCFrUFJo=; b=zO4ZgnDKkLt8cE
	LhDO9pSAN1X9VaDu71EZflUgzvw31qydfNtwE0AjcoGKYhXyJ8lu9ISi5Oz2YeMblBPdTEKWs5JzF
	jz9E43D2VWLlEczULbJtBctHWzdY/KgXk3uiur4eWFAfRcff0irS6fcwLVcqTJAohdSfsVLREGm0W
	5BCJmylZfZpot4GpcLmHJZvf/leMgMzXOQFd/jOdt7vWDWgjoR0oYBLKOfetey1VFxG+0sZP8gTFG
	04Za01oDpYbLlLUampeyIxyjImnutQKsU5CKGA5Qh5eIPsrOwwnpI9QrtQTtlKFZH/wJBXT56qiUX
	NOHiy3NrvV9xf7+Y5zug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9CDe-005kh1-9z; Thu, 29 Jul 2021 20:01:26 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9CDb-005kef-P3
 for linux-phy@lists.infradead.org; Thu, 29 Jul 2021 20:01:25 +0000
Received: by mail-io1-f42.google.com with SMTP id 185so8655426iou.10
 for <linux-phy@lists.infradead.org>; Thu, 29 Jul 2021 13:01:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9mXRgqEkwH5IzmZQcUUqmh41kQujKR1NIPDWZ2+NcSs=;
 b=ZlcYwJ1XDmo+TvusoFLZ8vbAA9btbIOE4JSKQFoiJzcZ4VfiqwkkuK2ktHeAE9j8IL
 PgavWV5MeB1c/4D0fdqb1/MJP6kigaluvQ0J7h4aaCz4NHS5UfPPQhwpBpbCdYhJ4Yzg
 QvhW1QK5JZORrkFvb0H5vT5NxUa29stMfidD6Is4QOeTAQrT+eclmFX1k8Aa+gR3Xw+I
 XLKR/s61qT2wa6H9pOCqcUHZVu+B8E9twrvEnGJ17HToy9rTGV2Bh2quofM0BJqVbKwO
 b7HJBfffjNx3GAtNPi5sDnVA/8h2yGVqj1oME+wmtlkGf72jRqIQT3HQdNMnwkTIYO6c
 TLRg==
X-Gm-Message-State: AOAM531SEZIkO1RuL51LE0xtemPbBdx8iLQ0M6kXya+c+B7+OllBiUBc
 VM/vDG2mgHfsgH1wJd2zPQ==
X-Google-Smtp-Source: ABdhPJw/RZBnQQMmMvZA/bx5FDeEPnpYyYC0b/N21ZlzG3TSnS5qzaO6XZ09g3XkhqWfmvPwhEH6ZQ==
X-Received: by 2002:a02:c94c:: with SMTP id u12mr3553879jao.54.1627588883194; 
 Thu, 29 Jul 2021 13:01:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id c8sm279693ioa.51.2021.07.29.13.01.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 13:01:22 -0700 (PDT)
Received: (nullmailer pid 787218 invoked by uid 1000);
 Thu, 29 Jul 2021 20:01:21 -0000
Date: Thu, 29 Jul 2021 14:01:21 -0600
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Manu Gautam <mgautam@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb3-dp: Add support for
 sc8180x
Message-ID: <YQMJEZFEp/Ms77BS@robh.at.kernel.org>
References: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_130123_872332_C674F7CC 
X-CRM114-Status: GOOD (  10.33  )
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

On Wed, 21 Jul 2021 15:56:29 -0700, Bjorn Andersson wrote:
> The SC8180x has two instances of the QMP USB/DP combo PHYs, add a
> compatible for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
