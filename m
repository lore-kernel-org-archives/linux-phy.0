Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41856FEFB6E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 16:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3TdViHgR7ss2LF83v8Zr33B3knU5iXJgw0Wt+IVFXw=; b=48WGTZZ+jS+51s
	u5kpA2B560tnkq/7z6lQIuoyHh4DP4Hx5ZmU1Tf9TdtLxPX41icZoFDF1aeuHKewDsgBH2sGNQOVp
	f6iPzNvmjR7/S+tKL92lCldBAEphJ9gGXxYlN1TYOvgr/4tIfsuc1dwqv2JW714KDUqWveYY0AbBn
	3lQkBI2jnBjiFBuWFN64u8MM5eZGlVJFf7JhnIvy0xBGsFhVoWhzfLLhvp7854sVSturm+sLvUUR9
	QumHT5t5NWJk64HUy37046oPPvh7HUQADeDk51cJKWV9Y40vHGxO+UFW1ie3GJJ7SBWrO8Exjl/rT
	dvm+CbhDtO7TwQXdr/Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw13G-00000008l3C-3NxR;
	Fri, 27 Feb 2026 16:50:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw13E-00000008l2L-1oQ0
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 16:50:53 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RGj1E73911249
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 16:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bQJD553MBZTSYmF1LGKh4sLQTYxS1QYALIIm58OLJJA=; b=a/rVd4ZukBuz+Er8
	OvWIGbgbBuJ3xFg4N8n8fr/Ci7XQ69zdPmofTfef0eM7GzdH9EjFXwFk9zcpYvJs
	SnTkyBTBZLv1HU+APfzMTH8MfHH93AsOdbYpqiFhQYtDkWsfXSiJy2EgIdd7YaWw
	72iAYI1Xy/sC+7Pc+JvKlTg/HU0NKRMBuBMTSxj69O7RJt78KRjC1Kj0PEl8tNuI
	cZ42JoU9hMoeAA0qYeB5AHXKJGSPqcYuxWo1+7CnCrBCWEAdP+/KNUunj22lCZw5
	lBqLGSwySPe6vMAq+V3FYpQ5XvpT8of2Q9o3x2PK8Gi19P2RrrFz6nVA+ztE87kf
	8ucj0w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck73q1ph7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 16:50:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb399597fbso169562985a.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 08:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772211050; x=1772815850; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bQJD553MBZTSYmF1LGKh4sLQTYxS1QYALIIm58OLJJA=;
        b=kqz0APjN3wri+jmdR+onWnv+/LFZR6tdUZoQLW7bvU1Vms9m9s5HGeKhFiwxrNC0k+
         4+Ei3W1Cm+QKpFVpuzjCn2fJWkTUaqnr8oPC7UA6fDgG1ydm+F/tCkt094jPxrXWvWQl
         GLi9CRflz0YOrJrfEQnPG/irSQhCwKuxgQJRUU3emqbQAnEGjSKDkxZzmvTRMFgFHZUM
         csaf4J3PoZB65pYQnQz4SCA7tfAI2iPQldQiiWDz6a0LKHxVuQYj3Ux9fjoCTMWziJfQ
         A1V09xSYiHnqGKpBWZZCEnSITF6u6PY0sWmTQoXwx7H8os3fJTjahHTYrJy82AywknIN
         Papw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772211050; x=1772815850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bQJD553MBZTSYmF1LGKh4sLQTYxS1QYALIIm58OLJJA=;
        b=QPYB1M94uwB6Ikhbv6cx2m4jwQ1wX4bBtrj28enux92ED3T+Fe0YyXHJZ+63Kk219j
         7SIQg7ZEJ2eMTxcuNIiZqitNrwZquUqPFcpxp+UgydCqE4x6z9kWzCnhH3SV/nQCmxHK
         RFnGXC0pVy3VYgJ0Ib/xmgdGGBvRvIHSpuLzKLf1nzTAMJENqPQqu/dpxr3qmwnofCTC
         weMQJSfxKQiOOc0ZNT3XEU5zqujnH2S/uw+6tfv2qt6Gv9i4d+0J32S/Wc8pTMUYg0Gc
         KS/HlnasnmYZ/FkXYxZs0BNv48d6UT/dhqLK6wj/IR7EgyfslwM64wH9Yehm+i042rrf
         AXdA==
