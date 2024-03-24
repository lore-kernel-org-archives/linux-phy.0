Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342CFC47DD9
	for <linux-phy@archiver.kernel.org>; Sun, 24 Mar 2024 18:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n133kywqYCVKiGkvQCghmVR1l7DFv6T9/srRP8iUBfQ=; b=xm+P0wWeBjpsWx
	DDRbsCAm9g+yMC9+SVRI9Ph/I3EpXo0fQmfeFR/tX3MG/x8Dx3HN8FJiOfjzXGTc8r3OVYoAKgwi3
	wqf31PorWUNS4YYSM61pTiihO6B42VoYzNfxzEqaVKgxWGd/5PZ/fMa9SDcmeYtGQizripuDPBchM
	DTxUyxZCHiBEbOy22LhMixDjIdnTduVyIIJXEUze/ZOu/Cl6hiP3rllHXBN5IMtWx3nKIwje6D5Ss
	6d9lxKiIT8jM5SUoiuSbnTHdy3IenlsX/dcrOY4t1qFpftQn0OnZTx3Cv2jz375vSbDhSs4lTpvmX
	JhLP1sJ08+vmYSNwWn+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roSvd-0000000DESG-2SC4;
	Sun, 24 Mar 2024 18:50:45 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roSvY-0000000DEQK-2yTc
	for linux-phy@lists.infradead.org;
	Sun, 24 Mar 2024 18:50:42 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so478194366b.0
        for <linux-phy@lists.infradead.org>; Sun, 24 Mar 2024 11:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711306238; x=1711911038; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=ftOFAF60wcpPA5PRbJt+AEzDd6Qo04MXBr5EdhiR54bUb3Z9nkUbwkhIR7Lj/cGmtM
         DFQ0krSHSA/MH0C+HJM7bgXxp2RLkK27hGpi3XNtUIet9EokKJzow3ksjRHVdCccTT+t
         gtsAIEYVJIAHJMqsTjI2e8FSbyDL1TSPr0QvW3GiOzc+1BKyvKIj3nEqV+r0NdwN+GeB
         h1/AlPjJ59J05xAM/cy/zic2eiJODJscZ8806iCjcPW7FOqVkMUDtOTTsZbgKhaOdhL8
         kI9mqII/Zk1D4tNZmItPXy5hFMAugOmEyQN1pD/CpwQzHjM5bYyb1VpN8cFM7TB2hg+S
         IdFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711306238; x=1711911038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=lOYZ4m/EJvpnMcGTKIPopj5kFjq+pH0Y5MZgMwMXdoy3+zkNknyUMxu4s4jksNk61Z
         K+o+Cd8M5UEfQt/AKsm5bFojjsAm6cf2og9Rsm5ZIk9hRgGxTkKJYjAeirI7gfAnxKmR
         45vxdHsrv3Neg1MGbtBtWE1ZqOh3asig/XgZ3MEpBVlUzmRJzpUUmolmYQe+63cp1xMf
         kRUUT7LEVgaF+mHRuoq0gj4Km9oQixFkvWb/i2v0DrZzx0d3u6Zr2NpbG259EtJ16N8t
         T/MPLCRC4vt8xZG6uRV/75BYvlo4tiaIbpEIQtAZy0QjY/MJteelAzjBhDpEGJkAAdwG
         P1mw==
X-Gm-Message-State: AOJu0Yxg2w3mkRsnsolqTLODBdEaXnqQwzj39rlTtEu6JOCwpW0VlxUk
	L/gpRSHk/hI03U0id1TuRSuSig7wOuhI+jPR/1sFiunGYNSS051GJZ28YsfkkbA=
X-Google-Smtp-Source: AGHT+IFpaLpaD9DR9dWYOMiX2pj9Pu71KXZWIlpnsJOHVrOCZWTzkvOiza0oO/K+MJBGHCvg3UERWw==
X-Received: by 2002:a17:906:b243:b0:a47:1d01:bb8f with SMTP id ce3-20020a170906b24300b00a471d01bb8fmr2788482ejb.31.1711306237970;
        Sun, 24 Mar 2024 11:50:37 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id kn5-20020a170906aa4500b00a46524d06afsm2188136ejb.8.2024.03.24.11.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 11:50:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sun, 24 Mar 2024 20:50:17 +0200
Subject: [PATCH RESEND v5 1/2] phy: Add Embedded DisplayPort and
 DisplayPort submodes
MIME-Version: 1.0
Message-Id: <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmAHX4iS0d2pQK1abiEyUGqEBZHZJ2E94lwhHzy
 SV+OHdxdqWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgB1+AAKCRAbX0TJAJUV
 VgDTD/9P5eObpOH3NwGOJBXgjEhwh08WrSARxONu7d4ai2ARgbmiOc4l2h4FgMxpr5QtIxwb1D1
 BJEJHZl0KBpFK/5HNn3ZZQtgGGcpp1/LzYNvIB6P5TgRR7yxabH9LzeB5pBXaK48V/t7+UM8B9S
 PNhuJ/W6PYW/Nj0so7WCfKG/7XAHxxO6M2VcJ5rMyes9mTdzoeBXeMwguHamavAJ/0+UNPqPyBa
 OLD1Oe64pW/duvMqhoF4s2PYVvKBDUVMUMfPvQ8+yhizbdNM7fYaDxrI89yRO4F7QjSNMSxQLo+
 Hq/orrnfowW7rQK7EFTGVYRuxLiQnDwj221uHLG6sDHLnAnNdH7h3GPJf+tWkAyMSYNHmOCW3TC
 FSTSs65vOz7gvtDKWqdFkpoKC1v0/X824VcWGEDx6bs2oPdDm609wVAWN/1RbMyP84uhRH93clP
 E+c4/DciD0NHcQtBW0KgdlcKZtLdoDbVT/GrhTaV53VWHAasH+ffqwWtlbW7qQyNvYw2ndy/9Qo
 1sOkrPQ0b+ZOb/s62BouBwGjDA01UyKE8qXhbl9pEJmzCFjI7pkjftCgKPMZgwDVZNqd+a5ot6d
 MV1odRIF6p7D2V0qMyTt+YEoQMdVH5OU0JQ8khnO5aW2nyH1kVPWmEiZMqx1Wg8JEwaFB7l6yyr
 y83z4hvCjBDyKZg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_115040_782844_0576D1EE 
X-CRM114-Status: UNSURE (   9.23  )
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

In some cases, a DP PHY needs to be configured to work in eDP mode.
So add submodes for both DP and eDP so they can be used by the
controllers for specifying the mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy-dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy/phy-dp.h b/include/linux/phy/phy-dp.h
index 18cad23642cd..9cce5766bc0b 100644
--- a/include/linux/phy/phy-dp.h
+++ b/include/linux/phy/phy-dp.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define PHY_SUBMODE_DP	0
+#define PHY_SUBMODE_EDP	1
+
 /**
  * struct phy_configure_opts_dp - DisplayPort PHY configuration set
  *

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
