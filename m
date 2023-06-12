Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85C9AC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQThBfB7QQsA94+MFdz5Bzjoyqse+TAFthx/cHooTJI=; b=yU+fhiN0xYjnR1
	wIo0E/owFb8Y38aFquYIpdwhs/2JFGtEELFw0g8Xi9jB6eqZASlupVvsuMtfRqtsOvqIg+Qhnse4p
	wdLvAohI7plXGWIYUzN5fns1pBQ9KGtiTEAz2eLgzbfbXdeowB8921NRi9e1aYlGmB2uvcbPr5jHF
	c9sZnWC54mkEI6M+Ju1uHmLzrGTDjKsXAread5setudVJFKBlLrYc+GgU4J8seHrd/PCjCMnUDeLO
	uWVNunq6uWdSiS320zsWr1aA/y+L7bxWgxcVOvUCkxVA/0sVRjJEeKhEvqqNZqT5QpbWZoO3uqWKF
	lbll4xq9tUf5G0Q9jMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eCD-003N1h-0b;
	Mon, 12 Jun 2023 09:50:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eCB-003N0A-1t
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jun 2023 09:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0jrHnz846sKSAurRWEc8dAdWpKHrp05uQC5lgmZ9ncs=; b=fOB8HCXOJ09oWX8PDEFM65cPGL
	98bqUaGZQfuYJkg9q/YN66/UM7IbhXtXdpeX9xjIgONZBeddaHOT8DkvSOsPRMDwIf1Ac5Q+Gnhvy
	Uf6nmz23YaZ1hWH1JE2U1WIZOTzhUg+LE64S5j2AFl6LxdzPmKp9cbmxtA6xxL6LnPrj3eTLzbuwM
	7dCUxz8aeYrNVALkdmgQQtIRCHuaF/j+x97NeOxxNhOKR2rINnkg3JO6EWb4HN1KwvGAs0J1VFO4a
	bWnPwl8v+7YTOaQ4A3TeG1a12GktrtZ7lKyB3CS7bVJj6J/TEjwYl5eUn0n6e2Qk0eLdKiUjs8rpR
	xJ+9IrFw==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn5-008k3G-17
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:50 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f611ac39c5so4896608e87.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561885; x=1689153885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0jrHnz846sKSAurRWEc8dAdWpKHrp05uQC5lgmZ9ncs=;
        b=Wv5XrDDvy4LtM5L7MWCbVK9pWAo3LoUNOvZQEasGmTIxOi38BcIRca8Fde80aXxOwM
         aXfV6t3++WM8D2t43nXQPbThzdlcHTowM1+1hywltCEBkdLNk5WIBKbHdgnFrbTu6NN6
         G7hD3xTxSxdg2OJyJhkZKd/bIlY8HQYl9S3d+OKQOv7jN/dCgI9Jja2/dN9fpneUfi06
         MbuoGh0EvHikS8mSs/EC9zdBr5OUOZtHEXtCxm4XNW8D1WYAC2ZSXNjfDklDyA/HF1uk
         rv1AHJwKXY2AlZUFovyBCJwKKAz5+/DTFFMP1V3lPGCXMSQIXrZnHCpFQWA4YSRq5Alp
         0QbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561885; x=1689153885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0jrHnz846sKSAurRWEc8dAdWpKHrp05uQC5lgmZ9ncs=;
        b=bUnw9hYziWJYMN7Kz5kmZCtmAwf8o9TpWhp4JwWEhNEDqmnkuN0a0uGeooEgS2QdnO
         GR9wymFW74AoNDDOfAl/nKtzOemm+1YQmGZ58VyDcKQEzaRCNAKIiTnH//2mB7SKBxMK
         F1MHNIblBFy8noxLM9MUikZnpnI8XB1JfEkCQ59bnzRcRDuOduKNNzevz02+rC14UUJT
         hwIjnxhpHaf74JmOI/9uOMLZGOdBjtI8oaTkOdf/I2cAa3KXsZNJgnWelD2HW41fjaVN
         KM002uDBChGFBXcjrDpebNhyLiV1/Sb8bQy2+UQR9ek0CkysT0dKT+rg/23jvhvSNipx
         hFag==
X-Gm-Message-State: AC+VfDxpR805sJnmtvQTXYcWg2JhAe373rMbqQbtJgRxcRUvFkIxejyN
	5Fb1tprhdBTLUdYJzd1lnVHu++woSxZV+MSxL/g=
X-Google-Smtp-Source: ACHHUZ6uIGRfB9PUuO1IdV3Ad+qQfGck8wohxMrNY4KVFcykXH7H2id2cyMCwfjwU4a96k2jo3xMxA==
X-Received: by 2002:a19:6706:0:b0:4f4:2b83:f4a3 with SMTP id b6-20020a196706000000b004f42b83f4a3mr3564114lfc.51.1686561885364;
        Mon, 12 Jun 2023 02:24:45 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:44 -0700 (PDT)
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
Subject: [PATCH 13/26] net: stmmac: dwmac-qcom-ethqos: make the rgmii clock optional
Date: Mon, 12 Jun 2023 11:23:42 +0200
Message-Id: <20230612092355.87937-14-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102447_648823_B26BDCB7 
X-CRM114-Status: GOOD (  11.25  )
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

On sa8775p there's no RGMII clock so make it optional in the driver.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 3438b6229351..252dca400071 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -663,7 +663,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
 	ethqos->has_emac3 = data->has_emac3;
 
-	ethqos->rgmii_clk = devm_clk_get(dev, "rgmii");
+	ethqos->rgmii_clk = devm_clk_get_optional(dev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_clk)) {
 		ret = PTR_ERR(ethqos->rgmii_clk);
 		goto out_config_dt;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
