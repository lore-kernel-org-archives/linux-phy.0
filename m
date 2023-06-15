Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 445CCEB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 06:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJ/PEiH1QCxbBSWAMaBJBwVRILnv+eGgVch8tmmuvaI=; b=VhTE0dfUIKm4f/
	zOt9ufHBZtviAY5lvuaZ3R0QYtq2QPtUwFsgK4mzSFqTOK0gNC1qFz3X80FyGGJZI6UBk8LUxuSr+
	vQVLTYnQjWOQBtL5evZrFdyieO/MRb+RrOwqPdcHam9tKAxUMdV4kdSHBiu48m9FcpX3jgDI4J5tV
	lQRyz0urJbqcC6VLsR3mALxr7/VpQW6BXWmhWgkKAWd/xUUtTyIRavrBqbIWaoqtXhUGmLpj4+Hd8
	8RO/yG3UxKmP8qT8Ci3/ZbGt/E6pyH9HIoGpkE+n+7iLrmRTzfg4ZZI06+dAshjUKVCrRxTFqmp8w
	rvVAx1RlB68WkFfpOssQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9g3O-00DnME-2x;
	Thu, 15 Jun 2023 06:01:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9g3L-00DnKv-2H;
	Thu, 15 Jun 2023 06:01:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35F57XOp004800;
	Thu, 15 Jun 2023 06:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=dImV6OGXSsx2x1yT1KJCeCgruj88IJIxqty0Jdo6NwA=;
 b=oYhV5OxnukaHFp3TFv7Q7yiZbedU95SG3A1DAXVPikc71tDBWiiMahmBz66FCJactRCJ
 0uXNW23NgYZqJdO5yvC6EnCbKM626tk2PqjkrhWiS5neKE4D6Iar3diaYbLSOelyj5XG
 20taRX0uBQlgDyiHkCRKvkcckBV5imEFKOoS7SdFSggAp9ek70H70CeYIAHNj4PxHDRQ
 6fIwy8lwbpaYKeoeoMjjxAJc5B+MNvYX6licc9ohCUs0cKQ4tmdMFFoBv/iO1d70UtU9
 LXUSP3Fhf/JXVGAxlQ51aprjt6qks8oKdUwPiifGfLwvyebrJvhxG9jRgpeEG6FYliZ4 OA== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7p4q8krb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:01:35 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35F61YvV010828
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:01:34 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 14 Jun 2023 23:01:23 -0700
Date: Thu, 15 Jun 2023 11:31:19 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 3/9] phy: qcom-m31: Introduce qcom,m31 USB phy driver
Message-ID: <20230615060118.GD22186@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <6bb345c6a57ee27516764f36ba7d34fd1a719b87.1686126439.git.quic_varada@quicinc.com>
 <416bef68-6df3-d5c4-2aed-ef1ae7c78d7b@linaro.org>
 <cf3c98c1-e283-3fac-3144-5a7354378a6b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf3c98c1-e283-3fac-3144-5a7354378a6b@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: beGEPEbrb_VpMMugIv2KsiqI0rAnPtsr
X-Proofpoint-ORIG-GUID: beGEPEbrb_VpMMugIv2KsiqI0rAnPtsr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-15_02,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 adultscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_230151_753107_0A682BE9 
X-CRM114-Status: GOOD (  26.19  )
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

On Wed, Jun 07, 2023 at 03:29:18PM +0300, Dmitry Baryshkov wrote:
> Two minor nits on top of the review:
>
> On 07/06/2023 14:54, Konrad Dybcio wrote:
> >On 7.06.2023 12:56, Varadarajan Narayanan wrote:
> >>Add the M31 USB2 phy driver
> >>
> >>Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >>---
> >>  drivers/phy/qualcomm/phy-qcom-m31.c | 360 ++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 360 insertions(+)
> >>  create mode 100644 drivers/phy/qualcomm/phy-qcom-m31.c
> >>
> >>diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> >>new file mode 100644
> >>index 0000000..d29a91e
> >>--- /dev/null
> >>+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> >>@@ -0,0 +1,360 @@
> >>+// SPDX-License-Identifier: GPL-2.0+
> >>+/*
> >>+ * Copyright (c) 2014-2016, 2020, The Linux Foundation. All rights reserved.
> >>+ */
> >>+
> >>+#include <linux/module.h>
> >>+#include <linux/kernel.h>
> >>+#include <linux/err.h>
> >>+#include <linux/slab.h>
> >>+#include <linux/clk.h>
> >>+#include <linux/delay.h>
> >>+#include <linux/io.h>
> >>+#include <linux/of.h>
> >>+#include <linux/platform_device.h>
> >>+#include <linux/usb/phy.h>
> >>+#include <linux/reset.h>
> >>+#include <linux/of_device.h>
> >Please sort these
> >
> >>+
> >>+enum clk_reset_action {
> >>+	CLK_RESET_DEASSERT	= 0,
> >>+	CLK_RESET_ASSERT	= 1
> >>+};
> >>+
> >>+#define USB2PHY_PORT_POWERDOWN		0xA4
> >>+#define POWER_UP			BIT(0)
> >>+#define POWER_DOWN			0
> >>+
> >>+#define USB2PHY_PORT_UTMI_CTRL1	0x40
> >>+
> >>+#define USB2PHY_PORT_UTMI_CTRL2	0x44
> >>+#define UTMI_ULPI_SEL			BIT(7)
> >>+#define UTMI_TEST_MUX_SEL		BIT(6)
> >>+
> >>+#define HS_PHY_CTRL_REG			0x10
> >>+#define UTMI_OTG_VBUS_VALID             BIT(20)
> >>+#define SW_SESSVLD_SEL                  BIT(28)
> >>+
> >>+#define USB_PHY_CFG0			0x94
> >>+#define USB_PHY_UTMI_CTRL5		0x50
> >>+#define USB_PHY_FSEL_SEL		0xB8
> >>+#define USB_PHY_HS_PHY_CTRL_COMMON0	0x54
> >>+#define USB_PHY_REFCLK_CTRL		0xA0
> >>+#define USB_PHY_HS_PHY_CTRL2		0x64
> >>+#define USB_PHY_UTMI_CTRL0		0x3c
> >>+#define USB2PHY_USB_PHY_M31_XCFGI_1	0xBC
> >>+#define USB2PHY_USB_PHY_M31_XCFGI_4	0xC8
> >>+#define USB2PHY_USB_PHY_M31_XCFGI_5	0xCC
> >>+#define USB2PHY_USB_PHY_M31_XCFGI_11	0xE4
> >Could you sort them address-wise?
>
> ... and lowercase the hex values, please.

