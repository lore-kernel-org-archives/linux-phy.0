Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A863BCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 11:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZSxohiuF5FRfRJcAtCPYryntujBtyV76PZHuYPtlHk=; b=vxnLrlR2/t3k94
	z0IYzeYjqObOq58iQh2ipO4spBxSFEqtMhK9bCPShU8LitmytpMzZ/EIH2aigRVOdR2YptQcsUlaz
	YyQSE0lU6YzHNLkvr5qoxOT8JPVG82WE+wWRQyzUB98QNvDjGUSr8utXWJf+UCnQLHyYeaqKeSWHd
	SlrqyoWIRJgyRtCTnDbvPjWceVrnszUJB6nKsjQ2j6qmdOKfh1Zj0EOI71288EXD9s2PkCy/HhVJg
	dhehgyNTksoPRwbjyFrKjvRobwegeNuJbRWPkuH0PYQu75oWpQGic8pFi6ZFyb1Fm4PLZTGk56xkC
	LyYgPCiMvy7bXPWA071w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzEb-00000006B7U-1oQh;
	Tue, 23 Jun 2026 11:24:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzEX-00000006B6B-2eXt
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 11:24:03 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NAsLNU042140
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6etKF2hMA6eJILaUAeJ2b1krMb/CeFYqY1FdlDkm5dg=; b=IPq+qeqyGUNGovDQ
	kx+2aD87MN+8HoH31PFrPKnPqz0xDKddnVrv3hNBiid/6r9CP6VFhM8b8+6APgZo
	SrogivjLXUDuuJ7fhKFK2DFoyqpsOvdWLQMoE+RB/c4V/qoHR7To9a2DUjEEOefE
	SFzyRO/R6bzxW2133BJa7mvgF/Svb2AGRLaW6TFrfumCdk39N8bl0Fxi6/0AvCYt
	VSPi5BWiU0bGbqI+or6T3hHsH5FmRyzAMi/yovf8RRxQ8sQvOu5iXnF5FTzFPrTO
	sJQsDmdJ6kk9w/Ox0EAz5Nw8gqwVQaG6azyN9APhO9PNclxB/RWUgx6f8o66u1GA
	11Wbhg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr3209me-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 11:24:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8de97bd8459so4284546d6.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 04:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782213840; x=1782818640; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6etKF2hMA6eJILaUAeJ2b1krMb/CeFYqY1FdlDkm5dg=;
        b=VxYL5dPm2wDDA62p/afUQJW5+mBBboK+yNqKrIiqFEOl9DAodCNoqU9ZqAKnCuPCH/
         nDw3KUdjjmFsHWtqGBVQk4lMrzu2rvItxfG0f1VA9bpWVsCVcWZ/1ofGhAdIfxa3p/eJ
         CWdGg0K5hsDrfVJ4bP3gd/c6iTPu8touewtLc29u65QNwtwv22TObW/n454HepVlGtcU
         Rpl8wxgh5wa0ZwU3+KGq8tBl+D3qrjP8/aXZHZBvjSnU183/xOyBjk6kR4WElztkd8BN
         NPhXGmLI6/Q8XwBSWQYDvoRzcw7D5LnyVo+ll8x/Oy9//ExqonSIAm7WRJ5pPQDe7qVI
         C2yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782213840; x=1782818640;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6etKF2hMA6eJILaUAeJ2b1krMb/CeFYqY1FdlDkm5dg=;
        b=Y9zRWRhAVS2+9ciIQrl9EcPTqh5UMezOLzN7nM2TvsfGSaNkJdvGnMPpGGzJ2vU1AC
         q7zYrQoggbCYcyOtAyaUFKtL761VYrFQZ/joEZIJPhXYWYvIJb/LWblb1S400LuwVw14
         bihoabXfvCcUCDrtfrxWSXBYmBUhc4r7x3ASyXTC9f9uw1YDaqgwA0q06xhhRjvdkc9C
         v3rS0DYRZd0+Mah0Ao7GNVh3v4jtV1z+rO4wYypSYVoBi68Xp4HTGVaSZfNASw8pGhDO
         y0b75kYhjUzm3wEi7dUt/zIIKpDymVw3WKJ9sW/6+oB987oejnPNv51krk4appi0jdTS
         Qd1A==
