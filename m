Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF7BCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHgURZ2r6K9KuPkTzTlsCydGcoZZwYXtlGzG/D/yJN8=; b=uF+r5TcPOUcT2M
	L+MWldV1a29wbR6tUzvh1ye+OOB/L21oKTAybSOe30LbgyIbBx/lK6BVAuKzzNuA7MxkjNQxL8xqe
	zAD0fT2wIGqgYH+HfthhmC1q2fVjqmrz6jFVAekuBE1FfdIW3H5Sgp31OPybUkk0gxARouTvxv4ge
	xIAElMJJTpf0otJAy29s1d7xaDZZh4Vzwi+CN7nF9jLITWhk+izeHPnRxrBZ8t6rFcFTBgLJydDjQ
	7ysVSLcs4JHOSRgw4jy2gK2rH7dCxNUmSlqaWZvrLOwq5tOO0j7mcJIFoCMmAVTN9K3pBpEAwGKQS
	0UXa+t7vWFa2i7r6GeSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bib-00000005IbO-0YRP;
	Thu, 25 Sep 2025 02:28:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1biY-00000005Iaq-1Xau
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:28:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0WBsk021646
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wXSfj1wi08RKzF1L2ephokkz
	/QuwdGIgQuSB3kutQM8=; b=kMJ9nqtcoBmAhHEvQshcaEBd68YJo37OKD8KDaQu
	IjF+2n/fEIA87dyZpcu8b1ho+xbcqXGUXCQVHGvHhxUpQdymjPQoUkg9MDAp+MeZ
	4RnYUJ98E7cA5NSsXzKBFF08xLTCKqsOhCX5tYhIUV7SUYJIaVL/+28GOai7mAiU
	9pNRwJYaUjdgKyAHmXcD8J3yfoqnz4d7yVPapdBfbFrX76Ew4w4EYod7IjH3zfeR
	LOJHic8ZdFBNOSmPETGO2HBHp1JYzY6FxVSCWPhB00jVYjB/ztt2bhZ+4PtGBF5T
	fjfs97a/RdhC1aoDkWmaz9uvRpJQbQcFDLgXTiwVmiQCVg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae0b5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d6a41b5b66so12042901cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:28:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767300; x=1759372100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wXSfj1wi08RKzF1L2ephokkz/QuwdGIgQuSB3kutQM8=;
        b=dPtFXqlza+ZMCECulqR/+vTZMZqE38a0tz03Si86TijLVVBcJc61Vsl8sfef87ogeV
         6ZU8lqvLquxC0+514feEDHwfWKuor3DQ/wa+IXLbjkijevxtQw6pEOWIE7WevWJimS0j
         WLoA20aqkjzHZOB94m4zJngk1DGqnte3mCuaKXVW8RAHc3UbfbG77Tk1A4ZGcucSlFE9
         rOlfPBlzQQb6eCWSf7lYpptayMOa3g/ISfD+YmoRV1QIxj1cWGbCcFOHaTRgz56OE3bi
         1rYwmITpsFwvyYC/iG7UAfgnoB5C1DrOB/dlJGxfza25o9SNC+GhAxu2zQr7mk/No4qD
         nbyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGkHEyvH5X/egT1zoC5SdqgPH1c1js/DxVsca3fdEQpbOqyWMQqlPsxuOUJ9H/oA+eV67evw2slGQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3/fXvQ/K9DWm+1VFQ1tio02UoL++AeU5tta+cDwyVNT8uQcxW
	86wxzMdfugSNGBHddX0ANmtoIpBp3Pl2fFHTDjlSOezT2mUDywKNYGEvhwrWQfbZugfSRyAPwPg
	5YyVZ31K+7V/FgUUqbeRtPaNfx/FeB5IRJRaR96813/cmk51aqgBN9aeRF6QhsTXk9oU2
X-Gm-Gg: ASbGncuFTSgR/Wv159qn3kppOh7IVrbCgXVJTsfskc6kLcJDnJI9Rfh2mBzhxvB7Wy/
	HEgg0aCCU+vmW/TepTTGhPX8lxNqmH88tadckbj19ulg2fRqYI5Wj4wPs15wMVzBNhqhlbhnwDh
	PN6XoAdIn1B/5m0gva50FJ9+5G5ciSwbcetxN2PNWITYBXAX31b8r0JycBxysnImqTIMfAgCPIU
	gyecxW89ZSMMElLVSIHnIKdODiPhUCFoh3Ka1Z9LsTRcxrnTohER4zAkdDTznsQW+DULetHyvzS
	vbRbeHGoErITnMqNveoT22ZhpwXMTv0hQlbcb4xLGdLHbSCsncOTinR5mlRkd2jBicYz7GwmltB
	X2xhU7jxVIEaJKPEiZ7D6+ojFnUrAd7Qh5Ad/+E6meOrzNVzNf0k1
