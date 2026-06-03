Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D18CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Lqwg/xb9k7kHMvCCi2iwbMF6SN77L0ZmE1x4LBhmu4=; b=i8x74Ti6u2i862
	fPsq85Y9dmEIAo0RaD1VibB/BDLzfASQMIInMgrr/ZFJxAHRddXyM4ZorcapxH7h+0QdOxCStaH9f
	tZja4R1E84biHerGKuTgvGcZRnuw/ed+ZvbZEmqjR51Oney1jjYU2NQcQESiabwH4jwXLo4trbSLy
	i+SJzAFTt+SvSFehRJcKywEZcYCrGr5ZcYA2RpJeBiPL41EkbJVelcjKCX6E+mKd6B0/heWPnLet9
	b00d/OAoCqd0LGoPQ4pl9+9eYKmZtuL1moDb92Pywez3UGoslzpQFEq8WCfR5K5HRAG3s4WdEykSE
	OXZw98SvmPdLlFbzn0sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUm6j-0000000FD4G-0NZM;
	Wed, 03 Jun 2026 13:58:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUm6g-0000000FD3l-15Rr
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:58:07 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653CQpUs1946600
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 13:58:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=04sBBkvYwcXhq/fsapj/4LEU
	21npBSlWyomjaSXyXqc=; b=ddtl+jOxnmre09fbhB4QhnK/St83ZsU+Zw2ynDbH
	Z1z5QJO/nbElu9Tq+FQ7tQPHnaKQ11gpuBQbsk+8VV+t641dRB2IEQsUu203iA5k
	q/Y2fueONc1y0Vq8l8y244PQjnYjLqYt6wiv2MY0z3sn/20+376hIWsWoavMMUSv
	y5xNW0lUWAqgl8FQmLBbxd57JGwYkGzJ6lc9J3Di+gHdGUVpmDvaE0D9m7PIDNaP
	w1WCwabBcNPNe4YCxWPhfO2vrSh+Gpq3VdLQpU4rTg0vsTOtlZH03dk6fOjzxhyu
	h+IfpKTQRI2nj5tO7m+kY1ubIopy3ImuIc2Jt4aBZTXlfA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejabgjrsc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 13:58:05 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-96396658728so1549126241.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 06:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780495085; x=1781099885; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=04sBBkvYwcXhq/fsapj/4LEU21npBSlWyomjaSXyXqc=;
        b=g3rlqtHdHfk1lETCbVXq5QAzjCuC8Rr6GD+JDTghFcOFDuplBEt3wf050q0LQsUoAs
         hK6Yoc+IQ24I/kF2upYmRBsmFzi/mXtDOJQmxbMID6Gq1WwC9NS1nVrY5x2YJja4BRlr
         PVvTeLhqS6264AwR1ON6WM7QMDvr8L/AcNkGYtIL9Cx/mUKmVTexPICfYWzlrx8fg6vG
         at4rl7OX6yCpNAgII8iM+oNDbS6GVWn6p3j08TIOtkO8O4/p0gvcnhmrL2lVilhSl30A
         TAjR81pNUU1Re1XXMImH0vfjf0jOkfqM2bXqUsvUCcuyXzfs+yHiHAHsU5l/sZSWrTMD
         W4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780495085; x=1781099885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04sBBkvYwcXhq/fsapj/4LEU21npBSlWyomjaSXyXqc=;
        b=SqAuKp9iNYjxW/COZ/h9paKUxQ9j48HkSnl+x9HKdttdZE8G/R6+1pSUYLXs4jMc5a
         4I7buxG+jbMdFUJQ4KjpPmM2/mYIQ4p9CzdBkpsQ1JoddRBdTX+UhaoarXM6bP3/tKDU
         FYuyG5kOVl55ww07JM3Us/hn2ScRljLGxA5gU+VtPRBfXxqkCFoXDTJ8k0z+mYKZR3d2
         WfexYoePF9QhzZGTSYbjcDSVhJJJZPn1nz8MBRGXR6JubW/HQWTEkLO13F9c2j/TjvwX
         6/m+pe5f4liHwGH4gn0qwRa7YllxTIVhYiE35OlFOWZvYkXp+DbX0dKIWUrsEEyAm+9+
         cafQ==
X-Gm-Message-State: AOJu0YxkE5krzaRqz8H6O+TG93WG3BoGIcvF14w5LeASZ27hjh2epxvE
	tbBSuUwR+QWUkYEIX/cyTpg5zCsOMX6ZBE1pQElYTgoVW/NyXgZXbXlrRBPGNfVwTqbTzEnPLWo
	BIW1V16qLYS+d5vaSS2Q4y4qRZB57IA9msFUi1I2mSuVrBg9IEpIqg4/0+0uhKwkfyErSAUxmxB
	a+g8k=
