Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 117B8D1A613
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 12:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79lvJ/eEb2tGwW7nICMBZ0N4RZeohvtOB2SJqhqEc+E=; b=1qfO/jV3Bek6Ny
	ZznN3+YtRIGlT24j654APy5yv5BWMybhA0dPZa6f4udzRxOxdRySkIXmpX780JuGopd06itLTx8do
	u9hONc/rDO9Bv78tcxE6hovFbS0os5kPKDl7Av/n/HailYkP5R0eNUfcc5KUjsDKZozOfhPA7XGFF
	hQlW3/7O+QGOL4p4TkwZNqH1zggkD9zgomjdvcDe/s2a3+0dh2g7hts45YvmXWQ2IfUIR+hUO4Qxp
	iiwqakXBNiHN1tJmbJSpmDAxoJyrQwRykCzl22qnNEUAeBvGwCF0BnlDPxDiqP2y7UgX2YnJT/6BR
	1xi9ui+V2hiigo2p+jBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC1l-00000002KBV-2dlg;
	Fri, 09 Jan 2026 12:55:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veC1i-00000002KB9-3mC2
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 12:55:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099LY3n3324821
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 12:55:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0fB162TNQjWLSpLCtoIj0fch
	gaNtZtYhwwygswlguGo=; b=hs3WjwQDr6+0Al5O+2nYdF94UO7mBaCf+EgXDvvp
	mlXfMHwKu+8VoerItqkJInjS1Zaq9wlV8nc2EWZJQgOOAIpCA+bihQPkj7c9Te1P
	VXjUDNKgGSNrcFfC/6DkzSzQ+IId4K1fuwnYfr77SJAjl74RWhrCZJBY5m86Lb8u
	GdYdC3FxJvS7Eh7eXgzKeYPJiUTcjihBaecAwsQQ6NknkWDCirVQd+6FP9GceYr0
	KP6tOj52D3RcchRV3awJnleJuCZpa9jr0in11MhXQlKBbZmq+OOEnu3Db0PurSlY
	5EWHTAOJj5nod1q4rji+ZPEGwhFIMnkX+3FgsbKNSBnLWg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6hud2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 12:55:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b259f0da04so1054472985a.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 04:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767963337; x=1768568137; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0fB162TNQjWLSpLCtoIj0fchgaNtZtYhwwygswlguGo=;
        b=GxL09X03VKvrEGt+WKdNBDDfc1jnZke0m2FvsA5P5692KH0sUHwp0tuMivxBzM7tO6
         7V2pE4MZuqqvWnJAJr643I2oimQgH4dzctl/p4Bxn1YqnbgiD0CL8VW4Z3Qw6ew/kcnT
         5RqxSkgMWJF6oNH96/U+PCM9068ZHcKEHxB2DDzirq/oo9OsabRSdEYEuw34YjwjdDO0
         S6Lhc1x8223oom2TZpuovs33Fz6ZzvRKFM/gYzzwUQhnnvgOOqghf+UEamhoyu4Acv0g
         /SCYTMZm2CNBL/MvFneaTfBqKzSJdwWbt322yw3h8ESsTaOMgE0lHOAA3+SNJOYKC6cq
         YP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963337; x=1768568137;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fB162TNQjWLSpLCtoIj0fchgaNtZtYhwwygswlguGo=;
        b=rpQshtEtn6IJsQ82BBijw7Kw3yvOO+xg4F59MsMrwuK2q8JyXDRRx/VjNA6T0kGb2y
         LFE6Aha5LmQQ9Nb11iX4sU3bOXjQLiPo5WD5Umd1M5L19D7/Jf/rBxab5L8/S3EqDhm6
         AqE6PJTyQ9r30QZ9LYOVJOl7NBudIGfNMq5HbRHGmVWJ2YcMJeRpx2VUwK6eAUVMw3+A
         /orlmn3lX5XjZVl4/OzoB79u2gzFXwIVyXBjYX6fJTHCn7UJdUhFtYAgI+hxcxqr73bi
         JOFDzDiwx82Do7rRRpWSQhpZMPnD1+GamUR60U/Ht6SkHvic/ddNsvawAdQ/H4h2lEWT
         aPmA==
