Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C9EC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 21:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouRY+PRBhJjSPdhzp9+frKnRkFazRBszh3RJ3EzarxE=; b=1bq9QKygNpZfVK
	6sFfRo6qXfrOBk1E4bBmQxaK2afr5JZp/1K6JJ2UkweLjAcQYtcpdQZn4po5aHgmghBZm2Drzxerj
	k/DXMJo95NPuAnzzM9NOhk6bGB51e5XMc6x3DbBwKDOChGh79r/oK3b3oBxSfbFlD2yEGAa0EKo7C
	m/uveumV9m/qECqefbsTMMGK9bALpwWTNAynnglIEETb1Uyufsk58ujfozeBPE7TP3TnkYImOSwF3
	cdt96jktnScUu1fp+pDPJimpokhBtorigz2lojp+pc8wZHmpbPA7fqfoLGHVfioIfnR6leBBjYo+O
	CrEjzT8yGspe3xn7pSBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5rvh-000000023Rz-2zu5;
	Sun, 13 Sep 2026 21:40:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5rvf-000000023Re-0En5
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 21:40:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DJxb3x2631398
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:40:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C/RcLWpqyWB/bxvbtCv9lklV
	mRMtUxPOU2Z0l295uIQ=; b=SGiId68X//DGV/frJRtGspfr0CwCMEQVrn04N9jS
	wA7UPgaBFIDQPjY3PlSaGkI1GYUpcmyoNi5jigpsAjqtOBB2gc4R/o9EgT/u27AC
	qUZksWF7PAIlX14luJAOStEhS7WJUsMPUVtJmN7cqpAkeNgf8Kp0uR/q53dl765j
	qXFULfA3t4vShapg5WcU/+t4TbNnRR7V9K/aWW+qEn/ZPu04x5KvnK52z8ulHe5x
	EDB2UiEkmNGry9075HqGJmzw6p3Ri399pPWdxbHu4MaQU/Hf5crRoyxMwJg9PnLZ
	0ZF8vfcnMLhx4YWl+fqJVsy8C5nt+iLUfGwxmaDSVx3IEg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9c46ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:40:01 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-79014f0b44cso2487171137.3
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789335601; x=1789940401; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=C/RcLWpqyWB/bxvbtCv9lklVmRMtUxPOU2Z0l295uIQ=;
        b=a2lVM/b+FjUUqsl1QTOmIZRo5wtRrP935M+LnI3q+50ebMzANzVkBzrCraL6egZgJx
         s6YXdjbNbK9wsWWBSxY4hcJnrV/sNoFmgUW26MljmfEMk/FL8hBf54Rld5kMfcqoZTfr
         hEcEcAaBXhKiXnN3KvOY0w5e0qvsFSJmZXQDXOZzCJ4y5onoS0P/ZmCWMAGMEslZKkFK
         tdN8bcnFiuyMxb4K3A6wGuVrwIdadApw/DKcPq/MGSQQln4yjjEoS3rfQ3l1JJm3FANE
         Xxx8c5B307qK6X1N6h65W+xzRmCD41+7LtKkGbSpqYokGBaJKW1AU7LSFfWL86Uhm3oB
         KDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789335601; x=1789940401;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C/RcLWpqyWB/bxvbtCv9lklVmRMtUxPOU2Z0l295uIQ=;
        b=kfrHrpVsEFUjIsgga6kj2lIjTWqSvQV1faR98Z6nNeh6Qh51rUIAQKewYpJB2xcn3i
         SduOKm+yv828f5PXM3jryy3J07ouyre2bCnXkzM9wUJXvweQ+D8Wqs2ZgTekGWJE7Uew
         8eKX3c+EsoHnIGpdHStBJIgBt9gv9TsUtNn+IaRoDSeL17utYpq7njuihYMZQvlVGUP1
         RZQYuDJTdrapmhdFRUgx68FMndTYrTDePgYqm/6tsZ0/VOFtbMxYqp7U7+n8XGVISzX9
         sf4k1iynISHM3UP19pVNOVrWDmA511/nYYRcuEu0w9CHiGNrSi/mty1bszosWF+VW8Jq
         ng7w==
X-Forwarded-Encrypted: i=1; AKwUvByNFBQSHR+qCuuK/rNVch9GQonh54SYP0GRiZPaqa+FuQ5GOpSehty7Bniz7pCSYTNYs6WNw/hqS8U=@lists.infradead.org
X-Gm-Message-State: AFuF++liX6e9vX4ecvJEmcN4bcMShCEH5u8ElxooXDYNOnQcMllz0Cqj
	ICHjZCVqnzpWe1jq0/Ix8Ah+9/3ZS7cgNEje6MzFJ8fzpFu3QFIDI9KB4eWabcrqSTmu2Pv6/0q
	2AKTgJ/wXSTuHyc3igbezdYakpWOis6Gj6/wt7ZV+OpaziiCw2kiWS0+tDPYsOU8ehSr9
