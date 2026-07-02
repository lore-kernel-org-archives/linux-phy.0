Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41040C43327
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 07:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkedIozA7BF8Wrjz3ENCryDoeqGcScA04LhNKd/0wqA=; b=Zwknf8vneDiiSU
	LI/tMZY6ZCkpohQQnDONMeQdzKiiVJU1bzy/0zYJpMmV0AkrztDUPHdU5mVVlEjWm3duBYBFAKF18
	WEZE77Y5dPP/9FFsK4xeMMZfFaY0ZyQZt1jRjdp3JSyJ1mEccqAfFHOnzZ5RPzKTnzC8F7wTQ3GuF
	I74Urk4eCYJ5Uh8r49D+7xJVBnZMWLm3YwqIOGQX32htXs6rDBH388fBW68rDwcO30y/hwnzIFf1F
	tAkvx2qPqTjWGbi4Y4iSrCD9nDFd0VFjB/cgrLGOpU80bPwejJDr3o4fvndJ7TxuQsp6mAOSmqugY
	toqRm6WUue8fZwKRSS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBwF-00000003kR1-48cc;
	Thu, 02 Jul 2026 07:34:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBwD-00000003kQO-33pJ
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 07:34:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6621KO3C3050735
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 07:34:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sIJYBVb2Xk1
	IN+E6IOH2B3aiN5MM890hUqbaJ5dnjXo=; b=ebcFGPX2LBNY3H3x6JkDZp+pa2B
	KWmm347s49RJN2n7s3wI8bbJPFPXNoLhovOzHXcYCLlGPouC2IZu00zGYsyRGyBJ
	ZOD4qtiG97wybVAttT0AMbV9ZfIeH07q2s66Gw1BabUZUgh2ZSIjf8n4UPetBPVh
	d+WoqEnD2Rkwzgjv1+rISMZ77WrzVoZIJLQUUgQmUwrH+gwHdF3Y2F6CERhbtoID
	TPQip2sRkkYlu4gAZrS3c6Tfeo4WaVp7FiEpCFrlLH9iHG/JvewJHfgXY4l1/jIb
	MJ2ckLBa+SCWf5qasvEQ8uvLwy4JU7ZStmrJknkDgjop82bBUzYQ61gM9aA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f56gptwc5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 07:34:20 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37fbdbc4d03so531698a91.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 00:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782977660; x=1783582460; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sIJYBVb2Xk1IN+E6IOH2B3aiN5MM890hUqbaJ5dnjXo=;
        b=h6XaaPH0OyoeL97ijfw5w+UYczEsASd+Eb1Lkdz5sclneQXbB29ujHytA/DRIvJB9l
         OI6FsRRx0H9GqQ+nZqzs3bD1ghEZBJ/dM6widNoaPBNE5d2Bd0t+OK+xRtQS78ib+6jR
         GO0Z3ZPX0GuebA2ZpBpETTM5hIR6CS/VXdTXMGqBOwXauB2BD7MSnmM2HMaAsdN6yPSo
         RNzHCxJ2I60wqspBRf7kh1SH9vxFBdaLHq6WM0C5qm0hvzoU0DEJ9HNXvEaseDGD3Cl9
         yhU0yBbuEn6sDBsFduR8y6OnO1S3ioRsar3AwFuprppy2DIvvUEWKJRAuY7/EgZT0PoP
         FuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782977660; x=1783582460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sIJYBVb2Xk1IN+E6IOH2B3aiN5MM890hUqbaJ5dnjXo=;
        b=O/vasiRwGmmjZs+UDJ3NezlnegJBgEM58uxJtXu4sodyvcf9C5WfQFkaq3Kx6EuP+1
         6e+9eQpuIZs/Px1bV5AxZjNeary60Mnp+Y1WPc7bGkNtwye9gPXythZOEyhFp79i/ffY
         vqpQtyj77olklj+/7Ki25iXlKBOBxCeqp/JDO0vZBtW+r6cE96iyLj6GpDLxesnCr9o8
         QQE9KvVNn2nGDEhXN35XUWGZc18PeNA9jYPae2s8jOfChcHjvjxY2U9rHdm87saSWnIq
         SfRsx4i6TMKdCw+y5j5pjHOrwXM7U+ElclpbM/rJomnycoAdxbmUDmjOShl/AtjemdrK
         +v7A==
X-Forwarded-Encrypted: i=1; AHgh+Rr4zOr3q2tguFAh96thUjF1bPvYlLguitmMzcB/UGjeYVnDNZs/ctH1RoFOokU2qBdgwUG73WvayZ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQia2mYsevw90AAipzUAi21le6KPXU0dhkz/x6twMoNiAl6G/n
	xM47GimoRs9I7G0b+NUegsKnkiR91Wd9lvGn2op73/QPldYpydaKqgeJG4QCoa8qQdg0IKu1x75
	PbWx86hLkL2b3ULsTxpZCXKuRr5FF5F9HaSMuwyzFOyLY3vt2hh9fYsZ3DMDXVihU1UAU
