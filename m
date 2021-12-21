Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE996C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 15:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nrr/FRZv2e41hc+V7Fn4GwQoUAn8thUmnweeEdQgE8A=; b=M8I5OHvwN1zuX0
	G0h9HW4boyMHCKJ7sthewJORvYjZz/mJCfFcclDcdzapoXacsddrmCC7E1P3mVwII14OQjznMbuGF
	hUYx4K/4Ig89HTR9GtHYmaXikemSHlWgEMGpaB+F1h5Ny/JyBZpnPQ3yxxubxoVJfySaxmQ5KYc27
	iqFiYJpkV5xEBcR9NXAigpzxT3G4BEgK8iDAUpIVitjuUIEe0Dv6859zEZqDmTB8xIkkl538Iavx6
	q1j3b3F72LgeKSMcXfXhJWsvMcDxNm0I4Hr6deEpCQlxQbuCNzd3g21wUaIrNx0klAG4kU18Etgle
	xIBaGkMpFN9JyPhGcDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzgdb-007G76-3R; Tue, 21 Dec 2021 15:01:11 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzgc4-007FBs-3E
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 14:59:37 +0000
Received: by mail-qt1-f171.google.com with SMTP id z9so13059524qtj.9
 for <linux-phy@lists.infradead.org>; Tue, 21 Dec 2021 06:59:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KdY8eJ3b8gIHmOjY8jOpNQudFdqG5PeN9eLzoM3qKnw=;
 b=YKIsbG1cKq3QGHVbOBS/4uoLlR8kfusLdtfPMRCH2pCRZvr1M3NCfQSo75Emv8uivw
 G1JVY/Owq4uLQO2ZMN1GMslOPXI8cEPXpMHQcC2lLF5i0Tre5hi+itZPup9ZkOT/i71l
 03z+kKPUzI9/IWdsdpd/+aVv5JUDgpWmppaknlDF6rEtcoAZYRekmPDxiJFwKsHHVBNe
 Pk1STCXklmKlfbvC7Vb2gqGjGyuR3LvdgHdH/7eeAkH/77ZQ5xujnQr5cj3h1O0wz0HT
 7sJXo+sX8DZ2BSdM+MA6nWkZRwJ1ugywnjN1BiOq9+TzSAZzf0z3sK5I8+zUzlg4M0VB
 3KHA==
X-Gm-Message-State: AOAM5338m5jPqPjb5j5aCnkcvwGa8OjpG1lWtEL+80sLIrXYwBtVwHpi
 czMFUaCkSCehuegGASmmcQ==
X-Google-Smtp-Source: ABdhPJwz8IpgYskPYVVDXd8Hm6lcmXvWy1o3h4wh8B+dYaiYsY9n+91H5bL0oPXDn0Bz3Q9J61mRvQ==
X-Received: by 2002:ac8:5881:: with SMTP id t1mr2510729qta.414.1640098774575; 
 Tue, 21 Dec 2021 06:59:34 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id e14sm532762qts.15.2021.12.21.06.59.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 06:59:33 -0800 (PST)
Received: (nullmailer pid 1408248 invoked by uid 1000);
 Tue, 21 Dec 2021 14:59:31 -0000
Date: Tue, 21 Dec 2021 10:59:31 -0400
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
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YcHr0/W0QqRlj1Ji@robh.at.kernel.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_065936_189206_343BD863 
X-CRM114-Status: GOOD (  16.71  )
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

On Sat, Dec 18, 2021 at 05:10:20PM +0300, Dmitry Baryshkov wrote:
> Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> different set of clocks, so two compatible entries are required.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> index a0ae024c2d0c..0adb56d5645e 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> @@ -15,6 +15,8 @@
>  			- "qcom,pcie-sc8180x" for sc8180x
>  			- "qcom,pcie-sdm845" for sdm845
>  			- "qcom,pcie-sm8250" for sm8250
> +			- "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
> +			- "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450

What's the difference between the two?

>  			- "qcom,pcie-ipq6018" for ipq6018
>  
>  - reg:
> @@ -169,6 +171,24 @@
>  			- "ddrss_sf_tbu" PCIe SF TBU clock
>  			- "pipe"	PIPE clock
>  
> +- clock-names:
> +	Usage: required for sm8450-pcie0 and sm8450-pcie1
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
> +			- "aggre0"	Aggre NoC PCIe0 AXI clock, only for sm8450-pcie0
> +			- "aggre1"	Aggre NoC PCIe1 AXI clock
> +
>  - resets:
>  	Usage: required
>  	Value type: <prop-encoded-array>
> @@ -246,7 +266,7 @@
>  			- "ahb"			AHB reset
>  
>  - reset-names:
> -	Usage: required for sc8180x, sdm845 and sm8250
> +	Usage: required for sc8180x, sdm845, sm8250 and sm8450
>  	Value type: <stringlist>
>  	Definition: Should contain the following entries
>  			- "pci"			PCIe core reset
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
