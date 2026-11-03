Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A58606D839
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 22:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bN5g6eM8;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cS1Avnsl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ONkseAFc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j+J9r2QOPZSjXWMnFRfDEZDhVa/pwOUy8waA//1WFBI=; b=bN5g6eM8JJtGbL1g5STpOPbBC6
	HuxEOG2JwOnJRCI3CGAB4Nloe/was2MXOdkXX2HvjVKt0aK8OECJjwlpis/WV28LC+2bGOORueArI
	BoMcvGQLhS1QLJrW/n2SHkBgXmv2pgwwGVCSmWvEf48iNK+IyTNZczrYgx5yYykRCw+EutrPlze/+
	OdE+c+zaZGbOQ1b1kgcpQBmybhYTsX8D5iWjBQfem0V1MWYecfcomk7uh8R2vlRCvCWZIvi+QcBl+
	uh30Y9hGLQssjEBMwigZ4ScD7zcTGwOSGuztlcXyC5rGZM2//YKEBP6NElfUpJ0FqfJaorEKFD3Qq
	c7B219aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMiB-00000003npn-1Ulc;
	Tue, 03 Nov 2026 22:10:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMi9-00000003noV-32Fk
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 22:10:34 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LL0RA445706
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 22:10:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+9tAxkmKybA
	LjlGE9yfaUABOJm4ISE4wUDWniSYnmUA=; b=cS1Avnsla3yN3HhkWdS+CODOWbk
	IlQu0eRx+V4fe0l1AgiHbbqSQ/xxilssFMxGWnWgL2A23yWGteylTPmtDfH5cyhT
	FCQZcW1q0mYODPOjzIjH0HH4Wq65DJQRMMhX37qTH67ifReNzD7eD/8m641H4iNq
	GAhrV/FqvBYU5lDk1nPJxZ/cu6gOP6hA+ry5Dv4JOvpvXlfPz+llX/OWfcW4ILO4
	tP33WdWfIjNLSy6Z/HUmQch+unSjJkidySq6y7+rGQyYz1t7NXAZ6m2m4d3FYNWZ
	nbwCdhmUJCARtxFQLPHOP/HosCmklBB8YlGskG3CzzubmjNHaz8l4z2NXiw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqn8mrnwe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 22:10:32 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-147be78cd56so381644c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 14:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793743832; x=1794348632; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+9tAxkmKybALjlGE9yfaUABOJm4ISE4wUDWniSYnmUA=;
        b=ONkseAFc8cR3tBYGSrgnKwdxD8ca3DCvaidHLSHx3PIrugiTkIaYp297dhLZf/cg0+
         M/Eyxd1f6zsq63jrWssCbKY74qeSRPdD2lLvCbXZx+mb/DwY5B+fmnPaqlsOoCJqgNUg
         u+1ClXQFWhcJCIi02/DpQpjkhe1OsbFWKEy/2/QnxYFhSdcmSCfrx6XQ6yX7KR94lUwY
         iiALTDG0fLSBVH8BKEGNKbmWGXi+8JsP/z3wKsX6zuG3ojyqwULVyodUOg0NkFR/KQNI
         rJfsf7dO/GyaKqfkBYeeg+biqHsbiMiGwoyKGK2p5vwyom7WFoH5pvDwsw42LQm7st45
         48PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793743832; x=1794348632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+9tAxkmKybALjlGE9yfaUABOJm4ISE4wUDWniSYnmUA=;
        b=p6OGtuRyhEQqwUYHg2vVQsMBayF34eZSck00skeKrYZ3H2F/j9B2x6m6ZLQaPzKDgZ
         YVFfE8teMIyv483myvFNsVBWQA6nFyle6YGu7TrI7Y+ZSXH0FQAczmZeBOPAFWuszFqW
         JUglzHL+JsoAKJEgeM9Qzd6Iwk3xr6rc9IEBasz3sBtBcv9pTXTyTCDq9AjKWHP4rZY1
         Q9a2UoXkemM5r3objSAxRvm2MJTJjMY7XBjlZlCiXOw017G6eo3+eoPwQkExfZIk2/fy
         2IVhTrMb5UjYv69010KIDUpet7taT8+5Z2VJKyxNTlmfDWiYr8NejofWcTYtNqri2XgG
         ZJ0A==
X-Forwarded-Encrypted: i=1; AKwUvBxJgChF6apQqbwgGORGpQ9f3OvItyCljZQ0zSUKVUzPo8/t3zi2UrmqBhHzwHl0/CYPb3B34dseF3I=@lists.infradead.org
X-Gm-Message-State: APuU4Z8wVycRdGVB1PZHNzQm2kNz4F720y62D03zn2OELlwIXijGSkAy
	pdKgbiaTjAFe+nckrIVRZkB/Tv0qTXPp0vnqGww8P4MB3tw1HAqQusFi/9UHx2G6p4ccMJGidgg
	aANm9gETx33b0YSPgFD2yGpvReh5vaTYLVrXBgh3gPLSyJkHevIwMoM44QZ6HEb7vR2h5
