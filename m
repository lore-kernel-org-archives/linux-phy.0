Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0074AC77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 14:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFvOzHvQLPAyMSxNiZmmEovj2BB/jOHlvYvWwuwojxg=; b=i8mssXU5Qp5qJ+
	lmDfAsf91/MHCzh7Led7UA08VZj2aUQ+XngnPeoXGuwG8BGimpFEl9fX+pytj7r9P4efNhLiqqRi+
	ZWDg8dn2MU7hPydWZPJno2zo3fz3uHYSoXooL0UpZpfKnhUYOnh3Mmf9dMeAFX5Ya2vVsMbGq7958
	d+ljgSblPWtkGqMiZwpn4W2mCgPRMTwr3xJfwC2VfoVrbKVzC59BljIxPkgPFqijzT8cBT5OtY7Jz
	N5kkyn5hHSyvadHmSK+GtlfgYzLhqPbyA1IQqh4bgl3wcukxIJ3DWwQKmn4sD48NFW08JH9/zrg2Q
	3Xl8ArvANdnrDB/IA61g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2Vf-006kN7-1j;
	Thu, 27 Apr 2023 14:22:11 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2Vc-006kLr-1f
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 14:22:09 +0000
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-187ef4d7863so3239595fac.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 07:22:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682605326; x=1685197326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uNuPX9j/yoNVZcLdhFFButCZsuO2r4zsFdcSvMmbBk=;
        b=MuNjEdAM8uawyRrvf2WzMC8enoG4uOFi3L6CNQVy61vCGdA3vd4l4MGypW4+nPcwvh
         mg6BKsl+mk3rkxk3bVQp4r/BbyCb6QYilJ9O/h58ZwM4kYoCPf5QeasR1697dCJU3rP6
         Gat9T8ZKtXRmzoRnqjUGmnhm1iEl72v+Qz+zTnq2BpOfUSssSy1N/XpnNlPdJ3+UJEw+
         5YtU1VViiYu6b0zpvfeng8lzc16N35/PDm04PH6ULV0sUSD17jhhPzKStdExKEMmAEEb
         2QTUuiovqdRsJ9Xh9d0swLZkrMiM75kVi2X0HRX55Vg4ucI6OA9V1joVI6d8a/3/SKU1
         9ddw==
X-Gm-Message-State: AC+VfDzx80X2X6FEJ+OVDFR50DEd1FgLqVTjH0agRU4fePfMS+/76UsS
	4tScZ/OcW41wsKGARxD6Gg==
X-Google-Smtp-Source: ACHHUZ4CFW+3aUpv2Gg8lfnGV/FuJC7CWrOe8fE8e37VwwGCL5yIS19C5JgRYyZkhI4eSfurt5Zw7A==
X-Received: by 2002:a05:6870:42d4:b0:188:77b:7c59 with SMTP id z20-20020a05687042d400b00188077b7c59mr1091719oah.19.1682605326276;
        Thu, 27 Apr 2023 07:22:06 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m41-20020a4a952c000000b005251e3f92ecsm8440186ooi.47.2023.04.27.07.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 07:22:05 -0700 (PDT)
Received: (nullmailer pid 2989656 invoked by uid 1000);
	Thu, 27 Apr 2023 14:22:05 -0000
Date: Thu, 27 Apr 2023 09:22:05 -0500
From: Rob Herring <robh@kernel.org>
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for
 SA8775P
Message-ID: <20230427142205.GA2979206-robh@kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <20230421133922.8520-2-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230421133922.8520-2-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_072208_558625_3E3D18CC 
X-CRM114-Status: GOOD (  13.03  )
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

On Fri, Apr 21, 2023 at 07:09:16PM +0530, Shazad Hussain wrote:
> Add the compatible string for SA8775P SoC from Qualcomm.
> 
> Set minItems to 3 for interrupts as usb2 i.e third usb port supports
> only high speed mode and does not require ss_phy_irq.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index d84281926f10..3ae02cffae49 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -23,6 +23,7 @@ properties:
>            - qcom,msm8998-dwc3
>            - qcom,qcm2290-dwc3
>            - qcom,qcs404-dwc3
> +          - qcom,sa8775p-dwc3
>            - qcom,sc7180-dwc3
>            - qcom,sc7280-dwc3
>            - qcom,sc8280xp-dwc3
> @@ -180,6 +181,7 @@ allOf:
>                - qcom,msm8953-dwc3
>                - qcom,msm8996-dwc3
>                - qcom,msm8998-dwc3
> +              - qcom,sa8775p-dwc3
>                - qcom,sc7180-dwc3
>                - qcom,sc7280-dwc3
>                - qcom,sdm670-dwc3
> @@ -443,12 +445,15 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,sa8775p-dwc3
>                - qcom,sc8280xp-dwc3
>      then:
>        properties:
>          interrupts:
> +          minItems: 3

Now 3 interrupts is valid for qcom,sc8280xp-dwc3?

>            maxItems: 4
>          interrupt-names:
> +          minItems: 3
>            items:
>              - const: pwr_event
>              - const: dp_hs_phy_irq
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
