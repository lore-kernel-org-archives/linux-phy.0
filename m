Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB73C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 12:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BDwOh9uOlKLvDKV8Sr5f5voqfSzLxQMiSZ8qndKHww=; b=xop10XFFL+HG8K
	E9/Bn2ah/zSlTeMYurdEUTxoiSrp8PrHlyFnUFXMSvMAsxzv7zBGgVE2ybXywwahop9amqthcgMMk
	j9Td0cuXh2POaWKb4uiEWZysQlAJe1CY8cOs+kQC8u2yWjldpXJ7NKyb1F7z0YQfjbZH565kbPSoN
	1GJ09hPubt+GBLZd6aAq34/FpXr+4FEH/Vn+lb4sA7yVBNSZ2Lbe4GQzazyspS5mvLtsZBs95o2lz
	TQA+EXDRgEkZQKPlE2pWUIDkM2b5/akLIFY5P2Vr6NSKUHxnfs06GHPOcH4EXCbFnx8iEeAMhJkXa
	q8+hwrNKw3lUJQsYeP8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pytRD-005gCS-2v;
	Tue, 16 May 2023 12:05:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pytRA-005gAz-1O
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 12:05:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34GBTu8j016044;
	Tue, 16 May 2023 12:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=tX/my1SwYZPgLxEVNvnjUMSY7/9Bl5CftXwMRn4aaL0=;
 b=BPGWpxhkcaECGNCG/BfPrzTHBBLaIsPErYJs+s86L3uCUja7XxfSHa2+skHywIV5ILs1
 q1XD1SGP3AcDcL24HZPpWyffXJp7dUDzPbYlx6FDV7V1oqXXMaHpR0MBqGCdwkLuJa9+
 cnB6++WKQY3qwJpUcDo2YTPFEdS+Cq9dK5xjIq2z97zh9jyg/EJru95GmKH/PGQwX0kR
 gj7Le0KMvhGqbn77Lx0vSP1GC9W9O0zPvqXW2Rwo9YfS357ylLyn9fyxmn6OlRkaKifp
 85PiVT0D+mPQcvwhMbL2cKwQ5SvGT3gAvuWlb7AlL93SeoeN3uZfZgnvR9h5sEvzwaRg sQ== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qkqg8t434-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 May 2023 12:05:46 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34GC5jBY019170
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 May 2023 12:05:45 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 16 May 2023 05:05:39 -0700
Date: Tue, 16 May 2023 17:35:35 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Kathiravan T <quic_kathirav@quicinc.com>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v11 7/9] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230516120535.GB1679@varda-linux.qualcomm.com>
References: <cover.1683630932.git.quic_varada@quicinc.com>
 <b4c9dcfbfc328e9404be0edeaa70dde076cb7144.1683630932.git.quic_varada@quicinc.com>
 <dc816d43-d3ca-62be-3e8d-9e6d7470c530@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc816d43-d3ca-62be-3e8d-9e6d7470c530@quicinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CZTdxF-EgkOSF8rP1cgjb77J_zTu2FLL
X-Proofpoint-GUID: CZTdxF-EgkOSF8rP1cgjb77J_zTu2FLL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-16_04,2023-05-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 clxscore=1015 mlxscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305160102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_050552_610417_D06A045C 
X-CRM114-Status: GOOD (  23.80  )
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

On Mon, May 15, 2023 at 04:06:29PM +0530, Kathiravan T wrote:
> 
> On 5/9/2023 5:24 PM, Varadarajan Narayanan wrote:
> >Add USB phy and controller related nodes
> >
> >SS PHY need two supplies and HS PHY needs three supplies. 0.925V
> >and 3.3V are from fixed regulators and 1.8V is generated from
> >PMIC's LDO
> >
> >Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >---
> >  Changes in v11:
> >	- Rename dwc_0 -> usb_0_dwc3
> >  Changes in v10:
> >	- Fix regulator definitions
> >  Changes in v8:
> >	- Change clocks order to match the bindings
> >  Changes in v7:
> >	- Change com_aux -> cfg_ahb
> >  Changes in v6:
> >	- Introduce fixed regulators for the phy
> >	- Resolved all 'make dtbs_check' messages
> >
> >  Changes in v5:
> >	- Fix additional comments
> >	- Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >	- 'make dtbs_check' giving the following messages since
> >	  ipq9574 doesn't have power domains. Hope this is ok
> >
> >		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
> >         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
> >         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >
> >  Changes in v4:
> >	- Use newer bindings without subnodes
> >	- Fix coding style issues
> >
> >  Changes in v3:
> >	- Insert the nodes at proper location
> >
> >  Changes in v2:
> >	- Fixed issues flagged by Krzysztof
> >	- Fix issues reported by make dtbs_check
> >	- Remove NOC related clocks (to be added with proper
> >	  interconnect support)
> >---
> >  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 104 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 104 insertions(+)
> >
> >diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> >index 93b4ba9..42b61f6 100644
> >--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> >+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> >@@ -150,6 +150,24 @@
> >  		method = "smc";
> >  	};
> >+	fixed_3p3: s3300 {
> >+		compatible = "regulator-fixed";
> >+		regulator-min-microvolt = <3300000>;
> >+		regulator-max-microvolt = <3300000>;
> >+		regulator-boot-on;
> >+		regulator-always-on;
> >+		regulator-name = "fixed_3p3";
> >+	};
> >+
> >+	fixed_0p925: s0925 {
> >+		compatible = "regulator-fixed";
> >+		regulator-min-microvolt = <925000>;
> >+		regulator-max-microvolt = <925000>;
> >+		regulator-boot-on;
> >+		regulator-always-on;
> >+		regulator-name = "fixed_0p925";
> >+	};
> >+
> >  	reserved-memory {
> >  		#address-cells = <2>;
> >  		#size-cells = <2>;
> >@@ -191,6 +209,45 @@
> >  			reg = <0x00060000 0x6000>;
> >  		};
> >+		usb_0_qusbphy: phy@7b000 {
> >+			compatible = "qcom,ipq9574-qusb2-phy";
> >+			reg = <0x0007b000 0x180>;
> >+			#phy-cells = <0>;
> >+
> >+			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> >+				 <&xo_board_clk>;
> >+			clock-names = "cfg_ahb",
> >+				      "ref";
> >+
> >+			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> >+			status = "disabled";
> >+		};
> >+
> >+		usb_0_qmpphy: phy@7d000 {
> >+			compatible = "qcom,ipq9574-qmp-usb3-phy";
> >+			reg = <0x0007d000 0xa00>;
> >+			#phy-cells = <0>;
> >+
> >+			clocks = <&gcc GCC_USB0_AUX_CLK>,
> >+				 <&xo_board_clk>,
> >+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> >+				 <&gcc GCC_USB0_PIPE_CLK>;
> >+			clock-names = "aux",
> >+				      "ref",
> >+				      "cfg_ahb",
> >+				      "pipe";
> >+
> >+			resets = <&gcc GCC_USB0_PHY_BCR>,
> >+				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> >+			reset-names = "phy",
> >+				      "phy_phy";
> >+
> >+			status = "disabled";
> >+
> >+			#clock-cells = <0>;
> >+			clock-output-names = "usb0_pipe_clk";
> >+		};
> >+
> >  		pcie0_phy: phy@84000 {
> >  			compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> >  			reg = <0x00084000 0x1000>;
> >@@ -560,6 +617,53 @@
> >  			status = "disabled";
> >  		};
> >+		usb3: usb@8a00000 {
> 
> node address should be updated to 8af8800 ?

Ok. Will update and post a new patchset.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
