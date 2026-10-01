Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553E8CA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPefjGUq1963JmJ0lJXgXefAUHNTmVMatTIfS3m1WGQ=; b=s14qqqyKjnrRm8
	NWD9pNPvKDwEYX9S8K08VMg90WrO7tb7ZfZn3XhZvM+MCiSroH3VbvxolrABZSBL6yrx7LsCh6tX7
	/MtAJeGB5/8z0S1aCd6Jo4LLgjsTFbmcrGkyKDH0IAbtasrYKAZCY0GBvQA2LHbD3kZyX4hOhggg3
	ushoJ13hNaOsNvsiwLmQq5zhPp44GHDQRHEVAUfS27lUChgJerQTqksx0u0XZzFH0+1bfE3hyvzxL
	/a3JwTlL6gDKHSnZhmuVj8thClJHZqY8kMzhTEqVygx018mDqg/culOfszpeDS6KJ/xhDQMVepijD
	m722+BdaUfmNtGVUJTVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGcm-00000009Ch5-0Bt2;
	Thu, 01 Oct 2026 13:15:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGcj-00000009CgM-1p2T
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:14:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 691Ce1MF1661060
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 13:14:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rdVvxn/rNxjV2Wxk0pSxtdz9QKHEvAiBofKWCfzPRtk=; b=fwtyXP65Z5tghmlP
	LiMq3NpSZJze1bBwY97yIzL5/6CC6u2acyzhIanCFBUYSqBWipIxfDdAl6FljVxl
	yPdVVqi21AuWBZMnsUU79G1CdMDS1RVp/zUK4+lcMwDU/ljuGoN8piUE+GRAs356
	IprWvvG5xpr7kqaP7muevHzY410lEX9gJ0uYM2YMkNDzjf3EnQZr4qNYId/XEE+O
	C/ATJDYjXKER9xdCkb7rzP36NzvOz5NrYdRbzhNr/Y9NRGUNg2Y5yF9QiYhzYeui
	OoKyK1X0r+0NpklSbG2YEUJAXu5fgo6pk1Inn6buMFTmIQguu6FM6NUPmsUwQ/PC
	j/Se+w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h167pmnh8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 13:14:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6f75c1219so82923215ad.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790860495; x=1791465295; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rdVvxn/rNxjV2Wxk0pSxtdz9QKHEvAiBofKWCfzPRtk=;
        b=MVbVCsACld9fpJnSdfb4zu4q+WXGKQlA0zWaX/EwYIp7gLvglF5989kboWNWh7jaxY
         DBBOFqM9YWasB0r1PsC7g/ekOwyt4b0SSMmLNqdoYHTU7PjWrBY8rtomnTcUPbpsyX4z
         hm8Y2t0om+cSiQFZHoP3iWSOw9A+pesyDx9Y8aVM7Nq1/ZJ06F3JmMOc+QLerHs56Yrq
         2AwcdG4kGsiNeclniwFikKXEvfpwjbjk3CY67WfC75JTL2XF+DwMEbGHPbcBXFF7ZsS/
         bsCDiBiXZ+Ng4Ld9BnSo3bR2L3XKxxmWIVdfSzMwGiFM882Z2yZJnBrUuwqF0xvi1g+z
         EGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790860495; x=1791465295;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rdVvxn/rNxjV2Wxk0pSxtdz9QKHEvAiBofKWCfzPRtk=;
        b=fot15K59z5iLIY28MAr5HdQu3MGguAdxk4AXD6hRGTejoad62PxmNrsVgz61y4/aZf
         2NkyxZIOSztfvNzezHNQmMDFwQbbZDb+lMmvBc6KvCFeYMLP0G9tAntH17t1S3aQycy7
         3ZkTKFv8uoNdUMu0ZrAwFZ89Omqm4T19ghWyzVX1cJ9ztGmJZImSq2Unu8Xwk6/hJ9/s
         F5Qo00YuIG/ZQ1YFiyXyWXU2S3otXrfr3UANglliaEp6c6I+fRhY3ONcby3PmNGL66d5
         HNKUWGO6eYllwcU47DRqVbNWEVrrp7AdYNbV5PskEGHN/voVnBtDxZ3jri1sEAfgXNUn
         PIWw==
X-Forwarded-Encrypted: i=1; AKwUvByADQohb5FrP6PAvFSU/h2yHeIEFAjNOEtXn9cKnF0XmXslwjxy5U5A5ginnBzzyxXkIx9RywFS/Mo=@lists.infradead.org
X-Gm-Message-State: AFq9FYL9OVfXz6/16aagGzUflwsDpYVpxLHqa0XImPnhye4/Cw5irNmy
	cIPX3N6oh1+B6xiL0BoVYksROIX2/L2snHh2lDttZSGaPE6IJE9cG9YFlTwz7LmqXh46Uc7ctku
	r67jhDPLCTV7GuIkjk0/OpnRWMgUki3oSiJQP+eby0aTFeGhjlZsgMfpmgYXyDCXfvXS54FsF3R
	Th
