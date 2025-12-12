Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49F29D59D8C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Dec 2025 19:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtqIQRGjcIrD6rKJsMJfPIP8TPfeSO5sBXX1LUpSPpQ=; b=4Hs94mmqcvFcT8
	9/M7ud0j/+5IE8PwxJvFuAueIzJQQqP2V+eLnR+63hUR6xWPoW/A8dvmwMoXyBQgU74t3ShyGfEBE
	jAOyPDMgKN0TlaSJv39PLtUZeF073tXv5TAD0FGbdaTWDdQws6tCxvHZkUs7L/go8txXyyRvva3Na
	fAtDeQY2AtX1JqTbv9dratrRFoDYcY2CSo89mwRBsUneyagEbbcf2VBc4p7QpW4+dojsF9vjCw/DX
	UhqiWzzWzw4Kcs0FIf40N50rKF+RVHM1S1nTPy1IrxuGN2If+Ed8tTu6IFo3AHQw6jCqevBOOKpRY
	spv+N68XNcoi+V4zEuCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU8ql-00000000zW9-3gBa;
	Fri, 12 Dec 2025 19:30:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU8qh-00000000zVl-0cKi
	for linux-phy@lists.infradead.org;
	Fri, 12 Dec 2025 19:30:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BC9FJgu2694404
	for <linux-phy@lists.infradead.org>; Fri, 12 Dec 2025 19:30:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RpYQzwzfK01E93JfsaezEbp9
	AcZKk8Zor6shJaI5MYg=; b=Zwo5q2d6g9jFEHWxi2zXyMiCP/bOJy3D/swhiKy1
	8VxawRbCQL5Z9xqcxyunwh+GDeMfCtGNjDu/kTAGD/Amt0cDFrkJnvBB6oayN3VO
	I4FFlEyq7zRY7kyvszV4Gvqj6ZQZQV8kyTu5AjIE3tDjVXkTAahXNRUDateplHu3
	DlKooLWbmNRh7bbvQ3wKGRs34uY5JZSyFMHuMcrnFrviiZuBlerl/SBPB68MlRVz
	STyPWbX+PKhpnv1fEx01CYuB293hvEASJ27hO/6hMD+mJz9rnH64qSyVMo4VO0RL
	+Ul91pWD+LnGfhKhSClRu1HjMa8Kx2/+oCra/EpRwFK3WQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b04av2wmc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Dec 2025 19:30:40 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dfb407f2faso2065321137.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Dec 2025 11:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765567840; x=1766172640; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RpYQzwzfK01E93JfsaezEbp9AcZKk8Zor6shJaI5MYg=;
        b=TV5MhcMTMgFMPkbUOlEPOll8muPCZdqhzyo3sDp0UwspdG39M/bZrWAQza/OxrbnkQ
         KvoXtGqLEy53V2eDAgvKqf6Rlz5BnSsA2jJ5TsZumetf9Q2W5naH8kuFmB0pIljvgUNC
         ghIr3aW54mxkLkUPIMbPbnn0NM19GAszaj3f5cf+wn2Rd0sUkTpGSmue+LAYtOIdPwBp
         bwUb0vzjcCA7yzVtLByUOs4ijAXCrEjyOkbhNHnW6jxvnaYALOS17PM529sueLujKQ4t
         nX9T0BWdUavS4QbSzwIbjAQohZ5mJJ5M5kHJrzw2HBzzc4lACSwJTMAPhe08ViQW1hFU
         5iVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765567840; x=1766172640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RpYQzwzfK01E93JfsaezEbp9AcZKk8Zor6shJaI5MYg=;
        b=ChMlSne2+GtKSH+J6zUPXk4AfOZz8Ft064hHdPvTffxrRg0NhVGJaDN137+Qm0jHsW
         nGDmRWVq/B7sRANihzHG3UCsBJTRl0LeoKX74/LgpQIuR6HcqX88lHWVCYZp7DQhugzn
         URBX7uxGn8YDyNLAAThGgFbMRTmuhdKa7yzoS2HfqOPZCieGgHRW6UsT++wmi+AWQ/MC
         +qMATjQoYRSqNCpcMhLNDRwm1nVXxGNQZ3fWEblTFBj2Jm8PCV3yzNeOIfbefR9s1PU9
         iUNLd4S77EmuJAE1yIHLqqDtXXtcEsktrCfiTNuPWENUT0LgQSPytmgXIgdjYO2qojRq
         70lA==
X-Forwarded-Encrypted: i=1; AJvYcCWrYErq7ofN5+nRKXr1CI8d1v4BqTlinRBqm2yJr1CUyq3r0Ww27E89BPo+IXhzfrAORd0LftBWzy4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWKuVotOuEYEqvgek33+eGigSGivKvoVp6DBDYWpDqmJkji5eS
	alSZPUQ4lmqg2YpLH007uA/Lu5WWVbkTw5JWfAm5CeELYsiDFQMBEeTaTdgFOvuPRFTClcKNvxw
	LzYwUE01KRzywM7DNIMn1v2YgfKD/03BFoIAQ8A/8mBMhwxmTrgP/hOh5xU2MQNor6GmM
