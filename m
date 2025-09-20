Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF610CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMfUnQlBWjkpWrqvHMCkzhuUP5kdxeprCH8PkSYLdTo=; b=f8Aw4z9etIt5xU
	lepOoHyxx5L7mzeEHwuVn9GjZ4CaaMcYuwcrShYFKPSSAII2T7jbZqwansU6Fojm7QnszOGiYotwa
	ibpOYQlo70ybCcDLcfJ3kyYd3NUIn1aVQPn39qiHSNtMtIZPEy/RT3ey/k0OM7Q4cFyUF/WqM0keY
	YMB2W8xT/LynN2TctwsKahI2otL2jEC5s0R8m7zx6gzpKMOQdju9PhgHY0t0c5GKzRrv0QMTjTc5N
	snTVKGFfK7QbWvjtvuHKCpkGGA7hwBTKT3eYGkpFJ/gIZR0dpUlOUrawDIZK1qnKISqHBHVEo3vcU
	abbM2+mEgdbkC9IyOLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzjG-00000005YZ4-1fzn;
	Sat, 20 Sep 2025 15:42:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzjD-00000005YYe-3rDS
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:42:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K4m7RZ015883
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ySgCIkEcT6RN//nbWYzuq5eP
	Gh9GHy2GH+slUyUPPTc=; b=aD0Ny0nCLmWMWLln8dhigVD2p98ZjnM7Hhjiy7Io
	OSzpOmF/9xFlnw6RgBm8V7VJsgtb1lY97wWsSaMOYIxgtInXVyUGiapOf2SpSKlN
	CrSnJqG3MwcNHv1tw25TBP3PJNayf95X2XeAUVgzdTA40POrr/MfI9TQzg28wrXH
	uzx6AryKBEzq7YLb1FLqPkUkxdsJHsVbGredFeKi20WlW+Ojl8mjeGOpqHjIrtk3
	Si79Fs3QH/va57PgWoGLIColF0Qr+RkMrSQIRBWnLD7NQWW3Ph7iazPI7GyFRdHu
	VFn1G3do5z/mE8j64iemUdCMxFE5OfG5JcGUO8safeWVSw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nj8rsc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:42:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b4980c96c3so111924391cf.1
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758382942; x=1758987742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySgCIkEcT6RN//nbWYzuq5ePGh9GHy2GH+slUyUPPTc=;
        b=C18dkRyZDLhZBYVItrxyPo0T/uQ85SbilBxHjDI9BBT2e0u2yLAIX8kQvR95v0xOxw
         cxF8Va0FcRG6ixtNUoC4Z7pqy10STvdQi1cUPeZLxytJqpxwySZPcNbs1R0XRx8EQcwV
         deJuBIhvlxWTmpwhoR4PILKPx4D0ZAykl/SUc2A/hIKFaxxDNjlJyH6DpHDyImJGnuol
         P2VN7ZLYZqQKbK2gDtC4GHeIAIYyYw/fEkC7coCWrlbhffosAg2NNzhBimjXUA2wvc2w
         vNxQojHBDaO7y9kIKmnQRp8ndV53SjBQ8ptF+aKd2NeUQoaPkwpEaXEKfY9L8uQpUeVT
         FLVg==
X-Forwarded-Encrypted: i=1; AJvYcCXBMk+U/lybzChpZl0TGqrGm/LShc1UyGsUpgPWN2iEtCApxYFrVHHWqt4b9FTzgVoe9OEOp42tg3E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxySygRgMW0KXkrELdkM1LPd8G9fOeC1sDfgKs4iqTXuuHIPCPn
	Bqo/6qS+ky+jRqvyiQd1Wkj/585RWGw3GZKw2wxP4cxfbBokAeuqo4TOp/8Y4O6zq5DwQKUnN2d
	vDs92K2X6oQ+Br7KjvSsI7TOKHUj6gKo4efStNLflTGOQk3MMEuwtPBcm3XLW/L7/hpuQ
