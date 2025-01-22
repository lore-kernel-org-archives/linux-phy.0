Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2BE6C02181
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jan 2025 05:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usp3w2HnUfQzgtoHwzaGUxx5MmhhLXny07QcU7y7qEQ=; b=pI1JeW6cGTaoW8
	Z2FXgnxsucH2z5+1yKJ+1FDn38gtKnTQ1sRyZxZVmXYNUJOdLGjfb3vP/G/dFKj9poKTEDlcwpFgf
	iGYGTMghCr480qBEeR3FaTpjfFNS6NvjGSQiEGIpPsGJ1tKTu31HT/sSdYwW3DM9qj1JW7S/ISH/B
	/Dnmlbp5rkkGY94a2WhUu2gR8Jlre3AwgyX5NH5kKZnjTuY365oENSRDgbvELjeXWD08p4LAwpyQ6
	WosHcfW3rCwqVij2dZkenR/JkLxxjuA5UslOLSW1vJCtnLVX3hUKKEoKIvOr9t3hkCCL3GYLf8rSw
	ugwfLDF86f8pltm/5H1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taSwE-00000009OUd-34hl;
	Wed, 22 Jan 2025 05:06:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taSwC-00000009OUD-3xLM
	for linux-phy@lists.infradead.org;
	Wed, 22 Jan 2025 05:06:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50M0Qc5I020788;
	Wed, 22 Jan 2025 05:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zYIHAH5R1aSelCOAD4hlVuK9
	eFznxUklk2/oBlWIOFY=; b=iARnmKZL3UeDHZLZe36jcw+NOYpfExuePqfpYgMF
	AHS+mCOgRiFac+pQMo5aGxjgn3R+X/x3eYtGe33TG5q/FGKgx4VTXxyQXUrO0Nhf
	R3CRU5IjsbvobHYdadAGSrr10B3RwZJumEj+0CBHurREWiMe+l+oGnhl6gvR5Zwz
	3ldEZhkDsHPhhM/TL0kNS1GaPB+QlsSFNMrqiDnU8l8Hh184/uyyAQqdJsZrATdC
	9aIJsUKq0NbFgH8xV+PV5jv020JcDuZ9naJ87UqM8nlP2NeuJwSewstpmxUvOGQk
	xO9ySVvIZCfyBEqORsz25qdOpihQGwbmkVxvc4VAkQK7Ig==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ap4x0h58-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Jan 2025 05:05:52 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50M55oUB014124
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Jan 2025 05:05:50 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 21 Jan 2025 21:05:44 -0800
Date: Wed, 22 Jan 2025 10:35:40 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <Z5B8pGD/h0h79ykb@hu-varada-blr.qualcomm.com>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-5-quic_varada@quicinc.com>
 <20250108132235.gh6p5d6t7wklzpm7@thinkpad>
 <Z4Cjzc5nyOv0R9tS@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z4Cjzc5nyOv0R9tS@hu-varada-blr.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 0AXiHTq6cbtqOThPNwBcaD_A5SDBYw5C
X-Proofpoint-GUID: 0AXiHTq6cbtqOThPNwBcaD_A5SDBYw5C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_01,2025-01-21_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 mlxscore=0 malwarescore=0 mlxlogscore=733
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501220035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_210601_115659_9EE596CC 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

Manivannan,

	[ . . . ]
> > > +			phys = <&pcie1_phy>;
> > > +			phy-names = "pciephy";
> > > +
> > > +			interconnects = <&gcc MASTER_SNOC_PCIE3_2_M &gcc SLAVE_SNOC_PCIE3_2_M>,
> > > +					<&gcc MASTER_ANOC_PCIE3_2_S &gcc SLAVE_ANOC_PCIE3_2_S>;
> > > +			interconnect-names = "pcie-mem", "cpu-pcie";
> >
> > Can you check if the controller supports cache coherency? If so, you need to add
> > 'dma-coherent'.
>
> Ok.

Confirmed with h/w person. The controller doesn't support cache coherance.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
