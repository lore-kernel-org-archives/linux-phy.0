Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988EAC87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3yS2MGYoDcuxKfXih6k4h7S2Smt+VWuoTr5IN6GGec=; b=afOncsQ55dEfQx
	REMaTIec4Hp5apvwYNHo4UIq6c0H99NuK+1lSpHdILwj/asH7gdvemR5GKyTmBL1BzCKmuIGwGW91
	JGcdgEvVKTg4ZgGELNHkAkpW5vVuPwCRrjwWDcl8vfxdJf34qJBu04O+JZMfWvDP3+1azxaOCXkp5
	aL2WNQmBW4s1e9yvis7uqdUi+pCvnVCoL50jNfVry3db2hqF8lQJCa1/+4KMxqqi7E4viA7rKMrvL
	M1dCYIAi+uGAvA3Z6M5mbZY4ZSoon7i8O1eAJle7Fml1lWZd9loZ+DGhDboutuJyWSZsNTRSAdiEw
	45tF4qKCWw/iSlFw0FfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufH6M-00000009lnk-1IlM;
	Fri, 25 Jul 2025 12:00:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGWz-00000009ha8-06A0
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:24:06 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P8ftkk004400;
	Fri, 25 Jul 2025 11:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NLEI2UsZDJT
	RRynOIBqvBy1uUTkE6kX7auqi1M7mTAo=; b=QzYV4j27CFHPHruAi10CiVVn/dA
	Ec2A3ICbXiJB7O8kj+OwKbKkdFj1yH+jg3uAF4IgiSMaQ68VcQpap1i5MjUOadAs
	g7wjLjlMJbFCT9UPD2QhXFimKGYQ5+IkFOtjybbZm3wyt3+1BQ/aFZOib43t7gW7
	Uz1AZAOXPO3CBrq76wbf9AWJC/kL1vBnv4S3HF6aRCChD5xR67yNNG0OMS2eySba
	U9T3J0MmjRiQIhIDeCmqyP5qTIpklrE9IrQYxZ7X8pekGXiFwsCSBAyd4w3zgM8n
	cAG7m6QvOhZJ5hsp2OeEN6s2Yn47thdq0S7muOR/7yeV/+uHa6M8KvkFgWg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2kswh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 11:23:58 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56PBNutJ028294;
	Fri, 25 Jul 2025 11:23:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4804emtq3k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 11:23:56 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56PBNtKc028281;
	Fri, 25 Jul 2025 11:23:56 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56PBNtVr028277
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 11:23:55 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 2BB102112A; Fri, 25 Jul 2025 19:23:54 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v9 2/2] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
Date: Fri, 25 Jul 2025 19:23:46 +0800
Message-Id: <20250725112346.614316-3-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: VhAiir74oncGYJExbDjcNaNQgmB60Wc8
X-Proofpoint-ORIG-GUID: VhAiir74oncGYJExbDjcNaNQgmB60Wc8
X-Authority-Analysis: v=2.4 cv=QNtoRhLL c=1 sm=1 tr=0 ts=6883694e cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3zbVK_edIv7hY8gRkFcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA5NyBTYWx0ZWRfX715Zv65eikRa
 wV1LPZZ5fWmSnjdMXMHJ6XRSxvqCS/LVH4oGpDs8rrphQKAO/ambVNEQjwa4J/v3Qp6C7P9b9sN
 ViJLZmeZcYVs35uiGHu3Q3AyZ15Cp+gI5ZJedsbYfqpKjopyrlv6Q3BD8f+bXL8AMBTe79JN7BC
 Rz8JgMx7U3UQ9Tg9XP/XecWrp088X35o0Mb+F3UBgKc43R4qaHnNKn+z9k9A9b+zKlVZLGbsp2K
 jzB8Q7EsdALsPnxJIWE1s8/o2k0VVsb621cEU/F6gUocZ+vEZTKq0TvklYZhlgGFk7L3vOwPuDR
 BAp0VEtTGTv6jLKubEzCu8dvpseLqPTRVEfMW2VpCkto482FLivQ3rHwU0ifwow+kjAKOw9Sfyd
 99Cm7fb1sY84w/1OAmKg7vUAWPbH/gRq0x6vAbC6YEVivwEw6w4Uo98WpDadKq+PBkktA5jH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_042405_080047_AB1E4246 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add platform configurations in devicetree for PCIe, board related
gpios, PMIC regulators, etc.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index fdad6388f6f7..2dd26267ba2e 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -217,6 +217,23 @@ &gcc {
 		 <&sleep_clk>;
 };
 
+&pcie {
+	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
 &pm8150_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio10";
@@ -256,6 +273,31 @@ &rpmhcc {
 	clocks = <&xo_board_clk>;
 };
 
+&tlmm {
+	pcie_default_state: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio90";
+			function = "pcie_clk_req";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio101";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio100";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &sdhc_1 {
 	pinctrl-0 = <&sdc1_state_on>;
 	pinctrl-1 = <&sdc1_state_off>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
