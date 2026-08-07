Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A5CC5AC9F
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mIYAZkGTNqo+xg9il3SaatefiWtGiDYdmj+mqT5P3E=; b=B22AoYI5WtDw9H
	MqlSjUuxMeJYlT9EK9VeKgKbnAUOU3DXjhxkwXkTF9IsRRQmUdN+4ND4hw80GiAtbSTlO9v3EDiio
	V+G8LPzKdy9JRFYYOtFvRU6Z3/bKeOyUEWWnoDRp/Lo9gjIoNjC4vf9FuAvLkB2SJDro170u4Bt7j
	PgFj7/Wovo/oN8ONFxhyWQ77sz0r/KLRdCKqFT+Z++/+EGIsYj5vnlDKhtTlbJPBsb889eATGWsE6
	/0dJJKsweSuNBVN39VzKcGVLeKWYP614/Ys2leYrtA0I8gR4+H6zI6qFg1HgT2Qtj16PuKQ0FrK8t
	gueYXCW58HzNffCtkqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEh-00000007YYb-0vTW;
	Fri, 07 Aug 2026 09:51:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEe-00000007YWb-3IlZ
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:51:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67780arR492882
	for <linux-phy@lists.infradead.org>; Fri, 7 Aug 2026 09:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mqeBRaoeTGsGRv0bW1Rp9Xiqb5WJK3oVB60OTitxaA8=; b=ArqqCiqbvPZbtCjB
	XHf5H71+GU5qzWUWbdRwzumjGX+9DcC/XLbVuz8yF3Z1LsZ7Gqvh+oaK+9b5yVvu
	9TGnzfO9EVjp0LfGebLrDWaPZFTsVcNS7ZP2IBVXdkGgMhLHnMsAyL5qhjOpztUi
	GXKWZerrkE3zI/dsogGaSmZbcsMtZ1KQr3XnODUjAdZe3esXR0Zs6tr4wgM6TeWR
	bK4TDHcE/gWqXKNiIJHA813+Dh5XoMAJubT17C8F2A8zALxCx04wd9pH81aY8hFz
	+DQ+IxGQl29Myb/2bRhYDlAHL2szCgOVwCrQBkJXjulBrwC043dOheZwHoaCfAem
	7ZInyg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fvy6rb8yp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 09:51:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8488ac68185so7849777b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786096288; x=1786701088; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mqeBRaoeTGsGRv0bW1Rp9Xiqb5WJK3oVB60OTitxaA8=;
        b=O0GWzdU1bNJDr/shCtAIWzBt7gmjlCAK8M/+Npob5XFcOyKan5AQZPco/19HiFS6Zc
         7Q69XJAzYqqkHY0jJdRMIgA6XwUC/6ZldI9Gvy8V0JvOENhQxSdNuqq4Fya9460w37CY
         SmOqQV5my6vOIxLwvxuIr35ku9TZZXVNB9TJLGKyi5+KSAwlNknsUhhkdkEskmo5ZbQw
         h0N73MI6Cg58cCcZLS9MM1LAlgAzLQP9JSewn7oewzcnfc1iFLXAUQqhHuOtXWNNInou
         QBcvkIpsg8SD1sn5FrVIafyLcrV6L4ZdY1+7hE31VFWLc6uqPegz1AzqBFFjsvybqffW
         JYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786096288; x=1786701088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mqeBRaoeTGsGRv0bW1Rp9Xiqb5WJK3oVB60OTitxaA8=;
        b=R/r9MPts6qyybRqCOSgAGl+aURI7Dq6jrkVc21tiolUaCaiuG63Bt/zACI406D6IkB
         Xk13ZPAah5HzzeT/MhQ1JhrdjU20y+E2O/nEtpFn63vltNSbwQl5+XAYTUmxS3iLxWX6
         d44A0PTM2mFUY62bmMfsrJMeW0d2Tak+uMKjkJDCfLUFRp7zJjxj0mWRir6elQhN3h+s
         wD0UH8Jq9exKKcUTPkyR1LEMuKe9kYgc08LhbfKi8IYSwt5+4bXwlxPDaYjltNxvo3qB
         8qr9udn2khCKznMKg7/TbmYVHBZCuWNFZ0mgWfn/IXt2VMn2u5psDTqO7QnU3vZjMgGc
         JwEg==
X-Forwarded-Encrypted: i=1; AHgh+RpdlfSXbHkENnoTLpooa5aAazUYFdYg2fqxcAre8UBt9pAea8D8ZY+WaH782H0ZinP49t10GIko2Ow=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyDlkEOJv72FArPcW6NTYkJJBRklrtVJ2rvL7B7Jfps/jTciHF
	l1yN3GCPNMBmbZ3I0AUMTXsnlAhftBRdQKaTiKN46b0kF8G3Gndjijb0InMg963HAwDW8OpyXxs
	OFxtDq9XNpmEs5K3EAoTihrlHQe5pjswg0IJBefLfoMzDRjsIcviB9v/MxB2vGkS+NuRF20V7tI
	eX
