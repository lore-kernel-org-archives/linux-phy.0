Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06D606A881
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PbXbtUM1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GfDF4bRn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hl/0u3Xd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SJBRDrO6qcpBHtv/hEzLg8/v//94MMG1lRu55qD1DxY=; b=PbXbtUM1brxV9tXbNRoJNgi0gG
	0SpIby2om1QdOi4hNUZmo1f56bbhUzE1AgdLswopHRlGkDcRoAuxe/h23/iGkOlHqrQYvSFhXIfqm
	+L/yYVKdcsZ952msUGZjQ6TkZIglg5xgBseNF7PEYyy+uZiHkM9rh1U6pKmjk+POcuvIsF10k+Qkx
	/modHPZ+KQ3LftOfLtlenP6ylm5XmHPhcxbN153vKOapPImATyGaXXa8DvuOSMxbbjPqIBYKtxooz
	/j7lccMmVWTdzGTCFvYRXwkKkyHqLSYIXtxRyK5MZKFqhtrQTqZnxea7nq2p1BknzH3wwBmhcREbx
	b0tMEJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzM-0000000Fu1H-45DP;
	Sat, 14 Nov 2026 11:32:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzK-0000000Fu0v-1pEW
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wTZs3650229
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zQQmVhv+kzuoV/3wI6+2SQdGx9hm3pY3alCduLOYJsw=; b=GfDF4bRniBmoJGta
	ZvOSUYf2qdPZ/aVWKN7CyLz93HCP8yROKLbKur4uf8O1GBECQxDBJ7AGoFSAEPRh
	qibeL9PGZVtzLkLM8RgIOIFDVar+viOd5ROJWOjlSSdIudeBHoqvc76KN8GAfZwo
	PgUXLgsaozH29zLxyPLWZUiqq1OPR1dgot1udMQXA3uu/RmjdQ0N23OtWqvxJRZM
	/YIdVC7DnL5R/s1Bo8UPtLLnDRJzZSwSZzg1NYVlmJU26ZcUsLNEBuK98sTtw2b7
	0XNhP2QvG6UGYoLjcykYppXJxHewbtMl+7Kr8OQWh63QBmHyaH/N2cgK8nodcbG+
	cgHpRA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhjrns8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-53661e036a2so37978101cf.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655925; x=1795260725; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zQQmVhv+kzuoV/3wI6+2SQdGx9hm3pY3alCduLOYJsw=;
        b=hl/0u3Xdp39o0z/iP5d7RwZknOuEgCQNyBtaMPuAuDNHhqcoxswRtYNiyxx7kFfxKj
         CaeMkwccozlG4KMmNK5GpZgBkYpF5eBehOlB4Tr279MIYN3y61YUX+QYM4uk59poBz8v
         XNZg+wssB5VvLBC/XMxBBCWDCvGpu8H6WOUCV0j9DEqZcrCwAPVX6xqyzj9p5SNIgKAA
         4NGy6wRQuY5CP/5IVgrI5YygjD1EY0jAPxi1KIXUx7/98D8lzoFNdKqsNhGEzvQgHicZ
         Rziyh/HJnWctvd+B3le3jNX/Q4ADCAriQHjpbm7MvGYP4J15wa4pRxSNcHyhh9YcTBsu
         3HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655925; x=1795260725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zQQmVhv+kzuoV/3wI6+2SQdGx9hm3pY3alCduLOYJsw=;
        b=z4jueU5b1AcWmi53VyezjFTnGGNdou09/vbudfFVXf3U/7nY05vRgPlhHvRT9c4RrL
         UMG848yHfAU1tT1RFyNGRlU6wsUneCwrEkqUdJyfQUixVvA2iUF6IpOE1wbPr6w+Bhcv
         UYsxkMbvlOYEvq5eLKY6jeeCiQOtJrQ4oklvVrpk8xOhq4ggNz5VaOUI9Yj4oAFobVvR
         I5/ERxvze155gWg1RO0pAzdjNou69aeZ6B5iqK8lAXh6dfqj+AOSRmnEzh5yCDwOshQy
         dtIYY152+iiysmudESyoJOzC8fFZO7ErV+CnEcz3fEt5Yd8QsAAbuhsleTt5/SAxrOG1
         uAHA==
