Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A62C43602
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 16:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v298r7cVjCPIG/CvFx55E6gpc7YxmpMTjhK8BCuAs0c=; b=c8iKDlsarrkqJ7
	aNu+zyvdGqKz4L1tCs4yo9Vho2GThY5ySy+XO7LvwOYYbpy08oQGH+ruwDWte23i9/CIPP4nQxXzH
	6Q9zZlL8yo92Bl4OkXdMMmc8lKGVcidJMIOvPwXrXEI4fG/ji4nHh2Yw5HQSp/FgYthaGyv1t1Nmq
	h6hMFrBjrZ+qQsb1UG7apCROv8NPnyZ3Q24gVo/Do3apFjNhZ+mbdDQr2/rK2uktdl104ALz337uf
	5mf9hEDVw5Vf8ALPqUtHnD97U/UAd5eoOeEpTfNleqClJAbRU/JIy6+fOYQTVe14esUWdz1oyOEQK
	kKJhUZR//MQ0RQG65EOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webm7-0000000HWxo-3nee;
	Tue, 30 Jun 2026 16:57:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1webm5-0000000HWxQ-2ihg
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 16:57:30 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UEDCcF2213483
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8YJC20VUmc8
	hG0TDIKBt7XhKJfZsFAsHt8W+4dAsV2E=; b=WHjaNpx8ZdH9l9N7AKcn3RmsStB
	L63mlhqo9Z72bhGi2ce3/Y20NPtFwoo2DatKVDWFL+Ajot/VpaTVa4aPKDmSBr6Y
	iRse/RcZgPvYULW6A2Tm+JoIDGE2yrf356yQC2f64bikg0kbAnD1CKXMV1te0DWR
	5njWZVHxuyhDaYZeUHDUDLxs+GJkTVjhJGl8qm9xL204i0JimQGK2rYvwY5cUcpR
	ueXYrmXsKGd2iwq9dxeSP4tB0cPhnR0yDCqZAWN5CWfZ3O07fSnExcI/M9eqU0la
	qWaSPIyPFbX+PCRIqHPZgWLo257koyjPdo7NKnwypFUjE8ZiAjesjjOCNZg==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f462fkcue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:29 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-137f3465368so7160182c88.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 09:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782838648; x=1783443448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YJC20VUmc8hG0TDIKBt7XhKJfZsFAsHt8W+4dAsV2E=;
        b=Ps2U38JP52rv1Q/WhalHMOR7xLTNp5fKTx/TipqF5fLYfjyb6xj+BsMIb/jLR4s+oq
         p4TESzXa6iHSdUHKlRcm7o7ulyP/qmZzfPT2Tl42ekW76Om5JZPE/ks7NHsj95wqL1Ar
         GPN8bWbg8nqcEaSOMueVjkkIqvFpaPWiupMQnj3qgsQQ8wvVqqCVK7xiGA/9azF7EyzG
         ST1FtwDvXk9Kacjds8ozSEn400bPstswQ/76gZmy148vz/FFXM1VvJpaexzVzPqd1OO1
         LYvgeAGPpF5SjsFcIjvz+sYc85yaykvlzXtbe6Lh0MYKWfgxk64kNyGGZE6dWAZH/63A
         1EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838648; x=1783443448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8YJC20VUmc8hG0TDIKBt7XhKJfZsFAsHt8W+4dAsV2E=;
        b=gaJvGSjsqQ6p0a17kEA0cOI9NVWtc7MsZCj1fWVbZ3reI9o9azunbTx2MUF0fNPrxa
         DLLn3AKM16jHID50jxVkFzogCbxzZrFfSFdaEJ7EhYthIF/OfwPkMqSqlr09uoj+hUTw
         Z2UC7YBZ4blf/ljS5FloQxBE1yWCRftjk6xeynalBEIMlicSyuS4ZZFNkXqKbP/5j2iZ
         QYY4uHRAc1jwImjYHOgjuERanBinpokLmMUVRhotl9uuPY92rg9OsB8LXV9vsCETbXmC
         NJILpacNjm67r1nvSrgGCWLu6MRf6Gr2YDj4APToXPGqZqTxDL6Zh5JEMcViYZRiyIKh
         1qOw==
