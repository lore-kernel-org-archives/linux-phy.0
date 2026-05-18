Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1793FCD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 12:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKiF72FUNoZv758ZNk9eXDZNip+i75KQoJN/5DOqgT4=; b=BaQudLNI1hMe6o
	OfhYBRPB14MfwaelHfiZFmCfd72La81HNNSnORNFzhWKR4AJPNV3WYnjqvHchRtnAsM5c1wv0naZ8
	tk1uVe07mcYf5fumLInZjnrvKTGhy8jv9FQKeRRi49V5WrKsm8MNneThjZitSHrSL1QIMp4LITeyr
	B0YZ0+78YR3hubeHSfeFdlmzWBYovkAIzx+8Mj7bngs7GIqqLbO9xGzYvrf717sj4cZabEBbC5jM4
	2faxDDymizNwI3dE5H73I4JsyeOj1kjGJ01Zeh0Ov15/MY/dHa8QDQQ7ZlYkd9lYUHz+/Yd0oM2hB
	X4NwB4O8TQ3IurG8buqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx2b-0000000FcvN-3m2n;
	Mon, 18 May 2026 12:25:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOx2Z-0000000Fcuo-3tFg
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 12:25:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64I7cRH3353057
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 12:25:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UZeGp5Bki4jeCnZ73ibXYmI/
	3gyap43fyhUtc6hPfvo=; b=crmwrb3JNam+zeq71i9jx5/Ex+pX7ay7/ThZERzT
	xsCRsBxZCQsflm87UUNIx/4MVVOwO9H2SW8z/XzHHmZRMJ7YoaDSfLJT1XJ+G4no
	2g247RLmqg9Ns/lJt/WTrzqbbTH/foFECuS+dMEUbmU8c6colGhm6oZ5qWJBGC2/
	OVc+CooArRsBpDrCrVvU3+6hxBpdYxZyePctCbbJy9fTI0fET72yD/oZoLrKlbRn
	+jk18jWPyZj0Wja14Kis5PJhapHKthbHbGzj6Z4LizXKDtM7+d0lflDu3iLMqcwn
	W34Hyqfw0/k75EhMCYdi5Kb5Dv4V49pY1igrExAdJ0kQPg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xjah5ac-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 12:25:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-514ae0e3ad6so37104901cf.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 05:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779107146; x=1779711946; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UZeGp5Bki4jeCnZ73ibXYmI/3gyap43fyhUtc6hPfvo=;
        b=TjgTCOULoW71IDXiOewT9cLFLSgx7XhUIhhJTNMY2srbTpAykSR1JU5jLGC+zSmXqe
         OfCe2E1cPfCPtHhTBpIBodI2XWxTCBYgY1Uwtixbpt3+cd/SDx01R+BAODQ3RNlifYUC
         PC++MMlejvry8Db5Jexp92DsJU3jBK0JEcOMsXRUXpw6xVCM0JS5iu4jP3bweHkYqNUV
         nx1TtgoZYXdR4tl1Jy05+CT1hFn4xOqF3PQPF1gh5rZk8BzJXcxkJshiLXDY9agJsXZt
         u6s+dyRtBJktlTSAlJNuw2I8WXtXtJn8mpdeKoUqzZeG28OE/JwOenLkEZJT/84uuqOC
         b9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779107146; x=1779711946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZeGp5Bki4jeCnZ73ibXYmI/3gyap43fyhUtc6hPfvo=;
        b=IbeMfmeNzj7lt/c6D+3/lMBWaJpT2j4MWug4GnBCWMQ9Ws9k0EV5f800c4svc8VVxO
         +xiaC71i55R4vHILU1uUr5sXNdcOvRMCADv/t362CxRH+IOreW/hYDwiLYba/VXO58tg
         m76sH8UfIaEe7nCpYZ2eWAZA5WRvahiXHbluJmFOq0eAUKMa6Fna98rXW2yOeCunnyq7
         gE3okwaSHVU38nOZVrkmEYD/R6j7s7QjM0w8CFlrO9sFtpEE6CoUU1Fx9d27bd6I7u5y
         cQQfEeAeIK6OXbAPFR0uxYkBy78DJrySqEbJt4doN9KSDmWHk0uu3kNyQJAq/05pKZH9
         4FBA==
X-Forwarded-Encrypted: i=1; AFNElJ9iTHTXKXDRe1whw8SRjuwR8hGbW/nwEjKeAN5hB134gDaTDgvAXtzfn774fEA/NlMbUzJGsWzk6M0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfNW8/9AO3yMd1U1hEjVoJcX6HwLMHovFuqsFJpL0vRzoBDmqQ
	NTcvTGrZTW8UqL9dLV0G8Nxa/dcAV0qfzh+VP9runFu13puo9uWLD1RlVtsV0HNhVkG+Ju0KRt/
	b7uhxRB63z/La/gQekEFEGeeWGrFjX6kTovtGllONxTNJb6SKGlEwWVRepKTbLloQKzcf
