Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C06CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLDH861+ZVkYJ00hh80jZIDB4P6R6w+1LoXrpOVoA/c=; b=SjbizRJiwHx1PK
	8FWQbLHJ90sMZaPBXDBcbpYIQxqXu6KNZ5taseTmgVIWyTZ/pWKFi4QjmCNnBlEcX+83HZCWPosQp
	Mw76XQx9dUm/7Sw5/V3jZDtIE11we4QykEdefqzy/7JFWAhKRgzO2bmuO+ravRxOZb6Hf5efiOWBH
	GeQa45P4HU+irlUL+HWi81j6e9N+WWMsPdYE1T9DgYPoqXZTch7f5YzdBMFE1uULI4Psixv/yFLC6
	eGGTv75RNOAbPtI0pzedqOhSSO7te/LonyasLCz+dd9Fea2Db6c1qrGZxlr8jd44hsD6TTNoO+A24
	rSLp1F7Kjs5aeS2fcpPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FgI-0000000CteA-0yOD;
	Mon, 13 Oct 2025 10:21:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FgE-0000000Ctcb-2fyn
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 10:21:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D4pUpi020462
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 10:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4Fadm5UWE9Z1SeNHKDkEAbSo
	CIBBWtecpyx1PD/Kvao=; b=FWD8z0BzbgIF46ZnojQnErH4b5eudWnBC7z3aGME
	OY2+7gs58kou9JC0hFSIV3242zzpDUzauoJXjd6g9UuEdUQwoangnH6LmPpR4s30
	6gSGZzHZMdEou+s/f4IE3u8N5HQVzsaAWVzVMti57D0IKzo3070zF4l2qZmPJizz
	RgvI6fr24uszRX3s1oFE1AKSl/pC9d09deoJ3nj+Yj2/gJtAsJ2jdYaZ45AQcY/e
	L7usewEy9edKnf65wBKrypRJ40qPui/klZ2WwigqLe85ZTqXefX41EFKX06Pcq4K
	lJJkXIPi6U/J/OA7MTuaKFO9U2WZLaCdY0k9uDGyBtKFEg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrt0yg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 10:21:24 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28e8d1d9b13so83315845ad.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 03:21:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350883; x=1760955683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Fadm5UWE9Z1SeNHKDkEAbSoCIBBWtecpyx1PD/Kvao=;
        b=MOBnme/UtaHKe/4erB5b9DnG6VvJJ8+sf2z+rFAsL1AAAW19ZcjFHAHqzVjVmXLAhW
         MoM7n65MF7tIywjBjtRANVjYucnuJqqAZ17WWuwn6hiTyf/r5C54YhoSZQx3XZG3QmvP
         jGa48ndYLgpTXlRw7/Mynnc7RfvmLnD3dKTafduYjcp5GdKKanjtKHKG8ZKC5o3JR4TH
         VqX2OHChchIIMeMKWyye2ypP6aO43yJ8W0gAXtYrRX4ubtOoIFGTh+eneYwDfq8DzZaT
         VwTWSPM/wrBhQR79piFNW5A0xhr6VGSrQBg17nuyBGkazWjVRAgHWxlT9RVx5KyGbjnq
         7ZMA==
X-Forwarded-Encrypted: i=1; AJvYcCWR3pPkWkOEsee7B9ob8Zq8H4yMLK7mAJhVMGHW/lD+ftc6334CcCxPV7jA4kwd6gCCUDftQPqtvDQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYGeK9aAnZinxx2bxcvD308uZhTIRLXAdBtOc4bXY3RQ67fJ25
	7VJEKAkhXJ6iAhekXcTrcGMV63v5A+V+kKWoaV2mLBa3K2QCfdSFxFHwXXXtzBVT/MruUFfV8CD
	5uN3hgEyIuBcrmRYDEyNtAd3VjOpTOCGi91rNVtjsSGwj5LnXqkdRjgtxNm9uaT9PGAAG
X-Gm-Gg: ASbGncvROkJEJpDf7SjIqUPRshZ866Z6JqITJxpHxZss9Of4hpwWoSL/G87rZvuPLhs
	gxiPrqVxBfFN0r/olejJoKYqGZ8AxKdMGk4AeZ98dRtKSfvosxNCUDsX7KOAp1uoDKEU/5HAerM
	luGMLjetFmNcLc4Z+wI97HSa6zdOL7sk80mvuSss2HLPsgIJ7qj7SUV3Jqz+T5GUutG/9w2dzNW
	YqFVHB0KYGLIjEoZbcqBdEQ3D0MGAPcATmc3B0tOQBXXcQzRurtf6qOK8NUdgwkWTp4xvLzW6YC
	ikhLn1NOmXG0ceFmkw0ow3jpCsUXI1Y5yeYx5qo1dImAU7ve8JPzxj93mye2rrTW4CYGB06m6hl
	o2ncsu3I2/z8=
X-Received: by 2002:a17:903:1510:b0:27e:ec72:f62 with SMTP id d9443c01a7336-2902728b8a2mr258678575ad.6.1760350883030;
        Mon, 13 Oct 2025 03:21:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGI2xIesTPKfihzbvuN6SjY2IhVfnvd+E8VKr6jMCnNPvpl/9my3behcmfa8v1Mlq4cfp6Z2A==
