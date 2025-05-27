Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F40B5C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps0Bw3TklS9pEzXRFSEM+oZs+eqskdlOPzOMX1ZYWvo=; b=fylzEmPByDGnLr
	BWIy8DReVLzJ6N3mSmIm2XxKL9f1II4E0WCtLlx2f4ZghMR0RLMPRBzvl9qfqBZn//MosocoH779O
	YJbHEY/6K2ue8n8a0sAGzjDkzLUXk2nFWVvpSsr3frLlmMZgAVb0i7PWuHeznboeJjc7pv4w954hY
	lUgLCYojJNvNAR/7aIkzgT4AXM8mB+OIxIr/PCaSqXmdCAgPgMpcnivDM0XcnkywSJy3sPd6EnyOK
	wfsLmtv+xi+c63/3c5t9U/q/qGLaUV1o5YWIMDdHrkfQhdcvxlEbf0C5XQngQEcaU4cFeeTSp6jZR
	fGU4sdWiLCVbe6K28WXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2GL-0000000Bequ-2Wz5;
	Tue, 27 May 2025 21:55:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK2GJ-0000000BeqX-2tmx
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:55:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHGGXl002206
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:55:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ne0gIQPeeXA6jgzWvpGK1bbR
	cxhFrzGXDtK9BlZZ+0M=; b=NiN1Q+zxSFX1HVMJWUPBbHM1fj+PQogE32B9s9rh
	fZGbO7tmuoSg1WWTh+X/wNeIxzv0byXz2o5MpeZ5EJEYngFXnJmyuxsj+pZaqL+x
	OwjeiHW4Osj5N2T807P3WR+ThjkQXlskCiqSrb6Ft4NU/hgNelJnFnDEVmh+YUUd
	XLdVQ2Dr/jbokc+ZoGPJquor1Dv2Utws+QGCAAmbn3qdrWrTXFxlM1fW0ffpjDCF
	KHS/QV+HAvQa74q+uDrL55uZmLw4WGB011gvLeLYAH6SG1XT9/k2a1nMdG9gbliK
	NPMXo7u3nSwd7VKo7XkLPp7n2FOhS9PFLPr3mPr6Okajhw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkt2jm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:55:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fa9d9b3e28so114991026d6.3
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:55:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748382905; x=1748987705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ne0gIQPeeXA6jgzWvpGK1bbRcxhFrzGXDtK9BlZZ+0M=;
        b=WEM6iAyNvu3vX3bD/Hv0oJ8fpPVzkGl9ccB3wN+JYfysQOdJ6zXY/In1Me1NrunmbN
         9JFp5IzIOUpgwZjRHmaooNIvQzRwe5zfK8Jm9rRVV6V1Ksr9l/7qQ4kXh41m8VTeLhif
         yoKeWa2C/SPfciN4dDunYJsQ6U6ZMRrTvw81MRITQzHWYKkHGI3Vb34X4hyUb9vQGK5f
         ijT/Z+z9x5rWQ+Zkfx1nDzFX0PXVkL+m2n24lOSabFuuMoOlEuVJ2iL9aqfs/OrDYlbo
         fY+Y6QAblaFF8RRloIoFli74W/2X+VyP1GSxyJmjOdf3C5kvBamKFz0bBoVEDewaGmsG
         AYhw==
X-Forwarded-Encrypted: i=1; AJvYcCVuuEZd14lgVMnKhpahuZ9YnOThOinD2LdYsOfLjubV5j51qMPVfG/mcdm7yf0hxnp0Sjs5k1CZDdg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi6FJ5satPSSfBagTUt7jN3G+7K3gGp0Ljri9MlV1GOBMi55BR
	ZGp5ljm+sQ83roD+Is1NICbhDl31Rpo4Upprt9WOvvsNqh56cAsbepPvN2mOfBBroe9A0Ex6MEh
	Rb0Bd4QRiT0oD39ly+bOYqgkgIPxmkJn37xN7EX1BAqR+fnpfNEV3Gn/eDsEPxPKfI/Se
