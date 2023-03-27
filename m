Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61187C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 09:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SA/Zxnc74GBhTyH0+CrLD+zAWY4clcUYBvVb3mXwn8g=; b=xok6S26XYrYM0Y
	jv1ryrs1nN0vkz3UgygsqJQCwqCg6VfEsFpBqrThtP/MReWIgKvTKs9F4wlxaqgeHmdPqyMY/cc3M
	uSrmrbh9JG6rOD7tW4ISXnk9CmQYeKJHP/BukpnXZVw3/5VZ9PUpEd7VBVjieaTQbTGCI/3K3pHts
	uOwU6KQirGMdj0Xkt1xf3+cW0ypxAs7SXUkjip1kB2BXXskjC6RfIt0hd4u48hAMoulOE2LC3oVnA
	ykcxdOXHH2fh1U2tLsloH+hG8a2p2IEgwXps/Qufz+mnDsm/kiTmr7Ge0/okgVT0Kk6WDZ3vTixwj
	1YA1KuZCCuiOKS39XIwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiqF-00AQAP-2t;
	Mon, 27 Mar 2023 09:08:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiqD-00AQ8R-0N
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 09:08:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32R5Y8fS026908;
	Mon, 27 Mar 2023 09:08:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=Mz5+ydCBLSGUFijUagdzN/aLYS95wkYCIdcaJQNrA24=;
 b=PDwPrdHPhKtO4bMQ6VDYaBYrT1w+NXMb0WlaWbJxzokuit1p+tr9ARQqvK6CmSnLXRfX
 Ynu4GeiaKdnU8U+zEOi8VThdSl+VS6IcQOLXS89XKINia+93WnzVU1cTsz+jcN1E2XkH
 4XzXYvFOgJ60F8aRMWDQJjSYF1KLYlZJYK39YqspYxrBwVThtIQJHelDZ4BF01/DUbPm
 micKUIm5O7o3W/nfqeXLRKI6jelhe6OyaU+huitrFKTyD3AtFLS+ko6eJ+0iquNcBG8r
 yZi92xBt9sh59wg3y2ogPvAmU9y37NCb5g+j9fd0/4AQUUqHpXKhSk/jF/YqoDdzWkYz rg== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pk53ygf8j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:08:29 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32R98SOx004751
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:08:28 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 27 Mar 2023 02:08:22 -0700
Date: Mon, 27 Mar 2023 14:38:19 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230327090818.GA28717@varda-linux.qualcomm.com>
References: <cover.1679479634.git.quic_varada@quicinc.com>
 <5b7213a4c402ee334ff48f2efe2b920858637ac5.1679479634.git.quic_varada@quicinc.com>
 <CAA8EJppXuaGx4VhZ9fOBUkD8fECngzJ8pubNC4bm_0M9+64ZqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppXuaGx4VhZ9fOBUkD8fECngzJ8pubNC4bm_0M9+64ZqQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: rX0kHCsWRrtF1mwp9NhQt_OYbZYQ4CTO
X-Proofpoint-ORIG-GUID: rX0kHCsWRrtF1mwp9NhQt_OYbZYQ4CTO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0
 adultscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303270074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_020837_272160_520BFA25 
X-CRM114-Status: GOOD (  24.86  )
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

