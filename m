Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A7EFD9E29
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 01:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZ8X+S/i8a/UDnHgB5lF0bfTOwkvzJZkeO+wUGufRcI=; b=2srPDiQq4VwvY9
	qPnRZSKITRXEJJptboA3nEXdni92R8NgvI3sC9iPulZBl0KkLFwGbk6dHZwCQuqdhQsHzyOmjqKD5
	F/JDuhCGLX2axr2NlzTqbxsL8zIGpUhRIyXNpDHzJpuopxfYmdfDDil2BmJrvsl24fqCz1j3fN5rB
	a8HIo9y/crcz7e1hO3fgktFta3+/udth0pOkosO0WomGoGHw0HA4I3kJ6ZLG9HfBgiDD+XhhnqaEn
	VsiZasfymWYVb9IHJzsqlJzFaNugPH34Wajtxuv9GrLwKWbsM31N6yx50v9vvcVC21n+kHqqos3Pf
	siFcLAy9+lC54WQD8Dkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvmqJ-00000007Up1-0Qwp;
	Fri, 27 Feb 2026 01:40:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvmqG-00000007UoY-1fRm
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 01:40:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QMaaC71137564
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 01:40:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1Aa26+t/59MFGxvbsReyMUy/
	15qj7JEUrDxolDXrBUY=; b=BoLPh+LUJdKY/1Bl6p69gFhZlzmjlF955ZYHhIuR
	I0U0EFh/Nl/SPl4KBiBiAC01nw0PbjdJfYOqeW+kpRS+zm/5NzhpAf9f9edB3N97
	rDcDFZoXsRA/Dia6bdviVoyqSNL+YmIyQUjYUnJFwZveV+425Wlvnc59Z23o6u3t
	MCNaITos2Frx5UR+LbG4/zFn9jqs92/rCNE3WtUI9yIk6fF3tz3hKOy1sUtiKK8C
	Az9lI4Ja7DGLe2VJym6vwn5IBnVoS8H07bEgFGKN72E2JoWP2JANiigtVUTq24SW
	d8WQ563jLZUt0xfjoy10wCRsbIzmdT107V0UUxXU8Pvzrg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt99spkg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 01:40:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb5359e9d3so1328513385a.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 17:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772156429; x=1772761229; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Aa26+t/59MFGxvbsReyMUy/15qj7JEUrDxolDXrBUY=;
        b=BDyWBeq2hacl9Wxy9c/v5FhOmIkyK9TVf67eIpvCvndlahBIW6w7Sjz0LEt1YwcYss
         1rmoBDrfFFIJY/7bVxelKu1vaCithm5KQuFPAdIT+aKw78kBm3/Hi5CPlX7z6NCotLTI
         4720IhNiQ02IqpXGF86E4G3L+YJLH4hCjNiUq4u/CqdCrAAhd2Y0SkTDSDA+QO0Emc9V
         pbBXza+m2SFgTKABNaSSGniRz9vgCpgUNjmAr0GgHvvkovGjmoaIyPDG0qHXFTOyONg3
         POkI263pmhWq7r0pMjy5xo/UlmftGLXDaU2Tzmhrj31ahncLaDut7HJ6wjxRGWvGY+ax
         MmTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772156429; x=1772761229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Aa26+t/59MFGxvbsReyMUy/15qj7JEUrDxolDXrBUY=;
        b=R7UsomAMxn9oNBVAZ/x1MnHzk3v7IU4ki1+iOd+OJYaqyeq52XiEUK5NRa3PVRQor2
         VLQvMfFeCwt7Lx0YbW/mYbBZXnOEFa6SgFocclNznT0MEyDdeuunnKaHT6j+pRTUZ0hC
         i8XAuLAK3f39MChoqSVlUCm9MaqNdqnsL3IiIkO4JoRdcJSvbaUxDosAoRcRIq7mWyvM
         DB4WIbs8yf4dPfve4g1wGUS4jiOouyfoaCxE3OKL5xtCNap9PLHpHqWzm2P3cPNBqq5l
         zWvbgmhRtQUS5I61w3IinhiRN8/IHwM44iUd/BviCHM1jnUeQ7gzjWaTk7v5WdeRxcZs
         xOkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvkO++9BNljIRZfyzv20+kP9FusZ52EYGis1BfiQBYdDMHS0UaRqVC01QM9gNyOalgo+SPoffbHs0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7UKf+K2Yh23GtOjjiXBrLHiySakTU3CWFPsYjRYembMDgicrF
	JDj/nQO/1x9kHBs5sOlCc3dyu+uaINKxx/RPGr//CukmBcsWbi1803E6v9DaOfAEIfSL2n/U8lN
	84B2mJunXprFEpcoZH6g5/YHaSWT/Mm+kDS6noGRyP7RDR4lcHtrDH/WyXU7jWSE26bw2
