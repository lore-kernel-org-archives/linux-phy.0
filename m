Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D76D1CCA481
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 14:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDZFHCxsF6EsENqtIwPCUpOSxf7DOqtyQk/quCU0TjU=; b=1lIyXYggbu8Kvw
	XnXWYESIvtobAYrMfqtMiQJatS7oejK98qLjbo3RD+MKnRPf8k2Kp5d3Y3Su7J4QYECiu0UWNvywH
	SpwRgOnY/m4gIFbE2IgMhJfTjc9ZdmdrmCV1WLd4pZhU71WSD+CxyuBWeyP8AhZ6PS8+7QGsYRqH4
	tx5wJiY8jrMyrjO0uJ6NZEtaRiF8kNV7Tj+Ng4PpehTOXOQ7sJquPoOUYWi5MAxnEGd8KMhBKcynJ
	NNcorAIdSK76+aCUZAZPfmmHPx8Z2u0qfpK/1GLRhDycFT3nazAYUo5KkGlVit2VGKnvXBk8Uw3QJ
	FyuaWy7QrQy2eoNi7fbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxqyS-00Ed6c-5y; Sun, 05 Jun 2022 14:11:24 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxqyP-00Ed5z-Oc
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 14:11:23 +0000
Received: by mail-ot1-f49.google.com with SMTP id f9-20020a9d2c09000000b0060bf1fa91f4so1819322otb.2
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 07:11:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lRUkT7BBPd5Yv/h/LdvT5NyszL+3WGewd+yFszXzh9k=;
        b=Qv5Xt56fHVFcj0WLzQPXFEFtfzbS3bMBCb/Zx+IbtefOu32BwQWWhVLEHpTxsnw23R
         HB0DEC9yhTYtiQ+oiFBgvYk4OJXyqB8YyPmoGTEhH7mV9zcNjJyUj6RksnPqHVDsw7Qq
         8TaQuqX2t2n1HbDLzZ386Pr6onk7WGH2eDEiOI8xABYNzAA0FUP6Jr91Znz677ofv7Us
         h2+ZqpnTx/QekKQOHGnDMHC5Z3myXZnlmdlSKSvPyl4HBVHrQFWmYF1k7xSf9zFHZbyL
         6Nz6IkE4pKQ7eTjKRD4zs17ji6/ZEdIi9sH3rLHslhrdKUgjNz71sS2ftY/elfGiTsLQ
         RzJg==
X-Gm-Message-State: AOAM530vR24xcZAfL93j1rSNDMPf3ClJCVbgjn1zUEFXTpafrSQbKWL/
	kjphahWQbugcj3Xuqkmsow==
X-Google-Smtp-Source: ABdhPJxDMU8i9Ium0iUSU/vLQ9CqODm5zQ+T3J+ZXKkezF+RKwzIdX+2nPuZ+8fXGd8RvFrrPwupbg==
X-Received: by 2002:a9d:665a:0:b0:60b:a921:e7f6 with SMTP id q26-20020a9d665a000000b0060ba921e7f6mr7928660otm.42.1654438280216;
        Sun, 05 Jun 2022 07:11:20 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.99.0])
        by smtp.gmail.com with ESMTPSA id x25-20020a9d4599000000b0060603221258sm6662176ote.40.2022.06.05.07.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 07:11:19 -0700 (PDT)
Received: (nullmailer pid 3425881 invoked by uid 1000);
	Sun, 05 Jun 2022 14:11:12 -0000
Date: Sun, 5 Jun 2022 09:11:12 -0500
From: Rob Herring <robh@kernel.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org, vkoul@kernel.org, kishon@ti.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, broonie@kernel.org, quic_jackp@quicinc.com, bjorn.andersson@linaro.org, linux-phy@lists.infradead.org, lgirdwood@gmail.com, gregkh@linuxfoundation.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Update QCOM USB subsystem maintainer
 information
Message-ID: <20220605141112.GA3425470-robh@kernel.org>
References: <20220603021432.13365-1-quic_wcheng@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603021432.13365-1-quic_wcheng@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_071121_851090_F5D1ED74 
X-CRM114-Status: UNSURE (   8.03  )
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

On Thu, 02 Jun 2022 19:14:32 -0700, Wesley Cheng wrote:
> Update devicetree binding files with the proper maintainer, and updated
> contact email.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 2 +-
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml       | 2 +-
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml         | 2 +-
>  .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml  | 2 +-
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml            | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
