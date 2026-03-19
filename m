Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E53791075284
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 09:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTUZiIly4NFHgI9EYcTw/alQkZQn3K33AkvQPsK1av0=; b=zAg51J3pNZMMlC
	qkuH4a2ArGZdIOyh8pudv/RZLPm1B/gtIbTLSywKAW/GRuERERuoQe3xCdJH+FyD198ikRezT2ahH
	Wi6gi/ZoZWqoIXryCIY76gK0L2Gm3NWbVanloeP2WNWFzNtcE0Ik+1u7UvmjtLHnn6kfoDLQ+wxGY
	6+QOHIobReUEtGK9Get2tcwwL2aWpMWmPSXQkvtpuJBxi9J7AqheJIGsj2CGomUV0TDPH+qzDXVqq
	zSnEhXOFM1BeS2xDRP6x8ItV18XxhRek9IWPwhlziNlUl+2kYI8DPZQg4COzjgdFcgCEQ8Tg2rz/X
	vQe1GxQ6dVZfxMIfJlDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w39cR-0000000AK3o-2VB1;
	Thu, 19 Mar 2026 09:24:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w39cO-0000000AK2g-2Jje
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 09:24:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J74i992000947
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 09:24:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TckbxMyJi7AhkdcEUyt8X0pVJFCrYNyjJm/tTCzLAwo=; b=HzXlmTWc1wDkOb5/
	pkuFMz9+J40TgGDM/f58I4EfyeKayoD8ImOTEiyGFcD4774Owcrfvdfu4IcdlYaF
	9xnfhXTnhcpFNF64Fm8wfIdEikCP34A07rkHXhgJgNXe4QB5FCwd/L4YUAgiFQRv
	Mpl8qTblT4u1kRAIXqIyTNNXvOw11udGgBecU6ok6E8b6NSGVjolJseQysTRx/Mq
	2eO44CSBXmHwS0OF2psSt2bgm7A6IOc6bl3jDofZSgQMhiaY1gYcbeRGC7wfsS1C
	bECX0PVTwNwX+sTme3MPhxR1fuh/CxPg9S7IjeL5cJEATIndxgoeluCWHcRLoq6R
	/F5OpA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb4e2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 09:24:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89c4f6c45a7so5412566d6.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 02:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773912277; x=1774517077; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TckbxMyJi7AhkdcEUyt8X0pVJFCrYNyjJm/tTCzLAwo=;
        b=crz0GL40qy33xV3UqOXGFKp2zVq7MPm+tmJKg5ucS9PVRRiCSWUis3oM9DerlVPFWS
         AXPt3PMRxwZDtbgxPFYFckZpq7nfreldawbjEICpGXDghg9bcq7VgnxKPx4c8Xpwefz1
         C1PF6EuyG3FIkNA7ZcfHpoJZvaitK0+39VQUvnZAnmu4DTyoavKUYI2CKQf0EOg6nQZv
         SCpG73Zbpm9x8a4JObyTkwCcMnd4KVc+IiABajW/olyhEh8TOnNs5fGMAXUBocD/+tOZ
         HrNBvBxoZvft2dsrMHM/4txTwYKGuMdlYEgT0ayEDL7KSMXPQMgSXZvs6dJNVSFGy/Cj
         Nqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773912277; x=1774517077;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TckbxMyJi7AhkdcEUyt8X0pVJFCrYNyjJm/tTCzLAwo=;
        b=ejnwXNcjweLZud+Wp/C7/CAOEAPt3ZUowvlkRGQ4Yelz/w55nExXlMEWlew+OaLIF/
         jIun7zzT104Q/xoffdlQW1IBKprgWNX0ndYbbXr6LctI6HUlcySf7dWMYjb0r0zL9oWr
         65FmnfM0IfFMxCOUP8eJXdltUL1plfUIg9s+N4QfsjZRtbbsJCUHcExSawhXj7y6iFGK
         uGPuAfxJlrhrT1HtBELB35XUnrShBC+kkqOq0i4UaHVCJHherjRHIpeSFimJn/Xnn6zF
         MfGTRV0qVekq8uKSp/voI0TTn92mUjGjkf6o77SokiO1rzPyB3fs8GB7srzMpN3wodf0
         fmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqJBeqqQs0wlM3nzbnCNFLulAlt7EhBeDeylIYqY5W3/SQHL0itGWY7aXpfEFQCOHg+A4mWb2bjSA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGYyhzAZjTm96XkaROcTE2+6fHErlI+VYh7hc7uDf5dsdr6SxJ
	hE1j1LEpEW5nIK6sPQdIBV5GwW5eKX9AfvkIuyBv7QIhweA3G+Nk5FgPhoTeTNGabDZBIZYEzR3
	3+TsS1B4q/oz1OP4WQ2KcVeMRQ0ncBE/PIgUYNnrBY9oFzP1Ae78RbaDIxErVDtTE29Sk
