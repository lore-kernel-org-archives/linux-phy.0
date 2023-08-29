Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F59C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 13:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SV/bu+TejtZEG82gyH90rfFvR7ImMcnShsODC3xO8I=; b=GNwW1rMTbYVQHS
	eOozRXHisKOJZt+3d4wXQ38FYlv4O5SC19lm59TgwUfQednwWUKao5G3xFp1ZM/mlBo26tYASXcOl
	LPMBcaHXvL4ofndGn+C4B7EWH3AvW0hjlENWDeaJjHzNTrV/MV5EYZTGGyMkWDIbQfylxKAFpnaD0
	zm2y4Z46yaVQUFCs11KCDbCpPp/tdbE0tihJ5fslr5n+D1lFHy+v2FjiZpLIVpTEUSvFoyfxn7/qm
	9gxfUANMalHhPLn9uVmmAqIGLroZU0XVqK2D5q0HzNQSaT+jZghgxjeLQtfPWt0wweEyzYQZLvOv5
	GVoVNh5kyokBOynO/T1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazG7-00BesZ-2a;
	Tue, 29 Aug 2023 13:59:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFz-00Benm-34;
	Tue, 29 Aug 2023 13:59:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37TCudAq022443;
	Tue, 29 Aug 2023 13:59:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=SULXNngNMo73gfBkwO7XZ0LNOloszlLiV2OBOOfwD+0=;
 b=nho6BBzSYQDjfsIZVbzbjXStXFRsd7NnOYXAkrs3rKnG78UEb3o3NEfaB01jW/A+5Lix
 kpUw4gZsjsrUSOXzN1PhEeED23Aifzqq5laxgCvk2ffrbTxUCyk5zQAvnrT5BcPKZzpH
 PNA+JRTOQ6oiyuTHBfxMVShooYSGN1BSy/2M+I5wTdmCU8YNt7jswujFaDkgaMBF4cd3
 AOTye7Mf+z6VwevovRkydQIooW5JOB6jrzG4eElbEoqsPJkVC3nSFc8FvFpO+3oOJ/Ma
 H5CwlKV1wDuUFqQCWXiOOsgpYDqjDMDrfHHczx5AYAU46DzQlgdvbgElSEP++9BPNdxm uA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3srybqadk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:59:32 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37TDxUk9012960
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:59:30 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 29 Aug 2023 06:59:23 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <quic_ipkumar@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
Subject: [PATCH 7/9] arm64: dts: qcom: ipq5332: Enable USB SS UNIPHY
Date: Tue, 29 Aug 2023 19:28:16 +0530
Message-ID: <20230829135818.2219438-8-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Bl3nEilMQ26vrbx_C-LPaVzQxCqvewys
X-Proofpoint-GUID: Bl3nEilMQ26vrbx_C-LPaVzQxCqvewys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_11,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=1 malwarescore=0 phishscore=0
 clxscore=1015 mlxlogscore=214 lowpriorityscore=0 priorityscore=1501
 mlxscore=1 impostorscore=0 adultscore=0 suspectscore=0 spamscore=1
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308290121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_065947_997430_DF08C55E 
X-CRM114-Status: GOOD (  16.01  )
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

Enable USB3 SS UNIPHY and update USB node name.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
This patch depends on the below series which adds support for USB2 in
IPQ5332
https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/

 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
index 53696f4b46fc..c450153cfaac 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
@@ -95,10 +95,15 @@ &usbphy0 {
 	status = "okay";
 };
 
+&ssuniphy0 {
+	vdd-supply = <&regulator_fixed_5p0>;
+	status = "okay";
+};
+
 &usb {
 	status = "okay";
 };
 
-&usb2_0_dwc {
+&usb3_0_dwc {
 	dr_mode = "host";
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
