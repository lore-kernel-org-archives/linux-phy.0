Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 612F3C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 08:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caOcq4qTtzTKmtNKwHo0Dd0xjB6nXKmOBHGvXN91kuI=; b=UkgpPZG7/Y92pm
	/0TQV4kMNW2zjVRCaR74C4gCyHlHg8ZpHnUfxAduJaDHOUu7saP6nRxaIxcdsPYacjO5rGeYTeph/
	F81+o+YYiCFkylYUthhA6YJupWd9x2v/A6VkXvWie4UJbhS5idV6WvohKdJR5yIeXyWctW9SQH7sS
	Px1irrDEvrQnga5N0INW4qqaisGmTzjQs9Fi22jBwRUl+NiE0Gq7qxXQ7yDzdLysxy29FrFlF5n+S
	5oOiKh17Gl+w4vvIW4uYv2mvxlW5PYxfR5jREt0NQSqgi207Q2kuERxjWDrV0Adcu6K1QEgw++3rr
	PTGnQXHEnjq0GOT7YW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvbUN-001E0w-RF; Fri, 10 Dec 2021 08:42:47 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvbUK-001E0H-7A
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 08:42:46 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 nh10-20020a17090b364a00b001a69adad5ebso6947672pjb.2
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 00:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iL7mOU+kitDPtrRKqArvbH60/+cnDzNjLmcoW2AtGv8=;
 b=Kn+06usMQB33IwA5I8bQKXQS+e/n3AJWpOKKu7uXCu5+USqg9l4zOket+sf3r2UqKB
 QIEGEw+2UzVdbEO3BjUXZOASgbNP6scRJSWJccO6pdgsyZqxxl6j1KRBqD2LbW0btNED
 T30lqDRPQWXhDLRMNx8wWxNyexfx6zAl+sSCnBOgfbAMAXopP/ZXLSKGOonrgKeaClpo
 4G2grqzyj+JMz2MEq8Auz0MnqjyaPjiXrTFqyRsEyKez6jEnNt5aSBcsa68q7TQF6ajH
 z/1c3AvS2FVkmmfaflH9tqKIOm7+gMYYcC6ht+jnkHSv9lbboUiJtxTeGjM/uwba1Plh
 aVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iL7mOU+kitDPtrRKqArvbH60/+cnDzNjLmcoW2AtGv8=;
 b=VjgByzokvhiYgtxkdBHBrTCmbcBeq2OfE934F17oEKszTd1Q/po/vRa88eiECztBzP
 zmQ3PjCRiHGngo++Xn9+plGERTzuxocAyh/99XC9MxTgwn5Sf9IAnzZHcFCgPoTgC+FM
 Q/nrMM2xDAkOD778Paq8PNmrI2+9q5UF7U5ICYUNEYTM99s0m4o3aG/JkHEfkWMCrBCv
 xE9wWCtneSPa5CDxVI7vUKF93SBJ6qE3uMSi3dfWeqgTTQVgMycC//5dr4FsptIM0byp
 GQBvh3Cpg1iAnRuCe76PAhz765fAK+fNzVmfIHKSS5Hkoq2QgwmVxzpjtZtydUJqs9MX
 8+jg==
X-Gm-Message-State: AOAM530IJHAd4+J+9DSpxTTKwY2pB2cjBigb185giYTfzbWSKEjmyKRj
 IglReBL/8hvLZdA9saJZSLRu
X-Google-Smtp-Source: ABdhPJxCkfYuZGgUkkQZ5vdBcYUkq96FOqKrJjrFMUk0zk2eAVuV+BTHqaenlibjF+gjU3sSZDM5JA==
X-Received: by 2002:a17:902:8544:b0:142:66e7:afbb with SMTP id
 d4-20020a170902854400b0014266e7afbbmr74471786plo.62.1639125763119; 
 Fri, 10 Dec 2021 00:42:43 -0800 (PST)
Received: from thinkpad ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id y11sm2192234pfg.204.2021.12.10.00.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 00:42:42 -0800 (PST)
Date: Fri, 10 Dec 2021 14:12:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 01/10] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <20211210084236.GC1734@thinkpad>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208171442.1327689-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_004244_298437_29F78305 
X-CRM114-Status: GOOD (  16.14  )
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

On Wed, Dec 08, 2021 at 08:14:33PM +0300, Dmitry Baryshkov wrote:
> Document the PCIe DT bindings for SM8450 SoC.The PCIe IP is similar
> to the one used on SM8250. Add the compatible for SM8450.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Note to self: This binding should be converted to YAML very soon.

Thanks,
Mani

> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
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

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
