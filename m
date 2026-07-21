Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F3FC4452D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDVndW7T9KixHM/wuZHouqdkBSB/XA2IKpTr10yDyj8=; b=LEfHPFiym995pw
	r+6366HRa6B5ox+NJFUmPy1fTUzibc/qFdR+nVxZcB844UKbL5oNTWr25mOL+rXN7grHr30G26LS/
	2HT8K/kxzjjMk7it/MmUne7QigGO/gZrKDyOBN6Md3ib/X6jcMbYhy/vlIPwslRESka0t6312oPxX
	z2H8un9ppTtWgVOcSAyHdpKV4wgkZ1nHWQW2Mkj5FlArJz43WQPhFH1nlJkSp1VkJOLyfbdcMt/dX
	5rIZ1ONwgh/4+++W9QpxFcb877HgoRADPIuVz2tLLJI6kjk06CCBE6v4gXLcqLr2Ll8gCvadg8KJF
	NWel3ebtfDi9mF5RaPLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJrg-0000000Aac8-2S7L;
	Tue, 21 Jul 2026 23:27:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJre-0000000Aabi-38Y5
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 23:27:08 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZ2Ni2624904
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 23:27:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AGwMeV7UNLwY0KpOqMhLEGJT
	auAHKsaW6udyi59jP0E=; b=n3Cb1rdtxsJK37aWJV6Url4xdeqKXfW3hKkDIqnj
	w0pKl8CukDCeKp8PeScTvKbnhfMt0suxWLxh9KCAfxeG84+wL/OXNiGT2ro2RJCi
	5FJ04A5GEKwpsLJemi7FvTM1SiTZ3wOfyvV6TKVG08UXhXlZH8qpa6Q6+ScNaa7t
	fMCYUADzReG6iOtd+OcLz/jG+CCAB3/0ZsaQpW9+kWG+qdyd5RhG3CqVsLE/0AiD
	pvdb6g1irSC6S02HPRJH8C2awUyvDgaxCKYaULt3yw1rXOLAv8b0M6p0hyCwJJOP
	pFmHrPJ5MmzrvHg6JavdQJQ9QGZKkzWTGhZ/rrXmJo8nfw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6fsaf6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 23:27:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c26012cd0so208551911cf.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 16:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784676425; x=1785281225; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AGwMeV7UNLwY0KpOqMhLEGJTauAHKsaW6udyi59jP0E=;
        b=bYKtOWAh0IlSNuPaI8WwHLLe0lSsJRYwH9NykvkItMXiRU43GRFH60r2sZuL0l9u6+
         wyKO5CUM5smfH0qzHxLAdKnkhKXrV4zrbRrYpUtzdpWDKMDBOI81oEUkKC1OQwoflSSx
         eqUk7qIC1T6pbaGSDKMeErWSkNNStzaIrLdOZs5wXG/0z1Fg78EcKwG5mFtk8mXo4YFZ
         p3Atixj01FnacDO/OSIvYBYeCjnTumJqCzOnbaaB1Bmnp/13o8mbovC+oxfw0JkP8Hjh
         kcC5LvQScn0f08/rjSIeHK7+SM2+Iqn5oRm/v6aQMu8sz8ucusQAKQuR5BIjpL0aSCUs
         0zug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784676425; x=1785281225;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AGwMeV7UNLwY0KpOqMhLEGJTauAHKsaW6udyi59jP0E=;
        b=VUjzFLUdGcS0LjisRznfzchtD+JylG5N5ZcezMpPEPXZ896LVOL6cZb+wIAdGuouQz
         1bsjN5gXL8EzbM+y1pLqxrIDVi2V7HvcGwr/KqCB9crcxMW93gFLwAN3KVkU9XXJDOhN
         mHlOdUwHIiLGpnu8Fedo6u05+tCLig4M3yMIQKAbDYTg0X34YDehCDpHNLfJZLWzvYt+
         o3t3V2GAxaL5Klse7nFfwkeujONMlVJFQtK8L0/hASlk8enM5uAnnl4lWjfna+3pMN26
         6OQLEcJlHozg3S04xvDxUuU4YjkMg+BCm56ZMUj0zNSs+zgoPjOIJgUIK/6TFjLorccd
         Fwnw==
