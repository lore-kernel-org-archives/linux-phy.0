Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F412CAC5A8
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1AMwyUOr34KD+phv7ki8AEX64OG970Jk3+yn6Mf9Sg=; b=pB/qQWpUQr50Ej
	YeiKQ6e2BM25ob5wjfva2rWD6Vs4V0jMRu6aTpeMrjPDd+QTgmY0Oy40quRmuZkjFxAjU017OOjXr
	mCunGUEd3HVYaBQbVEiVMdaG/ndMdSZxKH/F3JUzTln8w2K5qBh0FyI4zJP69VgcSWHfs2GSFi9No
	cng+5+jF09PP5Ggr5Te/VtqHXyt0VMo7cnLfP7IuL/KcelzKgu7XIKqIIV3poEsC4yaMUBWldNOkY
	Oio3A6pW5xGB9TqQcMM8NZLbFq2FRIIxjS05PV5X24a03yZK/X2KdW1L5RtlnxMKWlgioz8pi8nTf
	Ahzza8hjA4gXnaNDr5Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg3R-00000003nZg-36vz;
	Fri, 19 Sep 2025 18:41:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg3P-00000003nYc-0U1f
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:41:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JHWqLG028087
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:41:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i7CxFXs3E+TxXdjR6pU++0nh
	zSKDiXUs6/X+r4T9DOg=; b=blqNXqNap4RdDUrGJHaDIHahSPTcmOFjAAK+36Di
	IhcA+6lelkrQOZIVWpJSuXMeRHzdHh/A85okxRiUZtD/Puq0p0o1Yl9sFuPKUK3S
	GNpN8JmcC0KqZyKFIkCGuQkKMeGpqo+0jIGMOh4UqHFF8icYmbfvlttCkDjGuLFJ
	5o+m737uE+ltICx5CWLeNg1rcAzxN12kRS1XVv7MD0EYOE/4Su0r6i3TCEQf6XIW
	yPJ2GD8bmI49TxO1khkl/iLaIwqip/E3oZfAVS0rqEuAjU6wOFRLCI4EKfiE4irS
	AG8X9GKy5YRMaiXaJVO0WNnRG4/C0yhxFIBUmET0gFBhIg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jhggy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:41:53 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b345aff439so47963251cf.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307313; x=1758912113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i7CxFXs3E+TxXdjR6pU++0nhzSKDiXUs6/X+r4T9DOg=;
        b=IyWGqm/j8Th4wy6LcT97jYZLi9bgzpdhQs9R1BX74LYASj3SsT+MD3Tt8mMhD3VrOm
         qSW792eLvdfFFO7HR/iTlXQzT1qvg1V80C+9N5WlFO/apWa1p6j2WjxjWsOvkzHHWGbW
         7MiNZ9E6CJMareeDhAynjkHhKCjDzwVZc3JGEjjCF4yzv9u+YHfD3iB9YNM9nZbwukOt
         VpwwfCREtvv7gdUA9N4ob3mVvxgOAKFlZnpK9/l0y1XPaFySrCV7VSkQhuXOApaewO5D
         PUNPgMCSVIaTu+cUxNAPoENbNr5nigiY4GN1PWf6MaG3d9IQFDgis67ABJcRKaQcPSe1
         MS5w==
X-Forwarded-Encrypted: i=1; AJvYcCWLzooBdVKTEwXDy2FoG7K8eaWSG3TWHZUooYd/vMvqTTfLKbekFPelZDOKWg4CY30+1Une/Lmvxlw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx15oBIXjPJQ7GGcQpmho1jvLONswW2ai/Q+6Q8AW3QCe5sgas
	38oDk2UdeKfDymHO46DjANrTGXTR4nUNKrsMi+aptAsEmFdh2HiLZ44BXCxGeZM/3GssrUe0iuj
	qRjH7Y2ZA1vfMjyF7Ghg+oXLwxYbjJ5GfennlVDa5mTbFKwzy07ZAlHPHB9kYuPAFrR7R
