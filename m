Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ED4DCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cane9wXSmfdOh9dKyBkz4gUWBHcUpXdBKWyOXlcM4eo=; b=oPnfyoIsx+v4br
	4vPR5yzzKDR55YlUqwgAOVes7KiVim42ZDy+NWnxMM9K4xuwmQNsvLBw/4he5diHVyeUqONXru7wC
	VlSvdxzbo2Gpk40BReuchTrXTrUVcePTgwndeFldodRlSeeQnURPy78PAuoNpiqWbbBz4LB8uJt6b
	KDY1+EHaQhMq7VnoxEoYLt2MuPWLY+1XAZMascjEIunBCZbFJFySuvRe6wmRs0Xx8lsU9RV8Dvr6b
	LohVxdmmN1cs2Yb3BIRh1Pk6m5ImEU+0mnFwunOID1g2yImsZJB7j6t075cKW7gl0+ujferiBGJpf
	JYRMl823X5yHC8PdKEwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aq3-00000005C5C-3cz4;
	Thu, 25 Sep 2025 01:32:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aq0-00000005C4c-3YNO
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:32:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0oaXi018615
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HMxLUM5IWdCMDI4XHlO17eGF
	SLCDgAm/nD6cVTEGZY0=; b=eslxo5rjDla+eOEEdGfqGRTwnttf8tUIBzdpR+nn
	A4DgL5fH2+zyho6V8Zhxi/B6F39cN617tkrQ3766A6SBI0epMBeSQ1+vRbVfr2BJ
	qzIzQmIU9LyLkBwptGhUBKBxkqXIBhtc3GJAJegPIcV4/CpXI8GgRh5M115n+Ivj
	VX8YG6ukLb4r2VuY2q4If0/7/60HHLfnlYKhWfT9pBxU+C7SISEKsAsriI7Bxfje
	y1gkt67cdyVRD2TQ/0AJNVRCZWlGMY6wLkJjnU6McRw9mGTyj+U5Gt5SNS+K//bs
	l+05RwE0xGPbDZSVZBEc3LZwPHS3ZvDHs0nYuBKc6QWUXQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjymsx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:32:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d905ce4749so8850331cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:32:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758763919; x=1759368719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMxLUM5IWdCMDI4XHlO17eGFSLCDgAm/nD6cVTEGZY0=;
        b=TS+XSZW2oQmhNUxLlwvgB15pYZZXYTVJetEFJervx22Mf7Lhwcb3TeuXrbItoPOx0j
         pgJ+ehtybGMbumDKmkvSVQBERDJ22YroV8+WC7g9cJcbJKnrLxij5zmTT5qlPku1mLf0
         v4nGiuJzkl7v0Li2RxVDsusC3rn9GTg9EZqkrcpCXSca2pY0IO0XPF6QUahmpFT16KFw
         5im3+7IcxFwKKxGpxX2CCpYUvwupJASKGRsdn/tlhFw7329qXNz8lOIYj46LM/hmwXs9
         ZuLdGmYqUdbE1F8W3SnDOLtYIabdcqmzdmBIgvifUoPL1olUAsI7By4ntlad+WAlDwp2
         H3Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVSIsH/ysS1nGeWxHbqpWys5/pfT12HFcWjaFnznAL4B0t4v39q2TOnDL2CZvwgidEg8V0CG6o4PLo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu4bqeY3w9eXbSdchkPhK7HgX/mKyhrIbTF4qVKUPq1vdZ6Dbj
	XWa9wIOdy5zslQ4nb6uhKXD+4r5Qg5ejf1pkh/CjKDNXUhMlyp1OD444Sjj3g4bIT2uQRDEcsQW
	gHKl9evxz+gvUBlC50427strOQgE43Aat8gZpNJsWi94HD/5WcPPKp0kKUO5iniOYNbD+
