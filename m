Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3184C77B7D
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 10:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6daKP/VrhBZC4MdTNUGGPqMbXPtqZXFpY/9R83xwKqM=; b=HJD8q3mFwiCxEx
	7LrAgsAC4+M5aoUUvc61qYdaDWD4h5Glwd56hGDu0wLNUWyuEpY9N/8NPF7wepDpaIlpIrJqm4BLV
	k9cP+7GU3pkCkwIuvQnVPQKTwdaP2AfG4GpGhSOHtEyPH9QNvY6J7+aAlBFgyvNIGET6IDjaeACMS
	hOXaG0Z4S+UNWiB9lKAZ4+0PFknNGlNV1aNbyAlznRikIG7zzkGV/gd5d+q/XloHHGHvkS2HU7WuN
	qrn25r4g5+iXALwXArRfWaPwMIFNOU0j6fuJ/g+1AkMIJfWLi+HfE2NSGNyO1xmCV6lz65vk78HtT
	Nmp6wwBhtjB/giL6joLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwgyT-005ktf-1s;
	Wed, 10 May 2023 10:23:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwgyR-005kt1-0I
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 10:23:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A9D4ud030035;
	Wed, 10 May 2023 10:22:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=ZoXXvx1KrUmrm6J8q0QWOx2OVpxXGbg1USHSHzeCXcU=;
 b=CO4YWD1spiikNUO4Je2K8BJXaKPi+CDg3zYbv1RgLjGTinejPMxvQiTWueTPCXW1yYOW
 DRd9anPkcomLHFbnIjtU+X2S0k5P9A5vFL53MlrtlD8PZplEInrEmWSdc6ImW52jdd2R
 XB7v6RJD32okUgudOQJq8ViX3zwomb3PnC1Q71BFGYsEFDDyUz/T7XkM7jvYfFJ1pHc/
 AmuxCZuK5oRO7DEDKTrRMR9VMQ7OmqMmzI89c7j5sFwE6R1N9uld+dwvCouA9Z3gmuLU
 T8fesIEp89VMvRuEayGAzA5kmHKdjOhqbfuNa2YUUGdjOEosiUJ0uuvaZpCEEkAuZjqo Kw== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qg5mprer1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 10:22:55 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34AAMtTd027369
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 10:22:55 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 10 May 2023 03:22:49 -0700
Date: Wed, 10 May 2023 15:52:45 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v11 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
Message-ID: <20230510102244.GA21530@varda-linux.qualcomm.com>
References: <cover.1683630932.git.quic_varada@quicinc.com>
 <42bf6244582d6208f51db1a9299fe1c8afab4e14.1683630932.git.quic_varada@quicinc.com>
 <CAA8EJpqkSNzx=73JS1Csw+ivVovhrFeM0R5j2tpruEfNqvT48Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqkSNzx=73JS1Csw+ivVovhrFeM0R5j2tpruEfNqvT48Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: n9j7NvPT3oQR1Gs-DzZ4KCoQp_4YgHjt
X-Proofpoint-GUID: n9j7NvPT3oQR1Gs-DzZ4KCoQp_4YgHjt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 phishscore=0 mlxlogscore=999 clxscore=1015
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305100081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_032307_133955_6CE1F8C7 
X-CRM114-Status: GOOD (  22.33  )
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

On Tue, May 09, 2023 at 04:08:59PM +0300, Dmitry Baryshkov wrote:
> On Tue, 9 May 2023 at 14:56, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > Add LDO regulator node
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v10:
> >         - Add LDO regulator node
> > ---
> >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Minor question below:
>
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
>
> This usually points out that there are other users which are not yet
> enabled/properly specified. What users are there for this supply which
> demand it to be always on?

The 1.8v rail is used by PCIe PHY, PLL for Ethernet SerDes
interface and PLLs that generate SoC clocks. The voting for this
rail is managed by the RPM f/w.

Thanks
Varada

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
