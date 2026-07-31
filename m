Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F718C54F54
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5p1e8V6eBLnQzL4JaRmz8J0p2Qiycj0QCjY0n7F6ePo=; b=HBURKMkjqSGNT3
	4kpjH63mWsN47ov2TOxIHhFSy7t/fFKpddTmYat3N+1G0YbYER7FEsoDC92vpXj4JGs103F+b3UFv
	RMa9KcMdSAFfZP6vO8RQD9Ve8xLfCNrV2wx76/YIh7SYwmfFx9g0bw1ED9/QhFtmzvU3J3XhJ/z4u
	mBhQLGrkSHcwEB/9rfWJ5bDrp9izX/ybGfK4y2p9CaUC48+Tep4V1x3qKHaKaoOVfBzNGf2t/WB03
	uHmUKtH/ZN9cb2hpPFK1cm1wveS8gvGZ6DPps4brl98cRFb1kt5OVYmf1FfyZoobj0pnbu3DtMbKL
	DIhogtzjzkkTJHzxo2yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZN-0000000Bmqd-15Qv;
	Fri, 31 Jul 2026 05:14:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZI-0000000Bmmt-0O6k
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:14:04 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66V5AG4b3509068
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wuVZHmfYv92aZUJ3qm7BsMpBhwigJN89pTIY/+akmmc=; b=AQpo6Q0zdB50h/Wa
	pcD7ok0Jt1wn1iz9MzbeHvNq8k6b/E2dEEXusGbJbheyXt2oLYG4mNI5UaxgO5uz
	7wo/vy/PPrpVPxii9PBV2IeP/5WX1Y+xL6m1sXObw6z/9gxHLnUqNoWH2nd/IzJd
	l0xfliMO9OOEmac9MhakusEQ/wagIrI6+XNFSc93/l+3moCPF6Ise8g0RAgbzoKW
	zGfm//3XES9xMYVz76Ri57pUoqBVvLfOEUxmcr7LW3FSusMJthZrDbpiioJflYe7
	/ef0TwgCpTfc996zKfwaUysqS7A9tbSNNg0hYjVOZw2imLwcGtbNTjSQGs5fgDtS
	STTMLg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4frnavr0bg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84e375d9736so968494b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 22:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785474839; x=1786079639; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wuVZHmfYv92aZUJ3qm7BsMpBhwigJN89pTIY/+akmmc=;
        b=hoJcFmkq5puc3jYTYwmykad68RGyfFNpaAw1ZX+SbY1NwHomb/tf1zVhCOpLiX4hjl
         F9umbsGex/41N93iqnMclfuNi1cUzfu7jsgNPYih2dwI2BYAcWPs9dJCxt9YLZO8boq2
         2CHGoT4CkxuIoQYd1DWUlsd+DhphgoJw6RXPfDQofgV7N4h0C84PkKlozDJD50JhxlnM
         RxCy7+T5H/5JBRC4f671eNrroLv4Ek4bR0cbvY0GM6mmRkWQhUdssiriMq2Zu4Zxu1ZP
         SMy16hFxvxHjmDZLFOn9fsQxCkA8Mz3LYkfIXsinhT4wBGR+UYemZqbrLzXV49qVy/op
         p1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785474839; x=1786079639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wuVZHmfYv92aZUJ3qm7BsMpBhwigJN89pTIY/+akmmc=;
        b=LayS0ZhZIpohbRMbeVgQsnjXM3LNqDRz6GQVas/SaK9iGgK9zydRAZ+nHj/Fk7DT3y
         0F6tsyioTrWokf/l/AwLNIi2clRHZkr7yg4P/aP6ZPpAUB2bgeDVRQay39xzCQK43APX
         lPdLdmHzES5KpBIZ5rnv3dxAWBzW2rCoI7uFwOhnVJJ+2j4t/a0iB/PqAzB0lrlCmHCH
         uQyvLlx+Pe3+jJfD6wz9sVa+TLxuxZgZ7Gnzt9wThaW4F9Fw+riceYzyLYfTXqOcnc3J
         3B5u1+mj/tD1DynQcFgFcGisuQndMO+0CtR58iVBEEoOKJWAxvexDr5BDyr5uTBIO1iT
         O3+w==
X-Forwarded-Encrypted: i=1; AHgh+Rqch5gXzRm0PZS90IX4htiE40TaYEpOrA/e+nNLK5SBUpxnZ9gD7HEQ78LWVLmUoeqBMf6eIsNao6g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmNcfUN79h2oNR+4ZsCaL3qSbRJG4n4is9ucRHz8WAAOsV1Jh9
	MeU8RsPFVfntBeURowt4EnIFUhWWiWi0W+yW8DonEpzSGfsGzQsiU2whHjqq4NhOxTqOYVnfzR8
	pb45hgI3MEVqxIzZxMatGTuF48Cr4Q3oEHhR/Z7yWeBnwkv1X3YVqXt39teYB+dMsZ3oy
