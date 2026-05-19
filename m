Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27094CD4F58
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyOkqw32Ba0qzwkKORVfaSeNqqozM/JaZxCBYx+cTKM=; b=mkzns6TfhjZq1s
	09xesLH1KCm/hQtAnWP9f47kV3kv8jUP/7E3799jHPaKD2UYbpbNM9sWWmAmR9eZwInq+AQniFUjm
	bUUDX/iczOdYSwM35f8sKsTbkSvbl+Oi5AoXop6CInrSUEbwhchoO1g2QrCpiW1DOlSsN+1kI7sTW
	GZSoymH+3cgapMrqB6e0D4FlpfU1v52KXWj9qOunDvtpXTA+ZUGZdjJurFQgow8v5sSpZSynndoJ5
	8cWTGqr2SbCi4QTfsPuFUckJiy9BINEmDzjVSOuuYDh6WKg0gJ6l/1al4zTwEJ8Ui2gY72qiMnQF2
	xD9vsAkrD6TEOH3Cg+Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIl-00000000ESb-3rhK;
	Tue, 19 May 2026 05:47:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIh-00000000EPC-1IE5
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64INbisB2892861
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c5z2BAfF7u/3eYBoDRRCGBrxkUNywNEGnlBXzSLGwNk=; b=cyeOhdOWp6otu7eQ
	5E1rjcikwJvifydOLrPNvh8uyUcq51oquMvvAtCBAikQzcencPJciSO+kKpf9y4S
	xPSsyuHucAa+JwquIsnz575lIrJqeA/baUDMmAKa7qOXgJRGMh6O2FxTQ9qr0O6P
	4dVzqzGBnXdUmw6ZWMQqwLQ6m6L3c+0Y2T+ilAzjVajO+EatCtywqrywWVYXO4wX
	MBQmL0i1lUA+q/JumqT0QAq/B7LLsh1/Np7OEmz1FDTSQXDQ3fGfPAuNisZk1h86
	rwJDQTKldVcxMGCYLhYHQVWbf09R7TZ6NeiFwI1rCRB5lechvFuEWhNLO2AoGyl6
	IQTy5A==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xk1ckwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:30 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30230e64087so3728475eec.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169650; x=1779774450; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c5z2BAfF7u/3eYBoDRRCGBrxkUNywNEGnlBXzSLGwNk=;
        b=ZHeB95DURh5a9cY3ZnBi0VMcCTzgyfzVXsaXOB4+WltMlDlz1wBOJ+7rrxhWAkjrDf
         ggN5nj6APU2ExmUlDhQZGST6H93gvLwaQRcsF0zejABqR204ckn2wUitHsU1HrXfmzrY
         pS0nv2BNYoCJ940JvPN4QKHj/GzC3VKXouFvCGAy7IFgDbi3xlOltSYcUiteaj0LtW4F
         AaByj53bRsVdPECouBdf5gjU+Je89JyFcdTdtPaSISlPcMUD+QRD4Ri14ZphV/jrBo+c
         ub+7ukFeX/F5sFrhksfHkXPzqsJm0toHFCXJNqa9TJhku7yFhoKbWJA9NusVejA8xNU5
         sYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169650; x=1779774450;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c5z2BAfF7u/3eYBoDRRCGBrxkUNywNEGnlBXzSLGwNk=;
        b=l1cGkw4sRUROAsVyFaGMtF9+xlTN9XZiY8elmdM9WRcX0LhhWVeFhhj45GQY84m7Ya
         AZgQy9t4K6iK92dvXjvgss5KIwBDFUSBOzLoxurK+YkNPhI6mlEbs/M767UbaTlR0iHu
         TMNl+BQbs/9tPJ++tJlKjVHCyL5fziB9T7LajtA19JK/gaZqGdOUIQKukukZpkBqKXKW
         lKfKDlB6pp/CQgUmQOalQ/f7NfGenmuYRZoiofvdi62Rnay5hMrIDmhTwHv4LYJDi8XD
         0+3SJhtm4nEmpA8AkLxv/DSYKUsYQWbkCxtNca+2Z1eH4G80OxZ1FlJ9cdbVOAL0pRZO
         HcQQ==
X-Forwarded-Encrypted: i=1; AFNElJ++faxrZjKdHH+CYtZvfIIb1YyotnwgvQwdJ0J1aPlRAxEefKDi09gHsEiXIuQVnLr5c8DtrNBBkTc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJWwgwmxfHs+pH2Ad36uQ/8BrDjwbMydfLE6XM2/KTmVX0XYcA
	KyYwLrgDAjvtvM9Xq6HfqcHSbkEOeA3h2GlK94OTDPHYCsTieUXoO/gzaJFlBfUhAbefbWunByI
	P7YR5k3ROJ1395F50vF+PiDzGJRdkf+Xzs/aJyKrchiKN/t2UD3QE4Doeup0xcOF+yptS
