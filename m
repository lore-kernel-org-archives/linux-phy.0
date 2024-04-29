Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9348C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 29 Apr 2024 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTLnmETsTm6a9wblk1EjbCWIrN2NUxZXyrojPHm1cN0=; b=jt/UK7f8n27QbP
	/EwjdiunAMts+e3w7gSzYbfowawOc3Uer+Byusm1228T02yjzRTSBjZcgKlQsNqOfajERQxyzFV5Z
	ClOkuauALucZAiWIuSdhp2t4dHosG6ksXlSeMPc0Xkkfx2XiGjdV3Iee2G5QN32RKPqizfbkZ2Et4
	gYS5sDye1gvE+HtoK5eGRs24+Dzhr/G0kW9awsA3F4vdrtN0Yfj+dx9M7/PQvvnQRkdUkpjziWBT8
	JECopmNh4OvxYaWm0udr7p0QDC944YcdXuXox+LCCq22/PLKyidemLdWuMA1D1w8g7b82bJ7+QPbs
	4HzAx4/9udZCAz3IFwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1KNh-00000001ds0-2DB6;
	Mon, 29 Apr 2024 06:20:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1KNe-00000001dob-1Tfi
	for linux-phy@lists.infradead.org;
	Mon, 29 Apr 2024 06:20:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43T4pTwT020186;
	Mon, 29 Apr 2024 06:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=qcppdkim1; bh=ACiZszjXaFTGYybnh+vSo
	0PNRyNJHSwRV6HPMbdN/8A=; b=Np+klgc2quZizyZqcvJ/z/14tEJb4qjhEy6d7
	2z/bAJ+6vnSgIblZdlXn4ppW17owcqSwKJPQVJuYbBeddhbRMoZWc3GPIX0T6WaM
	e752xsL95EuTdoeVnwB0yanp3Xrp0KGLI+s+5T+V/6kLRPRF4xLOTY2+hR3vm+yj
	jPYIyy+ZVlp/WhLYX7yErcVewMOyyyoRrtqeSuTJSNc4QeYe7cqHojdJXrvXvbpJ
	zqUzddti7/JUI0UJ6VtQ7VPbhORrx4SxsN63T2tXXQaMNdVUr7lW2kQIseD+Fdw6
	WC4f6z92aagROMPvCCn0iaVeHUYThxEEAS+earzLnSmyyl7TQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xrravjxtm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Apr 2024 06:20:25 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43T6KOxD017362
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Apr 2024 06:20:24 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 28 Apr 2024 23:20:17 -0700
Date: Mon, 29 Apr 2024 11:50:13 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Alex G. <mr.nuke.me@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi
	<lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen
 Boyd <sboyd@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574
 gen3x2 PHY
Message-ID: <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
 <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
 <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ubTXDsCE8tRZ8LDYsC8D6R6s_iQNkitZ
X-Proofpoint-ORIG-GUID: ubTXDsCE8tRZ8LDYsC8D6R6s_iQNkitZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-29_03,2024-04-26_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2404290041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_232050_472407_E71E5FB8 
X-CRM114-Status: GOOD (  44.41  )
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