X-Gm-Gg: Acq92OEtxFqo8My7b7Bn9nY3hWb2M6lyd9Vc+pXl+a4VwkJVX/ExqsZGIs86hS1cIRm
	mYQhBVNxoHcs1ZOWjv1861eOi18WvGoK0H8Q6I1V5IkJv8LFbxGu+2NUyW+hhPbdg0LpiF3PUNc
	xLWXnUcxIyMv7R1XQrts3cg9kR4nS9p/FyD6yxcaTbf3kVj3ojqJKONm8DI9tMzSDO+yEk8oc2a
	I+hR20OQOlayceqtMd1cuVIxfrGfSKd95TmTVEf8608ZeDfvqf5UKVzJVjZF0NN5E8Pfe82tL79
	VjkU9d5Tv/PDetiEaPQulAvkxZB9T0ozM+p16duYBe8eNKGmqV5XOB9E5V7mMxI6/Q4/bJj35F2
	IJastGk3wfrYsN0XyTNoD9JcH+R96dtM7/a3KljlfMx2jn5+3mp+HEhJEWbMcNMMhRjkpoDBWpt
	TjRsFHZYi1dwitPADqvy3yQD3kuLKHnEVZkWOh3vJ8OqGX5A==
X-Received: by 2002:a05:6102:5129:b0:6dd:405b:26d0 with SMTP id ada2fe7eead31-6ec48fce1d6mr1437493137.23.1780495084618;
        Wed, 03 Jun 2026 06:58:04 -0700 (PDT)
X-Received: by 2002:a05:6102:5129:b0:6dd:405b:26d0 with SMTP id ada2fe7eead31-6ec48fce1d6mr1437482137.23.1780495084168;
        Wed, 03 Jun 2026 06:58:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396abf674a7sm9436301fa.3.2026.06.03.06.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:58:03 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:58:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 2/2] phy: qcom: usb-hs: honour qcom,vendor-init-seq raw
 ULPI writes
Message-ID: <rmlkstzpfukootrpfh4l5pgtwra4dnwbynvteztvuugl4udtx7@a4xacrg7ealc>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-3-github.com@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603054809.565723-3-github.com@herrie.org>
X-Authority-Analysis: v=2.4 cv=R6sz39RX c=1 sm=1 tr=0 ts=6a2032ed cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=Bm0pR8FC1pe31243yBgA:9
 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: 5voTQOHT-LrzPVdXmjy-TaVOzKVmFQnV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEzNCBTYWx0ZWRfX85s0sW3Qvii4
 f/wdtYRXXPFNAevfBKp6u6/66MkFkHfxfUQIt9j14oPQ9p45i97uIe9ITnluJqojV7M/8HRYZZZ
 A9zHNuZgfwxNuuaL5I4u57T8kFS1VWoztXKhhq0f+ZA9fip203FRce3TOCx5mNARhBi2C/edXLs
 qNsXLnELFce1DKLPhhIYhkfb7988LfcvgpFzhMjEREXX403lPJLz9o11eG4WpAHaykcLdCmJ3S1
 XM5YQ67edCKjdz5IZ1rJl+iCanfgnF3DufljzJgi6f7lfcRoq0GE1DRJuPq2akMG9O2KwkhHl2y
 ZoKr9r3XYgaZgFgeg4hg32UsvzlVEKgiiET3AsVOUb+D9lHyQHryBmNpINNbaEj4eRJdV4WInDr
 DMslApIfVtH+xq85XSGg6k3AviuPzi2v3q91kg65QjmRNiQ+BO4TtDHkIRSAe3GfUvnm7A4sU9f
 4ojClUvzYmS85yfrrrQ==
X-Proofpoint-ORIG-GUID: 5voTQOHT-LrzPVdXmjy-TaVOzKVmFQnV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_065806_302119_89E6E66D 
X-CRM114-Status: GOOD (  12.36  )
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

On Wed, Jun 03, 2026 at 07:48:09AM +0200, Herman van Hazendonk wrote:
> Add support for the optional qcom,vendor-init-seq DT property: a
> list of u8 (addr, val) pairs written verbatim to raw ULPI register
> addresses, rather than to ULPI_EXT_VENDOR_SPECIFIC + addr like the
> existing qcom,init-seq sequence reaches. This lets boards reach the
> standard vendor register range 0x30-0x3F where MSM8x60-era hardware
> keeps pre-emphasis level / HS driver slope / CDR auto-reset, etc.

I commented on the bindings. Platform-specific values should be defined
in the driver. Device-specific valeus should use values rather than raw
register data.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
