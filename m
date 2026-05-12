Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BACCD37BE
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 04:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUfC5RrLOmgkDJccekU4iaaMSgEanZI90sXYobmytNU=; b=Z4CSgvu8cAX2JA
	r7YPi5uUwH+JHDWUWv8rWHIZ1+VPHMAwx7FGSb5zFo55fKxWq+JU0kciLQDL2sbhI5TXLKVbI5kH7
	12SpDGYsg4tUkT7vwRUVp85EaTvy85bGtZMlPD7Pq+qkgDfoFL4ci6AQOXB+Z+aiEY2NGngjMa9Hs
	FlKTV5/OqrwnRTyct+b3CtXTBhPccUDF50Kp5ypZ6tK6sgTaE+WupEp3YIjC0fwqVAfUroRTW2SjS
	jxeb2t4/AsasACygeh0wHkEmdOuVVmhyQtND65a772nYQ1zCiSkcIJE0afROpl82M8VHsbBaRtCxX
	ilWPeA0vLY0n0HTgfLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQY-0000000FRIG-1F9t;
	Tue, 12 May 2026 04:09:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQW-0000000FRHE-0cE1
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 04:09:01 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64BK6a4D2518217
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	97aapM4tZqs1IfO4iQJmxPEFoE1eTTwgfUYVmSbJ24Q=; b=jCUCEUEuCaM5YdFI
	r5KIB5d/ibCScPeS6tCfwzix8rgUQrysCXFYZ63l08rrsD9yJNziJyvJYx9wN3pz
	14OaXYLvndElO+2KhCv12pU+eYwpyVK5aCDttuOGRN+RK6N9IvQd5URa6IGn/zyj
	VpGUvxrUhYTuUnXHtT1AsCehqQtezGiu+T2vSlb/t6A6Ck3UT3hgnM7ObOVZC3wu
	rKyEJxfdu2gaGZ1QGixMgMW5NZfk2V+mnKzKfHWd4VYw11YWhlaWYau7pImntc/9
	dJeJiqulzXUU/0WMXqT3XO2irhXtDjObDY9U0KK/DTsr36M4z8DMM+fE6vDTB8+Y
	r1DuFw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3nv1hd7r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bc977e6aedso24819375ad.2
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 21:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778558938; x=1779163738; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97aapM4tZqs1IfO4iQJmxPEFoE1eTTwgfUYVmSbJ24Q=;
        b=gQsa3LDBzECfUOUUYQ3+mKUQbJgMZSdcqtlpTfcqQL49U2AFzApllr4euw5LxFF7P9
         VDal6uWqG5+1pAd2lGDt7KfVZAoX/5vsA4aqEJ+ap5sjj4UBguQvl4qdIbdOhDuj8pdL
         DwD2cDobaGWKgviLX0WfPboXDbp2W2hV+PCUj4zrHbRJedbx07PRO7wqkvpDXIWPSTiQ
         kzxUmf1MRlpNvOzFlHMHwQNxvhykP9KSz2VkvRHqjtUPzeT3Ya6UHMmBTZIk06YWeIFz
         Hbh993w+zfB+XXot2U71Ot2AzQvxDFLKs6SJMafZM9HSnQDH1XC3oI/+oZkKBhLyGN3Z
         Iyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778558938; x=1779163738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=97aapM4tZqs1IfO4iQJmxPEFoE1eTTwgfUYVmSbJ24Q=;
        b=YU9FSQVgpc3CTqTGtgZPPu0h5ACSvgr085R8c99Aj3XHxO6CQnqFSkmok9AWqXeEgE
         TUKDJqU4s9Mk5zl/uiyUrLwso5TexeAbWWW5P1KY0W/MWQI+DEfNKLo+/NzWXmyspPqW
         iUJou50nVkWWLk4DSC4KXFR8o3PXJOoon1xvf2jMMrXXsd3aPjgiiZvg5Jaka0DZEKQ3
         vpvvrRiOPLzxryhJSSfYLjmQir/Gw5Gxux3O41kgOLXf8GjW1VSAv52kuV0lcHlGZ+Vy
         vZ4Yvqcg8UyqdA7IICLwEUc3fn1RceWzQiOMAJwlzXNRXUq+foTxNAS2WugeYW9ki/Pj
         qyJQ==
X-Forwarded-Encrypted: i=1; AFNElJ87BfI+NbcK3Tqw7V3BVqpvsdgTyD4M5RE8gwXSAVnCmdqQJck13rKqDIyLtxr4GxnppJEYMNNKBqs=@lists.infradead.org
X-Gm-Message-State: AOJu0YznMFY3+RQ1OyEngm1/Gg5FjmqNnT+0zrTNiAHmUWpWD4ojZ4iA
	I6Fj8yYSgQ+lKHWhBwo2qI+jVHPUev9ff2KxNTWjFd7VOLy7Mfi5UFj8af8EhxSa0kjjki3Bo+0
	K6p0fmDtMxyl6rMSZIHsebDuoOJdJyykP5vjS9rmLoOLT0OL9ouCyFrjRFGrR0MflEQVB
X-Gm-Gg: Acq92OELM+RZH0M6dcRu6X9I/ekhAcNJ6p97+VB0ka4CYyoVBu8eOavPgzw27QPHLMi
	jwTd1RcOsZvcKlqpsG2cb34N8Fevjfc5bjO+VigpTTxPgL7gY5fKe6KgtKkb2awcp5rDFausvuj
	VdG1KpCPF3PDNhwOOsYUKLWWGdKM6aM3UMwko6rlSC42vH1lOUi1upwOKnDDTVEtb89IzAWRYMd
	XjzDxNPZkBkNXRI8kSQG1gPNIxDUTLg81AR6ItDgjwwud0sLCjJSH71GdqKi0OtDcUJcmwR2Q4/
	1OkSHtlg78IlT7oW4sLyv5fQI287UCxUAq2Nfy/sKC2k3HlGcHqjsF6pizSmD2nQdpvrfYu6MtY
	bIHRhpWZLscdPJ99QbPH+YfTmiyfxb7LqjxeG