On Wed, Apr 17, 2024 at 12:50:49AM +0300, Dmitry Baryshkov wrote:
> On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
> >
> > Hi Dmitry,
> >
> > On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
> > >
> > >
> > > On 4/15/24 15:10, Dmitry Baryshkov wrote:
> > >> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > >> wrote:
> > >>>
> > >>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> > >>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> > >>> being reused from IPQ8074 and IPQ6018 PHYs.
> > >>>
> > >>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > >>> ---
> > >>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
> > >>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
> > >>>   2 files changed, 149 insertions(+), 1 deletion(-)
> > >>>
> > >>
> > >> [skipped]
> > >>
> > >>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
> > >>> *base, u32 offset, u32 val)
> > >>>
> > >>>   /* list of clocks required by phy */
> > >>>   static const char * const qmp_pciephy_clk_l[] = {
> > >>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > >>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > >>> "anoc", "snoc"
> > >>
> > >> Are the NoC clocks really necessary to drive the PHY? I think they are
> > >> usually connected to the controllers, not the PHYs.
> > >
> > > The system will hang if these clocks are not enabled. They are also
> > > attached to the PHY in the QCA 5.4 downstream kernel.
>
> Interesting.
> I see that Varadarajan is converting these clocks into interconnects.
> Maybe it's better to wait for those patches to land and use
> interconnects instead. I think it would better suit the
> infrastructure.
>
> Varadarajan, could you please comment, are these interconnects
> connected to the PHY too or just to the PCIe controller?

Sorry for the late response. Missed this e-mail.

These 2 clks are related to AXI port clk on Aggnoc/SNOC, not
directly connected to PCIE wrapper, but it should be enabled to
generate pcie traffic.

Thanks
Varada

> > They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
> > Would you like me to use these names instead?
>
> I'm fine either way.
>
> > e>>>   };
> > >>>
> > >>>   /* list of regulators */
> > >>> @@ -2499,6 +2593,16 @@ static const struct qmp_pcie_offsets
> > >>> qmp_pcie_offsets_v4x1 = {
> > >>>          .rx             = 0x0400,
> > >>>   };
> > >>>
> > >>> +static const struct qmp_pcie_offsets qmp_pcie_offsets_ipq9574 = {
> > >>> +       .serdes         = 0,
> > >>> +       .pcs            = 0x1000,
> > >>> +       .pcs_misc       = 0x1400,
> > >>> +       .tx             = 0x0200,
> > >>> +       .rx             = 0x0400,
> > >>> +       .tx2            = 0x0600,
> > >>> +       .rx2            = 0x0800,
> > >>> +};
> > >>> +
> > >>>   static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
> > >>>          .serdes         = 0,
> > >>>          .pcs            = 0x0a00,
> > >>> @@ -2728,6 +2832,33 @@ static const struct qmp_phy_cfg
> > >>> sm8250_qmp_gen3x1_pciephy_cfg = {
> > >>>          .phy_status             = PHYSTATUS,
> > >>>   };
> > >>>
> > >>> +static const struct qmp_phy_cfg ipq9574_pciephy_gen3x2_cfg = {
> > >>> +       .lanes                  = 2,
> > >>> +
> > >>> +       .offsets                = &qmp_pcie_offsets_ipq9574,
> > >>> +
> > >>> +       .tbls = {
> > >>> +               .serdes         = ipq9574_gen3x2_pcie_serdes_tbl,
> > >>> +               .serdes_num     =
> > >>> ARRAY_SIZE(ipq9574_gen3x2_pcie_serdes_tbl),
> > >>> +               .tx             = ipq8074_pcie_gen3_tx_tbl,
> > >>> +               .tx_num         = ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
> > >>> +               .rx             = ipq6018_pcie_rx_tbl,
> > >>> +               .rx_num         = ARRAY_SIZE(ipq6018_pcie_rx_tbl),
> > >>> +               .pcs            = ipq6018_pcie_pcs_tbl,
> > >>> +               .pcs_num        = ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
> > >>> +               .pcs_misc       = ipq9574_gen3x2_pcie_pcs_misc_tbl,
> > >>> +               .pcs_misc_num   =
> > >>> ARRAY_SIZE(ipq9574_gen3x2_pcie_pcs_misc_tbl),
> > >>> +       },
> > >>> +       .reset_list             = ipq8074_pciephy_reset_l,
> > >>> +       .num_resets             = ARRAY_SIZE(ipq8074_pciephy_reset_l),
> > >>> +       .vreg_list              = NULL,
> > >>> +       .num_vregs              = 0,
> > >>> +       .regs                   = pciephy_v4_regs_layout,
> > >>
> > >> So, is it v4 or v5?
> > >
> > > Please give me a day or so to go over my notes and give you a more
> > > coherent explanation of why this versioning was chosen. I am only
> > > working from the QCA 5.4 downstream sources. I don't have any
> > > documentation for the silicon
> >
> > The downstream QCA kernel uses the same table for ipq6018, ipq8074-gen3,
> > and ipq9574. It is named "ipq_pciephy_gen3_regs_layout". Thus, it made
> > sense to use the same upstream table for ipq9574, "pciephy_v4_regs_layout".
> >
> > As far as the register tables go, the pcs/pcs_misc are squashed into the
> > same table in the downstream 5.4 kernel. I was able to separate the two
> > tables because the pcs_misc registers were defined with an offset of
> > 0x400. For example:
> >
> > /* QMP V2 PHY for PCIE gen3 2 Lane ports - PCS Misc registers */
> > #define PCS_PCIE_X2_POWER_STATE_CONFIG2                    0x40c
> > #define PCS_PCIE_X2_POWER_STATE_CONFIG4                    0x414
> > #define PCS_PCIE_X2_ENDPOINT_REFCLK_DRIVE                  0x420
> > #define PCS_PCIE_X2_L1P1_WAKEUP_DLY_TIME_AUXCLK_L          0x444
> > #define PCS_PCIE_X2_L1P1_WAKEUP_DLY_TIME_AUXCLK_H          0x448
> > #define PCS_PCIE_X2_L1P2_WAKEUP_DLY_TIME_AUXCLK_L          0x44c
> > #define PCS_PCIE_X2_L1P2_WAKEUP_DLY_TIME_AUXCLK_H          0x450
> > ...
> >
> > Here, QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2 = 0xc would be correct,
> > assuming a pcs_misc offset of 0x400. However, starting with
> > ENDPOINT_REFCLK_DRIVE, the register would be
> > QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE = 0x1c. Our offsets are off-by 0x4.
> >
> > The existing V5 offsets, on the other hand, were all correct. For this
> > reason, I considered that V5 is the most likely place to add the missing
> > PCS misc definitions.
>
> Ok, sounds sane. Please use _v5 for the regs layout.
>
> >
> > Is this explanation sufficiently convincing? Where does the v4/v5 scheme
> > in upstream kernel originate?
>
> Sometimes it's vendor kernels, sometimes it's a feedback from devs
> that have access to actual specs.
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
