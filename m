Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 652D5C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MWNa4pN+uvz98gV0HmUWUw17xJdbAZvrg89iCkPdgpc=; b=loZXVK3hzvgDqp
	hkh41gquXeBFux6DjHScwl5KqOpqF+tzn8NLhOGAzFiE2miKuVd5kCYk5b5K2OpIc3bU8rjN48Px+
	VbI+aTAwsVXrAA3xdIZrwWQodwksUSDnrC1SJmZfrsQOJJh7ULh1TyGEnJhiVDeWje+ypvM02kSH4
	HMdnW8FCnolKsXwJk8vymHqJrjMZbzf1VG5bniDA+8IxlxOkr5Jj+py7DGQ3IWHr54YziW/s/K3aZ
	jzQpzVgeXPj6aDy49IlAWUbTABcxMeIj5rV1q4LUZgqJQlXmW6TMmwNtGPgaiPi1jGoDWWQSjtGPs
	rJlrFGAUlaB6mwVeFiGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU2PU-0072AB-0T;
	Thu, 10 Aug 2023 09:56:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU2PR-00728Z-35;
	Thu, 10 Aug 2023 09:56:51 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37A8PXZf002388;
	Thu, 10 Aug 2023 09:56:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=T504CEXobX7cLJoBT1x/oPv6mp5b0CIe5FhMiZBrn9I=;
 b=guAFmPQBdFLBInXHF/MZI4nqCFQU6zr9wJgso11NMJwEw8jIh7hUKsUNoDpy2mu6FJl+
 ThEqOUqphLTWS6htauSEoKWdSlbva8u99ojxi8SZ72VJceIQtS7RJODnnU3kw3LHpnlZ
 K5NUCNotYkt/28TUn/w9WB8VD3Q5xvjzSY/ggR4iIC3BR7dIvc97+ZOM0IGeeiOc3frN
 o7LoJGyE6xnHE2StycU5+bRGfNCwssmYlhJG2AhDftpL+CkmvOt16yoQRmzDkEo8PgNj
 OSgUngsdgDMEk6Pu76CGgF8sbFhfTN0PoRuTb+KkGI8WKOZDy2cP5AdshgOXWMLF/zxI iw== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sch7cs9gd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Aug 2023 09:56:24 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37A9uN1Y001050
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Aug 2023 09:56:23 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Thu, 10 Aug 2023 02:56:17 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v7 0/5] Enable IPQ5332 USB2
Date: Thu, 10 Aug 2023 15:26:03 +0530
Message-ID: <cover.1691660905.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: JpypQuw8zJSP04fc9kxsWuykN-6Qg1YE
X-Proofpoint-GUID: JpypQuw8zJSP04fc9kxsWuykN-6Qg1YE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-10_09,2023-08-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 impostorscore=0
 mlxlogscore=344 mlxscore=0 adultscore=0 malwarescore=0 clxscore=1011
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308100085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_025649_997588_D2314BC9 
X-CRM114-Status: GOOD (  16.45  )
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

This patch series adds the relevant phy and controller
configurations for enabling USB2 on IPQ5332

v7:
	Binding:-
		Move 'compatible' to be the first entry
		In the example have 'usb-phy' instead of 'usb2-phy'
		Add 'Reviewed-by: Krzysztof Kozlowski'
v6:
	Binding and dts:-
		Dropped the qcom,dwc3.yaml patch as it has been picked up for linux-next
		Add const to compatible, vdd-supply
		Move nodes per register address
	Driver:-
		Add vdd-supply
		Cleanup error paths in probe with dev_err_probe
v5:
	Binding and dts:-
		Fix email id
		Removed 'Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>'
		as had to change bindings file to be able to use generic phy instead of
		usb-phy

	Driver:-
		Remove unused definition
		Use generic phy instead of usb-phy
v4:
	Binding and dts:-
		Change node name (bindings & dts)
	Driver:-
		Remove unused enum
		static const for '.data'
		Error handling for devm_clk_get
v3:
	Fix bindings file based on review comments

v1:
	Cleanup DTS
	Combine driver, kconfig and makefile patches
	Remove unused functions from M31 driver
	Drop the clock driver changes

Varadarajan Narayanan (5):
  dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
  phy: qcom-m31: Introduce qcom,m31 USB phy driver
  arm64: dts: qcom: ipq5332: Add USB related nodes
  arm64: dts: qcom: ipq5332: Enable USB
  arm64: defconfig: Enable M31 USB phy driver

 .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       |  59 +++++
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts        |  23 ++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi              |  55 +++++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-m31.c                | 248 +++++++++++++++++++++
 7 files changed, 398 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-m31.c

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