X-Gm-Gg: AYBFou0BqhDC8xircrUMRIfJwpuDlB+oCXYBPtYUczp8rItn7ZyQcgeLq66rkIyw20B
	SqddsyLQc8v0zLFXYg0CdtvxAJiori+zJgyGAqAWLrkn8jlgC9jb7F5QW9n4dZENWwznC4CefYX
	pR5KVEIU6QyBiQJJRSdzkRs6aA059TSu2sqHNKS9klPWGLvK9YbQkq7lfQo+OKDTVVdwYVVwXxj
	dk54ivmBcJUN0dCGv+O91pOL581e9ftlE9ezURfY8DbyHr0/CMOmHGMuJHVIN/xGNGaOca3Bz43
	5g4CzCCNAVtQ536vQoKIbjupoZ50gjXfECzj2Qb1lBWWbCXuLAL1yOoNZj4RALhP9RXTkMfn+0G
	3BenG3BQegRCOxR4WpS7Y+h2upQ0d
X-Received: by 2002:a17:903:298b:b0:2db:55d6:349d with SMTP id d9443c01a7336-2e2e49fe3efmr39712785ad.21.1790860495057;
        Thu, 01 Oct 2026 06:14:55 -0700 (PDT)
X-Received: by 2002:a17:903:298b:b0:2db:55d6:349d with SMTP id d9443c01a7336-2e2e49fe3efmr39712635ad.21.1790860494592;
        Thu, 01 Oct 2026 06:14:54 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e300b04ccesm10512655ad.48.2026.10.01.06.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2026 06:14:54 -0700 (PDT)
Message-ID: <4bd4199e-8552-4686-ad85-9c3e27b1f967@oss.qualcomm.com>
Date: Thu, 1 Oct 2026 18:44:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
 <rp53rdt4rseek4cjmyqhmwg6rm25nnm7e3p2qvmjkr3l42ymmo@25os6fta5wm3>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <rp53rdt4rseek4cjmyqhmwg6rm25nnm7e3p2qvmjkr3l42ymmo@25os6fta5wm3>
X-Proofpoint-ORIG-GUID: AQP3LPfFL-9bTUtIwCM6-1h2kZT-AHg1
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDA1MiBTYWx0ZWRfX8TVxNSiWQXHe
 VU6wt14ChLLPfFAxEP8JEVVmk+7VuhjtTChuWLuEw3b5RDVVB91VIf0NoDbW6yTLrfebQ2A4dlI
 kfyRFu+LXEbeU9lRiQet/PukA8R7P+8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDA1MiBTYWx0ZWRfX2rtQD+eQR13K
 2mYfLyzSO2tHFPtnrdeb2bdrkeQ6E/X7E7sok9KzyjWPRWmqP3Fu1cyzF07tVX+u1rwdY1FLyAi
 ylQTpbIREx24MG2vnFmJqqFDIR9CxSBUwqF+K2Hheqj3R0i5WLkfMpcFx/cK/YDHYGlk6SnPEJV
 8ofgPxa3T1ROwrk1o9lO9NhsUCcM86mmHu4pmZa7ex2lD0P0+Da9FDIS2XuqOXChKufdi9AnEpq
 JFcEExqCHucTYIh8BAq/pIZbMCjzcxc08c/V2qfuVyZ1X/AAf2CzggCDHlIhfMAR8f0wARu+UHN
 ZB0BUbpie1aTRbVhiY6GRcnM6QsNQ0gu08enWVxAzHERf3kr9o6ZQ0YnPHn8iA1evmY1kpeCxiR
 29TLv9icO4wsS6KOl+Wk252CfEAq97ZnZ8RURSD7BlRZzr9Ai0i0E1FsYQ7jQ7XJlk57URsCMT3
 CxvHB+u27oFV7QCUwCg==
X-Proofpoint-GUID: AQP3LPfFL-9bTUtIwCM6-1h2kZT-AHg1
X-Authority-Analysis: v=2.4 cv=WpC+otfv c=1 sm=1 tr=0 ts=6abe5cd0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=PCPe1U30QhSBGYhJ7sAA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_061457_616091_8CF24560 
X-CRM114-Status: GOOD (  16.48  )
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


On 10/1/2026 3:31 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 01, 2026 at 03:04:21PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Glymur platforms use a fixed DP lane mapping and do not support DP PHY
>> mode reversal based on Type-C orientation. Add a configuration flag to
> Does it handle orientation somewhere else? Where? Is it a property of
> the SoC or is it a way how it is plumbed on a particular device?

Hi Dmitry,

This is the Soc-specific property. As defined in glymur HPG DP_PHY_MODE 
should always be 0x5c

for all the case 1lane/2lane/4lane and for all the orientation 
(normal/flip).

>
>> ignore reverse orientation during DP mode setup and enable it for Glymur,
>> ensuring that QSERDES_DP_PHY_MODE is always programmed with the
>> fix mode value (0x5c).
>>
>> Fixes: 815891eee6687 ("phy: qcom-qmp-combo: Introduce orientation variable")
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
