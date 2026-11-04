Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5523606D83C
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 09:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SKpu08VV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=azrTao7o;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ujim/EQc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Znb1J5KEWQbQ4Nciv4GDV+5g8syoX61muMyyzD4VrPY=; b=SKpu08VVUmKV7RIe/iAvTGp0bD
	LWKTZjzn1hKIZlWjZAhv6+Y09Y6hv9QGXtPrLcdhHgrTFB5D1g+IOc5yN6gxLjUXGlGBu1/LEx5xK
	lestkQYnrjW2AJQ3YRzDnMpG/DBs0dVj3haHeSg66J19MWNGsonADIqspA/FDpTEROtNvKE1A/gBa
	Xpz32COtX/4EQDmHwZ8TtJkW2Cx7FLPUsrVhCTyfJs3y+/+7T2Ey2n1Uu2qb4tmeG3Fw7b85GTyFF
	qxApv58SfGyz2NtIinT8VFy2bFRq3jRfNfQY4kaMLaApVwEn+Yj6BU5MLsiBSV57vDIi+piwHptCw
	wD10bYlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyf-00000004ptd-2DYZ;
	Wed, 04 Nov 2026 09:08:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyb-00000004prU-3B6D
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 09:08:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A48Kbxj2232057
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 09:08:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0pP8dFy+RMT44qLZsDL6EP9keqwqs0ci0Z/KV1ES620=; b=azrTao7olxA7+GjR
	xpXQPcYyKjMCkK2tCnHggxTZbWEne5HBM9kbEcX6wKOBAv++dkyb9HGY1RlPFAnJ
	G0SRXl8DGDCwy7hE7xiDvjbKIR+3x7POzADp+Gm0vzNOA9PDx5GrUv7vis5YQAkF
	m0fThlpfkcVoULDAaf28nT+tBJbLKa0SwLEt/DY0pvaneBgQEABz0USxKg9LVtL8
	9wuHMeRxQ1xC08kRdQxT+nBLN2shdWgMzzqI96fUzWm3te8/MbVtOosf0OjhZMaP
	quRQaPCCR5ivrGEED2wluhYSEY6NvDBGdAEdN0mOz29Qmpc+nqGRWogdkqpgviMz
	mytwnQ==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqm2pkads-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 09:08:13 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-7150e6da546so264449eaf.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 01:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793783292; x=1794388092; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0pP8dFy+RMT44qLZsDL6EP9keqwqs0ci0Z/KV1ES620=;
        b=Ujim/EQcQte+WJE7SNychrxf+W3qZ1lVqFAiHGhasmfSV4rAdCk1eqaB9H8APHO3MC
         2TSqLyrB2iqFu/t6zQb6jKGbbOkM314lyT8w/9b72aIMWbeJz5fjA4egqiMczpyNjZG6
         lC4eACIpLKV58PZjmYT9p6/T1AXzvJ/JXgXDLYiUSCDjL+TSv0YNXo0d/i33UsXdWGJK
         JuWyO5Czf7vmGO8lq9HIT94/a9IzKbVNri09pZsDksZxtlOCH4jOwTAOoxHXdFWW3PhT
         HRyTqH2tx7MYX64qcAIYt+qmMIYOu1rBeyV4z+Bl5le+mmHeBSVe/8Mw8Uz5c9aVE4Dr
         8law==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793783292; x=1794388092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0pP8dFy+RMT44qLZsDL6EP9keqwqs0ci0Z/KV1ES620=;
        b=bPeOttigeJ4XpAqsUzJBW3XDXd0ExThfkylGsWfiTPWVDWYLxbeG7TrNQtp7YFaCsU
         jbdncoK9EffvTdfoUIZWjmqfPMPBrYIiSDd1MRDbbG3c/8jJwrgUd44VTsNDvpU+3n7i
         fpFLTz5p779O+VAi1VL92sebul+JiRtTLzOtVPOBrQ9zN74nR+NPS3qptjfsl7OpWpNB
         7jTsOl7fNR4ORimCx0vqGDCkIpWz83vnqESprufRnR+dp2W7tRp2QjLLlLIt6J61Ino5
         inIV+Qsosxf6tyAH/HuM6nL27B87Gr+Qx/Q/WSat4KKpVa926rpnq11+cGyZa8/5yqBs
         fE7Q==
