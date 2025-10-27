Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3548CCF9EA
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 14:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j/928EqDqOm4npICBDBSC0KOTZj0Yx75R13hsqo1fw=; b=eKrfmJ2xQSueWI
	NZboS/LUCd9jGMjvTf+Dkk46X8WNb+wCvT1k+IOhb8Nijagzd0BRxcsGMWeS2H0YUW6i4n/fJvLe9
	2AzFWYoxB9hz0gOuDzwv9Tj2Dx+2PiWkAErjJnxNN3N40/5VTuUD3xZw19ZE2LWAjb/wmGw2tTvgn
	bAYmHVMcvd3UBTIiLwshhXFN/aA0pm3CR6GQIevG8JNPtZK4PzVtEHiXWi5Lx9HjukPjFx2PH2YnC
	/XcY7j1kNfcj5B3rE+1iiBcilT2DqqTCLGxp6levtCUi1Bdkpj3cdyRQ0RH9q1t9uhJgIcc/TVunN
	Pp0MKiBm2hEN3tmP6saQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO64-0000000E8VG-39Kl;
	Mon, 27 Oct 2025 14:21:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO62-0000000E8V4-3mw1
	for linux-phy@bombadil.infradead.org;
	Mon, 27 Oct 2025 14:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=mqEyAlMoyPjjWri7Dhksmow/X9ZTGgqFe54wF7mS7tY=; b=T/+Ulthswto9KsaeS4qeCODXph
	ocrC/J5RnYIcUJKW8SuF4+h3R3nQiI900iItwqIe1C6S4dYfmRr/zNbMhTVH+mxzjCTv6b82hbnIg
	00ywr/Q/rvIU2Ujc8BSB7UF7aF91DAXcj9BF1LKNBQrejFtk/h1DuY5bDjzBi8/QeR5t2zg3T8R74
	LYw+qFYBjhWGTkfKXFX4VZH4SMU2p4npL4IUZBQTRhjUxFfNmdv2QDxN05cJQTY5EXdxl4pNKFR5e
	MYTrD1qrL2l9Cjn4kDEso4T+A5mdPl+vFLxbzfh/qouSlV/VYsjHQ5sbMhBW4DZDSNrEPwqmIgYuy
	s3UI8CPw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDNEF-00000002Hwe-0YVw
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 13:25:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RBJgep2546697
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 14:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mqEyAlMoyPjjWri7Dhksmow/
	X9ZTGgqFe54wF7mS7tY=; b=lz6svji0iESdcxo7j8VyKSWbWSl9BSItb2x/de+V
	far2Ky74YViG1RqiH0WZogOvlNxRm/JaUIY7/EOzokXZc4v406JobrKPmyfvbdIt
	KeID2Rbpm3xQwEjgbStrmIQTo5hRcZc5SVJh9/1dHVYNdTigbGdM3ruBay3f8JQ9
	D7kZX3bEKAqHUCem1ls1ElRqKt6rHBLOXZjOZic4YyxBPhtsE/8xTM67wdCAlfF4
	824olMRlEB0njJ5W4EaAAG8I+JfEvMDHo7306zfBaWM9iQ3WgO7a63lHWKYy6Lfr
	+XUoSs3+cBP+RNynSt29MJX4XAw6Fe5AL6gbxbwiE1Eusw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a27s2ggdr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 14:21:13 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5db2b4d6b2dso2089385137.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 07:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761574873; x=1762179673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mqEyAlMoyPjjWri7Dhksmow/X9ZTGgqFe54wF7mS7tY=;
        b=tpAPh4df2/vkOBop7T/es8zDw1AZbUFqD2xvasBNz1DPb/6vvipLrrjtis5/kZUI2O
         r149r8oenlY/NnS4gHOTjl1KXnt8y25HsGG0jE/xhPuUNrbB5+8XuqSXaYp0aEVdgmMd
         Fyqh8LX9kUGXyJ9IYMTGRBCQMjkL9D1J5KpeealNVmQ6HGtkbcgL0kz+x7Qtppm96dTa
         wKQpGJsn7b/Q7jxhYXOM94UzFZQGNrOLmiqTixUGqMLuxqucVkUxc8dqHonrMVER9L5W
         7Pcc+dYv0/79UsjnYE1VNOMkTHdccgdgBIOmrsvtwnKZiPSsKFJlAZSQ/SZEv6zSGJl9
         EvDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUCLMUN8gpKIrXLNFGpvYV4vGfXEUGcD8Kxw/8zZttJAY8B1oA77qlQTjXJo9aSDp5FMticHtVyok=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhxsF8K7RUI+m0K+Ow+rP1+JTGzTNdP8zLlErdgG6yd+mYm5O2
	mrsdnLWvdEK+WtqEeUVL+AGmXO3YLjNwPs+hQb3QKj7SyurdlW8ln/EkqclruJd9uWUILWTRll0
	1PngmUnytHoN1+QcDOhrXkeBV0tvGnvaFnld2T/rzU/qHOCCcDgKWR9OlHmpFPOpfyz5m