X-Received: by 2002:a17:903:1510:b0:27e:ec72:f62 with SMTP id d9443c01a7336-2902728b8a2mr258678235ad.6.1760350882443;
        Mon, 13 Oct 2025 03:21:22 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f0726asm129326225ad.72.2025.10.13.03.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 03:21:21 -0700 (PDT)
Date: Mon, 13 Oct 2025 03:21:19 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
 <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
X-Proofpoint-ORIG-GUID: hpxI3fWSF6JqLsj268hu_j5kFHtTGh0f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX0wAUHrA/48/k
 iNa5Xo0l/XhS6IRxMPtDCQX8KUDmpOoQvqDVOecB1L7mSfiwCG+JBZ4ReFf3Au22ZRrEzBc44rc
 39Oe4Yht8gk07nsxD2Ht6kKlOr83SIC3Ym2RudIoF3c24YOWQuw75ITz3kTbeRxdW+csapGnKFk
 7LgVER3gGaEIMyf+1cHYUUTnyNk2xqoLoTtAgXr79xCV363MDydCV5cVIfY3/zj175sD6eiTlXi
 SlKsln+4ITK4QBMMrsGVlyOW9gsOCIR+deUFYt8BCBcnQyUSwlWqE4zbjwPwzB8AN9bnONQp+iR
 ujw+dee1+aSLzMT026iiyyOk3AeTSshJyU5Cp/xpx4aodZ/xl0QSxH3d82M1VDPaLHER2d1j6qp
 gscL8qe6ppDW5HW1BdZqK5KapsUnRw==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68ecd2a4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=_a7lAMoHYZZEAV_m-VEA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: hpxI3fWSF6JqLsj268hu_j5kFHtTGh0f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_032126_821923_A3CC9B17 
X-CRM114-Status: GOOD (  24.91  )
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

On Thu, Sep 25, 2025 at 05:28:15AM +0300, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> > qserdes-txrx register offsets differ from the existing v8 offsets. To
> > accommodate these differences, add the qserdes-txrx specific offsets in
> > a dedicated header file.
> 
> With this approach it's not obvious, which register names are shared
> with the existing header and which fields are unique. Please provide a
> full set of defines in this header.

Sorry, I didn't get you. Do you mean we need to add defines for all PCIe
qserdes-txrx registers? I don't understand how this makes which register
names are shared and which fields are unique more obvious.

- Qiang Yu
> 
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > ---
> >  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
> > new file mode 100644
> > index 000000000000..181846e08c0f
> > --- /dev/null
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
> > @@ -0,0 +1,71 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
> > + */
> > +
> > +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
> > +#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
> > +
> > +#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX		0x030
> > +#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX		0x034
> > +#define QSERDES_V8_PCIE_TX_LANE_MODE_1		0x07c
> > +#define QSERDES_V8_PCIE_TX_LANE_MODE_2		0x080
> > +#define QSERDES_V8_PCIE_TX_LANE_MODE_3		0x084
> > +#define QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN		0x0b4
> > +#define QSERDES_V8_PCIE_TX_TX_BAND0		0x0e0
> > +#define QSERDES_V8_PCIE_TX_TX_BAND1		0x0e4
> > +#define QSERDES_V8_PCIE_TX_SEL_10B_8B		0x0f4
> > +#define QSERDES_V8_PCIE_TX_SEL_20B_10B		0x0f8
> > +#define QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN		0x058
> > +#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1		0x118
> > +#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2		0x11c
> > +#define QSERDES_V8_PCIE_TX_PHPRE_CTRL		0x128
> > +#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3		0x148
> > +#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4		0x14c
> > +
> > +#define QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4		0x0dc
> > +#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3		0x0ec
> > +#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4		0x0f0
> > +#define QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS		0x0f4
> > +#define QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1		0x170
> > +#define QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL		0x178
> > +#define QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4		0x1b4
> > +#define QSERDES_V8_PCIE_RX_SIGDET_ENABLES			0x1d8
> > +#define QSERDES_V8_PCIE_RX_SIGDET_LVL			0x1e0
> > +#define QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL			0x0b8
> > +#define QSERDES_V8_PCIE_RX_RX_BAND_CTRL0			0x0bc
> > +#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0			0x0c4
> > +#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1			0x0c8
> > +#define QSERDES_V8_PCIE_RX_SVS_MODE_CTRL			0x0b4
> > +#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1			0x058
> > +#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2			0x05c
> > +#define QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3			0x084
> > +#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3			0x098
> > +#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3			0x0ac
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0			0x218
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1			0x21c
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2			0x220
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4			0x228
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7			0x234
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0			0x260
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1			0x264
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2			0x268
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3			0x26c
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4			0x270
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0			0x284
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1			0x288
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2			0x28c
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3			0x290
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4			0x294
> > +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5			0x298
> > +#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32			0x31c
> > +#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4			0x320
> > +#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB			0x11c
> > +#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB			0x120
> > +#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23			0x108
> > +#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4			0x10c
> > +#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3			0x198
> > +#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4			0x19c
> > +#define QSERDES_V8_PCIE_RX_GM_CAL			0x1a0
> > +
> > +#endif
> > 
> > -- 
> > 2.25.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
