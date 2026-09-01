Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D67C624D4
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AACCJwA73eTJoNZM0KzYWpQeaxfWNr6FAiFlAWBmpAM=; b=dDcCI/SrnFGX9W
	EPk4RkwSmEbSY7kCwnGp2+QOz67sDtHLx19q4+2UTGNZLWQ74FyuJRAfSK7C6DJxJ5RHpioZjJHc6
	jQiHW8xGj+devK8vp2NMDtPtp1gL7zecM8wO0kKHNDCIfmdgADaE4ePGhXjF/lYmXqjl42Jr4ipFO
	BCTkEDn3yxTRhONDYoyN6SP3b9UQGzeCR9y23DENkpiE4DbiZFksze14NQz2eNIe3TkK5KVsZOKvO
	x55E/fVYNl/tCFvTNn8IkjrtM+Azrt1t7XienGpNLk4BTZobMNcUf1vE2TJY1QorpASzurkKt8aF6
	ttYW53SGQNkFyv90kEYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OT7-0000000CDCF-1xps;
	Tue, 01 Sep 2026 13:24:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OT4-0000000CDBj-434L
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:24:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJEgn3406584
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fkFwD+08A6OWMNPULH8+kTN/U4oiF3aX3TKvMYm/8Ik=; b=BYfG+sLj9Hfjc72B
	CcZefthfnKrC+ldP8AWur0gMVr42HfGCV8ycCTRTXXInIJckjLB5ifYs52Vlp8zb
	PDlpPZHZTat7jVN4U6hGbrYvIuAIW3FEfN7+pjFjw5kOJxpGFjH7ZdLhsF8Sr+9T
	W7LMZ41FViKxXxQM1jvD6MR4xLmVDEA35V4EXehK05c2cMOKAoiBRzA/KLt8FW/+
	lGW+eZGOG1aQQlxxKC6DoX50sIULFUJCaw3Cn4ycZwt0zl3cDDLsqSXn5K2EoOcz
	D+AgvoHskfw2dbYx+uO3GDiHIF/CZ5XZ7pP10Wya06BavVHTlYI+cCOYZ3lYtJ1/
	GPW5CQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdsnu1qyg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:24:02 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5c65b0280a2so101725e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788269041; x=1788873841; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fkFwD+08A6OWMNPULH8+kTN/U4oiF3aX3TKvMYm/8Ik=;
        b=GXQn92ORNaN1GU+2k0PeDPhntdIyMVhAvcAHVkXcyrVkbm63aVLhT6o6CiGzCIlbIi
         5bnimOrB0NgfxSpjldLG0A7h6wCWSRwUrHuIzn07h69JKETRM+daSsTfJ3iHKWeEz/6W
         hyruNQ7uL0TR0CU2OwKAaeCTor9lDIWdUx89a93xOJzppHaIzbHZuflPdG4ipLg9CvYS
         LqQceRi+oYMWSGRTj2ngwT0T8ZQWZ0Yc5ovg3NP4EhbX8KptQguhXXwi+Xq7r7MDRIbq
         ifzROkuPXE61JeH0ADXzXXXhW9xWT4DMGNK2yFXE/zMIQe6Qmlvskyi32BKJLXpVY9UE
         2XDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788269041; x=1788873841;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fkFwD+08A6OWMNPULH8+kTN/U4oiF3aX3TKvMYm/8Ik=;
        b=c5k0i2wu6IP+ZY/4zzvAFn4V7cbCHfLstcV7Jj26xbU55kLbHTzqMKdJ3R5HwSo7J4
         bZy//wTNihS0ESBZYka9vmAmx6ZSD5HXkCKNrjeVwHwx4N+h8xDWQxomkSZkfXOuSW8S
         B9i+Ug1aDcyGv3uC6HFPK8MypXwRo8WSDkvlGspC5zcXd4IiuiBX08De6BrWbv55N6Rs
         zJmZErMn3SkUwJdXgQb1+SuLLdK1gj7mOKKt3xgmHTXMevb+dADj0MND4BW5FXXT01cS
         0oaRF1/HUWGXavYsnM8p/st5TivkYQfjp+M6duMTm/lMayuigK1N0DFFhwauUSoC9UT2
         HEew==
