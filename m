Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15333FD9E3A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 19:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a82M6gze1funOm6zvq8iKhBrJyTpe2YbOuuEQeMP5hI=; b=OtvoNoMchqmvp3
	JwTNjc8kiMlKB+TbWn6WaktYm3DuzKsYeGn+5v0Lzb9gsp5WXiS7FIxcSF0jWalm87N3DJah7pDAl
	Kb1T8Zwj6uyFpcZ86EtWaxK9Z0udM4dwBjtzBuFzDm0LWPuztJGKw2cEGT0qs7S9e2cyDd/+J3FqF
	lwuJDKfgojyrmZNvBwB9Ll7aEVO33r+Z4EcP/z/wxdfVSAtOQlPDv7Lt+6HEsvLrrlDFHwcBn/fl/
	7ntHuM7dlIJFmGrNl8okphk5hrQMd7dKKTcX55+wrrqz0FDcEAAIIj+gJYy8Gv3S/JEK6bIzrcgBG
	C1mU3pHO70AIt1dH079A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3qt-000000094YU-2soO;
	Fri, 27 Feb 2026 19:50:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3qr-000000094Y7-26xT
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 19:50:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0Mio065418
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 19:50:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wFIgtrXg0u1ChKpmRkH3FEKr
	gne5EbOmuAWq1Gc9o+E=; b=AtWRKVCKTV+6JoWMr4fBMWqVF+5R2P7ZfZhp3tj/
	B3Am2v062umAnRlCQryhJkynlNMFVWTUyXQEhajGXPEtad+iLvMLg3TgWSfKT7Dd
	u1rAzmn44MVucqHr5mGGmwC/n1D9Sd8ndapjHqoZRVXWOSCsMZVK6Wef2NtisWwX
	ZnEoHKqDTYwgr+9HRdPV6IE0JW9QHdE++dRA2bUIlDQfGLViHvZfrkFnadMThmZj
	4qhcXvw4WU65CIsl0NZJKIV7mm2M27YIn7vjE2NUwTZOFrMhGSrCkg3aptE1htAH
	sx8uMzDeILNpTK2/4ZaR3W+/FbYnSbTRWObtE+RUL6zLCg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cka2xhm8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 19:50:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cff1da5so1710418385a.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 11:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772221816; x=1772826616; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wFIgtrXg0u1ChKpmRkH3FEKrgne5EbOmuAWq1Gc9o+E=;
        b=Ob6iI8dVZB3N5woqxYc4GLqjIqhmR7FFZ4g+jehBEeMaB8LPX8LCdkF6kXsC/Fj1jb
         jwv7jsqi4XnMKtBBk21YEDaI2IOpe6kooAgo59+Z7ai7JQBilorze8aR76nCfKOem3oQ
         YkUt87aRRI/yqbGVjjEUiqQvSL6o8VCVMpHWoaEbkYYdSLRgWCVtMl40nxihq2yMo1rK
         TG9UrcXyLAsx49Y8hQz08ltM+j7dSsH8hMCkJnF4mrPU/QOKfnfM/g/SHT8o95URFjwa
         /Ya2GdPQmuVVRAkuOPXuzkyoE6w/jFOARsLlQAbzmO958DFm7Hno8C2xkskyRbgxpQMh
         PEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772221816; x=1772826616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wFIgtrXg0u1ChKpmRkH3FEKrgne5EbOmuAWq1Gc9o+E=;
        b=X3MwuHfCc5BoH2XQYD+U+DzOx/v+0CXNWkz++hKgmiEJwU88GrRJjzYbW0FD6LMWVs
         H9r/X0vgPd5VOsS+wFFfbzKMcSc7fiEUQutqj3BHGx5VJQJtyjLMO+E0SShaIvjfdty0
         7BchRhCCVVi/1h/HMYcNgjcowxx/nm8r0B8Jeo+bzIpnb0uk8dkfL9OoQTPdZzY+vMbG
         oFAwyLxFn8J8YkDF+H21GeuIPDWBDdwGoYKFNu2ZFTCD6oRgVGce+XOQ4hAfJHBKuAJp
         Qq6vp/4jecPQMaY5hEEw6dRw+W4yYi9ygMb5ZS/YaYBEbqJIGBM6qG3xk+bCnoK3flIl
         Qpyg==
