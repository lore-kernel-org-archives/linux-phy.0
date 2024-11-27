Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BB6ED609CF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 10:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H63xvwSs9HdB+yrLZg4BRM9wj05EzXjPsujAvvV29N8=; b=pxI2Il5KM0Zxxt
	aiABTSKnh0NBBMHvgyvjoJ3KpQ3Se8q6WMuvmfGC2nROay8C1wlb0cTu+demJP2i44rR7CPTSqyzD
	SjoI+CUr/de1WwHvsa8q4R0wgKUcQ0m1g/wWmIZwP+xXZOiqiS09P3AS2RyGRAhYSrV9FwNiG4TgD
	ADOphs3SElcv1kMIb1vfQ/IY1HaJaDjUV4sI7r34PN7OwRShjpwUjUm/ts6iKQkaAAtcjcG1l8AeX
	lTMA6CfReX2AUPvMK7WtsBPp3luhiskgipee5biz6QhPEYTZRiItONax7X0Hgfsh8I32KZ78rrcYG
	NW0X407eaAnY+eobsccw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFWk-0000000CtiC-0uPS;
	Wed, 27 Nov 2024 10:44:10 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFWJ-0000000CteS-344l
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:43:44 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-724f0f6300aso4990899b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732704223; x=1733309023; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tzCk60ssLnzRtG4kB4XwKsk4zCPWkQgHAif9YUyJxD8=;
        b=QB+cNoiy7SJu+Z0fTpz4DIF6lYllrBRG2YSVEysUtS9e8ME3lkInqoobquHgSl2981
         cOEt5er/d4w8SAYvcK/qMPGawWRnSPgj9BOfgwgCLPF+78BAEdDhBWdqZfEb28dM0ped
         PhS3mAy1ybH0pkZpkJ9yru3OPscw01v4YWWf1gO+0XhqozjBFy5h6W5tgPR4NonIlV9v
         Tc5QNKCNGNzfv18TGhcCAoQDSpIPxdfbH8dAcaqBfc9xhEMESOc0y5GjJTxgyBZFSMSQ
         aVf25Lp8xHo8frvfg3y0mz4lKVkcAK2WMoRXWA0ENOEiSl5ADygFZFZKHdtRJmxFcyAj
         Kugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732704223; x=1733309023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tzCk60ssLnzRtG4kB4XwKsk4zCPWkQgHAif9YUyJxD8=;
        b=hrsOoQUdwm/1kx0hMNjLbKkFMnF8ynFX8mQu6tv8I5mjPdq7OX0f1IBaf9zscQJ0ta
         RcA1+9BLShxpM/I/VMzk6ahWAvvDje1+bFWcJUhv0Au+HVAm3/VN4+fmaZq5HXDNwK5r
         sh6kHiwHQCWqNwrBSXBes5Tf4WtOqPVeNeqcPgqGMsfBvl0UBWKATuxGr4zsdtgUCrJQ
         0CuiQb+ifkvC0WFUOhyAXuT/Q5JCYzzmQwj+vBTzR/VnINGXZEerGcZsVVJWUTiQBf62
         UVoTkPvbtxM3v1m93nkvtQXzMkEL4TI4Le3q6Bd8uadxQbw7vJvn9X/MffTBL8MuMwBc
         Arew==
X-Gm-Message-State: AOJu0YzQncS48Na2KliAi7DsARMamhjrZiRjSSsQzTxK2O0LdABr7Ylz
	zgLPSVXcxcOlX7kveVLr7LR5R6W15dSwLDakTo8XriW7UDIQTCwk
X-Gm-Gg: ASbGncv866KlZ52EfslKTnN6x94vnciebmsLwl4smF+gXIE0g4j8km0duN+O/NQuAiS
	5tjGWbdePzC8NqMfZiXP+OFy+u7rL/gd5sA17hF3lSUn7E66eh9W/Y39eMpii4ONX7Ei7/l2+Zt
	gPvX9YS8LmVaNJJ6kYi4rHErRL0nKVLly8vwu4MwXVg8KNfv9jFNbPRfsK4EShCivslxI3A/5s7
	RQj3wkwSSiOgaUnVADRD6SqqZNU/B9iGGEWGgJ6+KOXAcRBbw+F0NZrgdH4eRQIWQ==
X-Google-Smtp-Source: AGHT+IFasGDwkTah8VJCd5YqVj7arrUVACm5XfE0BZ2QCILBn6viPi1c/IWF0UOE2Q5hAg+SnGy9+g==
X-Received: by 2002:a05:6a00:14d5:b0:71e:695:41ee with SMTP id d2e1a72fcca58-72530013a73mr3817487b3a.5.1732704222532;
        Wed, 27 Nov 2024 02:43:42 -0800 (PST)
Received: from advait-kdeneon.. ([2405:201:1e:f1d5:79f6:179c:470f:690f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de572e50sm9905806b3a.172.2024.11.27.02.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:43:42 -0800 (PST)
From: Advait Dhamorikar <advaitdhamorikar@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Stefan Eichenberger <eichest@gmail.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Advait Dhamorikar <advaitdhamorikar@gmail.com>
Subject: [PATCH] phy: marvell: Fix spelling mistake "exlicitly" -> "explicitly"
Date: Wed, 27 Nov 2024 16:13:33 +0530
Message-Id: <20241127104333.18944-1-advaitdhamorikar@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_024343_763650_23B022C5 
X-CRM114-Status: UNSURE (   9.97  )
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

Fix spelling mistake in mvebu_comphy_ethernet_init_reset
comments.

Signed-off-by: Advait Dhamorikar <advaitdhamorikar@gmail.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-comphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
index fefc02d921e6..71f9c14fb50d 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-comphy.c
@@ -422,7 +422,7 @@ static int mvebu_comphy_ethernet_init_reset(struct mvebu_comphy_lane *lane)
 	/* wait until clocks are ready */
 	mdelay(1);
 
-	/* exlicitly disable 40B, the bits isn't clear on reset */
+	/* explicitly disable 40B, the bits isn't clear on reset */
 	regmap_read(priv->regmap, MVEBU_COMPHY_CONF6(lane->id), &val);
 	val &= ~MVEBU_COMPHY_CONF6_40B;
 	regmap_write(priv->regmap, MVEBU_COMPHY_CONF6(lane->id), val);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
