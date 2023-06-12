Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69E9C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWF/Z5+bD3jBaKYgWgDVkj1lR+wSvTvMdUf1LKB8oFI=; b=qms5BCOGnB5jbS
	mwwZ4AtoIWlDwguUobSH6JAxiHdf+Kjly7dUFupnIC2c2hJtzV3lXUy1ouK89D7ZzMD82/kW2zZHQ
	W5drrSU+k1PmMCgNzdVPCIEtLmOlKONZ81sv62smTUdLj5YTTE5/s0r/Mjsl8gwYQkzpyCsMWo8oy
	D2VpPMw7lfsm9UEgM0r7+cab5ylNmIHi9EOamyZTsQMxl5RV1oqyv/n6rB49IWGLrs8NwGjOOEKvK
	MnlpaEAWzz0QUPUO9BF0vzCgnjbZ9AERIn3TjM8uiNbPG2odPNj9yBimvLDwFPft/JGUjAApW6Y34
	TOZ0mxXinH05F5kzQX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eBP-003Mab-1b;
	Mon, 12 Jun 2023 09:49:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eBN-003MYt-14
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jun 2023 09:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zNG+hKxvwpveqfTw49rcUFiC9HYNGdqxVXCMwf/CgoQ=; b=hpV2Wz9PL06J1M97J+dPDUA9bu
	OaIU2+P0Upw5NbTRB/dfb0gNASMzY43AFs+ykWRPN8Jow9lFr6G5srxGCLgXxNleaxhQLoDhU8yV9
	dIGaJCy60tarNq7pCysV0QV81TC5LZzaKd3PXj3g2Vg5NyJclDR6SCq+iRQtyOzictKnYyYCBh3hY
	owjFBXQlgMEEsbu3ncDa5Rxexkx08tEJHtJr1EY/D10Php9ZGGp1lrHlM78L4LGWfYvQOd78mHkRZ
	uc9feNrjL0gN3bss1evj07XeT7L3iAtVICoY5lWQmoRFigvXmesU0FT1BS6y+BXv6kVSnZk+ZjVAI
	BIvFpVIg==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn4-008k3F-2D
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:49 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f7378a74faso29363375e9.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561882; x=1689153882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zNG+hKxvwpveqfTw49rcUFiC9HYNGdqxVXCMwf/CgoQ=;
        b=Sjg97FxEsWi1+NhQKvwlVEh51XvKpb7L8qjO3eSPmnCp+RHYjPs6m0g4elcX7e4Gmk
         q3U1vLjkmrqHZnROyBs/n7xJkk00XMII9dTC69A/BMsdgUAKh6CQ1iVENWho3ieFJxOn
         kpyrUeEyJN+JmDe79C2O+6cXxwvHb2t7vltcUEEX9l5t3wSl7DONd9L87ujMUkqnmc3f
         QLazLkrv1GDOV/9vOl0n3uQDl7CvHNk+dcol5Iwbbh8SCOOuXpQsG0n4CHEkKYj0lKtl
         KjhlWUbdcnrDvJneJ/NH/roITps7vNV+XakPuvBg42ntql0DPxtDl5zempMyWZOl9HON
         Bzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561882; x=1689153882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zNG+hKxvwpveqfTw49rcUFiC9HYNGdqxVXCMwf/CgoQ=;
        b=OTj7aMcxv7ATBGcW+dhb8FWe9REm7W4vTIqLGeNgYvGGdoWlHfiksnLmEAPLiJ2dsw
         ddtpWPQSjNDsS4FGFX6pdvwpDxzZPyhcKEuwgg6z9D+hCvbIv9syhdZWFxIvZvdmPz0i
         to1A6PdT/5/Btr4mSTz4miCWcM+qh7vtKZoKYRXhfUKyPHLTnHGFXZtXqwc1lN4eeQ9j
         jKaY7TdvjUknidFn5gHbi3SqzZ5D3YtL3d8c0zvhcPA3nYN7TPh102Shp4fVgmYFq3rL
         to2pRPsT60hXYLt8MWV0kCFmHe09xK1ZIN8IpMN13CdGnU7IE/DT4P6/9Zp+mnyMcuT0
         rYxA==
X-Gm-Message-State: AC+VfDwvsdYVqilb36+awZJFsnUw3adJSReuLZPUuZLcUkcBjzKUAflb
	B0im05rrgJtj5Gb9mob4iwcFCg==
X-Google-Smtp-Source: ACHHUZ7VSDx8D3GXZ4VcJcb/TSs+3b96OTltaJznbz319l8jyj/BU/MtAxrNF5k8MF/YomUni4Onnw==
X-Received: by 2002:a1c:4c0c:0:b0:3f7:3699:c294 with SMTP id z12-20020a1c4c0c000000b003f73699c294mr5458505wmf.29.1686561882035;
        Mon, 12 Jun 2023 02:24:42 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 11/26] net: stmmac: dwmac-qcom-ethqos: remove stray space
Date: Mon, 12 Jun 2023 11:23:40 +0200
Message-Id: <20230612092355.87937-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102447_052123_895B0456 
X-CRM114-Status: UNSURE (   9.90  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

There's an unnecessary space in the rgmii_updatel() function, remove it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 5b56abacbf6b..8ed05f29fe8b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -117,7 +117,7 @@ static void rgmii_updatel(struct qcom_ethqos *ethqos,
 {
 	unsigned int temp;
 
-	temp =  rgmii_readl(ethqos, offset);
+	temp = rgmii_readl(ethqos, offset);
 	temp = (temp & ~(mask)) | val;
 	rgmii_writel(ethqos, temp, offset);
 }
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
