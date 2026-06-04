Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89C2DCD6E6B
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 13:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJ+Cde8/sz1RF8+khN83dGv3Sd47adOH1WqnOrz3uDc=; b=FzCj5oPwVFXoNr
	5rwmUb0IJdSnpl/KmOuQqdm0mW3+IJjPvKohdThaIc3544CWB0yg6JOviSxCGV4bBqaCEMCiHbSJH
	MzxsX+Sz6cdiXdelMry9G5h6MyGrvLQRivtUYSrP+sYDXniw0L3tpvFzU1WLSg8vVapduWRcGgxxW
	vydksHzO9s12BsRVWKS//jSdQUuh1L6z/1DIV3P77UoVBqa95sJ25pR1DTFRc41q4ybOqTFGuQyVQ
	Ytcl/shUbIHs2LzOl/uCBT5KcAXPtTMB/aeNjnRdgOw6+j+cr5P+Eeu6ilfJcUBwW6e6IkCBVIuur
	RLRxLYrI6RvVYZi/S2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV826-0000000Gm0P-08hj;
	Thu, 04 Jun 2026 13:22:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV824-0000000Glzw-0smU
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 13:22:49 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6548AvPd313660
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 13:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0cPUcR58dasqpgjZO0SJrb2/
	PQ3ohFO4F+BZI7umGqk=; b=bee+46aT0YVD4x+qzKCAYR1nBxRsxzLy3WQh67pn
	3jYsalLdWPhzPD3AN4z81PN19CZwrSvl+ya96FIj1GW1LhZTwO5Dize8/DVmRc+f
	iqtPraj5sk8aPV3TpKnzER4fG2QEZqktWIt2k08yV91OPOiReZqZ0Shc5wEiqE3e
	nFnPlmlyNLUWRKM2519nv1zWNBX4dGClSRfxcb/7J/9GhDdWxXiLxcYZPzO8RIYp
	1NhKElqXBCm8PQ3kIZtcIvZheww66CgYLdq+QflrZ0a2PMxHX/kUP6Cso771IjnK
	fkzYEDzUj+WTFOP5r1LydlYPUic0EBLk1vmKhfFzlh4Wqg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy5v2jcv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 13:22:47 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-59f0ad4461eso1126841e0c.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 06:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780579366; x=1781184166; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0cPUcR58dasqpgjZO0SJrb2/PQ3ohFO4F+BZI7umGqk=;
        b=PZ+0YCVwIDtFsup4N6HhLI5Hn+MNT3dGUnxPWDCSA2Me+yYCav2IgqHdnYGyvNseY1
         sbcRLlZ7XcDy9gedk+wGb+JrajCRZZWr7GNBL9/O/dmKLsZ7s+LpmzeN3D3qBs0+um2D
         tqETlRGyQfhnMhzPDhNfxdt6t2Atv1cgBLkgHHyo51X0s1RsZsgk5o/NfE1VSho4eaEr
         hz2jo5MdqAs4Rw9wxv70LLfKfHTqRu5GoEN0Q9+x4vm25PT6xLiCGgFIv7SQpbXt/h9V
         eE+j2VHJNjrnQIU4EQmTlbJf/zbsh9Zb4YCYMmnDIc3a3JINe5ElwA/IY0dfJa3iTI31
         Rupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780579366; x=1781184166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0cPUcR58dasqpgjZO0SJrb2/PQ3ohFO4F+BZI7umGqk=;
        b=ljtO8yPdoCHTU8GWoFs4/CaoDwqqxviCR6iFXMbc12HBcf41pMbLy9z2UjYZAs8QfV
         yl9JfZxQDESnqlHdpw06z61h5XLqeWe4nTgEJ3atNWmroWajtpuKnMdq5f9duMzjT8ZW
         0pUxUQbsKV/TDfz+xJAvEiDCmz1oULflb/QcgtQbqgkRmgV/MfOFZ1hbbo+rakygkAJL
         v3rG/xaMNuDp9izHs2lhf8EXIdciB+snGOCibKI6Yp3B/tmpmGP+HzNm0QyQagpOGEqn
         4YQQIMImVPmdQq7cOHvXYCgrX5HLPbksKmJhQtEJaU6NK6RTmu6ymCFGdruOPN4eFV8h
         Jl0g==
X-Forwarded-Encrypted: i=1; AFNElJ9vitIK8ae4V0ozA0n54SJpem2yCIx/TFFjhDvZp4VjT7kbVHsINnedPuXDAsA9WaNXtEm76fqaAT8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJdiDLcGuXYb/DF1oN9jxZ2fgy3KisV6jx8YpwjBhXBNtminOg
	ci8KguIbJEObbQuFVerj0LpASurGawrhUkms+4FjFRoxnf5L3mMv2VaHlgYw69Xk+yAwwCg/xm7
	16FRNeRogA1i2KvYrsu9oyANqlaa3/nu6FLsbHPDzsD6gqgVgkNtFJuYkxt5NZ1hVt80I
