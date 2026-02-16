Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11999E7BDA1
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 11:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u82yl9ja+j/FTFGp1Tas6QNiXCKdfPegcCxK2rUmusA=; b=i3kDVTudxzfRK2
	SuyGcslifieQ5SDFpzuP20B7zMedxUsKEuthnGwRVYJXJ7/elVD2P39oYRLjNCIDWcWK2UNG/4LyQ
	fe/0DLPHjDuN+3J/DovKLM99xFOQ7NXD0JPD3x6c23a3MDFtVC1TWJQOLKIph3vTxFUXqMq8rvAcp
	xi97DLcRxNPxhlipO0fxXs+2HLF4X1GebyqXtZucKhEtMHJGJbmKpDLzKF/z/qc/T3fQdy5iSvgYn
	6sfuClzHIM6KkG2ay1XLxOCJeEB2JBS02JDWUVkmjJf8XyqN+ozGQWA9xa+E03Ze+KNLKygsVXvRZ
	9XnqJogqrnGx9EUB3SQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwqp-00000006SJU-1xa8;
	Mon, 16 Feb 2026 11:33:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwqm-00000006SIT-27xP
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 11:33:13 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8gfcP2803491
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:33:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pIclpm9YAFgNaTOb1aVxFMRktPn4/nx7W1GhU742dSg=; b=gF0EyuMcIE47Mw+D
	5SsIFmu/a6w1MJc6tKppvNuMefoloiTrD0GQC5JAfPmjO7dEZrSm1ejwqZbEB+p+
	2ncCfF8pluKv8rN9KIXS7bPkyP5VXQmrVnCVAtIDj6l0LCK8qAgFWmGOIqD2sm20
	uRnj2Ox83ZuuuAGpo9WIiUkVGBWorX8CBZB3I5q0TfaGZSA4HWrR1ug2cpLpB1pT
	ZfZexHwe+APs4id/nkySL5qb5uqitU3/ytlU+WIbzNVslL6b6MTKzOnBHwLbzART
	owjHnCdxj3NGAzlwM0mfxl7Gglqv7jjKhIUme+YvqMNUBfXPMx22DuXCVdUz1K9m
	El1TVg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxugdru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:33:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50fb0abdso174167885a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 03:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771241589; x=1771846389; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pIclpm9YAFgNaTOb1aVxFMRktPn4/nx7W1GhU742dSg=;
        b=WcGIkoqra7l3Yk/OsigLiv3E+sabhXjEI7pkqTD3EOeHDDAR8bJb7+GEMZQf7fjSc2
         JL1CL20+kvzGhS0MNw6C2nTBCxXcmSoofmm/K0g5bHnp1FPZwGP3WkUwVA6x8URT7fR9
         UXCBD+6A9mN6/9MjanbSQKC74SYYsHw+LYfNxKEVF8l46+YsE844XKWDlW0HDKwug8Cq
         tYVpaS8x3vjpIXIVi3aLt2o0hjWTsQpzja8mDYrGRqDTZkRrIHHOmMkk0ulHPwTJXA05
         tKPUhE1mqsyvDng2AVnOYpKtYH+hnvk85Ww3VMlqJNPJ4FrHrRvuFiI6IEYfzwhd9yTV
         qXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771241589; x=1771846389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pIclpm9YAFgNaTOb1aVxFMRktPn4/nx7W1GhU742dSg=;
        b=Hg6vxN8UOCaIMbTJ5hmXTuls/jg2cZg2EIFvJ9jhU6tMG4/FezmLal2Mkzn4/AO0/Z
         U6x/610STQClKopyLlUxhAnITyWH2dKaliktyqvXmi4EKxJ19eX93SNlkr5TyKxTGzP0
         ubcuHShmha0YPKzBQ88ecBxp1co8++5a7zGGHHfTr8ay8d0XnNDufe/4KunEVmORFpBh
         JHsAVjsj/YR4qJO35rz/vrSIKGXuqEw12MF9csoDYBQk/88toEjjU4KOvzC72ugm5l/5
         W5ogBp0awj4i2BZDyQvmHgxZmpxEoTOTrLg98H/ZazJtXHhmhA2JxnTwyvG2jgwSvfSx
         VcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWivlOzj3GvvPpgiRX5oYJKL62/cMxqP3eC5+lJcbRrVbGjB5GOcAi0paoKX1y/Xuku78S38k+5718=@lists.infradead.org
