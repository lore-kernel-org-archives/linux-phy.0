Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F913D149EC
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 19:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qjQI+2iOg8ph9AhGn7133CCM9fD4sD/M6dm+sKOeZM=; b=M9kt8HQJ4tZiHa
	ojh4YZatDF3lOCjRRx3Wws554ecwzSFVehvrRDhqkvyG78w6VvUXrCMM5b9WfEHo801PbNl2P2Gm4
	i+A128+/Pp1Vq9uuty/ujUL4Z6Gj3b0b7Azg3xog63AGV0FsZg4FnPsFH98l0QMW1P0Y76ofJqKRn
	K3LKd7KA3SAAZSp9IW0GGnY7rvuVSRYMtclddBZhLSDRSX7KNMwe8U+4yiDedtUlQsNbCVPAkBkOP
	Tgm3PUpLfokgiR4H1LXDVgEr6vY6/vc0F+lWIs43IXw9WLRSZ7vhMmu37yxEbqCf88upejIBIcTm6
	sza15o57nhseyMX3xDmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4QP7-00000005355-3h1q;
	Fri, 25 Oct 2024 19:55:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Pvg-00000004yP1-3TSU
	for linux-phy@bombadil.infradead.org;
	Fri, 25 Oct 2024 19:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MVK7yFV+LSKHjauEJCgphRRBdSUgRulvWMCx8A+MGTw=; b=GyRIROG7HrAxYjaM9ZvgkGPdb0
	QDzGwPVaj2Nv+IVGnGPQlY05KmiTY31v5Acu0Od/AnIEEUr2V9y4u/7imD1G38DXMUqTDUZWCO3F/
	ZLxPKXTlgEPEWXrkVMhfamV1dYkMGJ0OwfhuNMVAfUtPKgeUJikDqsoQU2ktg9EPY4H+SXSDn2BP6
	bQ5T8+GeL+3+etp83CP+QXpppg9nBkdEgTny/dQBhVqEVOzltDOIsd7/SXTf6qK4y8JNBcAoUIu7n
	XWVus2MHPKKogdFdkk4WJ/TRkpNxd+5AlcXnzusYMPqV0IIEay7BImnzftGa1ACPuPcVp0qxb5/9B
	Qi9nFRgg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Pvb-000000092RL-0hN2
	for linux-phy@lists.infradead.org;
	Fri, 25 Oct 2024 19:24:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PAwqnf029454
	for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 19:24:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MVK7yFV+LSKHjauEJCgphRRBdSUgRulvWMCx8A+MGTw=; b=pilsUO3CatOHV8oW
	VU53v9FNxi70IZmBSiMwjHY4vFcl/0ngdFyqcE68VfhNIED8UbYaqZ5lXFRC7kMY
	g/HFKibekvyeDXm7pvqNopylvpKpz71EWVbfcGF40RG1Q8Jx15bYDLhEc5uFEXkz
	jplBfOFsd4SsuwdVo5TaNopXKcZigxACA8YilqmG7Pz3Zyf8LDQO5v/JpbgQQcFY
	2cXIpSs7LZjIXJ9jB/VdPZJ/FWG3I3UiK3SEIFdm5tN2HkDj828cvAklz/DLjlNR
	RUseSQ/rVv8RevAfLcIXC2UnsC2zey92nTyoCi9qIECUqFGpXKmV6JmrWIhaA+sI
	wcbMqw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wa6fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 19:24:51 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbe5e8658fso4735866d6.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Oct 2024 12:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729884290; x=1730489090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MVK7yFV+LSKHjauEJCgphRRBdSUgRulvWMCx8A+MGTw=;
        b=mV9Mn8jmeCITHR4cj5418Hjb/JQCxi13gxlf4C4EZODkfMEvKRTNZZul2Lq7fI20xY
         u3pa8DOjY1BWrZZiUvl/fcCPU0nEOnnm3B50j5YiSqiDMCHH/snwCsFW0dcPyXyl/I79
         JGUUew1OKDHnwSfnPi7LMePiuKAt6AsR0hlXM+bDTGE1ZggMhMrnVXmHLAuA6IIMWlJA
         6P7if6nIK5diGeLKZeSdO3JqzFDRxoLzb3h55W8TKnEx+9qPUhuJHSKzi3xTt7yQ/zrD
         k2T8h7ES84t3f5tswSoYB1njXagw+YYTFAPov/6lGAVnYYPEdSPuapUXNGQaqhTmSLkq
         TXHw==
X-Forwarded-Encrypted: i=1; AJvYcCWSiVYfPaY6upaQJp6YVfiPBBWqp4Be/QjVO/XfHkyw+rTDHLkAnPcCrzzTgbnxFirS+jz/+bDwvBY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2WQV2MKhe3haCaUTvns8uOdDjXYLq4S4FEwFtOQRiv1jXKl8q
	W974iMyD9JpjKP8jIBTCIbX4mWe2Yt3dE0wdNGD5JmqlpdxHFuMYbcFwu1aJMw3bLGaGfe4/syC
	yYG4UFKZKexAgOSCXgu5i6bIbWKj5tAwK0PlQcVcZA7DFa/MbAkH1P0Xs/zYDkd7r
X-Received: by 2002:a05:6214:246a:b0:6cb:bc57:d840 with SMTP id 6a1803df08f44-6d1856b5615mr3813256d6.3.1729884289991;
        Fri, 25 Oct 2024 12:24:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFLFymaf4R41fHwjqkvWTwAkfwHaKv/afK0j85pTCGuheLL7dDzp+Y9LhFBEJGXlVq7rzUSA==
X-Received: by 2002:a05:6214:246a:b0:6cb:bc57:d840 with SMTP id 6a1803df08f44-6d1856b5615mr3813166d6.3.1729884289641;
        Fri, 25 Oct 2024 12:24:49 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b307b5375sm99385966b.155.2024.10.25.12.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 12:24:49 -0700 (PDT)
Message-ID: <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 21:24:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-4-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017042300.872963-4-quic_liuxin@quicinc.com>
X-Proofpoint-ORIG-GUID: fS0UU5sc_KflGYWMVYegK4eAlF_G_HJt
X-Proofpoint-GUID: fS0UU5sc_KflGYWMVYegK4eAlF_G_HJt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_202457_232595_C05F840F 
X-CRM114-Status: GOOD (  16.15  )
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

On 17.10.2024 6:22 AM, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>	
> 	
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

+ Taniya (see below)

>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 74 ++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index fcba83fca7cf..689418466dc2 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -458,6 +458,80 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_hc: ufs@1d84000 {

ufshc@ would be consistent with other files in dts/qcom


> +			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>, <0x0 0x01d90000 0x0 0x8000>;
> +			reg-names = "std", "ice";

One per line, please

> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <1>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x300 0x0>;
> +			dma-coherent;
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "ice_core_clk";
> +			freq-table-hz = <50000000 200000000>,
> +					<0 0>,
> +					<0 0>,
> +					<37500000 150000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>,
> +					<75000000 300000000>;

Please try to match the order of properties present in sm8650.dtsi

And please use an OPP table instead of freq-table-hz (see sm8*5*50.dtsi)

> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,qcs615-qmp-ufs-phy", "qcom,sm6115-qmp-ufs-phy";
> +			reg = <0x0 0x01d87000 0x0 0xe00>;

This register region is a bit longer

> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			#clock-cells = <1>;

The PHY is a clock provider. Normally, it's a parent of
gcc_ufs_phy_[rt]x_symbol_n clocks.

Taniya, could you please wire that up in your patchset?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
