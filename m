Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E82C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 06:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UEzS82zHX5j3JSyVkhZlLbKYpwlnJ5zAMQRYqvm8GU=; b=ZLUsThWZ3KKXLs
	gdmy+CtDFbFcG0pZQbdo0cIMtzpMYvmrctwyFvRABwbB8pPxUSeGkDBqk/Vnz69zxAobqYpz6Za+T
	x7qaeBAt5mHSzFvV2QfVN/7IGww5KqXnrDxbQMte8pJWWV3bz4SoLrKHBQK8Z+h54AIuzEhRltYiS
	UCJcej/uhu6Qh+EZ0YDGHlg+fYr2pk178CXBmjVSOHXj1T8PDpebO9M9lw1NwVmCP7PQp3AbovLMd
	7ZaplFvlDUhtkJHSfiK3dfCkKsaBYCkQNme/rlChmV62i6LmYbpY5ccMTrG5PDhWlyE/Q6U32qhrk
	Gid9gidCZxqXPOyxacQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1h1i-00000005I37-3bub;
	Tue, 30 Apr 2024 06:31:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1h1f-00000005I2K-0wcw
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 06:31:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43U4RaBk019841;
	Tue, 30 Apr 2024 06:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=qcppdkim1; bh=/EDHGHEVWUCmdxp3Bjyh7
	Wce+g5mQmyF9Sk2EZ1/ZSE=; b=JW19BNTdgmH04Jj119dRFlpPitsdisGC8g4iD
	cdj7l26qhA9cvTNh1ZeQNuwlrBJD4bgiw6RnB09pNs5PxIPlsKoROng4rE13UrPW
	DGkFkxlZtVXLgHvNaQRloS/wLMlt5Dd9G7WracQKSE7kcgelGJBaQ+iQOZt+PVxr
	Mj5F0LBtXpjdB3IxnCwZMH9HsqHMkdbHbdlC8qxyTCHCwRA57fsIrkuhhWqi9Sj/
	yImsDK6EUFl6FK844wer1ev/p/OJ2g+ZL8bt8ku827neEfK6Au2LJNNp9lxKP92W
	xGxK3VmvlhuotxnIQpuefuXrlhBa6c2Wmqnhf5TWQhrQXPGiQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xtd8kkmjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 06:31:26 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43U6VP4x008281
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 06:31:25 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 29 Apr 2024 23:31:18 -0700
Date: Tue, 30 Apr 2024 12:01:15 +0530
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
Message-ID: <ZjCQM24T2XIJ6GAR@hu-varada-blr.qualcomm.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
 <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
 <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
 <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com>
 <CAA8EJpq+Bbws8yH5Xq7rHyA+-=DaCcfEcgUa5RUt2+LWQW0kKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq+Bbws8yH5Xq7rHyA+-=DaCcfEcgUa5RUt2+LWQW0kKg@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Kz9y3fLxciuZSj0DW7v68K0H1YjdIf0m
X-Proofpoint-ORIG-GUID: Kz9y3fLxciuZSj0DW7v68K0H1YjdIf0m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-30_02,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 adultscore=0 spamscore=0 mlxscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404300046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_233139_416582_6CA36058 
X-CRM114-Status: GOOD (  33.15  )
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

On Mon, Apr 29, 2024 at 01:55:32PM +0300, Dmitry Baryshkov wrote:
> On Mon, 29 Apr 2024 at 09:20, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > On Wed, Apr 17, 2024 at 12:50:49AM +0300, Dmitry Baryshkov wrote:
> > > On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
> > > >
> > > > Hi Dmitry,
> > > >
> > > > On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
> > > > >
> > > > >
> > > > > On 4/15/24 15:10, Dmitry Baryshkov wrote:
> > > > >> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > > > >> wrote:
> > > > >>>
> > > > >>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> > > > >>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> > > > >>> being reused from IPQ8074 and IPQ6018 PHYs.
> > > > >>>
> > > > >>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> > > > >>> ---
> > > > >>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
> > > > >>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
> > > > >>>   2 files changed, 149 insertions(+), 1 deletion(-)
> > > > >>>
> > > > >>
> > > > >> [skipped]
> > > > >>
> > > > >>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
> > > > >>> *base, u32 offset, u32 val)
> > > > >>>
> > > > >>>   /* list of clocks required by phy */
> > > > >>>   static const char * const qmp_pciephy_clk_l[] = {
> > > > >>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > > > >>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> > > > >>> "anoc", "snoc"
> > > > >>
> > > > >> Are the NoC clocks really necessary to drive the PHY? I think they are
> > > > >> usually connected to the controllers, not the PHYs.
> > > > >
> > > > > The system will hang if these clocks are not enabled. They are also
> > > > > attached to the PHY in the QCA 5.4 downstream kernel.
> > >
> > > Interesting.
> > > I see that Varadarajan is converting these clocks into interconnects.
> > > Maybe it's better to wait for those patches to land and use
> > > interconnects instead. I think it would better suit the
> > > infrastructure.
> > >
> > > Varadarajan, could you please comment, are these interconnects
> > > connected to the PHY too or just to the PCIe controller?
> >
> > Sorry for the late response. Missed this e-mail.
> >
> > These 2 clks are related to AXI port clk on Aggnoc/SNOC, not
> > directly connected to PCIE wrapper, but it should be enabled to
> > generate pcie traffic.
>
> So, are they required for the PHY or are they required for the PCIe
> controller only?

These 2 clks are required for PCIe controller only.
PCIE controller need these clks to send/receive axi pkts.

Thanks
Varada

> > > > They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
> > > > Would you like me to use these names instead?
> > >
> > > I'm fine either way.
> > >
>
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
