Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F65C28B2E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 07:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgCbWE48m/WHXGqpnXrwj80Tm78knyV46cwH/qX8vxY=; b=gVp3PeIpkfMnq5
	9AMyaPysWbgxkwyaESZMpvuPY+lNsuKkLvDdCeRPjfQyayI3J+ehVRzq5ap9xadoGjmv39ZSadSTK
	B+JJ0UHYgto0bbbTZGwlAWBg5tnvAePth50EIdnzzpeCvSlXB6homV3LcO0j1LCE05Qs6x9KOKHGd
	6z8hz+IjKKI2iOf7OGoEaXCnyrd8AoJhT1mshD+Gj7HSvmBchCQY9R3rXEnOZ6ZSjIbU4yIQXkQnM
	SyWGEm6BprRpqID2q0J1cluebNYiqaxagW6ybbCTtSHsaLe/Ye/Kkm1KBGcLfiqZtNrNfuNk6HqpN
	CXdaHupFNcmba8eYAMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trXop-00000001nOl-3zjz;
	Mon, 10 Mar 2025 07:45:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trXom-00000001nNC-2wqJ
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 07:44:58 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529MgpOc026525;
	Mon, 10 Mar 2025 07:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Kj+FcVSY+eBJxVSNZlJRNzZJ
	m+ebTIDlOJzCtE3EAtM=; b=ePnHMrmY+dGNZTh/jYCIa6BvA8CPNu+5Tc2CSWC8
	bM4E54AmLJAXC6pJLjwk9gR9PWiW0tmdWswWPdQnK2x4tqnOMRxeOrtBxiEc2hsw
	4GJ7ZNK6VEKCfTKs7B+EDj+3IicOlrGmZklG8J+i8oLXev9J09+Ya7b5Tq9ASolB
	uNZavBoLW4SXlWrfXRQQQw8AX5CgXPAV80DMM/v9Dtsqk6IXsj0o4LTw1XEjKY8e
	GbJ/awRoxkb0NPasADPfjBPH5kk4Vxe07fZMcHAEwEglpSrQTDjQVKgKQfNo1cLb
	GcdvHDr9s5QB7yXj4nhOHGEoohpGYUyvd2GZGkRXGIUSQQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f2mbwxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 07:44:47 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52A7ikPs025363
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 07:44:46 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 00:44:09 -0700
Date: Mon, 10 Mar 2025 13:14:05 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v11 3/7] dt-bindings: PCI: qcom: Use sdx55 reg
 description for ipq9574
Message-ID: <Z86YReHsKeF165F6@hu-varada-blr.qualcomm.com>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220094251.230936-4-quic_varada@quicinc.com>
 <41b400fe-5e08-42c0-9bc6-a238d25d155a@kernel.org>
 <33bb1cb2-0c5e-402b-a5c6-9604b1dd8d99@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33bb1cb2-0c5e-402b-a5c6-9604b1dd8d99@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 13Znxcki_patImFqJYtxtGVAtEB8lGJl
X-Proofpoint-ORIG-GUID: 13Znxcki_patImFqJYtxtGVAtEB8lGJl
X-Authority-Analysis: v=2.4 cv=ab+bnQot c=1 sm=1 tr=0 ts=67ce986f cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=dj0ERmanKLZXDvYKl08A:9 a=CjuIK1q_8ugA:10 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_03,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_004456_813455_482D6D1A 
X-CRM114-Status: GOOD (  24.32  )
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

On Thu, Mar 06, 2025 at 01:06:13PM +0100, Krzysztof Kozlowski wrote:
> On 06/03/2025 12:52, Krzysztof Kozlowski wrote:
> > On 20/02/2025 10:42, Varadarajan Narayanan wrote:
> >> All DT entries except "reg" is similar between ipq5332 and ipq9574. ipq9574
> >> has 5 registers while ipq5332 has 6. MHI is the additional (i.e. sixth
> >> entry). Since this matches with the sdx55's "reg" definition which allows
> >> for 5 or 6 registers, combine ipq9574 with sdx55.
> >>
> >> This change is to prepare ipq9574 to be used as ipq5332's fallback
> >> compatible.
> >>
> >> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > Unreviewed.
> >
> >> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >> ---
> >> v8: Add 'Reviewed-by: Krzysztof Kozlowski'
> >> ---
> >>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >> index 7235d6554cfb..4b4927178abc 100644
> >> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> >> @@ -169,7 +169,6 @@ allOf:
> >>              enum:
> >>                - qcom,pcie-ipq6018
> >>                - qcom,pcie-ipq8074-gen3
> >> -              - qcom,pcie-ipq9574
> >
> > Why you did not explain that you are going to affect users of DTS?
> >
> > NAK

Sorry for not explicitly calling this out. I thought that would be seen from the
following DTS related patches.

> I did not connect the dots, but I pointed out that you break users and
> your DTS is wrong:
> https://lore.kernel.org/all/f7551daa-cce5-47b3-873f-21b9c5026ed2@kernel.org/
>
> so you should come back with questions to clarify what to do, not keep
> pushing this incorrect patchset.
>
> My bad, I should really have zero trust.

It looks like it is not possible to have ipq9574 as fallback (for ipq5332)
without making changes to ipq9574 since the "reg" constraint is different
between the two. And this in turn would break the ABI w.r.t. ipq9574.

To overcome this, two approaches seem to be availabe

	1. Document that ipq9574 is impacted and rework these patches to
	   minimize the impact as much as possible

		(or)

	2. Handle ipq5332 as a separate compatible (without fallback) and reuse
	   the constraints of sdx55 for "reg" and ipq9574 for the others (like
	   clock etc.). This approach will also have to revert [1], as it
	   assumes ipq9574 as fallback.

Please advice which of the above would be appropriate. If there is a better 3rd
alternative please let me know, will align with that approach.

Thanks
Varada

1 - https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/pci/qcom,pcie.yaml?id=f67d04b18337249b0faa5cab6223c0bb203f6333

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
