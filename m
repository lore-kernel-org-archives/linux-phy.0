Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7631C77B7F
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 05:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtAyuCYMCV+oJ8ZCPLQdXXBiU+6JE1LXm4ZYN4x4yZ0=; b=bDW6pBNsKzn/f6
	w6BYmQYD1Lpki4kzisKrg3mX4NuXi27JN3fX152QBKVE13RFTIzhM/eCvjNZqMGIsBwIqQQ3HOnge
	DFnib17EiyyhIBtwxKop+FF5h+fQtQee6pU96wDUmuAC0TAgTi9aLVZDFRDe8RvuNS8AzkfnVjaom
	tskmI4qIrci5VgsS5ucb+X+yaNpug2njqad0wHKgEGU3frpUneFpLTtRtkhwupttcQG5zyblzG8gZ
	o46eWpmsvVA+gq+Z/o7eM3K3pbXVwGoUcG8qjIABwqwLHit9iwM3Pz0sY1RZgD1F86m4sxyHWrVnu
	pcFsqiizIJcVAS8Bq83w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvtFW-00HICA-1B;
	Mon, 08 May 2023 05:17:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvtFT-00HIBm-1m
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 05:17:25 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3485H9Zc024000;
	Mon, 8 May 2023 05:17:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=TYmfJr7HHvsCMYz1MiZH4pwIzylWNmQxGfoSFBWza8I=;
 b=fF4abupXW4DeZCHGNHsgY95T+i5anWG2nDbBlO9LL/fM/FUk+L9L4keLAxnqJ0lZTzmR
 wPhcD2LFW/4xGxJm+c9Dr3ysODTh0q7O18Wd+MoDyXaCOV3/qmEq/dx4hfndPQHhAxpg
 /rT0tDqMiHGuZ2WQkbF5Iet3CraXPl2Fl5tiZrzlfE3nWLdf1NTKTwiF5MyrUDSXRNTe
 pEAfzr0PgqI3WNeTBe/FGc+aBMNERUcodioPR/wXOa3mVNx/pnuYVwVUrSm8VcEBd/bW
 VT2Lp5S+pHMO5F6WNNZaEPbLIqIlZQNtN9qL29EM6XbTNLgWEQhMWrj+/bS2L6EB5CBZ og== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qddwhjtcm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 May 2023 05:17:08 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3485H7fT007437
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 8 May 2023 05:17:07 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sun, 7 May 2023 22:17:02 -0700
Date: Mon, 8 May 2023 10:46:58 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
Message-ID: <20230508051657.GA24472@varda-linux.qualcomm.com>
References: <cover.1683183860.git.quic_varada@quicinc.com>
 <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
 <20230506110918.GC10918@varda-linux.qualcomm.com>
 <CAA8EJpqg2htfa2QZ7q6SP58N5YAABa8knBn4c5eYqYOU6HQNiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqg2htfa2QZ7q6SP58N5YAABa8knBn4c5eYqYOU6HQNiA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: rai6O2lzCM5Y5S4XD8ywvDXPGmLwmYiT
X-Proofpoint-ORIG-GUID: rai6O2lzCM5Y5S4XD8ywvDXPGmLwmYiT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-08_02,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 adultscore=0 impostorscore=0 mlxscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 mlxlogscore=844
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2305080036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_221723_732653_8E2823BE 
X-CRM114-Status: GOOD (  32.27  )
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

On Sat, May 06, 2023 at 02:33:11PM +0300, Dmitry Baryshkov wrote:
> On Sat, 6 May 2023 at 14:09, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > On Fri, May 05, 2023 at 12:29:54PM +0300, Dmitry Baryshkov wrote:
> > > On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> > > <quic_varada@quicinc.com> wrote:
> > > >
> > > > Add LDO regulator node
> > >
> > > As this LDO is provided by the PMIC, it would be nice to know why it
> > > is modelled as an always-on regulator instead of the proper PMIC
> > > regulator. Up to now we were doing this only for the outstanding power
> > > rails like CX/MX or EBI.
> >
> > These are always ON because USB phy doesn't support power
> > collapse, and there is a chance that other IP blocks might be
> > sharing the rail.
>
> You are describing the software side here. From the hardware point of
> view, it is an I2C regulator, which is probably also exported as an
> SMD_RPM regulator. Unless you have a good reason not to do so, there
> should be a node under rpm-requests, which describes mp5496 regulators
> exported via RPM. then USB should refer to those regulators.

Yes. It is a part of rpm-requests. That is why have mentioned V10
is dependent on
https://lore.kernel.org/lkml/20230407155727.20615-1-quic_devipriy@quicinc.com/T/.
The 4th patch of the above series
(https://lore.kernel.org/lkml/20230407155727.20615-1-quic_devipriy@quicinc.com/T/#mea3f0ea37c53cf5e39e10cd6cf3bed5243cec629)
adds the rpm_requests node and this regulator definition is added
to it. Hope that is ok.

Thanks
Varada

> > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > ---
> > > >  Changes in v10:
> > > >         - Add LDO regulator node
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > index bdc1434..1f5d14f 100644
> > > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > > @@ -60,6 +60,13 @@
> > > >                         regulator-min-microvolt = <725000>;
> > > >                         regulator-max-microvolt = <1075000>;
> > > >                 };
> > > > +
> > > > +               mp5496_l2: l2 {
> > > > +                       regulator-min-microvolt = <1800000>;
> > > > +                       regulator-max-microvolt = <1800000>;
> > > > +                       regulator-boot-on;
> > > > +                       regulator-always-on;
> > > > +               };
> > > >         };
> > > >  };
> > > >
> > > > --
> > > > 2.7.4
> > > >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
>
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