X-Gm-Gg: AR+sD11ewNR6SX6GLAuIDq0w3vZFlWwa/FqzCivHkiKRBCOzWmYdK3LM1nhfVKVUpo4
	g1Y42hHoFI/i9p2hiBP+wLnpMvM8A4Eg4GieJZp0QzAB9mnPn9Gp7npA3pOEt2uRip/kUB0schH
	2NkR/SA4WLERDyIyv4yEUZ2LA3MFdUM011Q4rVuXVT6BB02Aj3s0zhNorgDtGmRwJAZhJH+M9mk
	0sutxGLhYiozSvZsnUcFHyZBUzQhI/50aOaB+qkeqYho6qsrmjzARQLSgl3vrLJTB5AadXKTJYX
	UAI/FInJ++1JLjh9XF1MmFEsweer0nVRmFakjEg8C0wjdsZv3H95LKEzZpjpc0lILc69Z/d/ElI
	tW5SW/e5N8i3HdaRZNmn3zFaWFG36wKuq+xKL1dQ/XdydpvQ=
X-Received: by 2002:a05:6a00:4143:b0:84e:244a:98e8 with SMTP id d2e1a72fcca58-84f2e0645a2mr24443337b3a.30.1786096287565;
        Fri, 07 Aug 2026 02:51:27 -0700 (PDT)
X-Received: by 2002:a05:6a00:4143:b0:84e:244a:98e8 with SMTP id d2e1a72fcca58-84f2e0645a2mr24443281b3a.30.1786096287130;
        Fri, 07 Aug 2026 02:51:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm743785b3a.23.2026.08.07.02.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 02:51:26 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 07 Aug 2026 02:51:14 -0700
Subject: [PATCH v9 5/6] arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy
 with dedicated pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260807-glymur_linkmode_0807-v9-5-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786096278; l=4440;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=wFbQPVCKxbO74ZZ0CWng5BBrvITVjoU/F0l9ICpytXI=;
 b=kS6ENJ0SFHaxy/e85UgstujIskCGDkMNgHeG2hSfcxyj89IIHKQJO38At6yRoy5JUhcsuCi3N
 2yMx3LY74ggBavf2HuA0Kz8HKiacQFtFSmEa2uSLwwZZfgYfvdOEfGa
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX0Ig7VuB3+KQY
 o5stOuj8J/f7R1JWQnQDLXHrJRq7/2BLqBkgFxOrP2HowkokNftq8gqc/f96UUiT1AJXRwSkOG3
 d+LRcqFE2J2Ym7JDsljMeZMXfW61/Fpb4O4mPRnvgpvhThFiXqUjBi7EecFIoeNlSkJSAd4BUd8
 MqLTwVpUmCTfEqyWqBRpSi8PILX1iytHB7LtPdlyVhvYgdp4yvXyRBl6tzQjGki5R4E8iCD+dBh
 UsIrSWxGf0B5OUAUXMz7MieG4H8qHy0HqcYfHX5sAkELns17L/GfGzRXf6c61Eq8+T9XBs18wOx
 bKfkh5YWNzhx02xVNkTmSq/GRowvbH6hBNGJja0F6N8GKrTsDpGQj8nLJhT/hE41J4GyOnoAtz3
 kxxUysvfVqJzarvmEb6aQc/u2tpYGL8QWq8lknAoWQNgHlRGt4SiVUzfmp/c0kgF6J5sskrXPOB
 wG61bJxzSRLhMEUiV/A==
X-Authority-Analysis: v=2.4 cv=HPXz0Itv c=1 sm=1 tr=0 ts=6a75aaa0 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=ZTTPuMnDdfme7OPWMlMA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: CTGuF7yqexlHRzKvoPg9nsQztPLzRrl_
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX3xgH52WOTRye
 i3iNQ1YGUHAlkfivlZIfk1GMCYJmcbIE+e4OWCR3nT9wlHZQG7RKgMfFTe1akjHtwRix4+/79gh
 VaIppLoNsvE48Sx5zVh98p/IE7Gbf9M=
X-Proofpoint-GUID: CTGuF7yqexlHRzKvoPg9nsQztPLzRrl_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_01,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_025128_846354_ADD12BD8 
X-CRM114-Status: GOOD (  11.22  )
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

Unlike Glymur, Mahua only has PCIe3b wired up; there is no PCIe3a
controller and no shared Gen5x8 PHY block. Delete the inherited pcie3a
and pcie3_phy nodes, and add a dedicated pcie3b_phy using the existing
qcom,glymur-qmp-gen5x4-pcie-phy compatible.

Point pcie3b_port0's phys and the GCC pipe clock parent array at
&pcie3b_phy instead of the deleted &pcie3_phy.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua.dtsi | 89 +++++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua.dtsi b/arch/arm64/boot/dts/qcom/mahua.dtsi
index e6c059708912..a59c5ed7b48e 100644
--- a/arch/arm64/boot/dts/qcom/mahua.dtsi
+++ b/arch/arm64/boot/dts/qcom/mahua.dtsi
@@ -22,6 +22,8 @@
 /delete-node/ &cpu_pd16;
 /delete-node/ &cpu_pd17;
 /delete-node/ &cti_wpss;
