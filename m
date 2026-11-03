Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4AF606EE83
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 22:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=z+qAjIlU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FQaOW+56;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XPspOR5G
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d9QfSm5FjxOjld0W11RV40qIbJibvOClQ0hBT1zL/aw=; b=z+qAjIlUCiEQEOJ27fAbmJ/6l+
	mDDW4I1pFla2u7LtcM9npK/rGqbK615iu1yub4N8sMNvuHBI4VugvzqdcPpNVQUszlNEK8wRbrxpx
	P92l+SnXGP3cMJwe0d9qapm+dudp6TmM4gzzfAgpxrGESXwjxd253IbrBWMZji7lTkuvXx47xLKNh
	imMh4zUjCQY6Uwz6yGZ6sxUzeKTqjik410Ywm8v9UoNSgWN98rFFwIMGsHBoidRkDbdkirwuKWETd
	XB/gJLFFEm8ZpREZJKEo3wAVzduShTSmM6sLYOvQxY+8xEFxC/Z7JkJVcKRTrdsMbfBYhTguPfeQ9
	y9tcCUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMiC-00000003nqH-1exe;
	Tue, 03 Nov 2026 22:10:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMiA-00000003noq-29Jp
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 22:10:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LKlY12395511
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 22:10:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Bq9q8ndWYXW
	dbsRd1Z+GWT3oVUYG9gG/fVSEYiW0F90=; b=FQaOW+563c4HsUkcfSoXlxl935i
	pmRLBcxWVsalSW7ggAyR//Xn1rfCBEs4bGK19uJzclpfjm3/FSmmTbN0Z9Oa8WHo
	IhZ7JcGjdKOhH1xjnmwofY65Yc8yE6bqM3sIpnS2YVa6ts9FGWLfZTEiOTED2/9Y
	27NEEWtKabSa2N6KcOS8s6YxjHsbpMVjeFoxfNmIBZAISpd2Fxskc1S2zQECUtO2
	3YQoMpTZkZMaYU14/ylp4Uu2wgtkr3kDppy7XfmiU2QMXLNQFqpCv4tJ8MMBqdYp
	3+VOaH0Z/5kPFw05UQL8qvLatsXe5Daj07zTQ2JAr7kJydKCFMI9RgTWgtg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqhyd1pfs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 22:10:33 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-139b62317d0so408453c88.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 14:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793743833; x=1794348633; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Bq9q8ndWYXWdbsRd1Z+GWT3oVUYG9gG/fVSEYiW0F90=;
        b=XPspOR5Gc0rymyzfqXusrR4flK1NLLefWl4yAls1PAqEFlJWNxnjaqgpfuQWCj6DWi
         Agy83Xy2UXn2SNhDLw8zjEAC/kGGGF1iSb4ir6G2KY0v2rqs+I9pJU7oiM94vLCyKiIq
         JBlaDl8HMmV6mllxYHxSAJPme9GVXCMqZM9kWRjNS+zJes8U+4AHgBuLQFmo8VLfLoHB
         /yucrOysLyh5TULghpqNeLiewA8iAlnGxR2dDvuGT5tXnUH4mm7UOBjzoHaebLfR5kzS
         zAaft0OSyMl6KvkBxnelNtoz0uP6oSrFRrv7d1ahT881y9x1MHWYbmiJTMiOFm6djVGI
         Z5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793743833; x=1794348633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Bq9q8ndWYXWdbsRd1Z+GWT3oVUYG9gG/fVSEYiW0F90=;
        b=trd+6Y2B73mMhp/Wh+cEn7S33sIcrWPQ0cBkWLiMu0nzIgkColmmzXHnVXedtDtqcm
         z8l4+5X+XPVvJOAVuC4mh2bAJDoAlJ8pxb8nUsaYhOrXRl1aYE6ZvmBvdz1cWvPaof1H
         M4pXV8kVrz2BkK7YWfPIKVTTaLNDoPAhL/zkaAb3SAtPpGkPayH+pRoFYtGHeI/DMP5k
         wcmiduwzSWNuk4fodocLc669tESZjlwIk1ybuHnCBdgVahFM4qm33kxssI4kR5Vwf82l
         mKozAMjRU+csITCcE2XZ3X5JqEohnx4HjPQRVLQQTEntSCVqdCjt07QxeWJkvea7Bsg7
         KZtA==
X-Forwarded-Encrypted: i=1; AKwUvBy59Gb4L02rbesG4IyLDGe1OuV5nIDU36r1XhzzCl22mzCjxIDpSp1t1X/GFg1Y/mHS60Wh3iyUeUc=@lists.infradead.org
X-Gm-Message-State: APuU4Z9UX8zvuw91ln7BRywB9Fz06LxNTx4LrbTPI/5hXUwCiPiYEpHi
	ICtw1TcZimva5AgAiQrwrJnbwIRj2tYbJv76tylGCg/pbADrXc0L/MsRvADJ98xvVcEm3d9LdYh
	m3axgpoN3z3EZQ/RT4XO2zbxo4c3lxAh0znjGYJgKevD3guUoqrUFUumRDdxMLChWhrZs
