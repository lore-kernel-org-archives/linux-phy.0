Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 451A0E9B35B
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Tm6p2UX3bSKQsBOwKkU5NiVozvT5oz67DVNKByhg9U=; b=DzoWtQKPTQHq/w
	E3m0AVwTZ59wCfOX1btCmhvEG9EGiJKy20vMcDbD9o4geIqM1M29Kye37ekk9Tj7U+uonX2OLuQXs
	Iz2yIsUHg/NY7neRGaP7wvymA04ddljDjOIATR56/gO1JbXwpEtogQFFMhCWmIygQs4dD86/kiQHU
	1NnA72ot4tFjNyAIRFAypV0nsDAtFW56h3V9lHZiuxxiGxvUcps/CoJG0uFNvd++VzLNb7A32H4Iq
	NGvGyjRWzmq2FxEe8KSS8LCQr7wb5lDwXM+BbgAtjBvXC0wABi61CicIlK6cBJSENXtkWNnmloGtX
	JCGwuGQV+AY5q8qbN4gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0kJ-0000000CjKV-3aoO;
	Mon, 02 Mar 2026 10:43:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0kI-0000000CjK0-15Aq
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 10:43:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6228M5YW3223961
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 10:43:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TkJCvMZIgGYxLcpolxX1WL/a6sxf1uR3ouQ9cmg8wEA=; b=ITkLkbxU2J/Z/EVU
	t5GxNVKZWpgQhk4g9ZR7zpKRkMbO+i6dtXXeos1jXa7FksbFsp4YwSWduTGq0sw0
	lLyghtOHSb/wsgidPTpgh8U0FsCjP2U9PGH01kgu+6j9DhtKQk/ZEX9hbaHePBFQ
	21YkJDGjP64HBxhRJ9Gr94eZV8wXYvitTkJp7bNOdl3IA38xDTGq2AGetliDnR05
	LzFvd0CiYIxYF7Z+brDgVkrcy9kXi2KjZR4XykjEDEXsgAX1NLggeBZBqkNlj6TQ
	c+FWCigZJGoC46q61Mqf06XJoAG3Q0YxurxmcfLj2hHuAbZ4mFBUhZDjMix8nLSz
	SFMhRw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn0b1ht75-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 10:43:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb38346fdbso417532385a.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 02:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772448204; x=1773053004; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TkJCvMZIgGYxLcpolxX1WL/a6sxf1uR3ouQ9cmg8wEA=;
        b=QzKOX2R9voM7c/t9j52a++qLFkF7FI1nh2W+FCm+yBmMJrOwGJlarpeHEMgktdRufN
         209h8ZW1Nah6MpxxTRxjRGec+Q3d0DphHfY6fn3imyZ3NBIxVYQ1a92wGzb7tJlXOuMa
         lWQSccsWU9lsbTaddUV57xUUPew6SAOgOj8n/UqrIphHtVV5VoplL17Uhni35pc+9Y/x
         n4CMoCpG9gBv5iCSZ6Pbk+Y/BcVJXHkDbeztvA8guZcNx3WXHYsjRppcUgnyKtTKA8pU
         t4jiYkbbP5K4usmq6MTOAtd5aJEg6aSLinP5Ciz3mve0j/vRjTHKxYwdlJ3nV68vBZ1u
         B9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448204; x=1773053004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkJCvMZIgGYxLcpolxX1WL/a6sxf1uR3ouQ9cmg8wEA=;
        b=N7vPnj5Ps3P1UjKKre4tPMpSTMawTkXny0vMFTIjIQj6lJCNmgD3xVsNtYaVm61p75
         3lmILI3G5jDvdElIJSVakQHbIZxz3Wr9822k4sRzUUrPDXgacANK18HYsWH2RiCC0u6W
         hkH4EufvqHWUE1SsE9L0uZA5kyJSSlRGKPzYBtEkr4+2PMqbRsCwVWecz1In+InQAAax
         04mtO0aAkBQrl+rPchxpIL92vkc1/sZsaD3XFPM61UtWK7u7LhR/GM10MNd3Nahg9gfm
         sC5auqwUPWeiV2dOUPvfsgLF+sbd4zIA/UREoLoR8OykL45n369KFpa9TaVQHi8zrLuF
         YLSg==