X-Received: by 2002:a17:903:948:b0:2bc:78ec:54cf with SMTP id d9443c01a7336-2bc78ec7687mr132514555ad.9.1778558938086;
        Mon, 11 May 2026 21:08:58 -0700 (PDT)
X-Received: by 2002:a17:903:948:b0:2bc:78ec:54cf with SMTP id d9443c01a7336-2bc78ec7687mr132513755ad.9.1778558937466;
        Mon, 11 May 2026 21:08:57 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm122646725ad.28.2026.05.11.21.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 21:08:57 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 12 May 2026 09:38:07 +0530
Subject: [PATCH 4/4] arm64: dts: qcom: Add Shikra CQM and CQS EVK boards
MIME-Version: 1.0
Message-Id: <20260512-shikra-dt-v1-4-716438330dd0@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
In-Reply-To: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778558905; l=5885;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=1ljQ84A7zAj1l8wEckyCPg0Y3BG1MCDQO9YwUdHJcxM=;
 b=T+MjS3kbq+x5i3hAjxh/jxMqoeQz2ipbNRnaqfXHH5A3gzuih/ViELVdU/34Mw8dA0PyaFzE6
 7z18xCvhLJmBQUj0gxEXfjvLKNQb4kpXgMoV6kkRNOADaNBlTEeCEyO
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: B5VXOpxawqaGyDjTX5zCSzDXuuYsOrED
X-Proofpoint-ORIG-GUID: B5VXOpxawqaGyDjTX5zCSzDXuuYsOrED
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDAzNSBTYWx0ZWRfX5GPdvK2E95sE
 NgzueHNjjCz6F1gQHk8f1Hi+YFHVWMMJxNfjB28OSxgiBwIPuDIxociI5kdQGiUrBhUYHaCBEc8
 d3RwyKZSSz417igAHI1wdy4KmiFXN4Pb/NDMLeE/ZCAErISQr0bcvZHSkXPlObE9j/f8B6i0dpa
 3I2b9lFxpNPGCCIU7oCPS8kfEUhctSoR4+dRgh/m5coAOznzZ991ZPSpFqMcbt354Vsydj0XTLt
 4IRepolyXVyNnGBmQaavHfT4JMRZa72AfRYSlcYgnCkeHvpw8GNe9f4D2iTu1oBkiRGTDB9EYTU
 ot4Kkb9HWBIOGO5E5XKfCHuoRuRor/p539vJA/TRh7knwHsv99a8+fAcwwCpDZHk2jEG3h9dm9b
 8jW/quyfgHXDeNgDJ90vg6nAKBKq1q+ZN5MB6RZH1c0SDFRWZiAmW10eeWIbAWX3a9ByYKZYLJ0
 iVF84H/0BWV56OVDzAQ==
X-Authority-Analysis: v=2.4 cv=c6ebhx9l c=1 sm=1 tr=0 ts=6a02a7db cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=GgAk_Xbvyzovik2Das0A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605120035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_210900_308109_EDC6CD75 
X-CRM114-Status: GOOD (  14.53  )
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

Add device trees for the Shikra EVK platform, which combines the CQM
SoM variant with a common carrier board.

Two EVK boards are introduced:
  - shikra-cqm-evk.dts: pairs with CQM SoM (retail, with modem)
  - shikra-cqs-evk.dts: pairs with CQM SoM (retail, board has no modem
    support)

Also add shikra-evk.dtsi common across both EVK boards.

Each board DTS enables USB (peripheral mode) with the appropriate PMIC
regulator supplies for the QUSB2 and QMP PHYs, and eMMC with the
correct vmmc/vqmmc supplies for the CQM SoM's PMIC.

Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |  2 +
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 61 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 61 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 13 ++++++
 4 files changed, 137 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index cc42829f92eb..6de783bcd133 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -328,6 +328,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-huawei-matebook-e-2019.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-samsung-w737.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdx75-idp.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqm-evk.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= shikra-cqs-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm4250-oneplus-billie2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm4450-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm6115-fxtec-pro1x.dtb
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
new file mode 100644
index 000000000000..12eeca84832c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "shikra-cqm-som.dtsi"
+#include "shikra-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
+	compatible = "qcom,shikra-cqm-evk", "qcom,shikra-cqm-som", "qcom,shikra";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm4125_l20>;
+	vqmmc-supply = <&pm4125_l14>;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+	vdda-phy-dpdm-supply = <&pm4125_l21>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm4125_l8>;
+	vdda-pll-supply = <&pm4125_l13>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
new file mode 100644
index 000000000000..bc93282f64cf
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "shikra-cqm-som.dtsi"
+#include "shikra-evk.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
+	compatible = "qcom,shikra-cqs-evk", "qcom,shikra-cqm-som", "qcom,shikra";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm4125_l20>;
+	vqmmc-supply = <&pm4125_l14>;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+	vdda-phy-dpdm-supply = <&pm4125_l21>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm4125_l8>;
+	vdda-pll-supply = <&pm4125_l13>;
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
new file mode 100644
index 000000000000..fae8c75b68b3
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+&qupv3_0 {
+	firmware-name = "qcom/shikra/qupv3fw.elf";
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
