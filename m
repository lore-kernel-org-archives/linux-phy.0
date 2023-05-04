Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3228C7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 15:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bjg6fj8x+eFRVkNhkGw3crx8IzlwVtBqDkHh22wB/c=; b=Ydl6MLvi4bq9mW
	Ay67Ue6tB7XhZjepV3RLrrELEEIqdt/+j/c1FjhPAmJlsW0rmi69P5XFoYUbf22QAdcLTKnRdza9f
	9obXv53E/SjCmKimyQDf2NO1dBjM3CmsaTfh7CjTNrggfMlMmGI3g5d5KCk5Emhandcq+JQdQxxNC
	8yICY5WGcU12rCP1NAHDcxr4DovTi+Qa+4UvAe6w6AzIQalBaCezNydj2+IPjfyBZkOqI0nFN/q99
	rUQGFVOMzcaO3i6zMrMAfyuzBmqB8oTCvx1tkqj27dxotrUYDegdwi2kbsH6Vq33cpzLphuiebc8z
	Ueq9GSGLYuMnzs0tJU/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pubD7-008Gi8-1Z;
	Thu, 04 May 2023 15:49:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pubD3-008Gg0-2V
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 15:49:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 344F6NRN028935;
	Thu, 4 May 2023 15:49:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=9K2J0Qs4G+xJ3O7DzrxGeAOmOdZ1h98Wxu+vcjU/S8o=;
 b=nXASaCIe2b7vuj5wKzXn6Lsh6LaCqOY3e2pW1NH/G3dH+t2SJer1epjCN8Vhdh9QzDJF
 ygy4aSizT6KBpW+JCgGa8K6bH11JOSYp5Q0cRYzx1yJECGr0KwESNyDVxNy75Q1ahGA3
 iIogo57NoTzFRrbiVDFeoi2EbDf9Ma3ur9lFVvX4c20opwS0ARfMaigWPppAx0xyVpYm
 0kQ0xoW/gXevJNnDFGO60VNfp2yCrq++gA2XcK9mF5+BE4w1uEioeBkOFkgdN9Qgew0g
 jZ6vV1gKPbicSjvfpjrDD/MNKOFAferMQtSq/9EYiaY9WRqWRjMcQSeRfSz7F387yQwp DQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qcf24g3x0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 15:49:24 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 344FnNk1023626
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 May 2023 15:49:23 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 4 May 2023 08:49:23 -0700
Date: Thu, 4 May 2023 08:49:22 -0700
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
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
Message-ID: <20230504154922.GI870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com>
 <ZFD8oQETtLuDH2Xg@hovoldconsulting.com>
 <20230504031354.GE870858@hu-bjorande-lv.qualcomm.com>
 <ZFNvHgaYsHUc2Y9L@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFNvHgaYsHUc2Y9L@hovoldconsulting.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: rS1tuSDLI98ujxrx2JOQ8tBxi81fl5Zp
X-Proofpoint-GUID: rS1tuSDLI98ujxrx2JOQ8tBxi81fl5Zp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_10,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305040128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_084933_817867_521E721D 
X-CRM114-Status: GOOD (  43.24  )
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

On Thu, May 04, 2023 at 10:38:54AM +0200, Johan Hovold wrote:
> On Wed, May 03, 2023 at 08:13:54PM -0700, Bjorn Andersson wrote:
> > On Tue, May 02, 2023 at 02:05:53PM +0200, Johan Hovold wrote:
> > > On Mon, Apr 24, 2023 at 08:40:08PM -0700, Bjorn Andersson wrote:
> > > > The QMP combo PHY sits in an of_graph connected between the DisplayPort
> > > > controller and a USB Type-C connector (or possibly a redriver).
> > > > 
> > > > The TCPM needs to be able to convey the HPD signal to the DisplayPort
> > > > controller, but no directly link is provided by DeviceTree so the signal
> > > > needs to "pass through" the QMP combo phy.
> > > > 
> > > > Handle this by introducing a drm_bridge which upon initialization finds
> > > > the next bridge (i.e. the usb-c-connector) and chain this together. This
> > > > way HPD changes in the connector will propagate to the DisplayPort
> > > > driver.
> > > > 
> > > > The connector bridge is resolved lazily, as the TCPM is expected to be
> > > > able to resolve the typec mux and switch at probe time, so the QMP combo
> > > > phy will probe before the TCPM.
> > > > 
> > > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 36 +++++++++++++++++++++++
> > > >  1 file changed, 36 insertions(+)
> > > > 
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > index 5d6d6ef3944b..84bc08002537 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> 
> > > > @@ -3196,6 +3200,34 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
> > > >  	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, dp_np);
> > > >  }
> > > >  
> > > > +static int qmp_combo_bridge_attach(struct drm_bridge *bridge,
> > > > +				   enum drm_bridge_attach_flags flags)
> > > > +{
> > > > +	struct qmp_combo *qmp = container_of(bridge, struct qmp_combo, bridge);
> > > > +	struct drm_bridge *next_bridge;
> > > > +
> > > > +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> > > > +		return -EINVAL;
> > > > +
> > > > +	next_bridge = devm_drm_of_get_bridge(qmp->dev, qmp->dev->of_node, 0, 0);
> > > > +	if (IS_ERR(next_bridge))
> > > > +		return dev_err_probe(qmp->dev, PTR_ERR(next_bridge), "failed to acquire drm_bridge\n");
> > > 
> > > Using dev_err_probe() in an attach callback looks wrong as these
> > > functions should not be returning -EPROBE_DEFER (and this is not a probe
> > > function).
> > 
> > The problem is that this might return EPROBE_DEFER, and at least today
> > propagates out to returning EPROBE_DEFER from our DP controller's
> > bind().
> 
> Due to the known issue with the MSM driver panel lookup, or due to some
> more fundamental problem with the stack?
> 

No, but looks for the drm_bridge in the connector.

> At least in the former case, I don't think we should hide the fact that
> we have an unresolved issue with the MSM driver this way even if it
> means printing an extra error message until it has been resolved (cf.
> the panel lookup errors that we've intentionally kept in place).
> 
> > This is not optimal, but unfortunately we have a two way dependency
> > across the of_graph, so we need to make one of the sides lazy...
> 
> But this comments seems to suggest this is a bigger issue than the panel
> lookup.
> 
> Could you describe the issue in some more detail (e.g. when would you
> see -EPROBE_DEFER here)?
> 

pmic_glink needs to look up the typec_switch_dev through the of_graph,
which won't be present until the QMP phy is probed. And the QMP phy is
looking for the connector, which won't be present until pmic_glink has
found the QMP phy.

So what I'm saying is that either pmic_glink or QMP needs to look up the
other side lazily.


The attach happens during bind of the msm_drm component, so at least
today it's a consistent path to return EPROBE_DEFER in the DP
controller...

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
