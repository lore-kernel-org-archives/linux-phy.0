Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83932E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jonQ0fZo17+7rFPigf4UwqJfQZam64kA9zn9FfUl3Ns=; b=GwCiYMrcLbQ6TZ
	PhTMRfnfDqAilhHWxFZ+nnMAuypIEVuHAiTjJvMQTaW4XslCYEtzBZt7qdtjy5MjAszJoBNHXs/A5
	/aqX+4eurR5Ux3ez7ePPOKEMKiGexWjn3rYP94hyZEuGZ1+t0jODkk/X/YTaqs2NrcmRkH0Go6ZEK
	77sKZ+N89KtPbn/Jml7brKZrQv9RkEUGG3AKzd5DGJZmGosglhdEwBoa8/kLCBtQmqlJSzAuUZ1mE
	Up3Z57tiVmTgDFbvQAMxHUmPUzHHT8sNIgyVQJcS3mUfpAKzJRH4/9fL3BnYXRsVaIAFx6JWkFZ8Q
	Dmn6unr5d1W9D+MNeEFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLIRs-0000000EHpC-0vRC;
	Wed, 11 Dec 2024 08:52:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLIRp-0000000EHoe-36eN
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 08:51:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BB7vssq010224;
	Wed, 11 Dec 2024 08:51:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pT3aJLtYzwxFJMkqscc1jyxr
	QBDSZ2yr8Uk3IsegLgQ=; b=FOJv3Q6Y4zRt9LfTYlSxeNGEQVwWawQGuFgGBdgE
	5grG7rekFusQzCDrYNxBq2ihOTKlsVnVBdkeaKs2qV0XZxM718gcSTKV+fFPKcZD
	vpXi0fSVQ70P6ghRsMckrHyoTHDHao+ys6Cvd/gqVW3YVaqyxdQ4ODtWvDN5Xt3E
	mE0d7jWWQLq0Aq1f7V6Lk4ebUZPB3HzKhvbOe0cQ+KMiLEA/wLA0o5JYcntIXHgA
	lcU+NKsfd76JJJz/6tGqq6MYM1ZisV+/2wCcBpe918r0U/uk45eb97MFoTmOoJJa
	tf40XvTV9mTDmZSZDOepk54R69vM/ecmMOIs6fTf9cSsZg==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tf84pc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 08:51:50 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BB8pnDC018156
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 08:51:49 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 11 Dec 2024 00:51:43 -0800
Date: Wed, 11 Dec 2024 14:21:40 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <Z1lSnLyh6LSpk4z1@hu-varada-blr.qualcomm.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-2-quic_varada@quicinc.com>
 <7js7lswzde67izdradhuzgvlixwiblgf7aosdvavknbclbtjew@6w3y2e2k3mtk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7js7lswzde67izdradhuzgvlixwiblgf7aosdvavknbclbtjew@6w3y2e2k3mtk>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: v3Oe2qP-ofqk72OOu_4Usb1Fc0-6LfOo
X-Proofpoint-ORIG-GUID: v3Oe2qP-ofqk72OOu_4Usb1Fc0-6LfOo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412110066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_005157_788393_8B3AA10B 
X-CRM114-Status: GOOD (  30.75  )
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

On Thu, Dec 05, 2024 at 10:38:05AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Dec 04, 2024 at 05:03:24PM +0530, Varadarajan Narayanan wrote:
> > From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> >
> > Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5332.
> >
> > Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v2: Rename the file to match the compatible
>
> Either I look at wrong v1 from your cover letter or there was no such
> file in v1, so how it can be a rename?
>
> What happened here?

This driver was pulled in from [1] "Enable IPQ5018 PCI support (Nitheesh Sekar)"

In that review, there was this feedback [4]

	-------------------------------
	> +++
	> b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml

	Filename should match compatibles and they do not use 28lp.
	-------------------------------

> >     Drop 'driver' from title
> >     Dropped 'clock-names'
> >     Fixed 'reset-names'
> > --
> >  .../bindings/phy/qcom,uniphy-pcie.yaml        | 82 +++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
> > new file mode 100644
> > index 000000000000..e0ad98a9f324
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
>
> This does not match compatible, so I don't see how it even matches your
> changelog.

Since this phy has both single and dual line capabilities I used
the phy's name alone for the file name. Will rename this as

	qcom,ipq5332-uniphy-pcie-phy.yaml

If this is not suitable, can you please suggest one that would be
apt for this phy.

> > @@ -0,0 +1,82 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/qcom,uniphy-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm UNIPHY PCIe 28LP PHY
> > +
> > +maintainers:
> > +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
> > +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> > +
> > +description:
> > +  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,ipq5332-uniphy-pcie-gen3x1
>
> Odd naming. Did anyone suggest this? I would expect something matches
> like everything else recent (see X1 for example).

It was not suggested by anyone. Since [4] didn't comment on this
continued to use it. Will change it as follows (similar to
qcom,x1e80100-qmp-gen4x2-pcie-phy)

	qcom,ipq5332-uniphy-gen3x1-pcie-phy
	qcom,ipq5332-uniphy-gen3x2-pcie-phy
>
> > +      - qcom,ipq5332-uniphy-pcie-gen3x2
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 2
>
> What happened here? This cannot be minItems and it never was.

Will fix this.

> > +
> > +  resets:
> > +    minItems: 2
> > +    maxItems: 3
>
> Why this varies?
>
> This patch is odd. Confusing changelog, v1 entirely different and not
> matching what is here, unusual and incorrect code in the binding itself.
>
> Provide changelog explaining WHY you did such odd changes.

This series combines [1] and [2]. [1] introduces IPQ5018 PCIe
support and [2] depends on [1] to introduce IPQ5332 PCIe support.
Since the community was interested in [2] (please see [3]), tried
to revive IPQ5332's PCIe support with this patch. Apologies for
not expressing this in the cover letter.

> Open *LATEST* existing Qcom bindings and look how they do it. Do not
> implement things differently.

Sure.

Thanks
Varada

1. Enable IPQ5018 PCI support (Nitheesh Sekar) - https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/
2. Add PCIe support for Qualcomm IPQ5332 (Praveenkumar I) - https://lore.kernel.org/linux-arm-msm/20231214062847.2215542-1-quic_ipkumar@quicinc.com/
3. Community interest - https://lore.kernel.org/linux-arm-msm/20240310132915.GE3390@thinkpad/
4. dt-bindings feedback - https://lore.kernel.org/all/4bc021c1-0198-41a4-aa73-bf0cf0c0420a@linaro.org/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
