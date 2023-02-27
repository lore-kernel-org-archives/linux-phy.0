Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23566C64ED6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 19:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XChtoPcV+dDoH/NfwPQaznw7uhh5Ae2VlCfIw9qInY=; b=KKgNr9l+KNnWjf
	SSBTW9p1uuNtBd+m6zXlegj26vkPs6OUSb1STFkkRvIVQDZZJrcd2NR/gnZGktfWP6Zng1i/FZ2+j
	0jY2I6uKhETYY7V0HxynrwWd/Vi+ngHCJdFPhZFlw05UeuDc915DyDXZIyR7kpvfIhR/5tNFoKHzB
	RgcrUhU+l+sPpD32QBmg/Uck3rdNdQ4FhPCrPrn7GydkTYExBEGNMdloYuxH4vZZ6jHkUw0kghknV
	IY+KXMKAyijhf0Xr/z3HKAN/uzdugs9rpW7cY1BjTz+gX1up3SV/wV67+EaH2lDjQrWlmgQGoBm29
	Qx+ORUNvbcR/V8TP0olA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWjb3-00B41l-IA; Mon, 27 Feb 2023 19:55:41 +0000
Received: from mail-oo1-f52.google.com ([209.85.161.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWjaz-00B40N-SY
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 19:55:39 +0000
Received: by mail-oo1-f52.google.com with SMTP id p6-20020a4ab386000000b005252182b0e0so1183544ooo.6
        for <linux-phy@lists.infradead.org>; Mon, 27 Feb 2023 11:55:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bi77Q6Z8Ff9qsnZSuzIme0IaEFZzAF96yr6jKLT/oNY=;
        b=5HuspH7fme8LLFI/DwljqU5AypLNsQlCuz7zZhR/Tj4u0k5jqteWEiYXPDxU5sHXkg
         prfbBeMptXGd1jWNSzLHlBf/kA65SNo7+OefyX4BjlA1mvq4KO4j9RK4onIZjQe6Wejg
         Xeadg+FMG2Vlgbe+9rC/dzUoz3MzymVQGOdxlfxTa0lv/veE3UO2hkrvpkOn0Yh//Qd0
         pS8/dh/5V6SMQz4KS8oJD0bx2orQR+tcnKtVdVRfHL5RMNnDyn++KhT/S0tO0gxe3HvL
         e787ErpLc/eLKF4kZ4JaA6B8zc7ct0BLuFN0eM5/mr0NOCaRZoGMDVYOvHL3PjXcV8Ab
         j3Lw==
X-Gm-Message-State: AO0yUKVga6oszGM/aUobDz06yonaNWwvgAaRryVe6/LofMPCk3hoqZPa
	QvQwXS+UgCZaH35O+/gAyQ==
X-Google-Smtp-Source: AK7set9GQuirZFd7o5uFL8Fk7mb03UTZ7Ig8Xe1KNoWVOrcBWkvbceDiwdjpSqwnJAwtKq6eclwsGw==
X-Received: by 2002:a4a:5250:0:b0:51f:955a:ca37 with SMTP id d77-20020a4a5250000000b0051f955aca37mr12887637oob.8.1677527736308;
        Mon, 27 Feb 2023 11:55:36 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h15-20020a4abb8f000000b00525398a1144sm2977105oop.32.2023.02.27.11.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 11:55:36 -0800 (PST)
Received: (nullmailer pid 754635 invoked by uid 1000);
	Mon, 27 Feb 2023 19:55:35 -0000
Date: Mon, 27 Feb 2023 13:55:35 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 02/13] dt-bindings: PCI: qcom: Add iommu properties
Message-ID: <20230227195535.GA749409-robh@kernel.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-3-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224105906.16540-3-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_115537_954797_F0BE40D7 
X-CRM114-Status: GOOD (  13.94  )
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

On Fri, Feb 24, 2023 at 04:28:55PM +0530, Manivannan Sadhasivam wrote:
> Most of the PCIe controllers require iommu support to function properly.
> So let's add them to the binding.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index a3639920fcbb..f48d0792aa57 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -64,6 +64,11 @@ properties:
>  
>    dma-coherent: true
>  
> +  iommus:
> +    maxItems: 1
> +
> +  iommu-map: true
> +

I think both properties together doesn't make sense unless the PCI host 
itself does DMA in addition to PCI bus devices doing DMA.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
