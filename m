Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F3BECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWAntqT2NfmreBHIAU4G6aXbc8cgW7xdsnCYgzpc7OQ=; b=ebi2QduTIGzbvD
	XXrciaiG0RPXyiwnB5voGMBq4BL5GHOd93nQD+sUEQDWAXR2Vosfr9eW4s75zET2Gn3SKvM434Yi8
	dj2OzMGXvlVEruZNENYK76bucmuYLBS8i+KRvprxdYsBF4S6Jff4zHNqBOQ/fLjB9F4seSaWMY2rg
	yDmaaGY30v/qT1xq17E1xp0/8FmcYJXxxhPuT7PJ2RNWx10cxCVhY6A3qi1bnRuL8W7qZXdxwvIAY
	lZb0LUqjC0B8w6AStOgcKPheTxBOOId1z8NTqexAhl/mx0mivV2ML6Ul0J/7uCNF6+T2O28b0U6A0
	ETRcqoepZihURrGHLQDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5z-00ExbI-6h; Fri, 09 Sep 2022 09:14:43 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa5v-00ExWn-Bj
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:40 +0000
Received: by mail-lf1-x130.google.com with SMTP id x14so1620834lfu.10
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=mVdK7E4cY7cM5XQpQxkxfa74Zdst6+MVrVvVyV2J/ME=;
        b=sZTsC4qmG3N4ZhlzVNgf2Cz+mT4hmqeYeHoq0nJoM+mtNj+UGnELed8RQwGArniXGR
         YT9Drrj/vOf/DSssfXMSE211vG/ihKDBViaRjNiEpGO9pIeUUiYub+PDfqW10dQ+C0py
         2BEL1Yb/Zo8uwUWeGfnpindD02vrpbHpLVnK357UV1+FcHf0s5kcQQ08NQQ+2o1qOV3N
         MUfeRM4760T01DkPlrMv3oKimoShLhvcFMPvRS9M+dRcDB1FMK2qAR0KMLsBtdtrmA4a
         YAMH3dXwNG8yld04wcA/oN14eueK+WkHgGD88tHHUV9Q0AgvI2wq6NPzvia/BLaVXk9J
         21dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=mVdK7E4cY7cM5XQpQxkxfa74Zdst6+MVrVvVyV2J/ME=;
        b=u7+6w+WXCPqSMB26S+HrVNRQQOP96J8mXSRhr/xcLMuwLnr+J4kzQfYkqdKcDYNZIY
         +lQio/arJlZfTXIh+cuJ5G+5kZ7XOxAn9syisuExZ/cZQxNoBXQCEUmh8rMsnmeKTvma
         8jp+x5Wz5ecj1MbSZOWEX27LwNXblhkd+MxRtY70Ek1acNDSjKuwhvyUCsFsvnil+IYt
         MCF22QG3RFfTyG05aG18ZmTn51WCvBRiE4BbxRbW+edU1bHX/EpIi92ZwU/OFgjArGOA
         3bXtzvwBf3EL5E0d5nJloPB6hnZtS1VVCVNzP0tbbPKXTXxunIIExEN1LBpO0Uygh/mQ
         UEbA==
X-Gm-Message-State: ACgBeo2ETJyGJz2ITe/yRY6mRWwGn7/JMcStfG2OOhEveDD3xbaXnN+1
	ss719YW6eLJIHDATOGUoxqeDFg==
X-Google-Smtp-Source: AA6agR5GLSJc2/tZgMKnpxjUZbHhfQBcV4ocohEfkZI2hZeRI0rEjw/VZNAQ/8PcktlxZLsGQWYFYg==
X-Received: by 2002:a05:6512:1115:b0:497:cd1:463 with SMTP id l21-20020a056512111500b004970cd10463mr3896511lfg.24.1662714875565;
        Fri, 09 Sep 2022 02:14:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/9] phy: define submodes for PCIe PHYs
Date: Fri,  9 Sep 2022 12:14:25 +0300
Message-Id: <20220909091433.3715981-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021439_429745_54D24F7C 
X-CRM114-Status: UNSURE (   8.68  )
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

Define two submodes to be used for the PCIe PHYs, where required.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/linux/phy/phy.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index b1413757fcc3..bd60c1a72988 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -45,6 +45,15 @@ enum phy_mode {
 	PHY_MODE_DP
 };
 
+/*
+ * Submodes for the PHY_MODE_PCIE, allowing the host to select between RC (Root
+ * Complex) and EP (End Point) PHY modes.
+ */
+enum {
+	PHY_SUBMODE_PCIE_RC,
+	PHY_SUBMODE_PCIE_EP,
+};
+
 enum phy_media {
 	PHY_MEDIA_DEFAULT,
 	PHY_MEDIA_SR,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
