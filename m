Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD16C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0yFgMKfTMI4pr2VG9f6UqyL5iNqC06Sb6e7oY0ehKY=; b=Hv6WRnU4UzaAzr
	n5iNqYfx0H5Slouc4K1wdOd4ymb5mhg+gJK0dU7NKtTaVf1VnRfruQg31t4OtxwPQVUyOM6xQKEgv
	2J8Eh3vy4uxRGys1eDqjMr6Bsy3r8MwXNeLAW7PefPvKWUgSPXXD/wzhDfCME13RDTLgoyvxs++KH
	5gu36Pz/cD1S3a/7CfZzW0GHBmyypkIoqDqe4iXk9OMNYR7RfihjVZyzqNlyh0eIVjKS4Y7xY+7Yx
	8AbJifUjgY2qhaurC2Jq94zWqYbgYSfgFic4iu9fkp+hN2QDpWwDPGI2jyBpodUkTOiSN9XsRfMWZ
	fvhvhgac/+eX0TmhlkQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93r-00000002RSH-0QZB;
	Thu, 25 Jan 2024 23:23:07 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93l-00000002RM5-1Z54
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:03 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5100b424f8fso3659300e87.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224978; x=1706829778; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTLQ0kfdIhJdgR/fG9fR9g8J3eTXdHDr7rApwkCXY8Y=;
        b=WeOaPcTxRMB8ucKvhAFH7ide+47zs88Ynzsf5HoX3oxF/ll2igh33hz/whCOpq63pE
         ZTK00N6DUEm78/gZbYLWuoSQKv3XD7NDQsBUGNC3neJ08YY2Ockc7hGJkjB/SVHU9aqf
         zbxzWcWGWJCiNGjjvPVXPV64AsrUionRNwdbn4zZVHEHn9hrwwj7/bEBcWdZJzeaGAeQ
         kh4Dx1+6bFhWp0htFsePfC+zJSQ/go9oz1w57tBfBbzooX0T5dNEe5ayzZsSfFRV6L0U
         J857YLWizkW9H8wUCmHxfHFFHOuXCqAsjG5nU+SEd0R2abaFiaL4DH9XpjeTvps8/5e4
         fr5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224978; x=1706829778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aTLQ0kfdIhJdgR/fG9fR9g8J3eTXdHDr7rApwkCXY8Y=;
        b=YPwyrFO2JmUr8Rmjebrg0m65qjbeKVzca8fI85bIMJae2Fp6lBUsoHsjiI87CTzgPY
         d8r1YpAT+lSrXX8qt3gWTBKi0S5N7DTEJJy8g2qC6eh1EJBKw78Wh04StpXWRfgvaTRW
         oj2Yx+4l90t04c/r/u2ilDxAaQhqPeZ1GJLbV5OlKKBOqslribF7+LIsBG/biex32L+B
         R5YaVz8uZvw4dBkR1jMVRUb5MkFIErwjObbv+oTversIU8QfoIqZCug4fwcrhcgYpnBi
         6rMT52ofqweAsSSf8yxxKldkeRxej3PKkzvbCZr2WkPkZDoj7GRZGUH9zf61GOJBalea
         AgjA==
X-Gm-Message-State: AOJu0YyO5tY6k17MbiSFSctuO94LeY2YwLPLni7PiB/ust/Ov6DbTHYq
	NAfUdeocnMI8p2UqIXufOwdO8mhE2Bqng1/CtZ5Yv1OXnz9UZ/py3W+9KNocHww=
X-Google-Smtp-Source: AGHT+IHHnJqIw8PPU1MRVugvUG+jEy8OfOhkdkdaaqbSUCOae+6lNS4FRTJKDOBQ1vNhqHtxUXtQYA==
X-Received: by 2002:a05:6512:370b:b0:50e:93fa:336 with SMTP id z11-20020a056512370b00b0050e93fa0336mr232692lfr.95.1706224978550;
        Thu, 25 Jan 2024 15:22:58 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:22:58 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 01:22:36 +0200
Subject: [PATCH v2 2/8] phy: qcom: qmp-usb-legacy: drop
 qmp_usb_legacy_iomap
MIME-Version: 1.0
Message-Id: <20240126-phy-qmp-merge-common-v2-2-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1854;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=xfy7BAj+ACcEx1oTiapyYpNyJtDZXQxvSQMM++aVC9k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlsu1P16hHKFzMvHRNqrUIpEsLhOM8lxGMXxtOh
 B0RxGdP4NaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbLtTwAKCRCLPIo+Aiko
 1bxAB/4/ct+IAbrIsh7ZeBG4MVctyNs00Oj37xkAUrYAPD+ZLpnORjGwfJIxalfiztxkAVTibIG
 q/DbcSQ0mnbtHY1IFQKoiMlWQGhxAy3BZJM8LCBzTlWtEAq2XllMQpB5nZ8PSf1PbQbNgutKIoN
 pqt4nxk9yWql+RSQhVWYIQhCtAMS10SdFLa/Z+lgWSS31/2H6c3OjXMHMIClzFmmVhA5Umw5voj
 K7zgTG/BLS/HbcLVYDquxGTpKulb/0ZnGwQrAX7Nwr49qEeuY+AfsA1fN5QJAW42NVH4J+XxdwK
 zmdI0uGv+2EHSA3iou1HL2ShfNWcr959mzFKjBxNwP+MFaH+
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152301_496117_F53B89FA 
X-CRM114-Status: GOOD (  10.36  )
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
