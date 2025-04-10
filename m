Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A436C3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 20:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shqZZD+fGCibSIv/ZLlJULCT7b24og135AkzC+O0G/0=; b=hkOfIDMYiECzqL
	CAyyPWYCw/Np3YzE45IMQh7uQKTQwLnK0KdV4JkIK+sKTKPknonX37864cHmvWKN0p2CETAIZE68/
	jZFN3NVveunngBjVoOELTcSb0Mde/qegYkUYYPZ8uq4G0dykqjUWVOh5OpXJAdJzX+6kNTyNzCRNu
	AMZdnLPkKse1A3hxGphgLhdnT69N61TK712g2EKlKTSd+elQ53hVKn5yYrvwk94Vai8z6wDaskNi3
	DlzQkX4NtKOyUMflqeHkVpqnUGLA8Wd/oyNz+FTmLm9nKm1YeHldGByjcbOZBpKEkR5QtokVl0sdQ
	eireaIWY8u+ND5rm2N2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yFS-0000000Bkvr-3FF3;
	Thu, 10 Apr 2025 20:11:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2yCL-0000000BkXZ-3zxB
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 20:08:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AFWO7d019655
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:08:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rnGlStlfXd8+F8N9n11TDxWz
	pGUxxvJfzZwKuHYkqC4=; b=HDQ17p6dPh+RGUJog5z2ezlPMw3e6dQX/ufTuDhK
	iT6eM+mz/c3wtHRFZmR8nOw0F7oz7BivV5y5fQRcafPQvh14/rbilU03x/4o+l6s
	1UTGV3Tz3kzJeHCkv2vfcLKDVh4K2EQtaV2aLIkzkXUOqoRY32ebJZ2jZofIvDW3
	7BiqYlyXFHqPbjYluTH8rZkV/xgQGdgKYmGihFef3nwGWM+RQY3KheXsmlsImXmj
	53GEvqKUCwQISMtW5sthrqgLU2A3SI42IoKVidXRy8E6fJwh1QarQv4z1czP/xRe
	MNLbPLAvIxlpNL6oD5YBLXc/Om0Txl5rw+onAWqg3+f5lQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrrcc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 20:08:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c760637fe5so250736385a.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 13:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744315708; x=1744920508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnGlStlfXd8+F8N9n11TDxWzpGUxxvJfzZwKuHYkqC4=;
        b=gDagEVaXztZDnFeKlGUWgv8mDmWWfqtBwB6fCk/8pq95sacgB0REEZkeJff2/ZnyjL
         TCaY+NO68/jd/rSz4m/Qff615cZ7BGpyh2rlU2qdmdC73JO8pei06cogGTM5BEcFnTfP
         HJtaGEyjTmFP4GsEnO1GJWItVumm0j7frGOvU97qZpc+dB98nXGoW1uar+Y3thzD6EKQ
         Cdu22zpIcZCW6RpTjlXRn65QrMY/9pwRiHvBTElPMLz14Op8k/8qNC5BUjRw8OfkpPMY
         UANTAczVzpCD5SvQf5AgZeze1UTrztNdZM9ywPhXaQZw+wQ8Ea4IFdnRySMSqHTwOZkr
         1uvg==
X-Forwarded-Encrypted: i=1; AJvYcCXt28qshA6sJjSLchsSHlhokRNxw2KuMrAafIWiiRMNDaroTz6ZSDZm1VEs8xkVlxpXbteP/1TR9MI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIKpJmXOKsvuzYTSA2JjVx/qeDOp8qvPbn6+9KanhY7ki8vAa4
	I8EUPIp+yhs+OLfVMleUQPE5eoI6nK/vwS1lOAHvfCO/h2jYj0cDF+LBwM0TAMBrqzfdSfP3qgE
	myrr2xFFepBKpN9LDpnPLg5/O+C/Cu9rNd15TTT/z444aPLfSZD1HmBR4j08FdBIy
X-Gm-Gg: ASbGncu1GV0OO5UPikuTGRPUTKr+SHSQVmpqwi2Z/sfGQ0ZHpVh4OTJ1bXTULeqiJqE
	wikLyxteNssYIqzyRfmRgfTxFUa5TJQHM6+ZWndzmk9n+CEseAHisG2noNmcpg+W7oOWHpM2ayF
	YW/kKg0V1lsaLDoZ/axItsNKjnBdTJzLp8G0B9h5aeWvohS4p6S03XbJtP6U2TkjmBalONvCBK1
	cFdPJu6o5lGEB/sEKpHf79vxvd3feoV42oH3GI4ywAtqgeotdXIo1BujUMbHZtMzc+4LW80HE1r
	ZsGJuxopJV2fkEF02+hVySVFtclSkMAJdLL/yFiPvfThZuQ9QJUjex/CQ35dfBmcRDXr575Ue+I
	=
