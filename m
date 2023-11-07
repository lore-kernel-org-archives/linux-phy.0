Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A94C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 18:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XATeS8/CXJ7b9GNNAzyXyUepaSBYZDmjKJzlZi8HJJI=; b=CK5mKwJ1ZpIRAC
	mmeH8lryIOZlwpGueiz6v+oPSZoYIjPN/SYXRp6SwwXVjoEXP7nj2NHM/zYQ7eCRjSC4lbpADeDGX
	XZxJTG19amNjL11dzBK8/7w9rdhGIVQR8WrjutuB5uCHaoWfIYbY94U5fl2bXx11rXYkk4CJsQiCc
	XdWEWETLdZTkSlzeFahm3wQxHo9BoLMwJgJds8L2kmUQITWk41gY1B0q4rgTCYhaimzVBhHYtljWJ
	djYTGiFnRzm7YqlKmFYTbcABHbNqGaAIJt37eFfPEmhztq+XuQjCXkjuyS1VCdLecBlPVE4JOpIeE
	zx3GuZoJf37Q15PmT7hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Qxm-002CeW-0w;
	Tue, 07 Nov 2023 18:38:10 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Qxi-002Ce7-2o
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 18:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699382284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=InIrBHm4KFm9lYj657uNMT2gFwfHIWbZC6mGLJVc7tk=;
	b=Umn4rqvaAlcDonWRulptHR4eg8aPnNSdMChfP0Df7sviXoS1O9iWeHmYQdBnf48tMFnm6a
	Dl0I0Mn4SVTgRsNAeGyRzirm47E0hG08k9zHHytybYht6A33r5z3KC+65/QKqReyYFYzGe
	0MCxSRYTdJ1fafTF29lE8Bk+gjxjYy4=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-481-MMPpNtsjOV6yXQI3sSexjA-1; Tue, 07 Nov 2023 13:38:02 -0500
X-MC-Unique: MMPpNtsjOV6yXQI3sSexjA-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7788ea971caso648110885a.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 10:38:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699382282; x=1699987082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InIrBHm4KFm9lYj657uNMT2gFwfHIWbZC6mGLJVc7tk=;
        b=KwWGScGLe9X2PKGVjrUZ7JGGCcHdQWnPH4Yt6lGA3hU/twzSkzRpLKKnBsaXHXP9zC
         5VGUv8zgh7Ng4QYHRc3LmmJI+6hxGi8tG1e4lv+lZ3IS2uHpSXMdo4C7F7rg2UdEfDdi
         YPl0B7+cmO7sgE5ov3RHczhrkTMJKCmAuVnE7WN1OK20FN+vmTktn7Y6wHrW65PmqiqX
         uO7jrivn074QAi68y9xD09/SQzsd8rUqZQa4bYvx/R9nMPI25KlmsHLTo3PpzsgtdMAb
         pc77h5gtaKsv7xqBpTzNjYrG1u4THINEtdkdLWNPwci9PPh0RLIEVH/XyrhbDaoZKCAL
         T6Bg==
X-Gm-Message-State: AOJu0YysY9Ax6PTi+nVejokyKlm1x8780wweRoU5oRsuz/aQMnXiT58a
	00ko5adXzB+bG8pnm18b7VKPD3pfqwyzR7BAwr1BxXoeYwpf5H03jPynf4M8tGSAWs4XxiezoYu
	ydQAidV11W45fIrLc4dUjn7DBYg==
X-Received: by 2002:a05:620a:1373:b0:778:912b:6014 with SMTP id d19-20020a05620a137300b00778912b6014mr29659775qkl.37.1699382282145;
        Tue, 07 Nov 2023 10:38:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFLmjKNv/RxgHklKcgSXkz+1uBlm0nE2/KM8eT7xeJCPC73MWGdrxaRj8lE8j078oEsKC3SQ==
X-Received: by 2002:a05:620a:1373:b0:778:912b:6014 with SMTP id d19-20020a05620a137300b00778912b6014mr29659755qkl.37.1699382281862;
        Tue, 07 Nov 2023 10:38:01 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id g12-20020a05620a218c00b00767da10efb6sm153350qka.97.2023.11.07.10.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 10:38:01 -0800 (PST)
Date: Tue, 7 Nov 2023 12:37:58 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org, 
	robh@kernel.org, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	quic_parass@quicinc.com, quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1
 controller node
Message-ID: <i3yum3wbko33jwn7tfbcflpcxe5k5j5ituhyxtucx6gk2bs3gz@7ncewfmepnai>
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
 <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_103807_003915_EC9FB205 
X-CRM114-Status: GOOD (  18.24  )
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

On Tue, Nov 07, 2023 at 06:34:53PM +0530, Mrinmay Sarkar wrote:
> Add ep pcie dtsi node for pcie1 controller found on sa8775p platform.
> It supports gen4 and x4 link width. Limiting the speed to Gen3 due to
> stability issues.

I wouldn't mind a bit more information on what "stability" issues
entails! I'm a sucker for details in a commit message.

> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 7eab458..acd7bd8 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3732,6 +3732,54 @@
>  		status = "disabled";
>  	};
>  
> +	pcie1_ep: pcie-ep@1c10000 {
> +		compatible = "qcom,sa8775p-pcie-ep";
> +		reg = <0x0 0x01c10000 0x0 0x3000>,
> +		      <0x0 0x60000000 0x0 0xf20>,
> +		      <0x0 0x60000f20 0x0 0xa8>,
> +		      <0x0 0x60001000 0x0 0x4000>,
> +		      <0x0 0x60200000 0x0 0x100000>,
> +		      <0x0 0x01c13000 0x0 0x1000>,
> +			  <0x0 0x60005000 0x0 0x2000>;
> +		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +			    "mmio", "dma";
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> +			 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> +			 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
> +
> +		clock-names = "aux",
> +			      "cfg",
> +			      "bus_master",
> +			      "bus_slave",
> +			      "slave_q2a";
> +
> +		interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		interrupt-names = "global", "doorbell", "dma";
> +
> +		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;

I keep seeing Konrad requesting that we use the #define instead of a raw
number 0, i.e. something like QCOM_ICC_TAG_ALWAYS (although if I'm
reading that correctly QCOM_ICC_TAG_ALWAYS doesn't evaluate to 0, so
make sure you pick the appropriate one).

> +		interconnect-names = "pcie-mem", "cpu-pcie";

This is nitpicky, but unless someone told you to do the whitespace
between some of these properties I'd get more consistent. i.e. reg and
reg-names has no newline between them, but clocks and clock-names does,
and then interconnects/interconnect-names does not.

> +
> +		dma-coherent;
> +
> +		iommus = <&pcie_smmu 0x80 0x7f>;
> +		resets = <&gcc GCC_PCIE_1_BCR>;
> +		reset-names = "core";
> +		power-domains = <&gcc PCIE_1_GDSC>;
> +		phys = <&pcie1_phy>;
> +		phy-names = "pciephy";
> +		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
> +		num-lanes = <4>;
> +
> +		status = "disabled";
> +	};
> +
>  	pcie1_phy: phy@1c14000 {
>  		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
>  		reg = <0x0 0x1c14000 0x0 0x4000>;
> -- 
> 2.7.4
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
