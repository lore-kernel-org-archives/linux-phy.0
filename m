Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6011C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrGFVlhQEu3lCEc1hD2TgdwAKy9IKE2hfIHAHfwz5Hs=; b=Hvfet+VNEH9KaW
	mFw4OYg4YPiU6gGY+NdAJRgxATfd5AIYIY1yfNTMuhQ4ECMRzcUsv77al3s67oZlmtoFHhss7HxQw
	b9aVqq3X4rKJ/UMtLDBxU15qgrUdvkSJjYpwWPIcGJC3RMP0+7QIDeAArQfEU0cxsk3K+vvFkJsnl
	EQsIsfeRIGq8wSC+Oaa+Qzvq5RJxZZQyn9JmgEFOUBkIA1maKZlMaCAf05crF1CN64GIYL37z9yZu
	CDAdTFbsXC4O+kCVIrDRY4Gz0kvd4G0QLCI6x84EdOeHd83Qsxn8AmPhMoQ/AoFAndndeCPwZ8Mr8
	8dPqj5aVscp+2q4zfpMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqGcW-00C91n-3Y; Wed, 02 Nov 2022 16:29:40 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqGcR-00C8ya-Lm
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 16:29:38 +0000
Received: by mail-oo1-f44.google.com with SMTP id g10-20020a4ab4ca000000b00481082808cbso2547012ooo.10
        for <linux-phy@lists.infradead.org>; Wed, 02 Nov 2022 09:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cgD8c+pefwqTCjp2v4u0OtX3VghETalJ8uHDLcccGzQ=;
        b=SSMSZouDfRm5BmLi8sQ1BYFQ+hj+yD4DRJE2Rqa7lTkkZZ9+QRNqxeQzMZVF8+8fTl
         WWT2LoMuCmEqJdoL6lcG/gQNwWlzSw+JXjE4tf8ilyJbdRvTNifjjm1nB1ZJlyA1wy1E
         WHbcgQ/SuzRlqgqCbuZ0igBKah/TYqE4V7+D97lwJVF/l0HdfMg+f8XgT4xk0ZOMGjPy
         0rloh25yRPqUYAvOGa9V1XrTKiyehlNYTtIPUY18/fidGfqEN5eBCHcFbGn87lPVMjcU
         JS4b+iapCYP+CxxpXV22rGCelA+zDjPv2LlTwHuXYCDGKDbvHdAzSgKpenpAlYIk9PSb
         t9lA==
X-Gm-Message-State: ACrzQf2BxmOM4vJWe0E80iB0MJVKXyJ6cX8C8NYOSZEc9L74A0gGaUfA
	AYLcN3UVX9UBaDhna2kFvA==
X-Google-Smtp-Source: AMsMyM74yiL/T5nDD23UaKKVS5GHu3Kuf6izs9ibgsU02irwitzkoseK958529BgSkAtG008UvX57A==
X-Received: by 2002:a4a:be95:0:b0:47f:73a4:9f16 with SMTP id o21-20020a4abe95000000b0047f73a49f16mr10820469oop.39.1667406574244;
        Wed, 02 Nov 2022 09:29:34 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bx12-20020a0568081b0c00b003539686cb7bsm4718234oib.53.2022.11.02.09.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 09:29:33 -0700 (PDT)
Received: (nullmailer pid 4003916 invoked by uid 1000);
	Wed, 02 Nov 2022 16:29:35 -0000
Date: Wed, 2 Nov 2022 11:29:35 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org, quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org, ahalaney@redhat.com
Subject: Re: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear"
 property for UFS device
Message-ID: <20221102162935.GA4002811-robh@kernel.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_092935_768956_686A3157 
X-CRM114-Status: GOOD (  16.11  )
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

On Mon, Oct 31, 2022 at 11:32:08PM +0530, Manivannan Sadhasivam wrote:
> The maximum gear supported by the UFS device can be specified using the
> "max-device-gear" property. This allows the UFS controller to configure the
> TX/RX gear before starting communication with the UFS device.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/ufs/ufs-common.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> index 47a4e9e1a775..5dcd14909ad5 100644
> --- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> +++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> @@ -73,6 +73,11 @@ properties:
>      description:
>        Specifies max. load that can be drawn from VCCQ2 supply.
>  
> +  max-device-gear:

Needs a type $ref

> +    description:
> +      Specifies max. gear the UFS device supports.
> +    enum: [1, 2, 3, 4, 5]
> +
>  dependencies:
>    freq-table-hz: [ 'clocks' ]
>  
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
