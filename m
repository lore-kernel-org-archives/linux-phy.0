Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1033CC001B0
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 10:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4GM9Wf2b+IDgDw6QnEJIM92oPZes23v9CVzPvBf50s=; b=UdqoyBTCUrRu+g
	Be86ZCk0svWxTLQt4/bxesDHJFQjG3XZyKf0VrQcvuKgbZvp46RoTXB35iBI1o5rIP7vS6BhUtBOK
	5zvsROSsm/nhp7auIAOZU0gdyNuUiVMVO/UGDxTtVAn9DZVQfBxJUzTu7HFUcPkAl67lQpzrxw44d
	+tUM+2atHV0F9on6yEc3UHiuSLGJNi3oFziSHeKmfEvgOs1a5lxPHqtcKCyq8GON7YvY3hqf93/U3
	wLAuj6U5rE8oFcoM5qYA9r7rcGW0QK+IMv/o1VHqZE+IloJvWPeG0bvSLUf+dPMpQoCIGMr8jTjJ/
	DhdBzA9xvSJQmYORUp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHLo3-0019QQ-2J;
	Thu, 06 Jul 2023 10:01:47 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHLo0-0019PD-2R
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 10:01:46 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4faaaa476a9so636804e87.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Jul 2023 03:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688637702; x=1691229702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XT60ydGbek1AFjPkAEjevV8MYxSepx4EylzL/gQ0j8Q=;
        b=teFm+rkwOF4Fscx6FU5McwhsHg+3oRElnEWE9vJpbTvsJ92FFxKspLKWyi3SnfdOyn
         Q77e4UPLlwWG95SIw0plNmt/BGzuYK5MKz3mLAGUnODGEvu7xhULrbzoeA9eF/5cLAqs
         LWvIGAVwI+C0wG5w0SruZQ7MavLr6QszRrzLlgAnKfnAzO1GP718EIK602Rjhm9D+tgC
         I2pinO5tdVG7BX0tBYR+q/7Dbd9oEYQJ3QrAL6urFjqP+S05NzKckDgD9a0h1F8nSp7V
         1vYaHT6kkSEFWuvPHAAkC/gGZLot4KOpth2/XZRS0YjWgGcWvOLXdX4c08n3eAEdFWVv
         HNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688637702; x=1691229702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XT60ydGbek1AFjPkAEjevV8MYxSepx4EylzL/gQ0j8Q=;
        b=K3Y8vzsudQQ3PeJuAq72Vk4i3vsx7A8hSHN2PxJOluzdT+1ORQCVGVoENfMfFDct3g
         rIDpfq3GeBxC/YG37LOkSSYYIkYT0AOsoU81Tmbczrb6c03Ogf5CV7pRBpZjQU1q4Gwp
         0BbM+BuUrF24M/zqNLV2yE7FDTNSWVF2ck3oJKm1QaCo9Kk8OESZ/GNXoFG7C4TlwYoo
         yWUBE+19Bj83UBb4mykWLc6fLqijzI3RPGgXMCTU+ij3dz/lYe+1F29YicAVGSia91yZ
         eqFOQz66HjF8lsToe4Mre9kwIiOI+NIGpxqu9LxVcQAoJH2vOYwz/hwjd8I3ziMQcxYg
         E6Hg==
X-Gm-Message-State: ABy/qLYrFFCPGKf+NrgL9/uvQccDeXgP8NpR8DTgLBMVJnUSx1j3baFd
	ZAq/jHaf7An+ml9YrXd9zTz1rg==
X-Google-Smtp-Source: APBJJlHtbIbK40+kpbF5561nZK98zdUI+BAnFKMpIjZfYgqBtLSrABL4QxB7dMwedNHt3vfsOGhFsA==
X-Received: by 2002:a19:2d4e:0:b0:4f8:7734:8dd0 with SMTP id t14-20020a192d4e000000b004f877348dd0mr1058895lft.2.1688637701624;
        Thu, 06 Jul 2023 03:01:41 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id y2-20020ac255a2000000b004fb88fffd19sm188136lfg.146.2023.07.06.03.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 03:01:41 -0700 (PDT)
Message-ID: <e31564e1-31cf-2cda-df6f-6210e6a1c1fc@linaro.org>
Date: Thu, 6 Jul 2023 12:01:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 5/6] arm64: dts: qcom: sa8775p: Add pcie0 and pcie1
 nodes
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_030144_816310_D97FD671 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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

On 5.07.2023 10:17, Mrinmay Sarkar wrote:
> Add pcie dtsi nodes for two controllers found on sa8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---[...]

> +	pcie1_phy: phy@1c14000 {
> +		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
> +		reg = <0x0 0x1c14000 0x0 0x4000>;
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_CLKREF_EN>,
> +			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> +			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPE_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
> +
> +		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
> +						"pipe", "pipediv2";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
> +		assigned-clock-rates = <100000000>;
> +
> +		power-domains = <&gcc PCIE_1_GDSC>;
Please check if it's the correct power domain. I've heard that the PCIe PHY
may be hooked up to something else but have no way of confirming myself.

Konrad
> +
> +		resets = <&gcc GCC_PCIE_1_PHY_BCR>;
> +		reset-names = "phy";
> +
> +		#clock-cells = <0>;
> +		clock-output-names = "pcie_1_pipe_clk";
> +
> +		#phy-cells = <0>;
> +
> +		status = "disabled";
> +
> +	};
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
