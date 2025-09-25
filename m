Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BAD4CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5R/eDD9XjtEzF+jOjIYe0joT8mnBVev2a49knzna5U=; b=S87wV8YEV4VfOs
	SoKCSpnBnyFB7d3idsDHYhIe3Aa6kysQHhntk9E19qE9ZuSLUiSsHUO9Xhyq8mCEo6eNGrC74/6so
	jIGEEP0CLZBT3VRqbGmGCDi8VGabPmG3BpuSvSll5VYuMIPhfIKi2fie2tb3Pkx6gOxEggypRRBt8
	0ryuRmAgscKM5tJHZauoWdxwvzkTQRFmQBBpUQDYKGmn/cNU9ERP139b4LaACa20wjFpe28SkiKsA
	gShBoM1pArXuKN9byyPntloxComtdue8BBJ3d9ItXuHEjSwwo1ygfpyLCysJ7kpVqYN8vEZwMRoPJ
	K3qO4aBAucnBYMDtoQtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjz-00000005JIv-3IXB;
	Thu, 25 Sep 2025 02:29:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjw-00000005JGg-43oS
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:29:50 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0MCcU002079
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LQaOq8baqYH8YR9JWG0sLMEI
	8nnQsGHizuPggbt5gk0=; b=gYRJ1QYOcdWerhNPoWvNjro0jgCRAMHQ6LCAocnj
	wIQWk3bbVXtMB9b1wOLpP0Rc7pfDxkIwiBVs6ACQUxEmC6d7CmCI8ZqCsWn0DaTU
	/Q0dX92wegz6yfmUirgKw7iwZIGotuOL6P1XWwH3WcMs1QkjOgCf9EBrI4EIAj/S
	E3aF4jx0HK4sE3r39/XSlhcqECjKONZSNMdNXgNLOftC/7nRo38EMngPKlWFr57N
	yRWOUNybBFJYOqdyG0gdtRrKSS17vauOq4rtUl/CuGBvhCSd+2dJU4bDd1fFPNnT
	AEj30tCsxVATcU+MOArktE/MQ3JCz7P62xfvn/XuJL/H/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98pes2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:29:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e870614b86so154745185a.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767387; x=1759372187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQaOq8baqYH8YR9JWG0sLMEI8nnQsGHizuPggbt5gk0=;
        b=Kukr3j6Clc6f5yNUpDmacPqp0cxK89rvsLhycu783BVBUvPZec5oEgQFkC+zchQTqg
         MsEpaE/yj40dM6frzuAxqMpE69UHlNN1YYRwUgGvMDPcORFgjXZqb+uhLVAQxS1YAzAz
         OrsYIvan7/Z50YsQzNHozUokSjpKW/HNPaG0iRSJ8BTm47CkUGP0OWKa3KXDVNDR5alj
         hgWrDCNRBFrsP/bjSwqT23pCHfYO7MBtsODMI8dIHv6WZ2s/bsPxfvppM3sbwXS+/ilx
         8Wwn3EzqzfZ3ZG2uDd2VxagGHui6iIWjMmdWyotew0pxCxqn4E8lET88e1JSXwdogaYq
         oF8g==
X-Forwarded-Encrypted: i=1; AJvYcCUaCk4KKHeNadshjVQfdVRk4fkD+j2Ck6OMW9RphYihgs2+Ig24XGpgf7N9QJnIN77JN22EAUJBbsI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7fmWDoJGBaJ3HkWEOvDyqOJO6R7EqBEqdljpDSZq1YlKxFDbZ
	6pAf9/MPXYVgkc7nNj/gx41CcQw4q6W3VSj9rlWAXbWAozJd+cRBEe0jgedqJQnMwMSdB0wVTvf
	949q43A4LiCfx0+iwqPNXlN4KXjYqoje58ZqHU34HIu2AEYod3IvFYgRjL9G+BfRXtpB9
