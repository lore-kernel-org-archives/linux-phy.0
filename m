Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE70C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 21:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W39+pMe79j4LTFZZl6v//D7uN+XWqTGn66vrkIpHaow=; b=zO06wTrOgSOuU0
	HW6vSPThip9lNl/9TGFujcY/2FX5CFX71GR9u+b2c37WyjC8DzwpaBHhiakyO6XvUfXLAJnNB0amm
	TRMpIyr7y9/n/Dq/7TuTQ6rcVsESF2C388ziq1auie6/Obii8dUuDRd7NhqQCnjqmnNsBHLNxt0Qt
	VIVaG4cqoPiBHIbK2CauMseoJ5ZzkOKDiNNppvE57ChfupMIkwDqScS7d2llGURatvTzrH0OhX3xJ
	YSKLgqWi3+P1EH0KE/D7Eb43WXi887uEX+qtqDP3qL6flDS3sdu7AGiq277MmwOrswxCA3WiFlhIO
	qXF0dJrvWGoHX33vP+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqhel-001jrp-Ix; Thu, 03 Nov 2022 21:21:47 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqhei-001jqV-Sh
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 21:21:46 +0000
Received: by mail-wm1-x32f.google.com with SMTP id i5-20020a1c3b05000000b003cf47dcd316so4202502wma.4
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 14:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBi1xTEb0SF667Jza54gm5V6cR58OHc1YhW84qRd8ZY=;
        b=pEpBEi9mvFUmu+V8wv+E4uWSllh8HKI11O/WhiLwohawSDkKp3f4WiHG8k6eFuQupN
         1Fo8hWGbqymC4ZYnuLbxp1OwsD92umaBOaVFejXTmpHluITjQjDFKqsW/ODtfSY+jbUi
         fSYENdAOuVrOVUr5wX+IvPtt+B3ny1puRwGTi3dTukpwSm71z9rJZWiOMKpV9RZCMBZK
         tXi7iDW1ggE+JLPczofCGcUJ5IIB7EcmU+Yo7njOlXjg6kPRHxjurd7NIYTpsQDvSJNi
         aZn1cpJKIKi2sOoDYny5eCU6lu49qXlEOLMEw9dczZB17MHKx+M2NAZFyP0ejK4tGqiy
         J6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EBi1xTEb0SF667Jza54gm5V6cR58OHc1YhW84qRd8ZY=;
        b=jbKBGtUOXhsl2lLS+kmzm8x635N3941KNpcxL82HJ97P5mWKXF6Umd983cYXJ9E6lM
         BVwc4B4D4JoGf9Tyj7k5U/UUZygV0tWLUGQbmJRlk67IfJqEjIgzaN5d0CGTJ26BjmaL
         22pD+h/6cnhH+EYslD5lmhuv75nmlUJqk8yqmVWG/voOeTjMGwErquf2018u0gKeHawK
         aADvFtPaMUhOcL4eb/VlgUknYK6uULo2JksluNWWG1KKimOQ7dYDawTbnAKGWw8Ly/6H
         PozjrxfsOENUcznIxE0ow2LYHgDv1mJiiqh3c6jKfhvkPSx08IGu7GfkrPiqi3fbC3ac
         PxVw==
X-Gm-Message-State: ACrzQf0GvwSxiO/k3zt3o7mrz+P6kOtefgXU/MQEk9hkKkVR8wIbKt8s
	BnWPtepfWMwXiMomsnkcEls=
X-Google-Smtp-Source: AMsMyM5z2kO3XboxYINuKbpi6PqUYVuHI6ShBZBQbgTxcJLiIelbbB1yygyhNZLsHD0YytDk2cIUww==
X-Received: by 2002:a05:600c:4486:b0:3cf:6e1d:f4a5 with SMTP id e6-20020a05600c448600b003cf6e1df4a5mr18119129wmo.85.1667510502516;
        Thu, 03 Nov 2022 14:21:42 -0700 (PDT)
Received: from localhost.localdomain (93-42-71-18.ip85.fastwebnet.it. [93.42.71.18])
        by smtp.googlemail.com with ESMTPSA id m29-20020a05600c3b1d00b003b47b913901sm6968320wms.1.2022.11.03.14.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 14:21:42 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 2/2] arm64: dts: qcom: ipq6018: improve pcie phy pcs reg table
Date: Thu,  3 Nov 2022 22:21:25 +0100
Message-Id: <20221103212125.17156-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221103212125.17156-1-ansuelsmth@gmail.com>
References: <20221103212125.17156-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_142144_941801_FCB0CF9F 
X-CRM114-Status: GOOD (  11.58  )
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

This is not a fix on its own but more a cleanup. Phy qmp pcie driver
currently have a workaround to handle pcs_misc not declared and add
0x400 offset to the pcs reg if pcs_misc is not declared.

Correctly declare pcs_misc reg and reduce PCS size to the common value
of 0x1f0 as done for every other qmp based pcie phy device.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 9ebb9e2371b1..95d7f49bc61a 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -406,7 +406,8 @@ pcie_phy: phy@84000 {
 			pcie_phy0: phy@84200 {
 				reg = <0x0 0x84200 0x0 0x16c>, /* Serdes Tx */
 				      <0x0 0x84400 0x0 0x200>, /* Serdes Rx */
-				      <0x0 0x84800 0x0 0x4f4>; /* PCS: Lane0, COM, PCIE */
+				      <0x0 0x84800 0x0 0x1f0>; /* PCS: Lane0, COM, PCIE */
+				      <0x0 0x84c00 0x0 0xf4>; /* pcs_misc */
 				#phy-cells = <0>;
 
 				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
