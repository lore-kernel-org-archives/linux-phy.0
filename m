Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E29FBC61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 10:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw1fUkVV6wx6ruFrRNPE40Vsa9T0aN5FEs6FtzcpmwY=; b=218tWPwx3wjpQe
	axaD1pMfiwysYczaEkygOVMde71h17EJQw6V9b6lXoqR0OFUyb3yOawNlEBgeZTN20N5+pLJDj0X/
	KNQEYgXzkbSf+9eQoEQTVXgYEHLdHRfF6o/pnXMR6vTYe8K52PCtkeqwvEAfjg0tY6olX2+F8sc9m
	g4aNwB5i56Q7914j4ms6gnAR1vcS6cP4zRL3O7xWLf0VA1DtT8pTCSHdDPPBMp6dDnznSDViQh+4U
	5/CK8JavMsnBMQNHzHtwXnJKgQaZNIrgdl08J3Yr8l+Af5OwA1RDyvEN/PG0FYU1SY1zSIIqmtl29
	n5iHYG5ChR5qWJzCvTvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ytk-000000095Jy-2Vcz;
	Mon, 31 Aug 2026 10:05:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yth-000000095JH-0yE0
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 10:05:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V7xMsr2460317
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 10:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o+ZCPBk8xNaTdT/fPNIiH2AYV8M935CIdskx7gdi4fM=; b=lA+BHz7xafasOZM+
	OeRtipnaY/XyUvBm3wO+CoqzMcFzXqrxNw7TYMLNqQ0/Mo7xTjSWWRdVNfDukGb7
	GSyLEB4X4DRFyn1TzCoWI6Kp9AiPou5DQAsjwoYVT42eCOktgd3nMoVxRVcr+Bag
	+G2JOdl5kFCFR/tINGFyHtXqW1KncdIQYcN+3V7u80VUQ0EPkV2eJGH9tJqVTDWn
	ivjK16vqK8erYRAHWd+F6HMpqopwrvKwDDiQrOA5q9mQuJGybXiIpY+t6JPmVQ3i
	sPBWHGRiviLKu2SAbDf1bYfMB5gTu79MJFP5DuYvxBdqQ7dEe+gi6LBNW2MQ4A0d
	AiI1CQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd556rp4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 10:05:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f5ac7416eso4531314a91.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 03:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788170748; x=1788775548; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o+ZCPBk8xNaTdT/fPNIiH2AYV8M935CIdskx7gdi4fM=;
        b=UfCpl3mj1SUuDeg58x6achVhM6uGPvg1+H/+lKVmmbzbBm/R7UJKqjHlBfxpwCzxK4
         ZJ6miEpZW6Cv7GGtvwjxMklNg8f9lXBnlQ9E9lq12ojHuFKhXbtJdVmO1lNiJdnDsPsc
         LbR6ldmTx8004Z+wpC9f3rth1kGxDP89glKslmN1e3eFE4rdTrAco38yWgfoDEjJHmoG
         vhVViqHAr9aCjQOkJe+b182j+vGzGu3Vp8ctb6aNnxmcScZMTSbZeTU1TkdABa2O/Ci4
         EnXNmaygK1kk6+xxgq2WfKab0aHDwB0hYg+CbnKnF4/cCpLOwypZKkte+l89D6tF3K21
         txhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788170748; x=1788775548;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o+ZCPBk8xNaTdT/fPNIiH2AYV8M935CIdskx7gdi4fM=;
        b=VJsLBWj9mSr1g7r3Bdera8F9vk2TIB649fpRxFogV5cFiXLPWIwmEc8ZK56HibTwLN
         fmDvjW7ImuRSXnxl6bNEfJtZbvfduB8DeJm+DqdvKpFXEGNdXWYL+0xT8StT+bn1WwrT
         umkrSTCXUcFA9dYOkpfNOpObZML+Mx/9l5guj/XNJsxk3aKS7nQJwEytZ2GHa0+RRI6Q
         qmLujFPqXk7XXJMozs2lOh7sATpT8Bb2dOVRDzQinwz4qVPQyl8EZdDQQPisciErDep2
         IxN/d/l64CKsR74rjWTizLXi+IhisqRitQvmS5GLee7HRSGjSHwS9uKBFbNcq+uHykTH
         z5bg==