X-Gm-Gg: AfdE7cmF9xQqnhiomJgpX9JtTqm1ZWwTgI6AccjQimT2isUsaDQlMfDSBCABKDnNVeX
	xByUj0SesD+Tj31J1ZAQldjIy5h/I8KzbCKw7R9uqTkxYqNplV2rafzpeYiVpF7e1KFUeTPvK+k
	1QTaE7MOdsC3W1wCHv2m72GNHYcx46hDtFvL25s9KgYFRtZnik+WFW0Ey7dCTSBm653cW+uQi3h
	YcQQWKeDhG8yv3kL4YLnzRvMqt+iR2LMkChJrzlkTJ+JX2BGXCGOdJpHnaloJUK1kva5j5+HbBl
	dzGzw+HCL9cjZsivUl3px42a9c1QO7NSZO20fDlvZY7D+8lCxgTYyGA/ogQXZbwCm4W6sQYG4nd
	mahpaRxi+EYHzZT26Tovcn15zOMRV030QN+1viFgm4vjI4w==
X-Received: by 2002:a17:90b:4a0b:b0:36d:c138:e0a0 with SMTP id 98e67ed59e1d1-380aa07d617mr4242195a91.2.1782977660335;
        Thu, 02 Jul 2026 00:34:20 -0700 (PDT)
X-Received: by 2002:a17:90b:4a0b:b0:36d:c138:e0a0 with SMTP id 98e67ed59e1d1-380aa07d617mr4242174a91.2.1782977659724;
        Thu, 02 Jul 2026 00:34:19 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e163211asm587380a91.3.2026.07.02.00.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 00:34:19 -0700 (PDT)
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
Subject: [PATCH V3 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
Date: Thu,  2 Jul 2026 13:03:54 +0530
Message-Id: <20260702073354.3641966-3-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
References: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfX85XA9cgaWdPX
 QoZlZA3NxhrBRXK1yfzyahZAekRown/XZvF2/LudMR+FlyxJIcgZ3kA4YSmWdPmUD5VFwzMYRps
 3asITSErgYXOro8yphuTPplc2V8ArlM=
X-Proofpoint-GUID: espi6S82xen4AZIGRGyOVvOz0YGlMbOh
X-Proofpoint-ORIG-GUID: espi6S82xen4AZIGRGyOVvOz0YGlMbOh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfXyXirn2SgQWCG
 VH+XeubcDKCCKd9w3Wlg/gwQv07qKczZgt1ClAqRb8LA5KKzBvz+eKPRDGhn6k+t8mricCldyGv
 RDtI1JrVkN5VGCBSJjNtTHY2HuGbkD3HE7kBPXUmX6mUfmvx18LbClzTgNI6mtcKWvOlFQuuwzS
 wFCAGHODF6G2heUPCTtRfl0oGdqFhoe2NBxAtLpZ7tgqyNJrcHD4v7IsECyg/wKpiqnMp1z4TcD
 zTnS+9ia8F3iAAdm3sWMSX8qETJJkjF/sr9ns096Cl29SCpDNxsYYAz7rx2TqVvNXhxb4Rs1wSz
 MjWjnQCE32PD8arrrV56XHar0SRbliCTP6l9f7fc5bJoCCJ//kXAVskESOsHvFhrU9dLk5CyNUw
 FaQzzt6IMrtXOCuaXq8+e2dVxxRs7G8/fif2t+2ilK5BNFGS9kSVQE+vkW+Aq05Y2UqkltguYZq
 9X0fq5ZzI7eU3ztBXUg==
X-Authority-Analysis: v=2.4 cv=K9oS2SWI c=1 sm=1 tr=0 ts=6a46147d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=xck8KZ0arIIkwrKT9kkA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_003421_776195_0345935C 
X-CRM114-Status: GOOD (  12.44  )
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
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts |  9 +++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts |  9 +++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 11 +++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts |  9 +++++++++
 4 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 683b5245923b..d4a7d31fb111 100644
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
@@ -95,6 +97,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index 26ff8007a819..a83e9fa98797 100644
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
@@ -95,6 +97,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
index 5411f22426b7..a9a5a6c99313 100644
--- a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -9,6 +9,17 @@ &qupv3_0 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	no-sdio;
+	no-mmc;
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+};
+
 &tlmm {
 	sw_ctrl_default: sw-ctrl-default-state {
 		pins = "gpio88";
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index fd691d53a0fa..0fca5d0ac66e 100644
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
@@ -103,6 +105,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm8150_l10>;
+	vqmmc-supply = <&pm8150_l2>;
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
