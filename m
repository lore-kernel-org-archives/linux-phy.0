Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA3FC7113E
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jun 2025 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I7sYPal0cgrSyeE+ra/9qLLeSTPKCbB43676lWVSys=; b=4H+YYLQqnQpW8E
	JS41m9sUUMfXGVPWqmGafJCecCMsFbxvdi7Uw8uq1o6qu5FQlCi2itiR4F9/RD0jcfxsgXUJ28QB5
	zkvzIRV2yCULqIKpbHdNNAcVI4mzIKwRTCch6qNs52VJZLOd8AIlLwKMLvSkStRett26c6AlNp4Nt
	TQnyb7QCJriZjXsgqBxz0mH2MjxvXGtkThfV7GvGyMhOZWnubCwTyfP8Q6URE2iQa+eUsbkSjmv6I
	OhPnRS70Y8d/WaUg4FAKX2YMQYowF8SzhbYHS3z8xRh3I/MoDwxHhUQoW/Y4xOJnzlFNEYDFlw1ET
	7O6S9ehJdhuycpuUlonA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRXe-0000000B35s-275g;
	Wed, 11 Jun 2025 19:55:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNQJ-0000000APQH-2O0O
	for linux-phy@lists.infradead.org;
	Wed, 11 Jun 2025 15:31:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DDJ8029220
	for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 15:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	455gzgu0hHWS67hAKzKZb/nm3WenYkc/X441OZiZOVk=; b=hxAtWI7UUjCGmbMV
	ZivBuX7r1oKK1BmJZQUQovu0xLwD+GkbuX03yAVA1Ts73LM1e/7KUe6Kcqq2MKqm
	z5BfqNh4/mJ8CyyhtFDnuU4gnTBjy9Cnbjd5z9hI6SyHdii6gtqvN+icyd2MaGWN
	xuK2QUVQGC4mHBwWx/Gx0hdUFFVFqR0AQstfpmNm4WV4JW17pg+z7JTUSZWTof+X
	f+KVTgFugyNPC4RmBAnJICVDLK1XIjLuBsum3/a0N2Ks8IYiuFCcRn8lGj2iTZRA
	MGnFIL22jbyCDzCGhKUquxTS+flCpWdjWS8pMgwbx8KAdjU3j3Kp0WJYQjDEGM+J
	KdJPEQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn6de3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 15:31:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fabbaa1937so60836d6.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Jun 2025 08:31:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749655889; x=1750260689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=455gzgu0hHWS67hAKzKZb/nm3WenYkc/X441OZiZOVk=;
        b=jatWHruXBPy27bFwsqKxoxpKrMjBsPZ6L2JKdxjYqgPnc7kv0ZkBabjFrm5tuLYBC/
         ZeyWSdgSjOFQu8+FX/apXBgPGWePYb2Ym8+yaeqC84BPz6Q+IWK4tv4R+533k3ZfqEjV
         5uv8MazLmxVXRboRw6umVukV+3SxWMnEs0HICmoM09kpNrTaSxfAO183S8fdLzWVDA4o
         KnCOWLIXzPASXw6VjwWqiVgHCLq820S0tSJihfLBeCpmVOvI8MJR2NuwfCJybEBGf0D9
         njg8ryqBlKoJJeb7wPG75pm4PsQ/LKHRMukZO2UJIcnHvD36SdU7SABE3KngeLjrrCKN
         IaWg==
X-Forwarded-Encrypted: i=1; AJvYcCXNu2mK6x/yepg/kguR45DuwaLxCxcKlK+QdkBHixamM0utUiGPyDtNJtlBOsN7O305wWxMWs54ZG8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyBBGqfgy1sl+J6+yfMDhJ/rGb0M2iijBbqROe5ZO66L5bu8cK
	hMkDhsSO7KT/LwEjFhvzvEm7vKuXcxBuw5VIap26uXm1EdnJW17XTn89nd+E9sm7VBmCtMi8NVu
	Wj/vOy1EAukN7cVb5YWo0i4PlZPmdUMyiZoJ/xqk3di/iwUcs4LZjfJF1L9XwRNifqYfO
X-Gm-Gg: ASbGnct6+GezkHp6KxVPMvPmjFLjuNDNiRbCss/zeswMShAmvexIvg7Kw9MNjqZAWrl
	ciMaJGqocvqB3Ju8FBlLY+q6/NuN3wN4CZA/ChZx5MyjONZyQM458WkDilP+NdpYBJ/w1BaDbmi
	v5qPl8YnwpFQvSY58hHeC75OE/93OMkyVtobtLXhX7WKlmNxIPwh68mdLPhGb8wf4P5IQel3BNE
	rqARXwxAfsnQyXr8/DDqUX7gsAb9I9kKfD66RV+0ih93RXAJWzU8k+oEr8+Nsvp9ET5s/niaPiK
	KpmXXiP3MJT/TGBd6iK9lXlzcc/rdu4US2TBHdePrYmEglG80YpDmJ/nv2QvCrjTpK68b1VuOAK
	5rjc=