X-Received: by 2002:ac8:5856:0:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4da4735508amr26619201cf.8.1758767300286;
        Wed, 24 Sep 2025 19:28:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4UEfkhO1mpjxW8ifjJvdLmt7J0vNk2R3BrhhdTbo1+/m7PrsyR8BHP8zagES/AEoTWgsM8A==
X-Received: by 2002:ac8:5856:0:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4da4735508amr26618921cf.8.1758767299822;
        Wed, 24 Sep 2025 19:28:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm243601e87.81.2025.09.24.19.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:18 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:28:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
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
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
X-Proofpoint-GUID: BpEjKSUxhjtaSkdrzc11QmIDM9b_V-pR
X-Proofpoint-ORIG-GUID: BpEjKSUxhjtaSkdrzc11QmIDM9b_V-pR
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4a8c5 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KS3u3L2nYUaZ2k-SVKIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX6/FcuUBFD1ky
 PmciWbMuKY9AbdkqVJg/vvvqqg9pUuABl2W495qF8y2gMPXdVR+UvtxGrhjMraS4ba4ilpJHYdt
 lijHQLDdNAGU/qMKHPesVw/zL0vzyZIWEsItyTLYUvXQtx6cUVogVTAe5r0GYPVx5EsBlX1fq1U
 YF3FqpgqjNF+iAAcR9RkxeVNg0dpxko1des0zTkSYiR6E01z8S9hJA7zcwf/QSqY5mjZo3stcqJ
 rzdvit4tHG9C7v431cLm75ZLRVgIjMo3oDC68Odw2LyZinwM8OjNw48rBA/SbrPBl3i7rSOVIMt
 wwCjbEQJEkHA8ihtT6S1nih5AwlHnOQdk+ukZa5oEGHn0R0Vq5w1/ULAxhe93LKgJnNNe/D2IjM
 XU2rSsoz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192822_524670_D9C38DDD 
X-CRM114-Status: GOOD (  21.57  )
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

On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> qserdes-txrx register offsets differ from the existing v8 offsets. To
> accommodate these differences, add the qserdes-txrx specific offsets in
> a dedicated header file.

With this approach it's not obvious, which register names are shared
with the existing header and which fields are unique. Please provide a
full set of defines in this header.

> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
> new file mode 100644
> index 000000000000..181846e08c0f
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
> @@ -0,0 +1,71 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
> + */
> +
> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
> +#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
> +
> +#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX		0x030
> +#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX		0x034
> +#define QSERDES_V8_PCIE_TX_LANE_MODE_1		0x07c
> +#define QSERDES_V8_PCIE_TX_LANE_MODE_2		0x080
> +#define QSERDES_V8_PCIE_TX_LANE_MODE_3		0x084
> +#define QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN		0x0b4
> +#define QSERDES_V8_PCIE_TX_TX_BAND0		0x0e0
> +#define QSERDES_V8_PCIE_TX_TX_BAND1		0x0e4
> +#define QSERDES_V8_PCIE_TX_SEL_10B_8B		0x0f4
> +#define QSERDES_V8_PCIE_TX_SEL_20B_10B		0x0f8
> +#define QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN		0x058
> +#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1		0x118
> +#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2		0x11c
> +#define QSERDES_V8_PCIE_TX_PHPRE_CTRL		0x128
> +#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3		0x148
> +#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4		0x14c
> +
> +#define QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4		0x0dc
> +#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3		0x0ec
> +#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4		0x0f0
> +#define QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS		0x0f4
> +#define QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1		0x170
> +#define QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL		0x178
> +#define QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4		0x1b4
> +#define QSERDES_V8_PCIE_RX_SIGDET_ENABLES			0x1d8
> +#define QSERDES_V8_PCIE_RX_SIGDET_LVL			0x1e0
> +#define QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL			0x0b8
> +#define QSERDES_V8_PCIE_RX_RX_BAND_CTRL0			0x0bc
> +#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0			0x0c4
> +#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1			0x0c8
> +#define QSERDES_V8_PCIE_RX_SVS_MODE_CTRL			0x0b4
> +#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1			0x058
> +#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2			0x05c
> +#define QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3			0x084
> +#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3			0x098
> +#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3			0x0ac
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0			0x218
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1			0x21c
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2			0x220
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4			0x228
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7			0x234
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0			0x260
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1			0x264
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2			0x268
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3			0x26c
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4			0x270
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0			0x284
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1			0x288
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2			0x28c
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3			0x290
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4			0x294
> +#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5			0x298
> +#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32			0x31c
> +#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4			0x320
> +#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB			0x11c
> +#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB			0x120
> +#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23			0x108
> +#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4			0x10c
> +#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3			0x198
> +#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4			0x19c
> +#define QSERDES_V8_PCIE_RX_GM_CAL			0x1a0
> +
> +#endif
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
