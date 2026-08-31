Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 283E2C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7Ni6EBcjGGSWFOwDFLfR6fUyEOer8hNs5o0kArbSsg=; b=puDkW+khHC/9MY
	TuX7T0ll8wGhbHleRcgpC1XIbL2Q8NXjiNyvfgpXD/wlgU1UtTpHEASZIz3wGbcJvQsXuPT3o6U0c
	dTVwyJHFD1d027XKK8BjYkZwoIoJd3xsnQwBEQ/RuZmVurAyZCLm3sctUZZgO5jpOuCuXUhMZm8ba
	Vt8KJbKsiZ/sWd9GntLCvnbzq7HwL1tF2lIOANuped0nsIjcsJCu7AHOu8cMbNyTyvUHbA3o12tFS
	/MNfBuMGZ4USEo9myb0ullnD/f0mBzFsTv9XvLUA1xTFYxChuJZnImAL5BUsDx6xEQgmdVDV6u/cU
	KUFrwID2P7gskdNkLMZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14rR-0000000A2gB-2oiP;
	Mon, 31 Aug 2026 16:27:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14rO-0000000A2fJ-3POI
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:27:52 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFqG2L4079332
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3WNpN+Vr63EvamqdAdbzpzLee0raToScEoKCwQyIt1U=; b=VO4zeFzRcZaWm1Mn
	R9NqSGNXDFXRw8Bd6dGNjLdzXb11WYFfawFWyWgRiuwsNM+Bfs7FqOI/SGYZgsaY
	jU2610ckV46mPKQNVi1TDFHLc4Ev27KiFDCXso1+Efp2ZJpAAlzZQAcoOTQ8Kse/
	znAkAcoIX6Q7q2XIc6duVKeF11XZH2NbNT9Fug13TGRP2Wr2LvvawWnfLynyeebE
	5cFOvO/eVqhniN5Nq00gJTjtYoXAS7ttBz4LGz+JDxX0fEDQEiMd7XhkWDhCIgtH
	r9vSHveg74VQFbOvYn6m5Ow89K6CizzgMimrctm8yh/9+f+wf5quFH1tx/KrNYH0
	ijqGsQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6rb9vgn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:27:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92eebb130dcso62919085a.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788193669; x=1788798469; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3WNpN+Vr63EvamqdAdbzpzLee0raToScEoKCwQyIt1U=;
        b=T4L1d0GXPslrfWfjgHYMwAWGMWfhHvRE5oYm55hE8iBetXwenzYYBVp5yczLWoIeHC
         u57zPEwq6mHG3MdDzR8zPRhyG52MqguC9pBAc2d77BhxNfCG/ZUWY84gJry2eNB7Bk7L
         UTy6xNrly8FUcfKkBtLpZAEk/k7QQG3yxEqv9BT+9zikfKT2sscjZdpXYQJOMXrpcPrV
         QZ0C0Rdm2T0ZFhQeeQrZhl5321rqaHpy4uK52vK0RrKj+HZugCY4NXHXX5JbgxFlpq8V
         z3vMm13kxm8f2qWu01mnvjwyza3e8jS/4jOGVVA6vM4r3SkONhEdFLQnq1Wz9JWWanEO
         pPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788193669; x=1788798469;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3WNpN+Vr63EvamqdAdbzpzLee0raToScEoKCwQyIt1U=;
        b=TrLzW1SMYYNQcAAbxFO3INlGFsciOId/30awkufj3PM0tVHNvPp6Ns3yPoVFb1L0tE
         hu9MbGIKqf1DnRlSB1fLnhdSG3Psz402AddVgAzv24XG39iI09bve1Te2J1m6lxRa4NC
         V5yaLUj9Zw40BDAupv3qGY4D1wlZWJI43OqhFlEU2Y9I47hpmrJE/DkHKzU+gO60Ukl4
         9DLpvjoqU3W/Iiy0YP/KTGQan7ED+sR7QjNydojFAl5Gcb2W0UWTUx7H5KAiQo1et3Me
         kgDl0e6Mi1ia+Xd7qZ3GH8kjYYVrsEEgcEvngqaMM1t5vmUHGSLL0WWQ5JEN+4Tmnr4u
         7Vow==
