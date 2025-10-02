Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2C6CCA470
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 00:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxvRrc+lLbDK8tsLb5POrll4BxDVYSa5sQbfV9QwKv8=; b=F1v3K+jW6LvCKn
	vd0cFOACAKsPySyPi0JXO3QBL+ukfvJ6aS9vzT/BJItMvw43apmQzTDFzwoeiePygo8S/gJcpChKV
	PFHEBm4mIntIDkyuAIiLqxTkOizUXmMy1U1VT1ZLqEn5ZmIGe5yAuGnRNqSU+ISScnvxxiVctWPcW
	aulXimQgIe/UwUl8FwTmh73JRwRewYCltKu7QMPH196p1eQFp9kf4hw7/NTGsCxUqzTTu4VAXYSVV
	b/eoSNsuSc+7CKRt0nXqwJ8nPd7ejHsefqrPaNPFvEGOlfZRH30irP1jp95wuWEE0icHacvaEdQ+1
	+oasa2GuK4byW8BRkvYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v47e6-00000009LWi-3QDc;
	Thu, 02 Oct 2025 00:58:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v47e4-00000009LWE-0H8l
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 00:58:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic9CL023832
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 00:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WRQA0Ldbq6oCOYaqBj8lZbHs
	x2KkWTck4TAuf9FIAqA=; b=m6nKV1hAoCyWGfwflOJQiPh5vG0P4usGhVpxva3h
	k3NSh70TmWve4FG00qa4kfMRrh6zkll+wUHWGbp0OQAO1vpfm74FQAqG0U8Z8pAh
	ZlxCpxWR3bbc5eAl1+ml4octXbXibRRSWBVkd9loSudBQAQHeb7kGaGseX3v44QQ
	P7TQr7FV5v7KZXSKSBls/hk4Ql86jym0ZYk9ONsRPCyc5t7vBmCZaiFwrLF6rNFU
	W6JUid5dLu7+Kwvs1o5WGHnGr7LGqEr9dcPZg8wsLLgxjX0ewYnQ5c/XNgnE+f8G
	2WY0hIHxghNHicY4HABW++VeYc350mvTP/g6pMTr3S5+fw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977x4e4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 00:58:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85641d6f913so111087385a.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 17:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759366686; x=1759971486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRQA0Ldbq6oCOYaqBj8lZbHsx2KkWTck4TAuf9FIAqA=;
        b=beZTAheD4RqxFhdatu3rWmTaoxu741Gpu/RbgllQBnXCxRVS5kQS4vM5Xfc3j4sx5G
         s5xTJ6PCDteWT6gvRRxhIlSvwI2QhscZieRu+PQ4KmJo/tTsJN0pKVgBtVqDnRZ5L/2F
         l8re26nhHnA95ndgBoGsSyhWfgZbnHRRKe/836Cuuq1OnEHyxuDvfYjA0gt/9D7yi1vq
         63fKlXvawhDZkNf1rMzsI4lAOGoOZEIoyiyQSwEYRad8x8hvD0Xvg0BnM4bcR9NxxYJP
         VifvMnTnzMG1fJPi0mZkTDBlUO+By02PJVF5x2XVqiCyJybVi+njTpdpF83ijNZF0p/8
         Pflg==
X-Forwarded-Encrypted: i=1; AJvYcCW/VRxVvSq8ULQoVDAWN7lOrylZ9fw25kgEId7nVOBj1gl/QZd8p/a/YuTF/1jjpiTE8OQIf/Ckqo8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjwGSYyfG3ShEmrKn7PTO1N320+thrMUbVCB1eINtTT7zJ4dr7
	Z2Tvp0iMqD7umvzdhdT+ZiW3cwFUNB+xKT8xs/YKcKEPbDYzqSe1TZwsQPidm4hOwx9ASJ2KhvJ
	IrM453AlzDUiZ6WuLFwBu6AJF80TMD/X9evdvO6YmXVSv/5n4CCV9ltY9Rcoo+yxFDUU+