X-Forwarded-Encrypted: i=1; AKwUvByuLrZnwE/p3B4cunTp7iLJx6HpQHwD70JCKE97JVfUBPkcr5SzYDy5G/Uka8jdQO+qF/tt3RsWr7Y=@lists.infradead.org
X-Gm-Message-State: APuU4Z+Tvfb8cKmQ72617Apa5lYQj0qFZOeUnPD1MWGayp/gVU9A7yqp
	ua49nV6V/P2VwXHmlwB+bSPTWfIumfGG0e4kTmlAIkweISGLvsOxuBoCtBAdP9kmdWLLoTfLjKg
	9jvqoRpzyLIRboCPqlD1sdwauz2RUIdG25sP03vlgK1jaMiLFq+DoAgIjQAre5j2Ac68c
X-Gm-Gg: AYBFou0R9PPShwAZJa/P4EGOrYFEPE0EwLaekFODUNBmV0QkSRm05hGp7RqfEqU9nRk
	zk1ZPtf9+NNy+96qe/hmiejRr+RSB5AZKoEh21MLBEmzpTR5/5xRPCvFVZ8BiSnWTb6K0W4weqf
	L6NyuCAuvOfXetggXUIl05fMhnJ6hGP0xX7gDkwNPYn7ikIDkSQTyknlnXXIX2udeg/ATP4c+33
	2Luw3WbSFFiBX8RB4aKM50pkrXOX8qrec1xgQqS0bXnSpuSaINY1XLZ6Mj9PC+ltY8v8qoxn3dC
	22g1hhUKGwldgeh4U4fPSQiNIz1FCiRTHxbXqNM0yaANHNvAEKw8sjQukJDdkbgjEQBpeRdLglU
	9SU9yruraPzcdNujZcTgv4M2BNzFTskhTlo0VhpwTDVVl6rZ5QUXzMVnV0/udWS4MndvcWAf3hd
	aiOYsHu61WNj0sUyIcbA0=
X-Received: by 2002:a05:6820:a659:10b0:6ff:fcf5:40ed with SMTP id 006d021491bc7-714f2a97a1emr5707652eaf.90.1793783292351;
        Wed, 04 Nov 2026 01:08:12 -0800 (PST)
X-Received: by 2002:a05:6820:a659:10b0:6ff:fcf5:40ed with SMTP id 006d021491bc7-714f2a97a1emr5707641eaf.90.1793783291852;
        Wed, 04 Nov 2026 01:08:11 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3d768c8sm1519846a34.8.2026.11.04.01.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 01:08:11 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Nov 2026 01:08:02 -0800
Subject: [PATCH v4 3/3] arm64: dts: qcom: Add refgen supplies for PCIe PHY
 on Glymur and Mahua boards
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261104-phyrefgen_1104-v4-3-ba508fc6ab40@oss.qualcomm.com>
References: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
In-Reply-To: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793783286; l=7726;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=qgl8m3HOTa+QKekvRBjrXG44N7rhEqII/ZPBl4OthEE=;
 b=c7nizw2jNJVMBhxWO8a9hYKoa0M0fVb3PYvKBeppGCcvdwtTqB63xV5Hfr+NTKSpZHqa6M5OL
 8uHatRLOxcTAxI7f3xbvCMYEFbdl/jKUtQjkaYVj9FVjus6OuUf34SE
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfX7qSVsNdRJfRH
 VQ3qMlY7cIudaMwljt/1CZX+W9hl2RniNWE9ar41tkNoS85XinNf+oby9ORS6eh3I6sh/Ht9U1c
 6hJjnympFMu9QUhwxYnlxVgOwoIwXLnxCL9qaRFZIKh2llPuJbd2TK4kvz4YDuX5/bmqYv7r3Wc
 TTg9QEZTvS+7C3HhMh8GwVvNvR2oYB17lot9zPpdRTAR2HL0z1XwwSg/bSAiGMArX2PYYyINwhD
 faDb5YlA902Dxr0+sE5pSPuKcTlx422El/lOSzYzWFRHTvs311rLGglWp5e78R3MvgwwvRNATPc
 /7SH/+Y5rLTab6fSAfJLKS0kuVHSmwGQhKaBYYWsn8yKXlOEKLvmaXATgvMF95OmFPhVeXUEgt9
 +jQEJf3QVehGyNvhfbCvKzwoI3p09SzwTmxoklcf2SHU1bpAvHzD5w2tPzypgle/v24egwQIHiR
 5QW1T0S6pakndfe8wLQ==