X-Gm-Gg: AYBFou1Y2C6kMkdW++r+H6sYQTdwizkMdcUcXtFQgQAb5TsHQKI0ebKH1DISxNe/bTi
	0SQ+mvu1p7yALaQibkjRaWL0ZCkWhxlUNbZMQS5sQK7K0wljeiBko89s7d1fVOMl4gyNgXM3Ixf
	H7sBz/C1BwD1eK62KcNzaJbwr4lvYZ/5jSU6Ch0tOCfO+lJJdFBWDbtOJx38ZtxEces6dI5lhDW
	GYgI3pwneraLB+i8tlRBTvG8vIBR6USka4uEmBa/bNZeBcD63VlL+yZ4n+Z21ZSFiA+Y3gHztwr
	plJMd4OmZAahnfdwiyVt2EJ6UGQ7OyWPWdYVVa79/8R9QNmClEUyg8aHHYVhja94GvOzi23qIkw
	iPbre1C7EWpDxvmJLRShDkAAd3SQAQHJp1SkV7JkFbTdYCNVc/JgtXHZ9FtC177410hQpBiD/hf
	yP7D4/eKOuBEIZdiOw9Hm5ZANDumF8
X-Received: by 2002:a05:7022:2522:b0:1a9:c9fe:12c7 with SMTP id a92af1059eb24-1ac5bbb4b85mr28440951c88.9.1793743831603;
        Tue, 03 Nov 2026 14:10:31 -0800 (PST)
X-Received: by 2002:a05:7022:2522:b0:1a9:c9fe:12c7 with SMTP id a92af1059eb24-1ac5bbb4b85mr28440910c88.9.1793743831041;
        Tue, 03 Nov 2026 14:10:31 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c4706bsm2137312c88.15.2026.11.03.14.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:10:30 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: qcom: monaco: add CSI2 PHY common-phy providers
Date: Tue,  3 Nov 2026 14:10:25 -0800
Message-Id: <20261103221026.3662383-3-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
References: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: HDnxXmd4EfJDcgG6Mev_qLJw-ozkBj2A
X-Proofpoint-ORIG-GUID: HDnxXmd4EfJDcgG6Mev_qLJw-ozkBj2A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX62iZUBv2xt3L
 mlpUDGpz4S80iJN6tTqWrR2SCb+IdIQdGqf4UjaqYIYZ6DR953JmgLimlAsyxYe/KC4BEXUHM7w
 TJ3k9mrQPIsghfECCy6/JvwUmJXbWY3aq8G4k71ST83CW3eVb1IZKCfxMFKNc7gym6FPe/rdIJr
 18n+WP70qPm3oqCjYP+g1ZgvY17+LXaerifQAvCV/sKlkSrpgwujVj64eG70whN+JD01C57Gxhd
 aV83VkJ9drRK5vZIorRUYGR6RkJ9546jU6WtEQfbTwVmbSo70osKo0nE/gnSw7srQ9qHFJsF2W9
 mn0xWTyuPtoaMLZuy/XerpPVpNNYdDe5kPnwD4GhbxyYwX4lw6Q4KZlS6vCkgUXsvqk4hQ4niy7
 ETBQ3JSCWpISHim0XI1p6FFaAoArYgCzxrWyW9FJO4oJwey8ONTm7YFdPuFGTzmDwLmaDfajQkj
 e/mf7knBvRUj66Wt5fQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfXyZsayViiWerC
 JEh/tbXwAqR4CwIW1SLpqXCXIjZUSXt9zMRHooXTH5U38Ip8MQvgbD5FZF/qFwlCi1w54/ht2OL
 sbm0thMtciDPJswomRLFsC0hmzLxNJU=
X-Authority-Analysis: v=2.4 cv=HbWB3SE8 c=1 sm=1 tr=0 ts=6aea5bd8 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=n2D47ajo8674fvOcmZAA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_141033_899865_88F203ED 
X-CRM114-Status: GOOD (  11.69  )
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

Expose the three QCS8300 CSIPHYs as standalone
qcom,qcs8300-csi2-phy generic-PHY provider nodes (csiphy0..2) at their
existing register addresses, each with its own OF graph (port@0
sensor-facing, port@1 CAMSS-facing) so camss_detect_legacy_phy() picks
the non-legacy path once a board wires a sensor through one of them.
The camss node's own reg-names/clocks/interrupts for the CSIPHYs are
unchanged, so boards that don't use a provider still get the legacy
binding.

The provider nodes are disabled by default; a board or camera overlay
enables the one(s) it uses.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 114 +++++++++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 35fbee63d4c6..9585bc723fc4 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5577,6 +5577,120 @@ cci2_i2c1: i2c-bus@1 {
 			};
 		};
 
+		csiphy0: phy@ac9c000 {
+			compatible = "qcom,qcs8300-csi2-phy";
+			reg = <0x0 0x0ac9c000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "csiphy_rx";
+
+			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy1: phy@ac9e000 {
+			compatible = "qcom,qcs8300-csi2-phy";
+			reg = <0x0 0x0ac9e000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "csiphy_rx";
+
+			interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy2: phy@aca0000 {
+			compatible = "qcom,qcs8300-csi2-phy";
+			reg = <0x0 0x0aca0000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>;
+			clock-names = "core",
+				      "timer",
+				      "csiphy_rx";
+
+			interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+
+			operating-points-v2 = <&csiphy_opp_table>;
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csiphy_opp_table: opp-table-csiphy {
+			compatible = "operating-points-v2";
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+			};
+
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+			};
+		};
+
 		camss: isp@ac78000 {
 			compatible = "qcom,qcs8300-camss";
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
