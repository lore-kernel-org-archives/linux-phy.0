Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35975CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBzpPy7QE1SQadVjqfmQfjSUJS7YIGQY0Unfx50nffg=; b=JsrYst/tLYISu/
	J1z3khvCsCoQ9/cLwxIqQqWClFAwp86MKsLqeFLHA2gpLjCwhDU42XzilOpDhDO6RG0jCtDYmbcAR
	fV2PIPEEDsXPjVqG9EKsNrwnTcFoyFy6h91zsJoZKBGqObOW+HN1J8FmWFrwKasFR+XYO47OINXMh
	XVp+2CR9G/K+0iuJCkzcvcInQyTrPNkdZem9jKCvOEGbYNt08V4NMTEKZ6muqphWSLg7Qm3DqMXyi
	Z4jtq4OoEKL8W24TvqLNG0Foqv1Mahf2WUsKAUOxqRS+vM48VnUVU867YeMPsl1ln5CoVtlYCNR3E
	DDwMx8WkypSM4OXe5xCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGq8-00000007Uya-45Hu;
	Wed, 10 Jun 2026 11:11:20 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGq7-00000007UyD-1XzQ
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:11:20 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2c0c3546924so44065355ad.3
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089878; x=1781694678; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06m6eTJZDZPQJ7w1wtJsPkoURM31DLSHf6Zo31tPFoY=;
        b=JyX742iNLrkCw8CX2eCdmiP3H2tzjKRqIs9zbOwK7dSiMeouYBmzYdn4o5rIOg3lrL
         jhHHM05urq8V6KjmAA9slHJ28sV54OmEua2ZqWIWtju1gILsuo3SUktsGnc5FKhpH9yS
         z2ODketX7Zu148GkmnywLwvMau6o7TcNDgeTZTPMTHdw0Y6d2hz5YOTBAgDn9a0gRaW+
         DOZrXgCbxU+JPiFhBpzQs1PfH/GvEp/2WgH7M6sq6MDA/OF4VCHPTa2f8g3Sbn/Pi9WM
         Rxi8gFtUxE04eCd+x5twcbMcSe01BOaB6kw7L2XiE6Ms/HkhF/NKf0orfdv7KeJc8oAh
         WKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089878; x=1781694678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=06m6eTJZDZPQJ7w1wtJsPkoURM31DLSHf6Zo31tPFoY=;
        b=qH9hux6VqS4KYTMm0TxLePOOX/Yp0t+vzZi0mhD+6DspUfJ0YHDZr+mX8BHabLTnJq
         Cjn+L7DpcSquLBJeTtZb/ZjiGQ2UGso/1Kzen6NUzV8FtvuJn43qxEy/aHhg2esOo4ij
         vVRj46GdyLf1Dt/IA/BkTtmSNSG4PHfC9ayiUaiJHHfoREagexcl/nAGeBZ0m4RSpYwv
         peJf9xtPmDJYEMUy0Pjg8SAmIA+98AZ6p+lSxGu/1HsF67681QhuHnXpRSS4NSEnstm5
         fhsz2QvVwUlU5oDwKJL7qdZomAW3elgB5LaDGfir2uNa12n962vbb89xjDIgSUxRK4qP
         +iaw==
X-Forwarded-Encrypted: i=1; AFNElJ83VjSQ/TAEf8XKUcG8uQbPALaLTUMAHH39scqDRPf0GKYvei7FFpgj6wSv/q4GKEUJ3gziji5oXZY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5Y/fsl/cQx6MOJ/AppzMA54qXbdrI2JMj9lT8bfyPr97fMi7Y
	dbPsw/rVQRFK0tP58A+VTO0/GolrBo0e+aKNqqlNoWYEaOnXEHe8OfjX
