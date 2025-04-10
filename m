Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C7BC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsSYDFs72jf+0C9NjsP7OiMLZ11ADRUBb0GSFSQd5V0=; b=BIUDfR5aKYaSPG
	oXkkx7fiVp4pR15m/ZYDFQEDnFJhFBtkyQzuB63MmoIPtfPivwTffftI9J9JQvKRHhHqw/1lBGXcn
	yH0zCYWSR1QQ+a7HyxJcgzW1SqlqZarnKypnRGWStZ7NEL4OQp/XmpEMyeZ6zShvk5eYM39RluxQB
	tDJn4vrVOBr2NjgWY9BIlOLhXYbxOXzl6rxdew9ApPUeyaNYtxalggKgTXLXZQ3oc6jVzuFnCJkga
	FLj3KEAAIJbjt/WdLcW5Q5GFNrKM19DKdL0c4KmztlA/kTCNKbQlMw1wRPyRyEIYYNSvJuKumf8uz
	/Cty00V8K7HpXxODw2Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yA9-0000000Bjz3-0zCH;
	Thu, 10 Apr 2025 20:06:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yA5-0000000Bjxv-37do
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:06:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AFv5Fi019642
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:06:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TZVLf8DQJOqLTTY5zbwnNMp8
	Hx3tMMxkt8z9vF08gyk=; b=UIoz9clYmvQhAvShfx9ifABIG9qcnSFNb1HUoZOr
	+XXrAaIDteF8LFXNuBT9IOS0s7Ay/lSIy1FppGlB+vAhNem2JVp3uDK+NkaOR7PD
	aQew5ygeYTaeK4Lc7yE5reIfyjuL8lcmM0/bXJXcaEaA1aYLag35VYlTn468yD/J
	hvDLIxJAFMWBnYEjngeqthoX9ZBZw8PcVx7VfEJNVhF0LqUItVALVg/j9Dlb55AC
	8UkIeLMuJ0QGizKhD2V2FrLBJidLP35sYMMeGmr9BXR18bcWyovrwD6TNx72IacC
	nDEkqadARg+d4Ob+CjWfNfrryh/RaDBtQsU5Uuwe5iURsg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrrc4w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:06:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c57f80d258so382806585a.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:06:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315568; x=1744920368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZVLf8DQJOqLTTY5zbwnNMp8Hx3tMMxkt8z9vF08gyk=;
        b=VisdQkhSs0BuEW0b76/tumaPoNNwtEtaK01nogOPPbOAEj3t/eMW9nJUUviyV0jvqe
         QWajhPZ/fLUNX4+/3cUvUPbW2+7JaV6DAOuC7gcioDyjT2FNu7Q7KL/xR9JCVMzDWmks
         RLMzT8bHyAMMhqUHkZ1iOQsI/YCZ/ibpVupa5oT+rihpKXGSvKQjPwVh30qJhJ2v+8v4
         jCyn5uZLgb4ohBiXJsHgvwY0ERhweaN3adY3guE62EfDw7q5bMHyWDS9+SP9kB5VIDm+
         NEQnc1H4qKGwLf0RnMt+0iLK+fnFyh3SI3ewHMVf4ub/3wfs+f+WqQUukNAA9W+WQF9Q
         SFOw==
X-Forwarded-Encrypted: i=1; AJvYcCWVli5Kv/pPLmAD1WpR7kopIYuLRe5HxwMTFsqbr0/DEwVUwCrZCTja3acjD6uCtFRAC5TK7TGoHgs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwChSzDxV/lYBKgKndDg4WVkBrTvmyAawfjA/tRzpqilQwcwqHt
	+pweDGZDVqvXjHFNwUg54YXuA72IW7eAmvtLAJE07csB22PUXu3CEjIgIx9ZGG6clwJgzX4wAAd
	RwMEXZ9dpOpC9lw3peOpQCOWFSyVTKEbuWYGTEJqH3CrV6PhOy/ZgfAZzSqkO693F
X-Gm-Gg: ASbGnctvuve25ldOZ9g1Kimi3GzDqFdizskLyCUhj4uHahHy4AMowmoM2TWtG6YyrZP
	yS6WHXTIOxy2sydowWGV/DOJmGyeV6fiv5t9fjaknPKEjo8GfQneGoq4XtXIVjTlWhXjiL+DSnW
	Y55pXL/0KNLxfRGz7z7Pox26hHeX+QhWEKRqdeMr3XEGcAEy6AdMyx4A9MxEW9VeM9QtWBF5ZLI
	BsMifgPOnQ4e9jncjIctFosoWcdrKl677yuRbDeKxuOCr01jCtBBSa89npkzEC+ZD0kOx0Ka0RB
	3nQHih56WUuQCREBYNbRrUf97Rs0Rmt4/9pMj5NEDgxiOl8/kxa/PCfbcCqV9paFoNPGzANKuWI
	=
X-Received: by 2002:a05:620a:2585:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7c7af0c1080mr49122585a.5.1744315567833;
        Thu, 10 Apr 2025 13:06:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyFCAIZv2SoWtCU+S6mL10ZPcuXspL7BYeiCNpGEUGoqpR1wyjch03Yxp8FlSr3X0GqorOTQ==
X-Received: by 2002:a05:620a:2585:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7c7af0c1080mr49118985a.5.1744315567533;
        Thu, 10 Apr 2025 13:06:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d2387cbsm232524e87.68.2025.04.10.13.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:06:05 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:06:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Can Guo <quic_cang@quicinc.com>
Subject: Re: [PATCH V3 3/9] phy: qcom-qmp-ufs: Refactor phy_power_on and
 phy_calibrate callbacks
Message-ID: <yswahfclsulxp6zveueauxtizcrzhgegwff4a55aztebgykawn@kwjrt3j5wswd>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-4-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410090102.20781-4-quic_nitirawa@quicinc.com>
X-Proofpoint-ORIG-GUID: IndAdn0Sgfis74g_KFjOTvjzPLLOdlkp
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f824b0 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=lFQMB9wLRqEjQFf09QYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IndAdn0Sgfis74g_KFjOTvjzPLLOdlkp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_130609_896572_A3B01CF7 
X-CRM114-Status: GOOD (  16.16  )
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

On Thu, Apr 10, 2025 at 02:30:56PM +0530, Nitin Rawat wrote:
> Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
> puts enabling regulators & clks, calibrating UFS PHY, starting serdes
> and polling PCS ready status into phy_power_on.
> 
> In Current code regulators enable, clks enable, calibrating UFS PHY,
> start_serdes and polling PCS_ready_status are part of phy_power_on.
> 
> UFS PHY registers are retained after power collapse, meaning calibrating
> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
> hba is powered_on, and not needed every time when phy_power_on is called
> during resume. Hence keep the code which enables PHY's regulators & clks
> in phy_power_on and move the rest steps into phy_calibrate function.
> 
> Refactor the code to retain PHY regulators & clks in phy_power_on and
> move out rest of the code to new phy_calibrate function.
> 
> Also move reset_control_assert to qmp_ufs_phy_calibrate to align
> with Hardware programming guide.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 26 ++++++-------------------
>  1 file changed, 6 insertions(+), 20 deletions(-)
> 

With the cover letter updated to note the dependencies:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