X-Forwarded-Encrypted: i=1; AJvYcCUS20erJ1EfjG5fSw9JbwjYwUJK0QZQnbFEjdlTwazEo68gRD71ZkiFjl54DecsbFMCsK3HB5hVdmA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8eM9loOIj713IZ77oYOntkWjLiHwBbHCgt9aLAVLKM+TnzNvl
	yyjwJRNSCO4PU5f56qtkI8QTR1sOAlxe+DeJpeJseof2/ve0eJ9SHRGYKqLQz9qo6BUoDXlD8kM
	Vy4uLaLRFb3ffy4KOXsu8pZ1rdczUKNEiLHEUPJM39e8cQTImHYeTbDvUvTJMGmtO1Nak
X-Gm-Gg: ATEYQzxzY/TH7c9l8SVRTkJfONlss+N18CpQuTkzoo8a1vD3z2Ltgl9yS/9a88EiuD4
	WRuhQOvIFAF1tNGuLkTJJSHdUXQIP8Zj7PTDN0b+W1DdOX9ieGqD3mHFLya66GtnCf2UlmPDTT7
	LMWVPac41Wf7M/lBGfQPSGIyu/d73tt7r40FKr8M0XQ0UhAUmd4lrp893oEeA68RzQGFHABd47L
	8T9dN/XjCtfruGMrRr8+4fBYHVmNf6aqSfVnfmMkJDzutuf2Zcfz0UhwyH9xr2skYXnONds61QM
	HISSYzD792p0M34kF5bOTp+i8fku8f0pZDY5RYa9gh8b71JaR/Y75QIeFZ5Y3WV2iUrK+mt8TlD
	DlHt2Nuki0A+s1cDSohllxuP5SMhimazLbGKXJn7/Tj+w6o6PhBSVUbSopXdJQ9e/nlLyi4A23v
	oQUIQqVEQ5jym2Hv82Y0oyor49zqSbxgHXsyM=
X-Received: by 2002:a05:620a:1a1b:b0:8b2:1f50:ca52 with SMTP id af79cd13be357-8cbc8e0fa90mr459982885a.59.1772221815602;
        Fri, 27 Feb 2026 11:50:15 -0800 (PST)
X-Received: by 2002:a05:620a:1a1b:b0:8b2:1f50:ca52 with SMTP id af79cd13be357-8cbc8e0fa90mr459979085a.59.1772221815097;
        Fri, 27 Feb 2026 11:50:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115c33c37sm140397e87.82.2026.02.27.11.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 11:50:14 -0800 (PST)
Date: Fri, 27 Feb 2026 21:50:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: xiangxu.yin@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>,
        Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-usbc: Fix out-of-bounds array access in
 dp swing config
Message-ID: <xpcltytathu5qsqqxgaidwinid4lgrhddpqxfmmsqszswirxjk@45cvyiy7qnmb>
References: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BOC+bVQG c=1 sm=1 tr=0 ts=69a1f578 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=r_RmVpEsDzQWxBcQmW8A:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JsQkA4JGJJfr9teDxpBQQTWbp3Kn2Eip
X-Proofpoint-ORIG-GUID: JsQkA4JGJJfr9teDxpBQQTWbp3Kn2Eip
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NCBTYWx0ZWRfXyObAdnFJ+h8H
 tpwh8PXEvGC4NIRbcs/kLRuWsg7g0jBgXUE4BZDiDnV/VyeFOZo+0/t2DDv2lX09kR071wnHA18
 D8YojKH7qyq+p1xmoe4VEcatzcIaBp7mBFOFxu67DrJcjFls6zpIB9ywnSLEpcui72V1RB9dp3G
 y+jzuYco+Z788MgQeLtpPQ0SqFnLUkupUQztiz0Zr6po4GKfjXzvC3xp0JkBsEQaK6UMQiwO9bm
 c9gOqIltcBNKxaQ+q9SJvCUvXd07LiUOfErFSiXjtGqQzV+KmAjbbAEqjNzHY1kGo054wH4VnjR
 cpNjw/Dm2oq/8Fu4eoGFvIXhXTLcVWzrjJrWWAit3pZEFkq/xMDiioSmXXPY1c2i1fHqOnJ6CbT
 SVixx1mSq2d+92aIbvewUo39emoJxb5n6uRYQQtN+6YzDVq9SWAo2BguCIrk8eFiKwtrwZE1K3A
 fcSbFxk5KYRUhVf9dYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 suspectscore=0 phishscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_115017_682531_AE96CB5D 
X-CRM114-Status: GOOD (  12.77  )
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

On Fri, Feb 27, 2026 at 08:15:01PM +0800, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> swing_tbl and pre_emphasis_tbl are 4x4 arrays (valid indices 0-3), but
> the boundary check uses "> 4" instead of ">= 4", allowing index 4 to
> cause an out-of-bounds access.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Fixes: 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and DP mode support")
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
