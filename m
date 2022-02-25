Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 406E2C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 03:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQv3sddA7vMvT9kmOm+dh2Ngj2ysdRkuOG9DryQRDY0=; b=HH4OXBcTwidJ/N
	d4C7AbbxZHYR8iTe9hbkF6AszF3nNdQMre5u+ZDTlWCSqvFw+RfzYC/ob3JuHa5H1FECpGHs+9PXR
	jPCVw1MXVINs65/MFMpbOjLzolsMbd6Bg4bmgF//oXHGAoBsfZEvO96DQWg304Ye5+UbPBvuw0Wfz
	2k9hydP0pIhpTCRiw9IvIpkuUFCaMSlW2xeIFgALJ9Op4kHHhsVvFEsQkKfU3pNUW5YaZAhWS7EPb
	wT3T1nLg4u2nYIL7lTcpRdlmCqENN/mUiPwj1pNzUjm6sMzp5lUejBeJFeXncld24b/LtEI6ivwev
	NiWGvNTexHQaJjskxKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNRRZ-0036zG-Lu; Fri, 25 Feb 2022 03:38:57 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNRRV-0036xZ-Ig
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 03:38:55 +0000
Received: by mail-oi1-x230.google.com with SMTP id 12so6025965oix.12
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 19:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oJp8hP+U6of0fVJudV+JnYfYQm2OqbcYZL17Ud0j5hM=;
 b=K14qvOADAvKamyct36KBBctciQ880Q/jd9swL7Wwln6RN3gLFMm+v2gtAuf9BGVPB4
 WhCU6t9gKeInxiNFTAEkp5Lk37mjZEQ20ZNl+e6/BRMk5NN2119tSvlkrfL47iSHOQp2
 g7KtWVz6LGOzmxM6Y9CYQtR6ef1D/l/Ni/YpDWLFZtPMMCd+TjIGy9Z51f+JWDURBXh3
 lI8mokaP3KDuA+Dbv/2forWLn/1If7RLE7tl8EAuVP8qk+aNUgdwIC+MhN54BL0FisAg
 a91LVNQC0DyaFqtIwZth1CHP0dHqX7DMnfzmIIDP7ZNXeQGKsDXtJOrl084h2gqaZ+U4
 6cgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oJp8hP+U6of0fVJudV+JnYfYQm2OqbcYZL17Ud0j5hM=;
 b=u3lChDd6+ygaFAssoVErZq9ylTzcisZ2jsDCCZ7lCfQ4HiM5GvUZQuzSusHlimrKLb
 YVGM38Qw45a6X4QKESpfcyfx+nUsBcrCFZIEsYiwtVSzp0G6UTT7zsV4f9wbqFmVRSfi
 8aPpoY6PrrbPeKd9x8gCjo3erwfoqWngGAsOmEpnVGSEucV1RG4edQAecJyJ1L44iOEz
 73G55wcdNYLN8tmmgMHRI+Rhc0xeqV0cRxuCQNA4asiZ8MY+DnwIPf9WiWCGfxe2rcQO
 6kki3T8YuHwcs5BtllHH9ufzifa8CGJtBui8oA2VMsMVQbgJ2y3AUpRQDBwEBLNpPTtY
 vP8w==
X-Gm-Message-State: AOAM533YHXm47s8e9c9A02+Axky7DlzARZZmtmz73iolRWB+xURK1aIn
 cMx1UmEdLcIcj8C9DHHoQ6YPbg==
X-Google-Smtp-Source: ABdhPJwBbQIj1/fURhNGdW7Jo1P6bxaKV4zdISwcXu6DRZDIkci/8FSsBPgQM6lvVcb0kVeEa+T/mw==
X-Received: by 2002:aca:3e56:0:b0:2d4:c902:b851 with SMTP id
 l83-20020aca3e56000000b002d4c902b851mr627205oia.114.1645760332736; 
 Thu, 24 Feb 2022 19:38:52 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 fq14-20020a0568710b0e00b000d4492531a2sm809359oab.17.2022.02.24.19.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 19:38:52 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom-snps: Add sc8280xp support
Date: Thu, 24 Feb 2022 19:40:49 -0800
Message-Id: <20220225034049.2294207-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220225034049.2294207-1-bjorn.andersson@linaro.org>
References: <20220225034049.2294207-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_193853_647066_40AD2FDC 
X-CRM114-Status: GOOD (  11.41  )
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

The Qualcomm sc8280xp platform comes with a 5nm femto USB PHY which, in
contrast to previously seen platforms, has the SIDDQ bit in the COMMON0
register default to high.

So make the driver match on the 5nm compatible and make sure to clear
the SIDDQ bit on phy_init.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 7e61202aa234..5d203784f75d 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -32,6 +32,7 @@
 #define POR					BIT(1)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
+#define SIDDQ					BIT(2)
 #define RETENABLEN				BIT(3)
 #define FSEL_MASK				GENMASK(6, 4)
 #define FSEL_DEFAULT				(0x3 << 4)
@@ -233,6 +234,9 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL0,
 					SLEEPM, SLEEPM);
 
+	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0,
+				   SIDDQ, 0);
+
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL5,
 					POR, 0);
 
@@ -275,6 +279,7 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
 
 static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
+	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
 	{ .compatible	= "qcom,usb-snps-hs-7nm-phy", },
 	{ .compatible	= "qcom,usb-snps-femto-v2-phy",	},
 	{ }
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