X-Forwarded-Encrypted: i=1; AHgh+RoDM+HIc7D0v+0Owqv6gHODX1H/QscB8cf/BX1sqBBtwWBTvTu0paWIR5GjXRYNLDAuY9wGq7mXHMQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mXJ3Bw7hC9Pz3YHqlOLeSLE5Mg926FXzr3016XDQiS9VrV8AOn
	r5PsT/PT3gTB4Eddxvi8WI8ecK3Ag1MD+IUGUANFQ7NF3n4z9k9QTOEXa9ZCjvOXSRISPEzPeLq
	uGWek3MKI9AiJlyHGep72kfjkTj1SV0M7ydKXTJwmm/ILaLcTAJSh63YfdO+Ykutyq2F9
X-Gm-Gg: AR+sD12tQ7voNrAoFwTj3BaIPqbV/4M+C5HcBDeo6WPXu8/GQhMG0WIat6yc7BV6Ird
	1pzmPUSI11XW/g78alwXxYJW5JyvCi8VoggMrtoD+nxLXyH77eWwUjzCbNZadUyEhX4z6ThC8ux
	IsqjoYQbIh9dtrbSMDjweesSmNWGE7qBjYUmKDRWkQeJB/+MMojUJjnbYc3nIDXBbGPQPeN/d68
	1ZELycOVOZhxvp8J00v8U/fcXTOzPQhgtYub+eP3N/fG+nIUr224U7Do36elkxjwXFYhRib3Xn4
	NeT7+kBOvMH1AP8A9vfCpfPZNuYdBhbbruOCt/UhUxRIOcOiAGZ/SFnp1wdAu+/e3p/p2Lyp3mC
	M6cLoKa+lHiruKUn9QW250A==
X-Received: by 2002:a05:620a:450c:b0:939:8bc:8826 with SMTP id af79cd13be357-9393fcf48f6mr349885385a.2.1788193668989;
        Mon, 31 Aug 2026 09:27:48 -0700 (PDT)
X-Received: by 2002:a05:620a:450c:b0:939:8bc:8826 with SMTP id af79cd13be357-9393fcf48f6mr349878085a.2.1788193668312;
        Mon, 31 Aug 2026 09:27:48 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255eacf6bbsm450982866b.0.2026.08.31.09.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:27:47 -0700 (PDT)
Message-ID: <d4c8a4ee-2a6e-4644-84b3-bb5600836d8b@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:27:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 01/12] drm/msm/hdmi_bridge: Drop
 redundant initialization in msm_hdmi_bridge_init()
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-1-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-1-67843277de17@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FbrcVZCzfa3yIo7BvnQfMUGYE---TqOU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX/8twt/oKj8Gt
 MnVuQjNIr9o9uVUiH/v8PtA2UvBpFeJlB8L5tRg5tJ/4TYAxHR0u4s9WefxIAk0t6TbG58h+VQi
 2ysXa8aUHhJU0KFvfugZ9kV2nQfTThytqUndP3FHH8xj5az/9bPtIosisDOw8j0QYARzRPj6w08
 7zK5pPkPAOfW1ILqPuNzA1hTXsm5crCfWzw/rkwwQN59g1PXpmBmbTlAdMk+JhcABkAhOLhWqYa
 Z391QvZZnfk2aV43hL1Fj9jkRaT1vAu7DZ3320sjTXWUMzk7o516GtIoEsZcqIg30ZknDpvnFFz
 UHkCW1g+cRGqJD84EwZ7hwo6eLcHrsNeVQQLqzbJo6VtyiUUg/13Ce7BXWXarRT3B1wkJ0rPtXi
 of8Z4GKcU5Fn4yuC87JWiPTlgLTLGcstmBx7yXmKJsIPjufpgw8ybxX4/j1bbLFjsXD7M9DjKWw
 fGn4lwR+bzvjN988KEQ==
X-Proofpoint-GUID: FbrcVZCzfa3yIo7BvnQfMUGYE---TqOU
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX2Qa7uirzTV5n
 mEHVh3vYDxZyynC8sFqg88fsvfpC9FsLQ56zDfxtZ+VOHn0W//gcFWRI34GmIsgkgmV6A1I6hwd
 JXxxnsmnkrFSdfrQUUAUpCRnmUQWyTM=
X-Authority-Analysis: v=2.4 cv=d/fFDxjE c=1 sm=1 tr=0 ts=6a95ab86 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=P84uMFOcKlMy4IiKK0cA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_092750_869629_929D18C7 
X-CRM114-Status: UNSURE (   8.86  )
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

On 8/28/26 4:04 PM, Krzysztof Kozlowski wrote:
> Local 'struct drm_bridge *bridge' variable is assigned in ~13th line of
> the function, before any first use, thus explicit NULL initialization is
> not necessary.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
