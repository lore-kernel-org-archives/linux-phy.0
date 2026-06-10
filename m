Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13293CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOI7gMthR01pUs1lqGA6ORSDzuplkAfp/iGVUn0kggY=; b=KSisRkMI3t+MCR
	Da3pazABLJbBsZ8hIpmWAqONg1YS0stezqI1Ds2mnGCbZm5Z/YeLVh4xlNMxyeiRD3G78gWh7WfCE
	/0lHN7U+vQExw7m7uzZVup056VAREWz7TTlLawRmWHJ5Ixxjn6+d5KqkrYBHk4zzraNmdscwBrmH9
	HdFPfOwhQa3kPCisOU5hD4Sqdki+Cqzzs6oV4XL9N5Lp6EZEAQ9HF4bWy/v3Ae0kzPq9U81rgRfgE
	ITc8tI02EZnk4CZ7pStM8S1W2Mp5pl9VJmnel5jjBN5ApdYGwCmbzt4bmrdWqFBZmaT2Q5r/NBPsX
	X/VfK3Kl3R0cnkktNKig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXINH-00000007fUh-3GHm;
	Wed, 10 Jun 2026 12:49:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXINF-00000007fTb-38km
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:49:38 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACC5IK3764365
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=; b=LZpP40qYBLukOTD5
	1zkmcTtFp8On8607NukZ9ayEIAeXdJz45vf3ZfrPxAa/ccKtSwEocqCAULHySr5P
	TeJgzQxTuok3Xi2+wiC/lIFYa4Y3AaX4tNNhJirPcDpvDPKYdCJmbuGWWk3e3pg+
	0zM/s/YzX5F1TkpX3zZTc5cclB0U5mPsNd8yj5WKxNX86uc4ZVreRzKC/iWJDMZU
	2qfm2crJ6rvGPLe4DSFhWmD08Os52+PSW+skVZaUzo+O9KET4sQfwIyAwMYeV9LI
	/PqG1hZMOM0+PcVN0QP57MeKorBRMijHI4evP26Mop/bgn8eLIWi1JeDU1hQZ4gs
	kx44mg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epwnetg6q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:49:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5178ded346eso13218571cf.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 05:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781095776; x=1781700576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=;
        b=KdF+s+mvthwLQ+m+f3jbRNx+f+jy1vSKUqjfmGCCy5j4IqbFkvF9gadejQRxvZa2oa
         jh8PFO1Bkie+lPvZ6fK5tkyuyGqJf7oJWEfzKQwnAs4D4kT9mXuIRuiDP9ooJ8lchk0I
         eapXNqUvVKk6BkPQ9otqxG8FTq8oXZ5Xt5dzQKaqECMv6D3K0L77V5nOa/1jttemo5Yw
         rBpUzjQsyVJmtV+ApJ+DvyVVpnVJsY9JgC0/SUZXB5ahfVMBV+tyCCJHILOYxu0U+giy
         6dvH2rQ4mZrDXVA6j92IV1tLOCXdWGuXW225oLre+uEpuCu0Oq+yoBBy/Yzllc5la9L3
         eMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781095776; x=1781700576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1DsMjLPGi4p99htuKXTxVfQyL/yIaoNbHde0W9TmnY=;
        b=TdgrFrnPDGQFPxAS07geGeDONDN/FMz0tJLnK59h/+FzId3wkUXMqSi6hmgBTYXZHX
         FY/T5jPQcVjbvnMqXynocN7c1bLrpjA7N0SI7qcsrzH816O4TllnvlGenz4EgAp2XuW2
         Aso/mhezQBmaeF2S/eNKdcssVygIEV15hhoI4/ORbB9TOwPt7hGo7eSy3WryHdnp2ASe
         o7gUq07VKhCYECGc8wQ2UQlq63A0IzU+cXmnGZ7+qGJgY69N10WOby7JaCcDDkfidKav
         7osLg2cG3E1deLF8B/H1z2sdjKqW+/ZTSaI29QgkcS9aUSJmrtT/tigdRp6ed2ooP2Tm
         wNpA==
