Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C3DC64991
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 10:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hdtdHyGlscrgonKNq82l7gZg2XWAGGFMsR2kVSpDa8=; b=C8iBrMYsUopmdb
	I9TuSpPIDuxoYqbgY4/0xhxnXTuopdvRCBLEcR2JkwUe3ndmGY13Q314yRclck6S2ZRLyqiaQcg5l
	aJC6IXTqw9iuzwrrjOZ3rl93K80zknq4zmgVgfYmvvHoekrAXINyLMpBPXw4uzQhGEJwyTUcUySh2
	eAYNkw63YkoQvwljda2FfF0TYbQSm28y+15QMe01WsHfvvEtngF8tjA9Hm1G6axFVDnKpwLJV8tqB
	A/yR4RILc2z8K2Zdqnrxon0YbX1AuDJ/j2SRjnHXHWHOpK2vSoToBf/8HIMi6j/l/Gb7CDFjjBgi/
	fJ+KPakePLy7F/Hg+UKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARq-00C471-Sq; Thu, 25 Aug 2022 10:50:54 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARo-00C44E-PF
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 10:50:54 +0000
Received: by mail-lj1-x230.google.com with SMTP id s8so1557850ljj.5
        for <linux-phy@lists.infradead.org>; Thu, 25 Aug 2022 03:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=ODOakmbW0+n2i2GvoUEmLl+J2Ch890Gy790ZhnYDLTw=;
        b=qztsMtgT1wzs9IBxp8KllDV6N6DQ9s1Dh4UVbMo+CqncvN3C+/bpnYuiqze9HegQbf
         Ebq8mTYuXJeREzMF3QwsR6cMCwNssnbCflaR8xF5G4iLcfT5egUA3Shy06XKZX4pRoOk
         iOyGZT/ZboLmKYNB+Lw5PAchh7/sixD3a/AjZj1SVJvbKplAipOGb0iZSbYNjXDcUBL4
         zYySLLXJWiGDlFlg0KKdvn+QJL86zwhair3aVvbLfEfJ7M2nQK/ydiCgxpdFszPBPKXo
         RfYACLYmWnxXfHhr7kmqnHbnuVQgd5GOyohwfjyN/PEPaum/VaVEV4QIT9XUVnRdqnL/
         zHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=ODOakmbW0+n2i2GvoUEmLl+J2Ch890Gy790ZhnYDLTw=;
        b=lUR4zC1RAhBMKqkBgRGw61qb2M1XGcS3IcYk5FhbK3ZQsAgE+QAIhK5Ox4/mqdKee/
         XDtsYciPODxGA5MeTeT7iaMpmFjSCVk5r1tJaYc88+7XMPJEB+S+fScIRZBl7WXTH5Yf
         Rga4n+rMKZbNrpRy9kdyzH7RKqNR5YoRC+3j8V6LOeLxlnPveHi78U12fF8X9X/+vH4a
         7LRdN9N4qbFarpKxq39/Y8fC9pZUzvF89TEZPXefCpO3YSNCRECmzquM/MJHi+fq9Hg4
         FdUN9nuINI630b9qqTdABNnbV0RunBAVMTJvLLwQd1rowYVEdbmIaFelDcSmC3D14Tvh
         YbcA==
X-Gm-Message-State: ACgBeo3wDBHtc153V697XxtMIMylp1we59mvzZPy8yxaWxtBJuYeK6wz
	Z9L22/zLWFiMMlLQr085bE1S3g==
X-Google-Smtp-Source: AA6agR4J4vK0+tsAWO8vmP25IubvCpc025cbMjdERrbKm4KnEOwHYvG4qdmVusGqtz3gfFXX2vmtJw==
X-Received: by 2002:a05:651c:905:b0:25e:67a8:4dd0 with SMTP id e5-20020a05651c090500b0025e67a84dd0mr1028364ljq.232.1661424649936;
        Thu, 25 Aug 2022 03:50:49 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u14-20020ac258ce000000b00492f49037dfsm429609lfo.152.2022.08.25.03.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 03:50:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn@kryo.se>,
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
Subject: [PATCH v2 4/6] PCI: qcom: Setup PHY to work in RC mode
Date: Thu, 25 Aug 2022 13:50:42 +0300
Message-Id: <20220825105044.636209-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_035052_883366_03749F05 
X-CRM114-Status: GOOD (  10.49  )
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

Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
used in the RC mode.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 66886dc6e777..79dcb1a22f53 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1494,6 +1494,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, 0);
+	if (ret)
+		goto err_deinit;
+
 	ret = phy_power_on(pcie->phy);
 	if (ret)
 		goto err_deinit;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