X-Gm-Gg: ATEYQzzfTERxwWycH9pz6rzGNvT79+pXLzU3IhAymCTsArOEj+PrDtoklKNeoky568x
	H9unoBgPhrZnOPC2Awnv6lCiJx+VU59PdwdemlfLQ0ZnQ85tAJTTWMbzYpmK6Azhg1KvaMEg5aG
	jg3j4CLnC1fTQxH2m2mVqoz8yMzUAjLO0nktZBrTio3+hEfm+/Bq3RyWdhEirmqM0CJx+/lxxhH
	c9wHYmjNFHL+8OC/U8kCY+++W7CQ9JbBLoJmhI8jjZOzUzhF8oX2GQKk9zhdovTHQ6/v7Y1TbpE
	Vr1VKTpwmZtO/7zSHeztFVebpgHpcKFxdCm7hONNSvldXfE36/0W6M1r8iHVsTGxJwDG1TfUQvw
	tnfkloc8Qz2+0Zq1OYS5oPoBAAd35j0LzmkV0tOgFTFTp8P9qDPYttdryjXQZvFR4ugUqyM7c8C
	PfSATLyygH5Nc4CAlZpUmJ4+19gu0tz/HsBzs=
X-Received: by 2002:a05:620a:25cb:b0:8ca:2cf9:819b with SMTP id af79cd13be357-8cbc8decae5mr158974585a.30.1772156428847;
        Thu, 26 Feb 2026 17:40:28 -0800 (PST)
X-Received: by 2002:a05:620a:25cb:b0:8ca:2cf9:819b with SMTP id af79cd13be357-8cbc8decae5mr158970785a.30.1772156428248;
        Thu, 26 Feb 2026 17:40:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f626b3sm11956161fa.10.2026.02.26.17.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 17:40:26 -0800 (PST)
Date: Fri, 27 Feb 2026 03:40:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <yut3rwn5jq75dvycuwpy56jzysdcgryccdqtcussuprdymbuue@szwtwujamicz>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-2-11e608759410@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-x1e-csi2-phy-v3-2-11e608759410@linaro.org>
X-Authority-Analysis: v=2.4 cv=IZWKmGqa c=1 sm=1 tr=0 ts=69a0f60e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=KKAkSRfTAAAA:8
 a=VwQbUJbxAAAA:8 a=JfrnYn6hAAAA:8 a=bQraX51Kk0U-kHSDx2UA:9
 a=5jQV-Fd3gnY0fhhJ:21 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: no0kWMSRyF5DLtiL7w5YHqTphvBcGRJ0
X-Proofpoint-ORIG-GUID: no0kWMSRyF5DLtiL7w5YHqTphvBcGRJ0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAxMyBTYWx0ZWRfX2j+y3NppDoeE
 g+ouFNH/sUDZ4RFUrPRS5rmYsjNLQS1utds7eAV0q6ZZwsnrkphZ2Ij7TIlUI9CoTiPm7zaJO8p
 EkCfU6ehWVCQc8oZSlbBdDLnkKNivXOc7oikQfahs4ZJCEs4jfsSURv8mYOUYJucotCWKyJ3JAB
 FL1wxhU6Bddh9pMSOZspMhtxcMHrjLg6kZNC50rqdlbcETi3Tvtpl8n+nvMB1ntPAJ9fPIjMV29
 0H6sAW0iLnKbsNaeR8JzON2vyC67eJRUP2O9N/PhiXULSbTDFY2CwWPPKCkVQEzDB0hz8rDdSsI
 XsjT0KI4+T9/ZUavpyV3+SmbwjO675dKzTEOkZ1h1S9LBYNEus9vDnDPOGRJilWPmGTl7h66gj4
 xYIM4npjlCcHWNECSN46WCDNgSK+vxNKoEZ2lTUVmtIz+pZ1XtwqodJ2F8ES3IA0G+7tTpgqFgi
 Tg66DW2ORtm49P+En+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_174032_620658_2936D529 
