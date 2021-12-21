Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E0B9C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 05:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1If1P5Ukh2wyR6Tp4LY5zT4F9ZCuGkosXpEWT78Wo0=; b=C9bfNtT2SoR5EY
	RsD3fey8itvqQQaqkpYa0eNrRfeb3+t5d3RKgiugEAjHu1R2oKyFWH17jfWOVTjF8CKegbBZZi4TL
	VuwZ+THUyO8LY/HEMucCPXvvkZfEV8eAsnm85l2M1d553Yq1ZTuxYlFD1cfn+yY7C+fudniAgPC4C
	GDPhsvfFlkJ5xirwKeuhbbRoaziRTrevazKDha4kP3/1rzzcWuxBu1WhlG6Af6Datv91u39kEFkeq
	iFSe+HDSrTaQZQqokz+4FAM1V/QntDBxqy3UMXpkbePHItPovoO7SJ518pt468X0jEWvmI2saviv6
	VroN6+UwQK3F+Fwn7dkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzXbS-005Yfk-Ue; Tue, 21 Dec 2021 05:22:22 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzXbQ-005Yf3-Gf
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 05:22:21 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 35-20020a9d08a6000000b00579cd5e605eso15368586otf.0
 for <linux-phy@lists.infradead.org>; Mon, 20 Dec 2021 21:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=S7rrl45AdyxxKacHinE6NR1eVjErEjJCz4ycjQLwVQg=;
 b=oCNcDUAZbTfjq4JDIkmJAS2ynHZ19RLCG39RfHRpI81pC04bGnN4LTO2UVHMC7rlms
 AGbQJjZeMADxThyV9NplBENhPp+MlTbuPjjiagX2vGLu6JCMCKgwd+OGMnS0Z19OQKv+
 omm69/Kkxe+PE4evCyWRrQecA8MQ3EY+6iM8Hr4g7fRTFg1QSDAfmUkkpyjgBSHyR8wK
 ZdhT9nZuzlXFvyCMflottA5EYq4gD5CIE1XJMhKOWAP5W2gEqLE71F8onN3GrAARIcBs
 g07yb7f7RFTj7vSdcvct/y0rcs0gCcIpi5oUtWODaPnwD7lhktbFwdtTEQudE/FUSJvE
 6EWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S7rrl45AdyxxKacHinE6NR1eVjErEjJCz4ycjQLwVQg=;
 b=5HpulhbPHOL0dDoOLDN1qB0aNbRTRxiKAzxtoi0G6tKUqKyU+6GNl1X7CkGcPSUPNV
 PN2k2gZHjTnY3EC0Ulix/8VRr2UwdzqYL5z/9tOYC2eMe+PkuHpkcHLjX0GBYLJK4BH0
 fSENWnxql+eiGjAti5o47Va7tuGA/qRGG8FCtCWyTqNU2oZhrWZpIywIMjcmMi/3mOlJ
 dN69gz7r5cA2aWzWI+SWT75TM57G4GbXyWUnQ/sBVmvWrCfmfIIolSAZ4Z0U4VsIPVlM
 mEw5bV3cX4YtlITGLSrS/yhqdxWMLid1W+/NJSQBujUdncDr7i9bBgRCbiJ3VqMXl2qv
 kxTQ==
X-Gm-Message-State: AOAM533m5Yg29Vq7jqmwoXlufTz9wSiXwJIBfAaZkwCo/oQ9szFR4WqT
 aEhqZE+H+eVSFjujN8xp3w03Ow==
X-Google-Smtp-Source: ABdhPJzncsqjstcyJUyav6KPDF+CRGhZ+ROYuYW2Sw+DClXfd4rJnrU7jyTRy06q+QOeRE9/aW0+vQ==
X-Received: by 2002:a9d:7548:: with SMTP id b8mr1047567otl.92.1640064139484;
 Mon, 20 Dec 2021 21:22:19 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id f9sm3582053oto.56.2021.12.20.21.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 21:22:19 -0800 (PST)
Date: Mon, 20 Dec 2021 21:23:28 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY
 bindings
Message-ID: <YcFk0PdQxMhwrdU+@ripper>
References: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
 <20211218141754.503661-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141754.503661-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_212220_580951_0310B88C 
X-CRM114-Status: GOOD (  13.29  )
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

On Sat 18 Dec 06:17 PST 2021, Dmitry Baryshkov wrote:

> There are two different PCIe PHYs on SM8450, one having one lane and
> another with two lanes. Add support for second (gen4, two lanes) PHY.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index d18075cb2b5d..41a8d00bd576 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -51,6 +51,7 @@ properties:
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
>        - qcom,sm8450-qmp-gen3x1-pcie-phy
> +      - qcom,sm8450-qmp-gen4x2-pcie-phy
>        - qcom,sm8450-qmp-ufs-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
> @@ -335,6 +336,7 @@ allOf:
>                - qcom,sm8250-qmp-gen3x2-pcie-phy
>                - qcom,sm8250-qmp-modem-pcie-phy
>                - qcom,sm8450-qmp-gen3x1-pcie-phy
> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
>      then:
>        properties:
>          clocks:
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
