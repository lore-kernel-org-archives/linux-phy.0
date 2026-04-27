Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96579FF885E
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 13:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uo6fsUeE34XtRKGirmOArrngZJblddbDgWVnNm1T6Jc=; b=S+VCWqiYew/Eko
	/61rWBtQDG4cVuYD2wYX+YR8T5/HiQ7BFSgDjn6r+KIwMrfgQ/FIjpvl1m2irDKrN8ne+qAteggPI
	glWyfwBXL0ioWyiStJhr03BJLerZ5MobBa/yhaKNCPtvWz2P1wT9ynaBpthHxsGIV0wn4fPEpbn6p
	VNIptpHbPKheJGLQa14dapYU0/d+SgZWIqQslvlRo9dhkv828q9NTxVvdIkjDNuLyxvjKa3DwHOxg
	JweOEX6twGhcrNRZLrzohRZdwyeGevwi8qZ3yrXKlorxFDfLca7AU8oTuUS8lZv4MlHZKOuuYsWyU
	5XjMMW+vkzRvc31NmjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHLuI-0000000GzqA-0imY;
	Mon, 27 Apr 2026 13:21:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHLuF-0000000Gzoy-0SIc
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 13:21:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63R8T8PA2913806
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 13:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ISSsvTNIhqIso/aLy/TLZm+9HzCAZrDmbX+apx8bOMw=; b=ejeGQTfNAJtsDc6z
	Qt9/3Ino+QP7LO6gPNMVbnKRiddE24hUcCqBjJjm4QWus9iihQlPLFQhq/s/iFeG
	i/mcMbQ9HPHUZT09040z5UpaTkFg4i6P0pnsGJjkmDDmFwhJ1qLXViCf8gaNDqyD
	39UHRWIKwNuDzkDyAS8bjSBPXk8eRsYlBkl98AJt9ik8/ohkDCd9RHcnWEgnEfNB
	bnCmietT3HRK2OG9HVvrRs7ei6QA/qslttuBzF2dXJjhCfEXJZ1p9A3bsnWpFyqD
	QOc6Y5y9ErAe+fXtg/jMqgIxxvLEBj2UnRozV8AagBnkioai7OQQMcngL63mSQZ+
	V4li/A==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt26xhmg4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 13:21:45 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56f8ab191c6so708881e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777296105; x=1777900905; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ISSsvTNIhqIso/aLy/TLZm+9HzCAZrDmbX+apx8bOMw=;
        b=GbGvrWpGADM57EpBLSZa9E4MWdNmjm3Ey8EyhKGbU3OW+S+N4kxXO0TNY6egZw/dMq
         Tzen+gaa6Pov235r/Nt53bfQ89g9cdsXzQxdsAXvrtnSHxmbnJcM4ohQWImHhxV4x0KR
         MXCd2n1eZCm7UU09BF2OOdttU/t+Pf3vqLkcpLt+86EqHqiwj1hHLvWhhMFnyf5/42T1
         QK0xoyQl5rmx5WBYoyTuZLgo2w5KMVXAireOLDDAoJKOnxrDkhCmgMLJelm1feVtVH8l
         Y2g8kWSeQws4KrXzHIX9JwgTgi5msm1LrJWj0YMXLBs51OQrS8xcLdFqquYmmkRmYKc4
         FSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777296105; x=1777900905;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ISSsvTNIhqIso/aLy/TLZm+9HzCAZrDmbX+apx8bOMw=;
        b=VFWjK9SbmZXuA1l4IiKoGPHz4wY2x/upOfLNUBrCci2AolDooNkNqi46FT++KkBpCi
         PEJrkw4SH8Jg8AyrVURJ6t+g9S473cPp3pam/tmUCOtYy2S+Xu0/FcCWb/lhSCUMP1Zf
         1x3QpvAJHu2UfIBz8toNZA495rCKt7XG78qFLF9RJmNVDgc7ShOlrADLiRwyDSYklUHA
         R1WpUG9+ntXmxM3Uo4KX4IzatWXvBq879ezUi2JQXLFR6yAbLr6A1rDs/neNRoYXH575
         8m7dyR+WYiCQPyLL6jZ6bsF9kZ2zAgj8242+bH/yUgzDazCEah0QdvnB+8y4UhfCvhrj
         GdkA==