+/delete-node/ &pcie3_phy;
+/delete-node/ &pcie3a;
 /delete-node/ &thermal_aoss_6;
 /delete-node/ &thermal_aoss_7;
 /delete-node/ &thermal_cpu_2_0_0;
@@ -79,6 +81,52 @@ &config_noc {
 	compatible = "qcom,mahua-cnoc-cfg";
 };
 
+&gcc {
+	clocks = <&rpmhcc RPMH_CXO_CLK>,	/* Board XO source */
+		 <&rpmhcc RPMH_CXO_CLK_A>,	/* Board XO_A source */
+		 <&sleep_clk>,			/* Sleep */
+		 <0>,				/* USB 0 Phy DP0 GMUX */
+		 <0>,				/* USB 0 Phy DP1 GMUX */
+		 <0>,				/* USB 0 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 0 Phy PIPEGMUX */
+		 <0>,				/* USB 0 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* USB 1 Phy DP0 GMUX 2 */
+		 <0>,				/* USB 1 Phy DP1 GMUX 2 */
+		 <0>,				/* USB 1 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 1 Phy PIPEGMUX */
+		 <0>,				/* USB 1 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* USB 2 Phy DP0 GMUX 2 */
+		 <0>,				/* USB 2 Phy DP1 GMUX 2 */
+		 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
+		 <0>,				/* USB 2 Phy PIPEGMUX */
+		 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
+		 <0>,				/* PCIe 3a pipe */
+		 <&pcie3b_phy>,			/* PCIe 3b pipe */
+		 <&pcie4_phy>,			/* PCIe 4 */
+		 <&pcie5_phy>,			/* PCIe 5 */
+		 <&pcie6_phy>,			/* PCIe 6 */
+		 <0>,				/* QUSB4 0 PHY RX 0 */
+		 <0>,				/* QUSB4 0 PHY RX 1 */
+		 <0>,				/* QUSB4 1 PHY RX 0 */
+		 <0>,				/* QUSB4 1 PHY RX 1 */
+		 <0>,				/* QUSB4 2 PHY RX 0 */
+		 <0>,				/* QUSB4 2 PHY RX 1 */
+		 <0>,				/* UFS PHY RX Symbol 0 */
+		 <0>,				/* UFS PHY RX Symbol 1 */
+		 <0>,				/* UFS PHY TX Symbol 0 */
+		 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+		 <&usb_mp_qmpphy0>,		/* USB3 UNI PHY pipe 0 */
+		 <&usb_mp_qmpphy1>,		/* USB3 UNI PHY pipe 1 */
+		 <0>,				/* USB4 PHY 0 pcie pipe */
+		 <0>,				/* USB4 PHY 0 Max pipe */
+		 <0>,				/* USB4 PHY 1 pcie pipe */
+		 <0>,				/* USB4 PHY 1 Max pipe */
+		 <0>,				/* USB4 PHY 2 pcie */
+		 <0>;				/* USB4 PHY 2 Max */
+};
+
 &hsc_noc {
 	compatible = "qcom,mahua-hscnoc";
 };
@@ -115,6 +163,10 @@ &oobm_ss_noc {
 	compatible = "qcom,mahua-oobm-ss-noc", "qcom,glymur-oobm-ss-noc";
 };
 
+&pcie3b_port0 {
+	phys = <&pcie3b_phy>;
+};
+
 &pcie5_phy {
 	clocks = <&gcc GCC_PCIE_PHY_5_AUX_CLK>,
 		 <&gcc GCC_PCIE_5_CFG_AHB_CLK>,
@@ -143,6 +195,43 @@ &pcie_west_slv_noc {
 	compatible = "qcom,mahua-pcie-west-slv-noc";
 };
 
+&soc {
+	pcie3b_phy: phy@1b90000 {
+		compatible = "qcom,glymur-qmp-gen5x4-pcie-phy";
+		reg = <0x0 0x01b90000 0x0 0x10000>;
+
+		clocks = <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
+			 <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
+			 <&tcsr TCSR_PCIE_3_CLKREF_EN>,
+			 <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
+			 <&gcc GCC_PCIE_3B_PIPE_CLK>,
+			 <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
+		clock-names = "aux",
+			      "cfg_ahb",
+			      "ref",
+			      "rchng",
+			      "pipe",
+			      "pipediv2";
+
+		resets = <&gcc GCC_PCIE_3B_PHY_BCR>,
+			 <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
+		reset-names = "phy",
+			      "phy_nocsr";
+
+		assigned-clocks = <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
+		assigned-clock-rates = <100000000>;
+
+		power-domains = <&gcc GCC_PCIE_3B_PHY_GDSC>;
+
+		#clock-cells = <0>;
+		clock-output-names = "pcie3b_pipe_clk";
+
+		#phy-cells = <0>;
+
+		status = "disabled";
+	};
+};
+
 &system_noc {
 	compatible = "qcom,mahua-system-noc", "qcom,glymur-system-noc";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
