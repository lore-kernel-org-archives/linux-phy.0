Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C223606A898
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0LdqjOFC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ab1zKmP4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cQn36MJl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uC31AFI2EbD1dFmO+x1kPPXORXvHj3g0o+cLOiaFY0U=; b=0LdqjOFCzBkDzpQYZmqWYhAymy
	wqX25u8BiTxo2zJ7HH0REvBOv18fQ3cw2hd5IIwrajNDoeiS7H1ZOlBwQ0AOQsYRY99GIdn8QrPEg
	x0hy8fPMbnprX+vWW/x0YqCatLKMUHb2GFyyQjdL9tLBzji8QLOczQPGkDum7Pd2RIFFapUT8UNvq
	6LaOUWsI40uCZuZGlr2jlg2bpvnD1otN8xO30/mdnEWjpbwfjrf8RdMoUNkVj9NBES3PGX6trRCOx
	BpzlBcb44X/wxOQiO51Uvkv8YwctSZopeThP3zf+gVnXvell9U54sWX6+xJVy+tzTeOge4D+QCFlU
	3ycEcOfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzn-0000000Fu4u-1IZh;
	Sat, 14 Nov 2026 11:32:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzk-0000000Fu4U-17IP
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wNO0174079
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	118YqHxqalP1oetwP84XJoymItJMTpWRhhQtEiH2cXo=; b=ab1zKmP4omtiG02x
	g7EDxAl5IaJTrngYAsiEMFZuPcgnFNJiygZ9XWBMBc/L1fDP0M/TEZ36mpozkJzB
	dc42aJsOx6fMq4viW1J4tguzGQI8f1QXnVHfdR6a0sHH6IYHd+uSAKi6qEnV/9Ay
	JOuBCiSM0WoY7UAygQchJCntKCnQp7CHyXbmdJoL73SLB4tEljlV2Ov98oFdnVYw
	Kqg1LJqY1qX02gz1Im9gp2HaeWOH148ZiQ2eh6z91djX4rWNEd0EOYc2IjXQs9Hu
	HCTmAXff6JEBZ/7er0fHOhvavVg+JS/1FGOi+IygsSZry6E4i1zZveWQIACvFOHR
	LtJbNg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmagknc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5364605e74bso8150271cf.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655950; x=1795260750; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=118YqHxqalP1oetwP84XJoymItJMTpWRhhQtEiH2cXo=;
        b=cQn36MJlxrrUlNyxjTGAXXp/4ATlZF/gopZWOwTda93XtCEc4udX3nYcX2krjUVo6d
         ilh5ZRUvyWxEa56vgjR+9+nmTZn7JZxeVnbl/ln53vRSv9KccXSEsUpyXyPtetUnptkd
         51tf05W+n5E14omwTRLh/78MU0OrHXglNeN/vxRBiiCteIi7yqjwA9z2sy3ZxW4NCMEY
         Q6DsqwyMlXgTYdlrx9gaqJbr2LjMavasYkM66QXHAWuQCPTTaAWbSPZT2e/BkIyWOMAa
         WxhL+vqmYccBTlZNseVMcDkbOWIck5iFgmkujBDtaBPXV7CG0l0/fbn1enSsc+gTYkEf
         VARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655950; x=1795260750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=118YqHxqalP1oetwP84XJoymItJMTpWRhhQtEiH2cXo=;
        b=dCu+VoekqV7pE61OvXgYpB/1b8i9C+EeWmsXUUrFKBukpRyT+9TIhwN/VToId3gt93
         rj76zTqGcwpv1t37SP9dD3zm5zTdSOQsr3ZO3iaISkE6h8KHGE/x253FKaLlwVA+Stcc
         5yQ6WMFc6bt4eD0x/sLIjSy7MgypehFz0L5vk7VPFx3J9ZqwiqCZT45vKDHY/L3A+q2S
         wcrR0HqAQb2GbWKTpjTPZQmNCBjINciVnlI9BDx23BwRhYU7kPKhAQ8R4GT7wALwiP0B
         HgEEMwzQcNY9QcWjSb8pGKnNxSTY5CAzYbwtZfNJ2c/aHkQfS4MYAKuKW2dpdgleOucw
         mGOg==
