Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D3CCFD63C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WN2xoxUU1CHbuqvjuv1TxM7N4i3DlFDdzWMpgDxGceg=; b=uFl2haclI9YRk4I9vvMwVF6V8R
	Mh/lmHdNY/f1XyUa3FbWDVpFlcLxjKbgBud8a/K2/7AbjVih92FICqNBOoFRcNf+axAs5HitNhjA6
	CtPEHVmwUe7k+6lVKWCDt+dxpR4rbWsoHJFgvOgoKd0OZ6i71ZtRC5OiRD+qGBdYTw1C1fB5U0lCP
	3x2PzdVoIegdTLgA86D5rL9Cncl8j+pE4qAeOBsp6LcW9FWoTZRQxukU1UY0zfadpBeTWY1nad82D
	RKCVfE9gHRP6hWifDr+2HVum+U/fwlg1HCfX3+HcKGTi0zTCQx6y+Jc1IulUx8EbAautyX3BQ2WnZ
	iG3nVB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTyl-0000000F2Hb-20Ag;
	Wed, 07 Jan 2026 13:53:39 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTyj-0000000F2HF-0xoL
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 13:53:38 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4775895d69cso10389015e9.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 05:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767794014; x=1768398814; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2PPmOlHHmb/B+RyLKIMZJ6qeJLZRe+/pRm6RubVwI5k=;
        b=npA09bxv5QfjbyNjnngRPy30cg0T4u52JdtiQL0jGH9oHzDUpsT4TDApKFZDtsJX9h
         m6YscEGCFqWq0/ZbQKKLk5pizNiSAMabBpFDWAt/knD+ZXA1vp+7Bj5jQUU5qa3HwR3S
         RpNhKWkllhVVUYC6GK/pwRw7F5wKHYDe8D2/+MHQBQJuN4bz6wDStNEH3UyGgaCoVur5
         FD9t5Ifp5SJcVzqQprmieqS8+o4ulmtxYu5Z/swGcD42bjWtHjLzvg2H7mz691JErD9o
         Te/i4Ojp9YOtp+SENJ06F7eoo+azR/VQfhrZXrp9mZpBNVa5UU/JZ6RT4ziMy2eV6DWC
         53gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767794014; x=1768398814;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2PPmOlHHmb/B+RyLKIMZJ6qeJLZRe+/pRm6RubVwI5k=;
        b=c0DX04to5qQ6HXcKaZnQLVOvGv53m06rNZzzqGs6tFOOXspaAz39svQJ6j8YGExQoY
         bSB9otayAUNxogWU0ld62VROHehFXgozRh4xw3tGPdkV5C9Wdj6RHmvbqeJPDKIKaY6C
         WGxjKOw5zhcYZREFfC5BeCK0eSspOx96eLhC2KeKIv5l1TXNk3WzdZmw2fJbHRscztpZ
         5J+Qkb9Pd4UF4urBdxI2FYve7EGt8ZstWiQKOEC65kkaIXynhk3eipOs2z5jk6h6YfjK
         Ca2EIhTAzRZtzkiljbGZ8hklReL4+8sHra2NCw2WZQ73xJ7BfnlcbahdzSoJxAqngA9a
         dEDA==
X-Forwarded-Encrypted: i=1; AJvYcCW59xTyRu/EMonV/r7H3BgArMve9ZmXnXiO/45Qj27B6Su0whuNqv5dJb2Y4gHLzI/j5EG9Ob8duAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfO3WSG81F+Fk8QoVzpEntRmjiGEkRZcJZ6a6OijfgTvJ8sEAO
	h5bAMifeMvwYLuusMRhyQRJ6fL7sWHIHQuNcKRuZ1xiXjoyke1TPy24Wg3Ll5fcmYio=
X-Gm-Gg: AY/fxX4sjuE7BxM7WWu+lDgjPFSg45/XlrOxanfzc7NIYMBKRG2Ea6GbpRvXPp3/gOJ
	zFWOtRugfmN3Kiwi99vJl3olfkQ6l+FJOmTa5cPaXmge9bQKg4Qd/74f5fKM87/EX4SkOm8dHVR
	UKYm+01xuxL6qSKbvIc56B46iqN3pXV2KF9fbd4lp0O7KmWqBJussN0E+rgtBynrq2I7pZv2dr/
	9/Dvcygg0Ky4SJ/qDEkFPiHNAcunvdcS8OauGXSCjOChyNjGRl6PTDqXR1mgbMDdI7UvCkRVf9L
	jKASmbxOY5C4pBSFcgETeN0ONbxyEkVUvSuyGivxXTRLOp2mxyrbABq83SHJntb08Aazu3XNmYR
	UDkS9m47YeqdbnAp/8AxI+loPG4uy6jViNxzyU8xJd047J2O/ttPuWXPSiN5wBKvsWY/yT0/uj4
	jNWyEpNRd7rUT1tXv1m3cagp+gNiIHivxlOBjU7ZTnORAp3q2hjauSDfU/HQF3rtg=
X-Google-Smtp-Source: AGHT+IFUA5vh7AafgOW//OBUIb/fgC/LgcjIFr0sUp94lRbcr5Desv09dz0w5OtTNI6i8HI4JrREVQ==
X-Received: by 2002:a05:600c:1f8c:b0:477:7d94:5d0e with SMTP id 5b1f17b1804b1-47d84b40955mr30210945e9.27.1767794013703;
        Wed, 07 Jan 2026 05:53:33 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:2542:a09c:d0d8:7a1f? ([2a01:e0a:3d9:2080:2542:a09c:d0d8:7a1f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d86637b90sm15127055e9.2.2026.01.07.05.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 05:53:33 -0800 (PST)
Message-ID: <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
Date: Wed, 7 Jan 2026 14:53:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
To: Luca Weiss <luca.weiss@fairphone.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_055337_310788_694BCD9D 
X-CRM114-Status: GOOD (  13.38  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 1/7/26 09:05, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/milos.dtsi | 127 +++++++++++++++++++++++++++++++++++-
>   1 file changed, 124 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> index e1a51d43943f..0f69deabb60c 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -797,9 +797,9 @@ gcc: clock-controller@100000 {
>   				 <&sleep_clk>,
>   				 <0>, /* pcie_0_pipe_clk */
>   				 <0>, /* pcie_1_pipe_clk */
> -				 <0>, /* ufs_phy_rx_symbol_0_clk */
> -				 <0>, /* ufs_phy_rx_symbol_1_clk */
> -				 <0>, /* ufs_phy_tx_symbol_0_clk */
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>,
>   				 <0>; /* usb3_phy_wrapper_gcc_usb30_pipe_clk */
>   
>   			#clock-cells = <1>;
> @@ -1151,6 +1151,127 @@ aggre2_noc: interconnect@1700000 {
>   			qcom,bcm-voters = <&apps_bcm_voter>;
>   		};
>   
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,milos-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&tcsr TCSR_UFS_CLKREF_EN>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,milos-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&tcsr TCSR_UFS_PAD_CLKREF_EN>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &cnoc_cfg SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			operating-points-v2 = <&ufs_opp_table>;
> +
> +			iommus = <&apps_smmu 0x60 0>;

dma-coherent ?

and no MCQ support ?

<snip>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