X-Gm-Message-State: APuU4Z/vTvct6lQwU3ikRpc5yQLdzyEQTtXYJAJ2tz3Hm24962+5GvPx
	SDAhNKANNvcWTQTrh5ctNjN4a2p13IMbEqKHeOQxtzUmOkJO6p2oSMmxpOlx/+kWx5AM+8XxNnb
	k3p0JW3eQdDOaRV3ENbvWkXyV5Wuv4/sD/ROCTiOf2Aa/oF/ao6zSF8kT9gjaKCoQaqZ8
X-Gm-Gg: AYBFou3BCnITzs4XarZsumLmPHSMVj3JNsUpyI2aH2j3MWjgyDMbKK0hSwn2C/ivLjU
	h7PsISvtrkjqqYEdB5jjRr+EY1sEAM2hcfr4+mnctyf67r+e46z/PNanIjqjjlOtF2rdj17u6Li
	CUGUfrsmbwRvl3/75n/b9GDXDgBwOzEsqdIvfNp/Tia0FHLIJnFDquFKniz1ViXp4kBz/fxWsmL
	r+UwGLRMx5bZBsOSof+QhYCONppNWLX/ucEsqXg0O2HItyhRuOVjmEbNcrRVX7UotfqGyVm41rt
	f6gjgg9EnK2daQaRWG1Qb9fY7nbkPkHkzN8CEX+wrVbclH2m7xPxqPOlt7GVycNQamRtssDMAZm
	GQct+nC3VmfO8AVtkI5w5Xmrvl+4+oNF3gEjr2ngbz22nJowbgWys9HHPr/5Z3L5SmmaE2DciZ8
	Om3O4mEx4b3K3dVhaZUnXb1dFJeNTWeJ4B7vO7otfd
X-Received: by 2002:a05:622a:4185:b0:55c:66f0:5bfe with SMTP id d75a77b69052e-55c66f05fefmr24047921cf.22.1794655924718;
        Sat, 14 Nov 2026 03:32:04 -0800 (PST)
X-Received: by 2002:a05:622a:4185:b0:55c:66f0:5bfe with SMTP id d75a77b69052e-55c66f05fefmr24047421cf.22.1794655924162;
        Sat, 14 Nov 2026 03:32:04 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:03 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:32 +0800
Subject: [PATCH v7 15/23] arm64: dts: qcom: sm8750: Add CCI definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-15-8ff2a11835f6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=7530;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=naOrccvepD7GWw2rHiX1+vICpFHGnqZKYg6wsoLbfpg=;
 b=rXus8NvuZiTv/m5iks9SVfNKqwxXWGTqCo8s/sNCrjTKECXaflXLXf5c4cKCWeTQhA/Jd7UxJ
 CnuPhqrnsXmBqS40XEdEZlsEkrmptIZi9+e6ItjuPFVuQw9K61PU2rR
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX/xOqXXoAna97
 Py7WU5qHsP4CXaPqMgn/y9i3cGOvt0LrVwM18IBR/bn0NWeAUulrMHRAX8nwYGcBnEpUbBUfm14
 UwK39qtDQzCAa4+g938CJ3qJUXd6OWgTGHwkEAW85+tvSrEAU/GwNS1+Xm34uLcII1JACFOXp1o
 bpQ8CSE5Sk1ba4W0Cstj9/vOYaYHMFwiOhuGqx0uMl9sGnbTPMqGLmymun7VpdbYmvbrR62EwtI
 NIvw512zzpG0LhcHWYXFSDAmDWxPS/IaZQnO1uyMZmBI/QCvrYnDgmEPS9Rku8eUZXN4fqIZU6f
 YYroB4guTLRQWG029cAgVxJyKTnX1lQtetJax6VAMnJ1RE8M5hWGBz/92i273LVGX+HK50GBqW1
 Q65RBd6+aszYIIA8at0dMBWtcH+rfBqyARrBRumE4wTMiMzqKzi4Na9qsAHhR8kzg2iJW0idA5B
 pLxjnyBZbTYzN9MbsCQ==
