Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F94C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y2eMLIh25/a3HX6Cs4ai/51t85S2dfQhnppbwoD16s=; b=Urkn0RXXZhMpPe
	7/Gki7oqbT4JebzAitpVJTAu7hXFZ/kcHWx4i0rLxTndKklo6vNf7JKtUwHfulHkJgYyWHrCK7V2l
	pERNao76xPIRDx/iuftAG7d5BT8Mv3BvezaAjuhiL6jm4JNRp7YYfVewKdA2B85FzM2T7mH8gR8ZA
	Jpc0TRwp7AXaOrsLgF7YHxVm6H3AfUHzHdtqFeio0aUyNfKyuG+3h4A/1DKKvfExx2RG/aDQdE1Ql
	tqJAtoT3MIomk1wTXPb82I7RbyTKqiknb/hcW+cB3Ac7FIgKWeXlyefOyZfYO4MvlAdpKFiM2zApX
	YKnmiN2PbCFkQEx7rN2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBK6-00000003g9O-3vUM;
	Thu, 02 Jul 2026 06:54:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBK4-00000003g94-3544
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 06:54:57 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6624iHui3591674
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 06:54:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xL54Sy2yQPlXBg5Pq6yC+W2EIfKsiwbAkMZux+PXiAY=; b=KSQTflF1Oo+kkin+
	jQuhJ5/tyxM/cbm2hPNZ/2I3lad6QYDlwsjVvnPQq9No0OE9H8tinINH0vm6lm9t
	Ug8Zxgz1jhfi81zWt2L3ipWwdWEWxTXjuBSZ/RZ3eTpjljkOe1rfVueu4t6v7Pv2
	I15xdMzalBaHfF2CpEJTCuDyayh/hN1uNfbRc+h4/Oj4yzg5U0//NguCs3NjMMPc
	O4iEBs6ub34FdOnsJGJx4UgSah33jdMji9FcYX+R/9wvOZl3VUq/q+RDfxdFpJxn
	WHnhv2a+H6yM0kDCfsYxanjF+hgHRz9nkrYMoAjlcwZIlQik+7m6frRnQKpgndiB
	o09VKQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5h7n8dmp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:54:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ca3b3141a6so23620795ad.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 23:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782975295; x=1783580095; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xL54Sy2yQPlXBg5Pq6yC+W2EIfKsiwbAkMZux+PXiAY=;
        b=kgC1zgVlYVxw/0R/1JZXZ+naDOCCgH+ow53M/BKj4miEjW6RxMeMCx/scoE1OBqumE
         uJYkn9BRGsW+Yd2cPNoHn48DEX+c/i3A4Pa3Wbon32tvYjOOUoNRSEwnU560c73OcFJQ
         udwqW0y8ZSfEIx0EALK9Q2NXPxV0flQKqkA46DybFSThdTGUUtoeKRud41AmKTbajxWo
         P77ttOVYzmRLKJRUt/4JHLUpXtGFrfO7u9RUzTcnrbEu0Ya4HboMUTJZ4+bFxKvoR8cv
         iKF2TdSrBNTVZiJ9W1mbnGg39STId5lCSPULfpHhWi7HYXVktSmK43BuAt7O3ztEvNcw
         pwWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782975295; x=1783580095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xL54Sy2yQPlXBg5Pq6yC+W2EIfKsiwbAkMZux+PXiAY=;
        b=jJYCD+rh/2e37aTj0JIW1OIM+Xk1wJCK7jasjQ3cNklUr7rRYeRZ+la89eGNUmRh7Z
         is6oD0AtX9TiVwoVewuK7eIcIZgOy9jI53KlGuhDcjArO65Sk3iPZpnDp3qeRMQW4SsW
         3X40EMYd8PDvySgNFzu5sOaT4I/UMybaCaroGX/uXfCdygGvu/byCtEfoxkjDtI+g2As
         hPkwpVYFufPBBrSNL7qf5UsBc3i5hxM2VwCKDYDDhzSKDC5wLv8G12OErhdz3DZ0rUBc
         QWfe7LNJc4XJKV/8NSZP7xTRO31bL935OfQjIv1CIpO6Nr/fjMXdsyldCXbFZWEHfMrg
         VKNg==
X-Forwarded-Encrypted: i=1; AHgh+Rru//Tedi7tGflxTdF2POTbuSd8fFVbMeBNcK29rChyzruXTYtqzbyTL0Ghdnyz7GmatI3/oH0juns=@lists.infradead.org
X-Gm-Message-State: AOJu0YwITTymMuuKyVT0qAQ6u2ONtvWr/M8XrL6xJSIVXGORMqcseIZZ
	NYJaE+fX7C6XmXdV/uIaSQOXj7A4HGcbx71dgvH+rg1RI1TzF5SlbHWiOFgIJ20+EEpHV/RSp12
	OLLYAiF0/JBdPpACoZG1uVfFLuwWW+ffyAi2lPkYdMpdNzHPeIgwJ+9WuHyriUH7VqajN