X-Gm-Gg: Acq92OHfA9GHdVZNbpQHugtM5W391aeHGnLp21rLqkKmSwnUmRQDAASNOqpLn9psVt4
	NeBpI2HMfaBVOkiLhAdg+HsF5HWA/fKA2JOqWCRBbEZoZpQ/3MbnZqsDxQsw5rpCIWRVhRhE4vH
	i6UQFwm3YIpJruS7Y1clcGxd59LjczRr4oceaCZvF1Q9HkPPaNW3yPLE+q4/HOTN+uZ8mVQUBb2
	dv1bYlXcbFt78v/DWA01ln5PeSy0cGN8P1k3lwdwfvTg79iAmGNsGA5pS0QCnQYFtiWMc0hLqAp
	ltayfyrX+bBpWhW8YlvV16GhYI84chNIZyPEkfpj+dXXFjr937H+dJ4nXa6bLeOqR7jcjepguSO
	+UvTFQSEMDtcPq/Qb40iYZ1sHWPGG0mNU1CScJM3WedrYrk+3zQfGlYXABr5P7vbMrP5z92Z1d7
	s2HW8wtJEYHofFWCKKHVRQOjXBalYUs5Zf+rs=
X-Received: by 2002:ac8:5e4e:0:b0:50f:ba60:2dd4 with SMTP id d75a77b69052e-516419629f0mr229735981cf.40.1779107146219;
        Mon, 18 May 2026 05:25:46 -0700 (PDT)
X-Received: by 2002:ac8:5e4e:0:b0:50f:ba60:2dd4 with SMTP id d75a77b69052e-516419629f0mr229735671cf.40.1779107145732;
        Mon, 18 May 2026 05:25:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395887b408bsm11481771fa.35.2026.05.18.05.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 05:25:44 -0700 (PDT)
Date: Mon, 18 May 2026 15:25:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/5] phy: core: Define TBT phy_mode
Message-ID: <5kwr2cbi3swgvjrzyqxa36rk2jnjlivgsw242shd3s4zbbdv5u@x3qvxkt2xm6x>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDEyMCBTYWx0ZWRfXwhJEqrnl/P1i
 aFn8+j07mDwaodUo9646Zd8FF7DFAuHwi+R+2/srOdviZlkgMPWq3KXXS2LBXQw5kGGgchq6SqQ
 pqw7AY++FGXidWsAGQH4Dzpf7fvYnKmCPjuDf5YPir7rOHEx8foyz1oxCFkQKKdhGBNin37lo03
 DDFqp6v2JKh7Akln+5WszVRwX9anFJZYnXOR19y5tPXxBfYeqlk3aXIsJrEBturfZqhRw+a3WD7
 te4nuYRGvFjvSpjGLkBiITfQ0eQB8/8VrJel2mJEifM66fiUzcMEey0M4m609ncrWTRkEie11cO
 TSTBmaH3Z3JdUWHuytw8EzuTW0rTQefhZ+5O7eE9ayYDuWAlmaQlSiqaaPMT1CXNkUhBmfxwLlG
 yPOYn+YByXGybD/7VJWk+R9tTASchdYkk4oxYPzvX1xzzP1mtNcOwa02tqnRZP+x1Y9nUrfLCG3
 TkG2rMsQ0FvPdcsRPNA==
X-Authority-Analysis: v=2.4 cv=BYHoFLt2 c=1 sm=1 tr=0 ts=6a0b054a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=fNMWtLC6zdMFL8tt74cA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: KXvc9x5Ge6PZ_AXzL5bmtH5i78Uq5Ozf
X-Proofpoint-GUID: KXvc9x5Ge6PZ_AXzL5bmtH5i78Uq5Ozf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_052548_139486_569E1AFE 
X-CRM114-Status: GOOD (  21.77  )
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

On Mon, May 18, 2026 at 12:29:49PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There exist OS-accessible USB4 and Thunderbolt PHYs that need specific
> configuration. Define a new phy_mode for them.
> 
> Currently, USB4 and TBT3 are defined as submodes, because they're quite
> distinct, most visibly in the electrical/analog aspects (slightly
> different frequencies, timings, etc.). This results in a need to make
> the PHY aware of the actual mode needed (at least in the Qualcomm
> implementation, but I believe that'll be a general need).
> 
> Newer versions of TBT are basically supersets of USB4 with higher
> host-side requirements, so these are not defined. This can always be
> changed as necessary.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  include/linux/phy/phy-tbt.h | 14 ++++++++++++++
>  include/linux/phy/phy.h     |  2 ++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
> new file mode 100644
> index 000000000000..5f48059814e1
> --- /dev/null
> +++ b/include/linux/phy/phy-tbt.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __PHY_TBT_H_
> +#define __PHY_TBT_H_
> +
> +enum tbt_phy_submode {
> +	PHY_SUBMODE_TBT3,
> +	PHY_SUBMODE_USB4,

Do we need TBT2 as a separate submode?

Other than that:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +};

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