X-Forwarded-Encrypted: i=1; AHgh+RoAM4LsuQnHaDlygB5L+Ycr0BqsHOWkaxYAVLO5V6UvYF1W29csCKRp0ZsCsOG/g75TGbvSWCOjV9s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEMZ0yXb3l1YkK2M9jJdIRl4uVuEEYLNQ5KzsY3ozjSYxMatZD
	4y/oMAJnjU9oHjaa9fasNCpXv/bZs3YnnGGiLBqDCnr1H8ZwRIWY85w/ca4PzhTrkzF9zhFt6rI
	3fKr/uTnjvN0+mcvxBSnDq1xzxPGWXblDfR6Gfkuf0vB2L8x1VRnFfJtJy8WvcfBhZbjS
X-Gm-Gg: AfdE7claBMaT2Oqu3N6LN5rJn1Q6PLRitgXBgt5HYlqE7xPorouePC1xWU6osbyAm/f
	RWDnONsrzw+oK+XHvykDz6/F2rTrO/91x//Fim4Mg7bvT6Uke3WhoGqWKgI6UJckkUNwnINrkyG
	yBQQwpILjXvYIOGkIv3ug2LNY0yF7ptgL1f86307UF7A6J3lxZIP3adm6sdavYId4IyQdyh/XeD
	qooLGDTjh2UNyCCYEq+vD69ba8E+lJEWbW4FHnl6g54KNs8KiW20ZHo60e5R5BusVAt5qW/Ouy0
	jEs4dLHVYX12Ao0mgjQo7N4PXhDVAEHCMkYvcocLLCpM2NoFmyoL1wbxDax4IldKUXcFlo4+JhP
	dXxMS+qnTnOYFk1yffGOVWGP0gbScQKwuxBxApPwQQAmSm/NG7swFGW5uc76yYzCRj5U3qG/Pwy
	rxgFDbEp0/vbEgBw==
X-Received: by 2002:a05:622a:904:b0:51c:7b12:6002 with SMTP id d75a77b69052e-5213e77cfadmr187376391cf.78.1784676424669;
        Tue, 21 Jul 2026 16:27:04 -0700 (PDT)
X-Received: by 2002:a05:622a:904:b0:51c:7b12:6002 with SMTP id d75a77b69052e-5213e77cfadmr187376071cf.78.1784676424040;
        Tue, 21 Jul 2026 16:27:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ef6d8c297sm1473461fa.39.2026.07.21.16.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 16:27:01 -0700 (PDT)
Date: Wed, 22 Jul 2026 02:26:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
Message-ID: <5a5sgj22xzjp3sosnfjvm62waz7sf4d7w33takzsbzpiojrc2h@z6a7bjazyhks>
References: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
X-Proofpoint-GUID: tg7OjSel6Zh9GMYK7ugw0Q8x0r3JoPfw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDI0MiBTYWx0ZWRfX+Gp8xBywLpM2
 FL3H6fKmh/xFgWB3DJe/USJpubjRQG6q0IafsMUll4FfQRFodwC92UH2qqUeCnHAtqWWo9n31vE
 D7VS5747Mq+qj8ki7YwDYBsCiXqZATx+JSuzwS0evjEW1Z3IC8/4Mk6FaGquGIeJEa54rhWKJzF
 E4NzLkdHqDdT5832yieDd951GEs84AOI/4RNZSsAvfP+jL4q5KjCen634dFMYqwg6ucllgBpWHp
 9Wx40aNvGMX6GrZ+0I6zNYnD54JfZfXONe/XOEfMNc3sP83PJXz3sg1jlLpKEcPxYN0ocEhaLE6
 zqPgulUkR4zBo/fYeP5tHHshOt9UzYiq/joKRIpEemeEdm49g6yS5W/a2lLzeVjCniTZgkE7bIN
 bibGF4iBU590ViCzeA3vndBUka6NlSPzY8iyie8dsOfk4K6m0K4cfbHL4OTy8Buw9hbnUPbSivV
 5aerubWwmIO+84xmfvQ==
