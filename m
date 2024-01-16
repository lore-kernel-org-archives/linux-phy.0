Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A00C47DA6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf4shB9XDJo4rqdPwuDMrrUaIGiVD30kzZUCE9M3NXo=; b=MZVd0f1WvWpJDY
	xyRFa4cXRcELebz/XV+lOAD1pZFqkEE/Sp/kHtfxpumw17aL0vTK3vczT33Pns2+25UckE66NUCa5
	1+wLdzbvBojvahfuQ4MjTQdLRgJipyGx61EHlSNolKIRnFGpJLCz5N5/MgAF399hGgr9eYPv4pyQt
	Y4Ex5JIUDF2q3s1ZeoqRgkIsCnH2JqZffD85Md7cTdhOyD6Didv2OK8zTVwSmkc1k+taLDhQyVg6h
	mENuza0ZeoEFEvvAoRCCFb0h6bE9H0aHyfoyEudZH/xsampnYg9ZqonI1fo6PpigEZmZwGPj7uYfm
	CEwhRe6s2Gm9qpQ+/5FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwf-00Addn-1Q;
	Tue, 16 Jan 2024 01:08:49 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwa-00AdXo-1X
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50e7dd8bce8so11189713e87.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367320; x=1705972120; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZFFBqB7ryOdSAAwgYvTiC16JfI4HoB6cNRG90Y323Tg=;
        b=BxXkeZQLYqEHNMnq9l0YOpqhH+kPk8k9Vx36Yq9zSUH5rIaLB4QN8w99nuN9b3ClbK
         e1FyNhm9DT91Vsk+wwEAml5ubGQIRAvPuQ0O1TxA3osBT3SiK/TMI9WH2S+GdL5glLgk
         27PaG/MdC1u0Z4Z1NhlRu6WAu5KOka+hCIL5zk9+Z4N3sqAZenL/SVV08znFgyvqyWww
         9RInBMf3D9WPHtoV9ZY6aHN5xbOSuQDBGC/YFheZZCmMRMIVUUKymw/IjyBxoc5wGM3W
         wzJ9lf6eL+Fz0CrcAImzNk9CZrictt+s/GxloTEqAXXDecsb6EjPqNZzFDdEe6It72YN
         +A3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367320; x=1705972120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZFFBqB7ryOdSAAwgYvTiC16JfI4HoB6cNRG90Y323Tg=;
        b=RS2r7LQQbmByDrDBjtCK3qh/YKc157lc/9uF9tSMFARLq6w+IMj6PVv9aTNYVQ8JCJ
         EbToWHys/bHxRAFzklJGUl7Ksldvh7juZNvJ49psy3HXhDgldt3cqbISFG6NyqLXKDmH
         k9WrMflb0LyD00IW3OYN9InFkCuH7Z2+jKXAaMYINaHaelOjgs0izQtuUiJrWflnP+Kj
         tbnFypdMFA+otX+HEXTW30yzZEGBj/mgH/N9Mejf95pjv81tq6bglnpZAKdYZwvxfVll
         bvNKsT7Sq0M5P7aNars+Ar4ly2rxr680G+8Dx+y8vsOsZPVS6+Ba+CIkxUtRU/B1No81
         vUeA==
X-Gm-Message-State: AOJu0YzArzQm9dk8n5yXVNnfU5kuHSJj4c7ckxXLVQ/+O6lJwuYhoqHv
	F7mQ3HpiRSJH1Y0wNoFuAcSwveFk+9caGw==
X-Google-Smtp-Source: AGHT+IEJA7Nua383Rqc094PEQsC+ZFremv8cL9WtN7RLcf80l3UBaeRcKPp5Aj7YSdSOgUZHsxT9CA==
X-Received: by 2002:a19:c504:0:b0:50e:d5eb:bfff with SMTP id w4-20020a19c504000000b0050ed5ebbfffmr2445918lfe.85.1705367320369;
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:30 +0200
Subject: [PATCH 4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP register
 for USB3 PHY
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-4-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=f12NIWxuaNF6335LMHvzmeal7J/0jE48+iZdMsjs8pU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUA8BUvO4Wnz7aji2y1YM/6hAjte1eVG47Z
 JNASjDNHYmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1UvWCACP1E1eQ+zq2gm6nte6GNYwnjgkNsu3bQqf3JTyTM+qr7Bxxx/fWTfWf1oYITy+IpqIJeM
 rGF6hjNDw32Q9hACywkkN428oWtcmFPt696i1pj8VUELOeIUi5SxZvsowN7+ArPhUDjtBNJRoMC
 s2dGoqYra9M8xRvQ7Z4FMum/LXjBPzU5Bxnig5PU82hY2xy6Fs3BUDQwXqQRo6Y8sBRZDJzMvor
 rcsKgTZqW4WfyNNoQ0qmxC1sA7IYp5QfxDVWmaZOOpHVDdrGr7bAnRONU9gA8ANy+uhWMdJBiKg
 daVJ4Rul3PnAGpufyUxD3pbO3lV/G+mZ0sjdag3YOCy5GEV6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170844_546987_3C76E307 
X-CRM114-Status: UNSURE (   8.21  )
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

The USB3 PHY on the MSM8998 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 026dad8f5873 ("arm64: dts: qcom: msm8998: Add USB-related nodes")
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 2793cc22d381..e21e5693ba1e 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2174,6 +2174,8 @@ usb3phy: phy@c010000 {
 			reset-names = "phy",
 				      "phy_phy";
 
+			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