X-Forwarded-Encrypted: i=1; AFNElJ/Fmed1TmOHeQTMnTzXco2gAfNnq3AS2vGk7h4hrU8WwLjdnVvaaDp1Gz6lulZj/1WNOZLYsWz+nlI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLvIQ4WLx9evwaNYqdK/V/tO1sLvAY0w8fFU0o9iML0GKpjqUn
	yGqmEGioauIyJ38SGFy0ZE5X8OIfWddJD3lNlaV5CGxurTlPnj4Ew/RmLQs9rpYpU0TvJyK1s+X
	Y+hwOEqj/twY6MeLiE6UhGQS1m9Q9/wFRIhoIAHMOxsJJMGbJr/tFzL0SFeNrU0EmGAjDwhbHyC
	Iy
X-Gm-Gg: Acq92OHHxa8Ljv+DENmA20F8agnXluOenCMI4z+aA/BBlOZzxjcyXFnJfRcmZ3JUtNQ
	P10ke5R4l/1An9Jux0ibIKxTF6FS1paqP1SJWrDLmUe9apcybCZWh/b/vlKhonmBn3lqI35wT8s
	Th+NXr/B2QUmaG6q2GrI3VtBl7xh359zekbVY0NRXyvU1jZO2K9bZiiOyOvA+iMnV4/JKZmYM0F
	aUNi58DK7zmu8JQ0bnEH+pZGxxpNOPeAWKzaQDExlsFb2c2jyF6p52icKfWQWae3XNoJFUSFWFq
	a2co1K08F+Yh1bLbrnbP6UFJIyroyOY+yW/8ZNgw73mpCTot20O/Y/MSoXipp3gAwC4JbGkXmSs
	erPEBDZA3+7t0F0IuItzheNCNIq+hblvnHG18km2NYuIkJrasWzYEz+a2
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr199147871cf.6.1781095776032;
        Wed, 10 Jun 2026 05:49:36 -0700 (PDT)
X-Received: by 2002:a05:622a:904:b0:50e:6311:7380 with SMTP id d75a77b69052e-51795c0d8bemr199147631cf.6.1781095775607;
        Wed, 10 Jun 2026 05:49:35 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf051d86f75sm1183745666b.21.2026.06.10.05.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 05:49:34 -0700 (PDT)
Message-ID: <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 14:49:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
X-Proofpoint-GUID: 2Dtwh5lFj_IQHl9hYXE6m4Pto_XFHIKJ
X-Authority-Analysis: v=2.4 cv=ebYNubEH c=1 sm=1 tr=0 ts=6a295d61 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=HQjsNgoee9ZgyPM3yRUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 2Dtwh5lFj_IQHl9hYXE6m4Pto_XFHIKJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyMyBTYWx0ZWRfX50CMdCEQ+oF+
 wFh/oPLDLLBsxJrdv1JAEdHU+lCFF8CKPI8BifOjtLP/ot5JdYjH3+0RY9+IzHGFSpbSrmT10bA
 epWNxbFZt/9WXxKJM0eyY2oH87k/OM41CX82JEarvi4aV4BezeVpde1K7znYS9FH0GhhMuwuiYS
 XTHmCyiJ9sfh2oubMGxfT3PUD3Kky+0RpbN1EH3rwp8r8JagdJNyWsRAWEqFjYo1oBCz9qVCePC
 hd9LJkpZcOXvHnfT1N8bDOIp1Fb+MQbRXqCHUSAugwYHSJz0LraXzGRbabdmjpc8G1BKNpbz72H
 PMf2Dr782d9cy5lvAryxhYNJek6bWmyZOgqLhFmBjLMi97UoaqeaBXvTsdPGKnvEcI9CsAF4Q0y
 2d8CMd3eO2/qNSyqThvTjWEnTqYOvGpY1FU7F7oMqbtwL3x3tF8JEB5VBTFEQox+v2iomETFVGb
 sDtLwioe0Eh4hkTRKhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_054937_802954_0716A66F 
X-CRM114-Status: GOOD (  12.36  )
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

On 6/10/26 2:04 PM, Konrad Dybcio wrote:
> The MSM8996 QUSB2PHY was not being guaranteed a power source.
> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
> wasn't. This series tackles that, freeing us of some dt checker
> errors about vdd-supply not found on MSM8996 boards.
> 
> Compile-tested only, but docs confirm my findings..
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (4):
>       dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
>       phy: qcom-qusb2: Fix SM6115 init sequence
>       arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
>       arm64: dts: qcom: sm6125: Fix QUSB2 compatible
> 
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
>  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
>  arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
>  drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
>  4 files changed, 43 insertions(+), 5 deletions(-)
> ---

Note that msm8996pro may need even more looking into, but that's a
story for another day

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
