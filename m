Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 037DECD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 10:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tPN3g7CyWx0/cviN9UXgUZgbmZeK0Xy8PpHZIN5m4A=; b=EqbcS1aW6CEaPY
	ete3ORCIyk1G2TvtUebizwEFrj9XKKujGMBb8Ho803aDqDf4TCQt4BhCUiG0rfVsZB5bgd+XV+u6Y
	FdLkIrHT9sw3u/fpRNknJW6T34iMskSxE13X3ojKbrqX5fdmjHX/Naup5Jtu8WoZIzLBMzSMkYUw9
	8rb8Y1pa/XnAGiYWq7MS2cOSd468kVJyzE3eMIaU/PC8nEOmJ8L9T9FLK0fgjC7nvkcvKkY41eYiG
	jxPIF2z6FcO2wmsWavdtWavA7lxED9BJhuItLll0ZCbFIBFmSLk6959gX2wfBy7nPFX2/dEvflJRF
	xlwebqABXMAMqrq9o22A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4oD-0000000E3wG-0mSZ;
	Mon, 15 Jun 2026 10:44:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4oA-0000000E3vk-3oTE
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 10:44:48 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65FAIbNs3813829
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 10:44:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3L1aoItvXKgSKcXjoUT8ZFQKPYF1tzuxSSufM8weEwQ=; b=Iwx9c5ehwf7NA5sY
	S2UVAgF9R04vz16jNYGptgnaZUIov2r5+bfxWaSSjZcRM5lQsgKkWv4mgcj1D/ro
	9LpOTTORjk1pB+ueUvI3S/0pdN2t6uJb2RngR/5EMYZvKz2/KDY48UvIqKuh9Xvz
	/2mpIep3hNp2XpiNoWqzWLBpvSwveu2V6R0mEQ7spq+py0B5/Lw7HbohEadhUenN
	DQp3hUUABbecLoTvqNDQuIWxIWwZs95FFpHdM/rS4/g5cKpAJoC2BztxYiNCQDVk
	pqdBYEGRvCahSEcVtNVAgZMbvzqRjNNT6Q0Vs9rU565iU7sxLvZIc14H+b7NfCke
	94Cwdg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etetjr9d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 10:44:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8ccd9683350so13083456d6.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 03:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781520285; x=1782125085; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3L1aoItvXKgSKcXjoUT8ZFQKPYF1tzuxSSufM8weEwQ=;
        b=S/uOE8S7o7+q+THywYoUM4nlTuAhXGL4HQTX1oZlvEK0D4K3ffs5aaeFJOsamM7yEk
         XoNrwYlg9A2jfYjvH8kNV0Vj81CZQby02e60fgzA6Qr85BefSjRbSeEJ2YBGtiSd5E2q
         7kmybPocQIQ22leROv9cXNlzkkpWky3nCnPdnxp5xztgLXBksZraEH9bK3ug8PuInvwZ
         w2qUAgPjlAqZQjX6qAr3MbuYDvUiapaCvjxpWWBZ9ATnPKLoLOeaXwrfo4Als1pqi07C
         hP6cOUQo+/FOnCN6WhQVKQdK7oIE4Tb0Ji5foJ2+FxxuM5mFQhT8bixbdn5aA/WjxUdX
         7RKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781520285; x=1782125085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3L1aoItvXKgSKcXjoUT8ZFQKPYF1tzuxSSufM8weEwQ=;
        b=h0aV28S6MVTlO4APwU+ezeF2ur3K406JALgKca3yBAzEPe9zHiiMrbZdiuH+wFgHJA
         uMGtUf7aHe0HHkxeAGoVsIdsXN9IJzmmDHTED2m5a42aE3NPyDKpvR4PYQ2kHWgHUtsM
         z6JVhVmj9sm62q5q+OZTZcQKkMm6yLz74R6WKg2NET96MTUgcMHshXW1EfiCTthcgChn
         c3QE/l3WQInhjNnyQ+Ta+gjF9hyBboeK26FN4qpJWY2/RWgm77rx4/Qc6tiFkrP7ud/A
         ZSsS1lh7ntucxE2d27raVz49zuI1hAs1dNZVZeIDjoXkERohS8jaXzfLOpg4oXdPZZrj
         TaEA==
X-Forwarded-Encrypted: i=1; AFNElJ/OnZOvgNW5bYjvGum953VNtzNb2rSf3BVH5bSYOcjK9yKesTF8Clttjx83cS23GlmAZLiwGhoJhZs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlZ05ktXmquZpAJnOoFMxWZHxIqqz67FahealeFPoNe3TWGQzE
	vGHG7Y0HI80BSP8cAQd3x1nkg6LbtXIX55GMZzXib6QKgiHHDHQixljjD0dEnJbMTKFLYYumDVK
	S+GFQwa7n54ZqTya+ax4DegPJrnM7WqZ7TLfyLuHZYc3383DHFVScZ+9AnkvYR8mM80/r
