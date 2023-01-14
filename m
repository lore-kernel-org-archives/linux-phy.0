Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C9E3C46467
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjYA/qlNusIjOHlIuxziR2zNfb8h6qArCYdCMcnO4v4=; b=ljSfn0v1YNMDyF
	sb2hMfbtbKlgQKMI4SVrDTgJ5BLD5UvlkeeY3z+YazZrzyVql5f4/Q7BXYNCu3pLSxSFZke1icbkA
	JwV/FbcyB/06/dv53kaERoYzvL3WDD4jiNn6RsBTC+H1WRkrxpEnGjZqLe40hmVAXFRdxQ98xGXaA
	uP8Xpbzws2ZWVp6yb3I+CLK5NFw0tpZTDL0BCKyR4ejmkhRwNSmwvHUvl2NS+mx0o4QY1aUHefcyR
	AyjTp8O2/AgU+8Bh5C6jLd2slYzChs55RDVd8l76ijP6Af8Y45Rp8EnoNQKXQxfz/0wO4aWWW7wiY
	qUhAdhhfHBPSuH+kuHZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGah2-005OHd-IF; Sat, 14 Jan 2023 07:11:08 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagz-005O8x-TQ
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:11:07 +0000
Received: by mail-pj1-x102e.google.com with SMTP id v23so24492294pju.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrkQ9WSsGQbF4BcRajMW7kD5vzHIY33MCkjUr8TDVpY=;
        b=VL92hbwn5A4Ok8rWrnpvYu7rtsSghIgsZdlnq1gYZZAR7/lL3+dF2mCfmZWmklSDt+
         brR7rLEu1ZtcSv9Hme0ZNsKhrzPg+1SGsapTBpEC3gWq23NpuMhTPjIsZ3UVXKYuroiX
         ie/YQ4s/Lj97ppJOT/Cb4LFAIbN5AsmUKjY9u52x8q//co1wzsUUoDgyVmp2Tu9d1i1c
         OOt573ShATOyuOjghyyZVW1cQLbHsC8T3oMXsyJFD6gXzAcBEugbAIm3qQiP9DxXeInJ
         /rRvkdgTUVz3Eegm+atXJ9imwCQIN07xQgyn9WUlWIybYZ1YqbkxWKkLt7ci5ItRaMEX
         PqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrkQ9WSsGQbF4BcRajMW7kD5vzHIY33MCkjUr8TDVpY=;
        b=rI765/pDmw+/opbWpdTtGcLyj9oZuflTwtRZqekHNhgffbGjNslg1WhNYl+C/8y/jk
         rQKRJFw13lov0MXRyafTLpn8JAOaLyGeETOlZ9RB5gLheZh1FMxX7Hy6my5LzYO2EZ9q
         /jmhTTjxFPX1jYk8gRKltpG+ObkNC2XIRrLkQ9W7rirWEOb4F/XxhHG8BIO8UvUWn2/D
         SqvcxsiEg6pho+J+NVwBHOKS3qznPisVowA2/PgDD0qmglD3rn01kQ0BHoHHnFT2DG0I
         pEe/wzFbNEci7RUMjaFpVd+NOOVa5RFAQA2KAoS5pexQSwMNOcbO3kQQkJPWc3dbocQ3
         MgXA==
X-Gm-Message-State: AFqh2krX9o5akrAkLWxWckkK0oCQPD4Mh4AEB9AHQL54k3/e30QKBBtM
	6zqNRYzcwdx9GqDpcbtPaH2x
X-Google-Smtp-Source: AMrXdXtoJu1I8bodRntcZZ+E141pki5zk8mww8k8+rbUfQcXcxDbyOBZt9WXtMYsV+DUq/OveKTRKg==
X-Received: by 2002:a17:902:b413:b0:189:6ab3:9e64 with SMTP id x19-20020a170902b41300b001896ab39e64mr80347671plr.34.1673680265605;
        Fri, 13 Jan 2023 23:11:05 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:11:04 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 12/12] phy: qcom-qmp-ufs: Add HS G4 mode support to SC8280XP SoC
Date: Sat, 14 Jan 2023 12:40:09 +0530
Message-Id: <20230114071009.88102-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231105_964767_CBB60AFB 
X-CRM114-Status: UNSURE (   8.87  )
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

UFS PHY in SC8280XP SoC is capable of operating at HS G4 mode and the init
sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
reusing the G4 init sequence of SM8350.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 5cdac38c5fdc..110d8fb9309f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -768,6 +768,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 		.serdes		= sm8350_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
 	},
+	.tbls_hs_g4 = {
+		.tx		= sm8350_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
+		.rx		= sm8350_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
+		.pcs		= sm8350_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
