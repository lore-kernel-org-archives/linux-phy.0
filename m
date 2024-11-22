Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 853A3E65D3A
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 09:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvKwZVi7IJB3SpGl1hbELF2heCOALVOqu04RSEZJwf8=; b=LK6C0X93/A/nf0
	3MKe2k7pbHA4tYf8QEbTsH6iDNb7ve8w92SD965l8HT3mf6SLTzcMLBPaju2Mca2sd0HDc/R1fYZl
	M9uAwPTWS3KoNNi0vFjlTCO7oD/n44HTY+tqm9aBueXKCEI28Z9S4EPxGwjtcpmoTqeMT0kzIcfdr
	0JqgsprRprv0UP+C8w/+zZW64of5UN0mHWhDu2LsYpl4tq6gB3Gk3s6ZzVsNHhahOyNivBk16mceC
	vm1LXivOH1xlkuWG1mReEn4Xe0+nfWw1svLt46w0baxDlcO8cvqtNAAfsSzsenL3Xh6ekS7+fWriM
	TRmISmi9YvoAPdGeetTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPwt-000000025vC-1BeZ;
	Fri, 22 Nov 2024 09:27:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPsz-000000025Cv-1m1z
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 09:23:35 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-539f6e1f756so2061579e87.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Nov 2024 01:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267411; x=1732872211; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uN6BAz+250rWr3QrVnp7fqpel9Dn0qE7RRFpgwycROI=;
        b=pl4EQNPh+6XBMBfDSLs+Tu1D88tb0ghoUagpVvgtHqLwCASFX+YMEgfglV5gbwmTrE
         8EfMZ2cKTsZMZCzxa7QacicElXJXvYdkVvS2cPKUxpA69fSjoiHZRHJIkaGSN0RFp2kA
         5jjb+sUROoz+k9GBW7SA83dO0gal70jStj57crh1UWydiCohC3LvOo9EzqPEYH29lLIy
         yiN6ZCtAQGuv2YNntislcpHf9xv2eJ3DcH8REz31F24M0Rspk3QM+Q1WDcXkEpI386WF
         +QetNgkzlA3BqaHLuRHRDwwJm54upxVVGL0pNAjR/m6ocyXiI6ZO2gZ46G2VZhxYOZE8
         nV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267411; x=1732872211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uN6BAz+250rWr3QrVnp7fqpel9Dn0qE7RRFpgwycROI=;
        b=GMDklSbn3CX4FtJGhfwrLIGPdUuwo6hqhclsviwT9ocLs8+LxMVt13Hfd7SdXcQ40B
         kAFFFmQC0DPEX0MAJUjfBXGwaq5Qm8AMcZBtp4eyHoqHQn+QRP/rWrqxRQUuAsgwPZor
         xGDDFeWyxgfIPmZPbZNlymRZGRYGvQEOyt+m3ej2FvYFEhkMNyCC56w0bx2FPSHpf6cF
         bEjMR4r3c8h1Xxoq++kDlGbzZDejYGvhbrbnqvwkJB5GTlPMltAjCAomeYdqsOAFeFr2
         dk0g63wd7O3SWVNMv4A/ww2wRqahJ60YZohEurr0nYo5mPHL2uPxV8iDVUM7rWYlsx/E
         jGgA==
X-Forwarded-Encrypted: i=1; AJvYcCU4i5RrfOxbBUZCvHK1mUAKD4/NeYrrxoAupnPZCbyinkyhlotTqqmMD7PKZ7cVJEV+gOTlFiBX1bA=@lists.infradead.org
X-Gm-Message-State: AOJu0YywE7Fkm+0nOMOk+kjTf2Phkxxa+eFvmGFmO+Ip2sJ+UI2aUDHc
	zf4PAsLu2XVkXxPvXD64RoEag1PnKdarZou0+jLZ7Csx0Hr9Vs9ZRDraFITDfr8=
X-Gm-Gg: ASbGncuEi/40ywYM7JD7m0r5ID+vusYrg3av1hU4GZkA0ke/gSUpzKmK9fcTUtWDFsc
	R8D7bmmQMR3RFmrufi9dsMdu8wDteMUn6DI7wfYpmS56VwQTY5ONkKo9uqWU+qJFTkEhm1AiXZ3
	lDkEW0udgy6TGOGxK3pmBVAdEViZUE65VClDgWkvWnkFWMY3agybICB193zOOKwTHc5nlRgUuSr
	CAIoCY94bnNCEKUH99YLkrsGIZ6HyTAyAugIAmrPrXblh4ssL0nTfx4zORWzhVYYnHHyGfmA93U
	jWsgHPivVCCyXp8vmU/FEFlqG4H1HQ==
X-Google-Smtp-Source: AGHT+IEy5OBr1xCpPRhgqUBV6HF76ekcP2Na1oRdF7zIBTe9ZiJib+9fvPBcZ7Vk0hs6xn28u4KMpA==
X-Received: by 2002:a05:6512:1384:b0:53d:cee1:df89 with SMTP id 2adb3069b0e04-53dd36a07bdmr1088047e87.13.1732267411364;
        Fri, 22 Nov 2024 01:23:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd248b7d2sm301855e87.221.2024.11.22.01.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:23:30 -0800 (PST)
Date: Fri, 22 Nov 2024 11:23:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
Message-ID: <crjcmjgf6eab4p4m7y4wqh5mo3mv6z2mcoa3zn4wdnwjzh73rw@z6ksq3efbzoj>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_012333_468764_9B6698BA 
X-CRM114-Status: GOOD (  15.08  )
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

On Fri, Nov 22, 2024 at 10:33:11AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> Due to qcs615's clock-names do not match any of the existing
> dt-bindings, a new compatible for qcs615 is needed.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> new file mode 100644
> index 000000000000..8f7571538d23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/qcom,pcie-qcs615.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCS615 PCI Express Root Complex
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description:
> +  Qualcomm QCS615 SoC (and compatible) PCIe root complex controller is based on
> +  the Synopsys DesignWare PCIe IP.
> +
> +properties:
> +  compatible:
> +    const: qcom,pcie-qcs615

I thought that this should break qcom-soc.yaml.

> +
> +  reg:
> +    minItems: 6
> +    maxItems: 6
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