X-Gm-Gg: ASbGnctzftkKcGNV10Bt5ndX645foiGXVyrSaBZmgWFMnxUnkcmmkzRGdGdW4ZuE4Hr
	Ng7fE5/AbPxDF3nY9ZlM43F4Q62vURTz75fWU7f9w7grrEd6gaK/tBI1CdyK4bCNkRPV6vms2WV
	mNK+/Fl9hSTLpN4gThjTDnWoJmVg6Hr2eBuwcNbtReZDzkBnzqHxKmnCRwaKcO/4HbVcxhTVJeJ
	070uxoRj3D9pJMEWMA1eToN5f40TxwoRHoEXaC2G6goO0a9Ir7O83VB5nn/ebynfuYigKIkxC1V
	+eguZ6VsBgt0CbWgXmwwv/ZL4ssDBr6qzuiC0WMrlfvsAtVY8TvxqXAqwmgZcMA0UaEClKklPMu
	n4RKkc5xpVIS1csS0ZIT3DvInlbxq9Gc5VBvhExpAokfamL/SxaoHusCS71Zn09u+rMUJ8gGGjY
	0lnJPtpZVzO9yI
X-Received: by 2002:a05:6102:952:b0:5d6:c3e:5728 with SMTP id ada2fe7eead31-5db2e5b4d61mr4460447137.42.1761574872184;
        Mon, 27 Oct 2025 07:21:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7HAlRUzeU1w/co5sVduYcLtN7aHEyD+NXHR6xe1nr2J4PfzRBd84Kx4ZOyIrMj9fsP517cw==
X-Received: by 2002:a05:6102:952:b0:5d6:c3e:5728 with SMTP id ada2fe7eead31-5db2e5b4d61mr4460422137.42.1761574871359;
        Mon, 27 Oct 2025 07:21:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f805d1sm2312703e87.93.2025.10.27.07.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:21:10 -0700 (PDT)
Date: Mon, 27 Oct 2025 16:21:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/8] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <ktjmbmfd37tm6ij3pqbrbhfounizz4znmqvearvh4spvuky6i6@pw5czztggbjm>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: NPUTIt9AeRIdqVOugq7SRwKhK8LtNoOt
X-Proofpoint-GUID: NPUTIt9AeRIdqVOugq7SRwKhK8LtNoOt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEzMyBTYWx0ZWRfXyamB2dQGc2ny
 q83pVix6imr5BL5JML15Z4fAfOBIVPWhuJ62sEt9AJaE4oiDRxwoaR0O/qI6d3jPnlrNJwq00ZE
 kG9qbq7In01kInbNTVfsG6Zv4Fhu5I4YWaZWN5+0skLo2JCMRwDn5z4BKThuerT4EY1HOWACDz3
 n7N6SjywA4LkA+pDpNHs4vqBwLi7vcSZWIIHhaDXcy1r1rBLLOyvbKAzzJy+wjfdQdVHWVaw4bd
 pNqIhCegBLAazs1orj3H6AoLbcFeahfkaDgwLNDJSo4m5qlFz9PMBbak9kKNpJ7VDDNYLELUZrt
 EHWfyi2HKGQ9QU+wMAPVpTUU007mhvK/8QWa+j/qgcWSYfM3naaoFTyu2Q6YsZY8TcGhEaUlEHC
 Wm3QIZQqg76PXVndLNomMR3ww2ZW3w==