X-Gm-Gg: ASbGnctBWJOHm2RHbAMMqs2w9aqBBTngZf4+8s1aEuWCFRNQrscuzLRyWg3/AF4avzc
	kA9LnvGFjsY2B5bGFQO7PJLYYZ9uVNlbyHfVKOTdUNEGr5QyRMQMr00qTLz/YHphTh3oFQzL9aj
	laLMXq/BzrcE6s7t3c8NhSK/hUJcDDkMyZAQnhHyVV6GQ2VUhaX4uAR4+5YFblShMHi0s1va4iA
	5L1FHovQdH/zsIiNoELCHloCIVmcK60UvMO/yOFmNqn4PjGCLypZ4npoe0D1/xf5SH9Si7+z8Nn
	wMogu/GWrhA53quT8p+P6sQIwESWtEk8OSOwXrTlcM6SYG4i8N2eJ+IfaIKLIxEMEy2nEmn1z1a
	wP1PE89vWjk8ENT1zejZESyMwIcXXl9z2aoupfDrXxi1Aqe/qhaRu
X-Received: by 2002:a05:622a:347:b0:4d7:9039:2e8b with SMTP id d75a77b69052e-4da4c77c44amr22446131cf.72.1758763918661;
        Wed, 24 Sep 2025 18:31:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLXkB79ZdwIIrxHpR8mHmz6lONhQNuhy+mvf3W6YwEGNNidGZE2ggTMtevzJ98w35Q6vuNCg==
X-Received: by 2002:a05:622a:347:b0:4d7:9039:2e8b with SMTP id d75a77b69052e-4da4c77c44amr22445871cf.72.1758763918237;
        Wed, 24 Sep 2025 18:31:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583171e50d3sm196333e87.139.2025.09.24.18.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:31:56 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:31:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/10] phy: qualcomm: qmp-usb: Add support for Glymur
 USB UNI PHY
Message-ID: <fo4jg2eewahc7iahfk3kdzztpcami2wic2kocgp6m2c5nzb3ma@idfpo4frh3eb>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-9-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-9-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VNEbVZhLwJSo-SLEDcjD2MMz1EZ0wzI8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX7m5ettdUrc/q
 dAXYysruTzqycZjfrwMFPDKNp4lmwNIoMFPX3/JzVZJLRfD6PjWlVXjlOE8RZ+wfV0dQ1trhAgl
 Z7Ois+0vM9OpOzUYNCrXoKefAu/AqYTmZKBlG5aY/2TXAgq/Sj4vdavrtgE9cswHe9IriB6deD9
 J/j1XSTaWhXkf+5qz9irIzADfxeY4R8cnXxt6aFzM5pI9ikCMfW78RQKKyqOuitRisuXakpXnsa
 +n/MDo4xPgJeqAlfe5hzfHS6IrEIKuk/fvm43Wihk+VZIeQusVrVmDnWxIBRssCojPe5C95FDCM
 QZ9W5Y8ec3ZqAk3XqPNq0HQhUdWupw+bnfxtk/jHh1TSKvO6aiokj3yXPoaDG2eI7+6LYO6SsSr
 B1Zkc6LA
X-Proofpoint-GUID: VNEbVZhLwJSo-SLEDcjD2MMz1EZ0wzI8
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d49b90 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NGXOFnXZFdVYdcUjdRcA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_183200_888466_30D6ECC8 
X-CRM114-Status: GOOD (  21.04  )
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

On Wed, Sep 24, 2025 at 05:52:26PM -0700, Wesley Cheng wrote:
> Glymur contains a USB multiport controller which supports a QMP UNI PHY.
> These ports do not have typeC capability, so it needs to be differentiated
> in this manner.  Update the QMP PHY sequence required to bring up the UNI
> PHY for Glymur.  The UNI PHY follows mostly the same register field
> definitions as previous SoCs.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index ed646a7e705b..50e31610ce20 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -28,6 +28,7 @@
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v6.h"
>  #include "phy-qcom-qmp-pcs-usb-v7.h"
> +#include "phy-qcom-qmp-pcs-usb-v8.h"
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
> @@ -1240,6 +1241,139 @@ static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_pcs_usb_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
>  };
>  
> +static const struct qmp_phy_init_tbl glymur_usb3_uniphy_serdes_tbl[] = {

Please, keep the file sorted.

> +	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0xc0),

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
