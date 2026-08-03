Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E27A0C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfWDCvUDEfkxCPDqpdL7GYhU7LhGrkVD9sLUydzhM2c=; b=ppzsJM0RKVGZgk
	g4EE6HLhbxJ34d1BrsHI4qcx0ACNaoAOxFtc/00fFMmxXpNuIqcjNLqGkipoKBdWYNvllMccfgcCg
	tY4pLJAOM0JqirefdnGY/FFsW5Tn218edStGtknPXEsF36fP+NjmU7B/ENF8ABwVSFHG3oaqWZPBz
	lHu8q2VxdSRwUkZSUlJ+p8c+rfmWOo/UvtmtGSLS/YprankbTKt6u9gqL5taOT5A3C5DuYtNqVdDr
	KRQ92uMQXC1RFNQbi4TiF2JOh4oGlYxlmq7+KHqT/q0c94bJyXSdDfsAW3j6xY3xNKA7HTfEX9WIG
	c4gm4f6At6YiNefYVkow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsPn-0000000H897-2a5N;
	Mon, 03 Aug 2026 13:09:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsPl-0000000H88R-49ts
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:09:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673C4bwZ305402
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 13:09:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+bEBKAJA/+cRFgI8e27Dj0HsJfWCLd+x+yu0XT2bSxw=; b=WYDjTupdLXwjDaaB
	77kSPC62DtFX4L/1/uW4rAnfpKyaDRjNDRqfr2CRyhKrU/PbcSOK1plmP6CxQMKb
	6634pT7H3/dpmSw0c3WPH682pmP1jRWSegSNdRIXs3CuSa/XlyUMLjuQYeMa0GNd
	v/DRuhHgAyKOPdk4xY59DVzJsUbkZ/tG08nygCB+uvsD/4H1UkVRMxK8Lkr2kbDm
	ogZCV6ouI+Zd0+vHHb+TRNNHAELxBTioWR7CN0y7xTlwzXP/bDZO5B+HXJUWhkLz
	2jjeP/t8taobp0wTwROY2c87cfEa0lCaVRJbwT4h+7floPpPjdq8HyYp2ObVnpzj
	FjaHZw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnhb1pyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 13:09:09 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-738b76cfe03so3145201137.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 06:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785762548; x=1786367348; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+bEBKAJA/+cRFgI8e27Dj0HsJfWCLd+x+yu0XT2bSxw=;
        b=fMDHP/e60mqzgQJpGGa60tOgwLmIXd8Q0STlJDPvnedB3jB7HkMF5U9u7lC7w1bK5e
         tGn1NtKo/OaHzeVZ3bSOqXTkztXavMFw3qR0yvACYEpSOoEfXBk0XZiSuHoRoVNlNhey
         lex1yvT7qzSuLvOs++hYLnM4dh4+dc25rmUq4AvgRKfqCj/Z/sLdB8n8wSEze+O/atCD
         /Y1Wpj88L7bTEchnCq3to740Bj1JS+jHR7tMT8TPdEVU5WkeAUC7k5UK6W7G7biWgQjO
         tPMUx6tVObR5lt3ubTlj8GHVWOuR2+VPj8ALmFr4163stIDmXdev82BXzgI4Gg/n+CBN
         ed3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785762548; x=1786367348;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+bEBKAJA/+cRFgI8e27Dj0HsJfWCLd+x+yu0XT2bSxw=;
        b=k8Jl47SRp383kYbxXHtn6yQuAZW+ThCEL5zSgO9428MjdOgyqeBkj/E8tOhtKuGzt2
         tVfJVU2TUPacscutZdtoY1XaN5khvTcMQogz5smAgd26W3o6FXAQUj3nDDokXbzYpinW
         uIy/OGAOn9I0T5vBKQ1aCH8M9DyriFsqOXl+rbR5/8QNKo9YK49/FHOERUweNNlwagyu
         QmRsBgzcP/oEsycsyRoLQxmSIWMvyPRRTXVRZzd3Kp2plhBpVOPg6I87IfFwrwNZ3349
         nv4BCnl+oegBe2J5V5yqUVE5JqXAs6xv47Ka0PMWnU69MAJJYJKjXftQNaPotbHBtHBE
         A/6w==
X-Gm-Message-State: AOJu0Yy7t8spa+aRtJL1JO7mg4W7KYGpzewF2zfh4afrtA41yre+4Ox4
	FlB7IchqHBoM6tyzeevv/9yAYaDmqPZRpqaB7dPCoMrh8xvVinHmHjwQkyZFvAz/64G+Dl6I6uN
	NSKgPG2bHau6hPk2zfSzpFxB+GlXa2vx37IBUJNiAVs1NUYnnuoq+SK+NGgLzpWxgAfwC