X-Received: by 2002:a05:620a:43a8:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d3a87d34b9mr218667985a.2.1749655889052;
        Wed, 11 Jun 2025 08:31:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5SyB2UQ9M+HBsZiuY7IxSNchyuOSdndxJp/raWV9Me50SKe7sJUDsLyWN7TOdPxpU9D5OXw==
X-Received: by 2002:a05:620a:43a8:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d3a87d34b9mr218665285a.2.1749655888415;
        Wed, 11 Jun 2025 08:31:28 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55f6bsm906998066b.51.2025.06.11.08.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:31:25 -0700 (PDT)
Message-ID: <c24314dd-229f-4e26-befb-1491a5ca4037@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        dmitry.baryshkov@linaro.org, manivannan.sadhasivam@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEzMCBTYWx0ZWRfX8hq6p2CNf3MZ
 L75Y4y+Edb8+PIMpBSz7ZYT3Rs9UBZENucMeAzkiAk2RXCqNYQ9kTQIp4/QvNZN2auRLfTAH5VE
 IZUuZB6RZihZ20WpC5Nhzkx/ZKUh3cRdEMj2y6HImSlMqyJjZS+EZW91iOZdRa92mVBXQXYHb5Z
 oe0jwdxqT5C8Lfjk5nAXC7xv0/o72p1fYp2tdWiaH3WK4eCvCnlytRDqksb0piiK86SxqfTsiOa
 nJrXbAJVgD4xi8ff0risTkV/S3WsyoHuYbfUCnG4XWq3I52s5V+wQVpMfC1Xida6Pe1DLfOz3cg
 lQTtEYn4RmpvJrXuzseCeH9DsPEalJHSbKZA1DNFjm5sWxmcJMbAaR+XCJkvzqOaSNBeD6c2kGx
 13M8qk1FTMb0I+7lmoQ4ZsZThjPa6tbnsnUlqxVVYxXCxJEu+ZHEabqzbSYsVQcSJj5Nqo73
X-Proofpoint-GUID: OE-nP2Nz3QF5n9b0c3q2J2vRozrlj5D2
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=6849a152 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=XRhAMW6oQtNP-qC2JosA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OE-nP2Nz3QF5n9b0c3q2J2vRozrlj5D2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_083131_615381_E6D90CEE 
X-CRM114-Status: GOOD (  18.35  )
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

On 6/11/25 12:03 PM, Ziyue Zhang wrote:
> Adding lane equalization setting for 8.0 GT/s to enhance link stability
> and fix AER correctable errors reported on some platforms (eg. SA8775P).
> 
> 8.0 GT/s and 16.0GT/s require the same equalization setting. This setting
> is programmed into a group of shadow registers, which can be switched to
> configure equalization for different GEN speeds by writing 00b, 01b
> to `RATE_SHADOW_SEL`.
> 
> Hence program equalization registers in a loop using link speed as index,
> so that equalization setting can be programmed for both 8.0 GT/s and
> 16.0 GT/s.
> 
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

[...]

> -void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
> +void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
>  {
>  	u32 reg;
> +	u16 speed, max_speed = PCIE_SPEED_16_0GT;
> +	struct device *dev = pci->dev;
>  
>  	/*
>  	 * GEN3_RELATED_OFF register is repurposed to apply equalization
> @@ -18,33 +20,43 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
>  	 * GEN3_EQ_*. The RATE_SHADOW_SEL bit field of GEN3_RELATED_OFF
>  	 * determines the data rate for which these equalization settings are
>  	 * applied.
> +	 *
> +	 * TODO:
> +	 * EQ settings need to be added for 32.0 T/s in future
>  	 */
> -	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> -	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> -	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> -	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> -			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
> -	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
> +	if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
> +		max_speed = pcie_link_speed[pci->max_link_speed];
> +	else
> +		dev_warn(dev, "The target supports 32.0 GT/s, but the EQ setting for 32.0 GT/s is not configured.\n");
>  
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> -	reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> -		GEN3_EQ_FMDC_N_EVALS |
> -		GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> -		GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> -	reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> -		FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
> +	for (speed = PCIE_SPEED_8_0GT; speed <= max_speed; ++speed) {
> +		reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> +		reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> +		reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> +		reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> +			  speed - PCIE_SPEED_8_0GT);
> +		dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
>  
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> -	reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> -		GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> -		GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> -		GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> +		reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> +			GEN3_EQ_FMDC_N_EVALS |
> +			GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> +			GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> +		reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> +			FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
> +
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> +		reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> +			GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> +			GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> +			GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +	}

this function could receive `speed` as a parameter instead, so that
it's easier to parse

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