Ok.

> >>+
> >>+#define USB2_0_TX_ENABLE		BIT(2)
> >>+#define HSTX_SLEW_RATE_565PS		3
> >>+#define PLL_CHARGING_PUMP_CURRENT_35UA	(3 << 3)
> >>+#define ODT_VALUE_38_02_OHM		(3 << 6)
> >>+#define ODT_VALUE_45_02_OHM		BIT(2)
> >>+#define HSTX_PRE_EMPHASIS_LEVEL_0_55MA	(1)
> >Weird mix of values, bits, bitfields.. perhaps BIT(n) and
> >GENMASK() (+ FIELD_PREP) would be more suitable?
> >
> >>+
> >>+#define UTMI_PHY_OVERRIDE_EN		BIT(1)
> >>+#define POR_EN				BIT(1)
> >Please associate these with their registers, like
> >
> >#define FOO_REG		0xf00
> >  #define POR_EN		BIT(1)
> >
> >>+#define FREQ_SEL			BIT(0)
> >>+#define COMMONONN			BIT(7)
> >>+#define FSEL				BIT(4)
> >>+#define RETENABLEN			BIT(3)
> >>+#define USB2_SUSPEND_N_SEL		BIT(3)
> >>+#define USB2_SUSPEND_N			BIT(2)
> >>+#define USB2_UTMI_CLK_EN		BIT(1)
> >>+#define CLKCORE				BIT(1)
> >>+#define ATERESET			~BIT(0)
> >>+#define FREQ_24MHZ			(5 << 4)
> >>+#define XCFG_COARSE_TUNE_NUM		(2 << 0)
> >>+#define XCFG_FINE_TUNE_NUM		(1 << 3)
> >same comment
> >
> >>+
> >>+static void m31usb_write_readback(void *base, u32 offset,
> >>+					const u32 mask, u32 val);
> >We don't need this forward-definition, just move the function up.
> >
> >>+
> >>+struct m31usb_phy {
> >>+	struct usb_phy		phy;
> >>+	void __iomem		*base;
> >>+	void __iomem		*qscratch_base;
> >>+
> >>+	struct reset_control	*phy_reset;
> >>+
> >>+	bool			cable_connected;
> >>+	bool			suspended;
> >>+	bool			ulpi_mode;
> >>+};
> >>+
> >>+static void m31usb_reset(struct m31usb_phy *qphy, u32 action)
> >>+{
> >>+	if (action == CLK_RESET_ASSERT)
> >>+		reset_control_assert(qphy->phy_reset);
> >>+	else
> >>+		reset_control_deassert(qphy->phy_reset);
> >>+	wmb(); /* ensure data is written to hw register */
> >Please move the comment above the call.
> >
> >>+}
>
> Or even better just inline the function. I was never a fan of such
> multiplexers.
>
> Also does wmb() make sense here? Doesn't regmap (which is used by reset
> controller) remove the need for it?

Will inline and remove the wmb.

Thanks
Varada

> >>+
> >>+static void m31usb_phy_enable_clock(struct m31usb_phy *qphy)
> >>+{
> >>+	/* Enable override ctrl */
> >>+	writel(UTMI_PHY_OVERRIDE_EN, qphy->base + USB_PHY_CFG0);
> >Some of the comments are missing a space before '*/'
> >
> >Also, please consider adding some newlines to logically split the
> >actions.
>
>
> --
> With best wishes
> Dmitry
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