X-Forwarded-Encrypted: i=1; AKwUvBz2Y0Pnwjg2U3F2d0SdQFwaEjxy8+tiEw6sLGCZVFmZH9PnUJuV2byHaOVczK5aNfp5T1y/hmxiNZE=@lists.infradead.org
X-Gm-Message-State: AFuF++nvgnU6M3iE7lBYYv+5xVNgZvCSbzycVZx1IpmKBjZ3TBLIAKW6
	0/6gVTB9Z2tFgymwHbDh+5t4hBTSqPWOrGtf4hWKm6R82i90o2SxNHpeYp36+vFqGPWdN33ToWb
	WvwyZOwzaUWHqJPsTFMm+teb19A7TX5qV+YHDR0a+2eRL2wE1C1N+SyZM42hjMCzlO5ymryqJTY
	Lt
X-Gm-Gg: AYBFou0awi3Lon8u9ZFu+KSaJ8P4GKwo4GgK+HSruAtrzlUDEm8mOzHZYmtCO5AF62n
	D0fAQGA8d0YltCdyzfzq9y3B0hlzAp+gJp9HCavvxeGjaBEigqLJc5os8Xq3Z4oTe2klyt49EpJ
	FJfcTFeRs3tCBPLvlHje9FTcWZCAmk+OB04pnJy808PTbu4CyRY+3me30MjLd3mOKwEQjcyHU5D
	FYW1h6rYKi3iBrKfyHSXK0s+kTMh8RgRnBJr0OyxucteTULOujFuPrQQQ/kZV4hh8oc3hWeZgEq
	vcn9B4OclSySnZNBZnpvyfX5tSakLP1NbNpmFwI6a11Ey1vVxRnxWiyevm+qmcqLxTOKXQjSaEE
	eikBh4AZKpqUcwkTuEVHvY+O7ExYX5zqmFCSFya6Ul0250NmlQOEOsGcME/JjvnwGCSJ630E=
X-Received: by 2002:a17:90a:d2c7:b0:398:9bd1:3210 with SMTP id 98e67ed59e1d1-3989bd135c0mr25646080a91.17.1788170747889;
        Mon, 31 Aug 2026 03:05:47 -0700 (PDT)
X-Received: by 2002:a17:90a:d2c7:b0:398:9bd1:3210 with SMTP id 98e67ed59e1d1-3989bd135c0mr25645956a91.17.1788170747310;
        Mon, 31 Aug 2026 03:05:47 -0700 (PDT)
Received: from [10.133.33.190] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-396ddc0c703sm16294336a91.9.2026.08.31.03.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 03:05:46 -0700 (PDT)
Message-ID: <89805886-ba34-47d7-845f-904db15c7b17@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:05:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA4NiBTYWx0ZWRfX5q1jxNq6rO6a
 3pXOtSPe8xNHlBJ6t38PW4phChhKjxGjZGQQCiijqbE0T4UsALQkNK6b8qgzXSF9mGy6UjNlJGB
 t8g5TELkQWBDuHptOuqcifaX755xg18=
