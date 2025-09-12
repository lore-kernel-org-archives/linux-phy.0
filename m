Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5EA0CAC594
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rI9eZ4pcsdvr/6nLuvAV6xc59yqx+/Im1t/qzAk+Cf8=; b=u+MBeR2nuCoF0S
	cMgD2xnvUX1DgWgllAGSVu0ef3h8Lzl7c1aalaXllpa4WNauJ1QP1B2up5y02/AXZPdEX9ACrV13V
	sBoC3AzJ40gBGBWPCi4ojzhQAtFjZqYMYTUcmxSo4QpQXKzgjYq7eMvZFP4Wnof4HMGFWJ2GdDQFT
	uZzu0/QWtSNt3l8UeJcz1hZxMEJoWP381rNLOPizh56pPrh3IoFk7YHKdI8q0eHC/Hbkwh4KVV8UV
	UGQeewDiHwzyzmLH8pUcZdkE66wrxfj+I132BPNWy+YNkpTkANDYh33x9GG+opwlrCrZY3qeP3CaK
	W5oyoXfQbPD4WQqtQqaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux13m-00000008bWY-250k;
	Fri, 12 Sep 2025 10:31:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux13k-00000008bW5-3zH1
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:31:18 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDMH018555
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QYQVjSVGI7fSyP5NPLcxC0Gn
	NWMprT3G/Z6o5y804gQ=; b=Ez1cDXbSvnGemg8472pZ8bhDQSW/4Ft8Q83R/893
	2LMiB8BhNhqVTzcLqTFOdPPzOGEBduIjUcmertrhXjUEwFazZ8uDN72wdBV17WVQ
	N1IP3xd4EzB6oLWkiiA0uY9D3WlGRnKQhXnOmECOHgeQFIT9qcKZ5aoBLm3xiFcK
	D+d1nyaUn8T/SNIOoVZO6Dv7YJUi2wuXu+p8yn5Ui7LmKx7tNTArTDBp0+OfU3kj
	emw5YhBiJ+Oo3Kqik7N5C5FR1Nvb/HHQFGiG2jJRmnOVbC5aTQJNh/VPpp7fJ2K5
	3WK/a16Y6uK50vMN5E1UFSsc/z6PliVOMaryGGIDqb4UDA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ak65t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:31:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5fbf0388eso25100271cf.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:31:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673075; x=1758277875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QYQVjSVGI7fSyP5NPLcxC0GnNWMprT3G/Z6o5y804gQ=;
        b=czDnNfbD5z8uTxtk1h/F2J9BDocshCOZVXig2dGqCfAA25VplcTc3k6IKp08mCtm24
         +bh5giJG+AaCDAZlrwH0r5inDf3B3fHHcRN578SJI/w3p6S8Jgb1ckdAmB7lHJR8fhz6
         Dts6il2F/0VwLpyw8wab+smIBdgD3Bfr6gnq5Lq0jFWImxwM9DFjN18eRRJd27/ZfkQr
         vQyHn+ADMLSTORpu3uMjxMVH/UvaqD65jErvE/xdz1VoiS7lqnoUnuWn2/ZDPaJWAigj
         zwpZgCDBuVbTn+8YL92aTB4QfyGj+Qc0PpP/ZrntZBQh+XBPXldhQD00oCT2B2Q7x4wu
         8SeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJir/CTezmgve3H0Du2DPpQP9WQm1JbM+ccen6k7Ca+ObHMMsQfsG9f8evKYjjEgw/TOb+XqRXO38=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/Ub1SLitCkGeRkw0DP/2euAdsNWr6GvfHFqZOchFEspm8LFon
	OgTa7aAdP32d0Y3KjOd0/bpxiPvF2gt6yDur228TQfQzYmzEeUGx5NzQKYFgf2Mxq1O6+bnE7AH
	OBCnxmOqrsN4+xRWf9Gcuiw6Sztcx26BHsX2da9XZRE8Kvr4HS2yTiIczg7oO3/WnqGes
