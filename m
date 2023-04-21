Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A51EC7618E
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 10:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bs1YtKn7ZLfqm+We3RNWPaXGsNBnDJRXaaRAoeuIh8=; b=0NJmDUaXMTCvL+
	wdAN5FxcWBszhNwrMee57BWo42pZJTdu8vqEQ6ZRI77Z4FkJnZtbHuBx4mBW44G2WfPldUb72b2Q1
	Fzkw0gR2FspHrMIAXhPbiS7SHecwWyF4uqVq1DBGEicZZ2LOiVVrxIanRyz684aXkx4eTgTv6deqr
	/MxMU1IlUewQxRPWqSWyJQ6F8WlE5LH+pOCbgo6PdUUjbJZFgzfbIiENgO4I8CTdv94q2ZZ3yrbl0
	mYtU9UsE674fiFWG4oQ8t1TPALdxIu9yHDvy0aO0xWzZMans5r3UZqpn2ncUIh4l61Tm+C4vkCXuL
	2JB9fA5BAdvZj+2ca0rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnp8-00ASac-3D;
	Fri, 21 Apr 2023 10:17:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnp5-00ASZq-3A
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 10:17:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33L9uYJx020122;
	Fri, 21 Apr 2023 10:16:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=w/flkLi6mlZFEUDZtiT0/UedesIT0Ogc6uR6JWPUsI8=;
 b=h7iorEO4wghW0cO8ipX8pDHutGzqaPqt4MJOWlB0e9y1TLk9TuCvHjy8Uub/0j7nbxd0
 N08P4VCVuFoaGh2hGrNiSz2PHbPZOQzwow/rJ2W0GVWXglTkAJG3yJt5zCadMRTbMXY6
 vFOQRmNIUPxwHc/ON5QrUyoj7ARad7A1+Pc+Isl4DEE0R/dW8ngKPIhqGWGfZT9UJvdE
 pk6OxruhkuR+G9zwvRIqck6I4CIRuUg8oEXWoGr2mQLaMMQ6ruXGNvRknYICrKvCCC22
 ybcW/cDNz9HyEV/rHPVPBXqYgcszaDFi+oDlBwiBdki5y9JEzT/xtcM5aHs6orcdpYL9 Yg== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3e34s831-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 10:16:49 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LAGmlU009507
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 10:16:48 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 03:16:42 -0700
Date: Fri, 21 Apr 2023 15:46:38 +0530
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
Subject: Re: [PATCH v8 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Message-ID: <20230421101637.GC5813@varda-linux.qualcomm.com>
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <3ee3163e6933b52e3eb4144c8041062dbd15e6c2.1680693149.git.quic_varada@quicinc.com>
 <533651bb-e72a-c899-5b64-16d000819e20@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <533651bb-e72a-c899-5b64-16d000819e20@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: rXRsAgAQmQR6q1cXncVvoY8_Sh7CN0hL
X-Proofpoint-GUID: rXRsAgAQmQR6q1cXncVvoY8_Sh7CN0hL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_03,2023-04-20_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 phishscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304210088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_031700_160077_4BA2F29C 
X-CRM114-Status: GOOD (  21.38  )
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

On Thu, Apr 06, 2023 at 09:43:48AM +0200, Krzysztof Kozlowski wrote:
> On 05/04/2023 13:41, Varadarajan Narayanan wrote:
> > Document the IPQ9574 dwc3 compatible.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v6:
> > 	- Made power-domains as optional
> > 	- Resolved all 'make dtbs_check' messages
> >
> >  Changes in v5:
> > 	- Restore removed constraints
> >
> >  Changes in v4:
> > 	- Update other relevant sections
> > 	- Remove constraints not applicable to IPQ9574
> > ---
> >  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 22 +++++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > index d842819..f5dd268 100644
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
> > @@ -133,7 +134,6 @@ required:
> >    - "#address-cells"
> >    - "#size-cells"
> >    - ranges
> > -  - power-domains
>
>
> Power domains are required. Commit msg does not explain why this should
> be now optional.

Since IPQ9574 doesn't have power switches, couldn't provide power-domains info.
So, had to make it optional to pass 'make dtbs_check'.

Will post patch with updated commit msg.

> >    - clocks
> >    - clock-names
> >    - interrupts
> > @@ -197,6 +197,26 @@ allOf:
> >              - const: iface
> >              - const: sleep
> >              - const: mock_utmi
> > +      required:
> > +        - power-domains
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,ipq9574-dwc3
>
> You do not need new entry. Just open the file and file respective
> existing if.

Sure. Will fix this and post.

Thanks
Varada

> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
