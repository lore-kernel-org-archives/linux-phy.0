Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E31CC61DB6
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 08:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nV6TepOb6cTd6T21UcEQjrdQ/9IHWAyYywJfyN0lDbA=; b=hQCyBTJMIEWqaE
	o94lwHxSq/aMz7ylytaCi50/gpQer3F65nI3xYJFMSSSJyhhqL3EvdlwsvrOK/YGjhiULhFSlc2sG
	doW8BrtDT1pI2gquas9xneh6U6B6F5rsDzwx1B3n160F9kAsEnTrYA6rpYIe70+gjVGL99kFs+iI0
	3n6b6hFpGgDe8PZjTO/XvAuFHEE3+1rT/UVxGQWZen2BNYGeRfPim0tAxxVoSzIrSdhGOf2fz/jei
	8kTXZT/mbNIO3x7xSC0/Xerj3AFIGt8jEJ3h+8+m6c/h3M5OkOTUAkuAOmvgwqY0IHnHV7BmJkaPA
	BkikqkzBRiVYLp2UTd5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymvy-00000000R8F-31jr;
	Tue, 25 Aug 2026 08:55:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymvv-00000000R7W-3EjV
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 08:55:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P88IHB297205
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 08:55:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wr3sDhheOlgkwCnib0I8dD1VSRrr0zHDqmtz1axNo0w=; b=DVN/BwK9d8AhUlL8
	u6XoGwem5m1k0WApnIqh6Eui5hyGvRgwXV0wYDwieZViqW5S2Zw09EEKmu6Dsz0a
	SRQtNMPMN4qBfPFzaVEEXfeCnfpHj/y8fhAgh9Lbi1lgzZA/PHvOrGrlW1tFAkY4
	Al+G2MEqauPqDrFzdd6BAI6oP8iwP/RpwknCktNIy2ZWuNGDEyb34bKcUtzeXKFN
	Fg2WIkaMeIjn9KnWDGfJrUZ7MA8rg6yxD1CAkQv+1LRug7wXiYgLerwUZj+2+n2V
	hB6dOMbuRazjMV+zprtBtm6PbK1PwoyoY7ctvIidQPGRlewgNgLz2MHEU1Ho/W9v
	ig4Hxg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g93xxs0qc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 08:55:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c9e97b626so8020771cf.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 01:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787648102; x=1788252902; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wr3sDhheOlgkwCnib0I8dD1VSRrr0zHDqmtz1axNo0w=;
        b=U9EtIRRexahOae3e/13mUmOozFtvdgIW62brB+9EZ6To6OwVfCFiPOBftSF+7jB1p+
         JaGGdhsheBqhQ4MNuBgebG06z9yon4m9rMR6fAagavMrIpw424leJq/mRcVQ6StJT98I
         pNtDeW6ijcTWEHnsxu4CgmZ/B6QbLvZVaRti9R0cq7/BguXVUlmhmzrD6f5RkcHLea7V
         EzmVZWWSly/AEaF7mdept1NQjPoHhyuBQXuTSOXvz47JAU6zUY+SoY1nMxNhGYL7FR5J
         mVFyFLEh+dcE/c8yzqfkO9/nfIg9z5NvCF5MKT/MWTHhtQTrbbHrp8diwJvRA3kRR+eT
         Xyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787648102; x=1788252902;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wr3sDhheOlgkwCnib0I8dD1VSRrr0zHDqmtz1axNo0w=;
        b=H+IpOs2eoGeMNhN4E2juip+FVFHXQMZklHbyxtIqA5NN+5ucbVAQXzTjdw5G+GCDoS
         Y7qhEG6tYLMQFUFQ31qGR23rYvuA4TS/d/W9wXA6UFGCZ1vP0h9APYIWKuU/bIvJCsCs
         1uDA4n1ObfLwU+HWkCtWWP8+BO79kJhpEUKacBP66cR1ToSR2OI4KQ89CRQGUM8LnEt5
         hq4gamYEGq14baTiF49rUbhK5NkPx0w0Ics8fCcy8VyeN7xxoP2Kg0EVOZJqUMJnDIJk
         LPkaVQoA2rkVUoc77soIXUoKsF98B1WugYcFkhDdU9blIa1tcYUjyPw/TXFPlmfzQFjP
         IP1A==
X-Forwarded-Encrypted: i=1; AHgh+Ropx9W40DXsqlvRTJ/n9Q4xXYWV6led5tht0MiPUCTOMBGdS/flCPpob7Dlkkf9hmDEi08gSbEzHJQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nNodhF6VfjpmdOvfIKAti6r5LdrmI2pSXMCTORwLwKpcDzbe5M
	5srbAwgQGUEdSiYEV8xt0bBrpNL7RRm61eZamBUJ5/mELAY9/SQ/E2/dYdPFhPHe3rAilBhugny
	MRtfPCW49qwm63WcW5K6MhJ1RLBhOpfU1mbbvIbN15u1ZJfjEXMVJzcNjd0X1wMmNBoAb
