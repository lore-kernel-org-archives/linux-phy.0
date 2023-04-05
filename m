Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99499C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 10:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deB2aVgYoA3Ys6ElxkJji6+zYtbHjsb3IN4AWaJHy8I=; b=gmVylMtZemreYa
	u3pJoUa2KG3S9f07xFYXTy71VBa7C+rHL9Mqu80vczFFBQGliOBXk5mDCyiCHqWA1Gk5mcWtkjATo
	gCElnTXp6tEK8rrAxQ194VjGD2hEnBGtUSzxhbL4B/wVFf2XoIWDgYShF4JWO28rwdbeflmw+NDHL
	u5vHQZmdCqOpS9j/NyxbPqBxU56N6W7RJ7NL6u2TPO1b7jMgghFNyFR3rq7P/7Onf89aQCrK0ETHv
	8UTefusEGI1zUz7ZQpLM6w3xkmWPrZAzEbJ8OJpRr/I7ewb1CZe+EW9hdybw1XTpFGstuSmhpKzAP
	91V9ZUtOZ0pnrM727b6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzwU-0042IR-0S;
	Wed, 05 Apr 2023 10:00:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzwQ-0042Hs-1h
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 10:00:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3359cUWa002449;
	Wed, 5 Apr 2023 10:00:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=RcU5QX2H+naJU/RnfYHZlRtFeE/30+0/6/b4AeyX1+s=;
 b=W/B+J02YJ2TrNlMViira1wQagewemDFqr2kMzEqkInVtYMi1JRAENkmOj49T52RJUQVz
 Qftqmz42ZbcKKIJjSO+4VFLz1e4+bKNivNJzIFfX9c30n8E+pN2/CIKdr08+srj0bH0m
 5rUH6Hw9LIhXnuZw/ZJA4ipS0bjRcAuoUZgxB+PKLyEQcNDeWQRW5zeP4nhs1V4avG+X
 g4gLz/tAyo3cRtUvoKgzp72bODCnPgxS2+5BY1yHXG4TDlOAmtjPVDg5oB5lTm1Rt7+i
 4pPys54PYCSAAvMhy/+EJ7V11VwKh19G6U0wk8Q71caYjHdfGEX7eAQbcy7ELNXwVg30 JA== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prnvg2dnn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 10:00:27 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 335A0PhX002702
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 10:00:26 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 5 Apr 2023 03:00:20 -0700
Date: Wed, 5 Apr 2023 15:30:16 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v6 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230405100015.GA11731@varda-linux.qualcomm.com>
References: <cover.1680682939.git.quic_varada@quicinc.com>
 <aaf44ceccef9c7b20a08b8c9fa534f99468f8856.1680682939.git.quic_varada@quicinc.com>
 <ZC08PfY+TN3+lBT4@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZC08PfY+TN3+lBT4@hovoldconsulting.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: lfx1yn7mrgcHaXzzz0_KPmdmKXrrlXZx
X-Proofpoint-ORIG-GUID: lfx1yn7mrgcHaXzzz0_KPmdmKXrrlXZx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_06,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 mlxscore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 mlxlogscore=927
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_030034_685485_DBCAF8FA 
X-CRM114-Status: GOOD (  16.89  )
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

On Wed, Apr 05, 2023 at 11:15:41AM +0200, Johan Hovold wrote:
> On Wed, Apr 05, 2023 at 02:26:42PM +0530, Varadarajan Narayanan wrote:
> > Add USB phy and controller related nodes
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v6:
> > 	- Introduce fixed regulators for the phy
> > 	- Resolved all 'make dtbs_check' messages
>
>
> > +		usb_0_qmpphy: phy@7d000 {
> > +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> > +			reg = <0x0007d000 0xa00>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> > +				 <&xo_board_clk>,
> > +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +				 <&gcc GCC_USB0_PIPE_CLK>;
> > +			clock-names = "aux",
> > +				      "ref",
> > +				      "com_aux",
>
> Looks like you just ignored my comment that you need to rename this
> clock (and update the binding). :(
>
> 	https://lore.kernel.org/lkml/ZCaznloORtzgioOP@hovoldconsulting.com/

Sorry. My mistake. Will post a new patch.
Ignore V7. Missed the update in the binding.

Thanks
Varada
>
> > +				      "pipe";
> > +
> > +			resets = <&gcc GCC_USB0_PHY_BCR>,
> > +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > +			reset-names = "phy",
> > +				      "phy_phy";
> > +
> > +			vdda-pll-supply = <&reg_usb_1p8>;
> > +			vdda-phy-supply = <&reg_usb_0p925>;
> > +
> > +			status = "disabled";
> > +
> > +			#clock-cells = <0>;
> > +			clock-output-names = "usb0_pipe_clk";
> > +		};A
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