X-Gm-Gg: AYBFou1Sy2pLB75RSx0pPxlEpkj7og0pZprwSZt1oiQgkDu6ZZGyZ5Yv/P1dmBj0h1x
	sXmQj94T0Q68sJkbfy5o36Gv85Fw0kIyCTjdDGPou/nvdQM0/wv8NhmHBcG2XCR+AmRv4qTAvxW
	/vt9JWVy0Xy3AZb/1z19fXaguAnUbtgAfzi5N8bP0Oi4Vn1LDbqvulK18qNBSlWZSqu9yaSLrU0
	fiBbkrs4toiiiA9WjMGKLYs85sj0h+nKjaPGqZlqzMsPtaqDGPU4rsSlqYNmQ4pzZiITYW019Vo
	/f7e0eSCaTVVVhslKSTHyt1EvP1VNLZUt7amuwalVkMvGSAXrlxGa0BXsHlqeE7zHCvbrpcPIMD
	NtaORrsxikB+Id/lNDdZOXeAUZnY4k7T2Dl3KYjM0fyAH6U5K0LQIT+51rMWx1sXU1lF07ESNjc
	pmxvBAZ2vjgrek
X-Received: by 2002:a05:6102:8021:b0:77b:ae7:1bba with SMTP id ada2fe7eead31-792a6758ac2mr15026773137.3.1789335600806;
        Sun, 13 Sep 2026 14:40:00 -0700 (PDT)
X-Received: by 2002:a05:6102:8021:b0:77b:ae7:1bba with SMTP id ada2fe7eead31-792a6758ac2mr15026758137.3.1789335600440;
        Sun, 13 Sep 2026 14:40:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a5a336c26fsm20669481fa.37.2026.09.13.14.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 14:39:58 -0700 (PDT)
Date: Mon, 14 Sep 2026 00:39:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] drm/msm/dp: skip LTTPR init when no LTTPRs are
 present
Message-ID: <ej7zom63d6scqrxtymszwswnstmftm76bsqtn4beqz2vceqzho@rdfxlo3duii2>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
 <315db50d-6553-412d-8fca-a4b4441f881b@oss.qualcomm.com>
 <fa897e53-2ebe-4322-bf73-98788854083d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa897e53-2ebe-4322-bf73-98788854083d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: h-r0ci0v3BY1rkZqwGWQtS1syT2lgFjk
X-Proofpoint-GUID: h-r0ci0v3BY1rkZqwGWQtS1syT2lgFjk
X-Authority-Analysis: v=2.4 cv=c5Y+0h9l c=1 sm=1 tr=0 ts=6aa71831 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=amprJqNY4E7PqP1f_1cA:9
 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMwOSBTYWx0ZWRfX0yXnRLVcsEre
 25vv9SyY5BMhaHYw86sd9d5SVqjAMuLGarJ3N4gq6JhoF3TZrkY1yYYy3BRowDYF04YCJ/HIBvB
 W8ls8JOJ6lVmCx3RoSGJeouMn1p7qxMyEACVUowtFo0Vo0sq6UR+7rRawMGGWmbdYQwzJXkrlpP
 GpG3fevFpgXLgIVs9n/CnV4Wx4RbZ9orpdctCterTjRZJvBqqEys24iDlJIJfS4q9Pm2HGK6bwa
 m+uRQZkRTkWdAAemJ3fFRh/IF0MKwiYz2ORHbCXocq7iH82PvE8bNSNs9+OdqPdrLREasqIdqI2
 Z0fCKEuYKG/lXKozRi3LiR296VFVVNQ4aNJ+AJqLBjQskmVOtF+ppNmsuBSoxyZTxT33TOTu7Uh
 PLeoPUPOkdDLuxLqgiGM4+a4QDH6Tl7coE1QATEFQqMZIqqtdr8WcTbdbImtiZCBE5jW7zDUoYx
 XtJnmIaV9GqH2PI7M6w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMwOSBTYWx0ZWRfX7xcOYeRJItqX
 opETFlZJJnF+c3BWtug+XuhWV/FhjiaRt3r7easC/3v0STIyDLaf8K22KC6D7vGMx2zlbuVUFNJ
 x57qxBZE/lCZO+/U1GF7UHU4QQ0ZziE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_144003_331588_5F4CE668 
X-CRM114-Status: GOOD (  19.46  )
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

On Mon, Sep 07, 2026 at 03:14:33PM +0530, Saurabh Anand wrote:
> 
> On 24-08-2026 18:45, Konrad Dybcio wrote:
> > On 8/24/26 1:28 PM, Saurabh Anand wrote:
> > > drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
> > > negative value on error. The previous code passed the result directly
> > > to drm_dp_lttpr_init() without checking, which would call into the
> > > LTTPR transparency-mode setup with a zero or negative repeater count.
> > > 
> > > Add an early return for lttpr_count <= 0 to skip the init entirely
> > > when there are no repeaters in the link, matching the expected usage
> > > of drm_dp_lttpr_init().
> > Reading the body of that function, I'm not sure your statement is true
> 
> drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
> negative error code when the LTTPR common capabilities report an invalid
> or unsupported repeater count.
> 
> drm_dp_lttpr_init() already handles the zero-count case by returning
> early. However, when passed a negative count, it still writes transparent
> mode before returning -ENODEV.

And this is correct. If there are more than 8 LTTPRs, they must be
switched to the transparent mode as it's impossible to control them
individually.

> 
> I will update the commit message giving more details.
> 
> > 
> > Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
