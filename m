Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B663C77B62
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdTTaox55rWs9EkDV5CdHl55LuaO9iz3EuVY50KdiOU=; b=bWNUAVFV84pYrs
	/utHKJgIPdE7Coxu1rJCl08NXAe37EhI397cOqVXdpI65A/EsvrjZLORKFzzZSEV2uDz+V9RSail/
	Sw6BnFTctCcH5fsX89On7As+BAj/wuKU894Zd4DTcpLzhmVJtU+UiG/AsxrA1tCNE6UMzgqBGUiEJ
	LU3Rdm09ry26SIx8RQB+Y+CoRaOMfOo5P/Rfv2B0r2FuCTD60BqPdxqwtkeE4OmoaueE1mBLXMvTT
	r49ozo/muKy8j9S2vuoMY4O354WKGiFSLVBbQR9U6yYYlFO5va85SyeU/8MR9xkYFZHxqM3O7gQY9
	RdTSKFKgE7H9AkeqcV0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7g-003OKV-0x;
	Fri, 24 Mar 2023 02:25:44 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7d-003OAT-21
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:42 +0000
Received: by mail-lf1-x12c.google.com with SMTP id y20so423988lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WWgHA+6kWwPqerA/eQ1n+tcpvRHpkDNe2/li/0GuXcA=;
        b=SJDsnqXVatsqt9wz5/dk3a4JqzBj0sgBbS0b+VPfmYOLIoy6C0ent3EuzcMww/Lyg4
         mr5w4Zzy/mCffFmXKCbIslyJSl+FP3xfLw0hj+MV3MaIl6xyJ5UcQ1cY0B1Fqm3yj6WO
         GJG8SuNtTYL+zI8ElgJnOni4y8yNuoj3gAACAypwmc4FACoHiwGnkglJeABEQTH+QXOZ
         6BxDUW6+M3crJL3yOzPasaCJSp3ANyh26PgzPTEg0UUKueyfQAeYbc2w2mgxFqz0pGQ5
         P1r9ikea9ginlNeM83pf1KSy0wDAmSAskqFxU+/dp0cBXOL7h5D9SChOAeVTqK+jwapH
         HZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WWgHA+6kWwPqerA/eQ1n+tcpvRHpkDNe2/li/0GuXcA=;
        b=pRs/DSInLA36+jUm452ZUIhzjXy9kgm79zmybIx//d6qOnaS8yFaKWFmaXHUPrEjDe
         pqs7xsbqpSbT0WaOtkaRIix23vTA5/UsdNjkIrIOQrojk3QMPW0XXARePiwTvj7IaAVG
         CLiWkFhZKbZbLg0D/5RDp0ZOKa1VONQyxV5bhU/PLdqq5IPeYtMIc/9kgNhoTfRHWn7t
         gz6oQNhiTPUgwuzrL3mofLC7XVtnM/bezbv71svHB6qbU+TKkKW3TmXHYGYI3+x1guvd
         u2kwyv0V491ZdhUlyGM7+E1C8HQ1ZWkKdkoptJ2FQH4q1wgqZNwHIAm0pturSS9B9ETZ
         s+7A==
X-Gm-Message-State: AAQBX9dbN8Ymysfi/0nVciOVIZyxm3sKqDgD25jLqbKMLyCLL51ouHhU
	im87oKK1vWO48f+18slW+9/I8BulOXlVSZE4RMi63w==
X-Google-Smtp-Source: AKy350bkNBQkQVASiM0Bh9X6nL6IZZWcLSeY1rr677DzHNRkhbRACEJrW9kF329c1O0rY9yuMhXUyQ==
X-Received: by 2002:ac2:5ec3:0:b0:4ea:4793:fad0 with SMTP id d3-20020ac25ec3000000b004ea4793fad0mr322378lfq.5.1679624741185;
        Thu, 23 Mar 2023 19:25:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 23/41] arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:56 +0300
Message-Id: <20230324022514.1800382-24-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192541_664613_CE9491D2 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 2ccf28d8e223..11e7d5b6f6d6 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
 			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x01da4000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufsphy_lanes>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_GDSC>;
@@ -1021,11 +1021,8 @@ ufshc: ufshc@1da4000 {
 
 		ufsphy: phy@1da7000 {
 			compatible = "qcom,msm8998-qmp-ufs-phy";
-			reg = <0x01da7000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x01da7000 0x1000>;
 			status = "disabled";
-			ranges;
 
 			clock-names =
 				"ref",
@@ -1037,14 +1034,7 @@ ufsphy: phy@1da7000 {
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
 
-			ufsphy_lanes: phy@1da7400 {
-				reg = <0x01da7400 0x128>,
-				      <0x01da7600 0x1fc>,
-				      <0x01da7c00 0x1dc>,
-				      <0x01da7800 0x128>,
-				      <0x01da7a00 0x1fc>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