X-Gm-Gg: Acq92OGGVqEgSILCyUIT5gAbyzgi2HBcCNpuJPr1TrQYMQ3cDAS82Uh66rRFWLX87cj
	73KlDhiEFWtiVgaGe2f9hIWNlOjadMsKJGkvavCPbeOWKBbXY11dy+cjPACsbBisCa4WUgwcucC
	2GOrnJy5Ke33+Fa9lgdsm7gio/4LzMfU1nM7p0g58I9j45DPeuwQOT7rSxvZm/uvRW1ZfDw1Ci3
	kyP79QEBlvYF8VU692F6zLAP0xSqaujPpwx2qo9wsrCEIpcAx/xruW91ExF6qKVMJMeLdGR5v8f
	l0lkxktZJ+ez9ZOxXH31Ca8GiDJ5O3nfJOBlrOQIWhxXEOVKB/IfToGTae2Orz18Egsv5fVNHpG
	BKVvTmlIlt5qNUhsmopzxqEIIjoq+1S2D77+hqEXKcMjp1A==
X-Received: by 2002:a05:620a:2892:b0:8f3:5988:f97c with SMTP id af79cd13be357-9161bc9eeabmr1256415085a.3.1781520284825;
        Mon, 15 Jun 2026 03:44:44 -0700 (PDT)
X-Received: by 2002:a05:620a:2892:b0:8f3:5988:f97c with SMTP id af79cd13be357-9161bc9eeabmr1256412585a.3.1781520284254;
        Mon, 15 Jun 2026 03:44:44 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb8341ba5sm444685566b.42.2026.06.15.03.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 03:44:43 -0700 (PDT)
Message-ID: <a51b6333-cd5a-4a38-b748-b6623c6a1078@oss.qualcomm.com>
Date: Mon, 15 Jun 2026 12:44:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
To: Iskren Chernev <me@iskren.info>, Konrad Dybcio <konradybcio@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
 <5b474af3-f651-4a64-a5b9-c18136e589eb@iskren.info>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5b474af3-f651-4a64-a5b9-c18136e589eb@iskren.info>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDExMyBTYWx0ZWRfX0SyaUI2fe6Dx
 0T5z/XdfE3pfo+I+gJdlNXOcyGBaou6C4vF4BUqm4BL1t4RuBJlZcjWhNpJNNmkkAweOvKnV8Lg
 jI8UBa9qvzFuA3dnBLDyS48O2K8myKiXYCr8jQaR8rSVlETAkUnz3SuvyHONccoQ9PQmiKI+SsI
 tTB665QEhxzl1/RoAnHSiiF3ONYx20Mv7aipNJ0D5dTTNZtMGGS5CsWEGD2LLmI4kX7+hC8bE2U
 CmKj78IcT07q9yHkk0fGY9GTkvqTOOroloGqQEfHo+ClbegR1aYv8aRvPMECMEwd6XGatYQ/Gg8
 3+/+WgNnFwPAATE6NjHuvovyXn+QzcrtL6+42NESzGvh09u7qZxqdGxsjnqheEK+QgQ5dDb2Bph
 u68JDiVBoDVl7uu/TrtEJ8RHDdc5Pf8C1LOc7Ho8bFfyse5Lab2Hy8VlnfkBw6EhswrL4jFrq1p
 Nk7DJnnjjzZtmRHlW+A==
X-Proofpoint-ORIG-GUID: 8rS3imXB9N3sxn-9vyKWnULtJnmdA4OE
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDExMyBTYWx0ZWRfX4T2KhFrMlaP9
 T3rQB5sRxtaGJNmiExzmqu/zAva+WhwlAbRbujDTOazOGHU6K3lyZsgx025+LAjaIAnfG+Y77Ck
 vK9onBpIMdaxUUuYyXzhcSJP7+7xloU=
X-Authority-Analysis: v=2.4 cv=HttG3UTS c=1 sm=1 tr=0 ts=6a2fd79d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=H8nO66aeAAAA:8 a=sh5-wexBAAAA:20 a=EUspDBNiAAAA:8 a=MyJ6PO3ExZ6mTeW_YjAA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=29nWO70QIcuf0NxZitda:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: 8rS3imXB9N3sxn-9vyKWnULtJnmdA4OE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_034446_978977_94D94C98 
X-CRM114-Status: GOOD (  12.12  )
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

On 6/14/26 2:29 PM, Iskren Chernev wrote:
> 
> 
> On 6/10/26 3:04 PM, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> I don't know where the existing one came from, but it's apparently
>> wrong, according to both docs and a downstream DT [1]. Fix it up.
> 
> They came from DTB extracted from a running billie2 (OnePlus Nord N100):
> [1] https://mainlining.dev/wp-content/uploads/2021/02/03_dtbdump_Qualcomm_Technologies_Inc._Bengal_SoC.dts
> 
> The phone was bough early after launch, so it could have been wrong/updated later.

Good to see you're still around!

Looks like vendor tuning. I see that even the initial commit for
6115 had the init sequence I posted. And the OnePlus sources have
what seems like a project-specific local copy of the DTSI:

https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/qcom/bengal-usb.dtsi#L145
https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/20882/bengal-usb.dtsi#L148

To support that, we should add a new property to override the TUNEx
registers - like e.g. qcom,hstx-trim-value that's already consumed

Would you like to look into that, or should I take this?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
