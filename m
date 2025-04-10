Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477CDC369A9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS2KvPftkgtKvZrClPoBr8y+RWtdb2AlHa0SN5TjpeQ=; b=RGeVnR1gHzNUCN
	bL+428NbE8FPHG15dmZ71mH6flKE3WeuwxmGlrAgvQVoygLwuyrhpJnsHE08cmrQBEe7eiPa5Todf
	M49xbWTXy7dEq07BBBUn6eoAVTI46T3px1oUu2xt6ola3R6JvnkUonjC0/28DaYZOk22Z0WMXJ8qu
	xsQi/21Cw0SfmEuA7rtHAdj11iTCpk+Ea9Kas2w1nRb36uvAxdvWc+rTj72e8DpzfXgBSB0H/ofvi
	ob7ntONR7SuyPJSnPxW3E+QW3FjroL3+ytrrL/KwDOJCknswqKkez7ZF/DOcxrxhKFAnv5TkdJX11
	0dbGcPmVDwF1zcxawSyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yFT-0000000Bkw5-0BAD;
	Thu, 10 Apr 2025 20:11:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yDB-0000000BkeM-2ijO
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:09:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AG1CqQ029741
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:09:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cCEd/9oYHxkcPEhimIejZIIz
	IOlQjiZILHCRW9pgvQ8=; b=GOxUIxeCP78CiPRcfisEbENewWDuMHZq6XcltgHA
	d1kAL7kZh3/qIKpTTd+Og7m9+1GQwUA8COfStq+eEOuOSJVzWxqiwMRYi7/NPSP9
	bay2buJge4u3LX/4G8DotnrSiWHfCwT4jkz8WIGeiXLC7RsmAiNm+7ra+BfjKIrF
	edRyGPmHBvrc5mD4mEg0wIx+TbCewNLZ6U6a+6oKPn2L4xWSOSPifP4y/59Whjds
	x1ZJNwecA/qG5SyWDN2Kmz2hIJ3RfL/fmC6H3IVz8TxldL56FSHUNo1SjmXA3zqj
	pcYEwDRFhhvoYQZQzKiotMSU9T2Px4DWUZJLDVvMkEJ/zw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbur7vy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:09:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5cd0f8961so266123285a.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315760; x=1744920560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCEd/9oYHxkcPEhimIejZIIzIOlQjiZILHCRW9pgvQ8=;
        b=aklVpPkbI5rpxn5ksn1jk9NedaJzlAYddy2KHLleo/R9IjkMWt21VGWUvpN5t97RFk
         gZrIOpoFsBit+Y/1sHPB5nBlNG0y4e2d35a2NxQH7Wm5mEFUbEn5Z0cTCNMKLLzI5A+o
         1uqI58A4n1zfFSzay8/xFaQmvCPunFsFxrjZ/iM9GQFn5qSzFJvJjjqdm3x8ksnyin9t
         6EfGJuRYu0MfoDlGWL9VRRrGVkW+Lf28ficiXkaTDTFFv43nNrJy7uEo7pm/hetn7091
         IjIj3Kenah7kyw626gWiCXFCT+lf1OEStFk9Icn0/1OT59hRUcCtJtyDxpIi89tmLlV6
         cSSA==
X-Forwarded-Encrypted: i=1; AJvYcCWwK8+4arkI5vCuZE63MkLecvewDSZ2IQB1CR9e799dEcRm+HAM3Ujo0rzASzmArHPxfkh94cLXpT8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyc7OaA62wVtqojb2XnZQKkc58NugNJwZApB/eDIdldjGAUZEru
	4vuXdFzQYxSS1vTCGtiwh0aO+KSJBDwAYF9Ut9WCltHPHUNDjCRqfKdf/UPinHOfy2KRIv137oc
	OiSFd2NfyoS/GQUSGC/EkFfhiJkojNPE32A1isw0MYhb5FZhgXCdRmHZ1P5Td54gF
X-Gm-Gg: ASbGnctMwvO8VD68+ZTPkVaAi7FWHQLZXJXi5k5h7Yxk3MDpBdO1X44X1cF7SzSo9cC
	qE+QzPn6zcRoxdMxNrzzAQRKXZU3tClGsVq7UQBBxGtA0cxFOTnuugBS7vuJ4cJ+hkqwnlwI6b9
	Bxto3GpcW7Ib44/tDEu7DKIx4I2oiAkeggL7CnuRLlPf67Mmkaazt7+pjm5nFlLlJF7wsiJ9BY/
	5HmvWGI0+4uwYH3YlQG3kbK3Pk/3mb8AQCAMMSVGWZm3wxyWtO8Nj0gX331bkskCWAyzTfXbfZx
	8RXzUhjCclo5TK3nRKJLewB6iZ0pxWlYG0Tajnw3JkfQFGNjWQT1mFjhg1JCo64gRznQN+9h9FY
	=
X-Received: by 2002:a05:620a:25c8:b0:7c5:48bc:8c77 with SMTP id af79cd13be357-7c7af0f7486mr42169585a.12.1744315759709;
        Thu, 10 Apr 2025 13:09:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFF5PL1gguzYgueXqfskPS3BDB/9kZoEF+bGl5gtL5TFWlHZx9cNMm6owbgOWc0ZWNJJpiKOw==
X-Received: by 2002:a05:620a:25c8:b0:7c5:48bc:8c77 with SMTP id af79cd13be357-7c7af0f7486mr42165785a.12.1744315759322;
        Thu, 10 Apr 2025 13:09:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d238b8bsm233238e87.88.2025.04.10.13.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:09:18 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:09:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 5/9] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Message-ID: <zvc3gf7mek7u46wlcrjak3j2hihj4vfgdwpdzjhvnxxowuyvsr@hlra5bmz5ign>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-6-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410090102.20781-6-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: t1hpX2FHZo2gJVrBrAacPHp9y-aURlOH
X-Proofpoint-ORIG-GUID: t1hpX2FHZo2gJVrBrAacPHp9y-aURlOH
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f82571 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=U4jezyStByDUBB0whBUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_130921_691190_466B0E3D 
X-CRM114-Status: GOOD (  22.38  )
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

On Thu, Apr 10, 2025 at 02:30:58PM +0530, Nitin Rawat wrote:
> Simplify the qcom ufs phy driver by inlining qmp_ufs_com_init() into
> qmp_ufs_power_on(). This change removes unnecessary function calls and
> ensures that the initialization logic is directly within the power-on
> routine, maintaining the same functionality.

Which problem is this patch trying to solve?

> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
>  1 file changed, 18 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 12dad28cc1bd..2cc819089d71 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>  	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>  }
> 
> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	void __iomem *pcs = qmp->pcs;
> -	int ret;
> -
> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> -	if (ret) {
> -		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -		return ret;
> -	}
> -
> -	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> -	if (ret)
> -		goto err_disable_regulators;
> -
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> -
> -	return 0;
> -
> -err_disable_regulators:
> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -
> -	return ret;
> -}
> 
>  static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>  {
> @@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>  static int qmp_ufs_power_on(struct phy *phy)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *pcs = qmp->pcs;
>  	int ret;
> +
>  	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> 
> -	ret = qmp_ufs_com_init(qmp);
> +	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> +	if (ret)
> +		goto err_disable_regulators;
> +
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> +	return 0;
> +
> +err_disable_regulators:
> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>  	return ret;
>  }
> 
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
