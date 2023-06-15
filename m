Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F1ADEB64DB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOtS5t3kRqBVcbA5uHNL9pNexrZu9CZgu68VlEErwVA=; b=Fd+puvknD9q9Sf
	SkAU4hvU9Cx4vrvwN42u6JeXgGURM6RXOQ4/FIg7aIlzarRqVLJ3TZtBnAphR/dsIWZsP1oFin236
	3LER1BC119kEVXbtlchh4EfaN5Bqk2j0QUwq/s2WfcyXBNun4FNehyKWqXqDQ2du6hi8qB7rCs9il
	gWqnpc1R+UZJ+2qvRh8r3y0OKGc4E0WXITkk6FDFcu8jl9D7dWfj8tM0h7HP1H3ChKs77CvhHi9tj
	NFCu6CEx6oapcQHdIbAK6bjXNhuzpVoo3mpqgZgAlbtZXAdDedMjB7HOSaD5olzuiAUr64NehCmO6
	Y2hr6cAAzEQmlmZFy3GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsb-00EpN0-1o;
	Thu, 15 Jun 2023 12:15:09 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsB-00Ep0e-24
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:45 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f739ec88b2so15927345e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831282; x=1689423282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbBN5UFZLskttS3+DKY7OChoCqIyyvgczJBfknfqHmY=;
        b=yvPYPB3/twNXwbLjMkJlnuJoOjP5vKUi0hMqRQ30Acy5+J9og3U2sPSx6dJAxPrOvO
         yOKH22lW9kKY07Axj1CuBzXevI7YaVgHFszXRmRqPkXZuDNFtFDIvpvtDSo7Z+ZQlU8y
         pHCs8MbJXDYQUKc3lZSyZC9pSbArUeGi7/mLipar8SrNY11ypiQp3Dgqub2ZlbCEOsGU
         Wq2dm/NvjX4fI0lGSNhZXbZ4goMsq/OSyWhUsILsFcaBoLcjfOzIQizkZeCY9+fFxbpn
         qLtLxdBV7G3/Alw0/iyf2L7o0OIItEpvMGXdiA+TIgCWbfKRf+N8X9enbhmYCovsvoZD
         uAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831282; x=1689423282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jbBN5UFZLskttS3+DKY7OChoCqIyyvgczJBfknfqHmY=;
        b=ZDO1czT5oilSvt8W59LZ+eD7MB0HP2diaDf/Fmh0WP7emT7byuhRkW4Os4wWQTAqYT
         U5/rxnc0cq1TKM7hytKzSLqzYCblvIMTJskcCEb2EkmWLVwxvDoraEUz9iEoIfjOaBji
         BpQ/+PpftccKmaPCOPM1hXDSPGTLBA7EBVad+boH3GrA6E12qo8J+NjPk8NcoaZrEraq
         s6aj9Lwtlz4AmDJ9n1DXw//2NLX4bspgi5t3DWMVVVgcRhGJoEapEeywbfx/gZt3hGqr
         ePyQ7NlH+iakLKbuWUv2xnqJyl+kroqW2i15bMHZxluiZME13z3GTLYPB0kZzAD/ou1O
         s7bQ==
X-Gm-Message-State: AC+VfDx0T+CEOryfOAP5KnJvcxyzK3lKXsex8gamlKotKal8372xHmxL
	XVjVwU6gIx4sfa5MXLYHXR4NvQ==
X-Google-Smtp-Source: ACHHUZ50gkojbsxcYhy0Y9KFQ/3/buCtu4HBZ5N7JDVSu5XZvtC4ZCRBtmSSx5JTV5aSJVa9J+ssDA==
X-Received: by 2002:a05:600c:2204:b0:3f6:be1:b8d9 with SMTP id z4-20020a05600c220400b003f60be1b8d9mr12600756wml.6.1686831282249;
        Thu, 15 Jun 2023 05:14:42 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:41 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 07/23] net: stmmac: dwmac-qcom-ethqos: tweak the order of local variables
Date: Thu, 15 Jun 2023 14:14:03 +0200
Message-Id: <20230615121419.175862-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051443_712655_5E89DA6D 
X-CRM114-Status: GOOD (  11.68  )
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
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
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
