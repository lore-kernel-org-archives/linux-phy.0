Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A055CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dr9JzqlL2SjqRDiihV7c3uIRMM7biK4JaaE2KZw/sI=; b=sptRmWajt7V1uN
	MsjdpJgKqKRjjAJIEi8ybTpuN76dtORltS44iO2dF6ZN3Ky3ktoZDObXEo8vQBGVvKX3ewGovykFM
	+yRAbTQwJYH3z+s7lncbiB6DGbXmMLevBMBVph4ViNVlb65tMmtqIR3+K1+7l6PQ4imEFFUPQhggV
	McqHcBi1xl5JRRTHXwALIQGOTkcRVag5ZXh8JwGE71RGiEMNprMoGhqXeFnF5Wyeo+kxq/94kcdAE
	vgXy2/uQVFBx6TWQe/m2EIc4XPr6f0IJsgahIncCgaZopoGo3VUtYv62kIMJY9fBmUtmf/rDvu1m7
	Esh8khTiZxwz6zKXIlaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1anT-00000005Boh-3uEd;
	Thu, 25 Sep 2025 01:29:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1anR-00000005BoE-06BG
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:29:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0PxKo025158
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nuNK7T5DMoCfeLehWypj1GbI
	p838IekSq4r6kPWaJsw=; b=HtUpD4aHVrML9VGB5a4rv4i8ZcW+b6IyZ+IJoRZ7
	IGi/4uDN9wJoQ+BSsjF1iFvLWPVPvVZAgRBOpDNrHRphXviBI9eB9XlfBNpyIAnH
	WA5cDwkBTU9JoS5dFHGOmtpTuUOUII1Q4tWHwwp7b/pJBKUPjrKmigO6+LsE10iA
	V3vZfaQvEnl50ZNpECdrkoOVXuMFCaKS3FCM0zbpShCk1jhLZTIkeZajV1n2i1we
	wrU78ckyvcJiVdlxA3ymKSSex4lnTUEyP7MHPhZVygJj6TfJW4FpAkew25+pgo0X
	soqnrZ0/bQJmwxYWZUkarslyU1hjJjFTNuJ6y7KHH5kmmg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv16ar8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:29:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4bf85835856so13941381cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:29:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758763759; x=1759368559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nuNK7T5DMoCfeLehWypj1GbIp838IekSq4r6kPWaJsw=;
        b=aW+VpI4/rP1TXsEXKaIJHVnnYcMmOD4UGyGQpV9pyMnEeD0BWl3jTAH9Vywbshy5MD
         ykyhiDibRaKurb42isYu5USL+4SIl+wjntQMJRhjUkvDkvzLGt5mjSTyBxKoDU2Bvkj+
         G0HfHc81o3w09idxGYD2uVZjjL3Sc3xEl9ADhWxaTfOf7F3WS7Zlm3p5mBgUJFztQhp0
         AyN8e86lzpQOMwtSKVz9R+aJtyU55gD9ldrLkLclUjemisJUBdKxfqYVwyk6tWILWBdr
         of9qxNeC2JpR5W8b689u5VUM5fp5vYHMD2UuWtj/oM/zKDojOO7wjcCYN6Dw+YCNxAVB
         fQ+g==
X-Forwarded-Encrypted: i=1; AJvYcCX+vqH5VnUGgzH5/H+i1k6a6XnadAOWXrC35NWD3IzBcSZSk2qSRQsQu0uZ+FLIo5t6hUKbWKFw99k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxU+uZGDYB9Et3JPT1LdlMXj9O1+0AHa9uRN1gcNITAuCG3AMZN
	Uqx/p/98SPjVInaTb88XTsSuxmPCmz5C5TdOZ6swd+iJCRj4PJkPCOfk7bkMhTJ7RTpuR8xPRSr
	3PyOY7cwSNmTtAgFFJWedVMEgBMP+1Ok5dOmaNRjbR21OyyGkK0oR7OOU9+LqB6GjCdRE
