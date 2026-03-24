Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A47F1FEC119
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 21:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bp/k/m74FlLMWfVQyTwcAJ/5xm5VAM5l71bOTtELVaQ=; b=z6OUL+iS2qgqeu
	vlSJ7aPrWIqMIT3Idr86dq0P0j77q/GfEGKGVWboP/qeMicock4KAJNB9+30MSrFLYH2fYOIk0BPa
	f+mYYry35iWAvon6Il1BtBRj8aL9EDCi4yaVEJ8YqDgm6NBnTmNpCo2GlkDAbE/u6meU0px5Lq4kb
	5zeP6ohuZG0tDymcqbiWWJRFjfZZBnGtx/NV6JCC6+X05cgm5w8EhwguoPjQjoFFeBuY+M8OsdtQ3
	K66MNa2Jb/ggM//4CGT3xx+MMH8wZkUEMJzBGTejcgbCm0KeRMK4Dy+MlK7KLArEAMxvBgGPjx4OF
	JWtG3vNHvLC8QODrwraw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w59Bo-00000002Fjr-17Et;
	Tue, 24 Mar 2026 21:21:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w59Bk-00000002Fj1-3Dad
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 21:21:27 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62OJCs4w104391
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v3FlVWLTLrlb7q3MsUEt7+4a
	cg5XbvcZD8bNL6gYowM=; b=UO23y/td6R8s5XAVb3aYpvq0RCAJpjAN+0xiNR0i
	udK2hvHP7x8GtjIz7+P+5vcjxtaBYpQzahKLUWGfJtzXzzUEolA03bdcnTdsZblN
	Hes7aOJy0WqMEI3funjFNjwiSG4I8KVBTR4mTV+sWzZCxu49B4mMV+Ak3Uywd4So
	6HXaOdam4zBGX4S5EU/jxoOgeWL03grrFFCxrMvyVvZh8sw1XN30mop4qYC2HThV
	KAf+7/Zn/JUjuoG3q4Vlcwc4WYGTXZZq4nzRptTHdH0FCj1E9F7xc7kWW7kDGR15
	oGiJMl2lYMP62PGdHWvYZaSnbDQKF+0cYufGs1DqyPqQWQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d3rf0jhsj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:21:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091327215dso299429051cf.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 14:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774387283; x=1774992083; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v3FlVWLTLrlb7q3MsUEt7+4acg5XbvcZD8bNL6gYowM=;
        b=JFsdBqew6vNE1uKpxQ5Be1StX9VPIZlhjAIY3+p5TGiA5sIoYDv9PnRb50dsbeTcFx
         18VsY2ZmlZ8soSUUD+POb/Xdkmi4AI19/Kat1KycEQhNxsNMYGIhAG0bfRvKrfl+Vw18
         dNRydMDkfc7bKw59B/fz982KFRwEgebY83zBRewMWYl+lmYzEif3zrC1HPrL/e/D0wKd
         RsdcxEQBsy0r8gzQ16sBHzLqb0GVSlJjS8IXTUErzRWt3gTX938ADcGPZBpMfvmCIs3Q
         1p4CaUKTJmVp4nV6imAyDKjQUdbUCbQO9il1de+S5txuC0cSp6IQPW5Fe7vjQDuh68c2
         gZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774387283; x=1774992083;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v3FlVWLTLrlb7q3MsUEt7+4acg5XbvcZD8bNL6gYowM=;
        b=Aozyqu7cdlVhoInQO1hep8L3I1dtKXJYtaJx8CEJwBbyC+gfUgqQGPptm5NpZKAwHd
         4CnbzjkVExzc3eFc1uDnL7t1FcYsND5zii3sh2JEBQmHwadqyAUArOjwid98MHPHmN45
         NWBBzfGlssi0cP3pxrB/4ifanIqyHeXJDMAVBf4jwKETiNY60y4FQjPPfSuVKs4Gp7uL
         /U/qHRM7nbuD6dXMXY9rw6o0OcviSZkOh0FJgn0tRD2+hg6xIFPH4XNzteg+tOaUsP1P
         5CrxjQCtn9PJW8c/fb5JNNvHJi0xJdbbZDFkU2VYvOMIVLrEKdTD1gB5IoPpJUDcbqsz
         3QCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWd7ujvJtK+5Q5ZkcoCXFVnGb5SCO4WAN7xTGOtTUyWRwF84NseH6UE9gUdJDyGTzbRs8qhlHQaI6Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxwt8PWmVfxtvFs1qbPkx18fdlsSww6g9rum3wxcjbJxxVkObVz
	YNeaYaLQk7/u345+mCJx27BnjklDcSf030+ml/kuAEstq3oBTdN81I0yaMPBd9cfa/mc3p+i3tC
	AlDJbQoM7fTzUiPfrAQyNZoLxw+HEWCTuTabz68oE2hUPP4u2YP2IdO3NRWqKskRGmVtT