X-Forwarded-Encrypted: i=1; AFNElJ8/HhipusJWh0rqD8+UgYtuAKIh8sn1b67+iFg+OiuYNbYzD0wnB6tS4PU0c574LRaWGVdRvxOkFNM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcqWa/740ZQppP4ORmS6nqxXMhI4E29arh1TbNCwhOWrV0xp7A
	PrU2ThYDNy2bCg8I845hvmVLmRH6UI+SYESxBgnZ/oomr+7X/11fbPYL+t5e/WQWGW4Nstq5k6k
	sB8xh6Q21AsyB7UGcUMNzOqMpaPO1tNowlJ2FYP6j6+cgU56tKA4DqqzZ9CDqA+allQAI
X-Gm-Gg: AfdE7cmGC22TBVdB9BD2FJd3zwod1olyGRYPkHllGTIIm6QBX/N0zLTpNh+j5hBo0J5
	Uffaa2dxDkuKrkNk/8h3dRi721jlCUf3H35FPxAl95Hpz5kiRILYM9THtROnv0PvQ75C0fwwz4F
	th2SL5C9Brno1IZ5WbpbzHkSgAZxhoTtwlppQ7VXMcERPUH600iodIWg363GxAfxbTL/lsHXCe4
	7MmK6VVsH4QhRYth0SnMugrgH7BuDhz0noCDvY7pKS7L45b6XDD6ewntk5ENDRVJ/LrRVxvVz2s
	NkLO6b/Xn9ag1DOkthSMl5lW/HiZxSriLTFWK0PHjGSGeIuzvUGprvfehf73cNNnkfk7ngQK+TB
	PDVTPdaVCzKrVj1QNqQGk8irE5UvSPkL0Aeo=
X-Received: by 2002:a05:620a:4009:b0:8ee:f43a:bb63 with SMTP id af79cd13be357-921805433f2mr1531958185a.0.1782213840061;
        Tue, 23 Jun 2026 04:24:00 -0700 (PDT)
X-Received: by 2002:a05:620a:4009:b0:8ee:f43a:bb63 with SMTP id af79cd13be357-921805433f2mr1531955485a.0.1782213839581;
        Tue, 23 Jun 2026 04:23:59 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e99b968sm493667266b.24.2026.06.23.04.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 04:23:58 -0700 (PDT)
Message-ID: <dfc8686a-55ee-466a-a1c7-af069b849e43@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 13:23:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] iommu/arm-smmu-qcom: Add SM8450 MDSS compatible
To: esteuwu@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA5MyBTYWx0ZWRfX656dq1bTWb0e
 /01vPBOJAGtSggXqEpe3NRyHjgCjnfOVVo++Ob4gYsyxwgrbDP6j7us+FD/CtKOk4Nx04zB5yx1
 vaKI3oobBtiRct1ZWdOBzTnaMS7Un8E=
X-Proofpoint-ORIG-GUID: hGjhOs5ZUNS1Reif3iO3xH7d1MyGxrrj
X-Authority-Analysis: v=2.4 cv=HrxG3UTS c=1 sm=1 tr=0 ts=6a3a6cd0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=KCxn9JDMVLvDjnwYN8EA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA5MyBTYWx0ZWRfX6/KxTPF4w60G
 qiyVVXIHvEJY7cFKCxq87rX//PSMPFPpDyVuhRCL3Xs0qWq8E+wNjVu97IrhjgrcujFbtcyEHvS
 y5JLtC0Q5N0QHQ5CcuyU5U6EGduVaVJeCdAP0T0J0tDZHnj6ySsVfYE/G8V2sfLnZYlh2d9A9t9
 vDd/+NXRVpw68Eh8NvvFES86OWZ6kIF+Hm6fAs0ycpRYRa6l6NO4pEdnHvPpvnL7JVPoCN4XJOH
 bv8bg+81fFXTrjOPC6rRZJMZVIp/mUWGwRymjTse2+xM9/eD1+M7zc423Ce8ia4Jtwj3TA49opQ
 3Rn2ahLJ2mVyVJN06J6aPhDvikhzMSqkFvvPMGkLmR8OQHs2xFkVG8GPeMS9vwJMeGhEIWQ65LJ
 1tYtYk41tTBE2mFcjcNDE8+18/rGU5ZVK3g2k0T0vaYK9ydLRXu9gVbqif2jWMIORkvdweLu0A+
 c39nrwGdWN7NL3ZB5DA==
X-Proofpoint-GUID: hGjhOs5ZUNS1Reif3iO3xH7d1MyGxrrj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_042401_794197_C8CF8955 
X-CRM114-Status: GOOD (  12.02  )
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

On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Add the compatible for the MDSS client on the Snapdragon 8 Gen 1 so it
> can be properly configured by the IOMMU driver.
> 
> Otherwise, there is an unhandled context fault.

"because the framebuffer is already configured in UEFI"

> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