X-Gm-Gg: ASbGncs0GigQfVRua9nAwUex6wmleWUaze/x3MkoGKPop/dCozY98uYmzsowhCpUjBK
	u/xtkmFPZBjhTjHRhyY4HTbJWJ6chMcwF3YGI+6Z/K798PQExjpK/f8jr7W1ZCb5vePl0Ra/zC1
	e6/FgTWfSulNMS3NMtUrow4KPgs0XLv6WSHiHsVn3vDYdLR9GaGc73XtWNUTwKXtGNbrQRwkTbn
	fNfoe75gBqgLwHDgri1FfrZglLlYA8vWvKc0e/Cleztk8D7djXCZVIR0q24ypevdYAwopU6NCAb
	u/L1TEHcItNAAyYOgyN6BibXmIbvQQ3XrqsczB5NFTTseTPF2hMTvHrm2M6GT+6YNwNK0XxYAbK
	f9C+Jk/Esrzwtls9NcHSJn87R7Ajg3rxw3xJuCil+jEpweSccfpH4
X-Received: by 2002:ac8:5e4f:0:b0:4b6:3d70:8810 with SMTP id d75a77b69052e-4dacd244d25mr11227261cf.22.1758763758897;
        Wed, 24 Sep 2025 18:29:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbXt6dQDxjOzbNg9IrWf3qsSEdLVIcZtX7vGPsgYxRkHkV+RizhrTs9YlBAGqCYeg/uaivtA==
X-Received: by 2002:ac8:5e4f:0:b0:4b6:3d70:8810 with SMTP id d75a77b69052e-4dacd244d25mr11226981cf.22.1758763758390;
        Wed, 24 Sep 2025 18:29:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7fe8750sm1814621fa.66.2025.09.24.18.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:29:16 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:29:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Elson Roy Serrao <quic_eserrao@quicinc.com>
Subject: Re: [PATCH v2 06/10] phy: qualcomm: Update the QMP clamp register
 for V6
Message-ID: <v42k6kmpzcq6aa2c3bgaga3xf47ucg6q4qduwg7w6v6672s2eb@hfpwd73pv6gq>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-7-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-7-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: J5hqyRJAkRtseeuGY1otTeehAZV7RzXh
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d49aef cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=IuB_klkJ-YW1I7EZuIgA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX0S7c4z8r7Xjc
 XY4ji0jSG7HAuV9jZG7jrUKS+9YmPyX3+awXBToB3gWmR/6Q5IH+EDL5oVF0ipMvCE7m6UofEh0
 nUVID0KIniSuamOO5/Yn2LLWZ6bodAAo7LX53oqPUXexc+TfpS80KrNMAkCQ9W4IUZkG5Xif4aL
 IoKTnsFwhh4ruTLyTVcfL6BqvE9i+fq4JBFTAskJr37H5hi1RCWRWdN8cbNlJKpsdC3zee8kl1X
 02wTgpuz9R33wEt98OU47kYZsyNUS8liduNca965r6nnJMKjtDCaWekTMa7b0PlSveANsQi8p/T
 Kp01OIWTrxn9mklHR4oqESsWo6OX/Eyu759fxpZlMHknB9HR9GTQz+OQlSjjoV+IqlzN4Mk+vjM
 oNQD4/da
X-Proofpoint-ORIG-GUID: J5hqyRJAkRtseeuGY1otTeehAZV7RzXh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_182921_183145_329B234C 
X-CRM114-Status: GOOD (  24.48  )
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