X-Gm-Message-State: APuU4Z9uATTAO1M9kjG0SrlM7wuPNjv84QIC/MXc4gJJPB8DLFJPr1aS
	xsf1jLFPaFqewUHpMqRz+ucBpYVtYz30cUmcJTN8YEoG/DLDSl2J8X8eskkCPhDxuGqDn11kgKH
	3rN9g51w7z5SzqCzBvmA3Z9Dsy93oOfOTsnjuEXS10IQYrqkAhs7efaSXzAlBhY4Npk06
X-Gm-Gg: AYBFou1BHi8BqK6zJLoUdu4Hl9TtWGM1MsOqOZG8nhdvGw/yjfm5sRqAxDSyQVSPDo3
	A3kDtqjA9uMc1E++I+a621kMIxb376uybm/K0lClxZAcqkAA91f0srXUAp2um/GVibqkgGpzRHM
	n8sWdIwUur63G+3nj9zWHP7F272hzXJg0kojIX8CWkNqCeZZRAUESMZO/tLb/SIJ32ZQPgc0gM8
	hLIM+W4S8y2JgO24nsxILtC1GGxi/X2AR50meuhiIj6IXjNBQxeGEaPWrUJ2IssoTn9HpFW+X+N
	wI1FPMUlFvbAeK4x5vd+f3A0dWbwvBV8eMeTXSDGFW6Q1klpzPTtsNyLu94fLcaVtZx4h6DBKCZ
	UZkp2TbVPYm6U9QOx78hzQGyQ1lK0XD7KLr5tzKA9ncZIpT8cqKl0JKmvoTKiHSSoemAOit+3j0
	qmUIP2upUs8YXorahTLutk+mGTgF+FtFSYHp5H2jbd
X-Received: by 2002:a05:622a:98f:b0:536:747c:3e9e with SMTP id d75a77b69052e-55ac9590719mr84028091cf.69.1794655950244;
        Sat, 14 Nov 2026 03:32:30 -0800 (PST)
X-Received: by 2002:a05:622a:98f:b0:536:747c:3e9e with SMTP id d75a77b69052e-55ac9590719mr84027781cf.69.1794655949790;
        Sat, 14 Nov 2026 03:32:29 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:29 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:35 +0800
Subject: [PATCH v7 18/23] arm64: dts: qcom: eliza: Add CAMSS and CSIPHY
 block definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-18-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=8695;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=TmMgKTV4jJLsSJWSFMXQqriEhUZv+b0B4NJkgEpBHxQ=;
 b=fwXjYlmcyadax8j/OrB86LTPRxlqMi8Y29ksz77SBndDlUxI3Y/yGNzLjMxmfF8SvWQUEQw43
 KbZMU2tp7S5BWPQkc0UHIr0DSYZlQN4kCzVycyyJWoPeFUMsl517iug
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: REopQpqhQFBhHbxP-xvvGw3qGWocJ4Tk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX2We77Q7bFlzk
 VyV+jIwiXQODRXTpNRQ+/IFjBUs7DAHmo03dGIW10c834J2nLKpNpM8kre1dfNcZppKAyy3mLih
 FK787Ep9QvxVik8jeFLRBNte6H74GsKSfYTBlT41BgV1UMyKjKej3+/BXAfk6l7HI/mDwRN+//y
 JRYTZP5W+NWTV9EP8ncFjgRLzsywu/Frl6TvK5K0iPJGKzMKWONARfb4OuHiHxQnPaiUHylmwUQ
 Up69lWy5FnyjJ/8EXVokUYUVaVsQxvsj8EYwF2+t1IsAel0Xnci1C39b5FuudiLEi3SUNWYBGN1
 1rWbEkqAolggpyviSVqvkgonMdc6CswISDFssgXuurMR1fsUPKydM5wruoVWZt6ABmgvy9JPq1D
 Z3Lm4C5cgOKhzR+T4NCnYYrcxwwfonJwlCKoScxLl9jLX86fdttcaG0P/zKxiG1jAhavylxxe0L
 fhD5hnI7j1p1Qqjpwnw==
X-Authority-Analysis: v=2.4 cv=NdhzRGD4 c=1 sm=1 tr=0 ts=6af846ce cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=NQs1xKGztgJ0lSJ6CcUA:9 a=zK-6VH79qFPhLVUz:21
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: REopQpqhQFBhHbxP-xvvGw3qGWocJ4Tk
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX5RRPZnOvsXgT
 G5Snj+d2MajEsn6sNb3xo3XVsvDzGcc30sJLeVbEfmXq6PIXAk4fuq66RqdPU8T21cdnFit3WVM
 UwHXpg6hpvrL/ZMjBVRFK/R98ysFbLE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033232_534164_C54C935B 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Describe the CAMSS and CSIPHY blocks on Eliza so that camera pipelines
