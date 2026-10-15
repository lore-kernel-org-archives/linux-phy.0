Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 892D7CC6B2E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 05:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WxiASoQK+AlYZtOswPG1PR8HOxO50rTMUcX/w6zLC4=; b=FHxbCRMbtPj7ge
	DC51LNwgedGR/Uteit2YIsL7J9p/GbCTdBjV9Q+JvU9pXOFkmzT/Ztd9EHb/RS8PsAEV3AgkVQ6vF
	gEp6ksZHjGoL4NrMXQXfd8S3tLNtB4Fu8OpkjQxalRE7K/nKHCNuAeF/1HYGx0a8GBvOu1jW17y+r
	4fogZiz4uAGob4yJbRbt2YQt6CE0LbGXIVfuKtKH8kJOgt6xK51H9q9m7pdljNJ1XluyCuuenDaOH
	iDFfyO518q/yMa9RlE3E6+vmPZepTxhI9D5Wt1nKEN2ddWopsu0JKJnAZV9B24aT60lEMXCqOLkl2
	3KqURv6uVSy6MS1HwI+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDpc-0000000Gqj5-46UO;
	Thu, 15 Oct 2026 05:16:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDpZ-0000000Gqii-21Wq
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 05:16:43 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69ENJKJl1682636
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:16:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6m1IYzhzMlMI05KKCN6YlAZiCuqfM4U+iDqcMyD0ylk=; b=SBe5Is8nnDtb9/3P
	qjMCC1P/0I1O6BMfBHnBfVc6BiYir/a3R2GIptcdwbVEkK8YXkmK6ZXFzuMNOB+U
	Vo6oSHWFTvbXRE0iFTjoeP/hTCiJFwkibaHHoUCpfc3XhE3EDuFtaNup4b2vRjx8
	GHl46ByOipJVv3TPH67FNdJzGrP7OiAASihjJAWg53Ds1S+5LC5kyhfOqc30+/ca
	SoDp58MvMZPl8JhKZmIlOzLpKJVL/QD7XWiIViBnJjuJXmAdBRHerde1flyLOq2o
	VqFU0HO1CGzx8TfcxlcZkE2w78oLnF4cBKlTtcG1YNsCnm59pcx8SVMXfULHQCiL
	eE+SJA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hacb02rv7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:16:40 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1665200f4c2so6815178c88.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 22:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792041400; x=1792646200; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6m1IYzhzMlMI05KKCN6YlAZiCuqfM4U+iDqcMyD0ylk=;
        b=ZnSiNLsKl/HzqYsocG4os9Lr3ADPRYDazSQmxt/jh8lsRAW36gGDRWCvaIRGXeo/dr
         0/4OY9mz7ZtQGIxX/zORui2juF67ODD2R7x3NlUlEWglP0EDFL5g/rWw6wDH7FY0UXrI
         wTPocnzsH/t622OtyclaNXiE0crNeheHTgGffrCjQDAHoM7HSgGHWo3MOySY5PjugvS6
         +6ScjGIs9HHUuMLXPWFmJXzTEMvVyV3bijuNPM5bnlmPkSK7sHeFgQ7sRY3ufc+MkV/1
         F6VdYWf6ny/nvyVlN/xANWL5O0B0cWPjPCoZUSq4JmbRL0hySK36tB6QrJPgqzP8nrD/
         x3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792041400; x=1792646200;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6m1IYzhzMlMI05KKCN6YlAZiCuqfM4U+iDqcMyD0ylk=;
        b=pn4Mj4Dw2PGLoNWDjROz7Zr9YvsMgn6sbJmuixzZCYaU/pmTbwbcWB0VTbdwRU4gIw
         CsARlzE11zGOIhpwlClGwK3+istmryQYg4Si2qh8cHt11Wgytn9V6ZqhX4UDiwwxGYhg
         u7u6ERD1oo0arOkVDL8HGsYRffHPBl+v3OarSIoCaspZ2RNu9QgrtXwUw783LgLKSEwu
         iHF9hkZA6Z0Hz/b3w02rwZehjdCORuVHRp2NlO1xKiZ+vciw9RovWWkjBuQoD8q8QzhD
         ET5hVT8lfQOGk0bapLYhSLRAEF+R+U6eDYtVH7WO6aweRHYgzffKUKOat7M04+CcpBwp
         t9yg==
X-Forwarded-Encrypted: i=1; AKwUvBwkYld9JAM3uf9lpLmu8dGcQnDHeS2Rss69K5g1HQBYNYGbbZsuOpxuHdadxdinvK+W5aObzA4iLFI=@lists.infradead.org
X-Gm-Message-State: AFq9FYL+zjOwexuy0V7fWkUycnPmgavChDjTK2BbF6ihk018jJsztX1q
	UjCFhpb0VOr54vwzyHegBHf4kNBCeh51StIKIrjhL+3URaz//71V5R6NeCgyTfidGX6VUqcxMDC
	HYichqXPUmhj/uA6iO4PF4Mvjvhi7DXjrPiZOMzDPemVbFWeOhqx6wzEAN0X8IwkdQOGz