X-Gm-Message-State: AOJu0YyshjYsS6NWg1YmX3+anoEMZvsGLr35HOOfDoFXf9j3eUACUNkb
	jaFUY4BkXDKuQgi+30nnGuKTjb9l2mjD/+IvhzkiME0LTWfZUbKfXGiLRk+hliupcPfj+uF7YtN
	bu26DSXf1i1CYgHsG6ncZKHKroFl03dKfFCpi2J4oFuHKIeWF78A+mddpZ62jNOWOPAfz
X-Gm-Gg: AZuq6aLZxfnJ6eEtyUx+5iUXU/Ocv9zA1fbUpRRxX17cEmmDMPJnl1U/8tTPNUXGC0/
	ucrEhCXA6+n4XJiBysgBKbqZIBYJmohKdNpW4f0+tlUnULvzjx/1Xt+PDbky8pY7M4PNpcjsWfu
	U1eHW94AmO+43zPFc9Rgiq97dyqf7+iARoDfwT9XdBULZD9ourv0nLKkCic7I2rOpNvpNn3xLDH
	5ujeAe08Wmz4Dm8AGLORg3QoHIKuGqLutpoDCpQo1BQE9WpiLMzo3UTPpC/oZpvaixCmQi+DSPQ
	s7AGykHl2wW8NwBuQwSo5Uo5koro+YklJiaAbr31T0ikZ8asVkAUNgKD7OUoFmYED/ufh8Y2TVt
	q4KJA/If9PONQ3g/ApjF6zzsz9Zkl0+mIrR5iE8m4VCe/ZLDsyo+SUUqTsqZFtpI8hyu3MYnY6x
	Wv6xY=
X-Received: by 2002:a05:620a:258f:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb408477a0mr993926585a.3.1771241588871;
        Mon, 16 Feb 2026 03:33:08 -0800 (PST)
X-Received: by 2002:a05:620a:258f:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb408477a0mr993924785a.3.1771241588450;
        Mon, 16 Feb 2026 03:33:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7626bfesm241879266b.44.2026.02.16.03.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:33:08 -0800 (PST)
Message-ID: <5647539c-de68-40c8-8dd0-bf078a086696@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 12:33:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: qcom: qmp-usbc: Simplify check for non-NULL
 pointer
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: Q45kOY7jn3Nz4GF4Ecbr1Bpq-BTk5BJe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5NyBTYWx0ZWRfX3xegKe2YC7kn
 WrVR4ZkREjf5aMcYDAbHPmJ4/VCtLLvOpJcv8hUF/UkF+DqGZzw5FXPLazMsiQFa5EsUAP/Yn/K
 xIH5lGWGQiXLvU9VfLvMZzxBTVUaeNL7ht7mlS/neXlO6a5HQmCXyDjeJpsZFfGNmTtnMupWsYD
 Z8xg1vgjjkHwQ1DEwR1c5flIksnMQTgTpr9H5zOxvGRMsad0Amh2Qlnp7mtWr7Ea/BzEBLv0/dh
 JGyv7SB/QFFTG2e+lv/Wg8zsad/kJ0+MPMnHiGWUNroqkmL93WcLiL4+j/vihFkG+bogHAgCjNR
 YjpceDw2m/WHAuF2T3G2fyqIRULoH6CyxPFcKM372M/KHdE4PLoozqB0aM4JVppha3bhkoWfQJ4
 prX3u6XDkcHdaePUKpsYW6iYElrSOrpT59HsvL5Xg+/pWC1viyvYYKftrjs2F4ilytlDyV90d+a
 gOHbV6ttgallURCOUcQ==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=69930075 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=rQXAbXeZuVbgsyajZegA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Q45kOY7jn3Nz4GF4Ecbr1Bpq-BTk5BJe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_033312_690515_A60E5B7A 
X-CRM114-Status: UNSURE (   7.67  )
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

On 2/16/26 12:04 PM, Krzysztof Kozlowski wrote:
> Pointers should not use explicit '0' comparison, so just use standard
> evaluation as non-NULL:
> 
>   phy-qcom-qmp-usbc.c:1682:31: warning: Using plain integer as NULL pointer
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
