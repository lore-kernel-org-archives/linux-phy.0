Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B238C77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 03:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dQbmpNNkX5OmRwzG4LFqekx8cbN9zP1R3S0grren4w=; b=imlpXQCGN455uv
	R0oAnQdZ1b4vFTlvFiV+12C7clImRM0K9nTyocTNWhk0aLdZkYNSGYry81QSOKzMAo7fI4/LT7Hk0
	Xq15H1FxvSbkwCPk/QYLAjcqrYiWM8mSu9TtdmThNpUhz+XpJGVoIW6kuWxSKM2YaNXW7kmB0XNj6
	0Lv1GoTYB0OjLyifBU6urD1o8v3WRb5AD96E3cCffwKvlnbNRj+tT/v3cGmtOR/KnPCjl+CRic6jD
	WBq2clwVP/6eF95zU2zGfElFyPb+H63bXZaiZrhMbD4l+lqxfpr+kL3PoOd2vqzhsk4xJfVckiX+Q
	jOvif22WCgW7EESdVO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puPfK-006TYu-06;
	Thu, 04 May 2023 03:29:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puPfH-006TYH-14
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 03:29:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3443M0iN010768;
	Thu, 4 May 2023 03:29:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=8Fr63kfb0qAml3Qgr7x5BnMF93LqV2bwaEcrP8GYe+U=;
 b=bFUNwaj/CokqNgWgcymo+gSJPsEz36yv1ioeKPRhEyaRl9wTL//tbtt0UeYM/D1+xNJb
 t0iEJc+f41F1ZnzABRUnw39A3FUDpgNhBS8A00GytQITOJ9PfD08iS/WMmwXE0m4Z7jW
 iqyArHj5ng9BzLO9DI2r67msSJrMk6ckgMUur+Wy0jphEAm6OCVaCy0Uf689DOqsVAOT
 Kn5Y/OMxOQE7MX9vpXV2qCvD5TztnveBTZzVRUeJppP3N0FOj/LepznYM9M6LMhka7Zz
 sUByF6/eZSZ7QL3/cRAIxWL+1tK4P3my5ve9OWfvgiTyhEXMkRDCJVm9Wjf2sfCot/cH XQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qbeb2twe9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 03:29:48 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3443T8V9014515
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 May 2023 03:29:08 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 3 May 2023 20:29:08 -0700
Date: Wed, 3 May 2023 20:29:07 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/7] phy: qcom-qmp-combo: Introduce orientation variable
Message-ID: <20230504032907.GF870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
 <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: F59Z4Zrn3cNGM6MqNcKJpje30pYIbVf7
X-Proofpoint-GUID: F59Z4Zrn3cNGM6MqNcKJpje30pYIbVf7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_01,2023-05-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 mlxscore=0 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=999 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303200000 definitions=main-2305040028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_202955_398265_AF2E6E61 
X-CRM114-Status: GOOD (  32.53  )
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

On Tue, May 02, 2023 at 01:48:16PM +0200, Johan Hovold wrote:
> On Mon, Apr 24, 2023 at 08:40:06PM -0700, Bjorn Andersson wrote:
> > In multiple places throughout the driver code has been written in
> > prepration for handling of orientation switching.
> > 
> > Introduce a typec_orientation in qmp_combo and fill out the various
> > "placeholders" with the associated logic. By initializing the
> > orientation to "normal" this change has no functional impact, but
> > reduces the size of the upcoming introduction of dynamic orientation
> > switching.
> > 
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 +++++++++++++----------
> >  1 file changed, 30 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 7280f7141961..6748f31da7a3 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -19,6 +19,7 @@
> >  #include <linux/regulator/consumer.h>
> >  #include <linux/reset.h>
> >  #include <linux/slab.h>
> > +#include <linux/usb/typec.h>
> >  
> >  #include <dt-bindings/phy/phy-qcom-qmp.h>
> >  
> > @@ -63,6 +64,10 @@
> >  /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
> >  #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
> >  
> > +/* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
> > +#define SW_PORTSELECT_VAL			BIT(0)
> > +#define SW_PORTSELECT_MUX			BIT(1)
> > +
> >  #define PHY_INIT_COMPLETE_TIMEOUT		10000
> >  
> >  struct qmp_phy_init_tbl {
> > @@ -1323,6 +1328,8 @@ struct qmp_combo {
> >  	struct clk_fixed_rate pipe_clk_fixed;
> >  	struct clk_hw dp_link_hw;
> >  	struct clk_hw dp_pixel_hw;
> > +
> > +	enum typec_orientation orientation;
> >  };
> >  
> >  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> > @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
> >  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
> >  {
> >  	u32 val;
> > -	bool reverse = false;
> > +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
> 
> Adding parentheses around the right-hand side should make this a little
> easier to parse.
> 
> It also looks like these callbacks end up being called without holding
> the qmp->phy_mutex via phy->power_on(). Perhaps there is no risk for a
> concurrent switch notification and dp phy power-on but it's not that
> obvious.
> 

It seems we're arriving here from hpd_event_thread(), while
phy_power_on() and phy_power_off() will be called in some other context.
I've not been able to convince myself if DP driver ensures ordering, or
if we have an existing race here...

Unless you insist, I would prefer to follow up with an additional patch
once we've landed this series. The fix will depend on the phy_mutex
shuffling patch anyways...

> > +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> 
> Also could you add these before u32 val to maintain an approximation of
> reverse xmas style?
> 

I'd be happy to do so :)

Regards,
Bjorn

> And similar below.
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
