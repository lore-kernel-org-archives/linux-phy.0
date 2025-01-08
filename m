Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07110E77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 07:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxZ3LxzLx7g9ghXq+rz7WcIprvzsohOMfGOc4LRyPBs=; b=hQKQvK+I9mL7ov
	9SD2dE4txeX/u4osfSLCevxnGg+Ni4a5qQ2jCUGJWV7D78IMjXLinNkz0I3EGzVGwzFfVxCPa5q5b
	Uvc/CuMOMG4yeWgvrABSK5adNP21fBjS0+38eJJrYBzSg9lnkA8Q97gqno3EtKyKxrHKM4VIY5wnF
	iBXCJ7OWYUVHEIKQTclc5jJWGA+t3eROOAt2CuasvYk6DJAj8ErtpzVlLFmaVJPjZcJ6Ad1Cts65I
	XRUThWjL5PuC4wLvl8e3kQrD1jmGv72sJO4qb9PidlrHB/x/C+P+G1HwD87YUHYvHNx7mt0AVAaMS
	XutJ4/j3u8PIT7MQJidg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQhG-00000007T2s-3K77;
	Wed, 08 Jan 2025 07:41:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQgQ-00000007SvS-1JMl
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 07:40:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5087DcHL004852;
	Wed, 8 Jan 2025 07:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AFcLa64MHCpVfa37awLVAMKs
	qRcEELW2evvgmYO5Fbc=; b=VF8G+ALCwx6h9LWfIqVVXrxe1ar1rycWfV6dvt2R
	kL3JRaerH8OjWG9nAP5jMOAVQ2ns2Y1NvOMrWGf0oFp+vDXkU7Aa0lswnbQbHV9k
	XkTgTAlHbwrkeddLX4b6Yb+Sh7hJTPlfIL6kr8HQgkfp/D1PAqDwAXrtMyLn4aRO
	jGzflBpsZgl8mUXrjAolXo1mXMVoQXIynhsR4LHtjSxrYqb7q7l0dVWaa0BwyRYm
	lCb2pPqxbA82SpPNgfCnsbGRtaiuKYaP0SMwmqpCIiWRi/5zfUdewPlMzxLwtmzH
	GSfptRI8NqibTHyv9Zr557nsi7NMkt8hLbrT0DQSXbCM4Q==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 441msq026e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 07:40:47 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5087elcm027579
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Jan 2025 07:40:47 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 7 Jan 2025 23:40:40 -0800
Date: Wed, 8 Jan 2025 13:10:36 +0530
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
Message-ID: <Z34r9D8htoDNvagK@hu-varada-blr.qualcomm.com>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-4-quic_varada@quicinc.com>
 <4hwclzotaowog6rzfejiixqvvg7iumg4udbvq3h72mmh42dbki@piphsf37vhpv>
 <Z30KZM1RGdFvB1dy@hu-varada-blr.qualcomm.com>
 <50b03189-bf2c-46c8-b7c2-4aa5eed97c35@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50b03189-bf2c-46c8-b7c2-4aa5eed97c35@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: MqRpy0peP3xR2VvtoYQ3B19Hgx7Iie9w
X-Proofpoint-GUID: MqRpy0peP3xR2VvtoYQ3B19Hgx7Iie9w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 mlxlogscore=995
 suspectscore=0 phishscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_234054_358261_FACEFD83 
X-CRM114-Status: GOOD (  18.84  )
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

On Wed, Jan 08, 2025 at 08:19:19AM +0100, Krzysztof Kozlowski wrote:
> On 07/01/2025 12:05, Varadarajan Narayanan wrote:
> >>> ---
> >>>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
> >>>  1 file changed, 8 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>> index bd87f6b49d68..9f37eca1ce0d 100644
> >>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>> @@ -26,7 +26,6 @@ properties:
> >>>            - qcom,pcie-ipq8064-v2
> >>>            - qcom,pcie-ipq8074
> >>>            - qcom,pcie-ipq8074-gen3
> >>> -          - qcom,pcie-ipq9574
> >>
> >> I don't understand this change at all and your commit msg explains
> >> here nothing.
> >
> > All DT entries except "reg" is similar between ipq5332 and
> > ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
> > additional (i.e. sixth) entry for ipq5332.
> >
> > If ipq9574 is not removed from here, dt_binding_check gives the
> > following errors
> >
> > 1.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg: [[557056, 12288], [402653184, 3869], [402657056, 168], [402657280, 4096], [403701760, 4096], [569344, 4096]] is too long
> >
> > 	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg']:
> > 	    {'maxItems': 5, 'minItems': 5}
> >
> > 2.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'config', 'mhi'] is too long
> >
> > 	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg-names']:
> > 	    {'items': [{'const': 'dbi'},
> > 		       {'const': 'elbi'},
> > 		       {'const': 'atu'},
> > 		       {'const': 'parf'},
> > 		       {'const': 'config'}],
> > 	     'maxItems': 5,
> > 	     'minItems': 5,
> > 	     'type': 'array'}
> >
> > Hence had to remove it from here and add it to the sdx55 reg
> > definition.
>
> So you entirely dropped constrain for regs. No. This has to be fixed,
> not dropped.

ipq9574 is not dropped entirely. It is clubbed with sdx55's
constraints. Please see this

	@@ -206,6 +208,8 @@ allOf:
		 compatible:
		   contains:
		     enum:
	+              - qcom,pcie-ipq5332
	+              - qcom,pcie-ipq9574
		       - qcom,pcie-sdx55
	     then:
	       properties:

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
