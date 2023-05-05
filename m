Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED6EC77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 10:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAPpO7t9DvPFIzp244rLtBRJqRrK87nvu4W5F3Wgo34=; b=R0q93XwsLormNv
	bBUEJiBH5V1sbeUyhfob2KdB6YuEnXV/tm6jTM2hVDu7lI9ZfIOTtShGLAzocUnUnafavo6AB8csc
	Kh1eg5Ono7x7g37yFtRdvgOZCONCmBt/F9K8vbjpohQg5Yxp2dYoKc0AH2+hWbn88qqWK4WiUi0/N
	5W9YwKN91IOYo/w94lRPrd/kZZ1iB4ZX4X5xF0tyPCg2Vk3rPUM0YgkZrCftvsuBTB/AuYgu6WKGh
	PsAxpVVMiwOzPniZ5+CBiUqBlO1mohau83iX6jSgxdlMyhw78bvCcYSX0peR/Q1V4lT6UKtBI4FIw
	wxtgjYCP/3dGDEXSw0eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pusXo-00AFrC-2o;
	Fri, 05 May 2023 10:20:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pusXk-00AFqg-38
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 10:20:06 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3458luUJ014530;
	Fri, 5 May 2023 10:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=aNHgU+0nC7vnaXDt9HRwFXY3R2EPk1kMa3lnhR84wv4=;
 b=SKfGqRYpGNi41XqRxF7oQiR5u2YTHdCYKhGBmQoFAqZBIAmIe6Zqv56n4dlAWbwKr08y
 3nYsY0IDvcjp21H8WKWG182ydhLUCksnW1m9GzubntUTJ+oGOk1z7HdaiRXKbAd61NHE
 JLvL70WXn9Cpt6X86A5N1YpNltwvCZDPoYZw4um1L9HVgJX9Bnl2ebmLUadXriCaMH+U
 HdeX8+WodSU+77wpHYqZjB5g6TT9ZUW6QzQe7sGxAN5o6RI6yCrb4gMsDuJDnu+/5+zr
 d8bRuFQiH91l8ch9wc0v2l9LAQNvvtEclqzo44jjmqcq28gNTxywJJENiOCjkCEdMaOD gg== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qcb24augd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 May 2023 10:19:59 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 345AJwwX026871
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 5 May 2023 10:19:58 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 5 May 2023 03:19:52 -0700
Date: Fri, 5 May 2023 15:49:48 +0530
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
Subject: Re: [PATCH v10 7/9] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230505101947.GB10918@varda-linux.qualcomm.com>
References: <cover.1683183860.git.quic_varada@quicinc.com>
 <efb655fd19354ee77cf03b3b96a2206065106590.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJprrk7+jRWdhz2MWdFj-jf2ehbXrz97KrkZ4NE6FqhiCNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJprrk7+jRWdhz2MWdFj-jf2ehbXrz97KrkZ4NE6FqhiCNw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 64DwHVbdC2GWT7uYtzJeQul7pfC4LZbj
X-Proofpoint-ORIG-GUID: 64DwHVbdC2GWT7uYtzJeQul7pfC4LZbj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-05_16,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 impostorscore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305050084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_032005_151688_60380814 
X-CRM114-Status: GOOD (  29.40  )
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

