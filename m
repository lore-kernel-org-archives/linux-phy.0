Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22913C28B2E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 05:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJ8Xkde16AwJJss8/IB8SgEBTGRTmj4YjA0EyVTKeIE=; b=HEFi9daULmlh4v
	w2nJ+2YxbDVWk0nMl+Uu/ydZmH/xyTLWI/N0rszTOXssugott8vVEDunv5dh6iqL2KHSQC4xOY+dy
	KynE9T948jkGa9/V3DnERnufwf+a8ZtdztjtwbItM6IM0RaoeGlX8YDpaOM9pdSVD+3/iAM1UcF5x
	yDVoRwhZbN3+j3f5OeGgaYDXZ+Uhyf6lc9G3NAsilbz8/yeVrEvNtOckBjzqO8P9zsKnvFO/dFjLT
	RvcDsYvurz61W1bdUKal7Wp6ngcR/s1chK93FFfT8WJ7IYunCKFUljCYY1GITff1i7AQVt/jeI4h4
	vxl+jZe/1T3S0Er5yApg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trrkm-00000004cXe-0n1q;
	Tue, 11 Mar 2025 05:02:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trrkj-00000004cXG-2FKk
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 05:02:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52AK2but027672;
	Tue, 11 Mar 2025 05:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U1IuSTyE2ejrpBKZ/VwAkEm4
	TtNkqTU/BzvbXDulA1M=; b=A7crwZbaUfeIdfiOeUHsRu4D0oYNPDmD8x0CuV1n
	cAUynhaaq+/xG8HGvXixrDIRSpYp0WX0w/AbRgPI72yNAEoFAXJPL4Jg7rj3FNAb
	vWQfrwFINCppaY173hC5KzCd3mvwt66eZhV/2Q/ElBmSnwSuQ5tPu9VaLnaioin+
	Y/XTb3HbGHKgLVV/h1qRDuXGAsYr6U9q8m0ZZPDAUBB9OBhcL/YN/HdNNiA2RugJ
	E147X9vq0HZNTReXGgzhK7c9ZlB6EbGTKJlTJyXVObMo4+oNQLIAx2s9Fff+Bx5I
	L3UNc6LfNl7184GRFhIjYVNcqXwu9JFgOawglxwzoI8dBQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex6y4um-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Mar 2025 05:01:52 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52B51qDT011806
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Mar 2025 05:01:52 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 22:01:46 -0700
Date: Tue, 11 Mar 2025 10:31:42 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, <bhelgaas@google.com>,
        <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v11 3/7] dt-bindings: PCI: qcom: Use sdx55 reg
 description for ipq9574
Message-ID: <Z8/Dto1fZWvemiY5@hu-varada-blr.qualcomm.com>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220094251.230936-4-quic_varada@quicinc.com>
 <41b400fe-5e08-42c0-9bc6-a238d25d155a@kernel.org>
 <33bb1cb2-0c5e-402b-a5c6-9604b1dd8d99@kernel.org>
 <Z86YReHsKeF165F6@hu-varada-blr.qualcomm.com>
 <84456c70-e933-469f-ac7a-7d899f85e777@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84456c70-e933-469f-ac7a-7d899f85e777@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=G8bmE8k5 c=1 sm=1 tr=0 ts=67cfc3c0 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=RtE8JzJKpnPQm6hGurwA:9 a=CjuIK1q_8ugA:10 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: mK7SWkopM3DXc4majhHGrdDQQD-8hiRU
X-Proofpoint-ORIG-GUID: mK7SWkopM3DXc4majhHGrdDQQD-8hiRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_220205_587787_A7ED9A7B 
X-CRM114-Status: GOOD (  38.51  )
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