X-Gm-Gg: AR+sD13xjE1fu/5zgw7tzIofJOH5MqY+Kap/3p5S77feEihqyMWcA524xHbz/U0HHoF
	DHueh+O8G7SWsTrHWmzJxiIm2LdPHpkunXsPaW9GAxpMZBI4jpKI3SsfH2ebN+/r5Kq3mDCUIIG
	c3WY1bckMT/dyl8Wof8dFyIGxCL+WSjYL9b/X2uR+4FpxwaYeYmp2gRgRuc56EpCKaQZRJVtz7z
	bOm2BLxAzfY+m2t3UJs8XsYAwJJQPiy+K/A+u80/nzWRBQWB70pSp+MOSF5w/pMZHhPpx8TpWhA
	w/UktHvr5Dd5htWaUh5IrOz/dth0Ga3mSotcRp66N4K5lPfgqzIH02SbBcs4fG/SnVHikLCr8vY
	PYFwnGkRM9EoghqXAyo3nh/BYZofeEA==
X-Received: by 2002:a05:6102:3f45:b0:744:a3fd:410a with SMTP id ada2fe7eead31-75b24071090mr6439615137.14.1785762548542;
        Mon, 03 Aug 2026 06:09:08 -0700 (PDT)
X-Received: by 2002:a05:6102:3f45:b0:744:a3fd:410a with SMTP id ada2fe7eead31-75b24071090mr6439460137.14.1785762547623;
        Mon, 03 Aug 2026 06:09:07 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1fd3cc3ea1sm541388166b.26.2026.08.03.06.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2026 06:09:07 -0700 (PDT)
Message-ID: <862f47fa-628b-49dd-b8a9-873955ce5a13@oss.qualcomm.com>
Date: Mon, 3 Aug 2026 15:09:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy
 creation failure
To: Felix Gu <ustc.gu@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
X-Proofpoint-ORIG-GUID: _RYijAys4ainFme12v0fYE0_7fq53_5e
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfX3j58JIX0UtbW
 ns9jSVQzfIrE+ZoIl4qDPrUxHPfORf5S2mIFcChcC33csqDF6GlbbRQn5s9jLajBMJuK0M17Vky
 7tvS+gtHtwmrh0/2kwU4Tx5QyzaPpjY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfX1b/ciuYj2xSp
 lbOSIrMUI7/gFJu1NE/BhWuBGJ9FCb7HzkL+08CAkYXVqLZYN5T3bcT1OqRrD9228hzWGoL31LD
 Hxgl9bkpz89c9aOD8a8wbVCIn60y/XLMOeYbXoVNzHVhE61Nm5GwEAVfbl9B/beqvsestsZC9FI
 31Ry5EV6N/PAMMDNBQLmqcwILqpQPJ/jWaVSxSG712w1g7ELlzMFSZb9bG7a2HsMcKUP8MpyPZ2
 Ij6F8nCZv4+T54vziAhI2SAlGs9QEcoV+k1pDk9A1BPWPdNybRNKcHWm5fugxx4AitrV8PPKaZS
 BRs4GZI0A3UUlWu/B5szyOonVuD2/bH0kRoH42XL8w30KYatkg8mf3wNwAOfCtsig67rFu5fOlU
 ECOm3W57W5U5CInwDm7syXFM70viHaTfE/RpKZ9BxiQXSn9/wa1mE78RSsph/z5vTgD5Vr+ib/7
 kNgnDmFZ/Mnt9KMAp9w==
X-Proofpoint-GUID: _RYijAys4ainFme12v0fYE0_7fq53_5e
X-Authority-Analysis: v=2.4 cv=bKEm5v+Z c=1 sm=1 tr=0 ts=6a7092f5 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=gU5Lm4jXYh4j8fgtNvcA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_03,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_060910_036939_7D1C7995 
X-CRM114-Status: GOOD (  11.20  )
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

On 03/08/2026 14:43, Felix Gu wrote:
> for_each_child_of_node_scoped() releases the node reference on scope
> exit, so the explicit of_node_put(np) in the devm_phy_create() error
> path drops it twice.
> 
> Drop the redundant of_node_put() and let the scoped cleanup handle it.
> 
> Fixes: b64b32791fb5 ("phy: renesas: rcar-gen2: Simplify with scoped for each OF child loop")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/renesas/phy-rcar-gen2.c | 1 -
>  1 file changed, 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
