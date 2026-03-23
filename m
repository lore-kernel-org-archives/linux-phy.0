Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774EAEC01DD
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 12:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxkp4bX/55TKrSYEgQQ2gdZ1QnP6oo4JqYhu8gNsmZo=; b=DKDpX0q71eF79N
	pgPwBf9TE8AAfo3yG6FqWa5hz9OSVodjWEq2m7CQu8mHHlaIfSfaSAjs6fmCjmQktoL7ZqI5MGDBk
	a0ffX4xlWoAffdQM6Hn1zPcM7q4ZWMzyh9bB0u5r424xkh9loGKLEFM72FyQmLYAP3BevScfOyLJs
	fW/dcegae+O+GKCFyKM/uiKQomBavRpev/1QgVceIFSq2Zgmsooms6DzN8tK1uyea4NhL9/L4MSwo
	822i6hGk2RinQB8PT9kLaGI0LtxvwcLPs+UWtHfLuSxYrUcm106QQy+kStITcDCQF/hTpYbPItat8
	LWnOKFCt4aNj50lAn8sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4e4a-0000000GfvC-0zhD;
	Mon, 23 Mar 2026 12:07:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4e4X-0000000Gfuq-329N
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 12:07:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NBgBhe122534
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 12:07:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cbKIFS+Pc1Tan8+I8NB9EeNeQknosIAeHFs0OOQ5r9M=; b=CmgghD6HusxlT1/O
	Aw4Rmj3Kct/fWZdgGJLNRqd5Q9ESLe+Rz7b/gahS9esZoG9DB4C170yfgJdWClMu
	O8/N+8xe7s+fCGPUY9fvPRbvjtD7otWdgL7Zkb5tGvS1vm2gTYbUwsk90Nru3rdX
	zNsQcchGxXUavm9+GHN4f/52c6l3y660GeeRl4NPBUskXxu7JSMcAgCJf4omAnji
	qom9taYTol05E+qGj3yIwKLm3fqFA5XJQcgUsi/wpXkzSOje+ZRfFaR7aIGdJHJC
	yZjY9YCBws7DTgho7yu1aWVl3umdlavHio/4uL4hbwdn0uoUyczdEqWwL6eEqMW4
	vhQDVg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d34vkr2k7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 12:07:51 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56b6a0f5391so690182e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 05:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774267671; x=1774872471; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cbKIFS+Pc1Tan8+I8NB9EeNeQknosIAeHFs0OOQ5r9M=;
        b=U7RoDVpxGSyAx6jDpyWInUL2cOnM7VuPvZ+0UwY1hKWt4O+eDPypXAFq/AsdMqbMkZ
         7umGpvKSZDVd1FQExISbTidBnZcxKXQxVD81MInP1+2tDdi2KD3K06k+r+tCVh7ehvbH
         v5bxqZtzv0aSlSBSmd7ksvnWeOQjVVt1piMVwr0yv/GgrC0OqDi8DKWX/6aF0zY1S9az
         Nro8OcxlZ5fMUK4uZIRmP+8um9xGkxn9vr5G1sZZCgpiYz49M9pzVNTKy700HZ0y4SH2
         1FIBb6Iu97MWDNiG4uGKhWB6rFPcTrx/zT9fssgj/0Uov7uFxcaVPEG2MS3d2BeKThI8
         PpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774267671; x=1774872471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cbKIFS+Pc1Tan8+I8NB9EeNeQknosIAeHFs0OOQ5r9M=;
        b=eOmB/316WLeEi/IFUWjIz70v72CqjRPCypIvU2YeKEMOGneAXZqWC6HaRmVWqspUu/
         aeYlLn27rAFpStzPMB2T4aAwPGitVzoLj3SPLVdwEXlnLY+J93dUfAFTzxsH4nBBKM1Z
         VQ9jjZmn1W2CQ4hymlEqzzJJvO8Ozis3xkbdHH44R7x4kkKMjPbEuZLvUhemNwq77tbp
         MjhNYz7W1R2ZPiixy46Itwzyg/jss9/lJSaWjWzAATk8KgZTqp649Y3L0sF9chhlBhIx
         z0Z0ZGncNOGx8bCskHyRtOfQEttbXRpM7xpbJLn+lE5Vv1HKzTdZUS3Rl2j4d4BHR7RC
         a9Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVJAs79pe3Mm/UpNDxeYW5hYp2QqhKtRBnLMNfK+vaQndxdEdpHB3vtpHy3tnmGQ8n3SrcWqSWIA38=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxtWbcpN1S6rSF0INcjP2sOf+4eaJec9sKBsLDqQANJmZ+q79f
	8nQAp05RnVoVf3SzMh7GI4NufdQILKU0MRnU9XvHP986TsmxbGNrloPs3ZWD4Pu76gd+E81c5eF
	eFTrz6BLbRaHp6Y11wc731H5UIAaE5qeKONAM2MMw9VmtGm9F3TaBwWT4aJIYPRbDUdN7