X-Gm-Gg: AYBFou2891KfyknRG64R0JVBt56vahl6PzGshDVJL+oeDf9367ADchNxKtBx4MQdlX3
	QLkK4+ycn8x1mj9ZFxUslbu1XZj0+EQ38NE5ttklbVlv5dnyvaWa4IrJOcY0JGOeHaRDgxGATkz
	zySGtZ3+qMhDAk2Ave49fgXYZ3ojyVohXDvZQAa3/6YoyZLpzHiXcqj6ILn1g8qDS3GMB8DSs92
	snntFdM35oJWifgVvwFX8UPQz2jfVh1RrHRHoAVgFMWQJAr0iXX5/dId0iuO+ocWgTdY5XrB7pn
	4IyKuorWvues++bgLehvojoRTDid+7d69by7zG2/DO8tz2hDVQvyOCr2fmn6BPViZa06RooIHzd
	4wTAsu7nuvnTJkmIuJP1IwZuH5Bg=
X-Received: by 2002:a05:701b:2086:20b0:149:1b5b:1f25 with SMTP id a92af1059eb24-16a5adfc081mr25190295c88.15.1792041399968;
        Wed, 14 Oct 2026 22:16:39 -0700 (PDT)
X-Received: by 2002:a05:701b:2086:20b0:149:1b5b:1f25 with SMTP id a92af1059eb24-16a5adfc081mr25190265c88.15.1792041399409;
        Wed, 14 Oct 2026 22:16:39 -0700 (PDT)
Received: from [10.204.66.72] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a2f17feasm66982336c88.9.2026.10.14.22.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 22:16:39 -0700 (PDT)
Message-ID: <91d2fff7-2cf9-46f4-8143-371ec9d35c93@oss.qualcomm.com>
Date: Thu, 15 Oct 2026 10:46:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v2 6/8] media: qcom: camss: Add Hawi compatible camss
 driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
 <4fe3f636-2352-4f3d-9634-637622b2cd40@linaro.org>
Content-Language: en-US
In-Reply-To: <4fe3f636-2352-4f3d-9634-637622b2cd40@linaro.org>
X-Authority-Analysis: v=2.4 cv=VKpIDNPX c=1 sm=1 tr=0 ts=6ad061b8 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=A9cSDzJAzJsspl3E_m4A:9 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfX2V4Z9oKfVnYX
 mNk2rAEr2LauG/4vGgCzsPXmfv6X40pN+oGU7HS/ooEElhDUQE44B2DTc5zGMjw4xAUqwltAvZd
 vNca7d+k78R3/pLp46nSNp2hyqzYW1Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfXy6Ihg9IvCWYH
 ZItGBMC+WmKz3N7YuMhQ6F54JWnRdeQCI4k30Hz2B7khGlhyrL6+d74CPvwpgmJolACMO/AN8ji
 TnhM5ls74coJbl3vrPownIITSWQVrXeLEnLZymr1yuwZAvMAeJsPVt558j659aMcgsVWQNClO1D
 JRGxR1367HEtPM88A2XSCTxzyh6Nkok9LC2l/qNY3n9aKBVja0xFMuIt1xDS0SsRKkxQWGEb86q
 FMH6UmP77d9SJFgXswVTHaCQFYYgt49oos0Fsd26aUgh+phnr33nboi6KrAe8x0hcO/cezyxfOl
 24oSX8grCdGQOhvlrsfBkbsfhqXu89ekRuWDEwclAGUgWlS68lU29NunXQDCofaaBWRiImR5hOi
 VPIi051Hu8q3zCAAXVP1lZApCuXJpUk1k0kuaMcyISUt8A/mH6htJmGmJ07U/3X//YAgBLnNFUf
 pHzRoE+59F1DOWPpF3g==
X-Proofpoint-ORIG-GUID: WmhT-zT1OG2F8RVC8wUlzhhcrIe9ucGD
X-Proofpoint-GUID: WmhT-zT1OG2F8RVC8wUlzhhcrIe9ucGD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610150020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_221642_436222_83D66BCC 
X-CRM114-Status: GOOD (  10.20  )
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



On 14-10-2026 15:13, Bryan O'Donoghue wrote:
>> +};
> 
> Wait a second - no IFE or CSID in this table, with both added in follow-on patches.
> 
> Lets just collapse the last three patches into one. I mean this can't bisect in a meaningful way as three distinct patches really.
Thanks for the review.

The split was intended to keep the changes easier to review independently.

However, I agree that this cannot be bisected meaningfully as three separate patches.
I will merge the last three patches into one.
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
