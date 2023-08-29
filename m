Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2346C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 20:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rUrscvEV/+VjFTTk6jVUCe4IfRa/fAEi+QwrNq1sVk=; b=3XXGO8dTWf3Tae
	Cp2dYy5Z6LdKcPLXI0n6wCy07Lupzls1KGD16851ApU+wIimfkPohF2qMgnzdj2LNwFP7wsAj4kZ9
	4tn/vuSbRvB1cKax+R2zwQsuJ7QwmYNHaJ5kGRhrRWBn1b2khKAXmwJetX/aup3XJgkVvGnwfN1BQ
	spP0T9MGukq2lojdfHqNcnv/x4opd5iUcZHsXWfSEwjor/UvOJQAwiEZqpvMWSpnqgkIteTmNCo61
	0D6CGEg9RZ8d9c+4bDkSzkHNLP7J377QPiqeM0XOCni7qO7OMCyfZCOXFnTsglrEQzPB9xYC/SUJ3
	EMIhQ7z/QRA0naCd8fdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o8-00CFv4-1R;
	Tue, 29 Aug 2023 20:59:28 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5o5-00CFtm-1J
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 20:59:26 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-500c7796d8eso1076336e87.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 13:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693342763; x=1693947563; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDiDlbXY5yzxtV/UMHY8DDSwA1Y2sSArumeXUmrmXZw=;
        b=EeZQqdwYDj9QB7wmLy1Ia4FonCsUJX80v0KQZSYP28vCTfDFIpEKZ2l6D/3N3N4bxr
         +HHsu+tpftaSJTTES7LduIJvCutFBrMgMy1AbJjT9DvOJNbE6lXrCTk/J+x3zhEp/hJ3
         M4nfXOV40toPSzhDkv9mCcwj4JC/DJ3Y/aurA4xyOoGgGjg7YZ0rMBlGTtnDzYLDNlZR
         gqo5KBr6f6CRSeYVSYMCAqXmf4qckQeY9kS48/e69+L7BVDb6Y+AIaE1gswEBib2zLWA
         4ekiVK14VbSH5IDpYz4MdYW9hPCiTmQ/Bk4GzI1fntZ4RL3aoynah5wW/2h6HAhWXrGl
         P0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693342763; x=1693947563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDiDlbXY5yzxtV/UMHY8DDSwA1Y2sSArumeXUmrmXZw=;
        b=h0d7QoqcsB5qZt8lboqZo2FGGcqP/UTnPbyeHrYAYf0u09wqaBrIeEQUVQ5hn0zN6N
         F/nNzs6Wb3Zu+9m43J2Ab84NAhuni1aHsOKy9MgT67229xfuhGkRnJL51XxywUI4tM3G
         GunpcXCZxm8bqincsq8MV6EeV6B/84BWCRIJA3qp/rWCsXlwxBPzclAzFxlbt4sd/6tM
         h3nlDxolfR1+CoP0vVl5MCu8NZuRl6t9ygqlF4ruIbK+3I8vGuRKrotz1xEtJiZ7iqR2
         aTmNpGjomSXsiPrfmj4v7DkL70hs2OVh1OjNbgQEB3HoGn6IqSZ9NLr4jDNspekB+54w
         3GOQ==
X-Gm-Message-State: AOJu0YyILwCv4Y40zGoZNI9EvVl8lL4VX5+dd4sBYh8AnBl9KH0/OsPV
	LgmNU5+3H1iR+DYDJmbRTwoWGg==
X-Google-Smtp-Source: AGHT+IFBt6mCKFv8FjhhTBDDAyZfTvDLM3LO49D3cQx1lhHL5aFnzKrfjknbW6j9TLPvdXrQfK39tw==
X-Received: by 2002:a19:5e1a:0:b0:4fa:21d4:b3ca with SMTP id s26-20020a195e1a000000b004fa21d4b3camr56225lfb.2.1693342763210;
        Tue, 29 Aug 2023 13:59:23 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id q30-20020ac2515e000000b004fbad09317csm2074025lfd.189.2023.08.29.13.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:59:22 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 29 Aug 2023 22:59:05 +0200
Subject: [PATCH 2/2] phy: qcom-qmp-combo: initialize PCS_USB registers
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v1-2-599ddbfa094a@linaro.org>
References: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693342759; l=1235;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=adVmBzdoCGTsemFqAoQk/FkwFdzWdPC36JGX5NvhpUo=;
 b=aDox5HcEB7BiDj/xATHHbGSkGblXnbMQljwSM6u6KT9zqxT2CPkjQKRfdRFMeyrXHUXoEa/jb
 cTlHVJoE3TxA9rPwoIfEsLI77n93TCXC9YiFRSKD/Ji8qAq6PuntL5b
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_135925_444248_4E16EB85 
X-CRM114-Status: UNSURE (   8.78  )
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