X-Forwarded-Encrypted: i=1; AFNElJ84JWMNr5mut94d1xHu5eSNp9lp7cpkqAaiN72tBnr6/CveRqbpMTQ68A7kM8YSBtmvRZ0VrVIJZrc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9ngoJ6gk+MWCMDxyWARgQQFrJHTCcjmVHSUszZM8h3Sif7PPd
	twLBX6NunsWhKfqHYl4nwNMSrbV4H7A1HtpbX2dXz1Ax6WIslHkmEz3u+2DFOJpYa6xQAZWfCFF
	iq4RWDq3YPLPmBzso3upPovYO0e7LI4DB6S4GUYTegtJUxOWN8mLRIVTsdRINfpyF74Sg
X-Gm-Gg: AfdE7cncbWrXIKmoQZYsVl1odVRDid/XZxUKCcaGO+3gWWkNzuMqwRXnX/v8E02trpv
	PpTCIo3PAgQgGbf8S3owEgTZ5HxNxcHSzJJnD/cpo9eAWqUMLr7wPNGUNfyApQOFHkLL9xsE08a
	4hBknPtQlCOI5RToMjJCTPjgiXlnzB3gdWAJjP3J1OrX17NBGBQCyg7Tq6BU2fkQQLr639KYM4T
	abbxXN+H2gCrmE6vngP4mo83KmQKhMIkVkNce6KMW7p7X0hMEBxuXfo8XwfYfEtD0tHRew8ZnNW
	7GGLb3K5fNUId/lqnoBRt2QT32S8tiF7u223kpfSKU2XbU7BgEv2emsmMNfXuzwedKa+MXAW5/W
	ccEmtDNd2aTLrsrkx6tTN+6Ql8tHKGlHaIkZDhZlIZqMrIw==
X-Received: by 2002:a05:7022:1e10:b0:139:f6bb:c907 with SMTP id a92af1059eb24-13b3142abe4mr854585c88.18.1782838648451;
        Tue, 30 Jun 2026 09:57:28 -0700 (PDT)
X-Received: by 2002:a05:7022:1e10:b0:139:f6bb:c907 with SMTP id a92af1059eb24-13b3142abe4mr854548c88.18.1782838647886;
        Tue, 30 Jun 2026 09:57:27 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b2a9b425asm12690272c88.0.2026.06.30.09.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:57:27 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V2 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
Date: Tue, 30 Jun 2026 22:27:00 +0530
Message-Id: <20260630165700.1886608-3-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfXzDA7U/g0wcM8
 A23FHX/tPmxqmgt/fMXTXdXNbjM26j7EdHUJcekaHlNom49LTsTZqzP6N45gZ0u6wtvVmlA7CRt
 EIrQSpSfSh0J+xCNMJQAPaQ8+k8WpfVmW+EQOPR5PGFZ+8Lju/+46OKwcFKF/leWjenhGOEUEVN
 tuPbIGHVlYalK03HEvztpe++TnStK3oxQrYvpLvbqi4BzIJA9PH3FbR2SWFxlOBGGJgZs7wuQU5
 W5/rV8NYy0EYuG5pFXQvjaWrlVkUat/qK0N0Nfs6Zt/qC295QCDG+3aW26o85g9W8nmnts74uT+
 NFfmEqKVOYDD30L9NLbfwAq0LLCpUKhGYS8y7ypJkNmQq3gF+ANPw5FBXSP5vzDUjvYhU3Vd8YF
 +sXC7KvL+izCpyLd6CMyozO6gc0I85MzJ+aclUfxsIrm8SQvQGoZAOtp38He3FlmXjE+6l9C0G1
 CxjGdVQ9OTvWZ1X99wA==
X-Proofpoint-ORIG-GUID: nZCMSop9gwmGsMdwjEQY6kTw0I3uhcmo
X-Authority-Analysis: v=2.4 cv=JqbBas4C c=1 sm=1 tr=0 ts=6a43f579 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=5uGxXp5b2Q1zeZBlDmAA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: nZCMSop9gwmGsMdwjEQY6kTw0I3uhcmo
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX/Z4rSS7gkkDV
 C46g5VQvT595HIXfz2p7JM1krF1ntGEk44vGhO2d8RMuq0J0Fx/pYmqZw2gl9a+BGpbcyFQGqNM
 pPqF5sBeQDfZ3KmcqNrUyk2apwzE8Jo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_095729_773295_8608A4FD 
X-CRM114-Status: GOOD (  11.73  )
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

Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
vmmc/vqmmc regulators and gpio-based card detection for each board
variant.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 683b5245923b..8212bd41f74e 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -95,6 +97,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index 26ff8007a819..5341e145977c 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -95,6 +97,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index fd691d53a0fa..0548de0d3a74 100644
--- a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-iqs-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra IQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -103,6 +105,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm8150_l10>;
+	vqmmc-supply = <&pm8150_l2>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
