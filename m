Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A49D10F57
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 05:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swb1aaGXyYaLFvKmGjs/2A0tSqbMNhRphFXWqEB1rnQ=; b=L7Q1QacbV2Hsch
	lyFVrDYC/y8eS0DgV6onJzl4ElmBM+th1miBz21ToH2bFibAYZbLTYjRpcwE+rAEWSy4xzdCACXx3
	pwZ7PrcCe4X26wjLiVZz/xXzUx1UI5eOZ2GF2eYLzhieRHDOk0ym6kuoQDLOmuYMyvVaMsTNCcE1N
	xnL9ALBtIMoKTod/rGAuGyjxqWtb++ZeNbbronBqH9kkU2gUaZ/N2ASYLea8ARP9hfQi9+L/CgSc4
	Vz+s2Ph5majkhkFigeWhvSn0D1XCBmEf9bvujdztawWb1vdAiXZrV9BgUkNu8rlXAgaUa7Bv/FRWG
	uYsRar4ZXHh4ZnrmbneA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCuN2-00000008PTu-3mtL;
	Mon, 18 Nov 2024 05:32:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCuMz-00000008PTT-2Ew7
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 05:32:18 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AI5Rjol029054;
	Mon, 18 Nov 2024 05:32:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6iOxJvFtomet/s7JEEnSKb2r
	DAVNzeogR4DmysggjhQ=; b=Y/TVBf1e6ZcqZJNBUA0r2V91GaNU+LMhPIq0GAes
	B3HA39CXJy7jPmf5KTnFRoG+l/MtKQgc9nMTUuvk/JWr2a6krm8109exVW9xhv84
	1BIOfoL5/Lt1pyzW25cjCoYLma8EoQ2EzSrF6p8fMXWna47K6IuwxoDo9Ob+nBL1
	XU5UtBNIcH8BngGilKmxyQnee43/68J5yEhVxnrmEBjy3uiQ2c1pDXXChsXQx8sW
	F9JhrMRB6gHqRwBKHtNOBoP2FkSfXMkaxyGKi393weoeWy3r/ySTaB3BkqeQWY54
	XDvdirj67C5ftf5NvZmVOP1CM1KNpDTxMIRP6mqwhd9DCA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42xmp7bede-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 05:32:12 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AI5WBcD026242
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 05:32:11 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 17 Nov 2024 21:32:05 -0800
Date: Mon, 18 Nov 2024 11:01:56 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <mantas@8devices.com>,
        <quic_kbajaj@quicinc.com>, <quic_kriskura@quicinc.com>,
        <quic_rohiagar@quicinc.com>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <ZzrRTDtQ/NdyByEN@hu-varada-blr.qualcomm.com>
References: <20241114074722.4085319-1-quic_varada@quicinc.com>
 <20241114074722.4085319-7-quic_varada@quicinc.com>
 <CAA8EJpr6xb=TPPgk7ERhKVp7OnYdPGCK6+1_2TBRLBt_eWM43A@mail.gmail.com>
 <ZzbZGnKEovwoDPrP@hu-varada-blr.qualcomm.com>
 <qx22rgezkym3guofdxwmvhrjjwjzshngb4cvpdhqahlykeeqhg@wc4zy3gicrsb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <qx22rgezkym3guofdxwmvhrjjwjzshngb4cvpdhqahlykeeqhg@wc4zy3gicrsb>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RMzVUqrBg1lUvqg5bnXLfBHRglbCl7Qn
X-Proofpoint-GUID: RMzVUqrBg1lUvqg5bnXLfBHRglbCl7Qn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 mlxlogscore=745
 phishscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 malwarescore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411180047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_213217_634258_862BADDE 
X-CRM114-Status: GOOD (  24.47  )
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

On Fri, Nov 15, 2024 at 08:54:47AM +0200, Dmitry Baryshkov wrote:
> On Fri, Nov 15, 2024 at 10:46:10AM +0530, Varadarajan Narayanan wrote:
> > On Thu, Nov 14, 2024 at 03:28:36PM +0200, Dmitry Baryshkov wrote:
> > > On Thu, 14 Nov 2024 at 09:48, Varadarajan Narayanan
> > > <quic_varada@quicinc.com> wrote:
> > > >
> > > > The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> > > > can connect to either of USB2.0 or USB3.0 phy and operate in the
> > > > respective mode.
> > > >
> > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > ---
> > > > v3: Regulator node names, labels and 'regulator-name' changed per review suggestions
> > > >     Stray newline removed
> > > >
> > > > v2: Add dm/dp_hs_phy_irq to usb3@8a00000 node
> > > >     Add u1/u2-entry quirks to usb@8a00000 node
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts |  66 ++++++++
> > > >  arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 159 ++++++++++++++++++++
> > > >  2 files changed, 225 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > > index d4d31026a026..859e15befb3f 100644
> > > > --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > > > @@ -16,12 +16,70 @@ / {
> > > >         aliases {
> > > >                 serial0 = &uart1;
> > > >         };
> > > > +
> > > > +       vreg_misc_3p3: regulator-3300000 {
> > >
> > > Technically these names are correct. However they don't match the
> > > approach that Qualcomm DT files have been using up to now.
> > > You can compare your data with the output of `git grep :.regulator-
> > > arch/arm64/boot/dts/qcom/`
> >
> > Dmitry,
> >
> > This name was suggested by Rob Herring [1]. Shall I rename them as follows
> >
> > 	regulator-usb-3p3
> > 	regulator-usb-1p8
> > 	regulator-usb-0p925
>
> I'd say so. Rob clearly stated that this is not a strict rule. It's
> always better to follow the customs of the particular platform, it helps
> other developers. Also in _many_ cases just defining the voltage is not
> enough, usually there are multiple networks providing 0.925 V or 1.8 V.

Dmitry,

Have posted v4 with above changes. Please review.

Thanks
Varada

> > 1 - https://lore.kernel.org/linux-arm-msm/20241113181138.GA1011553-robh@kernel.org/
> >
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-min-microvolt = <3300000>;
> > > > +               regulator-max-microvolt = <3300000>;
> > > > +               regulator-boot-on;
> > > > +               regulator-always-on;
> > > > +               regulator-name = "usb_hs_vdda_3p3";
> > > > +       };
> > > > +
> > > > +       vreg_misc_1p8: regulator-1800000 {
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-min-microvolt = <1800000>;
> > > > +               regulator-max-microvolt = <1800000>;
> > > > +               regulator-boot-on;
> > > > +               regulator-always-on;
> > > > +               regulator-name = "vdda_1p8_usb";
> > > > +       };
> > > > +
> > > > +       vreg_misc_0p925: regulator-0925000 {
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-min-microvolt = <925000>;
> > > > +               regulator-max-microvolt = <925000>;
> > > > +               regulator-boot-on;
> > > > +               regulator-always-on;
> > > > +               regulator-name = "vdd_core_usb";
> > > > +       };
> > > > +};
> >
> > [. . .]
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
