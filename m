Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 256F5CD484D
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 21:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfvFEcrC1psjmwoSIJiD/9uuca6L0Q/1jqQfVNgOdZU=; b=RqHTvAteYCxycS
	kjE1H1E7eLA8PPRRBHk0J1gGqpr6iZkxpLHWrAtPuNkxqioY/pCsbV/SufVK3AyRTG/prB+2qPWPm
	CjEo0IOoiyDrEBzthhxkEKYnnqT5Ub/yxOjS/xJcjGKK4uDctR3zwF1bh38Am4YOZxRo30GbPGM8x
	+DO1azTsOfGV3/h/oPt8+8oDNHIikx/pivZfh3D//u+nbUNREmcUDDSdf36eXARejLfLSPy4d9b2w
	0PTh9Sd0SmqaSCAeITwPgkcKBuj/hucqBble3qMvZV/rKxx9GBcc11Abv8gQYiw0IQBHbAPc9qGuc
	YvHNEJMbhicLeO/35O8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIDC-00000009WpV-3aIn;
	Wed, 12 Nov 2025 21:17:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIDA-00000009Won-1ue0
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 21:17:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACFwbHi1813997
	for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 21:17:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HzuIoUBS8VbswRplTInLT2fk
	Qljjik4GJUFcI7KziZE=; b=YD2SZpP9HxI4xd8RSogOLslROFGk1bv3B3g0qNlY
	U1nNwWs6NZjyNomvg7eIn/Z9E7su9vAhT8oP8VLEBW43Xni/lVWdb0c1Br8fX30I
	L5zyORK39ylhlHzgg23rruyWS/rop6H8NztWHE49AUQjp/8S+fCMIxyl9dczaNmD
	1xeRW5ZvANN11/eevndnQEnqJsEErYOGhTE++JilTvOKO/oYEM4hJPPwJFHff9zG
	54mgabcGscUaFdhFDyLPpwEoeDXHnQQ8pe3CXSfkjBkdSWA7K/gLkyikzWeT/qyC
	AOcplgixsdeccSbdFH3QdR2DsJS3KQdaaE4fX8t5Djz31A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwbprycj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 21:17:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaf78da2bso1961611cf.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 13:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762982222; x=1763587022; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HzuIoUBS8VbswRplTInLT2fkQljjik4GJUFcI7KziZE=;
        b=GOqzDmSqOzO/6xsaweS2DuigOYtKRshXrdIGJieMH2Ghad+Dk6izBtQevwSisFkcoP
         FXQQrsEJKo1G+Ylg1DWklu+9KKPPDOV2tZ4QvzB/ZTkrHvyrF7uOoqGrfi9GdmVfCfkY
         8UOrfNCxIVneNMFY0/GgDw2X9hHJiJP68KVURr+AGuf+RpxIr8s3Cu2GGADyJh9isact
         qGux60DHY3zJt25PVsI0m6V2C+3IZjmhQsf3cLlsC0JDt3mw7ngp2ntKOab2Tg/0MEUf
         pxGB+FPuNFMyWEK13SHl4B4O5saPR/+ijkyXiFYGhHijhWbSRvRXu6zO2aqCyfUwPQdK
         NDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762982222; x=1763587022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzuIoUBS8VbswRplTInLT2fkQljjik4GJUFcI7KziZE=;
        b=KA/CmqTB0L210cLApz8WFS3LKcRHYL6RObn8H5gaZvSPJA+DRZ2BkfeuuR4PAkFdNv
         /jomV/PMjZp2SnZrztnn9iNLRKhWKJuqDv0gZTZVHBY0zriXQS8T9v3AmunBkahPGc9w
         iqxwdMtggDvWAVzT146MUk0kt7hSb4KtkDJuo/K0gP7FUgndGHFmGhXEgVXfiJNT4itL
         63GxmF3RazclE56l9zshfcdF+u4OdQWY8t+uycd5wwQo04B+9SzBqldDd8zqz3EGQOoB
         CL935h9F8DGbZWo00/jI7a+OMI+y4i/sBLEL3NKySjVdh8LAxViWwjV6MtsRZ3mK7DJ3
         GhGw==
X-Forwarded-Encrypted: i=1; AJvYcCVLOu7OTyeGNJ2Py1NSqaMO7JnsokWTQ7BSiDkNMnU7lGabBhpn67HcRDGL7n2GLJbXvBaZiFk/sd0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA7OLgXjTyV/hoUF0ncpQO8i/NgWWPpBmqZn7vaBx/zT2mOMLE
	dJ0caBHCRI6iqoKfgtr6X2/lzlgiYBNI+UNRls7r96t8XMzJgX4JE47DO2ZSV1KmBitF8GYBAF8
	y8N/DTJ38wDYw5Sp8AZst7zTOR9649t+1xZ6mO0iBTVPsPcDbyDP3JOJIJvaw4Q4zCxaB
