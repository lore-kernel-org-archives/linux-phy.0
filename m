Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A779E77198
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 11:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WRvEM1Pr31sxIAerQtmsXpPPXmMsputuFllLPKMWwk=; b=GNuCaQ/Mm6kpSt
	UY/dtG6zq4oGkjcsW75k91NfF0FlNgJMurteqOpsmt40SX87DQiWAMWbEU1mkY2fWjrdQMmUG0q7B
	dMNSZCnnpFFsK6MvYeGPIZtzhTwhs/NCG7J0FigaViqt7jFPtLNyIcDC6ZGG4rBJsd1NkbIie2NBk
	i4FpDaZj4LUcxgZdJUdf67VvGlkcWRaKmkhAqf8sMiRpZMQ7SJ34AnMZHy6JOZhu4Ob8EWPmPEx7l
	Vz6sc4n5oQlW+O/6y1GPEgfr1222jaj8LHtAM/YwILx0Az3OPzcMjQ5D4uFVEt6CWHV1U2lyjfskR
	AUcojGfkKlvPSplpbgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Ow-00000004UDX-42ub;
	Tue, 07 Jan 2025 11:05:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Or-00000004UCm-2Bqt
	for linux-phy@lists.infradead.org;
	Tue, 07 Jan 2025 11:05:33 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507A0T1J019736;
	Tue, 7 Jan 2025 11:05:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/yz6W5asShFN9pgFAwO5c5pG
	EwHieZL0RQw4bc3kmgQ=; b=ICpfpPfGS51AnQ8VIHw3sGv8lco2EJi+Epk2dojM
	Iwq1NYkeg7dfozpAMCc1f+k5kk99ukUAX9hXxDtGyvmi1s3ayqyDi+UNFeYeAUf5
	/IEHB7y/6iUXgK0TrhXPlDKhnPzSSsbCWLGAEmXaNBgespMjcHVQjH33MnilylJf
	PhBm+YmdtGwRqppiw53OBjR3cmz60bLPsrpJGw9JulI1qkwQ2sjBy1IpioZF2U09
	K/xzF0cwqTw39aRj/4duKB7t1DwIaqKBAtz0X8v/Id8OEemKd4QnynpSd3/PxMWZ
	dlUfa8C6RoXt4YMFRfB2z6JrNIPoP2EeX2DSlUhscgYLhQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44124xr5fk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 11:05:18 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 507B5HcW015952
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Jan 2025 11:05:17 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 7 Jan 2025 03:05:11 -0800
Date: Tue, 7 Jan 2025 16:35:08 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v5 3/5] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <Z30KZM1RGdFvB1dy@hu-varada-blr.qualcomm.com>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-4-quic_varada@quicinc.com>
 <4hwclzotaowog6rzfejiixqvvg7iumg4udbvq3h72mmh42dbki@piphsf37vhpv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4hwclzotaowog6rzfejiixqvvg7iumg4udbvq3h72mmh42dbki@piphsf37vhpv>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Rqs0Y1pnTmicV7r4h61kix2iYIbzCCBR
X-Proofpoint-GUID: Rqs0Y1pnTmicV7r4h61kix2iYIbzCCBR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_030529_677225_A9E7BFD8 
X-CRM114-Status: GOOD (  20.17  )
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

On Fri, Jan 03, 2025 at 08:45:14AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Jan 02, 2025 at 05:00:17PM +0530, Varadarajan Narayanan wrote:
> > Document the PCIe controller on IPQ5332 platform.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts
>
> What? How this is related to commit msg?
>
> >
> > v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
> >     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
> >       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
> >       and dt_binding_check flag errors.
> > ---
> >  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index bd87f6b49d68..9f37eca1ce0d 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -26,7 +26,6 @@ properties:
> >            - qcom,pcie-ipq8064-v2
> >            - qcom,pcie-ipq8074
> >            - qcom,pcie-ipq8074-gen3
> > -          - qcom,pcie-ipq9574
>
> I don't understand this change at all and your commit msg explains
> here nothing.

All DT entries except "reg" is similar between ipq5332 and
ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
additional (i.e. sixth) entry for ipq5332.

If ipq9574 is not removed from here, dt_binding_check gives the
following errors

1.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg: [[557056, 12288], [402653184, 3869], [402657056, 168], [402657280, 4096], [403701760, 4096], [569344, 4096]] is too long

	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg']:
	    {'maxItems': 5, 'minItems': 5}

2.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'config', 'mhi'] is too long

	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg-names']:
	    {'items': [{'const': 'dbi'},
		       {'const': 'elbi'},
		       {'const': 'atu'},
		       {'const': 'parf'},
		       {'const': 'config'}],
	     'maxItems': 5,
	     'minItems': 5,
	     'type': 'array'}

Hence had to remove it from here and add it to the sdx55 reg
definition.

Will capture this in the commit message.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
