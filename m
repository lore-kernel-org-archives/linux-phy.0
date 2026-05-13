Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAAA9CD4851
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 12:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca3H1tCou3XKknBuTqBlubK0SX/sOPjh8y+d3IDoLu8=; b=GLRBWoIOFYOHwp
	/RlDH/1qaJAka7jDmrM5V7c4GwdI/GT5IwcE+s0iclrC8FBSKt3LoNO0j+i4X/FluS+bFk/dTEoYD
	f5sgvxTo2J5jFCdAmThn9P5ajLbx7082/H5DI2xcSGziYmlg6fHAmgnGuajqR7UpVtM3sAeeQiV/L
	RtliFJ0lEmcWsLPwrPhWU4i257IP+89Upb0CdxpEgOCV9xU/BCQeFjVYyDGJgIK2SkktdBxk9ZkNf
	aojAFQ6cK+Q2PxI1Dv3QhqBkENo1h9ODZeokg/CzhJiqEJwMbQU+Tix6d3D5MDLh0aM6z2zSSJahh
	M1OblpBdz6bsUHgo1DMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Jw-00000002QWG-1aKY;
	Wed, 13 May 2026 12:04:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Jt-00000002QVn-1wze
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 12:04:10 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DBKfXP3324682
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 12:04:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OV9Khvfl40DlHcmGDuk2UkcX
	+giPUcBv3DS5kP7UOsE=; b=ER2fh0uC67lfhAc7TZFl8mYdYi8OjdDillN91uXr
	JnMCSGaHxIHKpxsm+pYYg90tzH8iqDPH+0ckJbL5rkac3+k1JdYQXnsollO/K+fH
	emchE2H3mdEoYqI32YgOqL1D72M8ZSXjaNRabk93PoRZJvXqAQl6tSyniKOFTWnN
	KOkrKXEb7vAbqsVnC9rjdK+tOxAjILkP646VcA9AJMpQ6E+ZsPgKx5WaxmIcqUAa
	YAraIfUkohT5BB7qhZZqwD7/Y80ofZTiYwK8zMahzVNXzRXwhJ2FrtgYjqGOk4FI
	QVH+ZNMJu4N0eVzOW8f+kMx1Uiii9MM6JI1qCBohjjOlyQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4kvd9as9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 12:04:08 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-63146b7289bso8251996137.1
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 05:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778673848; x=1779278648; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OV9Khvfl40DlHcmGDuk2UkcX+giPUcBv3DS5kP7UOsE=;
        b=M84wLBQxma9B9YfaIi2H9d6pnF0xOt4isUGTiJd2SJm+q0WkJAL65yPZQyR88vfQ0T
         Tm8sihR+esXZd5HftR0JIFXX/xKHqa1LpMKddUypEssPK6hp49BvoIsJCIoIUepkw0kH
         LK1lh0SYXXB/Ndeswi2B2yfxbkeTeAl2VphNbTCdKbe5Ty4ge6Nhy+ZpdXOv5hUY4LBZ
         LO7rDeNOKBqc+BbbxBAZ/cBZwb/5FK2KkMp/a7bs/9mAOzKw9OyxrxyfBVgQS4Aq9hGj
         RVqaeEuAr4i8IyDRSRcY3bdFZRYwbKCt+Bqzrdfif2WTwYudZUv0fwC662sjUL2xxQsB
         6h+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778673848; x=1779278648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OV9Khvfl40DlHcmGDuk2UkcX+giPUcBv3DS5kP7UOsE=;
        b=lqRbUXzUM6DRgRNiAB1B+NTiusUqLijknZL9P/t1U9nkOLSuKpLjUkSM0fuPXb3UC2
         TG+cK5tgbsV+mQgAttN3fj3IkwAnQ33LYOe3/6qGccuDGyVhLaGPE15r6vOlHDC4RL2e
         43TaBt7Wz4R7YUwiW3equQXKxFFi181cUyCTUt3lMpqe3+FrkmKmBR0amaumGxkUvtCI
         +k2YJk8j1GVxophKDymtHQZ/rXwJFjipVy3D0Z2n8MBCtyqxvYdVFXSsMKnNV87LGWOU
         yeMDiKl1YWwx2TWv64khk+hmfTod8PL1+BqMvHvLEUzz1cfs8Hja4NG+PrwDXP4342c9
         fIiA==