X-Gm-Gg: Acq92OEmq6r06MxyFKsHSUMrbmZJgRG+U2YrSZYJvWXJ4xF+cHj8ETmoqwOhKqO88vY
	WjmjTA0fQNpfgxTc564jKtayxtXK4FY1KXuOzn8EIhg9Wy70l+/q+3LyKCgWUkHtnh9EeokacJC
	OMJznxsL3ujqILcl97ks510BtzE0C/0daJBzL+1ZYvf/nZrD5puGZzWL5DTvd5GsBQ2WkO1hGLz
	qA6V2VpWmyAr5LG7J4oQaLN6bx/enCro0ZJlo6p/+MdmhPsKrQL5dXCKcz39bbdR128S6qHJKTK
	L9+oHfRB9eqSfywT2g9THotuHLq+r9nQ2vTM1vLgE1UqWlH58mHgzNc3dIGOWOUsuCUgVaOChbx
	Sg9YXOaIHVDt0+A5nxdZc+C68C8Qw0SqrfrsJT8Xp3+bZQRoD+tO0ZvXlDKkqRUeoLzoS
X-Received: by 2002:a05:7301:688:b0:2e6:ff79:e356 with SMTP id 5a478bee46e88-303982bf6a8mr7850199eec.11.1779169649981;
        Mon, 18 May 2026 22:47:29 -0700 (PDT)
X-Received: by 2002:a05:7301:688:b0:2e6:ff79:e356 with SMTP id 5a478bee46e88-303982bf6a8mr7850186eec.11.1779169649356;
        Mon, 18 May 2026 22:47:29 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:28 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:20 -0700
Subject: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=11412;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=bW+/hvA+Pca7K41++Idj5IJ3xMCsvbz/R0Wz9A6pciE=;
 b=Gc3x6Yj04vzFPxwg9xMR5HbWgn4tBQNvte92tobbGvtxvLZHz43eBWpWc6QyQJgjyzlfCyFOy
 67J3rYRXSnWCxCuQlIN64vxIIN7JJXQnQUyRDx4kFj+bMvE3lhpQpv4
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: u_F4zQCeO2L4j2kYisZh6LugclvnomWe
X-Proofpoint-ORIG-GUID: u_F4zQCeO2L4j2kYisZh6LugclvnomWe
X-Authority-Analysis: v=2.4 cv=BICDalQG c=1 sm=1 tr=0 ts=6a0bf972 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=XVFuNizlLJlILrWKUTkA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX/yi4hkt7McnS
 1LqfrR3/k0j4EJQt0zlpYHFEzP/tscdGQHKSGF1DVdqp8uWByAOfQRlCp19egAjDWOYkB4F3rWM
 YPaMjHAkG1poPS7jtJacDFYldFk0cYE1iKLb8I9xEjm6SK+uXXl3DBvAQtmG3XaJGZ1XY4/zwdr
 A2xFaNgUNPy2xMTPoDM/Sj6oPAcMXkzT7ma6joz8eaI7GXaujRcdFwKhgUq1cIet+qPIYHumqu0
 VQInsL+OkwweZAtdQ8dPDCvEYHWF4XycXifMwolM7SN5GHU0vTVNUymkX8X9KYxwSFf/R7WCqU9
 8t0if5JZ34MYC2kEsN3rKxRfKNe7WsuQqq76UCf3be4XGphaqTi6IG91eVyV1DGomuzfWKOH13U
 wOpRDzyMyWS+PPm7e7mscVsSTtYbeksAnqMUtZouJCZdRs+yUyU32VBh6Y1Uo6yUrZ6pitkmmCU
 uD/VgZVtzLqkBatqf+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224731_372697_92742993 
X-CRM114-Status: GOOD (  13.56  )
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

Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
PCIe3b as consumers of that shared PHY provider instead of separate PHY
nodes.

Update the DTS wiring to:
- point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
- add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
  &pcie3_phy using two-cell PHY arguments
- configure the shared PHY node with link-mode and dual pipe outputs

Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi |   5 +
 arch/arm64/boot/dts/qcom/glymur.dtsi     | 333 ++++++++++++++++++++++++++++++-
 2 files changed, 336 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
index 6e2e06ae6c8a..72a86881d36c 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
@@ -451,6 +451,11 @@ &pcie3b {
 	pinctrl-names = "default";
 };
 
+&pcie3_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+};
+
 &pcie3b_port0 {
 	reset-gpios = <&tlmm 155 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 157 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 9ea297588d07..87530c233050 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -757,8 +757,8 @@ gcc: clock-controller@100000 {
 				 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
 				 <0>,				/* USB 2 Phy PIPEGMUX */
 				 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
-				 <0>,				/* PCIe 3a */
-				 <0>,				/* PCIe 3b */
+				 <&pcie3_phy 0>,		/* PCIe 3a pipe */
+				 <&pcie3_phy 1>,		/* PCIe 3b pipe */
 				 <&pcie4_phy>,			/* PCIe 4 */
 				 <&pcie5_phy>,			/* PCIe 5 */
 				 <&pcie6_phy>,			/* PCIe 6 */
@@ -2285,6 +2285,59 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
 			};
 		};
 
