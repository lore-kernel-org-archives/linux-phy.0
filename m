Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F73AD41C38
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 13:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEWiaAlDig0+6XIhCZ3yMchkQTukxOUA4pl9AcoZLB0=; b=s9hC9AP37qWEo3
	FeU2uQ8rs+FJ8BPwDxOpLw5lhZNZgJer9kIySszyUQXBAl4U8pSkf1ue7xhwjlRK+nRUsyv1FU3ZB
	yg68Yhflvrk2zlQ7ltT2BgUYKdp5GK9rHRuivNqwmrtYwpzLGZ67HGGSke+RMeIrXIPA07Xt5G8My
	q8s/oDSinxCS/XIz6B11J77BP9V8awKu8VA4DnDzbjEpKT+H18Qxfj1NygJSGrorfYys1XOZDwRh0
	Pyf08J6+gM4qBumX5NzQ3bkfkjDzz1Qgdr2J4t6B6tSPGOkEwqz8aysbpq6ewuT0qipFMtRBXNe77
	a4BDYW22uGNy5BEXSCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThAk-0000000GgQx-3Ly6;
	Thu, 11 Dec 2025 13:57:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThAi-0000000GgQV-1nbE
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 13:57:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXnnC1181945
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8vkofDSF6LVlR88JnejZSESC
	+DL/JeaQBWB5LFj+j/A=; b=BqxuF4BOgvj3CPuNRS/ephIc02OB+xvy4ilJwYtI
	Fu/bHYyYLnKk7Wvvh5J+ocTlcLjNgM2vMa+xnH5/z+3QGl82mTOnysBFTnBgGxLU
	qROKr4h5ykzOIyPZdPMlj/HGnB/6P0X9axmuhJeqqdYROIkjWPycTJV3Zlfe2XiW
	izVcBZrLeV+yHGaI3c6X+Kr+2D6+7IAbr/x+n7K6JNfwGQEokFkMUM2E7dUOCQIZ
	wjNWjtzyR+p0Kc7u2Gy6im06pIRnnS0TkZdidSJtM1IYe0KfL6KAio00PWaLGM+0
	+GkSdlTohU7qTFqca2Cjt2tZMvubL+Jf/xVJxXxGVx0KqQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx2pn1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:57:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b8738fb141so23473885a.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 05:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765461451; x=1766066251; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8vkofDSF6LVlR88JnejZSESC+DL/JeaQBWB5LFj+j/A=;
        b=BhKCesfd9YYeGgtXxK2sMIVIEfZXRkTiXskI/IZ/7odALzQdcMKPtlgxH3u0sfwX/V
         RnzRqD6kYQFlx1dtGW/9mPzAD4jO8dQS1XXgdGQUJBprP299eXR1+zycMa5fAMtKf4Lt
         uVxulxUUTHohnn9wbhzM8+9ZepA125cz13Qyi2Tx8bxonSXexE/xzv6k6qyjAxkZKnuj
         kWsINllrslnL9sxJ4R9gUHZtXs2iKQPnEtHNdD2te8HK09xasgp4CDOx6lXyM3+OTANM
         tDPFHf/JTxsEUntZ3q7KbCt2C6FJYYYN7auOUpHBcN/S/T5KJKFrtN+1PEEbfcZAORfQ
         Tbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765461451; x=1766066251;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vkofDSF6LVlR88JnejZSESC+DL/JeaQBWB5LFj+j/A=;
        b=BHKQwW6vvy3WxvzTEC3aDN+wqZIs53VsSA0K8c277kvotJQS7S/6SbgQXyJQpHFLco
         V7qsEHS2Z7qNUPRriMbmCI7WNMWAveMlHe4JQp+PkbJCvhylGrY7QX+4hD05jYeqC1j9
         w1touk9l8c8q9vpINlOlvI+i+5ZdTTo3L5nAixesGXbpOY2zuudNYU2Y9mgtc2tMcywy
         M4CikzX0yx4a8mRlt8XWP478kNkSTP14H7aLhOku6b+HE/stMN2O6omoab+2sWJa+/a0
         T1zMtgg+Mc1IsHCneybg/JGGYytIZQQje9h+OJxuonYtY44wnqSaQr23YGLCUvdwaDgV
         FuNA==
X-Forwarded-Encrypted: i=1; AJvYcCX9Cy39nKYrrELrYmVlPNMpK5CPMrzo0W0Ol3xDsODemtgtx82JkK3Wl2+7ecu/+pFej/EtH4pAGIY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5JzdjaW8LoV1smdE9G9oI0+lHS239Xt7NqZoKw8D2AECV9cs2
	ucp+7WIKWF84AJdBVCR3ZfZJNi1SBAnD91HYgOI7Zm/FOVHxYhpv9NtyRbf6BrjzlKmlWnup2OF
	/LgBc2dHp/z8mfxFXLXdXZmv5b+osKcKUKOMd8F0qqKALQcm9iNVhNo0FqjtK0rChUYeE
