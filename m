Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9036AEB64D7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 09:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUTZfh2BKDVylqtoHSMhap2myKC0zi5IsOD2Un5VCbA=; b=MDvdhR65yUl7Dr
	mbTzbePx3qA9FOb5HA179zQwHcWtBNxEWElpZpOZk0k5UrVPcDiYP/3U0UzGNGICZrYM7BmJREqry
	tP13CuNuIJ7JbSrcKOS4Z3qQiSBPZP5QGYZPI1BrgiJbdQHszJKHTkVYMHvQa0nUObj6i3jouSiJQ
	a66v+LIl1oyJw+yLED6dZs+3Nji6Kj9l52XZyYiiZ9v8ztaDBRyYt5Bu3cDZ3AfUzcB1mQCC6oXLO
	6R5i1ovQGrZ29p3jmH4ZavIbVWsAxXhEnizx6kulBS7Yx8JQUkVN83/IVOZ4elK/4iguZKU0awc/u
	kw8obYXUG6YB2io2VH9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBXje-00Ajtm-0l;
	Tue, 20 Jun 2023 09:33:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBXja-00Ajsp-2G;
	Tue, 20 Jun 2023 09:33:12 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35K7qkfO030100;
	Tue, 20 Jun 2023 09:32:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=ky61XlTFvnA7lVh5OyfvaMQHiiNipeR+9XCFDt37Dwk=;
 b=WJJudu5ihbSzoI/GwMqVJJs6kk+CC9UMvWpbMMTS6FL7ccnm0bl1q635GOd6dEug4d1n
 uqP6+503Oawhj8muKEIWZmukfDBV2x+8CQlGrlHSkImP+4mhuj0v32GQTAXXT50CuxD2
 f3/T030jYt4PtLfFo+JQXYy800Nx1YB+H2GdFZHcuIiPqpzSjpD+h7eWrrP4OfPYEHt5
 Ftw6lW4YbXGFHsGvJrYEsBcWXnKYqNxcrosY/rE9NgThETpcA02MDqQkDRnCMzPSqZq3
 yzrh6L+XrN+Vo46Q7VRFvurCYIVANXa4SYdAJ261EuKqqeQkoBSBSb5XzpR+oDbj0rC3 cA== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rb1dtgykj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Jun 2023 09:32:53 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35K9WqXi010487
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Jun 2023 09:32:52 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 20 Jun 2023 02:32:43 -0700
Date: Tue, 20 Jun 2023 15:02:33 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Message-ID: <20230620093225.GA9966@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
 <98960024-7dbc-91a3-75de-90b529637916@linaro.org>
 <20230615052746.GB22186@varda-linux.qualcomm.com>
 <aca54f67-cc09-ff4f-93ca-6973d153db2c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aca54f67-cc09-ff4f-93ca-6973d153db2c@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aP3VCaexHP-8vPhMErFKpkN7DtlWrrC8
X-Proofpoint-GUID: aP3VCaexHP-8vPhMErFKpkN7DtlWrrC8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-20_06,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306200084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_023310_748194_6B5CB08D 
X-CRM114-Status: GOOD (  30.38  )
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

On Sat, Jun 17, 2023 at 10:48:41AM +0200, Krzysztof Kozlowski wrote:
> On 15/06/2023 07:27, Varadarajan Narayanan wrote:
> >>> +          - enum:
> >>> +              - qcom,m31-usb-hsphy
> >>
> >> I am confused what's this. If m31 is coming from some IP block provider,
> >> then you are using wrong vendor prefix.
> >> https://www.m31tech.com/download_file/M31_USB.pdf
> >>
> >>
> >>> +              - qcom,ipq5332-m31-usb-hsphy
> >>
> >> This confuses me even more. IPQ m31?
> >
> > Will change this to m31,usb-hsphy and m31,ipq5332-usb-hsphy respectively.
> > Will that be acceptable?
>
> m31,ipq5332 seems wrong, as m31 did not create ipq5332. Does the m31
> device have some name/version/model? If it is not really known, then I
> would just propose to go with qcom,ipq5332-usb-hsphy.
>
> Skip generic compatible ("usb-hsphy") entirely.

Ok.

> And then we have... existing bindings qcom,usb-hs-phy.yaml. Don't create
> something similar with difference in the hyphen. Just use device
> specific compatible thus device specific filename.

qcom,usb-hs-phy.yaml seems to be for ULPI mode phy and the
driver we are introducing is for UTMI. We would have to
modify phy-qcom-usb-hs.c to accomodate M31. Will that be
acceptable to phy-qcom-usb-hs.c owners/maintainers?

> >>> +
> >>> +  reg:
> >>> +    description:
> >>> +      Offset and length of the M31 PHY register set
> >>
> >> Drop description, obvious.
> >
> > Ok.
> >
> >>> +    maxItems: 2
> >>> +
> >>> +  reg-names:
> >>> +    items:
> >>> +      - const: m31usb_phy_base
> >>> +      - const: qscratch_base
> >>
> >> Drop "_base" from both.
> >
> > Ok. Will drop qscratch_base. This is in the controller space.
> > Should not come here.
>
> Then drop reg-names entirely.

Ok.

> >>> +
> >>> +  phy_type:
> >>> +    oneOf:
> >>> +      - items:
> >>> +          - enum:
> >>> +              - utmi
> >>> +              - ulpi
> >>
> >> This does not belong to phy, but to USB node.
> >
> > This is used by the driver to set a bit during phy init. Hence
> > have it as a replication of the USB node's entry. If this is not
> > permissible, is there some way to get this from the USB node,
> > or any other alternative mechanism?
>
> Shouldn't USB controller choose what type of PHY type it wants?

Will remove this. IPQ5332 uses it in UTMI mode only.

> >>> +
> >>> +additionalProperties: false
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> >>> +    hs_m31phy_0: hs_m31phy@5b00 {
> >>
> >> Node names should be generic. See also explanation and list of examples
> >> in DT specification:
> >> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> >>
> >> Also, no underscores in node names.
> >
> > Will change this as usbphy0:hs_m31phy@7b000
>
> This does not solve my comments. I did not write "label" but "node name".

Sorry. will fix it.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
