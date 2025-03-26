Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFCB2C36008
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 14:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8afPgevcXKfumuvNo/qTMbLhUqVPOuJKL4GJziqS4WU=; b=pXcrlXBcp+Fdxc
	IUusj7QAiiAchBFGv4oAnTkEll41SBMu77VTQnzH3pdyWkMN+CmaWCV2s0hQVjDzkrItdBN3hvo4K
	uKkA9LGRN8ATf09hAHOQ07gr7JiW+OK7WdnD9X38g2zLdILDsBEwpr0wuM+ejIDkmstiN8iKi6NIC
	LkUSixGRyCuknvynKXpv7t8FJKEBd24CfKV0zRCoZUI+wd+pRGSO0Is5KClmRweRu/TTeeYG47dir
	UkvBb9uUQaZSYxutPiKvVQxDkmS0HAXpSMB8EITlkKPTM3f50Cry3oefQUJes/Z8XcBd/u/J+KsMr
	gzEzwLZ8a0RHoowafikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txRMP-00000008dZ7-2BDX;
	Wed, 26 Mar 2025 14:04:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txR6r-00000008bIj-1qPF
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 13:47:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QA1kWp025399
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 13:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oAnsNYobYXGQyVT8GaIUO6lv6WY6ogscB1FdUtiA198=; b=AGfyAtIdcyTF6b44
	fjEmGfNn4kKFyBMbqgA1Khyhcjr7fUj8R8/6dxgDuD+5RcZEcrHwtEJW5J61YmSE
	PaUNe4URcczVGRQAwdomQ/nXXdV1uPu+PKvTXm88dj9f6rGrZ3hUHguZqC37ThNp
	4aPim4Oq9nN3EQdlO9/Qaj4hFCE8JpEDfYpR+yLRe+Hep7772WkfeFtNc2t673+l
	02+t91hPhUWLi9I8Dne7YcpqCzjzoQCz6IIxqeakDtx/wWd15kX+NbiMyAaxpPX7
	sqplzw+F5gdIs5ywuegZUjzR++Nkv7zAlE8f6JJQ4vNHNMwwT2DUeXSfNdT8/7gT
	YjG2IA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcgkv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 13:47:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so12457606d6.2
        for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 06:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742996875; x=1743601675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oAnsNYobYXGQyVT8GaIUO6lv6WY6ogscB1FdUtiA198=;
        b=gwc9V6eCilKwByioP0C7z+WRXMRqarZ4feHYoVYXr13ayYLKN0o5lZKTuIX07W7UOl
         gJXLUueKoOATVhdE2LnWImftGLe/jvht26UgnqMbs50f7nD07i0pF6XTTe98HMoamiCM
         LuDGY3P1J0uf6Ufk+Y2JbzLeN1TYrZURU5soaq0lmGMjGJ2o9TDCD3ci5KdJqAAKG0/4
         wyhNgxbBXyt9awYeX7x/eXEw4ZYXfp7Lk/AVeAnKnsYYu4T9JmYsxVQxK7kVv/w1xDZK
         USzk9+7hL4+NzhQTjDZ6ZaQ7KThxxqEQMDXwtWoPVv/gfeQ6j3hONz/I7+ZZmF0p/0Jl
         Q25Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHX5MYrWqwP6WU/h3VFnkBijo/Xf1a+9bReZSs4jvYVuSmh6fFa9ymZJXmikF9qhlLa+cyHB9m4PY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRu5yUu7roJ56T9SG2gT9b6OupFJBTaJP83T0lk8/ODif1wRN4
	Fa+KNAZded7lhR2RD7XImEP7S8YD/CYTeV1Ai1vsWGmVJ/q7RWCJXEn+TIn1F8AF+teUhmX2sGT
	FNL16189ueHftDnLjAoFlTSLZrQtOsqXhphcHeiANW+aZzH0qlbDtsIX4EVoqdtoA
X-Gm-Gg: ASbGncuIehL/Mkp9htvFygxdRs+eYpDP157yT6pi5D/GH9rmzK7Ap1Z21XdSdKihCrn
	wsgQlVnixFbe1S+iArwb4yMCzK2h9p6A+SJ6uzOn31qUvJtBZ+urUSVEkpjwXKZwy5mJWk3rk08
	P3GmFNOwdVWdRLVXfOU4lMgv70nAWLOxuSF/PUjcVD9qkroI9RILiqvKf7z+jWxNF2XMwfLG20M
	apPA57ynM26UYFTKbm8BhfmKIAH1Uz+100ukW0VihbrWEyUsyucY08YOfPFSEawqFL83qonylXd
	RN2TZvXlBPUBT3Re/6Dtds61oiC/5dtDOS1g/9bd+TcsdXPTOIXeSA1hiltaEGLIkZgG8A==
X-Received: by 2002:a05:6214:e6d:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eb3f31f775mr103660656d6.9.1742996874807;
        Wed, 26 Mar 2025 06:47:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFd5B6zyRzYrno4RuXc9G89CRxgNBc2jAwg6fxiQ+Jm/et41PRpGY6sCmOIsIZwNP0HOEUxA==
X-Received: by 2002:a05:6214:e6d:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eb3f31f775mr103660306d6.9.1742996874282;
        Wed, 26 Mar 2025 06:47:54 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef8e5128sm1034146766b.59.2025.03.26.06.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 06:47:53 -0700 (PDT)
Message-ID: <8b7151d6-e2e0-4561-954d-4a74126b4265@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 14:47:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com>
 <20250324-sm8750_usb_master-v3-7-13e096dc88fd@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250324-sm8750_usb_master-v3-7-13e096dc88fd@quicinc.com>
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e4058b cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=x9b32qiywL4GtknhJMwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: F74Q_m2xlEfayd3cdwoO4znd3C-GFB-c
X-Proofpoint-ORIG-GUID: F74Q_m2xlEfayd3cdwoO4znd3C-GFB-c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_06,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=844 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_064757_607513_859678E5 
X-CRM114-Status: GOOD (  14.93  )
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

On 3/24/25 9:18 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>;

I believe this belongs to the PHY, but the documentation doesn't make that
very clear..

With that squared out whichever way is correct:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