X-Gm-Gg: ATEYQzyGOvH1S3dMfAdeG/Xse4CfHZvYGYFUy363GB0DGT6jGcvQf8iYBIgNctEbIiR
	u7mUjBU+8TV3ft40BrYX43z2x6QA7U5sYWeuIb2VDjFbE7z306tnr+YKc+ryrJbRkvaQQHhzhrS
	9Y0YXYTBqnbWhWrOlw+lYDHvS6pfqN6PtRHE199ug2OKkK/4HniLN6+njIqZDuqblfuBQT0ZXNE
	x3otHnMU9GU5cC/8d95krNtU5FMV+RhMpIexHSY/t1Xu+hxk2XvKYdFesoY+gdj/C9fhIZRac3x
	LZ0g8iAOmeJ9/n6ah1y0Sas+jvvga34Jq61hZwI0KY02C09Tb9rJ+bM6unXcghNmNU+E3tJxVLP
	9W5NO0jlkT2ENB4RF0fAUFPfsrdSQK3v+2i7+rsCJkfHHxFKg//TUobNr7cBBNyMMc5hgVSWxOb
	Uqcb6tFdJvtw4JOEITLRT08L2Is3TgTItxeAM=
X-Received: by 2002:ac8:4993:0:b0:508:ff31:47f1 with SMTP id d75a77b69052e-50b80e27924mr13854691cf.50.1774387282855;
        Tue, 24 Mar 2026 14:21:22 -0700 (PDT)
X-Received: by 2002:ac8:4993:0:b0:508:ff31:47f1 with SMTP id d75a77b69052e-50b80e27924mr13854351cf.50.1774387282388;
        Tue, 24 Mar 2026 14:21:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285207500sm3469740e87.41.2026.03.24.14.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 14:21:21 -0700 (PDT)
Date: Tue, 24 Mar 2026 23:21:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <odmf4zxf4p3luqimkbhggg6cyvjnlfhjsqsvpwpu5ctkviogrj@bmazfab5hb5y>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-5-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-5-ce0fc07f0e52@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI0MDE2NSBTYWx0ZWRfX1j8o7xWkPPUe
 AYnBumqkrxkKSS6wXO6TXbVm+fEmFXU7MoRJ8W0t/xoEF6aSwYYVrGyN1+/ub3wM7c1crriu0qP
 9dKRdkKs+2aNl/M+obIS2AA1oIlM4Z3tRAhbmLleLVCPe20mc+DI1J1EyQbALLx7zhSwPpMVQu/
 ylUhCgI25oRese5yF1B9So4X1QMjkFKhdfoGNgpfvK3/Xf1wX2y5SB5cF5tqY6ht4a/F1+Ivk6s
 +0M00VIxkYgMhG9yfVuBsDCNLKeELLVUwIsGdG319dEE7rR7SUxENhmiW+Tl7750/M58UpA6HMq
 f0nzwdUusTETQ9kSL6AhDSXeDYLJQfKzs0WZdNFicHXL4LtS/BnTqouwd/sdoN+jnnPLhU2amqp
 ugAzMAoxI2EuOVNTbqFi4lSUm4+3AukAM/nJoFtoRH9uohTL2ZEw5wAfsoJdGWENqwMxU35NqD2
 Geq414HAE3CQHcQI0ZA==
X-Authority-Analysis: v=2.4 cv=Ua9ciaSN c=1 sm=1 tr=0 ts=69c30053 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=Xl-en66mSFc_yb9iBTIA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: 3Hb2C97yTkygJZdJaoL9F4rs65palSn6
X-Proofpoint-GUID: 3Hb2C97yTkygJZdJaoL9F4rs65palSn6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-24_03,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603240165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_142124_922890_E1C221FE 
X-CRM114-Status: GOOD (  19.46  )
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

On Mon, Mar 23, 2026 at 12:15:32AM -0700, Qiang Yu wrote:
> Describe PCIe3a controller and PHY. Also add required system resources
> like regulators, clocks, interrupts and registers configuration for PCIe3a.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 314 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 313 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index bde287f645ee94116a489c55be3b7b80db3815e9..52104607a1713323fdfe2e7de710e38c1e22d06e 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -736,7 +736,7 @@ gcc: clock-controller@100000 {
>  				 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
>  				 <0>,				/* USB 2 Phy PIPEGMUX */
>  				 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
> -				 <0>,				/* PCIe 3a */
> +				 <&pcie3a_phy>,			/* PCIe 3a */
>  				 <&pcie3b_phy>,			/* PCIe 3b */
>  				 <&pcie4_phy>,			/* PCIe 4 */
>  				 <&pcie5_phy>,			/* PCIe 5 */
> @@ -2360,6 +2360,318 @@ pcie_west_slv_noc: interconnect@1920000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		pcie3a: pci@1c10000 {

Incorrect placement. 1c10000 > 1bf0000.

> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01c10000 0x0 0x3000>,
> +			      <0x0 0x70000000 0x0 0xf20>,
> +			      <0x0 0x70000f40 0x0 0xa8>,
> +			      <0x0 0x70001000 0x0 0x4000>,
> +			      <0x0 0x70100000 0x0 0x100000>,
> +			      <0x0 0x01c13000 0x0 0x1000>;

[...]

> +		};
> +
> +		pcie3a_phy: phy@f00000 {

This one too, it should be before PCIe3b PHY.

> +			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
> +			reg = <0 0x00f00000 0 0x10000>;
> +

[...]

> +		};
> +
>  		pcie4: pci@1bf0000 {
>  			device_type = "pci";
>  			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
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