On Wed, Sep 24, 2025 at 05:52:24PM -0700, Wesley Cheng wrote:
> QMP combo phy V6 and above use the clamp register from the PCS always on
> (AON) address space.  Update the driver accordingly.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 38 ++++++++++++++++++++---
>  1 file changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7b5af30f1d02..1caa1fb6a8c7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -29,7 +29,10 @@
>  #include "phy-qcom-qmp-common.h"
>  
>  #include "phy-qcom-qmp.h"
> +#include "phy-qcom-qmp-pcs-aon-v6.h"
>  #include "phy-qcom-qmp-pcs-misc-v3.h"
> +#include "phy-qcom-qmp-pcs-misc-v4.h"
> +#include "phy-qcom-qmp-pcs-misc-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v4.h"
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v6.h"
> @@ -78,6 +81,7 @@ enum qphy_reg_layout {
>  	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
>  	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
>  	QPHY_PCS_POWER_DOWN_CONTROL,
> +	QPHY_PCS_CLAMP_ENABLE,
>  
>  	QPHY_COM_RESETSM_CNTRL,
>  	QPHY_COM_C_READY_STATUS,
> @@ -105,6 +109,8 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
>  	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
>  
> +	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
> +
>  	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
>  	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
>  	[QPHY_COM_CMN_STATUS]		= QSERDES_V3_COM_CMN_STATUS,
> @@ -130,6 +136,8 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
>  	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>  
> +	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
> +
>  	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
>  	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
>  	[QPHY_COM_CMN_STATUS]		= QSERDES_V4_COM_CMN_STATUS,
> @@ -155,6 +163,8 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
>  	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>  
> +	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_MISC_CLAMP_ENABLE,

Not defined

> +
>  	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
>  	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
>  	[QPHY_COM_CMN_STATUS]		= QSERDES_V5_COM_CMN_STATUS,
> @@ -180,6 +190,8 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
>  	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>  
> +	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,

Not defined

> +
>  	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
>  	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
>  	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> @@ -205,6 +217,8 @@ static const unsigned int qmp_v6_n4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
>  	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>  
> +	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
> +
>  	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
>  	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
>  	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> @@ -1755,6 +1769,7 @@ struct qmp_combo_offsets {
>  	u16 usb3_serdes;
>  	u16 usb3_pcs_misc;
>  	u16 usb3_pcs;
> +	u16 usb3_pcs_aon;
>  	u16 usb3_pcs_usb;
>  	u16 dp_serdes;
>  	u16 dp_txa;
> @@ -1836,6 +1851,7 @@ struct qmp_combo {
>  	void __iomem *tx2;
>  	void __iomem *rx2;
>  	void __iomem *pcs_misc;
> +	void __iomem *pcs_aon;
>  	void __iomem *pcs_usb;
>  
>  	void __iomem *dp_serdes;
> @@ -1960,6 +1976,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
>  	.usb3_serdes	= 0x1000,
>  	.usb3_pcs_misc	= 0x1c00,
>  	.usb3_pcs	= 0x1e00,
> +	.usb3_pcs_aon	= 0x2000,
>  	.usb3_pcs_usb	= 0x2100,
>  	.dp_serdes	= 0x3000,
>  	.dp_txa		= 0x3400,
> @@ -3345,6 +3362,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
>  	void __iomem *pcs_misc = qmp->pcs_misc;
> +	void __iomem *pcs_aon = qmp->pcs_aon;
>  	u32 intr_mask;
>  
>  	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
> @@ -3364,9 +3382,14 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
>  	/* Enable required PHY autonomous mode interrupts */
>  	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
>  
> -	/* Enable i/o clamp_n for autonomous mode */
> -	if (pcs_misc)
> -		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
> +	/*
> +	 * Enable i/o clamp_n for autonomous mode
> +	 * V6 and later versions use pcs aon clamp register
> +	 */
> +	if (pcs_aon)
> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
> +	else if (pcs_misc)
> +		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
>  }
>  
>  static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
> @@ -3374,10 +3397,13 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
>  	void __iomem *pcs_misc = qmp->pcs_misc;
> +	void __iomem *pcs_aon = qmp->pcs_aon;
>  
>  	/* Disable i/o clamp_n on resume for normal mode */
> -	if (pcs_misc)
> -		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
> +	if (pcs_aon)
> +		qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
> +	else if (pcs_misc)
> +		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
>  
>  	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
>  		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
> @@ -4075,6 +4101,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
>  	qmp->serdes = base + offs->usb3_serdes;
>  	qmp->pcs_misc = base + offs->usb3_pcs_misc;
>  	qmp->pcs = base + offs->usb3_pcs;
> +	if (offs->usb3_pcs_aon)
> +		qmp->pcs_aon = base + offs->usb3_pcs_aon;
>  	qmp->pcs_usb = base + offs->usb3_pcs_usb;
>  
>  	qmp->dp_serdes = base + offs->dp_serdes;
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