X-Forwarded-Encrypted: i=1; AJvYcCUZnx81y9wpOCh+oKOp+GS00w9qbuvhVksPRdAweCnGpvNya7BHnCs0PfBdT6nHNipUcq3c/sgkkQ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3JXyM9AgsejaN5qskUuHywpcE3mxy+z4Oyj0Ysy+f0+4ox3kX
	GjWzIwTUPorHFmdGqKZQQv1g334nkGZKIyy8/HGpvqeb+FlzMVIytecpHJ9P2xKBVWNDny/Azem
	gfEDgpTwegifZ7QHRgmp3wQGy/AAVAF9nKTq3hyJii1dl+7f6OHQgZQFVnqxMmNw/Zziy
X-Gm-Gg: ATEYQzyaTk4BB/QxfsqS88+sfBsiUrn1sb1fcCs1RZMlHFxuGow9rYloNOvBXUz0F6v
	pqMnxhcySEq72/gl0fc6kPIie7DfiqcIpWPqF+sXicTXgVFSrMmt2QWBL2/fuJ91N1sTaiznlxx
	ZMprf4Q+8b3fTC/5YxSYnDpFs31J29vDHmor7EDufAIJMFXT/eoW4PL2KbCAcrpc9afqpQ5O4IS
	dLcWE8Bo5vmhDoOixWJSqi2/GTIPErpc3z6Owsi/mEovt+zzTL+ifGvR2QWpBRXg8JP3xRAAytG
	kVqRl1qCsq029GmF7sl0ezlx2eAuQbLZhLKtt2LfmX6t0ftEjXy1ZcEd1nvUCWgtRqYxk6XGaP4
	GgaRKmsMC3/NdH3pYBEgYkviivzeD4pWVvfb2c5U0pSy/ebTpsTPd0iQYYak5fqBOftkPav78AZ
	UjhZ8=
X-Received: by 2002:a05:620a:4405:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cbc8da1ef9mr335117185a.0.1772211050151;
        Fri, 27 Feb 2026 08:50:50 -0800 (PST)
X-Received: by 2002:a05:620a:4405:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cbc8da1ef9mr335113685a.0.1772211049631;
        Fri, 27 Feb 2026 08:50:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d26dsm1442807a12.16.2026.02.27.08.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 08:50:49 -0800 (PST)
Message-ID: <92348d2f-1df8-4844-b41a-e458ea470a83@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 17:50:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-usbc: Fix out-of-bounds array access in dp
 swing config
To: xiangxu.yin@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>,
        Dan Carpenter <dan.carpenter@linaro.org>
References: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE1MCBTYWx0ZWRfX7A5afbZ6vLq+
 eXH5oaetuls+Yui8ERQxeH3IpMP3HkWGyufvKyZVkxy+i8X1LVTHl5VlWYkqGd+DLMAf81o1B+V
 do7vv+0GECSYG4FLazsjqE9KRht1Gtp87s7vjD4O+1GOE/8C16BkCIEqniBM5vMYgRoXZN8JHsy
 lDGvG1uWOvww4Aqhn7QGEXh+COm7qIRy+zahk05/XaCJzqdHgLbuFjPNlzjITZ3vMJsMS5ExOXX
 YtkLvszgMx9PMO85xIMeyux4SK3ThxRqQYuOYZySC+aZ1XMLnxBNQVkIKdE9xlAMqLM4OLACuiO
 I+Y49oiUTHgr/PwBiZTI2/TUE0jl76zFSMjJ66UiMtLvuZOzqB/RxXUBdsABB+YePSlXp2z19zE
 yWDhDh5/6mHZ5o9XlAcc1omOkgRTiX8nNz0KNsBD5EVTXHavBH/5Rx7GOq7548djZDcbclHC01M
 aBoYjVoh9Lny1fPGk1A==
X-Authority-Analysis: v=2.4 cv=KL9XzVFo c=1 sm=1 tr=0 ts=69a1cb6a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=r_RmVpEsDzQWxBcQmW8A:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: tAep0SG28ClbbWEu_uRktvFEO7QaVd6U
X-Proofpoint-GUID: tAep0SG28ClbbWEu_uRktvFEO7QaVd6U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_085052_588818_7608CDD6 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
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

On 2/27/26 1:15 PM, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> swing_tbl and pre_emphasis_tbl are 4x4 arrays (valid indices 0-3), but
> the boundary check uses "> 4" instead of ">= 4", allowing index 4 to
> cause an out-of-bounds access.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Fixes: 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and DP mode support")
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