X-Gm-Gg: AR+sD10FOaScIQbOc9zhrHCWaXwEZUn5uPCZ3qPaXlECzL5swGTWqmTQp7Z+e3bI567
	DoyzytoWPG2OZXXKoSz4HmhClF2lUruwtWhgxumP60vkYAaWUVAYXykXJaBk6GkEqSg0zldPa2j
	UPUtNI+Ny/BSKVwY0CgJYVCb6pdey3SF0lsNYs3NlxVvTWlOGaUdWfqTCQQd3gMxIdaHK0rOeG9
	0EO2d0y+5mEOEKCetuGURw7fb50bsAjznaeLEQcV0ftyZt7avN65oDUjViu5j1MVdH/F+3husoT
	lV4U9A1Yl9fmgcm6nqVSN+L3wOGVqvn5xa1Xope3uHFk94wLwd8knUntux0nocCmwp87oTMPxV8
	7XdPR6Q/42nAZsXwQhA15Z9Pk
X-Received: by 2002:a05:620a:1790:b0:936:2f59:dfe4 with SMTP id af79cd13be357-937392b8125mr2182945485a.0.1787648101997;
        Tue, 25 Aug 2026 01:55:01 -0700 (PDT)
X-Received: by 2002:a05:620a:1790:b0:936:2f59:dfe4 with SMTP id af79cd13be357-937392b8125mr2182943385a.0.1787648101597;
        Tue, 25 Aug 2026 01:55:01 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2496738e8bsm1606744466b.44.2026.08.25.01.54.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2026 01:55:00 -0700 (PDT)
Message-ID: <d3d075ac-598a-4b79-8d59-556657edb23b@oss.qualcomm.com>
Date: Tue, 25 Aug 2026 10:54:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] phy: qcom: snps-femto-v2: Move PHY init registers to
 config tables
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDA3NSBTYWx0ZWRfX8xsZJ2256XwZ
 so6lVpzfV41yjbsUGx457adasNmv6z4QK/hUWpZgURS2Z0LRbk6c6JXpc4NasjCaJQeI/k6yX7K
 xHGqnQzW7z06yGhGVzur2DSsiMM4Uk4=
X-Authority-Analysis: v=2.4 cv=EOg2FVZC c=1 sm=1 tr=0 ts=6a8d5867 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=i2kGgbFhGYZGOrntVjUA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: f3qDwvXe4lHMj3gcD04RUQ29Y3YdXVZP
X-Proofpoint-ORIG-GUID: f3qDwvXe4lHMj3gcD04RUQ29Y3YdXVZP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDA3NSBTYWx0ZWRfX3f+nAV8LIGik
 Q5qUN2dka4D3T4RZKl5zbYu/KOZiT7wdnk2VXVuSKQqUaUvI/5kk5rJD1Cbg8Ojk8d0l7uN6CP/
 tBPcAWL4OJq5qdY7KkxCooNsIsaCtG1mbgQmYc8U+GRWnBAFiVO0N90LWbMdtbBacViP+6shUIm
 8g//k4Zx6cbODYsBq8DAfaW9uGKJ7UNUXWo67x35axsojd2G3Y6MCGGDlixI++rRR4pvpyw64tJ
 pVZIXSCE2yNEbhwO32qF2DznRp6WQSIY91FaRp4TRVvsgJqhnGYIU5xTyQMa8Dj1lJ8CugbJWHy
 RI8okau2mi/ExGiqBK4/Yv4gszuXUajJljuUEryORY56ZikRQg+960Kc9aDh61sFIeQf6hQLruc
 s2/ScQPRGhbcgkJpe+gr13VXuS7iLuDXztMAXmWWyboJvoAqwKtt+921FJFDT4jBXpU/0aitFKH
 DU7h11yhwM6SF6mve8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_02,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608250075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_015503_824279_E06E4DDE 
X-CRM114-Status: GOOD (  13.13  )
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

On 8/24/26 8:37 AM, Varadarajan Narayanan wrote:
> The driver currently programs the common PHY register sequence directly in
> qcom_snps_hsphy_init(), with the fixed register writes split around the
> override parameter handling. This makes it hard to support SoCs that need a
> different sequence or different values.
> 
> Move the fixed pre- and post-override register programming into per-
> compatible configuration tables, and keep the 7 nm override parameters in
> the same match-data structure. This allows the driver to share the common
> sequence while adding SoC-specific sequences for future platforms such as
> IPQ9650.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

[...]

> +	for (tmp = data->pre; tmp->offset != UINT_MAX; tmp++)

"pre"/"post" alone are not descriptive - perhaps pre_tuning/post_tuning?
Or do we maybe know whether the order matters at all?
> +		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);

Custom termination is both error-prone and memory-inefficient, add
another int to size the arrays

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