X-CRM114-Status: GOOD (  40.39  )
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

On Thu, Feb 26, 2026 at 12:34:26PM +0000, Bryan O'Donoghue wrote:
> Add a new MIPI CSI2 driver in DPHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
> The following devices are supported in this drop:
> "qcom,x1e80100-csi2-phy"
> 
> In-line with other PHY drivers the process node is included in the name. At
> the moment we follow the assignment of lane positions - the bitmap of
> physical input lanes to logical lane numbers as a linear list per the
> existing DPHY @lanes data-member.
> 
> This is fine for us in upstream at the moment since we also map the lanes
> contiguously but, our hardware can support different lane mappings so we
> should in the future extend out the DPHY structure to capture the mapping.
> 
> The Qualcomm 3PH class of PHYs can do both DPHY and CPHY mode. For now only
> DPHY is supported.
> 
> In porting some of the logic over from camss-csiphy*.c to here its also
> possible to rationalise some of the code.
> 
> In particular use of regulator_bulk and clk_bulk as well as dropping the
> seemingly useless and unused interrupt handler.
> 
> The PHY sequences and a lot of the logic that goes with them are well
> proven in CAMSS and mature so the main thing to watch out for here is how
> to get the right sequencing of regulators, clocks and register-writes.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  MAINTAINERS                                        |  11 +
>  drivers/phy/qualcomm/Kconfig                       |  13 +
>  drivers/phy/qualcomm/Makefile                      |   5 +
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 384 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 307 ++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 102 ++++++
>  6 files changed, 822 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 62ccdc72384d4..fe19722355d94 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21542,6 +21542,17 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/media/qcom,*-iris.yaml
>  F:	drivers/media/platform/qcom/iris/
>  
> +QUALCOMM MIPI CSI2 PHY DRIVER
> +M:	Bryan O'Donoghue <bod@kernel.org>
> +L:	linux-phy@lists.infradead.org
> +L:	linux-media@vger.kernel.org
> +L:	linux-arm-msm@vger.kernel.org
> +S:	Supported
> +F:	Documentation/devicetree/bindings/phy/qcom,*-csi2-phy.yaml
> +F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.c
> +F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.h
> +F:	include/dt-bindings/phy/phy-qcom-mipi-csi2*
> +
>  QUALCOMM NAND CONTROLLER DRIVER
>  M:	Manivannan Sadhasivam <mani@kernel.org>
>  L:	linux-mtd@lists.infradead.org
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 60a0ead127fa9..ea33025a40fd0 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -28,6 +28,19 @@ config PHY_QCOM_EDP
>  	  Enable this driver to support the Qualcomm eDP PHY found in various
>  	  Qualcomm chipsets.
>  
> +config PHY_QCOM_MIPI_CSI2
> +	tristate "Qualcomm MIPI CSI2 PHY driver"
> +	depends on ARCH_QCOM || COMPILE_TEST
> +	depends on OF
> +	depends on COMMON_CLK
> +	select GENERIC_PHY
> +	select GENERIC_PHY_MIPI_DPHY
> +	help
> +	  Enable this to support the MIPI CSI2 PHY driver found in various
> +	  Qualcomm chipsets. This PHY is used to connect MIPI CSI2
> +	  camera sensors to the CSI Decoder in the Qualcomm Camera Subsystem
> +	  CAMSS.
> +
>  config PHY_QCOM_IPQ4019_USB
>  	tristate "Qualcomm IPQ4019 USB PHY driver"
>  	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index b71a6a0bed3f1..382cb594b06b6 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -6,6 +6,11 @@ obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
>  obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
>  obj-$(CONFIG_PHY_QCOM_M31_USB)		+= phy-qcom-m31.o
>  obj-$(CONFIG_PHY_QCOM_M31_EUSB)		+= phy-qcom-m31-eusb2.o
> +
> +phy-qcom-mipi-csi2-objs			+= phy-qcom-mipi-csi2-core.o \
> +					   phy-qcom-mipi-csi2-3ph-dphy.o
> +obj-$(CONFIG_PHY_QCOM_MIPI_CSI2)	+= phy-qcom-mipi-csi2.o
> +
>  obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
>  
>  obj-$(CONFIG_PHY_QCOM_QMP_COMBO)	+= phy-qcom-qmp-combo.o phy-qcom-qmp-usbc.o
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> new file mode 100644
> index 0000000000000..f9f3451e9a5e1
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -0,0 +1,384 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * camss-phy_qcom_mipi_csi2-3ph-1-0.c

