Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762ACC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yAviVzoWg0miuz6h0lS+gg+phWNHcKomP6RUChKOq0=; b=uk0iUlZMctZOaP
	4O1oEug79QzvKTSpvy+g3YSsF85ot7j/fh2U9tJvfbMZmpJD8wkGRoKzTZ4AeM23cbV6iwiCyxZaI
	owdhhkiTQ3sDTqH9cbK2LEpW35NlSy0RyAIolBsj8i73FEdi8R4xJu7EBnylY1429pPejDpigKZX1
	FZBo5WaxYdyvTrdJfvWsqUbBeHvDctLn7dh7C2spJqrZZjn+kZQSYEOt0T3Kg4tDFIaktEZVbm7Ag
	WwYQ/weOCUdZj69gnJj0ZNyQVzYepRQASgu6Xz5l5dtPVBIoxes5Sv5JeLJ5aafvLZSyaxFp960NW
	ENk3x14Q4mhbjoP72nVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHx-008mFN-NQ; Thu, 10 Nov 2022 19:32:37 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8Y-008fcN-Lu
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:22:57 +0000
Received: by mail-lf1-x133.google.com with SMTP id l12so5044220lfp.6
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9RMtdZhkk+ztyiCLSmuVF+ElSnJAeFYTXcjwnzPRjZ0=;
        b=cWMHuyDA/qwtm8EWpfyP9QYItdNvpIvyg3sFIzFsaRBWhYuhzwNrZZhE86mUsIBN8g
         2+bgF3WsxamUIE+4VcnVQaU0UQFRYATZxap4jqnwBosT3kZFOCy3oJYYxP09satidw/N
         bi0PUt9o2XEpXjKsIvTYbYQpjjSV3eAyOiodZk/yegMFnPNv/4HPLR58/huhAWT1tV2u
         qnOIS9QvMkVap5JTMWS1KmdaDCdYAR+/gJ+zWn+VZ4mNvqVtFKmgJ5xYlEcBEgniMLwA
         KhSaORdwbYtNEdnN4bqosjfPb+8KvFIRmJ2z+0hCX6XdZ39AcuQgx7NUYYx56A/mnJdI
         sMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9RMtdZhkk+ztyiCLSmuVF+ElSnJAeFYTXcjwnzPRjZ0=;
        b=z+mognR//uhGh8vLrPzpsuNIL19nkmyVIKbT7uIEltJIQif6LCZXYVOxIIlbSdCOmo
         22FaRBW3e00ZNkpEB/BDBNL82o/FQ79R2nb00G5W+hE2Hlh8OQ73ff2Eodlwp8I36gfE
         O+lP8B8Y37jWxSp9ERGXGbDF+vlMZTX9OuRONlTU7ZuKhVf7IDLFWxy1RUvziGjmL4Gc
         ePkId5XSd6nDKKqKcQ993SbPRUi13a+zVKUcSJ3lsA24BdzBwroiaYtCbaafBFg97v1Q
         A3hhbptHzU9QbkF/LvR6DJO1pzXz9KIE65P2K1PSA3lC/G8l125FvvqK6PdMHL+iyOZC
         Be6g==
X-Gm-Message-State: ANoB5pkWmR1HBGZs6d0Fl6W8EhfV5dkd1/KzhOONneT/91l4bhSJPmNJ
	GuSom/HCmc7/U7UCzybz01qnaQ==
X-Google-Smtp-Source: AA0mqf5m0ZGVwFMNyMwnJFmLVyCpsIPhcj3jLBM/J4ALssptcYeBWyLcyDThWMN3bewH+7bE2qMOcw==
X-Received: by 2002:ac2:548a:0:b0:4b3:ab7a:96a6 with SMTP id t10-20020ac2548a000000b004b3ab7a96a6mr1705908lfk.475.1668108170732;
        Thu, 10 Nov 2022 11:22:50 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 02/13] phy: qcom-qmp: remove duplicate v5_5nm register definitions
Date: Thu, 10 Nov 2022 22:22:37 +0300
Message-Id: <20221110192248.873973-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112254_772095_343615F2 
X-CRM114-Status: UNSURE (   7.25  )
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

Remove duplicate defines from phy-qcom-qmp-qserdes-txrx-v5_5nm.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h
index a1c088bd5158..a4a4e251348d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h
@@ -7,11 +7,6 @@
 #define QCOM_PHY_QMP_QSERDES_TXRX_V5_5NM_H_
 
 /* Only for QMP V5 5NM PHY - TX registers */
-#define QSERDES_V5_5NM_TX_RES_CODE_LANE_OFFSET_TX		0x30
-#define QSERDES_V5_5NM_TX_RES_CODE_LANE_OFFSET_RX		0x34
-#define QSERDES_V5_5NM_TX_LANE_MODE_1				0x78
-#define QSERDES_V5_5NM_TX_LANE_MODE_2				0x7c
-#define QSERDES_V5_5NM_TX_LANE_MODE_3				0x80
 #define QSERDES_V5_5NM_TX_BIST_MODE_LANENO			0x00
 #define QSERDES_V5_5NM_TX_BIST_INVERT				0x04
 #define QSERDES_V5_5NM_TX_CLKBUF_ENABLE				0x08
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
