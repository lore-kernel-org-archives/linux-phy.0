Return-Path: <SRS0=yge3=P7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2201FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 22:44:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E00ED60F4F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 22:44:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E00ED60F4F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhDcLi2u7erUqFp+rM2+Q7TIYNeulZlWlO5+nBX9wz0=; b=wRp1QtcOgpI+7m
	48ZdGLFITG7EV4uAFET8mbTgVJf3besR795QUxIxzxi1Myhoz78EPDNQmZMBuPO/lErPHe4P/kEB3
	XAjH4bhZZ54BoTTBgPICpcx8Keh4dPVSPRjzDOyr+y3z4juA39ncoGLhb/2P9B/P6qdCusFAELQtC
	MqiO0IxS05KqQMnzZfVHv/Tt2qPbgoM0e5fCRA1jooBstwD93JLBm6i4zdf5DUUbAqnooFlYZ0lB0
	QEuGLQbytlRMss6PsrpSiew9R2/h0zWaprPVBqYwhvO4HWPTgvCqLUlJgBppAEduXxwEk3SajZml3
	q7qhKmZBPuChYniBQDQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlfH9-00BmxA-9y; Fri, 12 Nov 2021 22:44:03 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlfFW-00BmHS-Om; Fri, 12 Nov 2021 22:42:24 +0000
Received: by mail-oi1-f180.google.com with SMTP id bf8so20576486oib.6;
 Fri, 12 Nov 2021 14:42:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cE5j89IV27G1+Hz1HGRqjfFvBhvHOIVY7ybB7XNim04=;
 b=enOvQyj1KokHsTVAbRkIvsmSJIyDiv58SL5QJw7IDvULOCvYVVKe7FgJ5XkCXSsgx3
 92TTVZ6qFgiUF7P+NlrDOEKIwfej+c+vQrTquqozCXmuIZXVZSNF8PEohPGsb8g7Ynki
 mbI/RxY2xgWebx18arIdx4O85tEbwbMVsBG8KHKlz+dlX5adxTBedvbYDRnwxGyk/H1g
 QS7ad3DSVnYUY545/32V00Mcf7HC+8r4SaWKKr73jCQ58EmrldfEy9E+RO1M8JTdqDch
 eTCmuZ6Y9oihm6VlKNo4KyNC3h4U0KlfVwv+frTPystK2Fk0Mal6YSAzFjr0fAOPGope
 EyYQ==
X-Gm-Message-State: AOAM530RqjNOKexU/WCTwRX+3YtP0mOQ97duNCCNTtzEL9NZvzLeckOq
 BXQ/APjINFW1VbgJ2R8q5YxFS1hcXQ==
X-Google-Smtp-Source: ABdhPJzzp9Z+nqh/yiMnZerIuh4tTuAS+BBJ9c80ZGtmguqyRwSZKkxg4y+MwV+sB+/Vq3z49RyBKQ==
X-Received: by 2002:a05:6808:220f:: with SMTP id
 bd15mr24005740oib.73.1636756942129; 
 Fri, 12 Nov 2021 14:42:22 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q63sm1567040oia.55.2021.11.12.14.42.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 14:42:21 -0800 (PST)
Received: (nullmailer pid 3509956 invoked by uid 1000);
 Fri, 12 Nov 2021 22:42:20 -0000
Date: Fri, 12 Nov 2021 16:42:20 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Yz Wu <yz.wu@mediatek.com>, Eddie Hung <eddie.hung@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: phy: mediatek: tphy: support software
 efuse load
Message-ID: <YY7tzF8Dpv/hne+u@robh.at.kernel.org>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
 <20211107075646.4366-4-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211107075646.4366-4-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_144222_850003_ED9CF3C5 
X-CRM114-Status: UNSURE (   9.44  )
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

On Sun, 07 Nov 2021 15:56:44 +0800, Chunfeng Yun wrote:
> Add optional property nvmem-cells and nvmem-cell-names to support
> software efuse load, this helps to fix the efuse bit shift issue
> on mt8195 etc.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  .../devicetree/bindings/phy/mediatek,tphy.yaml | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
