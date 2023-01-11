Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E90C46467
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 02:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMT/wCFN82/QQr1E1xiwIrR6Bl04H8nv6PHJ/mdwm3c=; b=KX4bOzHTN1E65D
	6z2PMYyinhkTpvvADq2slIiyxENxkgP0gA4U+vrl3ltolpH6Irk58uAUIwyu7Hnrqp7RftPF5nhQ4
	aA7dDdDE+zYxgN3+64ZM71MnY/yLdnGpr/J+7bF9W1r3LHvCKoAfgV/0qgK+rinFKj/NxcaPSPW2d
	suB5Bz2QEtKOldSge726noFs7OMD0JSHXa2pg/rkpI7LfLrzks1rvf/v5uSsx1uMP3GgwB9zzfU4x
	VbfzvqPelVQoq7Venc19jr+ts6tpqFtbVtaAhWYJKOhbUMVECkiBVoeTWTWkq5hydnZOCMt89jXfW
	0dTU0SZLIyTb80BpD52w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFRFf-009LQl-2q; Wed, 11 Jan 2023 02:54:07 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFRFb-009LOJ-Pr
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 02:54:05 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4NsC1T30dGz1S5Ff
	for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 21:53:49 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:in-reply-to:from
	:references:to:content-language:subject:user-agent:mime-version
	:date:message-id; s=dkim; t=1673405628; x=1674269629; bh=8i4jmOu
	APCAp11p4DZJjHBlsAcEc2Uu0uW9fgZ3zFUU=; b=l2rt7HZQe1rwy8LwQ+mvR9s
	ghIi4RanvHXb5D/8oOnFQXPnDLRd5Eni5PfUYb2Yo0Ri2cmtTDD6WZ0b5jhqBSAJ
	5XzksWHGpEQrFkqNYAM/6XDHiQ/TypWOJZ2g5MxKLZQelFOPHKKdjvlsw8rH0r0a
	R+XSjrRYCBDSMeKihasqs0QTs5XmOlU+KKtSThmmwyZwJU8i3ZCplxt7AmQt7++5
	RV5Qn/AYGO2SpmPoniBX2GI5sjHsLeaFW13aZsxWggn6dSnICqgEgjrdO77I7N1U
	8D1Sg7XrfmSIVm3g74a/niYgEW1NlGtTwsZ5J5rtk017cJ70UN7qM8JQFZ7FoAA=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id qZjYnZE5JkFr for <linux-phy@lists.infradead.org>;
	Tue, 10 Jan 2023 21:53:48 -0500 (EST)
Received: from [192.168.4.25] (unknown [190.196.92.66])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4NsC1B5blwz1S4tq;
	Tue, 10 Jan 2023 21:53:34 -0500 (EST)
Message-ID: <f1f1337a-30cc-df3c-81d5-2daac61e874c@mint.lgbt>
Date: Tue, 10 Jan 2023 23:53:31 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 4/6] arm64: dts: qcom: sm6125: Add UFS nodes
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
 tony.luck@intel.com, gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-5-they@mint.lgbt>
 <475d3f2f-114f-d6d2-89db-465ba7acd0d6@linaro.org>
From: Lux Aliaga <they@mint.lgbt>
In-Reply-To: <475d3f2f-114f-d6d2-89db-465ba7acd0d6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_185404_051882_CFFBB933 
X-CRM114-Status: GOOD (  13.46  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 09/01/2023 09:18, Konrad Dybcio wrote:
>
> On 8.01.2023 20:53, Lux Aliaga wrote:
>> Adds a UFS host controller node and its corresponding PHY to
>> the sm6125 platform.
>>
>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>> ---
>>   arch/arm64/boot/dts/qcom/sm6125.dtsi | 57 ++++++++++++++++++++++++++++
>>   1 file changed, 57 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
>> index df5453fcf2b9..cec7071d5279 100644
>> --- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
>> @@ -511,6 +511,63 @@ sdhc_2: mmc@4784000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		ufs_mem_hc: ufs@4804000 {
>> +			compatible = "qcom,sm6125-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
>> +			reg = <0x04804000 0x3000>, <0x04810000 0x8000>;
> You need reg-names for ICE to probe, otherwise the second reg sits unused.
>
>> +			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
>> +			phys = <&ufs_mem_phy>;
>> +			phy-names = "ufsphy";
>> +			lanes-per-direction = <1>;
>> +			#reset-cells = <1>;
>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>> +			reset-names = "rst";
>> +			iommus = <&apps_smmu 0x200 0x0>;
>> +
>> +			clock-names = "core_clk",
>> +				      "bus_aggr_clk",
>> +				      "iface_clk",
>> +				      "core_clk_unipro",
>> +				      "ref_clk",
>> +				      "tx_lane0_sync_clk",
>> +				      "rx_lane0_sync_clk",
>> +				      "ice_core_clk";
>> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
>> +				 <&gcc GCC_SYS_NOC_UFS_PHY_AXI_CLK>,
>> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
>> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
>> +				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
>> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
>> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
>> +				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
>> +			freq-table-hz = <50000000 240000000>,
>> +					<0 0>,
>> +					<0 0>,
>> +					<37500000 150000000>,
>> +					<0 0>,
>> +					<0 0>,
>> +					<0 0>,
>> +					<75000000 300000000>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		ufs_mem_phy: phy@4807000 {
>> +			compatible = "qcom,sm6125-qmp-ufs-phy";
>> +			reg = <0x04807000 0x1c4>;
> Isn't this too small? Downstream says 0xdb8, but it's probably even bigger..
What do you think could help me find the new length of the registers? I 
tried 0x1000 and it probed just fine, but I'm not really sure until what 
extent I could push it.

-- 
Lux Aliaga
https://nixgoat.me/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