On Mon, Mar 10, 2025 at 12:37:28PM +0100, Krzysztof Kozlowski wrote:
> On 10/03/2025 08:44, Varadarajan Narayanan wrote:
> > On Thu, Mar 06, 2025 at 01:06:13PM +0100, Krzysztof Kozlowski wrote:
> >> On 06/03/2025 12:52, Krzysztof Kozlowski wrote:
> >>> On 20/02/2025 10:42, Varadarajan Narayanan wrote:
> >>>> All DT entries except "reg" is similar between ipq5332 and ipq9574. ipq9574
> >>>> has 5 registers while ipq5332 has 6. MHI is the additional (i.e. sixth
> >>>> entry). Since this matches with the sdx55's "reg" definition which allows
> >>>> for 5 or 6 registers, combine ipq9574 with sdx55.
> >>>>
> >>>> This change is to prepare ipq9574 to be used as ipq5332's fallback
> >>>> compatible.
> >>>>
> >>>> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>
> >>> Unreviewed.
> >>>
> >>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >>>> ---
> >>>> v8: Add 'Reviewed-by: Krzysztof Kozlowski'
> >>>> ---
> >>>>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>>> index 7235d6554cfb..4b4927178abc 100644
> >>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >>>> @@ -169,7 +169,6 @@ allOf:
> >>>>              enum:
> >>>>                - qcom,pcie-ipq6018
> >>>>                - qcom,pcie-ipq8074-gen3
> >>>> -              - qcom,pcie-ipq9574
> >>>
> >>> Why you did not explain that you are going to affect users of DTS?
> >>>
> >>> NAK
> >
> > Sorry for not explicitly calling this out. I thought that would be seen from the
> > following DTS related patches.
> >
> >> I did not connect the dots, but I pointed out that you break users and
> >> your DTS is wrong:
> >> https://lore.kernel.org/all/f7551daa-cce5-47b3-873f-21b9c5026ed2@kernel.org/
> >>
> >> so you should come back with questions to clarify what to do, not keep
> >> pushing this incorrect patchset.
> >>
> >> My bad, I should really have zero trust.
> >
> > It looks like it is not possible to have ipq9574 as fallback (for ipq5332)
> > without making changes to ipq9574 since the "reg" constraint is different
> > between the two. And this in turn would break the ABI w.r.t. ipq9574.
>
> I don't get why this is not possible. You have one list for ipq9574 and
> existing compatible devices, and you add second list for new device.
>
> ... or you just keep existing order. Why you need to keep changing order
> every time you add new device?

Presently, sdx55 and ipq9574 have the following reg/reg-names constraints.

	compatible	| qcom,pcie-sdx55	| qcom,pcie-ipq9574
	----------------+-----------------------+------------------
        reg	minItems| 5			| 5
		maxItems| 6			| 5
	----------------+-----------------------+------------------
        reg-names	|			|
		minItems| 5			| 5
	----------------+-----------------------+------------------
		maxItems|			| 5 (6 for ipq5332)
	----------------+-----------------------+------------------
		items	|			|
			| parf			| dbi
			| dbi			| elbi
			| elbi			| atu
			| atu			| parf
			| config		| config
			| mhi			| (add mhi for ipq5332)
	----------------+-----------------------+------------------

To make ipq9574 as fallback for ipq5332, have to add "mhi" to reg-names of
ipq9574. Once I add that, the sdx55 and ipq9574 is the same list but in
different order.

If this would not be considered as duplication of the same constraint, then I
can club ipq5332 with ipq9574.

If this would be considered as duplication, then sdx55 and ipq9574 would have to
use the same reg-names list and sdx55 or ipq9574 reg-names order would change.

> > To overcome this, two approaches seem to be availabe
> >
> > 	1. Document that ipq9574 is impacted and rework these patches to
> > 	   minimize the impact as much as possible
>
> What impact? What is the reason to impact ipq9574? What is the actual issue?

By impact, I meant the change in the reg-names order as mentioned above (for
considered as duplication).

> > 		(or)
> >
> > 	2. Handle ipq5332 as a separate compatible (without fallback) and reuse
> > 	   the constraints of sdx55 for "reg" and ipq9574 for the others (like
> > 	   clock etc.). This approach will also have to revert [1], as it
> > 	   assumes ipq9574 as fallback.
> >
> > Please advice which of the above would be appropriate. If there is a better 3rd
> > alternative please let me know, will align with that approach.
>
> Keep existing order. Why every time we see new device, it comes up with
> a different order?

Will be able to do that based on the answer to 'duplication' question and how to
handle that.

	if (adding mhi to ipq9574 reg-names != duplication)

		/* Keep existing order */

		* Append "mhi" to ipq9574
		* use ipq9574 reg-names order for ipq5332

	else
		* combine ipq9574 & sdx55 reg-names

		if (use sdx55 reg-names order)

			/* patchset v11 is using this approach */

			* change ipq9574
			* follow the same for ipq5332

		else if (use ipq9574 order)

			* change sdx55
			* follow the same for ipq5332

Please advice.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
