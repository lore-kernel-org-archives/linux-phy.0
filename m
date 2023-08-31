Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2379C83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 05:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hryNubTg55ISLvkWITMp4Tp5CgC6PaQTe55VKc4N2Ns=; b=Ff8anV3aWOchoR
	k0/1NNlHHtYgylKKNMLl8wihFHF/OutAImCuP9VTG5VkLJqcCccxc7dHnIrCF/57GuPZQkQk/CYy3
	pb0yLzb/tRcq4mFdIPTuaSRLMVyeDRHszvSwNZjFYwvV78EtQW8dZgTtrVM0yLPzzyD8f+lXeC8uS
	UA7dA/oQwFYk4pV9lZGWN+8NaiWv0xeLxwx2o6rq8j8QU0O1cFdO7bvX1TV2bV+xTrb27aMqCjiwx
	+QFqAq2paDHTPb78RLwaQW0t56q+7dEtxybzgrpx+x+6XY6Q/eRv3BIoq4YFjpPQIGWe5LuSo7j42
	JXDTQT56aqpn9Uve4nhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbaNy-00EhHP-1C;
	Thu, 31 Aug 2023 05:38:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbaNu-00EhGH-0m;
	Thu, 31 Aug 2023 05:38:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37V4W9bM026222;
	Thu, 31 Aug 2023 05:38:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=Hs+rcs93upoiY3ZCsIyc6aAAAAfNFy5W2gcoWyavslE=;
 b=CEDZt2yZy9PW05FvQkOPLISmDwtTolS+BWudTfWjdWTScSA2aX4PQTCFqp3pUWgeEYEk
 yYLkK4+J17HPN3Kp2QWMq3ZEy/WwtMxWlMnv5Juznn8SFcFkCEyJHIJE7b+cp6hqvo4u
 HplwmUuROrHhaMwnjdkQ12P/WfFQaH74CY1vVW3jZYiqT9GXZLMc21nyUI1Iq+CEji5x
 DvUvIol177ufyWZ8nh1BVsfQ2Ad7DzfaULNKr1LiyvaA3HdfIN3P6CW51Gu+OqONRCUx
 9HdEbCUA6ZGDig79B+B+g1rSHm1JxYs7vqjp/Qbt95H95dzB20DBIHj4Gydf1e9pe7s9 Dg== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3st159tdbt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 05:38:07 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37V5c6v5004968
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 05:38:06 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 30 Aug 2023 22:38:00 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-phy@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v11 0/4] Enable IPQ5332 USB2
Date: Thu, 31 Aug 2023 11:07:46 +0530
Message-ID: <cover.1693459976.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: _wlLYWLF8oOOxyh4VdkG3KoiLJGhzI2i
X-Proofpoint-GUID: _wlLYWLF8oOOxyh4VdkG3KoiLJGhzI2i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_03,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=471
 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2308100000 definitions=main-2308310049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_223826_287505_756130BA 
X-CRM114-Status: GOOD (  16.22  )
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
DT configurations for enabling USB2 on IPQ5332

v11:
	Driver: Rebased to accommodate https://lore.kernel.org/linux-arm-msm/20230824091345.1072650-1-yangyingliang@huawei.com/
	DTS:	Sort nodes in alphanumeric order
v10:
	Driver: Restore register success print per Dmitry's comment
	DTS:	usb@8a00000 -> usb@8af8800
		regulator_s0500 -> regulator-s0500
v9:
	Driver: Since the driver code has been picked up for merge,
		(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
		adding the coding style fixes alone in this patch.

		Fix line break alignment
		Remove register success print
	DTS:	usb2@8a00000 -> usb@8a00000
		regulator_fixed_5p0: s0500 -> regulator_fixed_5p0: regulator
v8:
	Driver:-
		Change commit subject and message per review comments
		Don't include of_platform.h
		Change struct initialization coding style
		GENMASK -> BIT for one of the defines
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

Varadarajan Narayanan (4):
  phy: qcom: m31: Fix indentation issues
  arm64: dts: qcom: ipq5332: Add USB related nodes
  arm64: dts: qcom: ipq5332: Enable USB
  arm64: defconfig: Enable M31 USB phy driver

 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 ++++++++++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi       | 55 +++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig                |  1 +
 drivers/phy/qualcomm/phy-qcom-m31.c         |  6 ++--
 4 files changed, 82 insertions(+), 3 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
