Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0969AC77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 15:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHr4DReJP7M1SirIv0QaEHRL4+ivxW/29dGjVAa7GA4=; b=R1sFL7sjBWodG0
	65b5YmjGoo5QMszE1ZVKiYZUS8Kd0h3tiBFQqHmubD1DIGvpskXQGUkFKTkPQXZecIbw75YVw+dqt
	vKAgHJeufT+vlkjKDuYfwjHE006r18MHkxGhv39wrCAncry1p3JQ4Tps89QAXt5mLdw6TF501KFkq
	ycTKarkw45XmsV8qrp49+NkEJjA6WUPU7ePlEF87MSSGM6UPAKGze6GOehDDSZkI5ctaXkkmp96br
	VwFcQ3MpJBrb7fQUTYyasPmic8cojA4ZM5ug0txk7l07C4AYeUu1KGcw6zfPXC1fDEQUh3JqDIeqG
	pbIh6CCAFAXMHWG6HWUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puahH-008Bnc-2B;
	Thu, 04 May 2023 15:16:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puahE-008Bmf-20
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 15:16:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 344Dx1B9024289;
	Thu, 4 May 2023 15:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=BQ/7RDNAAE8uv8lh54owpKxVRLEP1E510QxK2VrS/zY=;
 b=gwDO9hCUUcrv8ggtiEDwEEXeM8L6+vcw41rH+9o0WtrzETKtB4DgYyNkK6H93qaNfhCr
 pWQOa0AyV870RR+zefXQ6jxwZhwgUNAtadN79VpqXwHbjDq4GMOf01zpmCqL0xoN7RRb
 aQ9PyvFkhQpktrSEqtFfHvoh9AI0/RfFuqQGGUpy9sRmCfmITfC7IE622TCLo9CfDw13
 Yt9Y4qyn4eSPhxyIznarr+YnL9TvwLTb7g0IQLXM0f1CqCbyzD8lziUqrcl/oz9H+cLh
 ohpmRdfl9EBP36oeGzMRG18GLCrweQhnbCrnIFNGO2/kH7iy4OOkboF8nr+VqbAgJbWN WQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qbvghjduv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 15:16:35 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 344FGZoL001250
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 May 2023 15:16:35 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 4 May 2023 08:16:34 -0700
Date: Thu, 4 May 2023 08:16:33 -0700
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
Message-ID: <20230504151633.GH870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
 <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
 <20230504032907.GF870858@hu-bjorande-lv.qualcomm.com>
 <ZFO21fLWSNc7orpb@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFO21fLWSNc7orpb@hovoldconsulting.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: jhZ7efS4otM3nL5Ga2W-qcdWHkrL4bOJ
X-Proofpoint-GUID: jhZ7efS4otM3nL5Ga2W-qcdWHkrL4bOJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_10,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 spamscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303200000 definitions=main-2305040125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_081640_673581_5F81334D 
X-CRM114-Status: GOOD (  28.50  )
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

On Thu, May 04, 2023 at 03:44:53PM +0200, Johan Hovold wrote:
> On Wed, May 03, 2023 at 08:29:07PM -0700, Bjorn Andersson wrote:
> > On Tue, May 02, 2023 at 01:48:16PM +0200, Johan Hovold wrote:
> > > On Mon, Apr 24, 2023 at 08:40:06PM -0700, Bjorn Andersson wrote:
> 
> > > >  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> > > > @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
> > > >  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
> > > >  {
> > > >  	u32 val;
> > > > -	bool reverse = false;
> > > > +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
> 
> > > It also looks like these callbacks end up being called without holding
> > > the qmp->phy_mutex via phy->power_on(). Perhaps there is no risk for a
> > > concurrent switch notification and dp phy power-on but it's not that
> > > obvious.
> 
> > It seems we're arriving here from hpd_event_thread(), while
> > phy_power_on() and phy_power_off() will be called in some other context.
> > I've not been able to convince myself if DP driver ensures ordering, or
> > if we have an existing race here...
> 
> > Unless you insist, I would prefer to follow up with an additional patch
> > once we've landed this series. The fix will depend on the phy_mutex
> > shuffling patch anyways...
> 
> Sure.
> 
> But perhaps you can just move the orientation == qmp->orientation check
> under the mutex in qmp_combo_typec_switch_set() for now (in case I
> forgot to point that out earlier).
> 

qmp_combo_probe() and qmp_combo_typec_switch_set() are the only writers
to qmp->orientation, so that check can't race with any updates and hence
doesn't need to be protected.

Reading the code again, qmp_combo_configure_dp_mode() is invoked from
phy_power_on(), not the hpd_event_thread(), as I claimed yesterday.

But we shouldn't do qmp_combo_dp_power_on() in parallel with the
reinitialization following a switch in orientation, qmp->orientation
might change, but we definitely would have two contexts reconfiguring
the hardware simultaneously - perhaps this was the cause for the 10%
crashes I hit when trying to extend this to handle typec_mux as well...

I will grab the phy_mux in qmp_combo_configure_dp_mode() as well, thanks
for "insisting" :)

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