X-Forwarded-Encrypted: i=1; AJvYcCVZ/ewNmhFNn/Ei3+V8KQkyqrVR4kFutfF27sOwBCi4Y5iQNU1JGHZOF+cEdWLAEHjP+WE1aIwMVok=@lists.infradead.org
X-Gm-Message-State: AOJu0YxznJYWKmmOrU0V6/RH9z2Mvf21ClnVE5E5k1HCqGLCyiNdFOwP
	aHyKmbbgoD7DqUyVfOo4EvsEn6Ud0QN853VFG4gzHpS/yC9arJHYemf0QWXZb4Tb/Xnmrmz0tdl
	ro/vVSur/LQS6HuHag1ldPYIrmlMvNCOreL7rKq4IXaH9nDR4slOvnagqsET5TJITI4Nz
X-Gm-Gg: AY/fxX7zKdDdUUEtxokYYzN+1fTZQVc5MQdBioi0HxNRx7r00iZzs7VhShwtnQ9TUrr
	OLp/QtdhFWa8flmJ06GmRaVIJGDKIdV+1EfC0LJxLnMiL8tuwdu9+55uCzHCvwcHx59GDcIbFgq
	5Y3WD2s4nte5VdJk2KYZOfDRQORLTzMBbUQAmUyzfW5YXBjXH+K9UvYXSjWnwvMv9anrTvhyHTP
	fIxNPFvva0rwoyIxII7PC5vTqOf3UGEwnwdAN65mLCeEYv0eifEdRrP5PkQ4vCHOzuHidMbUNrc
	s/ot2EFNBFDt43dTsvHdRWBt4T6KBnNnh2kBRzqZpZR1BU31cnuzkBGlt4clpkyT6Zt4ynv1X+g
	yjDjiZQfVxZDzTHqH8p/yMELykXED1ej2135vL60A8aljOpreCnCou6+Ju55H71MyAcXBmn9ejz
	HRIiTdJiwD6h5ep1pe7o1VZSQ=
X-Received: by 2002:a05:620a:3f85:b0:89e:67a9:fced with SMTP id af79cd13be357-8c38940306fmr1325553185a.66.1767963337307;
        Fri, 09 Jan 2026 04:55:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFREPXA6y8YHpViRPCU0cnyOo0eKpEeGWsHbdHR3Laa0JjVGjp/T0YQVCsSbFQaOq/LXUHtAg==
X-Received: by 2002:a05:620a:3f85:b0:89e:67a9:fced with SMTP id af79cd13be357-8c38940306fmr1325548085a.66.1767963336711;
        Fri, 09 Jan 2026 04:55:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d6792csm2836474e87.68.2026.01.09.04.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:55:36 -0800 (PST)
Date: Fri, 9 Jan 2026 14:55:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org
Subject: Re: [PATCH 4/4] phy: qcom: snps-femto-v2: Fix possible NULL-deref on
 early runtime suspend
Message-ID: <ruatckeymsjdwf3hphhp34rzsdakq3okqq5lg2ifadrm3qis3j@xxozqcxseykv>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
 <20260108154944.211886-5-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108154944.211886-5-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NSBTYWx0ZWRfXyOYLnpStclCG
 r2jNgKuuxRuwOCSHK1aj9qq83qUwXFdjMixJ7Hka6QDZzQbp/wjxSlkbfR3Hn4k66cdwe1M4mWj
 I0/fmoNz+ESyIJzh71lNbg+9lDEEsePxx/HPEFTudYHKmd9dbPr3aBJ5fiRiQc77q3TU2c/7Y/K
 XCZFFlBEKce1DYo2zuf1uDKcAxGed6QPBGSVABIj7crBte+DwswFpblQprJcKIBlybuATpsRdEp
 3MVGnTYSUwiYjVMy8MCsjtZe/hHMCuEdUWOTDLiaHDf/OhAxYLLZYB1D4KrYDsY4x+lx4jgOsf7
 LXxuKy2/Clm+8gZX7/p+WeusQ7IoRrtY2G3Nj6sWfr8fkCYNYDs5hJ4mAk/ldyg6Acm5mm2F4x8
 ymHnkgoZ6e6uLTi4WUFzkhS+wbw5JkVRWko7HQn+AelJwfgX0BZDfkqFCC45w9B2MPgSfVkbyZe
 lJzpIOMC+OPwnhECIDA==
X-Proofpoint-GUID: F_pVld_sZtbI2c331c9rv-l3ZJEUvwCD
X-Proofpoint-ORIG-GUID: F_pVld_sZtbI2c331c9rv-l3ZJEUvwCD
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960faca cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JrZo24E52nylh-zEmEsA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_045538_943387_2487B85C 
X-CRM114-Status: GOOD (  15.75  )
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

On Thu, Jan 08, 2026 at 04:49:44PM +0100, Loic Poulain wrote:
> Enabling runtime PM before attaching the hsphy instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> 
> Attach the hsphy instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