X-Gm-Gg: ASbGncvX4rPQj6N+gL2m4AotLa6k1DDOChFzYq+esNZjEUDIz99v6lDCCjrL4DORvkD
	e7fxgBB9Q+HcJ3OuPtRQcVzXsJO81LYQVXTTrXLintqdnEIHWl5BP9WBoQ7os1WWl8o7t1J6R/X
	dz9WwZrNlaORxRjZucwBMMGatJugGSV7MjnPidHkIQaUxMEcHov2wVA81sqirKsAWA2ZoeeDopQ
	h/gwfE9Eg+rj6YYrEzNuu4MFZjgBW+7OT4cX1ESzZ993HV63HL7LJM+Py9EMX02OquKPWHqxYqr
	zJqp0O9H+Em4CgkSpxUZNnRYxKX/qvSxvZrNpnFdZpPlSUnd3d4/IvYa+6UcCtWrFQ/5xBtjYww
	=
X-Received: by 2002:a05:6214:5095:b0:6f2:d25e:8f60 with SMTP id 6a1803df08f44-6fa9d2aea48mr243069906d6.22.1748382905545;
        Tue, 27 May 2025 14:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcBAog/0QNelbBSobBObHpDOHFG6hBJ6xtUMTJD3tXlDyIcI+Swq6mULnQ7WDRT6XsVldWdA==
X-Received: by 2002:a05:6214:5095:b0:6f2:d25e:8f60 with SMTP id 6a1803df08f44-6fa9d2aea48mr243069596d6.22.1748382905125;
        Tue, 27 May 2025 14:55:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532edde019sm45678e87.49.2025.05.27.14.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:55:03 -0700 (PDT)
Date: Wed, 28 May 2025 00:55:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
X-Proofpoint-GUID: d3xK_lKyEJjTzWoH_icw-S4Q-RujCQX8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4NSBTYWx0ZWRfX3NCJt+Qu+71v
 g8hzACAfENIhujcGTqx2Z7SMCdtOyOLIv/j8ASX+oTGs6Gbi4LlNZgFVCDkpg3Ew21DRTGIT8VA
 ShrKaxJ/u89Y1hjxZk9ZB4m1BM95q6FSL9TyxyYcwcGUxL40f475Y07xVGpB0hY5dNfnQGbo8/T
 5R4rF2kyydjnm/OQDZTlE0egLhYE5aOqmqnZtwlBdosh0fOg/FVBoBR0EpQ7Z7bdlQ/YFcziUvs
 +YK0Kslu1gGNNNIS30+Sd2rsV/9GMKrOOxlvs3IhwTGsHrtPTNLZKB4edzutZ4e7sUX8dN0I3NO
 0Ko915BYm9mAwQwg3WySpcl8vd4gHwM/SKme3dX798vs5I0EsUBEke7SRQbvSe1/Ih35SRhLiAu
 UAqreg65LeS/CoPx9CsN12NxQ2Lgb/HITjDv4sCNwNuSlRjorAdstT18+AQar5Oey2/pa3Xu
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=683634ba cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=RX03QJoVYHKw4zbBXYoA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: d3xK_lKyEJjTzWoH_icw-S4Q-RujCQX8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_145507_752500_FAD2EF7F 
X-CRM114-Status: GOOD (  38.97  )
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

On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> [konrad: renaming, rewording, bug fixes]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 121 ++++++++++++++++++++++++++++--
>  1 file changed, 116 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index b34ad92021a656b39562e2685a1e7a0a93660a35..4c9d92d6e0b8508191d052bd85dd135e4b8d7cc7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
> +#include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_mux.h>
>  
>  #include <drm/bridge/aux-bridge.h>
> @@ -1709,6 +1710,8 @@ struct qmp_combo {
>  
>  	struct typec_switch_dev *sw;
>  	enum typec_orientation orientation;
> +
> +	struct typec_mux_dev *mux;
>  };
>  
>  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -3582,17 +3585,112 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
>  	return 0;
>  }
>  
> -static void qmp_combo_typec_unregister(void *data)
> +static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +	struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	enum qmpphy_mode new_mode;
> +	unsigned int svid;
> +
> +	guard(mutex)(&qmp->phy_mutex);
> +
> +	if (state->alt)
> +		svid = state->alt->svid;
> +	else
> +		svid = 0;
> +
> +	if (svid == USB_TYPEC_DP_SID) {
> +		switch (state->mode) {
> +		/* DP Only */
> +		case TYPEC_DP_STATE_C:
> +		case TYPEC_DP_STATE_E:
> +			new_mode = QMPPHY_MODE_DP_ONLY;
> +			break;
> +
> +		/* DP + USB */
> +		case TYPEC_DP_STATE_D:
> +		case TYPEC_DP_STATE_F:
> +
> +		/* Safe fallback...*/
> +		default:
> +			new_mode = QMPPHY_MODE_USB3DP;
> +			break;
> +		}
> +	} else {
> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */

Why? if the SID is not DP, then there can't be a DP stream.

> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
> +			new_mode = QMPPHY_MODE_USB3_ONLY;
> +		else
> +			new_mode = QMPPHY_MODE_USB3DP;
> +	}
> +
> +	if (new_mode == qmp->qmpphy_mode) {
> +		dev_dbg(qmp->dev, "typec_mux_set: same qmpphy mode, bail out\n");
> +		return 0;
> +	}
> +
> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
> +		return 0;
> +	}

