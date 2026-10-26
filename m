Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F73606A326
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 22:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A2eb3ouf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=W913DyTI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JrevzWbL2x4duIJ6rwcoBt51W1moMLwWejxrFjnXKA0=; b=A2eb3oufs63DPKAnklZap8dnLh
	uveijq0rv4YxKA4rL8f4u9yQLGDRcZtSRsUMn6k4UC5jo5A6ySB2j1V1ckkc/9JN8e6MCLe9ZeylP
	+5rm/ToGT981IKLKU7ZXoiPpyKHjPHJw7cl+uucFppWjs+BULqlSJL5IpOMlCNk3+veq0cqmJaw2z
	+i8j3yll1hWknIPSTD+n84PQ98Nb5OgEkzfqAicI+xat++g06w6pO5WwBHXhSCntYlp5OPSjFgkND
	8zJp8eSPiOAkgsTF0SvCqc2WPp1shCnY5XxWDWjzHyaMIlzZv7wSS2y+6GnHYjLe6H1XPGi0kB/zP
	dbt++8qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWV-00000003NxD-3ndq;
	Mon, 26 Oct 2026 22:50:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTWV-00000003Nwd-0nSz
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 22:50:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A0C8D600DA;
	Mon, 26 Oct 2026 22:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57CC51F01825;
	Mon, 26 Oct 2026 22:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793055034;
	bh=3bdtNEp42571APEj35U1oavSEcPp9Du+9f+sh1xWMBU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=W913DyTISHFqsIeOv8PPYYewH/5SmTAHmggUXp8BVT4wg4z72Ea/JMJV8lL52fMPg
	 BfAoLJMJfZm8Zd4mGeO3KxmFlqzEX2jtg/CcVF63jF0JRIHkZSlaW4ldXy8SolPV78
	 YGgVeHCzMOowi2NV2Mn6buoUZ6OWRyAAwCZSwn2i4EUd3OG/Y+iILLDMpVgZEgI/si
	 e/+EwSBbnvJK05sK2HeZ7EVNt+zmACULdc+HRKyO0Cf8TuKK99Pt0D48cTCnrM8apZ
	 GS0u+s/3EtI/HPpUcjZy3L211UvhGp3AxaGLOn+/YGhyyLw/5jXXE4uig5R99DYtzG
	 uvhq6QyMhiXGQ==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 7/7] arm64: dts: qcom: sm8450: Add description of pins with MCLK function
Date: Tue, 27 Oct 2026 00:49:57 +0200
Message-ID: <20261026224957.1115370-8-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261026224957.1115370-1-vz@kernel.org>
References: <20261026224957.1115370-1-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Qualcomm SM8450 SoC provides up to 8 MCLK signals on GPIOs 100 to 107,
add the correspondent default and sleep pin configurations.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 112 +++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b4f7672cec94..c8e9af8eb66d 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4292,6 +4292,118 @@ data-pins {
 				};
 			};
 
+			cam0_default: cam0-default-state {
+				pins = "gpio100";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam0_sleep: cam0-sleep-state {
+				pins = "gpio100";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam1_default: cam1-default-state {
+				pins = "gpio101";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam1_sleep: cam1-sleep-state {
+				pins = "gpio101";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam2_default: cam2-default-state {
+				pins = "gpio102";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam2_sleep: cam2-sleep-state {
+				pins = "gpio102";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam3_default: cam3-default-state {
+				pins = "gpio103";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam3_sleep: cam3-sleep-state {
+				pins = "gpio103";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam4_default: cam4-default-state {
+				pins = "gpio104";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam4_sleep: cam4-sleep-state {
+				pins = "gpio104";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam5_default: cam5-default-state {
+				pins = "gpio105";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam5_sleep: cam5-sleep-state {
+				pins = "gpio105";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam6_default: cam6-default-state {
+				pins = "gpio106";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam6_sleep: cam6-sleep-state {
+				pins = "gpio106";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cam7_default: cam7-default-state {
+				pins = "gpio107";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam7_sleep: cam7-sleep-state {
+				pins = "gpio107";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
 			cci0_default: cci0-default-state {
 				/* SDA, SCL */
 				pins = "gpio110", "gpio111";
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