+		pcie3_phy: phy@f00000 {
+			compatible = "qcom,glymur-qmp-gen5x8-pcie-phy";
+			reg = <0x0 0x00f00000 0x0 0x10000>,
+			      <0x0 0x00f10000 0x0 0x10000>;
+
+			clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
+				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
+				 <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
+				 <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
+				 <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_3B_PIPE_CLK>,
+				 <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "rchng",
+				      "pipe",
+				      "phy_b_aux",
+				      "cfg_ahb_b",
+				      "rchng_b",
+				      "pipe_b",
+				      "pipediv2_b";
+
+			resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
+				 <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
+				 <&gcc GCC_PCIE_3B_PHY_BCR>,
+				 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr",
+				      "phy_b",
+				      "phy_b_nocsr";
+
+			assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
+					  <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>, <100000000>;
+
+			power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
+					<&gcc GCC_PCIE_3B_PHY_GDSC>;
+
+			qcom,link-mode = <&tcsr 0x5000 QMP_PCIE_GLYMUR_MODE_X4X4>;
+
+			#clock-cells = <1>;
+			clock-output-names = "pcie3a_pipe_clk",
+					     "pcie3b_pipe_clk";
+
+			#phy-cells = <1>;
+
+			status = "disabled";
+		};
+
 		usb_hs_phy: phy@fa0000 {
 			compatible = "qcom,glymur-m31-eusb2-phy",
 				     "qcom,sm8750-m31-eusb2-phy";
@@ -3647,6 +3700,282 @@ pcie3b_port0: pcie@0 {
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;
 
+				phys = <&pcie3_phy 1>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie3a: pci@1c10000 {
+			device_type = "pci";
+			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
+			reg = <0x0 0x01c10000 0x0 0x3000>,
+			      <0x0 0x70000000 0x0 0xf20>,
+			      <0x0 0x70000f40 0x0 0xa8>,
+			      <0x0 0x70001000 0x0 0x4000>,
+			      <0x0 0x70100000 0x0 0x100000>,
+			      <0x0 0x01c13000 0x0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
+				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
+				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
+
+			bus-range = <0 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <3>;
+			num-lanes = <8>;
+
+			operating-points-v2 = <&pcie3a_opp_table>;
+
+			msi-map = <0x0 &gic_its 0xb0000 0x10000>;
+			iommu-map = <0x0 &pcie_smmu 0x30000 0x10000>;
+
+			interrupts = <GIC_SPI 948 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 949 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 844 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 845 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 846 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 847 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 942 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 848 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 849 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 850 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 851 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_3A_AUX_CLK>,
+				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_3A_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_3A_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_3A_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_3A_WEST_SF_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "noc_aggr";
+
+			assigned-clocks = <&gcc GCC_PCIE_3A_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_west_anoc MASTER_PCIE_3A QCOM_ICC_TAG_ALWAYS
+					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					&pcie_west_slv_noc SLAVE_PCIE_3A QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			resets = <&gcc GCC_PCIE_3A_BCR>,
+				 <&gcc GCC_PCIE_3A_LINK_DOWN_BCR>;
+			reset-names = "pci",
+				      "link_down";
+
+			power-domains = <&gcc GCC_PCIE_3A_GDSC>;
+
+			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
+						     0x5555 0x5555 0x5555 0x5555>;
+			eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55>;
+			eq-presets-32gts = /bits/ 8 <0x55 0x55 0x55 0x55 0x55 0x55 0x55 0x55>;
+
+			status = "disabled";
+
+			pcie3a_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000-1 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x2 */
+				opp-5000000-1 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x4 */
+				opp-10000000-1 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 1 x8 */
+				opp-20000000-1 {
+					opp-hz = /bits/ 64 <20000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <2000000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000-2 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000-2 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x4 */
+				opp-20000000-2 {
+					opp-hz = /bits/ 64 <20000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <2000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 2 x8 */
+				opp-40000000-2 {
+					opp-hz = /bits/ 64 <40000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <4000000 1>;
+					opp-level = <2>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000-3 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000-3 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x4 */
+				opp-32000000-3 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 3 x8 */
+				opp-64000000-3 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <3>;
+				};
+
+				/* GEN 4 x1 */
+				opp-16000000-4 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x2 */
+				opp-32000000-4 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x4 */
+				opp-64000000-4 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 4 x8 */
+				opp-128000000-4 {
+					opp-hz = /bits/ 64 <128000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <15753000 1>;
+					opp-level = <4>;
+				};
+
+				/* GEN 5 x1 */
+				opp-32000000-5 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <3938000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x2 */
+				opp-64000000-5 {
+					opp-hz = /bits/ 64 <64000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <7876000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x4 */
+				opp-128000000-5 {
+					opp-hz = /bits/ 64 <128000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <15753000 1>;
+					opp-level = <5>;
+				};
+
+				/* GEN 5 x8 */
+				opp-256000000-5 {
+					opp-hz = /bits/ 64 <256000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <31506000 1>;
+					opp-level = <5>;
+				};
+			};
+
+			pcie3a_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				phys = <&pcie3_phy 0>;
+
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