X-Forwarded-Encrypted: i=1; AFNElJ+7XO+h0jg9VAuQt4ZgfiTYSBwK1paYVgwjTXXt6Wpxmu7iepSWWX9eH/Q/9FlQNdlg7kTkCqp5xHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKfEJ+xq1eZTleUmi3EkCzDPPwHA1yMLflm4pYxb+7yNbGgn7/
	oAG8U1JJL+BA8GCliSGup93ikRmyrHn2fBHfTUnlG0cm+SognlQke52+TX9yXQfMpBxbF3ivnIt
	vf7/gGmHpg6WN7HiypU+1EGMIs0V8born7hxlriHsOdbkAaz02NvBTJMIImpr1Zt3S0T1
X-Gm-Gg: Acq92OG1WTMqKDTYyQMkyLK8fgyx23a7Lwc3wGAsL8E3V93EcMfV8c7WIpiN4uaX72o
	gDfFhN/AkEpZ3wo14EPLWWe3fCepM9DZV8wyokGOnI7xV3+gNT3MwLStYGE4rk92C6G7lRoAe7r
	acQ0+p8LvqPqy9/E7n+rWP/VPOnILLEcnNDgt/mFRUdCjR4ABgmBF8BL/WnAS0OL702fcvmVTHH
	La8wcRZwHNA60z2roGSjJCuWsG4gfY9/w+U3GzA7g9h7RuNrOSKeaB8aKlbkeuvPuh+sdT4Rg+6
	DoejV2JC578E5S1I8LPtWL5+QTGnjDBM48ckitV6fjLJZ9BFtG00412kWcHB0+/6O/GPj+0a1aX
	o35hz/9PH/JJRM+ez02qiPSAMnwBZpLE3ZTVninZ4yVP/sC9lDdJjZUNxxhGvuQoS9p4iSd7GpW
	TXQH3IR3PoAfvcmnH9CLmXVqAZ4XYpwP1qobw=
X-Received: by 2002:a05:6102:32ce:b0:631:4ad7:b367 with SMTP id ada2fe7eead31-635d24dc6f3mr3453053137.20.1778673847571;
        Wed, 13 May 2026 05:04:07 -0700 (PDT)
X-Received: by 2002:a05:6102:32ce:b0:631:4ad7:b367 with SMTP id ada2fe7eead31-635d24dc6f3mr3452972137.20.1778673846939;
        Wed, 13 May 2026 05:04:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-393f60db67esm40073641fa.24.2026.05.13.05.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 05:04:05 -0700 (PDT)
Date: Wed, 13 May 2026 15:04:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add Shikra CQM and CQS EVK boards
Message-ID: <mw2ipu5z26ubmrg6qe2v36cp6ktkqtbpfe3hmr434qdgm66nz4@pu6yy7hw4n3t>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-4-716438330dd0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260512-shikra-dt-v1-4-716438330dd0@oss.qualcomm.com>
X-Proofpoint-GUID: 3sb9OFtzgAihzyHPtMAtwaosYP6FLpVv
X-Proofpoint-ORIG-GUID: 3sb9OFtzgAihzyHPtMAtwaosYP6FLpVv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDEyNSBTYWx0ZWRfX7ijwijfRrjf/
 cGWsdWq5Gbq/ig4dd+lqKf3ZbGluAHAo35IblDoaahdyginGviIXJXmzR7HL/PltWCm5st3PDjK
 zxc7ilkUY0RYAIgSitGHPok3KSX8jAmf8lwlgscQnzgX4AmQDN+tjzwId7c4PS1VJ7kgpEHZY6k
 SqLl4U0n4ztIR7MHi2LONAl22L/fsgVTFdKmoPxUKUybqwu57nUrRQ/9/R5+j4lZBduvQIobCOn
 X02BkCIAIqYd86y94RkhYBCeRRWg/2mbBNTiMcGnpbXUBicFNnvDP4TDkZHBrXowrOFBCYD+8C2
 MQeGglu3AGoV4BMj0KB/LkI4djNjo8g1r6BYhpymniDu4EQ/cBRGmwvWfWJKAt5TjuF7oQxgBDI
 9zVa0m8BLHhft9NSBl45vzRWwVx5YiK65TozNRKgaprb04Ay/yGezqjIzFUBRRc0EaFam+ROKS7
 NHWBuKt4FrsFADtT9Eg==