X-Gm-Gg: AYBFou1aA5vNUy4i+CWTU705IJp2mbkVAABpaW8Rie5oSlkLZh0rDdX//70ma4rDSQf
	5gSP9bx6CW4qVaS+ICrpiEXvF9I0NtLsPK/bPNof51qIMOgBo1rFnNYFwhC7uLTpu3YZccbYU5b
	5ymZG8inqFpvKgLnDl4V74m/wd9cXnKvc/BwmMzYXc9dJ1aXkwadZAc/HFG9Kp97as17dt9/+dd
	iMtIcggZYagPirRDc0jG4/i9NipcbMi8GXR8tRuj97oKRU2vKX98bDH+SQg1dWqtCAR9kAq3idP
	+xmI9IV/Qgl+zeQRrxPHFcYFeQePQLq/exu5G2Yhs0S/NqZUgroclrbOYcOLCMe9xTWfnzqmTeQ
	qUmj6/tmGp47GfS4HJAylkkTEYXYp5UiVr2n3y2uOshQ7i5KxFlLib96LQJGUwnjoUcP6gYmAgF
	tRKWFwAb7tGmcIaTBiyhvypQwhtNpJ
X-Received: by 2002:a05:701b:4589:b0:19b:39f4:88c9 with SMTP id a92af1059eb24-1ac5bbb487bmr21042075c88.10.1793743833072;
        Tue, 03 Nov 2026 14:10:33 -0800 (PST)
X-Received: by 2002:a05:701b:4589:b0:19b:39f4:88c9 with SMTP id a92af1059eb24-1ac5bbb487bmr21042036c88.10.1793743832370;
        Tue, 03 Nov 2026 14:10:32 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c4706bsm2137312c88.15.2026.11.03.14.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:10:31 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: kodiak: add CSI2 D-PHY common-phy providers
Date: Tue,  3 Nov 2026 14:10:26 -0800
Message-Id: <20261103221026.3662383-4-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
References: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=bp/Zl0ai c=1 sm=1 tr=0 ts=6aea5bd9 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=AEMvfOE69tE_Q1r2TxsA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: e0FcYJELVr7EYtEAHQaH_INUcZyLt7JJ
X-Proofpoint-ORIG-GUID: e0FcYJELVr7EYtEAHQaH_INUcZyLt7JJ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX03L60VzGJVwi
 l5Nf7B+G7S7YufAxM6qqSOn1XtWtHYRR2ZeB6AbBbeZZUzSSQI7kLt7tqbgU32wy21Vxjr6TXN/
 ULj3nN67WtDsf8862naVYearymZP2Hw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX6PVD5aGk2sh6
 MS29wPx/2gMkvdd9u0pSjVA3JeSxmij1Bf1ow+1q1oDfBTQiWEPfUV9ytJ/SlffquDKkdKW9yRo
 bhnIhEl8wfjqT/U4I7ibUjbvDnQbdx4v1Bkj5MR7EcJAXviAL5jsORkqL8lUKsmnSyRyWuJpsfK
 g1Tsd2G9g6hkCAkfb0WYst46efAIZzsbsqgoMTicRPsofD94nMmBqCspjfMOm5b3+qG7d4+60eK
 uvTYKwJf1yGPKMf/WNadol5lk9+VUj6uSim/ePinSREDBhbTZq9hqBBfUgLO8ASHcn8mQZSOU5W
 ZQ1Q2KUDJ7a6ynMR3qvTizlkA6NudZrRYvyqa9JnbIvstma3KGE9J2mPx8xFBedlVz1Cl2RtEzy
 rFcEzIpqU0PXPHPiY4a6P0bJw7XByxPc6kiO5nqzwb87MxTSHPC2HzZzQlNcUIPmbsglyQJCzrJ
 L6Rhhkd4CIucYEz3ISw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_141034_553616_8EE6552E 
X-CRM114-Status: GOOD (  11.70  )
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

Expose SC7280's five CSIPHYs as standalone
qcom,sc7280-csi2-phy generic-PHY provider nodes (csiphy0..4) at their
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
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 172 +++++++++++++++++++++++++++
 1 file changed, 172 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 8c7523602d27..3f3a41cfaa00 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -5164,6 +5164,178 @@ cci1_i2c1: i2c-bus@1 {
 			};
 		};
 
+		csiphy0: phy@ace0000 {
+			compatible = "qcom,sc7280-csi2-phy";
+			reg = <0x0 0x0ace0000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
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
+		csiphy1: phy@ace2000 {
+			compatible = "qcom,sc7280-csi2-phy";
+			reg = <0x0 0x0ace2000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
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
+		csiphy2: phy@ace4000 {
+			compatible = "qcom,sc7280-csi2-phy";
+			reg = <0x0 0x0ace4000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
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
+		csiphy3: phy@ace6000 {
+			compatible = "qcom,sc7280-csi2-phy";
+			reg = <0x0 0x0ace6000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
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
+		csiphy4: phy@ace8000 {
+			compatible = "qcom,sc7280-csi2-phy";
+			reg = <0x0 0x0ace8000 0x0 0x2000>;
+
+			clocks = <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>;
+			clock-names = "core",
+				      "timer";
+
+			interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
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
 		camss: isp@acb3000 {
 			compatible = "qcom,sc7280-camss";
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
