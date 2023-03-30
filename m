Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A3DC6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 07:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEU5qW0ztOMt167XhADxXrGIKQpWQFU0+6an0XkbQ4c=; b=GJuq71kH42CYVh
	msfcDnT7enEOIp6lM3uVV2Ar2+ZQ0R3wsNyj7vx0+U/WHpinaNI47tJTi8wAxKdk49hlacDwuXKNd
	RkshzrDEKcAznyale2wslivkAasRzA++iJBLFusx7QGOIN+EhJKvzDv1Uy4ll9jC1MfKRx5ztN0nf
	meTth8s8opf87n/M3nVNLRVCLM9m3qL0Yzi4L4xjoO39f4Pl65TQ9XocOrmUoVEE72uL1jTz9AA1D
	cY8hJ2eHK4yn+IJN45aymMoHpsD4hPkgDDCQOpQfBua0n2OnNpcblZMMQp1lLWZyRMM1FW9PZX8j3
	S0Jg19Dj0X6wNc0/DSJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phmVC-002sOV-1C;
	Thu, 30 Mar 2023 07:15:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phmVA-002sNv-0I
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 07:15:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U4WN1A016233;
	Thu, 30 Mar 2023 07:15:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=53EwoSOqGcFv+GPKJMNnPLY5ppj7b/ty96gmmBLJBNU=;
 b=jsoK0HfLwbYj9wM9DCCkdYSQkZaF2kghWqkUeCtj6odyGHock1oRrtpD1tOyEdLL5vkw
 bvYZ4lC6Odf8VAPJ9kmantqbXC8Ce0oP8kFuLTDvUyXRNHZkZ/kBrOLJ5X4IXpozVozO
 keYed1xSKuHexdVVe5eau8azDzptApPw83Kjunw7sIjDhVm8TalhHmDiQdNwGTq0qehy
 4A7Hv8AQMoire0F+nAo4ldGTwBZeQNBQZXWEoDT5XDXDntIquihr/D2Ukqse3+xPO1r4
 rhN0XdU7xPibqbAFc1m21bSi6+5HWuTHmW09yvikkIN82r1/ENSrpEnc+ORHJNFP5csa IQ== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pmq1vae4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:15:11 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U7FALO017238
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:15:10 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 00:15:04 -0700
Date: Thu, 30 Mar 2023 12:45:00 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v4 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Message-ID: <20230330071459.GD13508@varda-linux.qualcomm.com>
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <526f822a4d2397284f70ba632d92feaa3db0143e.1679909245.git.quic_varada@quicinc.com>
 <a68c7693-9d43-0aa9-c77b-26183e5a0a06@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a68c7693-9d43-0aa9-c77b-26183e5a0a06@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3r039srvontuDpRgRZZeZKar5ZxYqgH7
X-Proofpoint-ORIG-GUID: 3r039srvontuDpRgRZZeZKar5ZxYqgH7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_02,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=774
 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2303300057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_001516_130789_C97183E0 
X-CRM114-Status: GOOD (  19.78  )
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

On Tue, Mar 28, 2023 at 09:11:38AM +0200, Krzysztof Kozlowski wrote:
> On 27/03/2023 11:30, Varadarajan Narayanan wrote:
> > Document the IPQ9574 dwc3 compatible.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v4:
> > 	- Update other relevant sections
> > 	- Remove constraints not applicable to IPQ9574
>
> No, that's not way to go. These are required.

Yes. Misinterpreted an earlier comment.
Will fix this.

> > ---
> >  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 22 +++++++++++++++++++---
> >  1 file changed, 19 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > index a2aabda..3fc8c3c 100644
> > --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > @@ -17,6 +17,7 @@ properties:
> >            - qcom,ipq6018-dwc3
> >            - qcom,ipq8064-dwc3
> >            - qcom,ipq8074-dwc3
> > +          - qcom,ipq9574-dwc3
> >            - qcom,msm8953-dwc3
> >            - qcom,msm8994-dwc3
> >            - qcom,msm8996-dwc3
> > @@ -132,11 +133,8 @@ required:
> >    - "#address-cells"
> >    - "#size-cells"
> >    - ranges
> > -  - power-domains
> >    - clocks
> >    - clock-names
> > -  - interrupts
> > -  - interrupt-names
> >
> >  allOf:
> >    - if:
> > @@ -242,6 +240,24 @@ allOf:
> >          compatible:
> >            contains:
> >              enum:
> > +              - qcom,ipq9574-dwc3
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 5
> > +        clock-names:
> > +          items:
> > +            - const: sys_noc_axi
> > +            - const: anoc_axi
>
> Heh, do we really need entirely different clock names for each new variant?

Will fix and post a new patch.

Thanks
Varada

> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