And it doesn't match the driver anymore. Please drop it.

> + *
> + * Qualcomm MSM Camera Subsystem - CSIPHY Module 3phase v1.0
> + *
> + * Copyright (c) 2011-2015, The Linux Foundation. All rights reserved.
> + * Copyright (C) 2016-2025 Linaro Ltd.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/time64.h>
> +
> +#include "phy-qcom-mipi-csi2.h"
> +
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(offset, n)	((offset) + 0x4 * (n))
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL0_PHY_SW_RESET	BIT(0)
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE	BIT(7)
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
> +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
> +#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
> +
> +/*
> + * 3 phase CSI has 19 common status regs with only 0-10 being used
> + * and 11-18 being reserved.
> + */
> +#define CSI_COMMON_STATUS_NUM				11
> +/*
> + * There are a number of common control registers
> + * The offset to clear the CSIPHY IRQ status starts @ 22
> + * So to clear CSI_COMMON_STATUS0 this is CSI_COMMON_CONTROL22, STATUS1 is
> + * CONTROL23 and so on
> + */
> +#define CSI_CTRL_STATUS_INDEX				22
> +
> +/*
> + * There are 43 COMMON_CTRL registers with regs after # 33 being reserved
> + */
> +#define CSI_CTRL_MAX					33
> +
> +#define CSIPHY_DEFAULT_PARAMS				0
> +#define CSIPHY_LANE_ENABLE				1

Unused

> +#define CSIPHY_SETTLE_CNT_LOWER_BYTE			2
> +#define CSIPHY_SETTLE_CNT_HIGHER_BYTE			3

Unused

> +#define CSIPHY_DNP_PARAMS				4
> +#define CSIPHY_2PH_REGS					5
> +#define CSIPHY_3PH_REGS					6

Both are unused

> +#define CSIPHY_SKEW_CAL					7
> +
> +/* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
> +static const struct
> +mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
> +	/* Power up lanes 2ph mode */
> +	{.reg_addr = 0x1014, .reg_data = 0xD5, .param_type = CSIPHY_DEFAULT_PARAMS},

As you are moving the driver, it might also make sense to split / rework
the huge table with the code sequence. The code is easier to adapt.

As you can see in the tables, there are repetitive code patterns, which
correspond to the lane programming. Once that is extracted, it would be
much, much easier to manipulate the data.

It's fine if you are just moving the data with the intention of
improving it later, but then please state so in the commit message.

Also, please use low-case hex, I think it was a recommended practice
nowadays.

