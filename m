Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8BECC54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NajxF3ShR3DV6kTFwLl0AhSOJeYlmuM4kVisYgaTwZs=; b=vY9rWAMXaXadOr
	tOs8EfJVehGss1JnUA6JvjTlUqKR7MO3aiotWq6XhpunpKn5PhIXtW0obZeF31HqGWJRG8YQrE1nL
	RG7fo6o0l4+U6R/krkWdxolAPeOg8x+kdKo+NjSIaa6t/kgcZq8i0E7T3HEkd4hg51p2niCHif2Xh
	Jb1+HNjosMT4l51VsI99HJz3pcf5BELlQoCmXMy6tUOocY0K8k60OL2gQjQSStnmkmGkd6fPDx6pC
	DEMgUoruLGVsAvV5rJdP+us5R9yu0nTPFf9AxLUOjBjU34K0ecRspFuacMNQN0KMiy3dTgJgiltDe
	Ok/SChpB30JN+aeCc+8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1et-00AsFK-21; Thu, 26 Jan 2023 12:47:15 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1em-00As6a-9T
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:11 +0000
Received: by mail-wr1-x435.google.com with SMTP id h16so1627524wrz.12
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Hiqiqd1r7bxhHARO+brBurquXICZ+FcTy3sXinUo+w=;
        b=wWKOlLw8rfTnctLsMzyMyFdaHXAUqlNtWLv9hfwRYMCWd+cYvqxskBNosNjTs4S7Nf
         yE5k986ugAPQfFBSf0IKTekJL/+BTsP4170ikXfN0mA/vVhbwlqi2L/qfKgmWd629HEL
         7v07altHpXx2oXep4eA4ZvgBnOeDWUA8tHqulJ0SfZIWdda64L0cSUm6ZYtNaqrcuDHe
         38Epo150BZsuvGB+fpsc84ypijEu+4b6sRoQcLqhzLG6ecl8ofG5LdB8OAdGATLsNBNw
         HdQtoyFAsTHOXJGGG+oJPoeMuvLcbk8CB22OmbUZ4wgE7wEcyq/Wyu5o9s7L/IiPGAVW
         DK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Hiqiqd1r7bxhHARO+brBurquXICZ+FcTy3sXinUo+w=;
        b=4argDSqCL4AgRaMQ0o+Ao5Y/bx1GNj12rlEH5ePynn8tNPyuKDHUA/OOt6jx6ANqqQ
         RBtTZOmIkhbaP6Hs9ePnQVOzbOOG/UMfNfPiCfLiQPg3bVOZrb/Ko1R8MaD2ZngVV2XB
         ooqcTjI/tFCVJUDH0QXY2I54nIJUACJfZLYMWGV+LM1jc2d3pk+2BW9iULe03/Zb9p77
         iOWf+b1F/yO6lS9BfYzNkUqd3NeR8n7n1jAqCtmyV2MeXYOIE1uHk0gw6rNvdHPAcSPw
         cRO+DZy7bEC8xS1WhriuKu8faa8BoPzlTLfd4SHlW8rld/FvReevqDjEZUlc2oGAorU2
         uNSg==
X-Gm-Message-State: AO0yUKVXemUtVW0WeXEYIR1MNjMW+NiHvLqjPDfiso9KYv4DgC9YjaK3
	eqxoTQ2mX04P910PxRe2WfdtoA==
X-Google-Smtp-Source: AK7set9q53x1okffv7MXEXBGbFJ2Lkvy3vzXs8pafMBOjEDFgac2KcQARMZDAHCW76jagk0jgidPYA==
X-Received: by 2002:a5d:50c5:0:b0:2bf:b54c:6d19 with SMTP id f5-20020a5d50c5000000b002bfb54c6d19mr6804012wrt.10.1674737223931;
        Thu, 26 Jan 2023 04:47:03 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:47:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 5/8] phy: qcom-qmp: Add v6 DP register offsets
Date: Thu, 26 Jan 2023 14:46:48 +0200
Message-Id: <20230126124651.1362533-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044708_474710_6B6E8679 
X-CRM114-Status: UNSURE (   9.51  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.
Add the new DP specific offsets in the generic qmp header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This patch did not exist in v1. Since then, the DP support has been
added.

 drivers/phy/qualcomm/phy-qcom-qmp.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 148663ee713a..7ee4b0e07d11 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -134,4 +134,8 @@
 #define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
 #define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
 
+/* Only for QMP V6 PHY - DP PHY registers */
+#define QSERDES_V6_DP_PHY_AUX_INTERRUPT_STATUS		0x0e0
+#define QSERDES_V6_DP_PHY_STATUS			0x0e4
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