X-Received: by 2002:a05:620a:f15:b0:7c5:a5e9:63ee with SMTP id af79cd13be357-7c7af14de9bmr41798285a.31.1744315708175;
        Thu, 10 Apr 2025 13:08:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEogGejWVoedJ9yFHidpv0nMlyCBe0gS1l1J0WLSKR9V4AItbcj45d1D87AUWKvzSSlKxT6fg==
X-Received: by 2002:a05:620a:f15:b0:7c5:a5e9:63ee with SMTP id af79cd13be357-7c7af14de9bmr41794385a.31.1744315707854;
        Thu, 10 Apr 2025 13:08:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d239866sm234239e87.83.2025.04.10.13.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 13:08:27 -0700 (PDT)
Date: Thu, 10 Apr 2025 23:08:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Message-ID: <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410090102.20781-5-quic_nitirawa@quicinc.com>
X-Proofpoint-ORIG-GUID: Box3FT-GAKVd2Pdxg36ewYErJqntyL_-
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f8253c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=Y7cAtwDMOKh--fb0GM0A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Box3FT-GAKVd2Pdxg36ewYErJqntyL_-
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
X-CRM114-CacheID: sfid-20250410_130830_110934_4D0B15C0 
X-CRM114-Status: GOOD (  26.01  )
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

On Thu, Apr 10, 2025 at 02:30:57PM +0530, Nitin Rawat wrote:
> Refactor the UFS PHY reset handling to parse the reset logic only once
> during probe, instead of every resume.
> 
> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
> qmp_ufs_probe to avoid unnecessary parsing during resume.

How did you solve the circular dependency issue being noted below?

> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++------------
>  1 file changed, 33 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 636dc3dc3ea8..12dad28cc1bd 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1799,38 +1799,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>  static int qmp_ufs_power_on(struct phy *phy)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	int ret;
>  	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> 
> -	if (cfg->no_pcs_sw_reset) {
> -		/*
> -		 * Get UFS reset, which is delayed until now to avoid a
> -		 * circular dependency where UFS needs its PHY, but the PHY
> -		 * needs this UFS reset.
> -		 */
> -		if (!qmp->ufs_reset) {
> -			qmp->ufs_reset =
> -				devm_reset_control_get_exclusive(qmp->dev,
> -								 "ufsphy");
> -
> -			if (IS_ERR(qmp->ufs_reset)) {
> -				ret = PTR_ERR(qmp->ufs_reset);
> -				dev_err(qmp->dev,
> -					"failed to get UFS reset: %d\n",
> -					ret);
> -
> -				qmp->ufs_reset = NULL;
> -				return ret;
> -			}
> -		}
> -	}
> -
>  	ret = qmp_ufs_com_init(qmp);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> +	return ret;
>  }
> 
>  static int qmp_ufs_phy_calibrate(struct phy *phy)
> @@ -2088,6 +2061,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
>  	return 0;
>  }
> 
> +static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	int ret;
> +
> +	if (!cfg->no_pcs_sw_reset)
> +		return 0;
> +
> +	/*
> +	 * Get UFS reset, which is delayed until now to avoid a
> +	 * circular dependency where UFS needs its PHY, but the PHY
> +	 * needs this UFS reset.
> +	 */
> +	if (!qmp->ufs_reset) {
> +		qmp->ufs_reset =
> +		devm_reset_control_get_exclusive(qmp->dev, "ufsphy");

Strange indentation.

> +
> +		if (IS_ERR(qmp->ufs_reset)) {
> +			ret = PTR_ERR(qmp->ufs_reset);
> +			dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);
> +			qmp->ufs_reset = NULL;
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_ufs_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -2114,6 +2115,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> +	ret = qmp_ufs_get_phy_reset(qmp);
> +	if (ret)
> +		return ret;
> +
>  	/* Check for legacy binding with child node. */
>  	np = of_get_next_available_child(dev->of_node, NULL);
>  	if (np) {
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
