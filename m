Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A356EEB57E
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 19:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlfx2nqLEVnWGEOT4a4L++qm8R3cHObaLoYlfxJ2/Zg=; b=d8/xJnGQFmNhHY
	DO/XIoU8GNkthCoC8FQnaJAqIiH2MrcJjBkWqRMp2jZC94uUcWNvYUyZKMEyrQM4k9K9lozZNKwWt
	/NUMrWj48z04JUR5qVdN8SujNfNRC+5aQxKLei10EghIk0HZs/qOMFLa71tKuN9MUKCVq6CzJNmvk
	FMvyuZ16ezSr9XH1YPYxVu7Ctjc9WeehZaJQrPgDHlISV3t0+DmiMlDmCUpTNS3sggTY/0NDbvOIE
	Jzqj2aYGwPOg23zXZ+E7B+nmpF8fHx9CdhmcnU7bYN1SbE3N0bxRuu7rVdOKh0/oBi2lAWeuNIKix
	VZXHInX37oM8WpsOqlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmeb-001CnF-0J;
	Mon, 11 Sep 2023 19:33:01 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmeY-001Clw-37
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 19:33:00 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b962c226ceso81013401fa.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 12:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694460776; x=1695065576; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SmoYn1hZC3xQGtyelzNab1Xu6ODmKiyQRbBS/HxAMC4=;
        b=UO8DaGfoUB/e0+4rYSESBupoB2pIuIAaNvxpIzijS1I3WzmedwqolVGuidBa+wwVPD
         mxfeorEzlCoQlTWEkCpdNGH7OEG5KdaEFIodXJdn1a28ismUzTF5A4rVZ0QeAKYiCeXb
         c67hWXsIdLM4PL5yic73vlyTTqmky3sspCDQmcYz+ghpXRqMYz9QvdBhVeG6t/wbfocF
         uMjMoxNkpzIG7czA5v6726efM06TWVwCjbZAIleMHH5L5hAadviDZTTXYUtRuJzPG3zd
         1jNzOfvJb7JY8SGLcl8wAY9mycuyIT3FJheSNLJ0BWMBTBUTFIpEA9tgCtIHcp1pJEya
         +ZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694460776; x=1695065576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SmoYn1hZC3xQGtyelzNab1Xu6ODmKiyQRbBS/HxAMC4=;
        b=vXWhNFlc5pOlo/kKpIH/ilw1+SLs8HOQy/pLjY0a4nEq4XPOPrcIJ3NjepFyXgYV8f
         tf+jEhgzmm9vtwdH2Y1jfNRxjCZO1hYh/CZj08Dra6M8VDMaROo/LskCes/1izC7Bshq
         ZB82iXcoNHSL5L31M6qBFUtPFJ1qa6oJBFx5a119BPsCwcqdpvO8NhV+PL0vdnCD+j5g
         3PXeF1bEBE9R84/RXT/ZE0KkrFMo6Ai2DU7vS5fddVVwF0lgh2S9bfhDd8CiGa9g6dU2
         pyocI7y5M85zIvmanRDHRQKM6d09AP5y9LXluDalAFhBb8QuArqvy9uMiAZDCYQzNJKP
         3Vew==
X-Gm-Message-State: AOJu0YxyQ38W+nXphh/20jbUCe+wX73nB5yBbOTiqP6uTE2yLHxkzzNz
	HA8FTuS8O97jHSaTPf5jaxxsJw==
X-Google-Smtp-Source: AGHT+IGVpfF1mPPSu5kGATO/g/0PYmS6AMm2ETruxKwXin501vgUXJVjft33cKKtyBHE1FmZOylGaA==
X-Received: by 2002:a2e:3a10:0:b0:2bc:b6ce:eab with SMTP id h16-20020a2e3a10000000b002bcb6ce0eabmr8601981lja.51.1694460776479;
        Mon, 11 Sep 2023 12:32:56 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id j4-20020a170906410400b0099cc402d3ddsm5698607ejk.202.2023.09.11.12.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 12:32:56 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 11 Sep 2023 21:32:49 +0200
Subject: [PATCH v2 2/2] phy: qcom-qmp-combo: initialize PCS_USB registers
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v2-2-a72f43311d19@linaro.org>
References: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694460770; l=1296;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=DV4nuVtUL74YZJK1G0aNcuFg9vdKLsrw5ToJmi5Mtx8=;
 b=7QsJOM+zXh00ZIJeXd4vj/+bQ02B5nc7LfNYHDIXk8dqEvIVOII2KvHp/HmaBQI2RgI0gJtJs
 7lKj3zZExUtByiiJ7vkNGAsC5j2WzscJL6a9Omhf20n3LffmXcbnglQ
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_123259_002908_9154646B 
X-CRM114-Status: UNSURE (   8.51  )
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

Currently, PCS_USB registers that have their initialization data in a
pcs_usb_tbl table are never initialized. Fix that.

Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
Reported-by: Adrien Thierry <athierry@redhat.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 843099d314bf..1922b05403ac 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2555,6 +2555,7 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
 	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_usb = qmp->pcs_usb;
 	void __iomem *status;
 	unsigned int val;
 	int ret;
@@ -2576,6 +2577,9 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 
 	qmp_combo_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
+	if (pcs_usb)
+		qmp_combo_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
+
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
 

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