X-Gm-Gg: AY/fxX4Asbp/TDkdLxXU0V9Aoc+0dzYOvm3QqU/qVNhgJSyaNe8XuX2wZ/4ru044jly
	6XMtIVTEHBJ+dlHbZNB/J4rEDgBGwqOb+T8q8ClV7HLUlnVOClZpgQn1b9yTff6RtQnVeSghpES
	VD2VLHuQWIphmtkm1QVy9+z3y5B+QPsyX+je+aEzHEbW7Ekl4MDw43vtGSdBYrCFJMBzK/nqmjh
	vAnpcDI27cGQ/bS954bRYOSODOSE6PHcQe1NCq5vgRNdxOL4r/+fvjQdy4XWOmv8b27GP+I/tOR
	bMu1Wgv/uKeL1mwdgb2Nb9ln8mKxANADZDwHmvPVXviOA5h3PDNC6lamSMiIDVgjrPEnc+/dFkw
	fSRWO/Lt5kYmRc/TUhGBzUx3vbVLY/YnAFWgVuNDC1dqEBzNihBAbRCV1DktY8O5SVAbv/kfTHB
	N7cwftlMMSWEf/TdpCmh/2GFA=
X-Received: by 2002:ac8:7d8d:0:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f1bfe7d21cmr25792971cf.41.1765461450761;
        Thu, 11 Dec 2025 05:57:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyDvocEX7anTwimzSYssqCWlkfsifkzwxspPzYVu4nVwF9E+ZXaNz5wA7KYmnEQBLyAqQD7Q==
X-Received: by 2002:ac8:7d8d:0:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f1bfe7d21cmr25792661cf.41.1765461450259;
        Thu, 11 Dec 2025 05:57:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199e93sm892605e87.96.2025.12.11.05.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:57:29 -0800 (PST)
Date: Thu, 11 Dec 2025 15:57:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
Subject: Re: [PATCH v2] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-ID: <h3jx5drjfg4xa56lrbdu3xxic53hez35jotkrznozawjjljfh3@kwo6hdccfkus>
References: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-GUID: cq6yb2K4JdA_SnpANaeLQPaPmeL2IRUM
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693acdcb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EWeZSZyDK3lWYzenonkA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDExMCBTYWx0ZWRfXzXGIhieFIKm1
 TNxq3AC7s9VzWoCncDLrWiroH2CTRKvcgYOxXWeQVa9tGISFYp2Wsg0BRfgsDOQBLG5C4WPX6VI
 sigbG8cmQWnjYB2SoQ9OJBob4ZvTzINmNYRiNMCmpabQVyVFwGD6Wg2ZWf4ZJHlJ4/BtnGDzUQa
 US/R6I+RX1+9OhRM1pv0A/joAdO2myLJORfLOzZGWygNLu3pQEr2t5AhWWsQVSfAyf0LTzxGdI7
 98b51gWiNdhyzUrSa08ww14sJjDASjMeqQeG8U/UPX3OGkW25/HkUyC+U8vw9MF01tc1y/ztYQq
 IZ5Jzgo5mr6EX7vFjA/qqs8l+ETlm5sOLr6qP5r2g3aIDMEEr2haaa/JkMnWHQyhISa+boz1UhR
 dV8QR2DDLGGrB2k+NZ0HXxlDPXqFuA==
X-Proofpoint-ORIG-GUID: cq6yb2K4JdA_SnpANaeLQPaPmeL2IRUM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_055732_494855_4E5D0A3C 
X-CRM114-Status: GOOD (  27.95  )
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

On Thu, Dec 11, 2025 at 02:48:36PM +0100, Loic Poulain wrote:
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
> Enable PM runtime only after attaching the QPHY instance as driver data to
> avoid a NULL pointer dereference in PM runtime callbacks.
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
>  v2: Move runtime-pm enabling after dev_set_drvdata
>      use devm_pm_runtime_enable() to fix unbalanced enabling on removal
>      reword commit message
> 
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index b5514a32ff8f..c496acbad0bb 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -1093,19 +1093,10 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>  		or->hsdisc_trim.override = true;
>  	}
>  
> -	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> -	/*
> -	 * Prevent runtime pm from being ON by default. Users can enable
> -	 * it using power/control in sysfs.
> -	 */
> -	pm_runtime_forbid(dev);
> -
>  	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);

No. phy_create() checks whether the device has runtime PM enabled. By
moving these calls later you've disabled runtime PM for the PHY.

>  	if (IS_ERR(generic_phy)) {
>  		ret = PTR_ERR(generic_phy);
>  		dev_err(dev, "failed to create phy, %d\n", ret);
> -		pm_runtime_disable(dev);
>  		return ret;
>  	}
>  	qphy->phy = generic_phy;
> @@ -1113,9 +1104,15 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>  	dev_set_drvdata(dev, qphy);
>  	phy_set_drvdata(generic_phy, qphy);
>  
> +	/*
> +	 * Enable runtime PM support, but forbid it by default.
> +	 * Users can allow it again via the power/control attribute in sysfs.
> +	 */
> +	pm_runtime_set_active(dev);
> +	pm_runtime_forbid(dev);
> +	devm_pm_runtime_enable(dev);
> +
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
