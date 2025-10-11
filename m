Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C3A0CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 11 Oct 2025 12:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zO7HsCU3HZ2vty0s0Evu/3/kd+KbC6uwKLfKlbXts+s=; b=zPbJX2gYxymDaP
	lpy7ku6+CNWpHEi4JmFunObdc3jPLfKm/dS6T+uG50J3k0/INJZfHu2mfhLf22TWU2+cGyEedXNCy
	k8rOk1uOCgcl1nrYPAOsKfO+iOsHVqbrH0uR4ojm/u0hNbA2UKMsryWjRsYXGQAhKn4LG73/5eOOl
	Z246VfT22I/JmQUWGmfmV1o4g2piFCNvN2vjeuYMdjsUfUJHxdHYfdjosz1IRBkou3Zy3lIjZn5YX
	jOWY317xQV4W7L6BA2WhALflMmQhkfeBtZLghXeXwZNOM8We4rhDiWs8p2NTLe16FnwKK409t+lGz
	3vMBUYOFb9AZq7tq8U/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7YWB-0000000AA0V-1Epd;
	Sat, 11 Oct 2025 12:16:11 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7YW5-0000000A9zn-1qMS
	for linux-phy@lists.infradead.org;
	Sat, 11 Oct 2025 12:16:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-46e48d6b95fso26619475e9.3
        for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 05:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760184962; x=1760789762; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ESeZUlMWivezlE3DeTyuSwyLVdykZbSbBsQ6LPdbgI0=;
        b=OJwncxhvnWHXIve3b+u3merH6hypZLJrKXFA8LfvEz7CPfjtL30RfHDmIIGqCQfuRH
         pGCqfsC55sLLx3BWpRSqlcwZoWWmKfLV75SjZoiarz6MNpLvAOKZsmBSfm8HpbBWH6im
         Z104p88U+NsRqH1+zIvWz3b102XvDqQ29D9lwpGB38VReZl8dkT1wAtHgHaQeU1d3iOn
         /V6gdakcDYnxFl71P4oxYlJ93i5ON8be2t6+mB0pJW3UbzQL7Xe4lgCMdMwUaiVRJjtG
         wkZFwCGN2w5GtTC/gjWPTorO3J6IGsb/0z1218xgVuOXkvHwBqx8R1+dnuCWrXsGuhDR
         B48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760184962; x=1760789762;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESeZUlMWivezlE3DeTyuSwyLVdykZbSbBsQ6LPdbgI0=;
        b=Tvp0D1L3id0vbiI0NvonFTqswtvW+OrT+fnZqumnXwwDeILJrTo4C84Iny2fkho/VL
         c30dRKxr/2HncRtsHjIQ1uWPcx4w++HISiNadByhs1XsO7Iev0+g305eStP9OKl0JvfT
         yHtoRS2eJ3jubUV2dr5TybJYnMJ6KJ3MS6u7vUwEayvRSV9zhmJ3IrM6gZV//M9RvvOC
         FXiQfI6J0yEH76ov6kuRRUbfoXDsWM7DhSbLq6q3/+iUZqZNDsqpM5vudyVKog/NgVzZ
         NMC06JCsennZH6jBBGYm5ftUyA+bhl+X5qyDBonqF4dmvXaMtKGjU6htTtuEuKMutnCc
         Tkbg==
X-Forwarded-Encrypted: i=1; AJvYcCUVnWFbP6vXLUJP5rU+T/oWf5hVGNy+ER0UUFhxulBFJEXgpyJmtZZB8iN9Tu3UftoUPih6wnrf4ks=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+5KUhHdVhgqQGtBtnsCY8Lb5PPuldvLsn++bEz8awTEassep5
	blnY+5iwEJ71DotgmCiNqtKBye+QuXKjUuNw8+/dM5pQfbtcS+BoRLPMfnNeGzreAWQ=
X-Gm-Gg: ASbGnctIVsot3V8asVY/j94VtDwPKoctUl3RZMiC0/IaMZ18K/DDqauIUwR26kA/bB+
	4yRFUOzYExOBmS9rbDEKYwFpTJN2QvkWvWfZXHXRK+6H9wWASN6j5wAaYFW1vFbyusEdoyPxunz
	a9Vzfgexkyb+ENO2QimTLND+6ZDra/KiwlgMVZCHLjJAvKDEqIclfBKLbW64tgSiaq9gFnkYC2k
	5WqyK8WhglHpzR8BXMGi97Oo5PwJc99UxiAEUAi9HTGxYe0v/sWizVX+VnjnV/8BkpP35LLOp3K
	7iYCmypBuNo8i9tJe0f2C+jE8LTBTyYuprBWLmDaBlsAilQfyia1EqyT/haIz1YEPf3e2xSObbm
	TL61yt/LeYwMn6uCGAvoNYMBHUJH67pKaVLm+OJtWed/kZzSlXuXV
X-Google-Smtp-Source: AGHT+IF0eKdBuninlOSWd/RRES96gVi6uKKSkT94wSVAQclPilU8XlMKpntgxCzH3mwQj1GRHiXV8Q==
X-Received: by 2002:a05:600c:4ec8:b0:46d:27b7:e7e5 with SMTP id 5b1f17b1804b1-46fa9b08d79mr103124925e9.32.1760184962016;
        Sat, 11 Oct 2025 05:16:02 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm93739915e9.3.2025.10.11.05.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 05:15:58 -0700 (PDT)
Date: Sat, 11 Oct 2025 15:15:56 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com, 
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_051605_637576_FC20814B 
X-CRM114-Status: GOOD (  15.61  )
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

On 25-09-03 23:22:03, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
> controller present on the X1E80100 platform. So document the PCIe
> controllers found on Glymur and use the X1E80100 compatible string as a
> fallback in the schema.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> @@ -16,7 +16,12 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,pcie-x1e80100
> +    oneOf:
> +      - const: qcom,pcie-x1e80100
> +      - items:
> +          - enum:
> +              - qcom,glymur-pcie
> +          - const: qcom,pcie-x1e80100
>  

The cnoc_sf_axi clock is not found on Glymur, at least according to this:

https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/

And dtbs_check reports the following:

arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
        from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#

One more thing:

arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#

max-link-speed = <5> isn't yet supported and of_pci_get_max_link_speed returns -EINVAL and sets pci->max_link_speed to that
without checking the error.

So I guess fun stuff is happening based on that later on ...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