X-Gm-Gg: ASbGncsmVmzgAlirHvVm7onEfxpHb0dO1FF65KcywN8qqe18XZep1L9Jdwn93zu6tlm
	PALoCuFz/qIm99xARpHH+tLL7idg86H+kBdBcvFoYjnhUAMznwWCF/Kt7hGpnqrW0Ioj+QX07tK
	nT9j+clTRfenGqu3N0CvjB4nJINQ+sjN3SGF6Bjt7wx3O1rfDwtMGXCoUJ48kYPU/Oev0q8MIEx
	4/VDxfRhhQ3689Bkixe7GxgCPkzmIu29iGRiNc2tosxOzWQPqU9WrkNHOeorX0eLP/NsWTZgiTi
	V6CtW16f5LkpaXA/lH22n/iGuvxwjOS2DBMG3WuO6U7oZYXEi9RDeXt8lbPcF+xzr4/ATzyxuLR
	NJg40FXBGjG1BQcWl0CjEBjvhU8mWW9NrjPo6L7stNb9bhbMIedn6Pjyadw==
X-Received: by 2002:a05:620a:1987:b0:826:ef9:3346 with SMTP id af79cd13be357-8737154541bmr742058585a.18.1759366685847;
        Wed, 01 Oct 2025 17:58:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoX2gNtGM6G7KSu5OLUymOolA+kZGqBSRedhmredpkzbdydeAaEfMnslOBA8eEJiSCKXimyg==
X-Received: by 2002:a05:620a:1987:b0:826:ef9:3346 with SMTP id af79cd13be357-8737154541bmr742055285a.18.1759366685323;
        Wed, 01 Oct 2025 17:58:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4cdf47sm2721371fa.52.2025.10.01.17.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 17:58:03 -0700 (PDT)
Date: Thu, 2 Oct 2025 03:58:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <ra3bq7guxunk2n7mbrjlefxvxu45clmwzp74vq7bqd2xvp2fv5@z5skxjxs4yxp>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
 <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: InoFYaAeC7TBHdFbb5YfsjKh1dYNi-iQ
X-Proofpoint-ORIG-GUID: InoFYaAeC7TBHdFbb5YfsjKh1dYNi-iQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfX5gVMloroCoEk
 IMK808+C8RauxwkVn5v+RTNjYykXOgMLYqk7/nv/eYNzEncYentwZKWlVKrqmjtash+clnDfH3o
 v0orSpZp58/m8EL430dYQPwMpVPSw4t6dTHWAq6VyGwE8jGo2Etvdj9xCeca1mWMRdieQnyQPND
 xF4y41n7vP8kdteVtIE7UFtXxMOyrlhB1ZhUtxH0Vd6hsZwQpV+wMWtLkfZtVyzHFCzGPTjCV8p
 gNPB3+SLNJNLgjcrXK2YdxCTktbzFvLUgER/PxN4Epu/30lwJtz6arhgzRgAr55kEhDrCgHfKSJ
 L+NhP7gDVayvJ7bdnU7KZXte4D528NkySLbYMUwRAE1mEnkyDQkzCQ5Xs9q0aguZBv+d3e5mYSQ
 l+dhzZ9rsfprNX+qxG50Q9VJh1BwRg==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68ddce1f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=bgMNcTsuivlx1WpOe6cA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_175808_109708_0FA05D03 
X-CRM114-Status: GOOD (  23.57  )
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

On Wed, Oct 01, 2025 at 03:05:31PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 312 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
>  7 files changed, 1240 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index da2a7ad2cdcc..7211c71fe68c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -32,7 +32,9 @@
>  #include "phy-qcom-qmp-qserdes-txrx-v7.h"
>  
>  #include "phy-qcom-qmp-qserdes-com-v8.h"
> +#include "phy-qcom-qmp-usb43-qserdes-com-v8.h"
>  #include "phy-qcom-qmp-qserdes-txrx-v8.h"
> +#include "phy-qcom-qmp-qserdes-lalb-v8.h"
>  
>  #include "phy-qcom-qmp-qserdes-pll.h"
>  
> @@ -60,6 +62,8 @@
>  
>  #include "phy-qcom-qmp-pcs-v8_50.h"
>  
> +#include "phy-qcom-qmp-usb43-pcs-v8.h"

Let's not include USB-specific header into the generic header.

With that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +
>  /* QPHY_SW_RESET bit */
>  #define SW_RESET				BIT(0)
>  /* QPHY_POWER_DOWN_CONTROL */
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