X-Authority-Analysis: v=2.4 cv=Iu0utr/g c=1 sm=1 tr=0 ts=6a0468b8 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=YDnyACv__Rn18NothnkA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_050409_627676_CDD96E83 
X-CRM114-Status: GOOD (  21.66  )
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

On Tue, May 12, 2026 at 09:38:07AM +0530, Komal Bajaj wrote:
> Add device trees for the Shikra EVK platform, which combines the CQM
> SoM variant with a common carrier board.
> 
> Two EVK boards are introduced:
>   - shikra-cqm-evk.dts: pairs with CQM SoM (retail, with modem)
>   - shikra-cqs-evk.dts: pairs with CQM SoM (retail, board has no modem

CQS

>     support)
> 
> Also add shikra-evk.dtsi common across both EVK boards.

What is the split between shikra-cq[ms]-evk.dts and shikra-evk.dtsi?

> 
> Each board DTS enables USB (peripheral mode) with the appropriate PMIC
> regulator supplies for the QUSB2 and QMP PHYs, and eMMC with the
> correct vmmc/vqmmc supplies for the CQM SoM's PMIC.
> 
> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |  2 +
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 61 +++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 61 +++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 13 ++++++
>  4 files changed, 137 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index cc42829f92eb..6de783bcd133 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -328,6 +328,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-huawei-matebook-e-2019.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-samsung-w737.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdx75-idp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqm-evk.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqs-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm4250-oneplus-billie2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm4450-qrd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm6115-fxtec-pro1x.dtb
> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> new file mode 100644
> index 000000000000..12eeca84832c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "shikra-cqm-som.dtsi"
> +#include "shikra-evk.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
> +	compatible = "qcom,shikra-cqm-evk", "qcom,shikra-cqm-som", "qcom,shikra";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		mmc0 = &sdhc_1;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&sdhc_1 {
> +	vmmc-supply = <&pm4125_l20>;
> +	vqmmc-supply = <&pm4125_l14>;
> +
> +	pinctrl-0 = <&sdc1_state_on>;
> +	pinctrl-1 = <&sdc1_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	non-removable;
> +	supports-cqe;
> +	no-sdio;
> +	no-sd;
> +
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	dr_mode = "peripheral";
> +
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&pm4125_l12>;
> +	vdda-pll-supply = <&pm4125_l13>;
> +	vdda-phy-dpdm-supply = <&pm4125_l21>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&pm4125_l8>;
> +	vdda-pll-supply = <&pm4125_l13>;
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
> new file mode 100644
> index 000000000000..bc93282f64cf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "shikra-cqm-som.dtsi"
> +#include "shikra-evk.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
> +	compatible = "qcom,shikra-cqs-evk", "qcom,shikra-cqm-som", "qcom,shikra";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		mmc0 = &sdhc_1;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&sdhc_1 {
> +	vmmc-supply = <&pm4125_l20>;
> +	vqmmc-supply = <&pm4125_l14>;
> +
> +	pinctrl-0 = <&sdc1_state_on>;
> +	pinctrl-1 = <&sdc1_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	non-removable;
> +	supports-cqe;
> +	no-sdio;
> +	no-sd;
> +
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	dr_mode = "peripheral";
> +
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&pm4125_l12>;
> +	vdda-pll-supply = <&pm4125_l13>;
> +	vdda-phy-dpdm-supply = <&pm4125_l21>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&pm4125_l8>;
> +	vdda-pll-supply = <&pm4125_l13>;
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
> new file mode 100644
> index 000000000000..fae8c75b68b3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +&qupv3_0 {
> +	firmware-name = "qcom/shikra/qupv3fw.elf";
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