X-Gm-Gg: AR+sD10MMFeBct91yhdN0eLfIhpmWFXrnbAJlrdpqijzjRHODNvxUa9I4Qglq78XpdN
	Vv0cgc4ySp/iNj3sX8vz1acdS5DrVlaXo5nmu4cfrK5nhc6pRGc1654/DAini5TbMp+40zFuagw
	6557IWSkFOXm+GRTZIWhBYxcXi1SXyU2q9pt/miRRTgvjoRBrb+Fwp4JGQAKR56rX6FSthcJglE
	ktX32/7d1y+mhmxwRvBPvpAQw+eCqMUWD09uZSo/sPR2MA7qLJ5yHywzj30neku9Q5vWzHG8/iq
	WHMAFCN+F0mBddpzLImXAmtSD4Kc8mpdnI5lae+a5XKstipnpKgO7v6C1J7MB1GS/7gU+1T6CL9
	+VB5sfP2zf0CcrNwZ/vZAQziMCyJ3lJb6yS42x6yX3QVyJCw=
X-Received: by 2002:a05:6a20:cf8f:b0:3c3:9dc1:f4f8 with SMTP id adf61e73a8af0-3c91b535c8cmr489209637.76.1785474838823;
        Thu, 30 Jul 2026 22:13:58 -0700 (PDT)
X-Received: by 2002:a05:6a20:cf8f:b0:3c3:9dc1:f4f8 with SMTP id adf61e73a8af0-3c91b535c8cmr489188637.76.1785474838325;
        Thu, 30 Jul 2026 22:13:58 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06f88fsm976435eec.20.2026.07.30.22.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 22:13:57 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 22:13:54 -0700
Subject: [PATCH v8 5/6] arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy
 with dedicated pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260730-glymur_linkmode_0731-v8-5-a455265ad8bf@oss.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
In-Reply-To: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785474832; l=4363;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=MsC3j2tem4FZcoQZTIFpAAXfCmNseQgByW8DJZvce2A=;
 b=elcQLXDJpx/4Wqz0EbGv19rOxwV4hvmNq+Damu84rmhbxoX4pKEItXjYgmJ27pBs3Quid1vdL
 PDpWy8oSrSMA5XJjRHEiX05arz5exA7cfQCut/Ol9KwrDe/PfQkntnn
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDAzMSBTYWx0ZWRfX+k5eYIiCk6ad
 efVMK60MI2wHDmV6+K1NteQd68fPsrcf5MR0fI9ov6CnB0cwVmsfTKJFggVb5/vvHopOkjH1IFf
 kTKGYO8mlYbPCD8u9UrNO64s+jOtAPqo3FCxsB1rpHw9XYQxDgOVFVjBQtkH4QcZsv+nuh/M9Rr
 L+gPgt8yxTs6M1LIG0TKzNKcddFhfq+wA1TXrW6u2Cc8YZFwscHOOoPZw83G1xBJh51ypNZ/TiE
 G7ZJmYlyaMtqyHunn/F8nx6YGR0tM2CFRN/1NfAKAsm4P7gk4LYqEdrOm0/bV1ROyJ9SSlPg6Na
 cBUj6k9XT2t3CHSTxkauTI9/SC/zTXSrzC8MO/Xu6aIzjoWue/BkyK0SwlSPUa1z7oIb4m76oUV
 TouV+MMiSkdGvN9a7BA5kfwGoodSXadLBEMKGh0yycJH3JDAmdyXqmSfzvVTLObdMtTaHewwmkq
 P2e0o0VpYk6Tp0ou/nA==
X-Proofpoint-ORIG-GUID: 4m2EqZRysSGyhU92IfRPkPTsT-tOz6bJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDAzMSBTYWx0ZWRfXzisTG8VtNNXT
 933ZMh1Ux1XwgVQytkUr79JhggNwOGR+I68nloKUPbljrBIyVNydqB7QccmkM9DH8VZwSsmy12z
 moumtc54pmyI5Y0pisGRFz1owewSAUc=
X-Authority-Analysis: v=2.4 cv=ZYMt8MVA c=1 sm=1 tr=0 ts=6a6c2f17 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=ZTTPuMnDdfme7OPWMlMA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 4m2EqZRysSGyhU92IfRPkPTsT-tOz6bJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_02,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607310031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_221400_182797_A33C581F 
X-CRM114-Status: GOOD (  12.17  )
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
