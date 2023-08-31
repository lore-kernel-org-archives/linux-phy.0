Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0352BC83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 09:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cle5h9yya7psBWJCqk1a/z8f0baw1ndhRvv9uc2pWkI=; b=gbk2E+NAZPuiTu
	yp6dZncXDpgHui2Wtnn+Z/3ZP3Qttn+sJ5Afq1kGnutJmwj+8tyyJIBHt8bfLUhYJBGEVTPwJFVnw
	nICaLM90Y+WFGCLzsh4tiJ5kvN3UBMjA3gy/u2yEZaZv+xhSAQ5NcbzQ3aPj74iNLMbVWKM0JFZrs
	OBWyBfaXWIwbo9OIDpDFywi9cjTZN7LGS5lxRRg70GK5VcpvdcD7BKtK9iFt6pTANUfaSzGiGrZrj
	rF43oaH5J9uwnsmBF4kvhGerl/BoP38f14qmTlOqxzj/GInofAe/m+xlM1lEcyR4fQim5dwo46uxD
	Z2d1Ghq4z047soFEWWaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbdrb-00Ewj0-2I;
	Thu, 31 Aug 2023 09:21:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbdrY-00Ewi9-1P;
	Thu, 31 Aug 2023 09:21:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V9Eu5s018949;
	Thu, 31 Aug 2023 09:20:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=4jZc21W9PdSI2LGKTEf86sulrI++u/6vGxp5bfDAthw=;
 b=bNx3ikZV+C2uJapJ2juSR4wJnFNEOVFrGYwUOSHewrKrjbyurYfaMUkyL9YyFDa3EJyu
 g3OILv49mLJbCW0GRdVRdtAe+81vMb0PYAUKBfmSafEelHtXg7/ji34GV3ynnZ4/OZ9+
 r1o6Bl8YHB+Z5QKE+hi20RrfY04qIfAz3glUCKQEqhF9zqlo5rd69FICnNJCQUgEKc2b
 rMAXWRiBWI+6LYOR9hklFmsCe+Dse8AuAJ9JXfNCm9Eo++9+CqEDNS+itNeWiVO3WjRl
 J7yppjkMG0fJPVIksEhao0n88/Xnzj+VHSg00BIhFY9HHwnGItyCT2pArUZR56bqTYBb 2g== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3st0tatt2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 09:20:55 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37V9Kspm008106
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 09:20:54 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 31 Aug 2023 02:20:48 -0700
Date: Thu, 31 Aug 2023 14:50:44 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v11 2/4] arm64: dts: qcom: ipq5332: Add USB related nodes
Message-ID: <20230831092043.GA29822@varda-linux.qualcomm.com>
References: <cover.1693459976.git.quic_varada@quicinc.com>
 <c914b91c82ce51023571b701a5b91606a0791025.1693459976.git.quic_varada@quicinc.com>
 <CAA8EJpqRfgh5Ss696Vi=jAR-yFmBhCrpveD8txHGHoc8gRsJxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqRfgh5Ss696Vi=jAR-yFmBhCrpveD8txHGHoc8gRsJxQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jxbLggs_uiP3RD6M3FaqYg3EljIz15Qz
X-Proofpoint-ORIG-GUID: jxbLggs_uiP3RD6M3FaqYg3EljIz15Qz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_07,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxlogscore=830
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_022116_519449_D3F21DF2 
X-CRM114-Status: GOOD (  16.24  )
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

> > +               usb: usb@8af8800 {
> > +                       compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> > +                       reg = <0x08af8800 0x400>;
> > +
> > +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> > +                       interrupt-names = "hs_phy_irq";
> > +
> > +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +                                <&gcc GCC_SNOC_USB_CLK>,
> > +                                <&gcc GCC_USB0_SLEEP_CLK>,
> > +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +                       clock-names = "core",
> > +                                     "iface",
> > +                                     "sleep",
> > +                                     "mock_utmi";
> > +
> > +                       resets = <&gcc GCC_USB_BCR>;
> > +
> > +                       qcom,select-utmi-as-pipe-clk;
> > +
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +                       ranges;
> > +
> > +                       status = "disabled";
> > +
> > +                       usb2_0_dwc: usb@8a00000 {
>
> Since we have just seen a patch series adding USB 3 support to
> ipq5332, we know that the host is not 2.0-only. Thus the `2_0` part of
> the label doesn't make sense.
>
> Could you please change the label to be just usb_dwc (or usb0_dwc)?

Have posted v12 addressing this. Please take a look.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
