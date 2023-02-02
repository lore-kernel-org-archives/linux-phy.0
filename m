Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F6FAC61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmJuQRmYqdk6DUncvgJGnixI30kxUb6bsHE7jU7vAwc=; b=FBCNr+fsSsgxBG
	lVYQIQblK83TxCBp7FOncFebqnUCuScCfZGb4D043awQFZbKVf83RgyG6iLcSzXz//NuUTWgGp6Fk
	HkLWF+1/ML6YBg05rZCCNFH00xEkQsDSmXPRQJSmNd5yH6sgdO5Cy1hoI20cUSb2kx5lElhaHMawz
	YFCHngg6tSQ12E75gy1+mh/Yejonn6YEfAisZplXHXNWGXaujX+OssyBQu2kO/bRNYozMXV1eqxJk
	bdvVxt2Z15FGzgaxT3C0htPxQ6klxbH72WpDSYpAHqbCwPzufqEY3eZbEUDl5hxCnla24Xvo00/EI
	z/CIkbk88keUNRmREwdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNiq6-00HOig-JY; Thu, 02 Feb 2023 23:17:58 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNiq4-00HOhn-2x
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 23:17:57 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-16346330067so4674984fac.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 15:17:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVyacUnj4NjLiVL2oCPB9AQvkGtTDBNOFK1fA2rLKDU=;
        b=dr7TAbIEC723PcXgBkZel0pzsokxUUUEKkjg/YsjWeQEvpu5AUboBltpHtR+BTtQXu
         wq8EIBW5lhW4TdECjsrEOl7aTNWVRb8H5KnQl+FtJVOeHZwnmH5ez5XIN6lFqHEr9016
         wA7V6lWJJx/Y50cDTIbimi+9ar+FSgxWrnFz/VJrZqzm7w1zSPhVNQ7pAHIewqxT52C4
         nFz3MQPMir+/w24jquDiqYTZl7nFwrHjvgvBT9E9PmCrEUFakCu9FJmpiORT7VzZVPZA
         2KxMQLD5qUlQEPWfMAETMH7qfAjMNReDgAGGQTQYfs0VakHF9EKNaiLItwkOdJ/AMtcU
         JMeQ==
X-Gm-Message-State: AO0yUKU5Uj6eo/O5IwNSdz2TdPDPYjVPmqI+d/Ht0JUMhl+bBN/usZmD
	Bt9/DPIScMLBhKph1k+pBw==
X-Google-Smtp-Source: AK7set+5wcoT1qxab/f2AP1SMTbR5SDSvDXU7lDMa//8ZCFDYo+A8FqhZNV20HeQ/1/J44IrMR7o2g==
X-Received: by 2002:a05:6870:ecac:b0:163:9eb8:43a7 with SMTP id eo44-20020a056870ecac00b001639eb843a7mr4431172oab.59.1675379874956;
        Thu, 02 Feb 2023 15:17:54 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h41-20020a056870172900b0014c8b5d54b2sm318501oae.20.2023.02.02.15.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 15:17:54 -0800 (PST)
Received: (nullmailer pid 2886780 invoked by uid 1000);
	Thu, 02 Feb 2023 23:17:53 -0000
Date: Thu, 2 Feb 2023 17:17:53 -0600
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Binghui Wang <wangbinghui@hisilicon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>, Carvalho Chehab <mchehab+huawei@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, Yu Chen <chenyu56@huawei.com>, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: hisilicon: Fix
 'hisilicon,eye-diagram-param' differing types
Message-ID: <167537987279.2886728.4247751754421507223.robh@kernel.org>
References: <20230125221444.3058631-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230125221444.3058631-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_151756_148443_B701200F 
X-CRM114-Status: UNSURE (   9.91  )
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


On Wed, 25 Jan 2023 16:14:43 -0600, Rob Herring wrote:
> 'hisilicon,eye-diagram-param' is also defined in
> hisilicon,phy-hi3670-pcie.yaml as a 'uint32-array'. Unify it to use
> 'uint32-array' everywhere.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml         | 3 ++-
>  .../devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml         | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

Applied, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
