Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43C9C77B75
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 03:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi39CfM1eBVvKPQ+dC9zrEChJDBde3I/gLPrbGDD0fY=; b=ww7jV7YcVMXgeE
	TuLS6HEZc3D04GoApa2bwmWUPCoc0t13DwlQIwBL44ANCUzlLTK/JM+7Pwzyev5OnXbFMPyWxg3/m
	FrIpP7xbk56O0/yCPF/viYW5VXxSeKJrxdaE6ofc2PBOR50Y5p93L/Ex3jb5YDG1NYSWY9kwELTK2
	xS2OrXTww2kszGG75K/MA1rD29ESfnVtig3VmV8sGa8OI8MIMPZldwBhR4MbBiNWTPn+2MR2+Avsx
	v4FZ/5CdpNN14jNc1IFU6kAtJILkE5soUVxYOuCsxFqAgVvaj5Ccbln/5ODnwYtWxrwIl6T0iDVXZ
	B36da1nvtfLTFKx5eFeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puPKH-006RWa-1O;
	Thu, 04 May 2023 03:08:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puPKD-006RVA-0G
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 03:08:10 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3442xwZ1019567;
	Thu, 4 May 2023 03:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=uI1T/gjvgZvSlXrSpeWUM9w8CwsngVR+EPVD42tV2ps=;
 b=GMkVzfVN064DeJgyuyOdl+mVBBU5caC1femnDupiy573FEMq9gC4ZlS7h60z3oacFzDF
 L7b6IHOQwMxHkOzWwPjbkeLLDUPd07tWKnRszQfORHz+qBbr6cFapuXurwnFzLybjqyU
 xT8I8kkVg7W9PvM/dwpgl4FLrjzjzaCOXpntB4aul435WMyL6AYSph/y9GsPbdiHTBv4
 WvDvV8lvyE4l3f8vw+MaPxGEyR5P3n5xd2dLsQjmwmYq8BwtNZ+ZSWs1fLH1ZKbPw6gr
 tA/wUpl1baX+/m6aaRiZfiWb0yi6SCRgM/zQ3kvZ5zXKmHzAqS/4OU5zEh5fij3JGY8Y 1Q== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qc2aj06hf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 03:07:57 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34437uB3014118
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 May 2023 03:07:56 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 3 May 2023 20:07:56 -0700
Date: Wed, 3 May 2023 20:07:55 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to
 SuperSpeed graph
Message-ID: <20230504030755.GD870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-7-quic_bjorande@quicinc.com>
 <ZFEAfv2GnGeblk-x@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZFEAfv2GnGeblk-x@hovoldconsulting.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: DY91MEa13XJqkST4oJcJLLYk76XFiUyE
X-Proofpoint-GUID: DY91MEa13XJqkST4oJcJLLYk76XFiUyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-03_16,2023-05-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=866 impostorscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2305040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_200809_256769_DAE611E1 
X-CRM114-Status: GOOD (  21.73  )
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

On Tue, May 02, 2023 at 02:22:22PM +0200, Johan Hovold wrote:
> On Mon, Apr 24, 2023 at 08:40:09PM -0700, Bjorn Andersson wrote:
> > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
[..]
> >  &mdss0_dp0_out {
> >  	data-lanes = <0 1>;
> > -	remote-endpoint = <&pmic_glink_con0_ss>;
> > +	remote-endpoint = <&usb_0_qmpphy_dp_in>;
> >  };
> 
> It's a bit hard to follow what going on when using place holder nodes
> from the dtsi like this (instead of describing all the ports directly in
> the board dts). IIRC we went a bit back and forth over this earlier and
> we already use this scheme for the display port controllers, so I guess
> this is the price we pay for being consistent.
> 

I agree, this is why I argued in favour of keeping the of_graphs
together in a single node. But as long as we label things appropriately
it's pretty ok - and the alternative would be yet another undocumented
"rule".

So let's stick with this...

> > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
[..]
> > +			ports {
> > +				#address-cells = <1>;
> > +				#size-cells = <0>;
> > +
> > +				port@0 {
> > +					reg = <0>;
> > +
> > +					usb_0_qmpphy_out: endpoint {};
> > +				};
> > +
> > +				port@1 {
> > +					reg = <1>;
> > +
> > +					usb_0_qmpphy_dp_in: endpoint {};
> > +				};
> > +			};
> >  		};
> 
> The binding describes three ports, where dp-in is port 2.
> 
> Perhaps you don't need to describe ss-in yet, but shouldn't the port
> numbers match? Should some of these be described as required in the
> binding?
> 

This should certainly be port@2, thanks for spotting.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
