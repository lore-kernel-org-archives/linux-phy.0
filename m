Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439A3C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5rNPWkmssDOzKXBZBwuRMls8OUyKJy4Zba3HAPWQl0=; b=EA0iiUJUKDIOQd
	FjKt3Zz6ikqid8Novv0zcRHRSxmYfRdlc0kRb+2S54c7hW7tviAWWBlGZR8M1UijiQ0xoJxTKZdlZ
	Y4dTCXNV1K8xGJnPhLO/Rn7zuOQ/5YgpKdUWa753RXJ8b29wPQiX8vTjIOyv8vc4AXzD+9/a368Rh
	dvz/rp01E3f5gpwBT8SeYBBUeH2ZyLpafM+0NM1dCVxLhmFqCltUe6Wab1bNOUZNyIsA/vMeMhURo
	CnVUOcFxddRVT+WmwgzECdN8UrVFWkQwwYVy5/G+wCQtCkKDihyILGLn93VvAl0MaJ69alxbHbNvt
	cZYBrE7P19Abkol/spgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x156x-0000000A65j-47xa;
	Mon, 31 Aug 2026 16:43:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x156v-0000000A65L-1jt9
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:43:54 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFq00f2900842
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cVfCCX/QbLHdAwzzCna+Dt34SELB9Z4yDIidd7xilm4=; b=er3aqxC8PVHtCYzV
	L4jlvAHk+obCR5qbz7Y0Ad2XJSb+WD+CHraBf5cnTLZsrtYLwExozv2sslWJgNoX
	DWuKWlJBMFLG80/GsnBAL/ESRCF9MafyALmedoTfs2rSnAzmnbGLgyXBmeoH3rM5
	yEiwdVTq4ACOJUUqooef9R7YtHdYRpEVj9sXQXEdTFMlvKHeM7vKqAONyEFoRS5/
	gTB6rrTkKFtu+0mK+XpGDQ54vztxgA34oJryU4ygCmlTSgPJtIRU7uRCGM8M8yA+
	KI1v9JouAhTUYwR3Op32gcurGiJ8+qYVOx310B6g7HB+FgrFnlRzogMFuuK4Swht
	m3naMw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6vahwsj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:43:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e661ce1dcso96926685a.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788194632; x=1788799432; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cVfCCX/QbLHdAwzzCna+Dt34SELB9Z4yDIidd7xilm4=;
        b=DMeOAkJYa9YGWZck7fJfb5LzapBb2SplRaR63Cw0kdgrMvQICci+o7JxRbpcnRwW+q
         PerIKZ80bPzAfIp2S13zc1KSe7qEIZOmvboqBj3TlCcaR+fxonDZ8akmHy2U4i/KWnx6
         33HjXv/3srclYGsVN2aTcZGTDmf27Sp1QPXv+1eRHuz+jyMJqA1kIy3mvYdjnNBQz3d5
         bWc4cQVl8A84pm+A/qNO3nSMfxEkQ3TN1YS+HqOLGW4MVxKR8/jXy2vcT9JggGYCA2AU
         Hxc4a0vxoFfx7XImRkVWUksL/9B5JW4Umvkqrltx+UuyVeAI7j72LfIMbf6Q6LrfD1bG
         M6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788194632; x=1788799432;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cVfCCX/QbLHdAwzzCna+Dt34SELB9Z4yDIidd7xilm4=;
        b=F3FKD5JYSzUL5UfwLMXja5CExvQpzblHPFi5RKZRTxd2foX+92yQslBHMZTGzlnizU
         KBPcp26xHyBLhvHvhMo6jXyvN6iW/rjtEo5jAv7MC8mVpLlMUxeXXKOzLCj6yP0C0DiD
         wFNp48LR2qFhnQ4rVHRPnT3/iVYJ9zz6iW4wwS+fJbPvUxPNZqG3okbOCJWPDhpU2K/2
         hUM/2ZHLEl8uhU9i9OJVNjgRZmpB5UNl1+PHgtFwLoKxGLtcmGXkllTXnnHEy0WeItlW
         ipSC9xPAdqH52e0uHoed3sMGuhfSrKHE0O2sU8czdW/KM6YeuO4MjoRWNfHioxY7JBr5
         Zuyg==
X-Forwarded-Encrypted: i=1; AHgh+RqTbydP8jhwnPypSf+J5DzVFiJ2aoOHxvYjpTQMH1adLdhOm5EXi/ls6mRQGviDj9CViA/R23k3Q5A=@lists.infradead.org
X-Gm-Message-State: AFuF++n0IpoaK/AIFSClnCeeruchGyFdbOCj58uldDuPtq4W/e3eysVW
	xbCRKYsD646GbEGE5Bhu4ftuAOEERmngROazbDaBxfKKElK7ypyCfvPw5npNPR2iLwRCjK52mgE
	sOhD8tkTbBcbovS84FUKRhX/I33KnxY33ycbwSI00CeQkX61NZV8oMeWHnWdKaS9yY1rF
