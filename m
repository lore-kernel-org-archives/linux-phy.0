Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E39C77B70
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 16:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c0r70t30XA6NNFMWSOlk+sIxv2G/KIFllgKcPG4NcM=; b=X5wUImRwGQrjmF
	TuTMX10F/t5c1yA5w7qPJ1/vpMmPQXzmJgkAHiIsvbzo1i3z/djj7oHMN4d6y6y+C6EXe6GGMUwUF
	SCuB/WcbR8xeETePbNFF7P37mfJKjUKddNVJX4NuUfYmOH3QaHwet+fGj3G3PUbdY38fL4Vkn3P91
	XmNnAANiBHnTD4klD3sf1Q23mXlcKX3FRvULa2mwjdNHNLrEdqCpGIvkNNWW7EUl8FhFZ7glgvMmd
	rzgLcJXp/cp3YfqB0KXAfPlJfFYS6j6CKOVym2TwaTMumuaan1Ei3tak4xOVc/HYVElcLUMtNlgKi
	/zSo4ND8vjVfP4aTwYVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjr0-002Gpp-1t;
	Tue, 04 Apr 2023 16:49:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqx-002Gon-2m
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 16:49:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 334C46YJ016565;
	Tue, 4 Apr 2023 16:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=to5gibObB/rOOrjM18K2d3HeopciaYLtmTV7OYDnREI=;
 b=G9XYy0s4bhgE7NcpMEwheXz0pLJ1c7KDT2kr4G0YJn7uAgF9E4ydzlSo0YrQbUv6UP5B
 j+HjBDdkHXlCOFDN+LsmvMEhPl6sOg+18y4sEyBkJi660cOX9qMmqImCKXdOZgMjMUPs
 w74X6Br1msrijSMT7rBT5Z8Ov4zVOmPpDy5QyXAX8k0kWx6B+5EopEZZI5wpIKub6fIl
 Hsup6sBOP7dKwiingjfxAwIEdwL+RA1z9r5nmSKPpuZHejFVKNzHg3wJTZiFwLB9tQzd
 hcx3RpEFbqeHUk6Ni9DqFFSuIdjmRZCzxkLP8aeBQpmsWaSByHCxeDrpyyU3UWr1+FU6 9A== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pqy623uk4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Apr 2023 16:49:46 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 334GnjUw030500
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Apr 2023 16:49:45 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 4 Apr 2023 09:49:36 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linus.walleij@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>, <linux-gpio@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>,
        <quic_ipkumar@quicinc.com>
Subject: [PATCH V2 6/9] dt-bindings: pinctrl: qcom: Add few missing functions
Date: Tue, 4 Apr 2023 22:18:25 +0530
Message-ID: <20230404164828.8031-7-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230404164828.8031-1-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hrLww66kL9o8WvvbLuXraPUaAh4GmBy7
X-Proofpoint-ORIG-GUID: hrLww66kL9o8WvvbLuXraPUaAh4GmBy7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-04_08,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 mlxlogscore=994 phishscore=0 mlxscore=0
 adultscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303200000 definitions=main-2304040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_094951_910205_DA00E995 
X-CRM114-Status: GOOD (  14.31  )
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

Added the missing functions cri_trng2, gpio and removed the
duplicate entry qdss_tracedata_b

Fixes: 5b63ccb69ee8 ("dt-bindings: pinctrl: qcom: Add support for IPQ9574")
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V2:
	- Added the missing functions to pinctrl binding which was
	  spotted with dtbs_check upon adding the pinctrl definitions for 
	  pcie perst gpio

 .../devicetree/bindings/pinctrl/qcom,ipq9574-tlmm.yaml      | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq9574-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,ipq9574-tlmm.yaml
index f32239d08c32..673713debac2 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,ipq9574-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,ipq9574-tlmm.yaml
@@ -74,15 +74,15 @@ $defs:
                 blsp1_i2c, blsp1_spi, blsp1_uart, blsp2_i2c, blsp2_spi,
                 blsp2_uart, blsp3_i2c, blsp3_spi, blsp3_uart, blsp4_i2c,
                 blsp4_spi, blsp4_uart, blsp5_i2c, blsp5_uart, cri_trng0,
-                cri_trng1, cri_trng3, cxc0, cxc1, dbg_out, dwc_ddrphy,
-                gcc_plltest, gcc_tlmm, mac, mdc, mdio, pcie0_clk, pcie0_wake,
+                cri_trng1, cri_trng2, cri_trng3, cxc0, cxc1, dbg_out, dwc_ddrphy,
+                gcc_plltest, gcc_tlmm, gpio, mac, mdc, mdio, pcie0_clk, pcie0_wake,
                 pcie1_clk, pcie1_wake, pcie2_clk, pcie2_wake, pcie3_clk, pcie3_wake,
                 prng_rosc0, prng_rosc1, prng_rosc2, prng_rosc3, pta, pwm,
                 qdss_cti_trig_in_a0, qdss_cti_trig_in_a1, qdss_cti_trig_in_b0,
                 qdss_cti_trig_in_b1, qdss_cti_trig_out_a0, qdss_cti_trig_out_a1,
                 qdss_cti_trig_out_b0, qdss_cti_trig_out_b1, qdss_traceclk_a,
                 qdss_traceclk_b, qdss_tracectl_a, qdss_tracectl_b, qdss_tracedata_a,
-                qdss_tracedata_b, qdss_tracedata_b, qspi_clk, qspi_cs, qspi_data,
+                qdss_tracedata_b, qspi_clk, qspi_cs, qspi_data,
                 rx0, rx1, sdc_clk, sdc_cmd, sdc_data, sdc_rclk, tsens_max,
                 wci20, wci21, wsa_swrm ]
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
