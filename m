Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC44FC636D3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 08:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaYJJsEwISRrZCblMXXah3NUSNJRA8B7rIpeyJHcjI8=; b=Fg+5JQfA8AUW3e
	p0MhrrpTmJRsaeKkKCFs8zAAmvMlG8tQ397wJCcgMqM6EJVbKmEb92t+GBbg3NSU6ezhFA77meYNl
	na4kK5z3+QO6Y89C0Z5sYPwbPGwIIvXZy6ZHWqvAqYW5EJubmkMSuINxd9wFdMcuKC7C4unlIhbBJ
	bAGOC4agjbDnGR5H/WIUFceOIqeU1XPYh+VxnzBzZUobVBDe5iXe9v6ZJ9M9pDfSepIAz1c+MUxA0
	MuNGeK+guQx1V0rJoaVRKMPKvHo8UWkZ6dhitbmMzh69ktcs3aMPgeJjePniRSs4vUkDNS/VaWw1P
	O9VJX064/N7Sdo5dKRGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6RlR-006YZc-0r;
	Fri, 24 Nov 2023 08:42:17 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Rkp-006XsA-2r
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 08:41:44 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32faea0fa1fso926956f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Nov 2023 00:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815296; x=1701420096; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CvmOEb1ckbbB9zBBB0o82fMDjd1uz7C5pNwKHHdJSYY=;
        b=xFQAjFRwyX88odexdb4rIe/98mIbL6fgiGJwgURnBqsJU42Gb1QOJdJn5fNTKlTuQA
         6tiAIj3oyyzFWMwVKxlRozCai5C9oDk2PRHfs34xL3s0fIT75B+9fOy7GNjVbRGdOq5+
         KBb15Iv4r83AfZGaxopBKZvKlmJ8YtSYy0v6cudPufh4++CAdHKZVH8c38WGBUHRVy00
         bYOGDOpHZxQWRM6x+4QpEIhau/4tI2RFajPJD5LnKZ0ApMn9sBaCYt0oUAniwy3tcA7K
         +EwRKu2JZ1AbuO9onkZOa9a6ERcwk2n+jw4F/AAvJZu0jouARym5GN1t/nlhftk45LqJ
         vHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815296; x=1701420096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvmOEb1ckbbB9zBBB0o82fMDjd1uz7C5pNwKHHdJSYY=;
        b=hDmYa3vrdGX2m6PstZnzzWM5YknEONldLuX626z3X+HIh0UdFEJ//tIUxij0VAwmTS
         5+DIkr7/4B0zfMkVAA9MqPPDacfrPtQYTJV4aQzDpqLzkuPJtUXuYSW6kQnjnnP3ROXV
         hAMtqA0Hgvpp4Ma76vsC83frTco5Yrz1Vzfi+BcczNoJ83z45y6Q7s5EBARCYFDqMuSM
         MFmvWJ5gSjMqvb7AvktHUa5s5gXhp2gbcviHAwR5T+asHjbFTclYq1OhjJM5G1NzIKZ+
         AdrLUJ8dRVLHFyMWR7Pt4gduOR/9PLkQRC8qrwIJ8jbq7ARYlFyQh0Q/Nz38MZ30Akco
         uZYA==
X-Gm-Message-State: AOJu0YznEYkfM1CmTYOCjOadpKw1Em9wM26D0eeke/VJJilgy+o1KO+I
	EvkMWsZqgQtayb6PWlHO5qiYrA==
X-Google-Smtp-Source: AGHT+IG8oV5vR52wvy6RDc5unbTyrdle+A+ZJEr+VxtPQs/QhVcyXpGgV/X216xPtP580nNksVLMHg==
X-Received: by 2002:adf:e90d:0:b0:332:c585:4005 with SMTP id f13-20020adfe90d000000b00332c5854005mr1606864wrm.13.1700815296061;
        Fri, 24 Nov 2023 00:41:36 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:35 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:20 +0100
Subject: [PATCH v9 09/12] drm/meson: gate px_clk when setting rate
MIME-Version: 1.0
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-9-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6wj78w5SzMRVYfTnHYpi/keB3/pw6jAwnhprIG9LUDw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGx2k+lycVMXd4CGKdFmLLkeE1cSxXUGJmEH5Nt
 WyqAnCOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhsQAKCRB33NvayMhJ0XmHD/
 0a1u9pKRgdiqiNPEVgNnpvsoHZQCkWeGDJUhl/1pzTgkKKwI42m+N0fYEJSu+tGjebpr24UosgSDpb
 Hdwxq8/ts9nxnJrpXxDKUQgCs66lF/JOr3TntrVHMUh+z9IoiZheukKo7E9q9hXdTrqIJDNJ6MBrCr
 M6N8VZAuqfRdGbaEpd7FEX5mQCaN6lUruEfC/rV7D1PF/jSc1UDjGevThxuJC3ngOF08pchl00bddm
 Tl6iBVLDDzjvwipVuSd0y53J7R3+yvUhONC4GYqZKlYAQ+lamPVJjDCzLqhkxSbSn71KeYkm8g5keW
 e33PL7GAouKsNVgsiK2a32ZBG/N/MEH4IGTvqZq8Bwi/zy1O2K3zixX8Dm1NV/2CjgF1gFU2MSdMCd
 fTAQjiTQX2Sui2sTWsMRP5rhM75Thas4AAr7DC/2g4HCUNiYNlpJPLrPRDSeI9wEYBFezagPZ7HOIY
 3gueBoeolSSLsKEeZWRckNUMmjLChDMtdCh7qdEAwP01Ir5DHxrQZFHyRgShFyj10HMjIRjiPF0svt
 /rjcJszqh8GJBUduVrIMd2hdP+4KWKXqmPCam/JWTZn2V40nReclE42GEEi53eFlaETzHcQuRz6uIp
 F/Up8XwbOiSWancRcIvIDmtt5uDD7vWHX6/nM/NUWEKJQtVjLKuxBwhIILpQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_004139_997774_F419754E 
X-CRM114-Status: UNSURE (   9.56  )
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

Disable the px_clk when setting the rate to recover a fully
configured and correctly reset VCLK clock tree after the rate
is set.

Fixes: 77d9e1e6b846 ("drm/meson: add support for MIPI-DSI transceiver")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/meson/meson_dw_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
index e5fe4e994f43..72abe2057ec3 100644
--- a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
+++ b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
@@ -95,6 +95,7 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 		return ret;
 	}
 
+	clk_disable_unprepare(mipi_dsi->px_clk);
 	ret = clk_set_rate(mipi_dsi->px_clk, mipi_dsi->mode->clock * 1000);
 
 	if (ret) {
@@ -103,6 +104,12 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(mipi_dsi->px_clk);
+	if (ret) {
+		dev_err(mipi_dsi->dev, "Failed to enable DSI Pixel clock (ret %d)\n", ret);
+		return ret;
+	}
+
 	switch (mipi_dsi->dsi_device->format) {
 	case MIPI_DSI_FMT_RGB888:
 		dpi_data_format = DPI_COLOR_24BIT;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