X-Gm-Gg: ASbGncvHTmaNjmOVXXsqkM2yLeVXBovwVAD/fQio8iXG5mWk/nH5Q2IX6GdICXzPj4T
	pj5dYZdK+7nldANNyWAMn7+9pkwuvaMPsNGvenYnLZGG6yoGnfnhcca2LmxZPaM9TJ+JjEynv2w
	MFBLoRQpRBqD+ebRS/6+Akh/ncmYUsYHiU5P6vXc7q8HnIHnKMr14cME6iKbr6/HlfNR9PXw/PQ
	ekSZpFUyKKpPdI3JniWSoM5Baf/U2YmmdNWOhS2g1B6L6zwYgAB5KggsYa9g9dgqtapUdEPASAT
	RpHgtvK9shwn9YvsY3V6hW/4N9NaCPHvx3wn22uHDE2vh5DAOByRWgYvYtq3tlRmsiChVfVV1W4
	O/Zr/gRSemVHTPADdBGL+2LVgA0vfpKVYiMUTTzn0ncL7edOlcur4
X-Received: by 2002:a05:622a:34b:b0:4b7:9b8f:77f5 with SMTP id d75a77b69052e-4c0735e1ba6mr76977411cf.74.1758382941859;
        Sat, 20 Sep 2025 08:42:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa7N3uIqh65GWelgeqk16thcj0MeA27XSvrxJ5FJEhQq0QoxcPVOcMSSN3aUJTlhCRSHqxDA==
X-Received: by 2002:a05:622a:34b:b0:4b7:9b8f:77f5 with SMTP id d75a77b69052e-4c0735e1ba6mr76977211cf.74.1758382941370;
        Sat, 20 Sep 2025 08:42:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f4479fsm2017952e87.12.2025.09.20.08.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:42:20 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:42:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Message-ID: <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dZ6A3WXe c=1 sm=1 tr=0 ts=68cecb5f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GYK7A1noeA1yCKcWlPMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: OQqrRBfACkbqv-dq6ykBm26NOsHlg-Vt
X-Proofpoint-GUID: OQqrRBfACkbqv-dq6ykBm26NOsHlg-Vt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MyBTYWx0ZWRfX65zU1qJZ7eD1
 b/0szP0JDcc7uK/XqH697JzSbHbK4E2Fik4Wz+daA4Z7zbb3wpQq8/JG/ZCrNk5RdEZyBKo9U4b
 zNKcOBpADxTTzOJT9Zbc4Pz1QWLwDm5Fq16KQe5e+zzSadyASZO85Wrlh7qk15hqTfWCAYDb6h4
 vybvkhIAhYifWMOY+Cu4N+ASz3zGvVJzTeF387uB7gmbtf7lCVyaEhgzDbHMjswRonVWorY5JgL
 Ww1tAeKdCb/Q843LDm1sJGOw3qcw72NSIdcYAOoSUMJVPNicaU3ITTOSsZ6FI3AmlMyy1mijUoA
 5xsJAoYOFYKTznJJzluzxgFB4AaSzHneTpLfM/E+0fFojSN+nUwfPrPEpNCMdDwUYZLHs0dk+is
 Z8cf53Zd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_084223_972991_633EA73D 
X-CRM114-Status: GOOD (  22.02  )
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

On Fri, Sep 19, 2025 at 08:21:08PM -0700, Wesley Cheng wrote:
> Change the notation of making the USB repeater a required DT parameter.
> Issues were seen when supporting USB2 across different form
> factor/platforms, which led to enumeration issues due to improper eUSB2
> repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
> repeaters, it can utilize repeater settings done in the bootloader,
> which cover a wider range of platforms.

No, please don't depend on the bootloader settings. Instead we need to
implement proper prgramming / tuning for eUSB2 repeaters

> 
> For other repeater vendors outside of the SMB/QC PMICs the repeater
> should be defined and managed within the kernel.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index f4355d38aad9..b8ddadf78c53 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(phy->phy, phy);
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
