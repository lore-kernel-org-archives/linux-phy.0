Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FD6AC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNHjfFqaJw/s16vb/Oaq9/+p9iDNaFGhv0NpvxECgts=; b=QiHFxvFgXci1UY
	vP2He6qFAqfXnuH68k2cDHCidu2CJJ2LLru1cb2XaUQJ7ht3/ZT9WlnledYUpTdqVlLcJOIPt8KaJ
	znKiNROw2zqCYHxNH0GVhUTE5l2QaY4HFJQf0LOgTuVB+WQObeLrpNn4JJ3SY8oJ48nTVN4QFwSVf
	MBAya0jKnUZVfo9tVhG2uxiQo4+5gFgtj1QX8Hm505VdXfeOWo9GEdlqp/pN7EoKH59zHYXkiSlgm
	YhKeR2FrEJ1tEke1t41VzE+L8Odr9ZV0nhVxYm4ZE+HchNYm1MGiMsxeoIUZWFyJF0IigZfKeCAzb
	DG2J5LYng65rEpGO6ekQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbxo-002odw-4O; Wed, 15 Dec 2021 21:37:28 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbxl-002ocw-23
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:37:26 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 n104-20020a9d2071000000b005799790cf0bso26579991ota.5
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:37:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tiVd6i1mSOf4f84+8yVBYJ1g96mSqYbzqmAOlstb8S8=;
 b=epfL3d5AmQXc2odJe4IfjmgeaB6JSjCKPf6zazN4rsaG5/MnDSJZxcranmNYdeiuKG
 BJ1Dbf+iOx0mKCoac6Co9U8XZabH8cpGj8m7x5NH2kYc0cYGnTOHKmmVH0reGuJb4ODV
 jNA5nM6/astw6hQDZD20h1pJvzFW463QpokmPgzqCNlvcOU0VquRbGg/rPjHWN/Cnws2
 gousbyBsB25ujJ365RM3DSp8ItqOs54kcD1P9MeeOxfT3WN9XtC1P1baVCeRmEUP+T+r
 kluksAsSuljx+hbf72CcaQvMV2GDYjkaTphDSeZ1eglS0jugMVAO9WNW6d1p6KHj6gUq
 8L/w==
X-Gm-Message-State: AOAM533oUeNldZSl9rievEb1P+FMeOzqTYr4TENZylDRW5NT34if4VzZ
 rHL2EtEcxKNosemSUk0lTA==
X-Google-Smtp-Source: ABdhPJwHU9bys0Ld9Zwop7bOlHmKE70OIYouBaZ09r1gBb0zvlpKTs6gyHZUnDytfQ0lyR1Ac6L0IQ==
X-Received: by 2002:a9d:6254:: with SMTP id i20mr10433919otk.343.1639604243374; 
 Wed, 15 Dec 2021 13:37:23 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 9sm555096oij.16.2021.12.15.13.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:37:22 -0800 (PST)
Received: (nullmailer pid 1883028 invoked by uid 1000);
 Wed, 15 Dec 2021 21:37:21 -0000
Date: Wed, 15 Dec 2021 15:37:21 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 01/10] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YbpgEQkPBG8QS/0w@robh.at.kernel.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
 <20211214225846.2043361-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214225846.2043361-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133725_135263_828AAD6B 
X-CRM114-Status: GOOD (  15.35  )
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

On Wed, Dec 15, 2021 at 01:58:37AM +0300, Dmitry Baryshkov wrote:
> Document the PCIe DT bindings for SM8450 SoC.The PCIe IP is similar
> to the one used on SM8250. Add the compatible for SM8450.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

I hope someone decides to convert this to schema soon...

> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> index a0ae024c2d0c..73bc763c5009 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> @@ -15,6 +15,7 @@
>  			- "qcom,pcie-sc8180x" for sc8180x
>  			- "qcom,pcie-sdm845" for sdm845
>  			- "qcom,pcie-sm8250" for sm8250
> +			- "qcom,pcie-sm8450" for sm8450
>  			- "qcom,pcie-ipq6018" for ipq6018
>  
>  - reg:
> @@ -169,6 +170,24 @@
>  			- "ddrss_sf_tbu" PCIe SF TBU clock
>  			- "pipe"	PIPE clock
>  
> +- clock-names:
> +	Usage: required for sm8450
> +	Value type: <stringlist>
> +	Definition: Should contain the following entries
> +			- "aux"         Auxiliary clock
> +			- "cfg"         Configuration clock
> +			- "bus_master"  Master AXI clock
> +			- "bus_slave"   Slave AXI clock
> +			- "slave_q2a"   Slave Q2A clock
> +			- "tbu"         PCIe TBU clock
> +			- "ddrss_sf_tbu" PCIe SF TBU clock
> +			- "pipe"        PIPE clock
> +			- "pipe_mux"    PIPE MUX
> +			- "phy_pipe"    PIPE output clock
> +			- "ref"         REFERENCE clock
> +			- "aggre0"	Aggre NoC PCIe0 AXI clock
> +			- "aggre1"	Aggre NoC PCIe1 AXI clock
> +
>  - resets:
>  	Usage: required
>  	Value type: <prop-encoded-array>
> @@ -246,7 +265,7 @@
>  			- "ahb"			AHB reset
>  
>  - reset-names:
> -	Usage: required for sc8180x, sdm845 and sm8250
> +	Usage: required for sc8180x, sdm845, sm8250 and sm8450
>  	Value type: <stringlist>
>  	Definition: Should contain the following entries
>  			- "pci"			PCIe core reset
> -- 
> 2.33.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