X-Gm-Gg: AY/fxX7+Nt054yhTNLPF0Bc2FtdL7BWG45oU/Ym+4r5JQSJAsp+d/pC1BHt7cd+KWBJ
	TvmcOdEgmcC+nbbTGcEiHCxwl5zonZHeK1U0QcA31TyKWOr/+Rj94/rNkyXrycdS3INmYw1cmkS
	bQWlbeUrm7D/G9B9oMVR7PXA8wAIiqc1igi19GhqOKADuAegio9QAudT8agXkkJMNOI1ZZlyTFM
	KWi6IrAi/fqT41p5sOF2Q9ED36rWF6CvR//BFVWN7xlNCUVXyRcT+n+S/4CB7eCoIb/GljMzrFX
	xyL35M21ANZ4KRG4PhEbYLKHgZ/oiCAtvjDQarf61Dpi06qJ7Dnwbp4YIYB77nAIcTSDjNCqQKG
	HUKS/iMgur8Uhvq67JWZmPM6efFQ2bEnoMmWzKx3BJn/zkXYTVZdYzadsE2IeXnVXlMOtGRviAl
	RknGInojd/96i3OcxvhRbpuUQ=
X-Received: by 2002:a05:6102:944:b0:5e5:6221:c5ae with SMTP id ada2fe7eead31-5e827475c6cmr1285354137.1.1765567839752;
        Fri, 12 Dec 2025 11:30:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbJWWHapZrIbDJxcwqs/vQNRFbYuXzORIv7+DyRlDotYAHLyI9QbsALvN1ceS9H9EMbR/eIQ==
X-Received: by 2002:a05:6102:944:b0:5e5:6221:c5ae with SMTP id ada2fe7eead31-5e827475c6cmr1285340137.1.1765567839293;
        Fri, 12 Dec 2025 11:30:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fd2c434ecsm6920721fa.48.2025.12.12.11.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 11:30:38 -0800 (PST)
Date: Fri, 12 Dec 2025 21:30:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-ID: <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=VMzQXtPX c=1 sm=1 tr=0 ts=693c6d60 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EWeZSZyDK3lWYzenonkA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: o75-XjnAEr4yk_ljDeBSZU6sHXZvvIOZ
X-Proofpoint-ORIG-GUID: o75-XjnAEr4yk_ljDeBSZU6sHXZvvIOZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE1NiBTYWx0ZWRfX9A6efhN725ZP
 OdJd7kdJmpbtIj6tKLUKFxS3JX3ib+ma5T2CNWexkVOKTRr0A/Cnd8oU3xH/sTeWtYm2XpTuYr5
 +gicZJp21wdmYS3rjr1lJqaLl6aLX3xwIin2O4/2RKKu7Rj7r72PcMWESL2ba1pyC06C5oP0c0B
 dOPqRHvL2ZX0Htw7SPQRP28q393LCFIMlUxHDBzMpetGBOoo6BtnoUlHzKEkh7VXzQnj211ZwK6
 6dhjE8/979ufDs3LLl9yva+ujA9EJ3fpFYWYa5EDd4s4bKkLfliYpYa4SU2t51FB0W6ewy6Lio5
 Ufzkp6aCrGNq2A7ulMDoVGwk0P5PRHwb9ndyc77LvMVJdgGisjOUC4YQMJzTgmxKsqLyGxsZ7+I
 tPWknQreMYkFkOzyuSSzwR3qpD2RTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_05,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512120156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_113043_311412_CE8F943B 
X-CRM114-Status: GOOD (  28.51  )
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

On Thu, Dec 11, 2025 at 04:35:36PM +0100, Loic Poulain wrote:
> Enabling runtime PM before attaching the QPHY instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> This causes a sporadic crash during boot:
> 
> ```
> Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
> [...]
> CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
> Workqueue: pm pm_runtime_work
> pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
> lr : pm_generic_runtime_suspend+0x2c/0x44
> [...]
> ```
> 
> Attach the QPHY instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  v3: The phy-core expects parent's runtime-pm to be setup before creating
>      the phy, so move back runtime-pm to its initial location and
>      relocate dev_set_drvdata() instead.
> 
>  v2: Move runtime-pm enabling after dev_set_drvdata
>      use devm_pm_runtime_enable() to fix unbalanced enabling on removal
>      reword commit message
> 
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index b5514a32ff8f..6386d834b0e4 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -1093,29 +1093,27 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>  		or->hsdisc_trim.override = true;
>  	}
>  
> -	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> +	dev_set_drvdata(dev, qphy);
> +
>  	/*
> -	 * Prevent runtime pm from being ON by default. Users can enable
> -	 * it using power/control in sysfs.
> +	 * Enable runtime PM support, but forbid it by default.
> +	 * Users can allow it again via the power/control attribute in sysfs.
>  	 */
> +	pm_runtime_set_active(dev);
>  	pm_runtime_forbid(dev);

I think, this should be called after enabling runtime PM. Please correct
me if I'm wrong.

> +	devm_pm_runtime_enable(dev);

Missing error handling

>  
>  	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
>  	if (IS_ERR(generic_phy)) {
>  		ret = PTR_ERR(generic_phy);
>  		dev_err(dev, "failed to create phy, %d\n", ret);
> -		pm_runtime_disable(dev);
>  		return ret;
>  	}
>  	qphy->phy = generic_phy;
>  
> -	dev_set_drvdata(dev, qphy);
>  	phy_set_drvdata(generic_phy, qphy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> -	if (IS_ERR(phy_provider))
> -		pm_runtime_disable(dev);
>  
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
