Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93CEACA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 12:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bngz540WsHZdjVXIimj3Y9pCYbxEA5b8r/nei8PiwgM=; b=q8+XQ9FpleuLvX
	oSjSj5x+xtE6M//m7iFqfpO2ncYEcJo5AG5P1ZR8adnrHhovNQc3RUipldIL90Sgs8Bi0c4n8EJbi
	QBmw1cldpVSB476s2dETb4CuWkqNPVWC8bMIM+XBVp0ubTMl6oYgqKLxmLUlnK9Z5zEWMDQzceRfY
	UKHu8lNOWL8ibsk8GNxCce0bHtT2rqcttu4AEDHwDtar12O17Q7OWDDsRZdt/qNgWDJ0QsIpcbeyb
	KWE9sDAjXoTJpCE/7SkcwSBO51IfUtDIo27xIdT6LjO8jhSBuQftUDYD5MRUbSWJsTB2H3ppQu2u0
	V9S/LEZkQC4zdLs3bbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloFq-0000000AjSe-2J6J;
	Tue, 12 Aug 2025 12:37:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulkQ0-0000000AFRj-0GPI
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 08:31:41 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C4siVw013175
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GWWmZRGTBwubXompLpnOIPrbDAFgCGljYAqe2x5V7LM=; b=SgNbkgDqi7XDEWln
	RZr9DtJhRQpkMIQ5zjVNGLh+FVDF90W6U5RfWZPcG3/dBZuXr+V1Xevvyl5WYipg
	e6hc171zifFPw7sZ86EXhisHppXmm3jLNdFct3Mdi+jdT6w/1rpmJzh8uI2Emd5E
	xacGeF/n4bxZdd337sULWgy9EWhsygD7qe1CAzKB+K4HDU3HGDtufNjSOQPIPfA2
	8bMeRSz64+zHIsnnGwgU/rGdCQM1cnqdxlADMSFoFZPouj6JReE2LR7/MCIrf9P3
	mMigss7rehYm6kdb/kN9LbdhBJ/aG6EnycSBoVQhEqWFOZZe5DtKvXz2byxGD18K
	i/nEvg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmqhpp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:31:38 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76c19d1e510so4963559b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 01:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987498; x=1755592298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWWmZRGTBwubXompLpnOIPrbDAFgCGljYAqe2x5V7LM=;
        b=DbWYabbMmlPePhRtl6W8lXy2HzG0w+247SA/f9S6jjyNsYFdm/i2AZfjRoj+ydIkXu
         nV7wW9PUOxyRv2oiMqA+O1rJoEknRytmMsuHBjU1+xOMKsEVQIHbCiI9wZumPT7YWUI+
         J71GbveLbEMw8ebPzPY0kN2Tm0HNx3p2UCyOAcBpWREijGyYkmwJOzgcYWXOqxZ63X7L
         fVrKknlK8rzSASEARMCQ8moodQQufeVEeeV8jVI7FSicTa0KTzIJoAlpXhu08RtN7Bti
         ZMZ4Ngw+fWTHxuoYs/R8QLJZdIOe2oqNq5WmcyZ+MXCtn4knadh+CbngsH4D41KusYt6
         BsiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTjg6V8eFrp0f4XsCmgrlvELVXGyQmuD4EF5DAPsjaBjUMSCJhm2wuBu5BCeSWuyipxfTENR+0VyI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAss7tT+31cqeAPVjIKHS8Fvpwf4MbKomK49BYZpWco8kGDCVL
	/W7k8GWNSSFjhM96lnOkRTsS/VhYbWLdWqq5GsUA137chttrx2Uzm//8mNiLek1ZNQrB6Xe7nE+
	uxtrwkkTtD37kxCx/gFhSIiPik+XcTykfFHuQnOCNh88XugEftRtMsDTx7n98b64Lcerh
X-Gm-Gg: ASbGncvJuiEvFZHl5Ol/HArcjA7Oy0Ub728jHHa4Nhfd5PYaHCFGdscgLL6Ni+fHdqE
	yil9LDnH6XHdxmnkViYpSP+j1XWEIXveD5Ta60OrN3F/QLQHmGH+2JiSiBfKYBa34WcqHiq89k6
	Bt/A/uiY2Md47CnbSvMV+cUinaQK3xnNS6KKdsigX/0sEbh3Zz+grbhKrKbL5QpmPtJYgQQPilk
	MypQJ809ccRHB5aeKAaz71Mg8uZS5nsPGZXjKtO2Csr6teOVZjAxFA0/GB0y2nhKsZMebYkwsZI
	BjXRwJEUUL1LxPmLupTolm/rSN+r/LzL3Palpaj96NoHqyyxtlZ3pUXfE9Xuehduq2Kf+qp3dxa
	AjI6BFXPIahCNFZRANhiEaJOPogOh
X-Received: by 2002:a05:6a00:b86:b0:76b:f318:2d41 with SMTP id d2e1a72fcca58-76e0de53d0bmr3500005b3a.7.1754987497681;
        Tue, 12 Aug 2025 01:31:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMlyo0ZIuqdKYZz9q+kCc6x7EFMtEPl2fYK55x280gUgeOGPCcKX8cqv6uh3bg01xS6rsZvQ==
X-Received: by 2002:a05:6a00:b86:b0:76b:f318:2d41 with SMTP id d2e1a72fcca58-76e0de53d0bmr3499949b3a.7.1754987497144;
        Tue, 12 Aug 2025 01:31:37 -0700 (PDT)
Received: from [10.133.33.66] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce6f319sm28833238b3a.18.2025.08.12.01.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:31:36 -0700 (PDT)
Message-ID: <e9c9005f-dab3-4bed-999d-9a7563f5f2cd@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:31:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=689afbeb cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=FKzoDJ5KnSRyQqape44A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: gkiPnKkmGcAKzmveDXn_WbvxzIuJqRxO
X-Proofpoint-ORIG-GUID: gkiPnKkmGcAKzmveDXn_WbvxzIuJqRxO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX0M5RwD8wQC4u
 RaqSPWRpI/0kzdi1UH+xxf25bzHw8OXPlNAehDGm/w8Z6ucg0S2Zq+RCotdTtD8C0VLuAsCz83F
 jbsAWOMZmlZuZi7I8QD/tfaiHVCCWyKVW/Fm960vZ8md9pPOjBlh3XWkiG2EjZD0NUuhgUP/EoV
 OtOUMH6VJWaBrVqZW6CfPE/0Sj4UqRiC63It38sn5UNYaoZRBhucX+z8REuieSd9VddDq/9fDYr
 wU3atIrAeX39KcQNqltc1Sj/KjEg+0QidY4j3voD+xAfg3lBCQ1lg8Ho7JPjL4+nBGpa2YWYGs6
 Y4QlV3ujMk6iIRLZd9CYm4ePU/m5O9NSQM73m1t/AgsagYmsmLjmJKmxDAKV9RHE1WQ2zZOQ9a+
 tIiGl6Tx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_013140_224980_B1625DAC 
X-CRM114-Status: GOOD (  18.62  )
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


On 7/25/2025 6:22 PM, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.
>
> Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index a1ae8c7988c8..b6f140bf5b3b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -176,6 +176,8 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                 - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -197,8 +199,6 @@ allOf:
>             contains:
>               enum:
>                 - qcom,qcs8300-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>       then:
>         properties:
>           clocks:
Hi Maintainers,

It seems the patche get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