X-Authority-Analysis: v=2.4 cv=e/o2j6p/ c=1 sm=1 tr=0 ts=6a600049 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=nw4lXKZx8MFDIasXF9oA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: tg7OjSel6Zh9GMYK7ugw0Q8x0r3JoPfw
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDI0MiBTYWx0ZWRfX2Kt1nFFBvx3h
 LLWjzB7s7ZGnyauiBjLOm4/Ut3C1XIPAYNB8vfS+L4JNLUIThcP3KzBZ9wVe4NrQ1IuVXYcfylU
 8+QI6LXrUQPmQG/NzAgcxkl1WZN/uHo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_162706_823157_291332CA 
X-CRM114-Status: GOOD (  29.72  )
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

On Tue, Jul 21, 2026 at 10:48:33AM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> The existing DP PHY PLL and AUX configuration for the Glymur platform
> does not fully follow the Hardware Programming Guide requirements for
> DP over Type-C, which results in DP link bring-up failures.
> 
> Update the DP PHY programming sequence and PLL-related register
> settings to align with the latest HPG recommendations. With this
> change, DP link training completes successfully on Glymur-based
> platforms.
> 
> Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
> The existing DP PHY PLL and AUX configuration for the Glymur platform
> does not fully follow the Hardware Programming Guide requirements for
> DP over Type-C, which results in DP link bring-up failures.
> 
> Update the DP PHY programming sequence and PLL-related register
> settings to align with the latest HPG recommendations. With this
> change, DP link training completes successfully on Glymur-based
> platforms.
> 
> Changes in v2:
> - Use the DP-specific v8 COM status register definitions
> (DP_QSERDES_V8_COM_C_READY_STATUS and DP_QSERDES_V8_COM_CMN_STATUS)
> instead of adding new N3 USB/DP variants.(Konrad)
> - Drop the qmp_v8_combo_configure_dp_mode() implementation and
> reuse the common qmp_combo_configure_dp_mode() helper, restoring
> orientation-specific DP_PHY_MODE programming (0x4c/0x5c) and addressing
> review comments regarding DP_PHY_MODE handling.
> - Include phy-qcom-qmp-dp-qserdes-com-v8.h for the DP COM register
> definitions.
> - Update patch author to Ritesh Kumar.(Konrad)
> - Link to v1: https://lore.kernel.org/all/20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com/
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 190 ++++++++++++++++++++----------
>  1 file changed, 129 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index cdcfad2e86b1..c98abae40a32 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -50,6 +50,7 @@
>  #include "phy-qcom-qmp-dp-phy-v6.h"
>  #include "phy-qcom-qmp-dp-phy-v8.h"
>  
> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
>  #include "phy-qcom-qmp-usb43-pcs-v8.h"
>  
>  /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
> @@ -283,8 +284,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
>  
>  	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
> -	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
> -	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
> +	[QPHY_COM_C_READY_STATUS]		= DP_QSERDES_V8_COM_C_READY_STATUS,
> +	[QPHY_COM_CMN_STATUS]			= DP_QSERDES_V8_COM_CMN_STATUS,

There are too many changes squashed into one commit, which makes it
harder to review. Could you please separate them into the logical
smaller chunks? Register layout fix, tables and other values update,
configuration rework, etc.

>  	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
>  
>  	[QPHY_DP_PHY_STATUS]			= QSERDES_V8_DP_PHY_STATUS,

