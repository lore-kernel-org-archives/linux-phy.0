Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36628D232FF
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 09:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJrHwasGn5KJeXjBJo8ESdCvhg19+oFYMLhxIMhbbGY=; b=NTB6QLmO9jxty6
	pdLS2HM83EosHd/WlVkpzI+qDd8MidQVa/jbJNw7ZnLj5VNy71dS7FuaUtCmG80hibMdrjhoPgCkS
	tzTe+Hu2BCbIXmw4GU07+7fUyLqP4jU/qCnJm6Cdo4YGgacs2c/ett3UIv82o6O4Wq/45zeLtShDM
	vQyIG/HS6LcBluqJASz52kp3JdxhXP7F/kVfsJ817KgNaSHVgxDVZfvOufxZYVn5M21OwODS+Ewlh
	/qW4mJ2LbqGzhyd3PbxyPzr77tzYXTTGT9K9gAo8G3g8UTYRAf9+/jHDZUbP8XhpBYaenr8muw1+r
	YD65g5z4NKDdYxhiN4kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8lI-000000020iv-3t2J;
	Fri, 09 Jan 2026 09:26:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8lG-000000020ic-47PK
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 09:26:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099N67B472718
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 09:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GYupHi9hiffcOrLcYrkERu+8
	TOtiFQWC8OIKZvLgLzU=; b=EpsAyHRml+EeiIqmsgWAs1OxeWytrrAwHkyIGuzN
	U+Zof37ZEcsxtVOWMxe9ZKs8K7IJ3PrM2u9EB/7DvB+xLXzf0C899TV4+w6nSlc1
	Iq5ApL4+rMhIfxaaKPA1mkhNtcRWIK2HoZiIBx+DJ1P5316AZ2UH7TumeNXjcSP5
	LSDyknWvrkNmjR+QP+BGekArlurHYAYOnT8lJi5H3opn1BMhPU4Q6zHrFdLxLtZG
	xCyVOIopHdgP740bHRyYtm5/yFHZwXup46cDy2OWshKhmc/KGBbBfoKZ0l+DBX1z
	/4Lo/KkUOCYboSPcpXmFRM8kOMkHOvYxgvcbA3vUUC28KQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy0a00ht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 09:26:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b8738fb141so783736285a.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 01:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950785; x=1768555585; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GYupHi9hiffcOrLcYrkERu+8TOtiFQWC8OIKZvLgLzU=;
        b=KU2SGclOE4+JYDBsSOfYpYIinq6wC3gMKjKdnL7edMGzmDv7yrEuVMXgd6UT72eAKz
         5WOrc8PRbJ94BKuW4bF36xdNsQGLqwNLl5gS9rIRQJJrBvelghlpSDPQKAHvR07Nyc8/
         MnRKtDGne6H1zu5pKTNdgYUrhwk0otai9vVEjoA9SDrBukdxJckFuWT6gJTHsECjvfQQ
         9OVVHCX4e87VzB0RuJHyA9fl3BRC/zvzKJqouUjNwQZoi/mCs7zr8Aa0Dlx1Ox44JAdg
         mfeR+wMCaWnCN6znvp79chgKHFrnKqOXYBK2MI1SLxORmcaZsZvCeZRuF2GCVZojX83K
         WvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950785; x=1768555585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYupHi9hiffcOrLcYrkERu+8TOtiFQWC8OIKZvLgLzU=;
        b=HULaTdJXHL3I92gq/SB6GLhKwLJelu1vi4lar6C4kbGDfytWcHcMdHE/30Lq+PGVuz
         1hhZWQc9bWlHD6SJEycfsYkGpn3g4G2xj3OEDz+hH2C2HUlbzcAWGypSXbRgO7vxDQg1
         kQVctMmaKIlwDroXlLVMxNCM50Wj0qQczUyfWGkeDpsQo6ms1T+KqW2bueaVcFPsJ55x
         XVi3RZa+m9df9XrOpvMYIG+b8o+/hWOJz+l6p00EWc2aXKak+a+RTSaOTipT4mT0J4Cw
         A7q+YN9cUGffa0ZHCREhRGEHHc14eZTZ1u3GZwcJ1IpypQOxQYBNJ4SIYCXIhRQQI0Ol
         h++g==