can be enabled by board device trees.

The camera subsystem contains:
- 4 x CSIPHY (CSI Physical Layer)
- 2 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 1 x CSID Lite
- 3 x VFE (Video Front End), 4 RDI per VFE
- 1 x VFE Lite, 4 RDI per VFE Lite

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza.dtsi | 296 ++++++++++++++++++++++++++++++++++++
 1 file changed, 296 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qcom/eliza.dtsi
index 4a125ef386c025fe6ecdbf4d17a785d1532ba09e..dd21cc4d267787db3d8741f8a8970629bd20d0c4 100644
--- a/arch/arm64/boot/dts/qcom/eliza.dtsi
+++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
@@ -357,6 +357,22 @@ memory@a0000000 {
 		reg = <0x0 0xa0000000 0x0 0x0>;
 	};
 
+	csiphy_opp_table: opp-table-csiphy {
+		compatible = "operating-points-v2";
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+		};
+
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			required-opps = <&rpmhpd_opp_svs>,
+					<&rpmhpd_opp_svs>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
@@ -3448,6 +3464,286 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		camss: isp@ac04000 {
+			compatible = "qcom,eliza-camss";
+
+			reg = <0x0 0x0ac04000 0x0 0x1000>,
+			      <0x0 0x0ad27000 0x0 0x2b00>,
+			      <0x0 0x0ad2a000 0x0 0x2b00>,
+			      <0x0 0x0ad2d000 0x0 0x2b00>,
+			      <0x0 0x0ad6d000 0x0 0xa00>,
+			      <0x0 0x0ad8b000 0x0 0x400>,
+			      <0x0 0x0ad8c000 0x0 0x400>,
+			      <0x0 0x0ac86000 0x0 0x10000>,
+			      <0x0 0x0ac96000 0x0 0x10000>,
+			      <0x0 0x0aca6000 0x0 0x10000>,
+			      <0x0 0x0ad6e000 0x0 0x3000>;
+			reg-names = "top",
+				    "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "tpg0",
+				    "tpg1",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite0";
+
+			clocks = <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_CLK>,
+				 <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
+			clock-names = "camnoc_rt_axi",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe2",
+				      "cpas_vfe_lite",
+				      "csid",
+				      "csiphy_rx",
+				      "gcc_axi_hf",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe2",
+				      "vfe2_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "qdss_debug_xo";
+
+			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite0";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_mnoc";
+
+			iommus = <&apps_smmu 0x1c00 0x00>;
+
+			power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
+					<&camcc CAM_CC_TFE_1_GDSC>,
+					<&camcc CAM_CC_TFE_2_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "ife2",
+					     "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				camss_csiphy0_in_port: port@0 {
+					reg = <0>;
+				};
+
+				camss_csiphy1_in_port: port@1 {
+					reg = <1>;
+				};
+
+				camss_csiphy2_in_port: port@2 {
+					reg = <2>;
+				};
+
+				camss_csiphy3_in_port: port@3 {
+					reg = <3>;
+				};
+			};
+		};
+
+		csiphy0: phy@ada9000 {
+			compatible = "qcom,eliza-csi2-phy", "qcom,x1e80100-csi2-phy";
+			reg = <0x0 0x0ada9000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 568 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy0_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy0_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy1: phy@adab000 {
+			compatible = "qcom,eliza-csi2-phy", "qcom,x1e80100-csi2-phy";
+			reg = <0x0 0x0adab000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 569 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy1_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy1_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy2: phy@adad000 {
+			compatible = "qcom,eliza-csi2-phy", "qcom,x1e80100-csi2-phy";
+			reg = <0x0 0x0adad000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 570 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy2_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy2_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy3: phy@adaf000 {
+			compatible = "qcom,eliza-csi2-phy", "qcom,x1e80100-csi2-phy";
+			reg = <0x0 0x0adaf000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "ahb";
+
+			interrupts = <GIC_SPI 571 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+					<&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "top",
+					     "mmcx",
+					     "mx";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csiphy3_in_port: port@0 {
+					reg = <0>;
+				};
+
+				csiphy3_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,eliza-camcc";
 			reg = <0x0 0x0ade0000 0x0 0x20000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