X-Gm-Gg: AR+sD11zMFPOO3pdMTuDHjZ0WLyYQTIHrG1q0twSopU74TqflTsMuZPfc22rCg3bqIU
	uz92csEJZhCGzDK9bwBKeArltzSK6p/lIoGRVlS+S356g8NLhyyHCG9edeYTm5QqT9uk7D28tiN
	M/XGMs03au1UJxRdaKTngPtEnk8o5gnWg+8sp1qR5UX/RhrYOJXAFh4JClGZ+n/khyHI3CE1rE1
	SfQTs2pmIgO6vl9iXmlwfaGwT1R56pPuDwQIMcA9R3A5nYJz3eQaBL5+sSL7iQ1b+Mdch9t4u97
	HUPlVf69IiVyBH8bfDRFxZY6h9z+pkOHG8NFJSg+mOMj9d5XbBFLJKMKTjFiQmG98vzYuzD9DGl
	xOsUh/Y6tqv2ALCe6IBnN/g==
X-Received: by 2002:a05:620a:1722:b0:930:a08c:cf9c with SMTP id af79cd13be357-9392873f3c9mr1005151985a.2.1788194631569;
        Mon, 31 Aug 2026 09:43:51 -0700 (PDT)
X-Received: by 2002:a05:620a:1722:b0:930:a08c:cf9c with SMTP id af79cd13be357-9392873f3c9mr1005147085a.2.1788194631028;
        Mon, 31 Aug 2026 09:43:51 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255ee27b19sm455018966b.19.2026.08.31.09.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:43:50 -0700 (PDT)
Message-ID: <294b2d4c-31d7-42fa-a55a-b57fc7d0ef6f@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:43:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 08/12] drm/msm/hdmi: Add support for PM
 OPP table
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
 <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0NCBTYWx0ZWRfX91tJSJ55lZ7i
 UR+LYaRd0O1KoJx6myd9+/wZ4HfWTaKM8WKm1MOK0S46GLnV2GhCLvNrZli7C/3Zf/1VsgXmqGV
 ogX2cP/nQRtd25oJV4lSAx14DUwYFpJLqMZEZOpzSWq2S+g+7rfmG9fI1ZqIeft/sg+CQ0wi57Y
 f/FuA7HVw1KEP66vd3RdTt6JmwbGznsxgx1TB5iPSJ1Lzw4Ly1a0W4KcnBSUUSYJSpU2q4YJcHM
 e7j3WWmuJZtAFfIlWKwx8qOsbAKNcQAL3W2XVY3WHG6kTMuaZDfR48Ie6BJkRkZf92udUet8Nam
 335aTCOufsz9M3Zw2MXLpY9c/U8m/+2VfGQd0mbhVGfTM8wnBR5etQTFtTl+Oy6ocpjUH+F8kPZ
 oCGfaYgo7JJVWJYjcziSPH8GuAbIsegRHaEk/2Ii4GJE/TTsapceWCUgw67qeq2OddnbmOVefYv
 2hWCBB+mFEaACTLnfgA==
X-Authority-Analysis: v=2.4 cv=YYmNIQRf c=1 sm=1 tr=0 ts=6a95af48 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=oZguCmW5wH7aHc4LmIQA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0NCBTYWx0ZWRfXwWGmndwVEnho
 Tf0D2NGE3ZCwmzNHYLcRrfNshiGYbHnS8lpJbqf+kDAB84MVsyCH5+40sPB2cckdjBvHE6WHz4E
 /nfvh+vb3l3QwV4EV3idHORKvOZ3EHk=
X-Proofpoint-GUID: ckYdetRkT_QXFbN5RMAHshnfiYATx1t3
X-Proofpoint-ORIG-GUID: ckYdetRkT_QXFbN5RMAHshnfiYATx1t3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_094353_471882_BAE8B2AF 
X-CRM114-Status: GOOD (  10.95  )
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

On 8/28/26 4:05 PM, Krzysztof Kozlowski wrote:
> Allow scaling the domain rails with PM OPP, which uses the pixclock
> ("extp").  This allows proper votes depending on requested HDMI pixel
> rate.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

[...]

> -	if (hdmi->extp_clk)
> +	if (hdmi->extp_clk) {
>  		clk_disable_unprepare(hdmi->extp_clk);
> +		dev_pm_opp_set_rate(&hdmi->pdev->dev, 0);

FWIW rescinding the vote will happen automatically as the device runtime
suspends. If you think this is necessary, let's do

dev_pm_opp_set_opp(dev, NULL);

instead, since dev_pm_opp_set_rate(0) is a ""dark pattern"" that is
usually misused, see e.g.:

https://lore.kernel.org/linux-arm-msm/20260728-topic-dpu_power-v1-0-e7783b859a70@oss.qualcomm.com/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