X-Gm-Gg: ATEYQzwFeXclKF1ROMjGAj5nMjKaT2cegJeY30c7/AoRN0mjw7Y7WYJLyyA7Gg9+IzJ
	F+jsonQdydzkRLKI1Ih7emw0iqXsTsFVbOyo22ccpqd0QJlL2c4YNiqOIZnafgglP7tihvV0GHO
	r0AFCtihiJDnpVRCLXhzO3hzoXsfe7hj+2MndRmH7fyp5qjVjcEHO3569PrMPw95MmU+Oj9diXj
	jepGgtunQg5U+QxnHWF9g6cuktLVcebpqg/BrMlA0MXVr4t+nHI+KyT2wmpNjOhJxZWQmiO58sV
	T2NpIvA/PwZPQ3jzCGBVLcZqQ01NGHDUuFruGDnhR7/8KvhQNhyMvmSz28bwHc8Jay7wpK+Mr0t
	lVaf79zyn0xphiOh2MBVIAXijhJ4t3X8gTeN4UpFnr83a3k822Cgke2qALlATiF24imnTVwTegu
	Hjhsc=
X-Received: by 2002:a05:6122:2218:b0:56a:9e65:3e30 with SMTP id 71dfb90a1353d-56cde44e950mr3237467e0c.3.1774267671192;
        Mon, 23 Mar 2026 05:07:51 -0700 (PDT)
X-Received: by 2002:a05:6122:2218:b0:56a:9e65:3e30 with SMTP id 71dfb90a1353d-56cde44e950mr3237457e0c.3.1774267670762;
        Mon, 23 Mar 2026 05:07:50 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f42c8fsm480101066b.9.2026.03.23.05.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2026 05:07:49 -0700 (PDT)
Message-ID: <2c8fcd53-a9d7-4278-9b08-fc8014714e01@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 13:07:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] phy: qualcomm: add MSM8974 HDMI PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
 <20260319-fd-hdmi-phy-v6-4-cefc08a55470@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260319-fd-hdmi-phy-v6-4-cefc08a55470@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA5NCBTYWx0ZWRfX72BWwuM2/zC2
 SJJAzyRBmSImrytDl25wHKD1zLn68IRdDOZFy1wa+MkJXgIA8qVEsrNXOKB2WUbk0n55jq06DpM
 3rkWe+UCgh2fEPBmfbCA5WlDMVsoTa2BVr4eV4enndOX/7Lbii7Ne2DXkjzhEqXVCHZ+6lZRdeq
 bUkjjXKk+wLRvBaIomfqwks2AU3kSAbKWbzgK+bWltEvCiChpS2v33a6b+2lRUtlPhPc8wYuZV7
 md7Ja+i2ov+Dc+G2Lu8jbPTReyAPsb1SMydR4uDm5hxjsvEQYnMYnhgCe9eBFLXTk/9ni/guhU1
 bD6PNFJjBtUnYFqlXzgqvP4caFntm6iU8sk3EyDV48Iz/F+MZblzZRPfNljNXp3asgaaD/xqYqj
 wl2lkIGEeyd5vLr7/WQS62/AAL7nY0Y8tlxHGYM8vT4h4DNVBBMA8/3VwMLsNftKSZyoK/VA6x5
 OGFjrVR1uodWUqpFrPw==
X-Authority-Analysis: v=2.4 cv=eMoeTXp1 c=1 sm=1 tr=0 ts=69c12d17 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eu74y9pB3kvqzmodUKoA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: y5VdZ-04UXYIyfi3nk9YD9ECkR8EPDmR
X-Proofpoint-ORIG-GUID: y5VdZ-04UXYIyfi3nk9YD9ECkR8EPDmR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_03,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_050753_922947_846771BC 
X-CRM114-Status: UNSURE (   9.71  )
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

On 3/19/26 4:48 AM, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

I don't have much insight, but the code looks alright..

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
