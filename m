Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F03BC47DA2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 22:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6atXb4s1NhjIOf/K//Dqc590UpreWwEudfIG6L+ZgMc=; b=pln8a4MhliKe2g
	U051KWw8HVBvrN63zaywLtt2qs64IXXtOuimZowXQes/yFECPrMCmAxXk+uoas5Ij1P3+Zdul4zAL
	8F/okL6QkwO8K/fnmYo4dlr+vevtDAmNioaLUmiKxEScFtjy1KOSoP4zBkpXEJ9A5EYr1TGPkcXPz
	X9ZZWsdiCE6NoY5pydm9QBc8HZ4XqY6j7n38Unq3GXrv+G1m8O7szLkwyjJTO0sHm+tOpKVum9GvM
	8ax0LZ7s+kJlMMV0Jz3MjmaNy8fLAd/8+r++mFqjhiHMVot5IXqSe6bgigPG1FVhhRi5OdA2cgsSj
	Y0OMC/Z1JlRzft9HiQyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQDzY-000t94-2m;
	Wed, 17 Jan 2024 22:02:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQDzW-000t2p-0L
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 22:02:35 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40HLXETo010240;
	Wed, 17 Jan 2024 22:01:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=qcppdkim1; bh=eMRgKtzrvypX5SjMuARx6
	mbUyoO003lGGNqle6ArHFQ=; b=NUYBAhrn9gJbrTU9kxsg2eCjvhIWy325Xqaq4
	WJTekCdzsJZLQCuslVeC5XVEjGiA/HrpY7hVKItQPV1WQ29bWlyScmXmK2pMNFmz
	iLwanMrlL2UeZ2PuuAZiDEZIHd14BK5u/wAjLcN0hNdqWkdqIabnsao+gZWM+KwA
	YzdAqT8IGgwXGz0IUsnUVE8vrj0ZArjONycC2yTpnFmAIAnKFTiC8Fwx5HCPSpx+
	B+xBcQkhVLGUxvuxG16WSUpUeevs+lUagswmxR+P2kSgq3EHkHh148aW1+5mEu1I
	zj5zYhzZ7H5eWJc6IoSHfmiPt1ztddjvKb93ccuD/Rlbi5E9Q==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vpdfgsej2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Jan 2024 22:01:56 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40HM1t9k001475
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Jan 2024 22:01:55 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 17 Jan 2024 14:01:55 -0800
Date: Wed, 17 Jan 2024 14:01:53 -0800
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Bryan O'Donoghue
	<bryan.odonoghue@linaro.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        "Heikki
 Krogerus" <heikki.krogerus@linux.intel.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
Message-ID: <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: nmevfx26C7BXCEfOc6jAfSNQG8-LbM15
X-Proofpoint-ORIG-GUID: nmevfx26C7BXCEfOc6jAfSNQG8-LbM15
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-17_12,2024-01-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011
 mlxlogscore=621 phishscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2401170157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_140234_150171_8167A029 
X-CRM114-Status: GOOD (  19.97  )
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

On Mon, Jan 15, 2024 at 11:00:53AM +0100, Konrad Dybcio wrote:
> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
> > Define VBUS regulator and the Type-C handling block as present on the
> > Quacomm PMI632 PMIC.
> > 
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > index 4eb79e0ce40a..d6832f0b7b80 100644
> > --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> > @@ -45,6 +45,36 @@ pmic@2 {
> >  		#address-cells = <1>;
> >  		#size-cells = <0>;
> >  
> > +		pmi632_vbus: usb-vbus-regulator@1100 {
> > +			compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
> > +			reg = <0x1100>;
> > +			status = "disabled";
> > +		};
> > +
> > +		pmi632_typec: typec@1500 {
> > +			compatible = "qcom,pmi632-typec";
> > +			reg = <0x1500>;
> > +			interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> > +				     <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> > +				     <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> > +				     <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> > +				     <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> > +				     <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> > +				     <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> > +				     <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
> This differs from the downstream irq types:
> 
> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
> 

Interrupt 1, 3, and 6 are level interrupts for which it's reasonable to
act on both edges. Interrupt 0, 2, 4, 5, and 7 are "pulse interrupts",
for which it seems reasonable to act on only one of the edges.

To me, Dmitry's proposed version makes more sense than downstream.

Regards,
Bjorn

> Is it intended?
> 
> Thanks a lot for working on this!
> 
> Konrad
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
