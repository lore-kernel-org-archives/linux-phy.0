Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3B8C02188
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 10:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Suoi8+iuhiW/77iYyOCT4GWU1a1PgJ5Vg/YKp5yz1Wg=; b=VpJqJDYhfitn+X
	QlGTmGCiUmvUcCu2hwdGSfRFLFPe416ppDs5uhy/YJhJKo4RUySrdWMGSMjJyzgMnQ5wbQd2Knew3
	a5FWFAReyGUOZhO1MbDVinf/OXnqzQXx8o+pg+CLkxRRMtIAEGwwoNHISm8Lhi0OxypF78ycKA5B0
	HMHIJPAjeU6puQws/mNCkOoRP5v2h+qoWTtjs32V/KZwczI9H5HCR7afBPWXn4YLdMKgUa9wQVY0Q
	d2Es65xbOUMJMQU+AXcy4rnYyyDSIwoTax8K5J64PB+avygh/dt9t9DBoq4iZf/xiIHiOxV1DIIt4
	YaD3VzO//VrBqSsN/8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMHn-000000027S9-1ABt;
	Mon, 27 Jan 2025 10:24:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMHD-000000027NW-2obg
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 10:23:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R63XLQ021898
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:23:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGB5OVb68LNt8gE8AS+bpnEVv8dQ+ZWfbCKV+Fgql1s=; b=DJFwnw47aPPLlcK9
	HWN/KcRu8+0A34vgbRvLmEldSMPh61ljyB/ekcDy+FL3+geO6HqAyWgMRDuI0fYb
	yLY+szCFQQD60ymx13gFrE2Wgd+fapD/uLeu0jBCL4+cZCmcnujYIis3+SMoVj/v
	d0RHHqAZ8+IgKFt2juXwKcQrrCiZ2mp+Hbejtc5HTir3FdL7S5YIFKPNVYKiaQmC
	VZVoefqy5JaV8/K1eGqSln3oDHCSBMrsi3gz8/+JxdR/HvIxhfDGIDhnQp8NgtTB
	qIYLtgHRfUasMIxWRJO8KZvcwRTGmutW3QUbeAJNnP2aRo5QvnLRHTBdkHqBBSQH
	lJo43A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e4hvrfbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 10:23:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46b3359e6deso11545241cf.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 02:23:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737973409; x=1738578209;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hGB5OVb68LNt8gE8AS+bpnEVv8dQ+ZWfbCKV+Fgql1s=;
        b=AtNp6qUa/peYPE2VHXYrvMkX/ToZrl2W9McsqwHmVYp6XmeW7uj5/mGaK2ml1BkPiV
         DnT6boR3GUjQDW6S2E6W0eIHMUXaWkWBtmFRbS3aGiU86mCOpg4d9gux8rm+ptepIb6z
         Yd03ugBTj9kPgSF8gvA4CkRMzimeyGUBjzONOG0L+bBKBkwcTILidX6/qu/b8dZKt+qv
         MI+IYrprj7Y3iCjKfNHnl99fkH0zzZ1advsh6Kf44jFS8tp1QBAdxZpV3hEmlRK2HNzf
         TfzDUhG4E6DrwETEXDSk+8RYPZNoGi0iHlyiQd/J/0IcH9RtG7Ae4y9W1w4cD7o+KjxL
         Sh0g==
X-Forwarded-Encrypted: i=1; AJvYcCXJZmB59mwlhDDk8sR/9WVwm6NwnHWvgoyRKBRyVP5YT4R3DPPvPu6HM2YvrcXG2M4g6264uk+C/xs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIzGIVkcKgVWNmYzcLlpP2H4LfUxU7gFUtSdroamAyqfRXZMoO
	Udl2aX2yYicKSX1ZluNkkaTXVtJZGqt6Clvc+P37ufB87FTx4aXkSQVU5T0kZGOLrn2n35dQtG7
	jyhXs+u0y0XslgsbGcTz2hnZcKUz2sPeR3KCQDXfWrAMjbkhLlQf+ubp10oxrNUtp
X-Gm-Gg: ASbGncuT3T92YmF0qfWtBDBDXPga98UmapwS1nTtg9pY5XiE6zGBV63oOlpkAOl+VqT
	8GD14bPnBohohHDHxedYjsOjnKMkrA8xdZJyfunZc6pTPVZY6GxryYgdmzpc+8vPMzIvRSfhIFX
	OlRU577uuWcwsGDKtQCwr2do9PxMzbz+ofhqvsYaZnMnnrlBoiSpCRt40pgdeOZwyoxd8RMuP0S
	7wymxy1nhwyMTvYcnXwYgyJzVQkWwA8g1HPVZjs3K9FtDBlUAAEx+jjAm5HZvehlZSl/yByRUl1
	V02lh7fOl/GYoi13HNCbSriA/8dYprDdzkKr9kUFRVSSr+DZkbgyherUo54=
X-Received: by 2002:a05:622a:1aa0:b0:467:825e:133b with SMTP id d75a77b69052e-46e12ba1478mr227274691cf.13.1737973409387;
        Mon, 27 Jan 2025 02:23:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhhZmUefm+tAZLgJqV2ZW+k6GYLfZ7Ycaf8L6tOGjzPWuZ8gyIBxlMk/OY2hdBHc96AIiM+Q==
X-Received: by 2002:a05:622a:1aa0:b0:467:825e:133b with SMTP id d75a77b69052e-46e12ba1478mr227274371cf.13.1737973408993;
        Mon, 27 Jan 2025 02:23:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e11a1esm562672266b.33.2025.01.27.02.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:23:28 -0800 (PST)
Message-ID: <3ed5858c-3030-4edc-847d-28ff54ea5aea@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:23:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
X-Proofpoint-GUID: Xnv5grUuk6qLwHe1QFwsdvgQHgEbi_aZ
X-Proofpoint-ORIG-GUID: Xnv5grUuk6qLwHe1QFwsdvgQHgEbi_aZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 adultscore=0
 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 mlxscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501270083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_022331_837445_4576A0AD 
X-CRM114-Status: GOOD (  11.14  )
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

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

I don't see anything wrong per se here, just some style nits
atop the other replies:

[...]

> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";

1 compatible per lines, please

> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_LN_BB_CLK3>,
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
> +			freq-table-hz = <100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<100000000 403000000>,
> +					<100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;
> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +
> +

stray double \n

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
