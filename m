Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1D0FCD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 15:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbw1guI7ZGjsKLaz3Og6j155bFAXGszkNv4qQyqG4cc=; b=ofmhsKtnPAwUCw
	nHZ+9ThDjgJbiwdFhrf5p7hCVEnP2uzwOOkf3hq/+2bOFhP6wVKdctmG09RUFEovMbVxEkJQ85+G9
	4q/TKQPUn/l8blvrQaxQkNw+3Ivev7DT2dQcixtBpV2tshdJF4DVttWLFD+2muadx0Jenn0VbA1sI
	zzb/u2uw0YIm/V2PUl/97kXZ4Ce/LLTT65nUIcS3oakl+DSmuHcFXYM1r0S5Lt0Zj7E0C4Yo3Z/JK
	TOouZexduNSZY+HCKur49hq3LJb/TVSShwE233XuVZF6k5dGCVBvSQm/XkaLJuZTHOVcE7h1HdAPp
	rZJqe8hSL59a4fw8hpww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzl5-0000000G8AY-0QsX;
	Mon, 18 May 2026 15:19:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzl2-0000000G89o-12SD
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 15:19:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IBwcau1252181
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 15:19:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MAoae7wwX91CbhGp0sKlfhoc
	wtNDrl8kr6qv9MhQNYo=; b=ZE9Z7ZkTfMC+OCZlDDx4CumTgzAtrJ1dy84rCaTQ
	C/gilhsE2lIFmFb2vFQ/O3qiaH07vw3OV294IuSXqkiqrBTl3okevIMKsXVrTSzT
	FzT7HMKfVn0yCZCEBO+CgPUQCJMYAGPfKg5ezIr1P9doaMSMYQcKbiPFN8zrbT7Y
	5/ufjvvipiw0/UV2gWPvwIINZXf4uJyBP89RIfUYzV/+jOEFXTc5P6OoOmmOOkZb
	X7sGKG70trDvjUgqDTYrhftlQ80o6RtRF3S9MqdzUYqCBO2HT7ZjyK4T83IdVAih
	OZ8u6nUgiYkyCQS3OBXDDLnN2T0z75bTI+EQC2RlZiaqRw==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82c0gt3t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 15:19:51 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-69b3a3c798dso2139526eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 08:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779117591; x=1779722391; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MAoae7wwX91CbhGp0sKlfhocwtNDrl8kr6qv9MhQNYo=;
        b=gDflsxcCmhwSp34Q/1QvP6LX3OyLDRzusMz5Q8FLkz9G5adL5wLystCYX1WNIVBDD4
         bU8gpi+8RRKUpffhNfc8v62sx3A7wenCeLxCaUZoVb2iYay1Une11Flj6/rD5GQ81/Zq
         S/uUrGMxLFHb3TG8eJUCu37ZmJ2KcBhfeeyb/Cdo7h/dL6/fmGaZ7lLKO228hK/ZisyR
         8Bx721u+NzKL0+zjSvNPSbYCFLDiQKzKPdapSv1SW8YhV6u3P9KpH95ObdJSpTwUVOnN
         vXWtQriUYQHZZ0ihv+bk4hbwt9Acncq3XraUZLR7m6dWOO/d3yZrufUU6iYrWlW85MH8
         fCRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779117591; x=1779722391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MAoae7wwX91CbhGp0sKlfhocwtNDrl8kr6qv9MhQNYo=;
        b=gA4e/HomPPj0y16i8uZnoHIyTAaVXHVdklql6qBH2K9yTx0QHo08A6k8t+Xoj2juPI
         snobb/HuHXLEfD5BLi7aQuDXJVeplT2cKFM3jAnWd/AtnkHmZFmP4+uoMFXIJ18bA6ho
         YTI5HVOSjZN9pYM64s0jzQ4ALjPftQ0UfWvrlFU6aENKT+tEb7NxwT5DlTX5u5eW0JU2
         Y5OnyiaawEuJpo4rftGjs4nSdjSfaAYexp3ivCmSIXq3YtUafpEe7dUxJHx9rZRuL+2n
         UbkXDJA71OaNoniJSL/SFWzG1xsMksTY3yMikdVWPjSs7Clw2lt/ZmXKX20NAoQ9l0r2
         0ZyA==
X-Forwarded-Encrypted: i=1; AFNElJ8pFtpb43HUJ6auiT/Iyp/VtG2OmMCNPldj+sNt70pAOv3nLXYmkP7dwV/ZCbbYqiIR/SVrzx6wKWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHh+Ke9FMZ5AzfiWLcCz/SyOQlCKkz62q9Pb6uvi3TM5vhkktn
	1kzEZp3vXus9TamwAaReYcfbUfBFqKY0qz2IrbFj6Kx1wtxe8uXQ+B+QcJ2lSEgJP2NQUVULV+O
	yy3StgQegXl2bZQhQ2xAyUtbJ43OzXtVYYQA6ql9GjoPUsJfn/0RKrlKsGv+f6m8Vmhtu