> +	{.reg_addr = 0x101C, .reg_data = 0x7A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x1018, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +
> +	{.reg_addr = 0x0094, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x00A0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0090, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0098, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0094, .reg_data = 0x07, .delay_us = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0030, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0000, .reg_data = 0x8E, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0038, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x002C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0034, .reg_data = 0x0F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x001C, .reg_data = 0x0A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x003C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0004, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0020, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0010, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0094, .reg_data = 0xD7, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x005C, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0060, .reg_data = 0xBD, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0064, .reg_data = 0x7F, .param_type = CSIPHY_SKEW_CAL},
> +
> +	{.reg_addr = 0x0E94, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0EA0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E90, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E98, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E94, .reg_data = 0x07, .delay_us =  0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E30, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E28, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E00, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E0C, .reg_data = 0xFF, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E38, .reg_data = 0x1F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E2C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E34, .reg_data = 0x0F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E1C, .reg_data = 0x0A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E14, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E3C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E04, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E20, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0E08, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0E10, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +
> +	{.reg_addr = 0x0494, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x04A0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0490, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0498, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0494, .reg_data = 0x07, .delay_us =  0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0430, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0400, .reg_data = 0x8E, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0438, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x042C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0434, .reg_data = 0x0F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x041C, .reg_data = 0x0A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x043C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0404, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0420, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0410, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0494, .reg_data = 0xD7, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x045C, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0460, .reg_data = 0xBD, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0464, .reg_data = 0x7F, .param_type = CSIPHY_SKEW_CAL},
> +
> +	{.reg_addr = 0x0894, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x08A0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0890, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0898, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0894, .reg_data = 0x07, .delay_us =  0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0830, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0800, .reg_data = 0x8E, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0838, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x082C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0834, .reg_data = 0x0F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x081C, .reg_data = 0x0A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0814, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x083C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0804, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0820, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0808, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0810, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0894, .reg_data = 0xD7, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x085C, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0860, .reg_data = 0xBD, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0864, .reg_data = 0x7F, .param_type = CSIPHY_SKEW_CAL},
> +
> +	{.reg_addr = 0x0C94, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0CA0, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C90, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C98, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C94, .reg_data = 0x07, .delay_us =  0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C30, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C00, .reg_data = 0x8E, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C38, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C2C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C34, .reg_data = 0x0F, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C1C, .reg_data = 0x0A, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C14, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C3C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C04, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C20, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C08, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{.reg_addr = 0x0C10, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0C94, .reg_data = 0xD7, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0C5C, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0C60, .reg_data = 0xBD, .param_type = CSIPHY_SKEW_CAL},
> +	{.reg_addr = 0x0C64, .reg_data = 0x7F, .param_type = CSIPHY_SKEW_CAL},
> +};
> +
> +static inline const struct mipi_csi2phy_device_regs *
> +csi2phy_dev_to_regs(struct mipi_csi2phy_device *csi2phy)
> +{
> +	return &csi2phy->soc_cfg->reg_info;
> +}
> +
> +static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2phy)
> +{
> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> +	u32 tmp;
> +
> +	writel(CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
> +
> +	tmp = readl_relaxed(csi2phy->base +
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
> +	csi2phy->hw_version = tmp;
> +
> +	tmp = readl_relaxed(csi2phy->base +
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
> +	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
> +
> +	tmp = readl_relaxed(csi2phy->base +
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
> +	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
> +
> +	tmp = readl_relaxed(csi2phy->base +
> +			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
> +	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
> +
> +	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
> +}
> +
> +/*
> + * phy_qcom_mipi_csi2_reset - Perform software reset on CSIPHY module
> + * @phy_qcom_mipi_csi2: CSIPHY device
> + */
> +static void phy_qcom_mipi_csi2_reset(struct mipi_csi2phy_device *csi2phy)
> +{
> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> +
> +	writel(CSIPHY_3PH_CMN_CSI_COMMON_CTRL0_PHY_SW_RESET,
> +	       csi2phy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 0));
> +	usleep_range(5000, 8000);
> +	writel(0x0, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 0));
> +}
> +
> +/*
> + * phy_qcom_mipi_csi2_settle_cnt_calc - Calculate settle count value
> + *
> + * Helper function to calculate settle count value. This is
> + * based on the CSI2 T_hs_settle parameter which in turn
> + * is calculated based on the CSI2 transmitter link frequency.
> + *
> + * Return settle count value or 0 if the CSI2 link frequency
> + * is not available
> + */
> +static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
> +{
> +	u32 t_hs_prepare_max_ps;
> +	u32 timer_period_ps;
> +	u32 t_hs_settle_ps;
> +	u8 settle_cnt;
> +	u32 ui_ps;
> +
> +	if (link_freq <= 0)
> +		return 0;
> +
> +	ui_ps = div_u64(PSEC_PER_SEC, link_freq);
> +	ui_ps /= 2;
> +	t_hs_prepare_max_ps = 85000 + 6 * ui_ps;
> +	t_hs_settle_ps = t_hs_prepare_max_ps;
> +
> +	timer_period_ps = div_u64(PSEC_PER_SEC, timer_clk_rate);
> +	settle_cnt = t_hs_settle_ps / timer_period_ps - 6;
> +
> +	return settle_cnt;
> +}
> +
> +static void
> +phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
> +				     u8 settle_cnt)
> +{
> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> +	const struct mipi_csi2phy_lane_regs *r = regs->init_seq;
> +	int i, array_size = regs->lane_array_size;
> +	u32 val;
> +
> +	for (i = 0; i < array_size; i++, r++) {
> +		switch (r->param_type) {
> +		case CSIPHY_SETTLE_CNT_LOWER_BYTE:
> +			val = settle_cnt & 0xff;
> +			break;
> +		case CSIPHY_SKEW_CAL:
> +			/* TODO: support application of skew from dt flag */
> +			continue;
> +		default:
> +			val = r->reg_data;
> +			break;
> +		}
> +		writel(val, csi2phy->base + r->reg_addr);
> +		if (r->delay_us)
> +			udelay(r->delay_us);
> +	}
> +}
> +
> +static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
> +					   struct mipi_csi2phy_stream_cfg *cfg)
> +{
> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> +	struct mipi_csi2phy_lanes_cfg *lane_cfg = &cfg->lane_cfg;
> +	u8 settle_cnt;
> +	u8 val;
> +	int i;
> +
> +	settle_cnt = phy_qcom_mipi_csi2_settle_cnt_calc(cfg->link_freq, csi2phy->timer_clk_rate);
> +
> +	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE;
> +	for (i = 0; i < cfg->num_data_lanes; i++)
> +		val |= BIT(lane_cfg->data[i].pos * 2);
> +
> +	writel(val, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 5));
> +
> +	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B;
> +	writel(val, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
> +
> +	val = 0x02;
> +	writel(val, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 7));
> +
> +	val = 0x00;
> +	writel(val, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 0));
> +
> +	phy_qcom_mipi_csi2_gen2_config_lanes(csi2phy, settle_cnt);
> +
> +	/* IRQ_MASK registers - disable all interrupts */
> +	for (i = CSI_COMMON_STATUS_NUM; i < CSI_CTRL_STATUS_INDEX; i++) {
> +		writel(0, csi2phy->base +
> +		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, i));
> +	}
> +
> +	return 0;
> +}
> +
> +static void
> +phy_qcom_mipi_csi2_lanes_disable(struct mipi_csi2phy_device *csi2phy,
> +				 struct mipi_csi2phy_stream_cfg *cfg)
> +{
> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> +
> +	writel(0, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 5));
> +
> +	writel(0, csi2phy->base +
> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
> +}
> +
> +static const struct mipi_csi2phy_hw_ops phy_qcom_mipi_csi2_ops_3ph_1_0 = {
> +	.hw_version_read = phy_qcom_mipi_csi2_hw_version_read,
> +	.reset = phy_qcom_mipi_csi2_reset,
> +	.lanes_enable = phy_qcom_mipi_csi2_lanes_enable,
> +	.lanes_disable = phy_qcom_mipi_csi2_lanes_disable,
> +};
> +
> +static const struct mipi_csi2phy_clk_freq zero = { 0 };
> +
> +static const struct mipi_csi2phy_clk_freq dphy_4nm_x1e_csiphy = {
> +	.freq = {
> +		300000000, 400000000, 480000000
> +	},
> +	.num_freq = 3,
> +};
> +
> +static const struct mipi_csi2phy_clk_freq dphy_4nm_x1e_csiphy_timer = {
> +	.freq = {
> +		266666667, 400000000
> +	},
> +	.num_freq = 2,

As you are migrating to a modern codebase, these values should be set
via the OPP tables instead.

> +};
> +
> +static const char * const x1e_clks[] = {
> +	"camnoc_axi",
> +	"cpas_ahb",
> +	"csiphy",
> +	"csiphy_timer"
> +};
> +
> +const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
> +	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
> +	.reg_info = {
> +		.init_seq = lane_regs_x1e80100,
> +		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
> +		.common_regs_offset = 0x1000,
> +		.generation = GEN2,

Does this generation match anything in the actual hardware?

> +	},
> +	.supply_names = (const char *[]){
> +		"vdda-0p8",
> +		"vdda-1p2"
> +	},
> +	.num_supplies = 2,
> +	.clk_names = (const char **)x1e_clks,
> +	.num_clk = ARRAY_SIZE(x1e_clks),
> +	.opp_clk = x1e_clks[2],
> +	.timer_clk = x1e_clks[3],
> +	.clk_freq = {
> +		zero,
> +		zero,
> +		dphy_4nm_x1e_csiphy,
> +		dphy_4nm_x1e_csiphy_timer,
> +	},
> +};
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> new file mode 100644
> index 0000000000000..454144f81b719
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> @@ -0,0 +1,307 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025, Linaro Ltd.
> + */
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/pm_opp.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-mipi-dphy.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#include "phy-qcom-mipi-csi2.h"
> +
> +#define CAMSS_CLOCK_MARGIN_NUMERATOR 105
> +#define CAMSS_CLOCK_MARGIN_DENOMINATOR 100
> +
> +static inline void phy_qcom_mipi_csi2_add_clock_margin(u64 *rate)
> +{
> +	*rate *= CAMSS_CLOCK_MARGIN_NUMERATOR;
> +	*rate = div_u64(*rate, CAMSS_CLOCK_MARGIN_DENOMINATOR);
> +}
> +
> +static int
> +phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
> +				   s64 link_freq)
> +{
> +	const struct mipi_csi2phy_soc_cfg *soc_cfg = csi2phy->soc_cfg;
> +	unsigned long rates[MAX_CSI2PHY_CLKS] = {0};
> +	struct device *dev = csi2phy->dev;
> +	unsigned long vote_freq = 0;
> +	int i, j;
> +	int ret;
> +
> +	for (i = 0; i < soc_cfg->num_clk; i++) {
> +		const struct mipi_csi2phy_clk_freq *clk_freq = &soc_cfg->clk_freq[i];
> +		const char *clk_name = soc_cfg->clk_names[i];
> +		struct clk *clk = csi2phy->clks[i].clk;
> +		u64 min_rate = link_freq / 4;
> +		long round_rate;
> +
> +		phy_qcom_mipi_csi2_add_clock_margin(&min_rate);
> +
> +		/* This clock should be enabled only not set */
> +		if (!clk_freq->num_freq)
> +			continue;
> +
> +		for (j = 0; j < clk_freq->num_freq; j++)
> +			if (min_rate < clk_freq->freq[j])
> +				break;
> +
> +		if (j == clk_freq->num_freq) {
> +			dev_err(dev,
> +				"Pixel clock %llu is too high for %s\n",
> +				min_rate, clk_name);
> +			return -EINVAL;
> +		}
> +
> +		/* if sensor pixel clock is not available
> +		 * set highest possible CSIPHY clock rate
> +		 */
> +		if (min_rate == 0)
> +			j = clk_freq->num_freq - 1;
> +
> +		round_rate = clk_round_rate(clk, clk_freq->freq[j]);
> +		if (round_rate < 0) {
> +			dev_err(dev, "clk round rate failed: %ld\n",
> +				round_rate);
> +			return -EINVAL;
> +		}

All of this code looks like a poor man's implementation of the OPP
handling, finding the highest possible clock rate, etc.

> +
> +		rates[i] = round_rate;
> +
> +		if (!strcmp(clk_name, soc_cfg->timer_clk))
> +			csi2phy->timer_clk_rate = round_rate;
> +
> +		if (!strcmp(clk_name, soc_cfg->opp_clk))
> +			vote_freq = round_rate;
> +	}
> +
> +	if (!vote_freq) {
> +		dev_err(dev, "Unable to find operating point frequency\n");
> +		return -ENODEV;
> +	};
> +
> +	dev_dbg(dev, "OPP freq: %lu Hz\n", vote_freq);
> +
> +	ret = dev_pm_opp_set_rate(dev, vote_freq);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set OPP rate: %d\n", ret);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < soc_cfg->num_clk; i++) {
> +		if (rates[i] == 0)
> +			continue;
> +
> +		dev_dbg(dev, "Setting clk %s to %lu Hz\n",
> +			soc_cfg->clk_names[i], rates[i]);
> +
> +		ret = clk_set_rate(csi2phy->clks[i].clk, rates[i]);
> +		if (ret < 0) {
> +			dev_err(dev, "clk_set_rate failed for %s: %d\n",
> +				soc_cfg->clk_names[i], ret);
> +			return ret;
> +		}
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