X-Gm-Gg: ASbGncsApwST1/DS/PcBpXYJbWaJo1evscex8FFbhDbXkTfeGOGbQWhHpYFOMajjgx4
	1ydjlSMvUN8FaNWbnMxGbtbHQ2ksAO+h17vEC7MQ+F85Qe6va9IuKNm1t5jZE8fXAx+oK8h/oXl
	OS2cX6dC6yNPc7QRGKsOyDqIjJR8M59d2vdDpV35zKXKlx0Q6iHzge9WZ2qzyfPvtvEo3zkL6Ux
	xJ+o3x3YETxwXjEHNAHi35KzMqjsWhF9L7Z3vAnK9pIAVB0VhoCJ2bZ5aIqvu4g4Zgslf7H7wTc
	rKC3PyEeomk7E9zwsKAficZYR62aipInbwiDpMIRuFMvrzrANCv5Rvu5nbXnBwYw+SALDM1XOBK
	XMWQDxPg9wcv4hlVQyht2lk/03oslOPHn7sZGP/bTcQWjTtz1hPs2
X-Received: by 2002:a05:622a:11:b0:4b4:9773:5866 with SMTP id d75a77b69052e-4b77d0c8726mr25974621cf.65.1757673074904;
        Fri, 12 Sep 2025 03:31:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlmYG3GvVCPpgbJA4niCY20ubvFQsgSIGszF/TZGTRPQ9P7ipXCexaQtPdOTizRtrNWqVY8g==
X-Received: by 2002:a05:622a:11:b0:4b4:9773:5866 with SMTP id d75a77b69052e-4b77d0c8726mr25973891cf.65.1757673074110;
        Fri, 12 Sep 2025 03:31:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a3464bsm1032362e87.139.2025.09.12.03.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:31:13 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:31:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 10/13] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <buob3axokndjfuwvv5j5zee4e66tf7t4ficz6fend5yadw4j6e@czus6n6zfor7>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3f674 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tOlg4r5JIpINhLxCU78A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 9iilDTzR4_fqkoBxa2IJFPsbe-1uTppi
X-Proofpoint-ORIG-GUID: 9iilDTzR4_fqkoBxa2IJFPsbe-1uTppi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX9YHA8gfBSFwj
 gqyrUiDDrEgELxh+erc+R5JX1raEJthQedxThpGip32BoxOp6+vHPx0GVakpHaUEUwGX34l/Q8J
 LyZaRKO4nqcy6Cz/j3NcGfKa09i2ctjyjBeCxqYK0U6tlA61nK0c7WBUk/4ExOkX2bc6iLSWUnx
 eW/oiR5hlqxXxMmn1I/PcMDeIe/mIWV4FKgusbd7Pq64sb1I4hsqk1hmzV+eYAwSWVMVZxDz+Na
 rug7xfTdTy1zoCWIcxcqkIOEC+b3DKzSOIPJ9pk9lrmbb8/0I+mP2SwqAquOTXYzzTufvwXtVbS
 /J/bjYNIcMriRR+x6jcHj6pdiyJpfYDNB9VfRn3zdQys6CXaYYU8KFPiBPsdSiE9H8Sto7e+r4d
 iuqfnXwh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_033116_999801_9B511F65 
X-CRM114-Status: GOOD (  21.42  )
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

On Thu, Sep 11, 2025 at 10:55:07PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 192 ++++++++++++++++++++++++++++++-
>  1 file changed, 191 insertions(+), 1 deletion(-)
> 
> @@ -1669,6 +1832,23 @@ static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
>  	return 0;
>  }
>  
> +static struct phy *qmp_usbc_phy_xlate(struct device *dev, const struct of_phandle_args *args)
> +{
> +	struct qmp_usbc *qmp = dev_get_drvdata(dev);
> +
> +	if (args->args_count == 0)
> +		return qmp->usb_phy;
> +
> +	switch (args->args[0]) {
> +	case QMP_USB43DP_USB3_PHY:
> +		return qmp->usb_phy;
> +	case QMP_USB43DP_DP_PHY:
> +		return qmp->dp_phy;

return qmp->dp_phy ?: ERR_PTR(-ENODEV);

We are not expected to return NULL here (and dp_phy can be NULL).

> +	}
> +
> +	return ERR_PTR(-EINVAL);
> +}
> +
>  static int qmp_usbc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1743,9 +1923,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(qmp->usb_phy, qmp);
>  
> +	if (qmp->dp_serdes != 0) {
> +		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
> +		if (IS_ERR(qmp->dp_phy)) {
> +			ret = PTR_ERR(qmp->dp_phy);
> +			dev_err(dev, "failed to create PHY: %d\n", ret);
> +			goto err_node_put;
> +		}
> +		phy_set_drvdata(qmp->dp_phy, qmp);
> +	}
> +
>  	of_node_put(np);
>  
> -	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
>  
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  
> 
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