X-Authority-Analysis: v=2.4 cv=R60O2NRX c=1 sm=1 tr=0 ts=68ff7fd9 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FO_8yRmWMXsdvDet6fUA:9 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_132543_460721_9D9E00CC 
X-CRM114-Status: GOOD (  26.73  )
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

On Fri, Oct 24, 2025 at 05:47:44PM -0700, Wesley Cheng wrote:
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
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 288 ++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>  .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>  7 files changed, 1215 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1caa1fb6a8c7..d1534ed7200b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -30,9 +30,11 @@
>  
>  #include "phy-qcom-qmp.h"
>  #include "phy-qcom-qmp-pcs-aon-v6.h"
> +#include "phy-qcom-qmp-pcs-aon-v8.h"
>  #include "phy-qcom-qmp-pcs-misc-v3.h"
>  #include "phy-qcom-qmp-pcs-misc-v4.h"
>  #include "phy-qcom-qmp-pcs-misc-v5.h"
> +#include "phy-qcom-qmp-pcs-misc-v8.h"
>  #include "phy-qcom-qmp-pcs-usb-v4.h"
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v6.h"
> @@ -46,6 +48,8 @@
>  #include "phy-qcom-qmp-dp-phy-v5.h"
>  #include "phy-qcom-qmp-dp-phy-v6.h"
>  
> +#include "phy-qcom-qmp-usb43-pcs-v8.h"
> +
>  /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
>  /* DP PHY soft reset */
>  #define SW_DPPHY_RESET				BIT(0)
> @@ -97,6 +101,7 @@ enum qphy_reg_layout {
>  	QPHY_TX_HIGHZ_DRVR_EN,
>  	QPHY_TX_TRANSCEIVER_BIAS_EN,
>  
> +	QPHY_AON_TOGGLE_ENABLE,
>  	/* Keep last to ensure regs_layout arrays are properly initialized */
>  	QPHY_LAYOUT_SIZE
>  };
> @@ -259,6 +264,236 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V8_TX_TRANSCEIVER_BIAS_EN,
>  };
>  
> +static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_SW_RESET]			= QPHY_V6_N4_PCS_SW_RESET,
> +	[QPHY_START_CTRL]			= QPHY_V6_N4_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]			= QPHY_V6_N4_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_N4_PCS_POWER_DOWN_CONTROL,

V8 PHY should not be using V6 register offsets.

> +
> +	/* In PCS_USB */
> +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> +
> +	[QPHY_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_USB3_AON_TOGGLE_ENABLE,
> +
> +	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V6_COM_RESETSM_CNTRL,
> +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V6_COM_C_READY_STATUS,
> +	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
> +	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
> +
> +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
> +
> +	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_N4_TX_TX_POL_INV,
> +	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_N4_TX_TX_DRV_LVL,
> +	[QPHY_TX_TX_EMP_POST1_LVL]		= QSERDES_V6_N4_TX_TX_EMP_POST1_LVL,
> +	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_N4_TX_HIGHZ_DRVR_EN,
> +	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN,
> +};
> +
> @@ -2528,6 +2784,27 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>  };
>  
> +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
> +
> +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
> +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
> +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
> +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
> +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
> +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),

DP tables are missing.

> +
> +	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_refgen,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
> +};
> +
>  static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -3024,6 +3301,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *com = qmp->com;
> +	void __iomem *pcs_aon = qmp->pcs_aon;
>  	int ret;
>  	u32 val;
>  
> @@ -3059,6 +3337,10 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>  			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>  			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>  
> +	/* override hardware control for reset of qmp phy */
> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
> +
>  	/* Use software based port select and switch on typec orientation */
>  	val = SW_PORTSELECT_MUX;
>  	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> @@ -3236,6 +3518,8 @@ static int qmp_combo_usb_power_on(struct phy *phy)
>  	qmp_configure_lane(qmp->dev, rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
>  
>  	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
> +	qmp_configure(qmp->dev, qmp->pcs_misc, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
> +

Extra empty line.

>  
>  	if (pcs_usb)
>  		qmp_configure(qmp->dev, pcs_usb, cfg->pcs_usb_tbl,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
