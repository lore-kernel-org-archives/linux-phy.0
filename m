Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEEFFC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSXpGlnSvaVvhFce6UVD5fxvqRnQADP0rclw3kMKHVY=; b=Z5Y1uKXMcIe6kj
	xTmHFQfpoWS+WN+0ALyVL+YkiQ//KTeg1Yz6pUOFcjrxqJkjPY3Q6+MyPqzeQUMpVMjydeLqfGBHb
	Yhvz5AM+E2NAlGBCVOTZ3LNUHhMKVxN1EwnKAzvc+BK6meIpyyjKIKbHiKWriwmmM3iSP6Ytue+1U
	s2mSrmrmlX/pPisyG+XQ7ff4KZow0Jhwl2baWBPYKrZZJ6HblCXLFdfB70cbDfWzU3podGIMpho4c
	xVogs9Fdg56El7WwqO7n9ubOmWW3mgKr8RVd9/mblQn2u41+fhkSsn6JH8P3mQ5NEA8nQYuZQuytw
	rkTFtkEluDRLU9KO5A3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn1-003H2g-0w;
	Mon, 12 Jun 2023 09:24:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmv-003Guf-27
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:38 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f624daccd1so4499884e87.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561876; x=1689153876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=olcveT5UP1VtPiAz7clK/JVsOLfG7BcQJiP17zTmSVg=;
        b=5L8AZQCENa6wk25Wk1x41BvLjZPoG7GaKW7WRgHBzPesHTu+JxqbkF4slD2rDK4+2a
         1MeffqJGHvG1Mxz2eOg0xmGDid0CWmHPp2RYxaiXDvuGxNiM6tMcLy8i+GoDCIo5SR6X
         aAwisPKSBZLSLwHuiroOnFmweOMUjutIYsUVNpCVuAWxEVLZ5TQjz8recM1V34U1oLh5
         i05JqSQiuiZiodJ2P141uneoMY9uf8Qpu2jau4D8v4dmqHKYo/vC+S7uysmfwNgzJWuO
         m/KfLrmuOcZnsTJJgPkluArQZGR6EJS/Pnymu9rNxuJpBTox48p4hro1Y6B5LKKCQsRo
         YJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561876; x=1689153876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=olcveT5UP1VtPiAz7clK/JVsOLfG7BcQJiP17zTmSVg=;
        b=eoq4WjSeUSShWBNqll8NT/8IaRLfjlYjfV64iez8aQGitO1b4bnEpnWmP/CIC27yKG
         StI9O/adJ7/ZqxiaaxtGRd8kps2VgfKBzddDVqR3DZOoAhDotDbH2pLeis5wGfh3MDHF
         Bk+vLeyyMOJd+YBZ023evBv00cJ2wkWAIAIt6LqWlXO+TV6CAK87LwK0N4uQEQRLkX4d
         fVjwjnJIB+EMIT7V2zfH8Sc+mM5U1Qk5QzxliGfdWvfdklTklZzDBvaS9VHx2YzMSrDA
         vzx7T1j10iqspQpuoxSk3m6oHYgPkb6SigTfQxmTXsUWpZTDmzXf2oOaUJsOkI6dCmx2
         00pQ==
X-Gm-Message-State: AC+VfDw3xve/cEsxOwVXTYyQV2AfO0uSITCj7gY/DNbN5aLWPlPg1HaD
	f3xZkkumXJRXd5qzCpGLTKgesg==
X-Google-Smtp-Source: ACHHUZ63Ie+qYkY7+DIb0ohPjU+I2zYtAsyLTkT1qM0Lelp1CrY/eE3emkya9+jlOwfhsFt6Lnqqpg==
X-Received: by 2002:ac2:5b1c:0:b0:4f3:af46:1941 with SMTP id v28-20020ac25b1c000000b004f3af461941mr3498469lfn.34.1686561876266;
        Mon, 12 Jun 2023 02:24:36 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:35 -0700 (PDT)
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
Subject: [PATCH 07/26] net: stmmac: dwmac-qcom-ethqos: tweak the order of local variables
Date: Mon, 12 Jun 2023 11:23:36 +0200
Message-Id: <20230612092355.87937-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022437_718728_DFF37030 
X-CRM114-Status: GOOD (  11.63  )
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

Make sure we follow the reverse-xmas tree convention.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 16e856861558..28d2514a8795 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -594,9 +594,9 @@ static void ethqos_clks_disable(void *data)
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
+	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
-	const struct ethqos_emac_driver_data *data;
 	struct qcom_ethqos *ethqos;
 	int ret;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