X-Gm-Gg: AfdE7cl+zRD5Q+Aq8wlWCKjy0anMcfd7qMCZKzC7gs1CRzq6AbPR5yG8U4N9XnqktLU
	5NmmZ2gTpkBh42xxVSS0BEO7phk1MO2Ztmrp3T+v2uuLjGtdlqifqUqSLpQpjO+oezuf27vo4pl
	/rbE37Evww4eKJ5PG4fFe/0Wjef24FQZcnFY1WfIBmPvRzcg2cXfhM6qCtG3MDqR6Tag/7lk4Qy
	BmDm2wvWKDl2kAbicDWMUydYsW4vaIRS4m1Nfb42OCUnBz/ktY1nvjnzmwCyyifLW3QCVrx72gt
	Yuk+nfRcysvNITp4W3iqz7MStQuzqYSDuNYXFgevTGlZG7fSSViGE18ZOA9XpRKZn7smgXPP4HE
	ssEGGTV2RpEjKyvz9hEkObdcLG5KrVAtzpi0r+C77
X-Received: by 2002:a17:902:cccf:b0:2ca:329:3da0 with SMTP id d9443c01a7336-2ca7e682ae3mr51357045ad.3.1782975295399;
        Wed, 01 Jul 2026 23:54:55 -0700 (PDT)
X-Received: by 2002:a17:902:cccf:b0:2ca:329:3da0 with SMTP id d9443c01a7336-2ca7e682ae3mr51356665ad.3.1782975294853;
        Wed, 01 Jul 2026 23:54:54 -0700 (PDT)
Received: from [192.168.1.6] ([182.77.29.27])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a9e94ecsm8786515ad.61.2026.07.01.23.54.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 23:54:54 -0700 (PDT)
Message-ID: <9e2f649f-63c7-4058-92c8-55960c96ced4@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 12:24:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
 <20260630165700.1886608-3-monish.chunara@oss.qualcomm.com>
 <f5b75410-cf75-4bfb-872b-81b6180e386e@oss.qualcomm.com>
Content-Language: en-US
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
In-Reply-To: <f5b75410-cf75-4bfb-872b-81b6180e386e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA2OSBTYWx0ZWRfXxgVcSeMrFYKt
 UQ4DKRQOfWDkLaI7yCuot8+044HfRdXycQt8zmIdsLoB9DF59wSW2yYBlq9zUxPFMbcDWbyBm83
 UGawaP7QGwEKYPIXyfl9b8iuObSwyjC2p+AzBtmyemJXQVkrvYhPEh6w+ceWT6luTFwJ4uR8V7y
 30Yyc34kFMa/E01BOY5nxSOMSM31Cd9nTQ18/3bdwQ4yfJmiNq7Qu4xG0pn45yku9BV+tktolyk
 4oBRfup3xmlJLcoHZi+Y3Aq/AftA9USCWvtF9d6XeL7Is+bPorfsyEB5gVpk0o+3bw34nSZlc+/
 0x6Z7p9MgYOlFPLhgsIvAMh36wREOWH0T0hi+dUtU8WLRvz2e/E2EyinvQxPjRsrLTCPoG9A5ws
 zrzVKvdDwXg95H5rqk71FU4qC5K9eKICpg0cPyc7EtUKQpB96NDCLYvTQXb/h6nVFMQWK9z9g8U
 TVOqpEyYs5IvC65TawA==
X-Proofpoint-ORIG-GUID: FxiuA6zTj0VXOEbPeFTsZ_uGnoX3tw8_
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA2OSBTYWx0ZWRfXzLFQG13NqUc6
 GDZdbzmWCg3ilMHIZl5agO884UmBOfcGHqhKz6kTaGBRDcb2m/1vxXhaeuTxzD4PLm5Vhicdwj6
 HBOoxogJEQUZYYUOHmNqvS3A4m5RqS4=
X-Proofpoint-GUID: FxiuA6zTj0VXOEbPeFTsZ_uGnoX3tw8_
X-Authority-Analysis: v=2.4 cv=WMBPmHsR c=1 sm=1 tr=0 ts=6a460b40 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=1qKOYMtCOh3zOq8T1Y2cZw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=uQbOR76-EmcejrgPhaIA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_235456_783964_15D9841F 
X-CRM114-Status: GOOD (  10.71  )
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



On 7/1/2026 5:08 PM, Konrad Dybcio wrote:
> On 6/30/26 6:57 PM, Monish Chunara wrote:
>> Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
>> vmmc/vqmmc regulators and gpio-based card detection for each board
>> variant.
>>
>> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++++++++++++++++
> 
> Move the commonalities to evk.dtsi and only override regulator
> in the board files, please
> 
> Konrad

ACK, will re-arrange.

Thanks,
Monish

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
