Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77832C636D6
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 13:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9FVpu6h2b6V0F6UompbUUNZhcXNKDQw+D0sNSma9ng=; b=qA7C/dgqkHLvFE
	LND06gbWgMPez0DWf2yCqwMDww1lVLKBxKD50lLg95nT/CpN+OMGHql8ePVYbhRHCzQ6vOauRcXeQ
	EDH6N0MX+9qKskOeKEX1r2O22IxuAncnxulxh2WCQMxkkietrz5XeXybvl2muNgDpmZmJ0Lhx1rpT
	ccqd8+Api7hDWAGPIgX//QrO4awt1xHgv5Wd4McW41llUSQVSIRFn5EYRqWPN+nMOdVbwhrx7S2PG
	O9kGdJiaARlOACQlJzXbFPClVjUMCT4AdwIsgZSXv+t28EdonNFYnTSH5K2KAzqfAqeO05PRudITy
	v7PXtSwCTNVXwgkh9WGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVBFd-00GOaQ-SC; Thu, 23 Feb 2023 13:03:09 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVBFb-00GOZP-BN
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 13:03:08 +0000
Received: by mail-pg1-x532.google.com with SMTP id bn17so51985pgb.10
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 05:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VDOFit7llw2/gJ6jzLJCmahPdSfAi0DepjG1IAxiPnw=;
        b=sFy4typzM2eOLsbkJQe+vXY8RZQNu0UdpoVzLNcyjTzyvY1oK49i4XDePvX1aB125R
         XNv/2o3Ztp2tdRZ0zvW+XJhKCPpk6o0XUVYD7bfzdJcX00NNg5bI90fC80Zgt0MLgJXB
         OKgZ4ehTF3EDtLwRDn9QFxSYWRTamgHmr0Beo49Z0Jlb9K8y7eTR2oDziqTNJe0vOSDZ
         fSIVMAsqiJaffVjtzZ41Lsh9MNQksmZenPta7WOeF8F5sOb9DO/wCzWIT2I2f4FWEC0s
         LlEgrTxnkXzHkfk5sMOg5SGwdAGYSKn4jSb+Is/Hobn2TTTUYIvo8FyqAcZsML3EtHlh
         PF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VDOFit7llw2/gJ6jzLJCmahPdSfAi0DepjG1IAxiPnw=;
        b=476DGRFbyhJnbNbsSr9Zq0w9iaE+tAwn+6NyEL+pSuFjYzO5WaqHcUABefEeOkRjzx
         EffsizjD9MXDsmXOqjha85YJlxFPwvB3XZXldYVhWHftfiDe6qkgUfIoxooQwjANT2q0
         WZi1v9MJyiqxBXbju8xNJ1rBoeXlET9yP/F2pbZ2/GQHEX2tnzVD+LNxrwqIq0UgFxUl
         v7pAYfeFrKScoe5g5yQrujiA8YAj0hD4rvoI3lQ/wg/km6U0KJGO0maq+2iwARKMwbbs
         xZyMeXR8y71dgSeGDb3VXAEdyKJg0eQe5KYCkjaDG/UjgHTNHyeioowOnnBaR6pECRPl
         ZWvg==
X-Gm-Message-State: AO0yUKWucuWiAbrvZf+SewDCiP82Pdb9XxKzWaVvNFlNwhA6aG6Vdoec
	n07IHNKOPWfIK8702Qn2i0EoJmpw4Gj0QiQ=
X-Google-Smtp-Source: AK7set8RmPOqlaqJ5BqWR398VXNl+vStS+Es8uuVnuZgEnR0iokSb0dH7fO5GrQxrllNTeFi14oscA==
X-Received: by 2002:aa7:952f:0:b0:5df:421d:1962 with SMTP id c15-20020aa7952f000000b005df421d1962mr661952pfp.2.1677157384106;
        Thu, 23 Feb 2023 05:03:04 -0800 (PST)
Received: from workstation ([59.97.53.124])
        by smtp.gmail.com with ESMTPSA id j15-20020a62e90f000000b0058bc7453285sm7145680pfh.217.2023.02.23.05.03.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Feb 2023 05:03:03 -0800 (PST)
Date: Thu, 23 Feb 2023 18:32:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
	kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 02/11] dt-bindings: PCI: qcom: Add iommu properties
Message-ID: <20230223130258.GA6422@workstation>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-3-manivannan.sadhasivam@linaro.org>
 <896e047a-9188-de5d-d3fd-197b3fa208da@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <896e047a-9188-de5d-d3fd-197b3fa208da@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_050307_406827_749B9E93 
X-CRM114-Status: GOOD (  11.57  )
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

On Thu, Feb 23, 2023 at 10:37:27AM +0100, Krzysztof Kozlowski wrote:
> On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> > Most of the PCIe controllers require iommu support to function properly.
> > So let's add them to the binding.
> > 
> 
> If most of them require iommu, why not adding it as a required property
> to respective (or new) "if:then:" part?
> 

Well, I thought about it but then followed the convention of
"dma-coherent" property. I asked this same question while adding that
property but I didn't get a clear answer (or maybe I missed something).

So if you want me to add iommu properties to individual SoCs, then please
explain why the same cannot be done for "dma-coherent" as not all SoCs
support dma coherency for PCIe controllers.

Thanks,
Mani

> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
