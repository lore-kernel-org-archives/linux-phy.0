Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBB49C0218B
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 08:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPPqiIF9v4xm72mwva9gd1olOrLRAiEPgx1mwABSOD8=; b=RNXAdt1sFvA1IX
	pN+TloH1mt5D9Y0IV651/siP1XBiRXuI5MmalBgW01U825lVyUHRhTNB3sohUFSijOGNkqBbaIdOh
	zQGRaaioGiUZat7pS9czm/A83Et2Iw6JBwgUW74pv4DM009iqkmwFhPuqYaIanzN79iZIYmR7CQYn
	NK/86V+U/VTTnrtFACrXOTPW61B7ohG4XtcbqRgdaeaER2IIyobxLI6JrOMKV5uwfQty61g0O8q47
	YyO64/F+wkH/zBpFtqmHrdL8cva0OZ7W1H3JjEyBnjgd0k8LBGCZG/SwZvE3TVT1czECSk/FuE6p6
	ifDcrdEk1/Fw/+OWhwtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tasDw-0000000BwAq-1VCM;
	Thu, 23 Jan 2025 08:06:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tasDu-0000000BwAP-1Bot
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 08:05:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50N4s44N024068;
	Thu, 23 Jan 2025 08:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Qh1iaWoE1NnCNORx74pe70l
	w6fshfbRLO+R3ckU8qA=; b=dkxeSSpZ/rPdD3BVtYXle5LNYKJL6pdhfl9nzuD2
	0VzpekAQF7ejcTLfMyMpmngqmtoyasBDPc3WwzTfcaPMc9cG9Jd0pUHWKqn3SMu5
	6sZLjwM123vWCILOzJXYiytlEVmpsHlioiOKKvEDYDPVAA8HI//5+1zB2y9r3n+1
	aF5m8u4knm1Ftj+FgWUiKkRLvMUi6VgoGJ1P73v0ItjgKx65p3RPMuQC/ALhlxUT
	NIhM8FGJmTTJ6MRX6vmVSZAvGmSZ4tIxoJA+0SlN4Uq3JfR0h3URH57H9Hhi2V3I
	KDimDz/OJbEXnLjeifdLcPEmQLL38VFgJYlTDIZ2eplowQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bf518crs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Jan 2025 08:05:47 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50N85kJN001745
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Jan 2025 08:05:46 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 23 Jan 2025 00:05:40 -0800
Date: Thu, 23 Jan 2025 13:35:36 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v7 5/7] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <Z5H4UPhRjKhbbP9/@hu-varada-blr.qualcomm.com>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-6-quic_varada@quicinc.com>
 <20250123-red-unicorn-of-piety-3c7de5@krzk-bin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123-red-unicorn-of-piety-3c7de5@krzk-bin>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qmOH5iK4QdRqheY4B3Byp9BchFam-3cb
X-Proofpoint-GUID: qmOH5iK4QdRqheY4B3Byp9BchFam-3cb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_03,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501230060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_000558_335418_387C5E9D 
X-CRM114-Status: GOOD (  22.91  )
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

On Thu, Jan 23, 2025 at 08:58:29AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Jan 22, 2025 at 12:04:09PM +0530, Varadarajan Narayanan wrote:
> > Document the PCIe controller on IPQ5332 platform. IPQ5332 will
> > use IPQ9574 as the fall back compatible.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v7: Moved ipq9574 related changes to a separate patch
> >     Add 'global' interrupt
> >
> > v6: Commit message update only. Add info regarding the moving of
> >     ipq9574 from 5 "reg" definition to 5 or 6 reg definition.
> >
> > v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts
> >
> > v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
> >     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
> >       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
> >       and dt_binding_check flag errors.
> > ---
> >  .../devicetree/bindings/pci/qcom,pcie.yaml          | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index 413c6b76c26c..ead97286fd41 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -34,6 +34,10 @@ properties:
> >        - items:
> >            - const: qcom,pcie-msm8998
> >            - const: qcom,pcie-msm8996
> > +      - items:
> > +          - enum:
> > +              - qcom,pcie-ipq5332
> > +          - const: qcom,pcie-ipq9574
>
> Repeated many times on reviews to qcom: don't add to the end of the
> lists. In case of multiple items, these are ordered by fallback, so this
> goes next to other ipq entry... wait, that's already qcom,pcie-ipq9574,
> so why are you duplicating?
>
> On what tree are you working?

Looks like ipq5424 changes got merged between the time I cloned
linux-next, tested and posted the patch. Will fix this and post
a new one.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