X-Forwarded-Encrypted: i=1; AJvYcCWOBcBA3cQWgYMaI1CF0sw5Pp3gBsQO7gmP0uqjS14Q68z0eUD/Z3Y/BvZ3cxAzL9qeqc3YGvU1lzs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCDBIuJD0O/ZSe9+n7lnKE9Ec/hQgqLh3WcSpHNHCZ9j60L2Bm
	I3Dodgn6AG8ZzCH8jTQcZTIYmSrvzQjDw0kVDYYh5DLsus01l4UXvMutFxniakoebJO/GEkRj2W
	+AD7LTNl7x1R8Hdz1ear2YkYtxFYQuN9wGuQunMJLbvJglkMhAF/AMCdoOBAWhMQlvrhI
X-Gm-Gg: AY/fxX7b+MX3Oosmugw3khLb83V3yG7nc2w4GapvDZUb1ldyLXaqsAlXY+HBEXe3WCG
	V5cn7kj1ygnjz8fJSXJRYZ1iyjrSZ+gMfnYRTl6myktGjuOmakc/R/nwOvpkU8h1p9AyKvcPPYz
	6wo/oq8T3ZFfM9SJy1H8DE9qOfjoNo4V+NeGMPx3w5V9Obkm454yHG2Q94dRbJdX3r+Tz88G54f
	HlcRVvwaV+YtHoU/NSnDACS0+hGWHTWKVKvZ0UlJvRahiasBYilETbm7S+jbLNBvL1HYwmiprwd
	YFKGs6r+WvgeC3K4w/9eCA0hIb74HqG9fu6G5K4MGHbGzt1xzyx/wt4TxcKDnIFZdDNfKa/nKAA
	txxBc9ZABYwtoKJJvh7XR
X-Received: by 2002:a05:620a:28cd:b0:8b2:ea3f:2fa4 with SMTP id af79cd13be357-8c37f4c2b5bmr1694839985a.6.1767950785239;
        Fri, 09 Jan 2026 01:26:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqk8xaUlwvb+pLU9tqMNDnyTuej2+CgVW+rsndOdKz4BuiVC9qsdOjh+vh+cFbcIpNWeJ2+A==
X-Received: by 2002:a05:620a:28cd:b0:8b2:ea3f:2fa4 with SMTP id af79cd13be357-8c37f4c2b5bmr1694837185a.6.1767950784625;
        Fri, 09 Jan 2026 01:26:24 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8719e695sm56927835e9.17.2026.01.09.01.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:26:23 -0800 (PST)
Date: Fri, 9 Jan 2026 11:26:21 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
Message-ID: <5g7g2l4x4ocpw3hx3pkgdwrboicxnih37zxvvbfdrp5hw7jwai@3ybokrxepo5t>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfXy4kqHLluEGni
 /aU+ohcky24ziIGvxdiTRaRGQaCTB/1w8Bf28rQqBapidxCQARn3yx97rIQpEl3ImAENGhKdCGn
 HPD+uZoCCr3LbGTYy2VhOJS1cYttpJ2mf/KrtpKCO0PZAPkIaum5tWDT+/EWZKA/j40VOPUhgnt
 rOTuxPYdmrStUiNpTjwyA3wsk9m3kDHQYP3cGUXyTz/pQzrFC2tooFM0PzxEYWsYgHVmmdo50tT
 XtLzM1SVkpEQ741maBVyCDHwMEYdgvL/lTLvEGt5q3VaO+JUb4LWiJTKD6a1ezD8Pdiii02uut4
 KPpUH5FwECD1Zo2k2f71W9PQF6f1L31FtrZ3g1+pUK/D5kVOXazcWM3r5z2nOKjHDuJlvqboE/N
 hS4Ao7S4GsIeLiv1+gK+mCb16ETPmCyppypdFpVRsRN81X5+jK52jqwsEKHcsUF7pkfaCbFfLaW
 sDhEtQI9Azn3H+KgVMQ==
X-Proofpoint-ORIG-GUID: QIiyB7Yozhtes6gw8jB6yPTHbGKusQ7g
X-Proofpoint-GUID: QIiyB7Yozhtes6gw8jB6yPTHbGKusQ7g
X-Authority-Analysis: v=2.4 cv=QPFlhwLL c=1 sm=1 tr=0 ts=6960c9c2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=e_63XvbMukAsnnsCD6UA:9 a=CjuIK1q_8ugA:10 a=AYr37p2UDEkA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_012627_030619_E3047047 
X-CRM114-Status: UNSURE (   9.82  )
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

On 26-01-07 09:05:54, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