X-Proofpoint-ORIG-GUID: rOfsZ510h7PSIEKGyOGXizpc49Zen4sS
X-Proofpoint-GUID: rOfsZ510h7PSIEKGyOGXizpc49Zen4sS
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX7qzZGQWlfRH3
 Afo1je9R1dMJqYqpHX+nUFrm4YJ7YZk0K0jnpevqj/g3UP48jrgspO1MCumPrjVTO7Ibu8rKB+0
 gg2nn5EM1ZOmjvgxraLkGbhXICHZGHs=
X-Authority-Analysis: v=2.4 cv=X9rHu2Te c=1 sm=1 tr=0 ts=6af846b5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=qxfSyLteW3qA2b6KDJoA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033206_492211_67245792 
X-CRM114-Status: GOOD (  10.71  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Qualcomm SM8750 SoC has three Camera Control Interface (CCI). Each
controller contains two I2C hosts.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 282 +++++++++++++++++++++++++++++++++++
 1 file changed, 282 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index e91f7f8377c0c37cd54e5e91585ef58a4f8a65a0..b1fe1c2f5ae9c5b6107729fbdf31c2577ee3ebd3 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3496,6 +3496,96 @@ camss_csiphy5_in_port: port@5 {
 			};
 		};
 
+		cci0: cci@ac7b000 {
+			compatible = "qcom,sm8750-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0ac7b000 0x0 0x1000>;
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "ahb", "cci";
+			pinctrl-0 = <&cci0_0_default &cci0_1_default>;
+			pinctrl-1 = <&cci0_0_sleep &cci0_1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@ac7c000 {
+			compatible = "qcom,sm8750-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0ac7c000 0x0 0x1000>;
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "ahb", "cci";
+			pinctrl-0 = <&cci1_0_default &cci1_1_default>;
+			pinctrl-1 = <&cci1_0_sleep &cci1_1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci1_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci1_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci2: cci@ac7d000 {
+			compatible = "qcom,sm8750-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0ac7d000 0x0 0x1000>;
+			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_2_CLK>;
+			clock-names = "ahb", "cci";
+			pinctrl-0 = <&cci2_0_default &cci2_1_default>;
+			pinctrl-1 = <&cci2_0_sleep &cci2_1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci2_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci2_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		csiphy0: phy@ada9000 {
 			compatible = "qcom,sm8750-csi2-phy";
 			reg = <0x0 0x0ada9000 0x0 0x2000>;
@@ -4296,6 +4386,198 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 216>;
 			wakeup-parent = <&pdc>;
 
+			cci0_0_default: cci0-0-default-state {
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_0_sleep: cci0-0-sleep-state {
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci0_1_default: cci0-1-default-state {
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_1_sleep: cci0-1-sleep-state {
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_0_default: cci1-0-default-state {
+				sda-pins {
+					pins = "gpio117";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio118";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_0_sleep: cci1-0-sleep-state {
+				sda-pins {
+					pins = "gpio117";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio118";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_1_default: cci1-1-default-state {
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio164";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_1_sleep: cci1-1-sleep-state {
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio164";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci2_0_default: cci2-0-default-state {
+				sda-pins {
+					pins = "gpio112";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio153";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci2_0_sleep: cci2-0-sleep-state {
+				sda-pins {
+					pins = "gpio112";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio153";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci2_1_default: cci2-1-default-state {
+				sda-pins {
+					pins = "gpio119";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				scl-pins {
+					pins = "gpio120";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci2_1_sleep: cci2-1-sleep-state {
+				sda-pins {
+					pins = "gpio119";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio120";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			hub_i2c0_data_clk: hub-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio64", "gpio65";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
