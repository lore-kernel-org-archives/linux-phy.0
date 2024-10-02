Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C39ACF31B9
	for <linux-phy@archiver.kernel.org>; Wed,  2 Oct 2024 20:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1MMiHs13+4g9tdxo+M+C+M4Pidmzpayy174nAglZpU=; b=roPTzCYcoec0oO
	V8lA+ddneUJ89Oa9IEBE7aU9MuNXLMXd/5CMHb9L+d4N2qgBMK7FibRVeGnuiJj7UXHpAtQmB/YPk
	VMV5lDF+GW8seElpnqRAeRa0x7frg0LZOs5L+IJCKm0X4lk4/aIoytDgUxWaitUT21ucCy/ERqLJv
	+D+Mn6JKp4jOapDgNIZkTX+2X9to3luDmcbcZoCxIJCw1MHuNLhy5tZosqzkRwVuFbo9sGs+bY4gd
	gb79u4a+g/2jHXrAPXBs8Cb53cR0MiJTiAbQIen3dZcrSIfyCYnPErndhHz558U6xUHv1nVQp0I4c
	xXkfdU6oTgVMt6BBxshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5o6-00000007O6F-3TtQ;
	Wed, 02 Oct 2024 20:18:46 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5lg-00000007Nnx-0VCV
	for linux-phy@lists.infradead.org;
	Wed, 02 Oct 2024 20:16:17 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-42e82f7f36aso1237395e9.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Oct 2024 13:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727900174; x=1728504974; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jX211dAZAvJkuP8OIZ+el1p2Mcg021bO+6I10YA2EY=;
        b=rK3hDPmiMu30+MrjP8OKO7OIWEVyLI30H0lG4L6gavBMqtPA1DsvZUXd4kMUoJb42p
         lvnz5EVkxqWE3RFl3ML3wfDo0AEuHRbXPw0edCmZEoH255zWkhfzoatJ5UPRwLPytnf4
         rxwXGBwuzkIl/I9Pd1oIPBjQGV04SoPwJlQipFs/gSK6PQe9+aXRv2SP/XcEHvkDLr4E
         9cAiFyrea/eWebNhJWTCBN5/dfYvBuWw1oT7LIqqRLwnU4H8a8AJ3830+TNT/hFeIerG
         sQhlVEZLsaPvwOEa8YHtKxaidKTBxcI3pbabaOcven7VhjNAHc5XqxZEfUya8YVvtOOx
         jsgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727900174; x=1728504974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+jX211dAZAvJkuP8OIZ+el1p2Mcg021bO+6I10YA2EY=;
        b=wXnSFPTCTR4PjPz04mNabCij5G5eXVj9/s19zYNmJuEkywFsxx8FqF6quMFdmlO0td
         +jFe/C7Hzh0r7052MVmepOf+QK5J5ARN2UVIlTKtwgMM0D2EhuPl2yLu9+4hbP63VOUP
         DKqaYhxCvg+dC9/Me/vGWgqx95z21SFc9RwxR2LGgkLKHJnPD7QrMcQvuxA4Uo666McD
         YmOsLSlLMPvrYlbQ/4XEBV6m8MNu9B1KFDgYb+/qAQWb0bDtdFr7H9Uyd0DFySr0cOCM
         F4DmudU5V2uX03bW27iafBxQ77GdROlq7Dx+8PLQzZUosqPvEnB5W52EbtBouguA5c3O
         KxmA==
X-Forwarded-Encrypted: i=1; AJvYcCW/SoqeLyNJg8je5pps0qdEA/+HUxAHg2DcdtM7vjofb2cSG7PYh6Q1r7NNBTMWGj+20MGvpn/e4FE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL3hSvlNYaUAqr5glci6Sjt5RdguUcM1vPXgyW+M5QNv9LhAnu
	2n80ejAyK/LIfH72wbjkNd8LsjQK/pa4g9mYU8Whq4/+7ocE4dNzUNoOazOF34s=
X-Google-Smtp-Source: AGHT+IHWRZVOeFFozi3DIiPiL+943vH2vaAy8MMudke5kiB5y6RE2CXPLw9EOtOlNRxTNhpGiUSfiA==
X-Received: by 2002:a05:600c:3b05:b0:42c:b750:19ce with SMTP id 5b1f17b1804b1-42f777b628fmr32913575e9.1.1727900174107;
        Wed, 02 Oct 2024 13:16:14 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.66.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd564d2e8sm14850600f8f.18.2024.10.02.13.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 13:16:13 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 1/3] phy: Add UFS phy hibernate modes
Date: Wed,  2 Oct 2024 21:15:53 +0100
Message-ID: <20241002201555.3332138-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002201555.3332138-1-peter.griffin@linaro.org>
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_131616_187769_5656BEA1 
X-CRM114-Status: UNSURE (   9.39  )
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

Some UFS phys need to write hibernation specific values
when entering and exiting hibernate state.

Add two new UFS phy modes to the phy framework so that this
is possible. One such platform that requires this is Pixel 6
which uses the gs101 SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 include/linux/phy/phy.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 03cd5bae92d3..1874e55e2bb9 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -42,7 +42,9 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_UFS_HIBERN8_ENTER,
+	PHY_MODE_UFS_HIBERN8_EXIT,
 };
 
 enum phy_media {
-- 
2.46.1.824.gd892dcdcdd-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