X-Gm-Gg: Acq92OEkMb0/UScT9bc7/++h1bPjdOvlJbdKWXPSu+qo0UjYCD+uYh0o7wX+AkH6Vxv
	kDWhJe3B1kThpJTPGBMZNPdgL3eW9nBqwMrbFpsO+eK2Eje77B8NgIReEdVb8t3ybTCyn9HjYFX
	UyNvEcgoRWsMq3ltaAfPntP/08EBqb0G7M0XMFx52haEmUXKg74CB62ieGvUwcf05hAytR1Hv7D
	a7b4C8fAhpSGcSVaJrBCMXAZHZq8sFyzBJkGi4Yi82ejCnEsbcnMVfoGq8m1//KGvDDXFPQ2NaZ
	xnoIq82nww4pKAdE6MG9lsHBRls1NUmbY+mSQ7u2craTs4rDzg5MTmuRMucI+u0Yo2CbtFBaE+V
	pwUBqLXaBR0H3APrVdIKLUIWr2tJ76cOTGhx0cTGjGCTwhU2nQgiyQGd+Zbpum3slpy/DsJk4HS
	as9pKxoBVCbzavSM1yHHD4HOk8rvMrTriKlmIxb1Oni3Uorg==
X-Received: by 2002:a05:6122:1d87:b0:56f:a329:6859 with SMTP id 71dfb90a1353d-5a6e61be6fcmr4683033e0c.7.1780579366413;
        Thu, 04 Jun 2026 06:22:46 -0700 (PDT)
X-Received: by 2002:a05:6122:1d87:b0:56f:a329:6859 with SMTP id 71dfb90a1353d-5a6e61be6fcmr4682973e0c.7.1780579365955;
        Thu, 04 Jun 2026 06:22:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97ac1esm1200902e87.54.2026.06.04.06.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:22:44 -0700 (PDT)
Date: Thu, 4 Jun 2026 16:22:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: Shikra SD Card support
Message-ID: <hpvnpq2rx2axmtxmk2y6tddeo42ohvd4ae3z37lynzm5nug4vf@sg5ndaqfdlvh>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDEzMCBTYWx0ZWRfX+z7RPLoz/+yi
 +lkD9rIIESzrG3jr5PDZPaJ4MosqQI5z63xrMP6I2TB4UOGuYIVC/C9PmgcS8RSrpYjdnEyf1ZW
 mq4l3YL1gnTM3F6mHy8hlrLkThpjmGmNYlV8e/dKeIMaa7tbrbFuuOqRkKd1sxQymaF9txaMEZ3
 Xj1uQrpNBjS03/bz2Mu6Z5S+9nlOEcdkOKL5SuIyBE9f7icahJTZloL+vmZSDC3MPYvh/4UmeIN
 nz+AT7R+pehg9/eUXRBj0LqJtYmD/m+aG10ZcQsKB+4i5cM/vhg129vKyxRPh6qkUeN98rfJNTw
 5Os0GaS0ixQuVtyIQuaeSdDD8k7LTnGa/YBUdWqvYPAyVU/83fTKrQK/IIF0aVw6Dy1dA4PaNcO
 EtV72PJyeDHYuFe7bz7du77isJzMMbLplAsSpG8v/41F2MqgyRNdawXQIvyKLIBvZb4QCYLQweV
 4wcPV922MQvlNuZPNTg==
X-Proofpoint-ORIG-GUID: HVVu_93LMX53LUvKbvR7cA43Sfva7uSV
X-Authority-Analysis: v=2.4 cv=afRRWxot c=1 sm=1 tr=0 ts=6a217c27 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=ymJGE50u7P9sh_QXW2EA:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: HVVu_93LMX53LUvKbvR7cA43Sfva7uSV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_062248_363479_01527DD4 
X-CRM114-Status: GOOD (  16.51  )
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

On Thu, Jun 04, 2026 at 05:50:43PM +0530, Monish Chunara wrote:
> This series adds SD card support for the Shikra platform.
> 
> The first patch adds the SDHC2 controller node and the necessary pinctrl
> configurations to the base Shikra SoC dtsi. The second patch enables 
> this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
> the regulator supplies and the card detection GPIO.
> 
> Testing:
> - Validated on Shikra EVK variants.
> 
> This series depends on:
> - https://lore.kernel.org/all/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260521-shikra-rproc-v3-0-2fca0bbe1ad7@oss.qualcomm.com/
> - https://lore.kernel.org/linux-devicetree/20260513-tsens_binding-v1-1-1780c6a6caf2@oss.qualcomm.com/

And how does SDCC depend on TSENS or remote proc?

> - https://lore.kernel.org/all/20260524-shikra_epss_l3-v1-0-b1528a436134@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260522-shikra-cpufreq-scaling-v4-0-f042a25896c5@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260530-shikra-dt-m1-v2-0-6bb581035d13@oss.qualcomm.com/
> 
> Monish Chunara (2):
>   arm64: dts: qcom: Add SD Card support for Shikra SoC
>   arm64: dts: qcom: Enable SD card for Shikra EVK
> 
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra.dtsi        | 93 +++++++++++++++++++++
>  4 files changed, 147 insertions(+)
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