X-Gm-Gg: Acq92OFm+jl1SvEZqwxN3FnRsJ8ATnpl9fg0+fUErum+AmBx4pwd9EwqhYsYHuwsjud
	AV9LOb2ufAIwBQA35GttAMrHvxEj3O56ovZY8zkN14mMFnzXcX/k2Q8svCzRG76cRJ8w8iwsj9y
	K5Dw1pNIi4GxYmm02HLL9yHnYAeRXrA8QjQK1hbHO6i10ODRNII1OQTYvf2KjZkI7xp4KbWy2Mw
	SzS+IPAZ+iOY/L+fFIz3+6dMpbWI3i4gdCRBGzllgzSUXEldL8+gEPKR0M+IeJf6Xxx3Lll6yfG
	V2okAG+y7XMvsqktwI8pUZhS/B0Sd/RFnaniqR/lD3z5oYviQ2Bcp1XnGWPLs903mL1xX5VCpzH
	mEMxcg7DlBiFP0r9Op6k0XJD9CAan/RgdCsw1f2RzaTtkq00OBDNtZNMiFXYnVC6c9Z6T2X0X6U
	AfbK+yeC7UVoODYMN2UyDOYW0tYOlazYY3hxHf8A==
X-Received: by 2002:a17:903:4b46:b0:2c0:c625:400d with SMTP id d9443c01a7336-2c1e8979bedmr280552555ad.37.1781089878316;
        Wed, 10 Jun 2026 04:11:18 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:11:17 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:31 +0530
Subject: [PATCH 6/9] arm64: dts/media: qcom: keep PLL8 out of Purwa camss
 hot path
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-6-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4179; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=TOj5OjxrruVphHTMiT2EGjrkwWWLSP4XZSWSQUFM7DA=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYPxDDLtCkxvbn6f4FJreQtb2Zfs33lMRdPL
 +pACyui44iJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGDwAKCRAVlYpeERwF
 3ieLEACVICuCKoukuly4K7kScUxZ74qX8QAG4zbHFuiq7U94MhTncgezdfSWNrVxWQbmUtrbacm
 BXIBD2PS9ko97X5H0Ch32aHBTRmEX1oNGd+iIdOfsZwfapINTymnBGrDfZ4mWsGObV965OJi2tg
 TCmpD5TOFYOVQiHtlDRWrLLFCr6O0wUp4+4ebsCySQDTrs3eU7xqtZb8BheDCmmym0PCKreaF6D
 2r9G7zium9UGoIOcrcjIS5jbXRnYDWxG6aeFqotOZqIZw7YlHUCUQer+W1fMhKlILUFG7GVNWmj
 4ur/XNEc/31fSMZYppkLuQFJICy8BPKLPrNit/owy0WFTzJigxs/6J/L7L9h35fxWN/hQY890AS
 /nqA9WWoPtkO35gKQ/61813IxQL8GIBpp1EDpyBxt6Y9qB5sK/h7NH1PT0ic03qE7Db81FQbf12
 fox/NEdl634WSrlmowVIU1eEB+i4kFe3EGMY3F1M+WJrk5g70a34yodxVSIMlIrx8+uAEcgnxfJ
 PWhoWlwsvh9s6hFbGW3H5XrvDdTOjfVW4uozhpNYrmZ/zxSasqatK63fRDx1DTBhbhVLRxjapt4
 FPRGEMmLSNNTs/TIDF7yIM3CG7G87L3BosX5mKKbNHCQquuNoIQ1tc67UdGhRHBZ9Sjzve0uEXv
 xXKd0AWF4HyFvwQ==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041119_439812_C5594211 
X-CRM114-Status: GOOD (  16.67  )
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

cam_cc_pll8 (defined in camcc-x1e80100.c) doesn't latch on Purwa
silicon. "Lucid PLL latch failed. Output may be unstable!" fires from
wait_for_pll() whenever something asks for a PLL8-sourced rate, and
the camera pipeline ends up dead with "Failed to start media
pipeline: -32" even after the qcom,x1p42100-camss compatible is in
place.

PLL8 sneaks into the streaming path via two RCG freq tables: the
slow_ahb RCG defaults to its 64 MHz entry (PLL8-sourced) when CSID
pulls it during csid_set_power, and vfe_lite picks its highest entry
(480 MHz, also PLL8) at streamon.