> +static int qmp_v8_helper_configure_dp_phy(struct qmp_combo *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	u32 status;
> +	int ret;
> +
> +	writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
> +
> +	qmp_combo_configure_dp_mode(qmp);
> +
> +	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> +	writel(0xa4, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);

If we are writing 0xa4 here, why does qmp_v8_dp_aux_init() write 0x06?

> +
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
> +
> +	ret = qmp->cfg->configure_dp_clocks(qmp);
> +	if (ret)
> +		return ret;
> +
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
> +			status,
> +			((status & BIT(0)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(0)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(1)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
> +
> +	return 0;
> +}

This is exactly the same as a part of qmp_v456_configure_dp_phy().
Please use it in that function too (and name correspondingly).

> +
>  static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
> -	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> -	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> -	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +	writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
> +
> +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +		DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +		DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> +		qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>  
>  	/* Turn on BIAS current for PHY/PLL */
> -	writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
> +	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
>  
>  	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
>  	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> @@ -3361,8 +3420,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  	writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>  	writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>  
> -	writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> -	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
>  
>  	qmp_combo_configure_dp_swing(qmp);
>  }
> @@ -3370,48 +3429,41 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> -	u32 phy_vco_div;
>  	unsigned long pixel_freq;
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
>  	switch (dp_opts->link_rate) {
>  	case 1620:
> -		phy_vco_div = 0x4;
>  		pixel_freq = 1620000000UL / 2;
>  		break;
>  	case 2700:
> -		phy_vco_div = 0x2;
>  		pixel_freq = 2700000000UL / 2;
>  		break;
>  	case 5400:
> -		phy_vco_div = 0x4;
>  		pixel_freq = 5400000000UL / 4;
>  		break;
>  	case 8100:
> -		phy_vco_div = 0x3;
>  		pixel_freq = 8100000000UL / 6;
>  		break;
>  	default:
>  		/* Other link rates aren't supported */
>  		return -EINVAL;
>  	}
> -	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);

No more VCO?

>  
>  	/* disable core reset tsync */
>  	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>  
> -	writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> -	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
> +	writel(0x09, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> +	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
>  	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
> -	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +	writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
>  
>  	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
>  	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
>  	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
>  	writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
> -	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +	writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
>  	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
> -	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
> +	writel(0x02, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
>  
>  	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
>  	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
> @@ -3558,7 +3610,7 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  	u32 status;
>  	int ret;
>  
> -	ret = qmp_v456_configure_dp_phy(qmp);
> +	ret = qmp_v8_helper_configure_dp_phy(qmp);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -3570,13 +3622,13 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  	} else if (dp_opts->lanes == 2) {
>  		bias0_en = reverse ? 0x3f : 0x15;
>  		bias1_en = reverse ? 0x15 : 0x3f;
> -		drvr0_en = 0x10;
> -		drvr1_en = 0x10;
> +		drvr0_en = 0x30;
> +		drvr1_en = 0x30;
>  	} else {
>  		bias0_en = 0x3f;
>  		bias1_en = 0x3f;
> -		drvr0_en = 0x34;
> -		drvr1_en = 0x34;
> +		drvr0_en = 0x30;
> +		drvr1_en = 0x30;
>  	}
>  
>  	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
> @@ -3584,6 +3636,14 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
>  	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
>  
> +	writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +	writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +	writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +
> +	writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +
> +	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
>  	writel(0x08, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>  	udelay(100);
>  	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> @@ -3591,16 +3651,24 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>  
>  	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
>  			status,
> -			((status & BIT(1)) > 0),
> +			((status & BIT(0)) > 0),

Why?  Should we poll both BIT(0) and BIT(1)?

>  			500,
>  			10000))
>  		return -ETIMEDOUT;
>  
> -	writel(0x00, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
> -	writel(0x00, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(0)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
>  
> -	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> -	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +			status,
> +			((status & BIT(1)) > 0),
> +			500,
> +			10000))
> +		return -ETIMEDOUT;
>  
>  	return 0;
>  }
> 
> ---
> base-commit: 6946bc5406f7fe2cb024419eca681bb0280f3461
> change-id: 20260720-glymur-phy-conf-fc878ed134b1
> 
> Best regards,
> --  
> Nabige Aala <nabige.aala@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