X-Gm-Gg: ASbGncsnzhLXbU+9Un9cbdqJxp0iRzy8XgH+TMLv6Br2lloK5oXfxXk66h1kxglwHqy
	bZq3ihhd/D3OEGIXmm1TrUwT17wW+Gslhcg0Mph4LvCrz5wziz1E1kIPhHgjj69q6TRFkOFvv/J
	KVsjI0uf63ziSzcC1AmO+JqpLQOc4jFfTX94edtsr+LIRNEIEay+imWnhDagJLIDz4oMqPrmORZ
	2xAgqyhrUi+VRwznlqzovN6gU9WVON9KBJd3B2kFRZ92Fbc5FG+zXcKoQN6r5+kl7kKlBYDwDEJ
	QXLqkNu8metcUAUZpcFv49l98C5n8FgMX8FDBITXOqIuQrVNJfrHd6jXNTwui2Qc3T1xJGtlF10
	YeWai+m0UHmGplzZRj4NQ5RWJdztjNn2/Z49VfvYmYRbyggUUofE8
X-Received: by 2002:a05:620a:4450:b0:828:e3d4:36d0 with SMTP id af79cd13be357-85ae2d581c7mr282340985a.14.1758767387223;
        Wed, 24 Sep 2025 19:29:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWjHvPcJ9HcmIfCHUrXsALZGizOf4u+4lYXayYXBFqIMa+H71rcPlbCPTpugkDeALbYOyCwA==
X-Received: by 2002:a05:620a:4450:b0:828:e3d4:36d0 with SMTP id af79cd13be357-85ae2d581c7mr282337685a.14.1758767386697;
        Wed, 24 Sep 2025 19:29:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4772cadsm2084701fa.9.2025.09.24.19.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:44 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:29:41 +0300
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
Subject: Re: [PATCH 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Message-ID: <6357bmgvlc3wl3zffd56svny33fy7hml3b43ri5pzm3mrdvh4h@7iqqbil5jzrk>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-4-5fb59e398b83@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-4-5fb59e398b83@oss.qualcomm.com>
X-Proofpoint-GUID: AdbI0PuWvoxmp0uDX-n0wR71DKzXZ4g7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX9URqxK8dzt7g
 yWlsqNv0v88+MTDn6vaVgo7kjCNN7kuzVE8ns2Zx5NBxdl2hkPeapyZbiixhnd/t2Z+c7D/FA1I
 fwWF8535OAOkzLoEbqmgFhfPE+uNsSX9upnzfhKc2BrzOP79pjJu1ZsJAK8toG995jdTHFIu1Nh
 aLMidPRhLEIT00J3om16yWO3Yi2rI25eosgjp3CKRdFgWTSvUlZz6dZ75sBIBWYOwwyNi25yceS
 BnbYbaS8M8K+sZezXroPmPMCURYmPDFAjT35CwZlmpU4giXHQAhWqYf5lPL0yRoZSXoPQkzvHJV
 7z5cQlSk5hGQWAJqUvwM047PbjKqXbfXq67ORVh4xJTeoYL/sZk/XKu3kmi/McLzY+XYucqY+p6
 v4hlxQSU
X-Proofpoint-ORIG-GUID: AdbI0PuWvoxmp0uDX-n0wR71DKzXZ4g7
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4a91c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_dzLxsmZBOyHC3WYtbYA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192949_135568_CF981545 
X-CRM114-Status: GOOD (  19.34  )
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

On Wed, Sep 24, 2025 at 04:33:20PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
> PCS PCIE specific offsets in a dedicated header file.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 35 +++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
> new file mode 100644
> index 000000000000..5d630e5123a5
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
> + */
> +
> +#ifndef QCOM_PHY_QMP_PCS_PCIE_V8_H_
> +#define QCOM_PHY_QMP_PCS_PCIE_V8_H_
> +
> +/* Only for QMP V8 PHY - PCIE PCS registers */
> +
> +#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2		0x00c
> +#define QPHY_PCIE_V8_PCS_TX_RX_CONFIG		0x018
> +#define QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
> +#define QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS		0x090
> +#define QPHY_PCIE_V8_PCS_EQ_CONFIG1			0x0a0
> +#define QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME		0x0f0
> +#define QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME		0x0f4
> +#define QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5		0x108
> +#define QPHY_PCIE_V8_PCS_G4_PRE_GAIN			0x15c
> +#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
> +#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
> +#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
> +#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
> +#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
> +#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
> +
> +#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
> +#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178

Please keep them sorted.

> +#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
> +#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
> +#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
> +#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
> +#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
> +#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
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