X-Gm-Gg: ASbGnctPuvsu1GGJI2RfDyZs2TPcVOdJPtlqQcxBc6vZXoYN18pxR4Ia4kZTPIJJs3u
	wV2mTg1+0HPKSf2MnU0A5GQPRJ4QLPeJy2DL4b5QK3D5PWBGYGEf1cUsOYa8xPy7nR7eKTPyQJN
	mjG6EcDs5OjLT/3GEX2b0TXMfOws6qkHk1aI73dZWV5J+q/cblvEO/35XYcOwOReYdsn3NFDe7W
	XMg/9TaAocnfiPQjYElpYv0CR6NX6RPGIz7gcHJVn19Z0SzIrntPLGu1+RNZlq5JD2EXSD5nH9n
	Es9qtejm1kAslKmOwzNQSj73GGRl0BH6XPdbBLKTFFcA5gpeUX0EV4laBDfkfzIAshn7W6+oCgG
	0/ydQzTxR4OfSY50L5vgMFwf0idW92p8b2E9Y4YXCGTD78KNVVpjM7JxN08mPJXEOgW2r6rvTLO
	1toiwMLlkTWxVq
X-Received: by 2002:a05:622a:284:b0:4e8:9f18:6e50 with SMTP id d75a77b69052e-4eddbc90f1cmr59530331cf.27.1762982222402;
        Wed, 12 Nov 2025 13:17:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCwXv5uKswVvfqtUeLVRLnBHhgpN/Be5is8xuttmJyNNQ7C9loD59anpFc707xQWQ7uyj2qw==
X-Received: by 2002:a05:622a:284:b0:4e8:9f18:6e50 with SMTP id d75a77b69052e-4eddbc90f1cmr59529871cf.27.1762982221892;
        Wed, 12 Nov 2025 13:17:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a013bd8sm6237915e87.1.2025.11.12.13.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 13:17:01 -0800 (PST)
Date: Wed, 12 Nov 2025 23:16:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
Message-ID: <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NvjcssdJ c=1 sm=1 tr=0 ts=6914f94f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=fmVD6mvdgdatrdQPAe4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 4W29tngB8KiNRzgNfN__RuiBZTdXK0zD
X-Proofpoint-ORIG-GUID: 4W29tngB8KiNRzgNfN__RuiBZTdXK0zD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE3MiBTYWx0ZWRfX+eNhddtSkBNF
 LrDJeIIs0BJmZnibJF3SkZVS2YOZTUkeY0dXVj5oxrpmDT8a/MKZ27m4jFPN/GTP5v0r0fNSz7w
 IYKkyLvIm5Z4Meb03CWBQ6SqIz2oPLls0lc9S/4OoOQeEQEXv1nfvbVBCiJ8C9wPEJe2G+o97Er
 9Ub3NXAZBww1qWLMKqnPbuMpHGItTmx8jI0hNIDMOB/EX4lCgsW3xB1tDy9p3SC16zBTYAGuSel
 CsFrB/iOXQIveInE3osxM6RLJnXEx8cIzJDeZdqJCn0BGB27o1QwQ5GdWF+IzTFDOIPNJS/TPIY
 oIHffrS6/YDO/O3KDe4h3UUGLY3nNtGqJj8UFPhh6fo7gtq9iTnsh58MqTeUgcq+Rf8r+XJkFji
 Aooe1vNF3y2GlkUVSK/EttLDpD6jVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_131704_619283_3DE13164 
X-CRM114-Status: GOOD (  15.72  )
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

On Wed, Nov 12, 2025 at 05:03:16PM +0800, Ziyue Zhang wrote:
> HAMAO IoT EVK uses PCIe5 to connect an SDX65 module for WWAN functionality
> and PCIe3 to connect a SATA controller. These interfaces require multiple
> voltage rails: PCIe5 needs 3.3V supplied by vreg_wwan, while PCIe3 requires
> 12V, 3.3V, and 3.3V AUX rails, controlled via PMIC GPIOs.
> 
> Add the required fixed regulators with related pin configuration, and
> connect them to the PCIe3 and PCIe5 ports to ensure proper power for the
> SDX65 module and SATA controller.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 83 ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> +&pmc8380_3_gpios {
> +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {

What is sde7? Other than that:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +
> +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
> +
>  &pmc8380_5_gpios {
>  	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
>  		pins = "gpio8";
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