Consider the following scenario: connect DP dongle, use modetest to
setup DP stream, disconnect dongle, connect USB3 device. What would be
the actual state of the PHY? Modetest is still running, so DP stream is
not going to be shut down from the driver.

I think we might need a generic notifier from the PHY to the user,
telling that the PHY is going away (or just that the PHY is changing the
state). Then it would be usable by both the DP and USB drivers to let
them know that they should toggle the state.

> +
> +	dev_dbg(qmp->dev, "typec_mux_set: switching from qmpphy mode %d to %d\n",
> +		qmp->qmpphy_mode, new_mode);
> +
> +	qmp->qmpphy_mode = new_mode;
> +
> +	if (qmp->init_count) {
> +		if (qmp->usb_init_count)
> +			qmp_combo_usb_power_off(qmp->usb_phy);
> +
> +		if (qmp->dp_init_count)
> +			writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +
> +		qmp_combo_com_exit(qmp, true);
> +
> +		/* Now everything's powered down, power up the right PHYs */
> +		qmp_combo_com_init(qmp, true);
> +
> +		if (new_mode == QMPPHY_MODE_DP_ONLY) {
> +			if (qmp->usb_init_count)
> +				qmp->usb_init_count--;
> +		}
> +
> +		if (new_mode == QMPPHY_MODE_USB3DP || new_mode == QMPPHY_MODE_USB3_ONLY) {
> +			qmp_combo_usb_power_on(qmp->usb_phy);
> +			if (!qmp->usb_init_count)
> +				qmp->usb_init_count++;
> +		}
> +
> +		if (new_mode == QMPPHY_MODE_DP_ONLY || new_mode == QMPPHY_MODE_USB3DP) {
> +			if (qmp->dp_init_count)
> +				cfg->dp_aux_init(qmp);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static void qmp_combo_typec_switch_unregister(void *data)
>  {
>  	struct qmp_combo *qmp = data;
>  
>  	typec_switch_unregister(qmp->sw);
>  }
>  
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static void qmp_combo_typec_mux_unregister(void *data)
> +{
> +	struct qmp_combo *qmp = data;
> +
> +	typec_mux_unregister(qmp->mux);
> +}
> +
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>  	struct typec_switch_desc sw_desc = {};
> +	struct typec_mux_desc mux_desc = { };
>  	struct device *dev = qmp->dev;
> +	int ret;
>  
>  	sw_desc.drvdata = qmp;
>  	sw_desc.fwnode = dev->fwnode;
> @@ -3603,10 +3701,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>  		return PTR_ERR(qmp->sw);
>  	}
>  
> -	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
> +	ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
> +	if (ret)
> +		return ret;
> +
> +	mux_desc.drvdata = qmp;
> +	mux_desc.fwnode = dev->fwnode;
> +	mux_desc.set = qmp_combo_typec_mux_set;
> +	qmp->mux = typec_mux_register(dev, &mux_desc);
> +	if (IS_ERR(qmp->mux)) {
> +		dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
> +		return PTR_ERR(qmp->mux);
> +	}
> +
> +	return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
>  }
>  #else
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>  	return 0;
>  }
> @@ -3839,7 +3950,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	ret = qmp_combo_typec_switch_register(qmp);
> +	ret = qmp_combo_typec_register(qmp);
>  	if (ret)
>  		goto err_node_put;
>  
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