On Wed, Mar 22, 2023 at 04:41:01PM +0200, Dmitry Baryshkov wrote:
> On Wed, 22 Mar 2023 at 12:46, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > Add USB phy and controller related nodes
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v3:
> >         - Insert the nodes at proper location
> >
> >  Changes in v2:
> >         - Fixed issues flagged by Krzysztof
> >         - Fix issues reported by make dtbs_check
> >         - Remove NOC related clocks (to be added with proper
> >           interconnect support)
> > ---
> >  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 86 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > index 2bb4053..0943901 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > @@ -215,6 +215,48 @@
> >                 #size-cells = <1>;
> >                 ranges = <0 0 0 0xffffffff>;
> >
> > +               qusb_phy_0: phy@7b000 {
> > +                       compatible = "qcom,ipq9574-qusb2-phy";
> > +                       reg = <0x07b000 0x180>;
>
> Please pad addresses to 8 hex digits.
>
>
> > +                       #phy-cells = <0>;
> > +
> > +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +                               <&xo_board_clk>;
> > +                       clock-names = "cfg_ahb", "ref";
> > +
> > +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               ssphy_0: phy@7d000 {
> > +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> > +                       reg = <0x7d000 0x1c4>;
> > +                       #clock-cells = <1>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +                       ranges;
> > +
> > +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> > +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
>
> Could you please check the indentation here? Vertical lists should be aligned
>
> > +                       clock-names = "aux", "cfg_ahb";
>
> One item per line
>
> > +
> > +                       resets =  <&gcc GCC_USB0_PHY_BCR>,
> > +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > +                       reset-names = "phy","common";
> > +                       status = "disabled";
> > +
> > +                       usb0_ssphy: phy@7d200 {
>
> Newer bindings please, without subnodes.
>
> > +                               reg = <0x0007d200 0x130>,       /* tx */
> > +                                     <0x0007d400 0x200>,       /* rx */
> > +                                     <0x0007d800 0x1f8>,       /* pcs  */
> > +                                     <0x0007d600 0x044>;       /* pcs misc */
> > +                               #phy-cells = <0>;
> > +                               clocks = <&gcc GCC_USB0_PIPE_CLK>;
> > +                               clock-names = "pipe0";
> > +                               clock-output-names = "usb0_pipe_clk";
> > +                       };
> > +               };
> > +
> >                 pcie0_phy: phy@84000 {
> >                         compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> >                         reg = <0x00084000 0x1bc>; /* Serdes PLL */
> > @@ -436,6 +478,50 @@
> >                         status = "disabled";
> >                 };
> >
> > +               usb3: usb3@8a00000 {
> > +                       compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> > +                       reg = <0x8af8800 0x400>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +                       ranges;
> > +
> > +                       clocks = <&gcc GCC_SNOC_USB_CLK>,
> > +                                <&gcc GCC_ANOC_USB_AXI_CLK>,
> > +                                <&gcc GCC_USB0_MASTER_CLK>,
> > +                                <&gcc GCC_USB0_SLEEP_CLK>,
> > +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +
> > +                       clock-names = "sys_noc_axi",
> > +                                     "anoc_axi",
> > +                                     "master",
> > +                                     "sleep",
> > +                                     "mock_utmi";
> > +
> > +                       assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +                                         <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +                       assigned-clock-rates = <200000000>,
> > +                                              <24000000>;
>
> Indentation?

Will address the above and post.

> > +
> > +                       resets = <&gcc GCC_USB_BCR>;
> > +                       status = "disabled";
> > +
> > +                       dwc_0: usb@8a00000 {
> > +                               compatible = "snps,dwc3";
> > +                               reg = <0x8a00000 0xcd00>;
> > +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +                               clock-names = "ref";
> > +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> > +                               phys = <&qusb_phy_0>, <&usb0_ssphy>;
> > +                               phy-names = "usb2-phy", "usb3-phy";
> > +                               tx-fifo-resize;
> > +                               snps,is-utmi-l1-suspend;
> > +                               snps,hird-threshold = /bits/ 8 <0x0>;
> > +                               snps,dis_u2_susphy_quirk;
> > +                               snps,dis_u3_susphy_quirk;
> > +                               dr_mode = "host";
>
> Is dr_mode a property of the host or of the board?

Board.

Thanks
Varada

> > +                       };
> > +               };
> > +
> >                 intc: interrupt-controller@b000000 {
> >                         compatible = "qcom,msm-qgic2";
> >                         reg = <0x0b000000 0x1000>,  /* GICD */
> > --
> > 2.7.4
> >
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