Fix this from the DT side:

  * pin slow_ahb at 80 MHz via assigned-clock-rates in purwa.dtsi so
    the RCG is reprogrammed to PLL0_OUT_EVEN at clk-init time and
    never reaches PLL8;
  * drop the 480 MHz entry from the Purwa vfe_lite clock_rate array
    so the driver caps at 400 MHz (PLL0_OUT_ODD).

I went poking at the Qualcomm Windows BSP shipped for the UX3407QA to
see what rates the vendor side actually uses. The AeoB resource blob
at qccamplatform_ext8380/CAMP_{PERF,RES}_MTP.bin lists the camera
clocks Windows enables, and PLL8 isn't referenced once. For CCI in
particular Windows runs at 37.5 MHz off PLL0_OUT_EVEN, not the
30 MHz/PLL8 alternative the Linux driver happens to pick first.
Whether PLL8 is fused off, trust-zone-only, or just unwired on this
SoC I don't know, but treating it as unavailable matches what the
vendor does.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 arch/arm64/boot/dts/qcom/purwa.dtsi       | 12 ++++++++++++
 drivers/media/platform/qcom/camss/camss.c | 16 ++++++++--------
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index cee72349da49..5e39355c38d4 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -409,3 +409,15 @@ &tsens3 {
 &videocc {
 	compatible = "qcom,x1p42100-videocc";
 };
+
+/*
+ * PLL8 in the camcc-x1e80100 driver fails to lock on Purwa silicon
+ * ("Lucid PLL latch failed"). Several RCGs default to PLL8 as parent
+ * (slow_ahb at 64 MHz, cci_0 at 30 MHz). Pin slow_ahb to the next-best
+ * PLL0-sourced rate (80 MHz) at clock-init time so enabling it does not
+ * try to bring PLL8 up. cci_0 already defaults to 19.2 MHz via TCXO.
+ */
+&camcc {
+	assigned-clocks = <&camcc CAM_CC_SLOW_AHB_CLK_SRC>;
+	assigned-clock-rates = <80000000>;
+};
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 5c9530d52bbd..ca43ff309b26 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4437,8 +4437,8 @@ static const struct camss_subdev_resources vfe_res_x1e80100[] = {
 				{ 0 },
 				{ 0 },
 				{ 0 },
-				{ 266666667, 400000000, 480000000 },
-				{ 266666667, 400000000, 480000000 }, },
+				{ 266666667, 400000000 },
+				{ 266666667, 400000000 }, },
 		.reg = { "vfe_lite0" },
 		.interrupt = { "vfe_lite0" },
 		.vfe = {
@@ -4460,8 +4460,8 @@ static const struct camss_subdev_resources vfe_res_x1e80100[] = {
 				{ 0 },
 				{ 0 },
 				{ 0 },
-				{ 266666667, 400000000, 480000000 },
-				{ 266666667, 400000000, 480000000 }, },
+				{ 266666667, 400000000 },
+				{ 266666667, 400000000 }, },
 		.reg = { "vfe_lite1" },
 		.interrupt = { "vfe_lite1" },
 		.vfe = {
@@ -4574,8 +4574,8 @@ static const struct camss_subdev_resources vfe_res_x1p42100[] = {
 				{ 0 },
 				{ 0 },
 				{ 0 },
-				{ 266666667, 400000000, 480000000 },
-				{ 266666667, 400000000, 480000000 }, },
+				{ 266666667, 400000000 },
+				{ 266666667, 400000000 }, },
 		.reg = { "vfe_lite0" },
 		.interrupt = { "vfe_lite0" },
 		.vfe = {
@@ -4597,8 +4597,8 @@ static const struct camss_subdev_resources vfe_res_x1p42100[] = {
 				{ 0 },
 				{ 0 },
 				{ 0 },
-				{ 266666667, 400000000, 480000000 },
-				{ 266666667, 400000000, 480000000 }, },
+				{ 266666667, 400000000 },
+				{ 266666667, 400000000 }, },
 		.reg = { "vfe_lite1" },
 		.interrupt = { "vfe_lite1" },
 		.vfe = {

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