X-Gm-Gg: ASbGncs1B0Y6+tzgCDf0MvmSZnFrIznH6D2SIiVx2FxT/A6+AgjzIt9GIv9G5PSCcUs
	/7TghzAOG5zaPbRpAU9h/DPwJXhfl3eD+/6UenBFWbalRqcuOs/hnudfL0yHUskwmlnifXCo/2r
	71cQx7exO0Mo64U16y7TIk9coAtiiT/+8yA3NZi+gq0zOJtftoi/KxfMMXQZRaPG+mP8wkEp5fr
	QU36fQG+tdg5SeIDV6t+gmkGnLdVRk/APwsaSEUxx3tVbUpcPtBwEr/OrkDAz94QLQ+H+ppBSRh
	pTW4qYEdLPU4AwDnzImM+oboSw3wLW4lrFP1MKj8Hi+Hzf0G8wC8iUXKmXhFevjk/wyT6n870Ax
	ohlj4yIDGz3ejTNHiM00dO/r0BUQ8DgDn43bftjRRVjGWselr1mhv
X-Received: by 2002:a05:622a:491:b0:4b6:2336:7005 with SMTP id d75a77b69052e-4c06d6828d5mr48024631cf.19.1758307312808;
        Fri, 19 Sep 2025 11:41:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+jXszKO5APDEximPKgrAQZzyc5+8giT/WjH1lhXJNUczhHvAVEcXJ87AWsBXaMadhHq3byQ==
X-Received: by 2002:a05:622a:491:b0:4b6:2336:7005 with SMTP id d75a77b69052e-4c06d6828d5mr48024191cf.19.1758307312164;
        Fri, 19 Sep 2025 11:41:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a99e9024sm13738501fa.49.2025.09.19.11.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:41:51 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:41:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: -Nj_l_gFe9KIAGAOwi8d-WPjYgWruBUh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX2H0D1zrh/x2u
 V3CW46SMZtm/SVIPhjz/9bENl+Uag1ICbd/w0qhMZ0fmcjXXqiqXWXtO2MEdYW9FDS3YI+zX7VL
 QWqCcEVLfnsuQVIXy104LtLBE+z3MbTb0/Mr9gNsS+pfhG8w8RbU82Rx/D2rV1ZIcUd/z5vQqMx
 C9orwZZ8aK9P2GhedJQoZfD4dX+riA9bW7YDMR/E/12xRV1W7aTH7HMbW+4ptqy/+O+Tape4eEA
 ADaUV8YAk0ZJC1TTUp13/0Q2RfZhNBq8P5acAJEmm4SdormzzqaftaFa1ieR2Zq+0WD0HRDSOb3
 egDeoB5kHx0jvnDbNx+vkfEe5kkhokBSZdKR2DbgQrL7wG/1D1ULssT1yxC0ldZz4oojEXOimZt
 3eHRlOU9
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cda3f1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XgMPAK_adSAUw0pB5X0A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: -Nj_l_gFe9KIAGAOwi8d-WPjYgWruBUh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_114155_272219_5E34129E 
X-CRM114-Status: GOOD (  16.17  )
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

On Fri, Sep 19, 2025 at 10:24:29PM +0800, Xiangxu Yin wrote:
> Add QCS615-specific configuration for USB/DP PHY, including DP init
> routines, voltage swing tables, and platform data. Add compatible
> "qcs615-qmp-usb3-dp-phy".
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 395 +++++++++++++++++++++++++++++++
>  1 file changed, 395 insertions(+)
> 
> +
> +	writel(0x3f, qmp->dp_tx + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx + QSERDES_V2_TX_TX_POL_INV);
> +	writel(0x3f, qmp->dp_tx2 + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> +	writel(0x10, qmp->dp_tx2 + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V2_TX_TX_POL_INV);

Are you sure that these don't need to be adjusted based on
qmp->orientation or selected lanes count?

In fact... I don't see orientation handling for DP at all. Don't we need
it?

> +
> +	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> +			       status,
> +			       ((status & BIT(1)) > 0),
> +			       500,
> +			       10000)){
> +		dev_err(qmp->dev, "PHY_READY not ready\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