X-Forwarded-Encrypted: i=1; AFNElJ+XnVDmtN5npTUfG57Bepj4QSXmUkNm74ZR1kpyUUoyc64Taq8DTbHG+H4rgbXhecb82tVTE5dK8f4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4D+yz/pi2xoZToCkGqw18h4JjDHbRmKHO+R1jQhou127sngrP
	Rmt3v/L4Qeggam81IQ3rAEYIZuICFIISNdBwqOhBToIv68BEJdaUmajhQt0gXDWYvu1BcPObMqN
	bYwFkjZQWeVIWc0FmhL5emu3BPG1g6HOh+yainPArzOUdmoKELvhpc00WLBZqX7pC4qSy
X-Gm-Gg: AeBDiesaxZBiC+XJKRb24aB2B1PV2aFILepw8YEOz+9U3cbFxkVO/FsVGefUuDqEq8w
	DAamZ9ZdNfXCD+kEzLCTzSzd4pT4vBVNT79YuCNKJIgOwC5sjIHc/2+pdmBDsOZILd3VVrIKcc+
	Ij9uJX/04yCIb+mSeBGysFO7EL8w5cOlqiW4JI/c1V3jDLT8ldmYqkAZ4FVvHAclUyLGMosm0zb
	uXCive0u9hyHFRwwa5Al4PpEJL8nVm5DE5oyq/93O8qufFZBy8rwp6eWR9FKUh34dLDCDjl/LR/
	n26dgphAyymvjMM0uadNxHlFMfCuM4vFdhpqtKI4W5LCW9VVwr5e8dm2aQsI9Y15jLnJh5z4rys
	fbHALQOBPKf5InSwi0Nu2lz402sFumwHeA66X9We0QICHZkC6ZMuIKoA4yP9ZJreEHdHIdkmfNM
	qnhcRlg9OiHeKi3g==
X-Received: by 2002:a05:6102:21a8:b0:606:2f5:7b49 with SMTP id ada2fe7eead31-616f80647f1mr5891739137.7.1777296105179;
        Mon, 27 Apr 2026 06:21:45 -0700 (PDT)
X-Received: by 2002:a05:6102:21a8:b0:606:2f5:7b49 with SMTP id ada2fe7eead31-616f80647f1mr5891725137.7.1777296104724;
        Mon, 27 Apr 2026 06:21:44 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba45121042esm1091078466b.13.2026.04.27.06.21.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2026 06:21:43 -0700 (PDT)
Message-ID: <7004add8-bf19-4100-9e8e-48d5b7ab815e@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 15:21:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
 <20260427-edp_phy-v5-3-3bb876824475@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-3-3bb876824475@oss.qualcomm.com>
X-Proofpoint-GUID: AU1CpJ3sM_X01wH-lh3QHophziOeVfiU
X-Proofpoint-ORIG-GUID: AU1CpJ3sM_X01wH-lh3QHophziOeVfiU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDE0MiBTYWx0ZWRfX2P1k9m24wb02
 ZP89prdYlFX7wZMj6WDcuToX/DOEMCOZhQmkKcUw63VVeaXNeXhivwOdynRTALgewZR6G2NZWOK
 ywPz5Coy+VzjIuC5u1mr7twGbtYaVKLf7OatmHVsPw1/n+s3/gA+QDs8kH5XnvRf+MT/B86ASJH
 N+obH1lLQF7EaHYwnan7CJAMdKRfcKcDX3RC/7qLY98EDPAiqjWU7z4M26UOohhkOl2GKwI9G3H
 ysotlqbwa7qulJJvyc0T9oaUkUqe/NGK4l2VjSaWTr5vHmPghIAA2LOQLVI6NnvNvyluYfdqE6V
 2zEEyuE1Kj1Qp74tnnPYOCfa942s66uCCim9tEhiZA18Vqs0EX+avBop78Ju9/2BH6sR92BS93Z
 UxGFfT73jvBLhEKM59o1DZ9/yUtcOUBOJF88r2EMtVdAEAr6uyIf8Q/2/jpevKaH6ciYwgv86j7
 uHVRF8f3TfkTIbDcQZg==
X-Authority-Analysis: v=2.4 cv=FM8rAeos c=1 sm=1 tr=0 ts=69ef62e9 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=RR4ymGWTN1MQ7N97tYsA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_062147_271088_2A548E2C 
X-CRM114-Status: UNSURE (   8.50  )
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

On 4/27/26 8:35 AM, Yongxing Mou wrote:
> SC7280 and SC8180X previously shared the same cfg because they did not use
> swing/pre-emphasis tables. Add the corresponding tables for these
> platforms. Since they have different PHY sub-versions, their eDP/DP mode
> tables also differ, so move SC8180X to its own cfg instead of reusing the
> SC7280 one.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