X-Gm-Gg: ATEYQzwvmicagXT9lHPKVOkJapbiNdMvtyMvpJ200gRXv1N8yGZrX74OqeiWhjrhrel
	aEcLUKRlSMKFgDjnUup1L+hYwSPEuQsIa1pjaSjM18pVOMUUE/B4PwP7Ct3SGgbCJ2XGnBCI/NK
	bUKRHJQHh1gCEHIHo2wQ/d2hyrxK74Gz+HwaOoERTKAarS/N3jEzFonFEhL+nX2qppGfzRmQ2wl
	vaq/EHWCwBKnCUGObCDWupo20ED8pjQLmVDrH+Cm4yjM9qEH774TBIleZVZfSmbBUIj4AQ+ODZ8
	GRioznAFPEm63I8LWeV+s/Vu82EeFB044516zZY1CR0OeUE5cUi5b9wueupzR9vmdG26n0b+Fmd
	Jz6qfYZXTtrvCnVTLvQq4C33tUGiwkHHrVZzqDmmQSFGFptT9OEVfrNAhy1cIL93XFXM3FnC9cY
	C2KMk=
X-Received: by 2002:ad4:5e8d:0:b0:89a:4741:2147 with SMTP id 6a1803df08f44-89c6b728303mr74824426d6.8.1773912277425;
        Thu, 19 Mar 2026 02:24:37 -0700 (PDT)
X-Received: by 2002:ad4:5e8d:0:b0:89a:4741:2147 with SMTP id 6a1803df08f44-89c6b728303mr74824206d6.8.1773912276858;
        Thu, 19 Mar 2026 02:24:36 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13ed066sm410962166b.4.2026.03.19.02.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 02:24:36 -0700 (PDT)
Message-ID: <5b9ce996-5cdd-40da-9851-2e7c8a40abae@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 10:24:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] phy: qualcomm: add MSM8974 HDMI PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
 <20260314-fd-hdmi-phy-v5-4-58122ae96d3b@oss.qualcomm.com>
 <5a464fca-7be5-44a6-b124-7b80ea859a9e@oss.qualcomm.com>
 <dpzq6o4qdttbmgtpgit2atjghu2kwrcj36ko3rnvwaehbkvjrk@lr4ms7mi6aiz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dpzq6o4qdttbmgtpgit2atjghu2kwrcj36ko3rnvwaehbkvjrk@lr4ms7mi6aiz>
X-Proofpoint-ORIG-GUID: MBAtBxcn-ZGG8dMLEkOHHEj_8agqdwaY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA3NCBTYWx0ZWRfXzXAcaXkrtCNk
 dSTytUttqevvdV2mKaESNBATvVpqxOJBz3X4QR+nEUtbGJzhWrI4mDpq7RXp4BKCzcC3xBHGX+P
 sEOVD4ug9u3iwAAq34J0LFQBxlv97RxdGs18lv6o+fiqtAMy1CgfYNJCDCuuunbdL3zKWu8WWZI
 pBkeKvQxtPSv7MlSoW7VOnQYZtg++eidf93m8thny2XOvPhRKlQri2yPxTjEcNXF7bsMaOvvll8
 VY6l/OgOXPW67ROwXcs6BLeHjGz/umu+PkkMPJxJnTe85QefaCv5baq6Pr8trJ+qArGh/1Csmkv
 fvcSEDZIHK+WD8V2nWDyrQ9ce50clchEG3BldYaTwc96SAkXcx2s8P2DwmSWyFd55+WyroNKmlQ
 TwcVd2A9GQsDoCVLedv3RttpMifG3OALjAZ38eUFv5AdueguXQX4JhlcbZ+z810pI60cTfTz+cZ
 6nfR34Nhbw/5lmr/dvg==
X-Proofpoint-GUID: MBAtBxcn-ZGG8dMLEkOHHEj_8agqdwaY
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69bbc0d6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=NujWGTqPcDVEmWsEH4UA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_022440_730000_A8A2AB6A 
X-CRM114-Status: GOOD (  12.18  )
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

On 3/18/26 6:15 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 18, 2026 at 10:22:08AM +0100, Konrad Dybcio wrote:
>> On 3/14/26 6:06 AM, Dmitry Baryshkov wrote:
>>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>
>>> Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---

[...]

>> I don't know if it's a good direction, but maybe:
>>
>> const unsigned long max_rate = HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV;
>>
>> clamp(req->rate, max_rate / 6, max_rate)
> 
> Note, it is clamp (min_rate / 6, max_rate)

see, indeed confusing ;)

But I suppose we don't have a better way of specifying that so whatevs

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
