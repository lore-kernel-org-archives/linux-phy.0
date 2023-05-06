Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCB5C77B75
	for <linux-phy@archiver.kernel.org>; Sat,  6 May 2023 11:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18MA8GQulxEFyX2l4LiS/8TlKKJiE1ahHlZS0+QC/5E=; b=yA+c4H4ITLEG7O
	53S8iw75YdeAoMmFAV/JWO8//jALqgUYXZiCsSJhX3VykH7mdJj7cFqxudGMYXfRtPFZyKWYkQpHa
	u8PyjnFZZWJMVZhitZ8582UGvbYnYo68vmJo5vrQ90ZpGJjivBWrAtY/rF+4Dr4UW/jUSUDeQp1RT
	vSNe7r5lqiyVQQfrohATkuql7P2O2SOewuz1lx0TKOJMmuaYjTg5IkfBjDJyUY7/AzuaNSIZZwQYR
	QkmOY+H3aDm8b7o2Pl2FMKBBxICOWNE7eWarn/l/wCebbVd/zNzeu8TKTtxMBmb3U+kdNTDZkL/Qv
	v3CEe0S9lO2njaK/fNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFnO-00DH6j-0w;
	Sat, 06 May 2023 11:09:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFnL-00DH5v-04
	for linux-phy@lists.infradead.org;
	Sat, 06 May 2023 11:09:44 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 346B9XSc011530;
	Sat, 6 May 2023 11:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=bFOvm6d2WAwvct5dnT+/MXYvREcJO/aMBHCrcd8Vu7I=;
 b=FT1s9LQrnqBxPatbfRxr5jeRjbYs0oo/pimEFhjSz1s7GfGfXsb1ux0c5CLqv3v7wmjF
 wHU2rFBBiPc+zNW2Om43lNAjUJ8odQg9GCeVk01rkt1FQAsiPPzcWp1pPiHGD8tRvohy
 zdYXy95k1uW6DgXYibfGwQ6ToBsv6KepuQK09Z1096wnA0ODlbx1EsyAkxnMDOHclfTT
 1gakmC6SL96Gl1i146pFr3GOZv0a5yXOZR386RsMmiXxzfedjIcS1hlAhnPYwmJxChdw
 Q5lpIO1efWTWLwVA+dDnBkhgvE9aSEKwP/UZAr/uuumW3YZQXGvN0a6S2rp05LPMLkq4 pw== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qdega0es1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 06 May 2023 11:09:32 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 346B9Vbu020326
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 6 May 2023 11:09:31 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sat, 6 May 2023 04:09:26 -0700
Date: Sat, 6 May 2023 16:39:22 +0530
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
Message-ID: <20230506110918.GC10918@varda-linux.qualcomm.com>
References: <cover.1683183860.git.quic_varada@quicinc.com>
 <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: O7vbE5WDZtvf-sGePS9Vjkneo8pkuFva
X-Proofpoint-ORIG-GUID: O7vbE5WDZtvf-sGePS9Vjkneo8pkuFva
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-06_07,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0
 mlxlogscore=825 spamscore=0 suspectscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305060085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230506_040943_203196_634AD07F 
X-CRM114-Status: GOOD (  23.58  )
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

On Fri, May 05, 2023 at 12:29:54PM +0300, Dmitry Baryshkov wrote:
> On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > Add LDO regulator node
>
> As this LDO is provided by the PMIC, it would be nice to know why it
> is modelled as an always-on regulator instead of the proper PMIC
> regulator. Up to now we were doing this only for the outstanding power
> rails like CX/MX or EBI.

These are always ON because USB phy doesn't support power
collapse, and there is a chance that other IP blocks might be
sharing the rail.

Thanks
Varada

> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v10:
> >         - Add LDO regulator node
> > ---
> >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > index bdc1434..1f5d14f 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > @@ -60,6 +60,13 @@
> >                         regulator-min-microvolt = <725000>;
> >                         regulator-max-microvolt = <1075000>;
> >                 };
> > +
> > +               mp5496_l2: l2 {
> > +                       regulator-min-microvolt = <1800000>;
> > +                       regulator-max-microvolt = <1800000>;
> > +                       regulator-boot-on;
> > +                       regulator-always-on;
> > +               };
> >         };
> >  };
> >
> > --
> > 2.7.4
> >
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
