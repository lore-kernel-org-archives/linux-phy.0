Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E2FC47077
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0yFgMKfTMI4pr2VG9f6UqyL5iNqC06Sb6e7oY0ehKY=; b=Ht/86PiOYeectC
	6rq6pKb2gOjCMA6RQovpQiJnf0zGRSPhmNV+Nnnd7/Rer8epDuNyENJjUZySyMxiIqGTKAbKJ7l1r
	LETZRzlerfxdxEV8ReFLvFjY17Ocbeljpcob/fgu7YgdgfRCW2ozrVi/cL1nAyLoObhNV71dv5zyF
	Z8l888rJ/o2S9DE29G+hpsLlBVZWBzWm+AtRiZuyua4sNvnfb5P+s9TgIGG1Wvlghl3J7Z1pkItIn
	nFcwdkgo5iYUGU4goHaTFggqu1naTfeVjIYt8nL0v00y6Hg3+7kFfGbmmKTlYPy5CC4S7aUggNTJb
	h7JFbOOCWItRDrRRhYQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PW-006krY-30;
	Tue, 09 Jan 2024 03:04:14 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PR-006knO-2J
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:12 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cc7d2c1ff0so28214671fa.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769444; x=1705374244; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTLQ0kfdIhJdgR/fG9fR9g8J3eTXdHDr7rApwkCXY8Y=;
        b=YKSEVDoKUyZsktgo4Sc/BzpqrcPjTB9MaMqtZESEM4MdUqEXxzPqzpt8e3FvWhePge
         hO5CCuGl0NRfSEfUytfQ6iEQzhbl21WJ0xBWBb2FbGut4J6Kdm+ihXeu/2Jnm5rJC9ZA
         D1n54ZtyqcGmKpRteyJruEuxj/F8ZXPuJh2osizNBHsSn+wqhxAw7p94ReAfAckKOyM0
         pIyXNmmooGs9Cr9XlbfnFJhafiYXRN51EG1+AvLHWcXq/HGwaa7CaAG74wxqYQ4EncyY
         annZCS/9qQgaTquLUmJnEsix6CF2KNMRlUE6/5f4Xd/1Jn1C2GWQtRnMxjvXTIcbnWI2
         1qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769444; x=1705374244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aTLQ0kfdIhJdgR/fG9fR9g8J3eTXdHDr7rApwkCXY8Y=;
        b=Acduth1xPi+OhGng8XT743pNfnz0T6cqCCx3ynBtrA711E/2lJ+wGuX6UHaQjhf4xd
         YwjhHYxSxK7NnkDoG36/WE2kBhsUFfD+7fYcpHT7GlBFvBRZAEXZ06TGxdp2yCLIOfPw
         shUitjEymsMrMwhJaDV7GrAaGVEM43eLxzeY4qfofKml3vEuVvjdJ0n8lu1qgiudjryw
         D6jwYmm6mtOYjOt5IzVtnU9X21pmEp+13D8NnyfKs6VyO1BjWWODFmgl73BMQSjhOpHo
         udTN2CSSd4ktYNWr3ADiC9goFp2S5yyU0ECb/em+MqpcfXwg0bgrM7EFggGfr/fM4lZm
         hsOQ==
X-Gm-Message-State: AOJu0Yync0UckMCQsAO5zaBsfLWwEiW0nqweJFtGDrIkH7uo9cgMWoTY
	nsHnpzQ43zg+laYQ1Ip9VqD1P7YJcgaNhQ==
X-Google-Smtp-Source: AGHT+IGhzWMY9a/QjlTHWHe0VvNW8wpdPMej+tRAJyRlBEILmHli09M3nkaitkS80cKRdxacrlTvcA==
X-Received: by 2002:a2e:944c:0:b0:2cd:39ec:c31d with SMTP id o12-20020a2e944c000000b002cd39ecc31dmr2112547ljh.46.1704769443953;
        Mon, 08 Jan 2024 19:04:03 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:04:00 +0200
Subject: [PATCH 2/8] phy: qcom: qmp-usb-legacy: drop qmp_usb_legacy_iomap
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-2-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1854;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=xfy7BAj+ACcEx1oTiapyYpNyJtDZXQxvSQMM++aVC9k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlnLeg5wrrW3NkDTuY1UyAIkdFZxUDp0ETEGghl
 IFNtxbxjPKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oAAKCRCLPIo+Aiko
 1WCWB/9zyuXLEBTouKZWdQVBhAhqbLE4/W1AV0jCGGMl1FUYDhJKAt2cvLF/hTTvrVKOGepcHO0
 JNxsfIs2TkwtwIxj4yICR4bSRN0E48KkD1PKi0eGrUnOnIOqqjaLd85MkqXK0e0rleEkvmoD7HB
 aXTneYq1EzpMZCmamAchGgrZz5ypzKiJR4F7DufZ/0AyFloFZNnQ47pix4qj6fgODdORCU37MnP
 ObzQf8fJ6cITanK+U4iqonBz3MNK6oOWVryQkk5vJdE/DYmnUv4tAbC5zSYxpRul4SFTm8xFntm
 gXOe8UF5ME7zwqKv67fFNvt7kyc2ZVhH1qv+Cz8ZsHxYLy80
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190409_755639_C63CA030 
X-CRM114-Status: GOOD (  10.26  )
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

All PHYs supported by qmp-usb-legacy driver don't have issues with the
PCS region. Replace qmp_usb_legacy_iomap() with devm_of_iomap().

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 2f8891bc3da8..5d7bb4f58af8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1166,27 +1166,11 @@ static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static void __iomem *qmp_usb_legacy_iomap(struct device *dev, struct device_node *np,
-					int index, bool exclusive)
-{
-	struct resource res;
-
-	if (!exclusive) {
-		if (of_address_to_resource(np, index, &res))
-			return IOMEM_ERR_PTR(-EINVAL);
-
-		return devm_ioremap(dev, res.start, resource_size(&res));
-	}
-
-	return devm_of_iomap(dev, np, index, NULL);
-}
-
 static int qmp_usb_legacy_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	bool exclusive = true;
 
 	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmp->serdes))
@@ -1210,7 +1194,7 @@ static int qmp_usb_legacy_parse_dt_legacy(struct qmp_usb *qmp, struct device_nod
 	if (IS_ERR(qmp->rx))
 		return PTR_ERR(qmp->rx);
 
-	qmp->pcs = qmp_usb_legacy_iomap(dev, np, 2, exclusive);
+	qmp->pcs = devm_of_iomap(dev, np, 2, NULL);
 	if (IS_ERR(qmp->pcs))
 		return PTR_ERR(qmp->pcs);
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
