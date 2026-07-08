Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5CCC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 13:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq5ChABlaez/+Iys3dKJ1D3M1d6rZ7eLZag1THt5FuY=; b=yUvuQGfSWx8/ln
	eGrRjCO4d+hy2j2j9dir0/+dkzoDLDpDP5/ahjrhd6QHe0VjJEvDbEMk1zmoJ871B+mtikF6kWG4x
	PLcyDllBA3hcFX2Jqr/8W6Be6QJ41CZMfeI6iRtKSeQxkV5Wfj/sj8mPYpFcXJu+D8pubmKxQhmFY
	LRoe26XqGGbtUk1JBiDiAQE20OfFFEk9C405dCvdz8gs8N9vKUsIw1mAK9RtIUJMVj1//8UR8f0o2
	OVM4myV6XyoPk/RJwcvgHyB0eiX95y/BDnkW/D7E7jKpW+HpHT6QX7bF/UMjhRGoui3WQ1OApOsrT
	N3EAV5RwIzccGdZVyj2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS3e-0000000HAqi-2gkW;
	Wed, 08 Jul 2026 13:11:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whS3c-0000000HAqO-0zvk
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 13:11:21 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3Jwe2738495
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 13:11:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h/wmzSE05/8DzDlkm10pYIDL
	wkWRETXjBMhZD4v55iE=; b=ePiF3qFg1F4kqF818XnVQCwMT3fzwf4QIm1Cc2XY
	Rr4fnHtwwOZPTifzmLlTTKH3rb7W/ZLok4x/woxxbHO4YcZan/E3P0k3F+fQm9bh
	gY1/X/cdJxKml6pwguLmFsE/edgNu49rOdjn73Fy2FyZB9nT+6QrN7ZFEimXAJds
	7xJYEf1zVY0ZVMC2LOMfmNYQr1euTGIq+0OTnxyG9c/xm9sa2s8C7bIbgkdLqtTi
	GM7/e6dIFKze9/KPOAhh+eZLsqd6p1++gOu+8HkH6IfGbO+B0AiykQmbzUr2gPeY
	7s3FcXbOS3t+bY4/yDRcQZSUijwfD3KXB9B3HuYjsGGqdg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9hnv1dn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 13:11:19 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-738d9935e23so145431137.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 06:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783516278; x=1784121078; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=h/wmzSE05/8DzDlkm10pYIDLwkWRETXjBMhZD4v55iE=;
        b=MM0fHu71SYWyZWwIkLCEHVllgyusC98Z43J8q9b1BFXcPKPTfB3aTUta2638fvQqnf
         0astJGFQjQHOW6e7qL7PI1DOBBNfOz8cbQY4Px2AFE2c+yHxjBoj6E+a0OHSlznTgqBj
         P3VAcsXffkgnhpfSlwaBJqZrMJSCI50PLprdFbgEzsKEiQ6f1dHGCWKrnYrcM1+JA7qQ
         +5o4ebDYltJ0vDlFml814+tBitoviy5IsTye16ZcQgAbu89iADqE4gHxhv+zs7FO2cuD
         1evNW1LpbWDlqvs7rB0IwnLavW98nQHO8prqbum4rUo1JyIjly6vFb3ETk3I09NNFA5Y
         nwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783516278; x=1784121078;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=h/wmzSE05/8DzDlkm10pYIDLwkWRETXjBMhZD4v55iE=;
        b=kHDxtqXOGUU57sMaKdwNBwJoo6ypF290gMpkqmx5YrwpAT6oVDYVjNJgUsKDazQBkN
         PiKGYTQ6cvc6pJjTXUDOHDs87OGyiS+WdGQLfPuLQ9MivWikfDEEmrXV3K8P1qB7ZGaT
         G9wMMzSQ2E0YD0Rb5ZqkoMMgHAdvML/GREiGNginGsCycfuyHmx2V0sAaoq/PddXO4v3
         7jPj44uqrTHtfihLUocxVZt8lTbpUunnAcEjl5bJsHrNl07tleleCpa7sU2GzI8jCu5I
         gDIHCv2zyM23bKwfaYe7qLbxrrS9y0c6N+f7OQt6zz38oVa4ncWuJsvW10NaTZhfz6ie
         PsLA==
X-Forwarded-Encrypted: i=1; AHgh+RooSB06GFMFoMagknfXlpaBMB6cCsyMR97/eRg4yTbnWNA8u3E4RDUovWFtWm04Tfvqn07AwZPpEmM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuJHi0WNvtD5nurAqiRT8NwohZHZaKitt60q4kPgGpI6ucmSdb
	sIuj5XTzojV+pEuUvfiMZaNbiE+dhxIsbJnnCsazi1IQWXAzwCwT557ZaDGYZbUF57GGvx4AEEo
	gxOux0QcAEX/cuQoNy/84B+CJfHNcOMiPoTpRyW45DrHDEWeaJTnSIghr/9McgQI/cL0T