X-Proofpoint-GUID: wdgr342Kuua_oFTr5-syENPJwMiGW6C5
X-Proofpoint-ORIG-GUID: wdgr342Kuua_oFTr5-syENPJwMiGW6C5
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfX27DI9JTUtVo1
 Qotuxc30B2+b16hp2hJwdVvyBCptdX85T0mBTVUwFquPJYStjFoXFgiE00qnnHYR8pnmxaomjSC
 HFbF2jganDuIO1tRDqwQgCnWeCMqa/E=
X-Authority-Analysis: v=2.4 cv=c64+0h9l c=1 sm=1 tr=0 ts=6aeaf5fd cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=hooUR3UheFJlRPkIXLkA:9 a=QEXdDO2ut3YA:10
 a=WZGXeFmKUf7gPmL3hEjn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_02,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_010813_806998_B8E1103F 
X-CRM114-Status: GOOD (  12.01  )
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

The PCIe PHYs on Glymur and Mahua require a reference voltage provided by
REFGEN, which in turn is powered by two LDOs.

Since there is no devicetree node for REFGEN, add the vdda-refgen0p9 and
vdda-refgen1p2 supplies for each PCIe PHY node.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts    | 2 ++
 arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts    | 4 ++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi                         | 6 ++++++
 arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts           | 4 ++++
 arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts           | 6 ++++++
 arch/arm64/boot/dts/qcom/glymur-qcb.dts                          | 6 ++++++
 arch/arm64/boot/dts/qcom/mahua-crd.dts                           | 2 ++
 arch/arm64/boot/dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts | 6 ++++++
 8 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts b/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts
index e96e65a0c5b4..d1746845a609 100644
--- a/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts
@@ -735,6 +735,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c1>;
 	vdda-pll-supply = <&vreg_l4f1>;
+	vdda-refgen0p9-supply = <&vreg_l1c1>;
+	vdda-refgen1p2-supply = <&vreg_l4f1>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts b/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts
index 95da35125d75..bf3c828c8a0b 100644
--- a/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts
@@ -818,6 +818,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1>;
 	vdda-pll-supply = <&vreg_l4f_e1>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1>;
 
 	status = "okay";
 };
@@ -843,6 +845,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0>;
 	vdda-pll-supply = <&vreg_l4c_e0>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0>;
+	vdda-refgen1p2-supply = <&vreg_l4c_e0>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
index 58158b51fe29..b3f876956e7e 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
@@ -764,6 +764,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
@@ -800,6 +802,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
@@ -821,6 +825,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts b/arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts
index 096d40e49210..7f79470ec004 100644
--- a/arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts
@@ -545,6 +545,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p91>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p91>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p2>;
 
 	status = "okay";
 };
@@ -581,6 +583,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p94>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p94>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts
index 769f195c99d9..130946ba9785 100644
--- a/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts
@@ -743,6 +743,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1>;
 	vdda-pll-supply = <&vreg_l4f_e1>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1>;
 
 	status = "okay";
 };
@@ -779,6 +781,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0>;
 	vdda-pll-supply = <&vreg_l4h_e0>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0>;
 
 	status = "okay";
 };
@@ -800,6 +804,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1>;
 	vdda-pll-supply = <&vreg_l4f_e1>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..f26bdc1cd84a 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -448,6 +448,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
@@ -484,6 +486,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
@@ -505,6 +509,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
index 17e40f2a6259..45c95543fff8 100644
--- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -23,6 +23,8 @@ / {
 &pcie3b_phy {
 	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
 	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
 };
 
 &tcsr {
diff --git a/arch/arm64/boot/dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts b/arch/arm64/boot/dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts
index 26d6d8285e04..ac7e1382166d 100644
--- a/arch/arm64/boot/dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts
@@ -813,6 +813,8 @@ &pcie4 {
 &pcie4_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p2>;
 
 	status = "okay";
 };
@@ -850,6 +852,8 @@ &pcie5 {
 &pcie5_phy {
 	vdda-phy-supply = <&vreg_l2f_e0_0p94>;
 	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l2f_e0_0p94>;
+	vdda-refgen1p2-supply = <&vreg_l4h_e0_1p2>;
 
 	status = "okay";
 };
@@ -872,6 +876,8 @@ &pcie6 {
 &pcie6_phy {
 	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
 	vdda-pll-supply = <&vreg_l4f_e1_1p2>;
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p2>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