X-Forwarded-Encrypted: i=1; AJvYcCVV6/z4FKcb1YLNOyyghsAL/pcrjoWCriymGpOiUCuiR8qZ/GGS2wF39QjrU2C5ReW2pA5tDeg790c=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywp77sf+7o2J+WPR+hMddQ6D6Kd1loiQ1JVDE+fXArCAV8W6iyp
	zBSmaMNfuS8Ty6zDO5zXURQIkltNoTSbqO3PudHcWNB79G0h1uha11lU0c4gB4TuVUjQiDo0yDZ
	I3ReITI3o0LB7il5d3zIeKiMH99Xr/FQcoVbGfJy6D8jG1+KrOEyEqEoxpyDwxm4r4j1U
X-Gm-Gg: ATEYQzyPyJ5lvh3UKlRL1UN+yz6oVOyODuy1+f9jeC0t1rhKKIj9fpQXK1TMZHuyKmq
	ZteB/aveqA3YEQUeTIWZ1v9iax3q1B2Z6IVONCx2QBYMN+06YM3Z7Y7lNpPazvz+ZwZWsNwQcF4
	8zzilCMLlnSu9+Ilc6m0KiRWu4Dz9NV2i1GaIIao2KeFKT+gHrc6KS0yM7bIY6FduICeRxZl1s6
	/SthekMjLDxwWTrLHZLtrMaW1JcR2siPcYeNxmEPHHZzO2MH9H79OlIid/qkZ4Z5hzZ3O8005B5
	AZcXZjupHhUFs3XjPOKg6WeX8O2vTuG2GGyH5Ak84w2G/7rdy40Fywzhm/DkzmI4rEGlSpE0DzN
	rdSRTd+Ecoc7XYnEdoGVtYz8Ozx13PR0Pt96mpnlf+wL6AZ//uc2KaSuUeBE3T28YY+3xwxpwOB
	/qfmE=
X-Received: by 2002:a05:620a:7084:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cbc8e50f80mr1145193385a.1.1772448204184;
        Mon, 02 Mar 2026 02:43:24 -0800 (PST)
X-Received: by 2002:a05:620a:7084:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cbc8e50f80mr1145191785a.1.1772448203785;
        Mon, 02 Mar 2026 02:43:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d068sm3249502a12.21.2026.03.02.02.43.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 02:43:22 -0800 (PST)
Message-ID: <a7c07d0b-cbaa-44e5-ba87-990d926d0e7f@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 11:43:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: m31-eusb2: Make USB repeater optional
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
References: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com>
X-Proofpoint-GUID: K5y3qeEqOxZ37ozFpUAtMFKodCh6rnh0
X-Authority-Analysis: v=2.4 cv=Hol72kTS c=1 sm=1 tr=0 ts=69a569cd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=rhpHOOLw1G9ZS_OY0_8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: K5y3qeEqOxZ37ozFpUAtMFKodCh6rnh0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA4OCBTYWx0ZWRfX0yU6OVRFulN4
 52O8tk+/bw04LeNGUG1WcPgY3ymcJQytYpgwPrLBK+oKANkuGJ1TD//t58TIK1t13raE8ilMgZE
 35GKuMJPhX7VIOzs8hHk7i3WyuDUeWq0FuzQwLabCHSHI+yV5QfKp2F2v3WYOcXt07MifU99apr
 gy8vn5M0XWLRiqSwg5khHh8kzSIqnIn5TCLOK61MzkE2Kqo/qelgiBpg5Jfy1j7gd09M/N/e0N+
 lHcFof1RaQu720ATl33gVROGm5QrCuBawdFldt0zWvJO+05aOaRg/cUOzqsM1Moz35lHSIsh+nx
 otJ8eDRFo0Uvkd26mqNOSkC74aJ1TiKfcI7EThSFoBfTX3J7Fyo2ejSCByjobid7up4sETmq7ad
 RPoqYTg8xnPTTGGQTGug+0P8raQGG1NoJnUgBSZDWNBV+Z1WO547G6hpTAZzMqnsVPPp5t7D4oH
 CApMI8QfvQkqkKI3+4A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_024326_316094_03B855FA 
X-CRM114-Status: UNSURE (   9.89  )
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

On 3/2/26 9:34 AM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> A repeater is not required for the PHY to function. On systems with
> multiple PHY instances connected to a multi-port controller, some PHYs
> may be unconnected. All PHYs must still probe successfully even without
> attached repeaters, otherwise the controller probe fails.
> 
> So make it optional.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