X-Gm-Gg: AfdE7cm5rOa4zmXbztZlMmZNcSaYWaSrFPt7yhCFRXartSl5Frh2xYZMITGShsdEFRZ
	d7N/mnbjNjNOYQ6sbmxHI43HphYWbyqUhpjMFN0b0JZjnz2B6gkCUp2p5nYlByGkGoFBIjr7LKT
	bEux5cgTlERL/4sURhLnGtiL0lNx3Vhuj58TrknHEfmyj4U5SuTnlOmWvveAx75k6K73jl+ljRR
	61X3dJSueM0L/EKH46zYISNDWenMvnzcI5lqm7kpADhIwEzw4aSI7dWt+EZnY/LIE0c7HdBe7wr
	dhpfQ2Bewn7orQA0Gc9QAOx5KvhSA44ArO0ATIP/0WKww+wPrqvuI4wn86Ygzgl9zShdGWKEPk8
	95N/jqlUZQqojIJaRYRqWYho/cUUGAPX2IDfJog8f7s+CjgBJkcXRU0Eot1lUdR8tjRq7qFEaog
	gqerAO4n42er9p6DxIWXTtmWL5
X-Received: by 2002:a05:6102:c4d:b0:744:d5f9:ffb1 with SMTP id ada2fe7eead31-744e010f965mr1025618137.16.1783516278509;
        Wed, 08 Jul 2026 06:11:18 -0700 (PDT)
X-Received: by 2002:a05:6102:c4d:b0:744:d5f9:ffb1 with SMTP id ada2fe7eead31-744e010f965mr1025601137.16.1783516278020;
        Wed, 08 Jul 2026 06:11:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c0117sm4528573e87.62.2026.07.08.06.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 06:11:16 -0700 (PDT)
Date: Wed, 8 Jul 2026 16:11:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] phy: qcom-qmp: Add v10.60 register offsets
Message-ID: <fonaxuf2jc2lpzf66vwwudtjjy3fy42aizuju55wpu5tr4xbun@o7yth44bfgdr>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
 <20260707-hawi-phy-pcie-v4-3-8d9cc6324947@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707-hawi-phy-pcie-v4-3-8d9cc6324947@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KNNqylFo c=1 sm=1 tr=0 ts=6a4e4c77 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=_DP_PzDrpJ8qHd2sDw8A:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX9nwVuB3vsaPN
 T/yxi05ezxPNZewX3sFkin+Fjb+HV8rf82Tw31nBvZOpwPT4v5UJEp1GJ8+y/QmgK0Km/90bcs/
 qa90h96fcEsBVZSR92jk0A+CX2Ibzhs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyNyBTYWx0ZWRfX1wXbjy0hY5TW
 lp5XEIDW6q6t/FvS5Wj73pFeUA/mH27q1gNhbv/qTxvGTG7CkrN539SrcEaMHzLb0GDQ72UqG28
 4yE2SdPwYuH8NV+nxJ/wzStLKjOEL9uGRoKFW1LeVlxfwjz+pA2X49s0nU50vZxzNtnPYniNrln
 QFf5dk/wmOdDM+QK4/Uv4+kTRsiShKu+Qe5iLun3ZVMiiWwpOjj3nivNYWilWL8xkUW+E+z3ERR
 Px1AKb0RKWqQ6I8jr22H7MKTgW3d4YI3DooclaIqkB+KaJoKQxy/2kFgGDLqWFC6Bug2HrJKlkP
 62iqzO0/afXf3H2E9SxYeP0407Uc/FkIr0ZLD4gi14eD0obgPJiAxgqK6IUWcWJ/1X+JWN6IQI8
 zqHffmtUfeIpz7nKT12l+q246rgeJpPYiPGs54siaVMTFQFfMHp3IrX9mPTM9Ii4DLfbC84vvpj
 zflpV/F8Pp5CHUcaAHQ==
X-Proofpoint-ORIG-GUID: 7pJ4JwKc9MQg8NzH95W_C5zIwyahxj0E
X-Proofpoint-GUID: 7pJ4JwKc9MQg8NzH95W_C5zIwyahxj0E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_061120_298329_D179D551 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Jul 07, 2026 at 08:32:48PM +0000, Matthew Leung wrote:
> Hawi SoC uses v10.60 register definitions for PCIe Gen4 x1. Add the new
> register offset headers for all four sub-blocks:
> 
>  - QSERDES-COM offsets
>  - QSERDES TX/RX offsets
>  - PCS offsets
>  - PCS PCIe-specific offsets
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |   1 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 +++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++++++++++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 219 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