X-Gm-Gg: Acq92OGgAchzEllinUhlXq9b0ZgOIImwc3ALzpZAX55n/6F5SJIo5dUo6HmMQ7E+Tq/
	vstqwr8F7znQwxNLUNGyxhy+unaJkjDJf9yXnEEE1+Wvet+l9+FF1CNEMWmCFMxXR47fbYslSCf
	e3vm9fFxUMxZQvvMctbYauKhU5bOnEJ77lgUvbKSucb2W9GNfrc+UKYbNg6fOf8Y0mkqxrMj7We
	qof6vmyPeBTmrPwERDi0OHv2e1qFo0ptNvf1ajSxuKOwM4lXj/DUFBL+15ZfWqIXEcGwKFsokRd
	+5QTDoxS+jR0sLq1xZP/BRkZutxUVAjpk0XHsx0cXWN0M/VqDM/GNnVUzFJkGEhSHl2RYeQz91l
	O/EU9L3uffL39nfxPZJihc/E7mDzyCldGkXbT3j0EPe80IqH0PKWoDnYNQ22x4Yw8jJRQuKBE6D
	ZoMYJ26hgM41A0hju6tNb3qIeHHIUsWdWPSEE=
X-Received: by 2002:a05:6820:4c01:b0:69b:4cbb:a1f with SMTP id 006d021491bc7-69c9437a913mr9473811eaf.38.1779117590614;
        Mon, 18 May 2026 08:19:50 -0700 (PDT)
X-Received: by 2002:a05:6820:4c01:b0:69b:4cbb:a1f with SMTP id 006d021491bc7-69c9437a913mr9473777eaf.38.1779117590134;
        Mon, 18 May 2026 08:19:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a91a6a1906sm3388384e87.79.2026.05.18.08.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 08:19:48 -0700 (PDT)
Date: Mon, 18 May 2026 18:19:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
Subject: Re: [PATCH 2/5] phy: core: Define TBT phy_mode
Message-ID: <ej2mvzftnm67lrptxktuinzw4au36xpwvbqiivlxmdnvkmvmsj@hmzvlb7lbfvm>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
 <5kwr2cbi3swgvjrzyqxa36rk2jnjlivgsw242shd3s4zbbdv5u@x3qvxkt2xm6x>
 <0880f634-ea56-4c0e-822d-aa7c056fdcc3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0880f634-ea56-4c0e-822d-aa7c056fdcc3@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE1MCBTYWx0ZWRfX1WopRG7K32IC
 BhtaEgwYwvY9iLOpepZA7J7P9SWws9HdNEsIhGQO6XWQiAYmXmOROOsMSdQYDTNkULGpSlI0eNF
 8ILepAVKYriHcBya5bp/8tQmVpKrKNnezz7wL+ZhFEgoQSL5zRTmxplZCUXfLrD1dermharsV3T
 lVBtLL1cWC6KviC1kSdVBi4W6vSVy43cucXzugA1Mom1yeiTfXfGmFvjDNcBBMRvAgH1kWaV516
 STFszO7im8fbzD690N97dhVQEdWL4t+J2llQAmcGhK4w7Zgxp8f0rFYWTvBC+VgjRMMEpwH9tjA
 7Pdxp455zNFKLxemS5jL4qIW7+Gc5TuFlu3mKe9OFJZBUDYcz28VeHNLhghD6HpYU6tb8/WJqoL
 /J/nTY8/nb6T4ipeujJnF60eUHWt8OyWCbS22IAv2aFESgAxdjGP8lme8koK4WM0qoFElv+Cb0k
 NVMSfpDBJtuknLiP4/g==
X-Authority-Analysis: v=2.4 cv=A5Jc+aWG c=1 sm=1 tr=0 ts=6a0b2e17 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=xxU2PZ4KthE6Ad2txm0A:9 a=CjuIK1q_8ugA:10 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-GUID: pqTDjKOMwpmAC5MOWBvskp7cqSN2PUiC
X-Proofpoint-ORIG-GUID: pqTDjKOMwpmAC5MOWBvskp7cqSN2PUiC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_081952_296705_7D3CDEB9 
X-CRM114-Status: GOOD (  23.75  )
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

On Mon, May 18, 2026 at 02:29:26PM +0200, Konrad Dybcio wrote:
> On 5/18/26 2:25 PM, Dmitry Baryshkov wrote:
> > On Mon, May 18, 2026 at 12:29:49PM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> There exist OS-accessible USB4 and Thunderbolt PHYs that need specific
> >> configuration. Define a new phy_mode for them.
> >>
> >> Currently, USB4 and TBT3 are defined as submodes, because they're quite
> >> distinct, most visibly in the electrical/analog aspects (slightly
> >> different frequencies, timings, etc.). This results in a need to make
> >> the PHY aware of the actual mode needed (at least in the Qualcomm
> >> implementation, but I believe that'll be a general need).
> >>
> >> Newer versions of TBT are basically supersets of USB4 with higher
> >> host-side requirements, so these are not defined. This can always be
> >> changed as necessary.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  include/linux/phy/phy-tbt.h | 14 ++++++++++++++
> >>  include/linux/phy/phy.h     |  2 ++
> >>  2 files changed, 16 insertions(+)
> >>
> >> diff --git a/include/linux/phy/phy-tbt.h b/include/linux/phy/phy-tbt.h
> >> new file mode 100644
> >> index 000000000000..5f48059814e1
> >> --- /dev/null
> >> +++ b/include/linux/phy/phy-tbt.h
> >> @@ -0,0 +1,14 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/*
> >> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >> + */
> >> +
> >> +#ifndef __PHY_TBT_H_
> >> +#define __PHY_TBT_H_
> >> +
> >> +enum tbt_phy_submode {
> >> +	PHY_SUBMODE_TBT3,
> >> +	PHY_SUBMODE_USB4,
> > 
> > Do we need TBT2 as a separate submode?
> 
> I would like to avoid extending that unless there's a user for it

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
