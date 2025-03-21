Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B2D8C36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 16:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpADpcmF42RMplZmL+GL0QGx2O/+NrJybnIWlj2G3M0=; b=mDThGXQbcG8YcD
	BVPCH6JLedj6YMEfcpZaaW+QcQv9H6aSWhTImi+PybdHTc6YKhU2vXcu0YDvY4lOkf9c3uEK1Jnoh
	Ikc52w/Z6YEyw1iuT3/lVk6lITOtVJxETZA3egG7LhmOxAz+D3qXtJuDO5eU870VBNF8IQmI38B82
	vgr4w3LusYlrEFBWIxWjUVxl+AQFJuJIiQIXigFWD9iChCUVjoBhh031h/+aFn6G+w3kDS8g4RaJ1
	z2tkzXDR6ts6O5+cX2LzVBEwmP1mzi5xJgkiEd4xCEZiEAvnEleiN1ZA4ci91ykpRk4EvIYtAv9Aq
	QOfjpfjbD/cEmJITsa9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfAk-0000000FUiX-0YTf;
	Fri, 21 Mar 2025 16:24:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfAh-0000000FUgj-1Jo9
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 16:24:36 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATLZv001150
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 16:24:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ezUvZQcZtwMrgBYlUmzB77M/ia6WCeZ5frQ98fyadU8=; b=ZtbrNKnjtpjQrL4p
	ofV1Qu+ShD8CFFWgmB+lu1aU3ZVNz8K9Sn7/Fabi5p5bphNEkQ0rtdMlR7NMoADQ
	c4fUcprPbP2b2U1uFkOcZQoqMvWgwoFWpCETImYmNMTUQf0OuIijCcaUS6lrO6xC
	AM1v1jlDboyDc/6ffHPUNg7jZpGDWo9yQsP8AXrfkL7f2TSS55YJqB2C/mhnmjy6
	d2vL4iIGUqJWukz6SFeZD/3eMI7Cdr59fB1wbPcrya0VJFyYn/Z7WwYxQ4aHj3SC
	FLYOEkPchfiPNE8nQRLwuHAW/T7lxcrfvXkwD0HLD6W8jtiZckSdbX+4q/IzAdBf
	mL6KVA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4u9s8yu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 16:24:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8f6443ed5so54210936d6.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 09:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742574273; x=1743179073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ezUvZQcZtwMrgBYlUmzB77M/ia6WCeZ5frQ98fyadU8=;
        b=qD8EqIjvjFJ/tm2zbRVHjcdeAORIQpq0njJdTtdZE1eQK74OcP51TYLSZfshHqZeXU
         64Focn1spvgB/7RQHbGAYRwmIjVqSDmmecZY0XoKtiEWvAZgTBSoF5DE3YPr2DJtURfO
         CbE0BtQu3lvBx9W0TBXP8wKyNIeoehSCbhGVFHp23PNckM2eWe0Ft7hVkOt2LTjEzSjM
         hA0Lms++Egs1Bdo8M3N7EfvV3/+qKzPWLpf5eZkKyrus9U4SyL6yK7OLK0vYrf3GBfij
         JRjI5H3h4pxYJpVH2h0Hn/OVVb/e+SEAVHPNPYq68/5gkmeOpOnKO0GXefYW+/9PPeUl
         sl/A==
X-Forwarded-Encrypted: i=1; AJvYcCUbv6HUFgJbsZIpTdxOfuMomjnrc4A9GWDmNybai+dLW+Yogw+LkPmDLYGycU+INhe4Y+oq5+AqzNk=@lists.infradead.org
X-Gm-Message-State: AOJu0YycuTXHsKW7FkPSuFZKgMORDCOOe1w2oSueif74GXO4flLDXBHT
	fLzhga3koXk+V50GaMjy+T8xcZZxuPX5NLDjfpPFVyOmF6EWcItacHUGNZpLOqpC6ekYByyotJY
	01/CUBEXVUqM+AN1uMVAqu/eR6HEqw84WxdA8/6p7ofZhEKIrBJM8Ndh3wnkjc7Gg
X-Gm-Gg: ASbGncuf7mfttNoYzGwONJbjI6m8No3I8VbdC8fq2lSNUuw22tqZLWNEjPtcWV2o0FE
	DhNQy4UptHD5d6IB93vCM48+HK1WtZzxwQOhxiVjjYp/ARb1ARnWFNphZ8HKw48C1Ctb7qg1JkD
	kkizI3gQrS9mWk7RuuC7+yI6gctjRIgAE+hiEOcOs+RanMU/NNH31k/QcyMeXdZXu5vZxuIEbRO
	cnOHRJ+lRQKThFOH731hJAmWEBB9+DOGogt8/ej/DFX3VIYLp7uNhMJsodFRImQ+7cPAUOroIWI
	EddVAfO7FDjI14+z0mlYC2TXinCS6lROenAzzJKgOiAOCkbBYrk6invchKpYlNcBf8BDJlkI9AC
	otCY9VKWkWB4f0iIgVna4vpMDVsJUtZ/opuu8Io0WMHxI1wSObVwbLN21swgZ0TgaMm9U
X-Received: by 2002:ad4:5caa:0:b0:6ea:d604:9e4f with SMTP id 6a1803df08f44-6eb34a27d9emr122911926d6.19.1742574273449;
        Fri, 21 Mar 2025 09:24:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfSGRUC3naAh8M1yxzEOqb0ryoZ43qJS30vtSLWnzr26EwF+jPBOlX+Bn9WciwgRg5g9565g==
X-Received: by 2002:ad4:5caa:0:b0:6ea:d604:9e4f with SMTP id 6a1803df08f44-6eb34a27d9emr122911386d6.19.1742574273001;
        Fri, 21 Mar 2025 09:24:33 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c2:310f:a0b3:1d12:b116:f8e6? (2001-14bb-c2-310f-a0b3-1d12-b116-f8e6.rev.dnainternet.fi. [2001:14bb:c2:310f:a0b3:1d12:b116:f8e6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b423sm214685e87.64.2025.03.21.09.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 09:24:30 -0700 (PDT)
Message-ID: <8eba44d0-1f4d-44df-a13f-994bd766dd31@oss.qualcomm.com>
Date: Fri, 21 Mar 2025 18:24:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/14] phy: rockchip: samsung-hdptx: Avoid Hz<->hHz
 unit conversion overhead
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
        Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
 <20250318-phy-sam-hdptx-bpc-v6-8-8cb1678e7663@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250318-phy-sam-hdptx-bpc-v6-8-8cb1678e7663@collabora.com>
X-Proofpoint-ORIG-GUID: 9LCSKnU2R6zB7kFI9wBmAgLM7-L4yZeF
X-Authority-Analysis: v=2.4 cv=FYE3xI+6 c=1 sm=1 tr=0 ts=67dd92c2 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=_XDy0L4iob18M6GPC-sA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 9LCSKnU2R6zB7kFI9wBmAgLM7-L4yZeF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 spamscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_092435_359711_67DBCAC1 
X-CRM114-Status: GOOD (  11.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/03/2025 14:35, Cristian Ciocaltea wrote:
> The ropll_tmds_cfg table used to identify the configuration params for
> the supported rates expects the search key, i.e. bit_rate member of
> struct ropll_config, to be provided in hHz rather than Hz (1 hHz = 100
> Hz).  This requires multiple conversions between these units being
> performed at runtime.
> 
> Improve implementation clarity and efficiency by consistently using the
> Hz unit throughout driver's internal data structures and functions.
> Also rename the rather misleading struct member.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 79 +++++++++++------------
>   1 file changed, 39 insertions(+), 40 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
