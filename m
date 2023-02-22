Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 446A4C636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7su1tczckqsoAlEPxPh06NAB7/Q/GiAZHTDqlIiKCE=; b=HHYZr0mWrly1rw
	z/7XLGdE6yz9Ah0A7X0zprGC+uzsRA5eo65kCCwm1zUXcW/2gEd3pppYBv1ZfkuGZshuXs+5J9yNj
	15aB4woGivmzCgH/QRmo0OQIBtb7GXBouUJu9QLiZzytqNLAkzRAU0lq7/4lOKuAW1M6peMwZ8WDy
	H8nMoBd+jJQCZD+KxGjmYG5AfNLNvJAmpKcMrnYgzM3eeISqgjwKPDB4ZamtdgmyvfffTzThRTYQ0
	QX9QZKAf1dVFadbl1maIAx/03j7iyWEoGzCxewMwKksewTk3jo4/pRu/bpVYmwzx3Mr/Okm+wMuv2
	rIMYdsrTQd4kgSQQF/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFa-00D4wR-PU; Wed, 22 Feb 2023 16:45:50 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFX-00D4vS-Rj
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 16:45:49 +0000
Received: by mail-lf1-x12b.google.com with SMTP id m6so10915459lfq.5
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 08:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xf8IY83kNm9ZLdtrAMlzH0BWdysIJ0EtE4QkPWoDYMs=;
        b=iR9IHWtk+Ko+B/NToRrxElbe2NzAzxbQd3SlLe4qK4hFAoa91S/pZ0irPFW0tY0cQ1
         NqT1a8fELf4fKaC2XwpZN6Urq8yodxAkRfDE5e4hQa3tyP74cM6tOGqICfP0k491XO6E
         YeTUzilnoBUE2kPANVC0WyKX6hAwFNor1PGHNxn/J9SKveFZRj/TOwKlqo2JsLEbqTRG
         DWSwP8JBxhSm2yxzzerqHLVlMLvVpV7VymvkiY4Gg2spZd5CMGRqyL76OCQxBVJw5I1M
         p94XNvZ6FkuYBAs+xuGfy6piCQwPcuqnwJVVO+CM2ibczsv0j4hQ8WQdI0gtiOkCww42
         2RNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xf8IY83kNm9ZLdtrAMlzH0BWdysIJ0EtE4QkPWoDYMs=;
        b=T4BIkIbKd2ngwMo9hwaIYeN4qVEN4YEIiRnuwJvc9tatCqjvBOhf/x6BSNTgi3i4UU
         4ai2jOJ7U5t5cOJ6sXYUQotelrBaGXJBrH0kZBo1aeYgAdIJife13BYnzodkEsyTiQx+
         k8BKjdtQ6dvSrZItvpwwhoa6hETIKksDArVCoJptDXdlScjQVu56LhvtunOc0G4/+VC3
         1HY4EBFqPe62m9AwS7BlyyR/cLlIdi/awLrH4WhDm2VADQTVeeyZpktmf8uJL/bkeCyO
         MLMSRrq0hMNZtv4ii4I+HdPVaVbYQYukWk1kLkXI6nxrYJ0NmHnZ8OaWgoxcxsSoTq4C
         cReg==
X-Gm-Message-State: AO0yUKUEM5f25lUoxIwIGtoa22V3l+89CHpL0U96ZmKC1RIVvUvng5FR
	8cdG68wzxwV3yL4sbetOl5cF3A==
X-Google-Smtp-Source: AK7set9t/nSuuaKdA16dsR+NcfmJqnzDAcj0o9WtZkAkWK3/yNkQ5lBR2aCr8By5catJHiIdFRk8wg==
X-Received: by 2002:ac2:5582:0:b0:4db:2978:e32c with SMTP id v2-20020ac25582000000b004db2978e32cmr3141176lfg.11.1677084345809;
        Wed, 22 Feb 2023 08:45:45 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id w7-20020ac24427000000b004db3e03e201sm1013276lfl.6.2023.02.22.08.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 08:45:45 -0800 (PST)
Message-ID: <69259bca-5618-7590-07b0-494041d83823@linaro.org>
Date: Wed, 22 Feb 2023 17:45:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 06/11] ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to
 pcie_{phy/lane}
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-7-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230222153251.254492-7-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_084547_935966_8EE8C843 
X-CRM114-Status: GOOD (  14.58  )
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



On 22.02.2023 16:32, Manivannan Sadhasivam wrote:
> There is only one PCIe PHY in this SoC, so there is no need to add an
> index to the suffix. This also matches the naming convention of the PCIe
> controller.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts | 2 +-
>  arch/arm/boot/dts/qcom-sdx55.dtsi                | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> index ac8b4626ae9a..b7ee0237608f 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> @@ -242,7 +242,7 @@ &ipa {
>  	memory-region = <&ipa_fw_mem>;
>  };
>  
> -&pcie0_phy {
> +&pcie_phy {
>  	status = "okay";
>  
>  	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index e84ca795cae6..a1f4a7b0904a 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -334,7 +334,7 @@ pcie_ep: pcie-ep@1c00000 {
>  			resets = <&gcc GCC_PCIE_BCR>;
>  			reset-names = "core";
>  			power-domains = <&gcc PCIE_GDSC>;
> -			phys = <&pcie0_lane>;
> +			phys = <&pcie_lane>;
>  			phy-names = "pciephy";
>  			max-link-speed = <3>;
>  			num-lanes = <2>;
> @@ -342,7 +342,7 @@ pcie_ep: pcie-ep@1c00000 {
>  			status = "disabled";
>  		};
>  
> -		pcie0_phy: phy@1c07000 {
> +		pcie_phy: phy@1c07000 {
>  			compatible = "qcom,sdx55-qmp-pcie-phy";
>  			reg = <0x01c07000 0x1c4>;
>  			#address-cells = <1>;
> @@ -362,7 +362,7 @@ pcie0_phy: phy@1c07000 {
>  
>  			status = "disabled";
>  
> -			pcie0_lane: lanes@1c06000 {
> +			pcie_lane: lanes@1c06000 {
>  				reg = <0x01c06000 0x104>, /* tx0 */
>  				      <0x01c06200 0x328>, /* rx0 */
>  				      <0x01c07200 0x1e8>, /* pcs */

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