X-Forwarded-Encrypted: i=1; AHgh+RomqMXFeYgl1TlCJlb1TcQBuz/R3nmyK8M3HGv6mB1/M1WGySNtgxG2QNqsj6UtXLMV+JhVlgWIahk=@lists.infradead.org
X-Gm-Message-State: AFuF++ndUVHDDi3tQZ3oc9aJ/DhZbV2Q0J4XQz/Vm/+fJJl0oJ6GBC99
	1+3cMdGHhAscNGaji4vg+CnQLU2EynG7likJu+/ygG5tvjotWskcG+H5YngVWkUzhrPjMxdJkeT
	PtNBepIQ4WNdf4GEXCUbE8P1yQt2NIXLq7607lyRjTWa54+b4tXphoGkaJa42vERWIAad
X-Gm-Gg: AR+sD11oLIHQCUUKIgo3EGovwz4v4Obemo03BTjCiBiwtW+suGLYvQ/hIUB8pAMrYOJ
	JavMC2tvpdIZFaci8p8iy+kk1p1aqVwhbsjHqrY/wdzIASqsWSCzA9nTKO4FNVbW/f65TocPGzN
	mh+hUDC8z4x3ruRZMRY2iCmo/9BDSVRNp3ZLAcsC+Oz0rh/AWWHFZr/3alGznmtk2upm9tcFXLT
	3lI6erFcie6h4mv813MYXaWJkFKegTyAYyoUwt1JW7LIdyyvf/tio+wltM8lohyZsFFWV4TN1eQ
	A1f7XeK28kPABgyfQcJ9qczsppuQa4VQoYlT+sm/4IITLvjKZtVpnYaaHCNUuezlTTsAs9GzjLZ
	PWm0BAPkjWVZoZ0ZLbVEFRw==
X-Received: by 2002:a05:6102:5044:b0:780:6fc7:2181 with SMTP id ada2fe7eead31-7859956a0e9mr4259049137.2.1788269041370;
        Tue, 01 Sep 2026 06:24:01 -0700 (PDT)
X-Received: by 2002:a05:6102:5044:b0:780:6fc7:2181 with SMTP id ada2fe7eead31-7859956a0e9mr4259023137.2.1788269040844;
        Tue, 01 Sep 2026 06:24:00 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89ce501sm2964115e87.18.2026.09.01.06.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:23:59 -0700 (PDT)
Message-ID: <f4f8fbbe-1fc4-47bc-9125-296109e20173@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:23:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] arm64: dts: qcom: ipq5018: Enable USB
 Super-Speed PHY
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-12-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-12-39be0955a6aa@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX9RzNrvf/kfh6
 eyD0OGlTgM1yp02S1C7aYUnE01ycsjnY0dW7vaEDzbj/rgHsYQ7+4ucqdhkeQ+mZSsucclDjnqJ
 DBeOB+qg/vBnTQqoky6kYW/wKjbv4oMlh5Oy2B4qXzHMpfvZdckN8455lWZoedrOjONaagiHa0x
 pw/m5CX6Pmp2h7rAU3fSG3Zahvkw3hpUvXDemZVHAyV36NJflvASVHSYuM8RlWhP88z4//M+O4V
 lOkOYwnHEGpIDAwZFb5a6J0ROhuhr1Kjv4MxZ9/dEiOBfSdJsb0BSAJdd3g259U59e8tMQPwr6s
 P6XJApEzfoGGecKibnhjYD479m8mM4Y3ME15ckFN+PeBCuYn2QSaUrv7KoUZDhM41jE9EIKgFNi
 0YGPglka9xSgXB0tn5yvkER+Y4lhQRU2txRPjMZZSsSZO2oT38EuB+rM/J3wIhBrWiQbUvh5aCi
 0kamWpEaoAUr2FHUsHw==
X-Authority-Analysis: v=2.4 cv=L6ItheT8 c=1 sm=1 tr=0 ts=6a96d1f2 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=_thwKDryVKp783wjlzwA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX4LDctnlGjLC4
 gbfh16OfgyGkv8d+/TyemWCpTylsAdXJQ70CSgVPxSEHhFZQV+jvtgwx1H+33s0X6aCjJzMtYzm
 rF6HBqHKgaxuvvMpck/O701s/t3smUk=
X-Proofpoint-ORIG-GUID: rUy869VsHOtp9khUhV7K79sFmM7f8opd
X-Proofpoint-GUID: rUy869VsHOtp9khUhV7K79sFmM7f8opd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062403_019664_7302046A 
X-CRM114-Status: UNSURE (   9.12  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add the 5V supply regulator and enable USB Super-Speed PHY support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
