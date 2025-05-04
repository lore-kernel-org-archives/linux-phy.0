Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD63C369DC
	for <linux-phy@archiver.kernel.org>; Sun,  4 May 2025 15:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyHA9Kc/aEzBUGigzoS5NCtTRPJGjOtjzg4r7YEzrz4=; b=FML6/H+5rH26dR
	uhi9GTtgHg41u+JqE9jGLAU4CTZKw5DYUgzy99dHll9XtkucG+qQyJrsdtzWcXVDrrvuvsFSW6YKK
	RIp/J9Ep1H5sdofRYXdfbz2i4RLaR+LLruGw1lybVr2duggR9TAAnisX0CPryLjfQ/muMnDC6Fplk
	bZ2IKJxaAYkMGCFaqJmOSmYfZ20SVyxBuVTGKs1T2Oh2tqcOhCTy+ZNWJOfokkn2vEJGx+O2gP4Ne
	Rf7OjXESatV8dvld0aQl+rwJ/+iIKfQ/wlfzAxFA894454JEJ2QhpAZWC7aAQnSp+jKC/8YjUILEh
	Ke1w1ovjJT8QFBHt8gzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbPb-00000005XaL-0G6O;
	Sun, 04 May 2025 15:37:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBbPY-00000005XZ8-1Jby
	for linux-phy@lists.infradead.org;
	Sun, 04 May 2025 15:37:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544Dabmn012240
	for <linux-phy@lists.infradead.org>; Sun, 4 May 2025 15:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8J8bGYOZSSA8D5P45JYX64wP
	eN7udZjhNxZL/UmjYmI=; b=aZN6DvX1jDnCqpajUand/dpLN4Nl9CO92sapqSN+
	wj0OTPmz13n7k1RmnImj+ea64rVUJmBW4tX9KNxraW/C/zIlqYqNxz/YTPMmwhLS
	HNzpeBDN/abDm0GUWQKVe4+5sF6p7KGFbMvkg0F5Fz8YJJuq7vXohAAKZZb1FmoY
	cIDKBg8oiavceAUxaJfPtrN792CLpPq0ipNaNMBi+5kI9OENOcSFnIqZJGz3swYl
	CXUpot1UOaCvIQswPl3Nip1WUnao5+10EpKk5y0YERjb13oed72sk+hsBuBv145V
	L+RVxFV8Hvi+OGniFZ5F6QjE/zv9sAh7iDqmU4ugPqjgcQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc5a52g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 15:37:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c92425a8b1so666431285a.1
        for <linux-phy@lists.infradead.org>; Sun, 04 May 2025 08:37:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746373066; x=1746977866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8J8bGYOZSSA8D5P45JYX64wPeN7udZjhNxZL/UmjYmI=;
        b=c2NNaqwyhAkFcg5oCs0Ja8Ur3vEOP4Kqg2QmyB9CF8Wr5g+AOP8kcuFYQ0VgwxmCA3
         /T5ztn3GNk7LYEUU7keADxXEQQBfYR0+oJ3qdpExv6SZKEUAQoh3CZ7cikannjuo9goA
         H96hOSP0uZYJW1bF1uZ8/bXB86eiWG+OFBmPouSTpafoF667HrFZnSYg4d0zl3DLg4vZ
         siNxCyauKFveM4qseoIA4xnfaS/wvpBAm7wTKwsKS2aXpGG6N6fqxR5/wVAEZRhc5TN7
         2vZ5z3lpPcgz3P/oIbW0TAbbSIhW8sdSoLgprTMvp0R8WF3lhJUvTs1fw8tDkm8dNHUl
         Db8A==
X-Forwarded-Encrypted: i=1; AJvYcCWqDzsZZ+H8fVqV9mEtb3qWvcccV+1XOn0z/jWYEKeVjZu5fS8m0G5neISTpbOIPHG+XLbdHND11Sw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7gtlfBSMLuPoL8CatuNSWXpbwvRXorTnenWn52RFqnarYrnI/
	URZsxxKTJPUwpp4asseaxOEsOWDmq4iimMJaJD9WLv2/++n2gpdMQhuSpNMzLTENgo7R7Flhhx1
	OyJWkyYxLgsJPUXuo4xFo4B9ffxgQ77B7Pg5kfAHMk3BTbRlVG6z1pfuNT3utLPq8
X-Gm-Gg: ASbGncukpBRoxv12+tRuPW7+Ni3HmTvooMgph2HOO3goMIWA0mEWNYeAk8XTataucd5
	gBYE/tlsF9HiRM7QDfQ3x4+qr77QfTkigZMPoVchuGK3NUyrXS0dX5vza9x8T4Xl6nhZ+/L0xaa
	5QabJzOQOxVi3lKm/nbg7s1NlT6usfgX84fFI9rtNQHHgM/3yvUGlKERzg08JC1YVN1OUUYYGxE
	ghde4nKVDv4Xujx8mn5xFj2rpF4wyKRMsd2pvrOAaDwXOiSsGn9aUHDiaxxGj4dxPabZjqzNhpb
	2HI2pvso0Qq6qxQvtmeQOQX2cGWgD7eeEDK6wBbYKuOqvULzHUYv0+QtYpYoOoYNnij4vzQMU84
	=
