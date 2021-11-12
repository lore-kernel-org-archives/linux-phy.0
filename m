Return-Path: <SRS0=yge3=P7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0A9C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 20:20:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F178610E6
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 20:20:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1F178610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mt5dve7oL8XJ+sSPoxizRWTnYoUaOT8TVU0z9JW/N0Q=; b=bmZqLcWf/QZ7Nx
	H0hM16nZSWL4wxReLPVCA/sx/ni45xwQdjUKc+XRC0U5A1E9drHKEt2v2MInGvIYC3/bZOhNcb2ZL
	qd57wuLu6rZCw816l4Rw2EhMXs+PjT/sJ+Jr9RsQxSnKarxzANj5T1Ixc3BQpYPA07cfnZA1F+zgN
	EAGU3rcHDp65DcH+b/233i/psTWsP+Uows7nlYiUcGd01aP0wY3CmjM6OuI+ZxVBMrnMF5X3Akq3X
	8TGR5T9hoUmvmdQdEf86p48rEvwG7MbRFiNa3AuiE99lCi9sspQpfYzjQf1R8ivs6lZrDm6HOLEbh
	BVRI1lg7/rgoMzQZc4Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mld2V-00BXHj-M7; Fri, 12 Nov 2021 20:20:47 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mld2T-00BXGv-36
 for linux-phy@lists.infradead.org; Fri, 12 Nov 2021 20:20:46 +0000
Received: by mail-oi1-f173.google.com with SMTP id u74so19981297oie.8
 for <linux-phy@lists.infradead.org>; Fri, 12 Nov 2021 12:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FHAHvJXqc7YauDRk++zPCE6QbPKdD9mhBY/GUlSuKMg=;
 b=JSrPKdyjLfqtLc2FTkFbXuLVnVTCvCiRBHGSaihAUCoScVOBBWYpMn4DqvGSzjRNG8
 K1DnRX7H/1McR5QALuUzmGvbGJQJvJ2XEtGcCaVoETB2iqucDqdK8kEiFZSfhkimUbDU
 SqBYjXDA4AtLyfGimXkjRnuqCu3qCrpVdWUHxzI2lLe7Kkyr+J8ASj4Nm91s8uyB1DNz
 CmDg90IaPmcQKsFOzBk7XynzbzC3q5JxY8mJeFs1nlQijy4dpCqZa0pX97pLKX7Jxvkh
 SfDNMg6fxi2z4G6vN800Ak+c7OUFkinwnxtINREab45XSAIchBJi5sY8vp3pSSTblQ4o
 /sgw==
X-Gm-Message-State: AOAM5308CqAbNLc0TY1Hwe5huM7Lg/64V508WFl+FTtFxzfnqNRN8aRH
 OfbO1PSFPIGpRLzFDPbr+g==
X-Google-Smtp-Source: ABdhPJyKDKafvtu7MZSwgxcSVR4oHySF5h93fYSAI2sePzUnLJDed0Q+bHOoaUdHzhwsjSk81ioqrQ==
X-Received: by 2002:a05:6808:1283:: with SMTP id
 a3mr6753537oiw.110.1636748442189; 
 Fri, 12 Nov 2021 12:20:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id r5sm1536856oiw.20.2021.11.12.12.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 12:20:41 -0800 (PST)
Received: (nullmailer pid 3302639 invoked by uid 1000);
 Fri, 12 Nov 2021 20:20:40 -0000
Date: Fri, 12 Nov 2021 14:20:40 -0600
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Introduce Qualcomm eDP PHY
 binding
Message-ID: <YY7MmEj0xi3Er4z3@robh.at.kernel.org>
References: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_122045_154317_996D520D 
X-CRM114-Status: GOOD (  10.30  )
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

On Wed, 03 Nov 2021 16:44:09 -0700, Bjorn Andersson wrote:
> Introduce a binding for the eDP PHY hardware block found in several
> different Qualcomm platforms.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v3:
> - Dropped DP compatible from the binding
> 
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
