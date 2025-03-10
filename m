Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 194ACC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EC8ByA1QFDSMNEkF0BegnueiYy51fBxHuxCERpMMTh4=; b=QXpZ9VVdFhP/AJ
	y02xb0EeZkuIUMQULtw+DPlxm0rjgRetRsZVVbIZNGdh0Z6WuvZheoonCVd7kZXN4d59r7wQYZ5mI
	6CbLwoxeAFKKxayCO9YM10RuN/QciSn8MNLB3C5WCJ/HgTqHeZSmknefKSV7qlyg4G4Yx7Z6zU7PP
	KfV2obwkBqDZ4UDDXGF0HtRVj5LM8gkn2qlbeVxxEbe9AIzJno6+BqaIO38zPPaHeJW1VDKCmtks6
	lFK4GkX+VYQBPXB7zsVwk/k8b8sym+J6Ls2Hdt6wR+U8y+1I2hGQ4eDy4Uxwel7OFggNPQdk60hZa
	uVoYKWuevZj5kgcHbL4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trY89-00000001qTh-2Y3P;
	Mon, 10 Mar 2025 08:04:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trY86-00000001qT9-33zR
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 08:04:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529LpadC006993;
	Mon, 10 Mar 2025 08:04:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cxXyU/CPeeLRRBEPGXldrDGG
	Lm0McpIWpdorCRx1eXc=; b=O+JhHgCmruwm7qdKT+oHryqG3/JmAmyLJtLo/pV6
	yaonT8eoEN8Azqf3gADtqOYzqrDpnBIUruauuSMRZILKuMz3kUsZ6h+gPjIGJUnG
	/J/EzOL8u/0ji1xX7pKEQSpCz1JGeUhfF3JJG9jDtDuU41EVU0TnF6izA+53HTJF
	Qq1FxcNwIeOXLVKfK0Dy1QIjXvCTr1bV0Uo8yodQlsxa3PeTdedJ+JhYjyoWyjg6
	7KSXK54PttD5ju/A6nh64vKTN9CDd66VoYit2g6/Q8Bl4//KLHvMWvpX1srXSFNf
	QFg7TiwV2ltywiioK0hg5kXqFjAS5rLaqb2eMtGmSCqejA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eypbxsb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 08:04:39 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52A84dwF009403
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 08:04:39 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 01:04:33 -0700
Date: Mon, 10 Mar 2025 13:34:30 +0530
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
Subject: Re: [PATCH v11 4/7] arm64: dts: qcom: ipq9574: Reorder reg and
 reg-names
Message-ID: <Z86dDutB1NnGTjRt@hu-varada-blr.qualcomm.com>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220094251.230936-5-quic_varada@quicinc.com>
 <b3d7374e-b144-4b0a-96f8-0538f9cd1a39@kernel.org>
 <d21a6d94-d2bc-44fd-bf40-097bccc11930@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d21a6d94-d2bc-44fd-bf40-097bccc11930@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=A9yWP7WG c=1 sm=1 tr=0 ts=67ce9d17 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=5j2EdkbW8jc13NUVTY0A:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: RrqEkNB2PdSXsQz5f1uve-Gotl7HL6Fb
X-Proofpoint-GUID: RrqEkNB2PdSXsQz5f1uve-Gotl7HL6Fb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_03,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=695
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_010454_790213_AD2B0AE1 
X-CRM114-Status: GOOD (  17.35  )
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

On Thu, Mar 06, 2025 at 12:56:02PM +0100, Krzysztof Kozlowski wrote:
> On 06/03/2025 12:49, Krzysztof Kozlowski wrote:
> > On 20/02/2025 10:42, Varadarajan Narayanan wrote:
> >> The 'reg' & 'reg-names' constraints used in the bindings and dtsi are
> >> different resulting in dt_bindings_check errors. Re-order the reg entries,
> >
> > Why?

Initially ipq9574 had 5 reg entries. ipq5332 has 6. To be able to use ipq9574 as
fallback for ipq5332 had to add the sixth entry to ipq9574. Then it becomes
similar to sdx55. Hence to avoid duplication, changed ipq9574 to use sdx55 reg
definition. Because of this the erg entries' order changed.

> >
> >> fix the node names and move the nodes to maintain sort order to address the
> >
> > Fixing (how?) node name looks like separate problem.

Because the reg entries order changed, the "parf" register became the first
entry. This resulted in the address in pcie@xxx to not match with the first reg
entry and this was changed. Since the nodes have to be located per address sort
order, had to move the node to an appropriate slot per the address sort order.

> >> following errors/warnings.
> >>
> >> 	arch/arm64/boot/dts/qcom/ipq9574-rdp449.dtb: pcie@20000000: reg-names:0: 'parf' was expected
>
> How can I reproduce this error?
>
> Isn't this error which you intentionally added and now you claim you
> fix? In the same patchset?
>
> This really looks like breaking things just to call it "look, I fixed
> something" two patches later in the same set.

True. But had to do these to have ipq9574 as fallback compatible. Have asked for
suggestions to handle this better. Will follow the approach that is acceptable
to the community.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
