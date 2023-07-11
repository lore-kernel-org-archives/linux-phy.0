Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA73C07CA9
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLGzHJH/RUUWdmfJgR4LZLn/Wp/4g+xGwGLlBqTXCu8=; b=Is1/BDWJCM7Ew9
	9nog/pSzKPCQPOhLViQXqDVCzme17qZiXU1Fen2MweBU/Biif+YeGeH/v3E/MNqxoorYmc+3FJ0ry
	kDBdMHb315ryYz3LjUPv3Nmlw1VsPTpE+KRh4VA5C4OTOv7DeDMUiB5SVGKRwHFxtPOvjv8KsY3AG
	1KsDWDUw9phBY0T/egIe+BfwfDgVMd0khccbAspyGjAqdmPd7br2u7FsejvXzCFiBJnOLuhLsNcNP
	65aa3D1m/smJylGj/6e97epKpqo1rKjJIC5BxJ5N0glxe+5xiRNyn4Os3hV2Z2WiWtk/Dja1k9giC
	jnsWjaynI5IOVpMDlwcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEik-00FBuv-3D;
	Tue, 11 Jul 2023 14:52:07 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEig-00FBqK-2x
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:04 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b6f943383eso92534791fa.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d01k9Ge3oJeb+EotweQVjXGt8nCY34ZNLG+24WtV2Go=;
        b=ZzN6n7NGAxUMCQxrYps6kPtQ1wSAWkpXqD65DWVJA8pw+iuIEwYPCWYua/yFXhYx2x
         oVDJ8louT+4FJQvgGAT0mtZWCX+SCSPwXQ/0KcolhiUFagjJQMDxOiTXfRFZmygoNBpi
         plxmNTpv0nlABxKZyipDITwaSjTGxnSPPpILz2fYmpxTm3PxL0cbb+wtNRCRqWulqgim
         Ghlk2aMaq6zMicub321xhlYeA3z8tMUnkqdpEXfrr0vHlC5ixbsp8FsG858dtJ+COQuF
         jhnj3FbRpndXQ93r+9yfoHmc3k7wtvzztK29PSiiy3Uhqb6nR2Lru/1FeeJkGCXz1qdA
         QN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d01k9Ge3oJeb+EotweQVjXGt8nCY34ZNLG+24WtV2Go=;
        b=VttMWLATqP558V6N2E+2G3K5m2w/eJmYYyDJYhJRoGwqR0/94KVGkaUkvK2PtSh34l
         9rqjqcWJB3ugmUjxPSasmTcBPJchcp0JPSqhRo3xwXytzpZOOkIByxeR/Y/jaYjJowLR
         Jl1R/YUmE5qru5h6A9y+DkDWhoEWA9X0QmU5F56ST7TW0xuZPn6WzviGvjGpDx+ENtyk
         d5OkBr6XEKuntoRTFCh3XYfCsdzi8EzJ4uRXqNDsVgXoLt9dbBo+eI84tfrzkE1Rd2I9
         iJnSaXSUYtYQRO0Fm1GL55718JYwTYrpJOdEeMuna2/+k9D8JIY7ue+0eUCamSo6+d5z
         YB2g==
X-Gm-Message-State: ABy/qLaIzlIkN+OgiJWvQgouv0Y3jbGl3d1iNxZxlMqfc75yzWyroo85
	EEO/qEW2uey/iqTVSV2HSCbDhA==
X-Google-Smtp-Source: APBJJlEqpyz0+8PVJ3sjU74gxni/QIjS/+CPMvnAUu6blMyE+161w7Q1Oc+t+Cu4L7Yt/AZllW17Kg==
X-Received: by 2002:a2e:a30b:0:b0:2af:25cf:92ae with SMTP id l11-20020a2ea30b000000b002af25cf92aemr15124625lje.22.1689087119718;
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:49 +0300
Message-Id: <20230711145153.4167820-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075202_961044_3402B11E 
X-CRM114-Status: UNSURE (   8.97  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index c2b5d56ba242..cf12426daf67 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1142,7 +1142,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1187,10 +1187,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1200,16 +1197,9 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
-			status = "disabled";
+			#phy-cells = <0>;
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x128>,
-				      <0 0x01d87600 0 0x1fc>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x128>,
-				      <0 0x01d87a00 0 0x1fc>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