On Fri, May 05, 2023 at 12:31:11PM +0300, Dmitry Baryshkov wrote:
> On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > Add USB phy and controller related nodes
> >
> > SS PHY need two supplies and HS PHY needs three supplies. 0.925V
> > and 3.3V are from fixed regulators and 1.8V is generated from
> > PMIC's LDO
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v10:
> >         - Fix regulator definitions
> >  Changes in v8:
> >         - Change clocks order to match the bindings
> >  Changes in v7:
> >         - Change com_aux -> cfg_ahb
> >  Changes in v6:
> >         - Introduce fixed regulators for the phy
> >         - Resolved all 'make dtbs_check' messages
> >
> >  Changes in v5:
> >         - Fix additional comments
> >         - Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >         - 'make dtbs_check' giving the following messages since
> >           ipq9574 doesn't have power domains. Hope this is ok
> >
> >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
> >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
> >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >
> >  Changes in v4:
> >         - Use newer bindings without subnodes
> >         - Fix coding style issues
> >
> >  Changes in v3:
> >         - Insert the nodes at proper location
> >
> >  Changes in v2:
> >         - Fixed issues flagged by Krzysztof
> >         - Fix issues reported by make dtbs_check
> >         - Remove NOC related clocks (to be added with proper
> >           interconnect support)
> > ---
> >  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 104 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 104 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > index 93b4ba9..84b80cc 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > @@ -150,6 +150,24 @@
> >                 method = "smc";
> >         };
> >
> > +       fixed_3p3: s3300 {
> > +               compatible = "regulator-fixed";
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +               regulator-boot-on;
> > +               regulator-always-on;
> > +               regulator-name = "fixed_3p3";
> > +       };
> > +
> > +       fixed_0p925: s0925 {
> > +               compatible = "regulator-fixed";
> > +               regulator-min-microvolt = <925000>;
> > +               regulator-max-microvolt = <925000>;
> > +               regulator-boot-on;
> > +               regulator-always-on;
> > +               regulator-name = "fixed_0p925";
> > +       };
> > +
> >         reserved-memory {
> >                 #address-cells = <2>;
> >                 #size-cells = <2>;
> > @@ -191,6 +209,45 @@
> >                         reg = <0x00060000 0x6000>;
> >                 };
> >
> > +               usb_0_qusbphy: phy@7b000 {
> > +                       compatible = "qcom,ipq9574-qusb2-phy";
> > +                       reg = <0x0007b000 0x180>;
> > +                       #phy-cells = <0>;
> > +
> > +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +                                <&xo_board_clk>;
> > +                       clock-names = "cfg_ahb",
> > +                                     "ref";
> > +
> > +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               usb_0_qmpphy: phy@7d000 {
> > +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> > +                       reg = <0x0007d000 0xa00>;
> > +                       #phy-cells = <0>;
> > +
> > +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> > +                                <&xo_board_clk>,
> > +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +                                <&gcc GCC_USB0_PIPE_CLK>;
> > +                       clock-names = "aux",
> > +                                     "ref",
> > +                                     "cfg_ahb",
> > +                                     "pipe";
> > +
> > +                       resets = <&gcc GCC_USB0_PHY_BCR>,
> > +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > +                       reset-names = "phy",
> > +                                     "phy_phy";
> > +
> > +                       status = "disabled";
> > +
> > +                       #clock-cells = <0>;
> > +                       clock-output-names = "usb0_pipe_clk";
> > +               };
> > +
> >                 pcie0_phy: phy@84000 {
> >                         compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> >                         reg = <0x00084000 0x1000>;
> > @@ -560,6 +617,53 @@
> >                         status = "disabled";
> >                 };
> >
> > +               usb3: usb@8a00000 {
> > +                       compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> > +                       reg = <0x08af8800 0x400>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +                       ranges;
> > +
> > +                       clocks = <&gcc GCC_SNOC_USB_CLK>,
> > +                                <&gcc GCC_USB0_MASTER_CLK>,
> > +                                <&gcc GCC_ANOC_USB_AXI_CLK>,
> > +                                <&gcc GCC_USB0_SLEEP_CLK>,
> > +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +
> > +                       clock-names = "cfg_noc",
> > +                                     "core",
> > +                                     "iface",
> > +                                     "sleep",
> > +                                     "mock_utmi";
> > +
> > +                       assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +                                         <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +                       assigned-clock-rates = <200000000>,
> > +                                              <24000000>;
> > +
> > +                       interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> > +                       interrupt-names = "pwr_event";
> > +
> > +                       resets = <&gcc GCC_USB_BCR>;
> > +                       status = "disabled";
> > +
> > +                       dwc_0: usb@8a00000 {
>
> As I wrote in the other email, this better have the usb_0_dwc3 alias.
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Sure. Will rename it and send a revised version.

Thanks
Varada

> > +                               compatible = "snps,dwc3";
> > +                               reg = <0x8a00000 0xcd00>;
> > +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +                               clock-names = "ref";
> > +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> > +                               phys = <&usb_0_qusbphy>, <&usb_0_qmpphy>;
> > +                               phy-names = "usb2-phy", "usb3-phy";
> > +                               tx-fifo-resize;
> > +                               snps,is-utmi-l1-suspend;
> > +                               snps,hird-threshold = /bits/ 8 <0x0>;
> > +                               snps,dis_u2_susphy_quirk;
> > +                               snps,dis_u3_susphy_quirk;
> > +                               dr_mode = "host";
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