X-Received: by 2002:a05:620a:414c:b0:7c2:3f1f:1a15 with SMTP id af79cd13be357-7cace99ed1emr1939684885a.8.1746373065981;
        Sun, 04 May 2025 08:37:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKu/YOLUixhsllPZMz10hB6tnLnnl75sQCaZlpL0pB9iFUtQTIQ1rLugPO1WNiOnmuvG6ZBQ==
X-Received: by 2002:a05:620a:414c:b0:7c2:3f1f:1a15 with SMTP id af79cd13be357-7cace99ed1emr1939682985a.8.1746373065636;
        Sun, 04 May 2025 08:37:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee087sm1285876e87.147.2025.05.04.08.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 08:37:44 -0700 (PDT)
Date: Sun, 4 May 2025 18:37:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V4 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
Message-ID: <prbe2guxzsea6aqonf32m44zp6oa3vzdf5ieazcontv4fmx3d3@2r4tu5nr2k4x>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-7-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250503162440.2954-7-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: 7FjY2lOvv6foKprRoPVkx2etLJH3TGnE
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=681789cb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=xXtjh3xWv7Xu3w3lKiEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7FjY2lOvv6foKprRoPVkx2etLJH3TGnE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE0NyBTYWx0ZWRfX+Zu/HUZVtazt
 JbKC3aosTIlcPnS3nmMmh7CxNHwH4S5RCFtGM4SaJEMEfkyaFPdl/ZJq2sbEwEZu2r2KJleoYuI
 7Vqo2iffLo8/17PSGwh18k2BNe999qm6pL+vH5Yf1PJawexDM0eFIrysWHoAu5p0XtfmNsdXAA9
 ZGP3Bcnb35XJ9yz/m0TaUWCDduKoWKiUaVg3pf5cqdUik9aqi/0mjXR8Pio5IHyKaees+ZOeujH
 CmTR/5qaxBCTfj/TiOVoGHLUgDjzJ+NrF+DjcfPC3wRPpRTWg4uKmTH9xkTfCi9QzFT+1hw25qD
 TIt0nt9AQEMePkXUKVjqJPGELREGoyDQBk8H+pw7v5MptjVy2/kjwRts1GX1jmrKVdC8Bqt/XgN
 hfL/DAiIQsx1yymZFk6xgcVJs7am6UPTtRwULpadoCMMbdpoLvYl0byNf2yTEpIo8N3qy8/X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_083748_363436_FB7A1553 
X-CRM114-Status: GOOD (  21.38  )
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

On Sat, May 03, 2025 at 09:54:35PM +0530, Nitin Rawat wrote:
> Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
> functionality. Additionally, move the qmp_ufs_exit() call inside
> qmp_ufs_power_off to preserve the functionality of .power_off.
> 
> There is no functional change.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 30 +++++++++----------------
>  1 file changed, 11 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 94095393148c..c501223fc5f9 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1835,6 +1835,15 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
>  	return 0;
>  }
> 
> +static int qmp_ufs_exit(struct phy *phy)
> +{
> +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> +
> +	qmp_ufs_com_exit(qmp);

Just inline it, unless you have any other plans.

> +
> +	return 0;
> +}
> +
>  static int qmp_ufs_power_off(struct phy *phy)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> @@ -1851,28 +1860,11 @@ static int qmp_ufs_power_off(struct phy *phy)
>  	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>  			SW_PWRDN);
> 
> -	return 0;
> -}
> -
> -static int qmp_ufs_exit(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -
> -	qmp_ufs_com_exit(qmp);
> +	qmp_ufs_exit(phy);
> 
>  	return 0;
>  }
> 
> -static int qmp_ufs_disable(struct phy *phy)
> -{
> -	int ret;
> -
> -	ret = qmp_ufs_power_off(phy);
> -	if (ret)
> -		return ret;
> -	return qmp_ufs_exit(phy);
> -}
> -
>  static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> @@ -1921,7 +1913,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
>  static const struct phy_ops qcom_qmp_ufs_phy_ops = {
>  	.init		= qmp_ufs_phy_init,
>  	.power_on	= qmp_ufs_power_on,
> -	.power_off	= qmp_ufs_disable,
> +	.power_off	= qmp_ufs_power_off,
>  	.calibrate	= qmp_ufs_phy_calibrate,
>  	.set_mode	= qmp_ufs_set_mode,
>  	.owner		= THIS_MODULE,
> --
> 2.48.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