X-Authority-Analysis: v=2.4 cv=O7sJeh9W c=1 sm=1 tr=0 ts=6a9551fc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6mMdS-TofruHI7CEqrkA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: YjKutgyu4YUbTDiqOGG-PoXdrize3UNd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA4NiBTYWx0ZWRfXzYFnogJbLECn
 jggHwYr8HcjCyt8ysW45jYzLSIVxgTd8O8R209iYgX2nFIKgrRasVjN1DooQ+RveROUb8U1DooQ
 2hPl9rEg+0kTysOdJWirTw8K55sfdPa4AgpDBrFlm39rDjEifJ+Da7C5EKqgigIzWjeM6v+35B9
 01z/Hz7IaIGum/btwQaBObomMLdLG064GDj75ZC/6arQmRg/DWH+9DZhHXyLOQ2VAwcIAvNHgJg
 03NYpQooLXfDI9B2JpvF8eX3zR1R38YcsHxlfGqHMTBNl8TKe7HXlpi6urYlqEj4+JnnkERWV1O
 /SY10EMoFFqBACdHgPfpjI6fJLftpkSRE5pzPHl3MkZarchaSyuNaFGcNeNmIU8pGJ2WCUGWdtF
 9nReJ9/TRdqMtyQPz+/OubmAia719RbgXqqU7uMhNrtzA95SK5oaKw8yIQLm0MWEtWJvsLLnuiq
 H3iYEyAeQ1WSDQXmqDA==
X-Proofpoint-GUID: YjKutgyu4YUbTDiqOGG-PoXdrize3UNd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_030549_311598_9269434F 
X-CRM114-Status: GOOD (  17.45  )
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



On 8/31/2026 2:25 PM, Vivek Pernamitta wrote:
> Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
> compatible strings for the Maili SoC PCIe QMP PHY.
> 
> The Maili SoC is a derivative of Hawi and shares the same PCIe QMP PHY
> architecture, allowing reuse of the existing Hawi PCIe PHY DT bindings.
> 
> Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
> ---
> Changes in V2:
> - Rebases to the latest code.
> - PCIe controller dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe compatible
>    change is already merged, so dropping change
> V1 patch link: https://lore.kernel.org/all/e5516c61-44ea-4224-9da2-1694eac10fec@oss.qualcomm.com/
> ---
> 
> ---
>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
>   1 file changed, 6 insertions(+)
> 

This patch did not show the falling back relationship between Maili
and Hawi, please check and update.

Thanks,
Jingyi

> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index b353b7bfb839ce9cc43ecd9ef96d174a7750b35b..701f0fc178220da5e3d2748330179c2193ff7418 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -23,6 +23,8 @@ properties:
>         - qcom,hawi-qmp-gen3x2-pcie-phy
>         - qcom,hawi-qmp-gen4x1-pcie-phy
>         - qcom,kaanapali-qmp-gen3x2-pcie-phy
> +      - qcom,maili-qmp-gen3x2-pcie-phy
> +      - qcom,maili-qmp-gen4x1-pcie-phy
>         - qcom,qcs615-qmp-gen3x1-pcie-phy
>         - qcom,qcs8300-qmp-gen4x2-pcie-phy
>         - qcom,sa8775p-qmp-gen4x2-pcie-phy
> @@ -202,6 +204,8 @@ allOf:
>                 - qcom,glymur-qmp-gen5x4-pcie-phy
>                 - qcom,hawi-qmp-gen3x2-pcie-phy
>                 - qcom,hawi-qmp-gen4x1-pcie-phy
> +              - qcom,maili-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen4x1-pcie-phy
>                 - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                 - qcom,sa8775p-qmp-gen4x2-pcie-phy
>                 - qcom,sa8775p-qmp-gen4x4-pcie-phy
> @@ -232,6 +236,8 @@ allOf:
>                 - qcom,hawi-qmp-gen3x2-pcie-phy
>                 - qcom,hawi-qmp-gen4x1-pcie-phy
>                 - qcom,kaanapali-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen3x2-pcie-phy
> +              - qcom,maili-qmp-gen4x1-pcie-phy
>                 - qcom,sm8550-qmp-gen4x2-pcie-phy
>                 - qcom,sm8650-qmp-gen4x2-pcie-phy
>                 - qcom,x1e80100-qmp-gen3x2-pcie-phy
> 
> ---
> base-commit: e30626823a406725ce29bc75cb8ec467d3e1e326
> change-id: 20260831-vdev_phy_next-20260828-afecafb5ecb4
> 
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
