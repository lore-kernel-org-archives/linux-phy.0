Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7CE5CD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pp1Ps5snYyhRYWIRbPqStdQ6twhwVp0CxVKZ+EtrYzk=; b=RwnQLwlBeQ3N6j
	mgebm00ULaXnjDGhQHSC4T0FiW3PkWAK5tJYcdYtyYWsNY/qq086WSQBFSWcjEGtLDKUZmgqF9GDw
	PHGZkMDXx4mXFmvypwZDVv5+7P7LWY+rta4GuCx6CYqqWjanOTBrcck4EcsXJuz8wzxTBuwXZ+Va0
	0h4vF1xZutSQ2LPd/DLDOfOudd7at2PRH1JzgRzmFUfA9MN/I8ePDlr9afz8l6pc77MGjnqq18kaI
	mQMrTAt49zN/WisiLEOY/Oh5kNGnGd4KxKvLynY6TvYFp4/n6g2tqnt+PQ/Qkauxj7QyvL8AdIUD5
	CwFDhz3Ydn+EF/ZoWuGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsX1L-00000004fZ9-1Lxx;
	Fri, 05 Apr 2024 00:01:27 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsX1H-00000004fXU-2hsz
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 00:01:25 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6e6b22af648so2088339b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 17:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712275275; x=1712880075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BubB/ZTZXGyOlYIo5JvJ2GYL9k/6VJ0RRIgGr3QHUG4=;
        b=ExJGz3CZI7QMqKmuf5YU/+vXyGjztwAg9JRCeFdlRrE/VNw8SkhiA/fBv3Ycrvi/J0
         O9cN8TIUuflLf9Y23edvYpXywtcaWJ4DDd2xzE348KUTiv+fFXS5w1p3ARtEeiXTYbCo
         Y2QzraWBbnjXqGVlYlCSh98vRpaZStYvlRMnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712275275; x=1712880075;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BubB/ZTZXGyOlYIo5JvJ2GYL9k/6VJ0RRIgGr3QHUG4=;
        b=FQtac7ktcHxcj3Zb1tsKPzAf/ZJw4DmopzYo9E5ncdLkwTJ174T2Tavb/7znpFB7XA
         FKZ/2FrW5BA0mZnSG6e8sEIFWRPqG3iIhZLYGPGXQBD6ZGS5e55dlrDosE/PUpgZv+o0
         PBWwQtaOA9nGMqaE70XOzloVfH/5+2ahKvCLuB4uhoxt89Qho1sU4PqlTech4pOYDizl
         2sYIh9rXIJqARGIxIUwAsPYo6gYrEtz7qN7OPrteXlj8CGxSBeA3r+I/zHFcul7EXO5s
         IgvbyI4qAgjnP85zwYLaJU/Wt9l7OWQUue57112+lgA8IjdJ8Dw5f6VqLt2sbY7yQITb
         f9zQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpgUkOgRBU8nWqQ7eDSrQoytO3Q94ncpiUBy0F40tnMxI8aFE2gjbnAsDJVn09mgF0SU0LD3DEgfge+rUIq/2WnNIld9Jeee0Y5vN4ng==
X-Gm-Message-State: AOJu0YwUncYtG2tXRknTjqncNJUeDMSdRch9tjhdgveDL1YMx1RDPBRB
	7sDWE2HoxIXCPS3Vj0GHyQoEcCJMiHsbf2LZ002WZjWqE9PguCqKjlGEgH4ovw==
X-Google-Smtp-Source: AGHT+IHHeoBPsIh9g3n+aMvqQ0ly90tm+3kUGSMVbGHLtLA2CIsxae6F593S7l6qGq8fl7xOPFRfEw==
X-Received: by 2002:a17:902:e747:b0:1e0:30ca:62c with SMTP id p7-20020a170902e74700b001e030ca062cmr1469256plf.1.1712275274803;
        Thu, 04 Apr 2024 17:01:14 -0700 (PDT)
Received: from localhost (4.198.125.34.bc.googleusercontent.com. [34.125.198.4])
        by smtp.gmail.com with UTF8SMTPSA id f7-20020a170902ce8700b001e26e1e62f9sm213048plg.176.2024.04.04.17.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 17:01:13 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-phy@lists.infradead.org,
	freedreno@lists.freedesktop.org,
	Douglas Anderson <dianders@chromium.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Steev Klimaszewski <steev@kali.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: [PATCH] phy: qcom: qmp-combo: Fix register base for QSERDES_DP_PHY_MODE
Date: Thu,  4 Apr 2024 17:01:03 -0700
Message-ID: <20240405000111.1450598-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_170123_783114_CE3AE8DF 
X-CRM114-Status: GOOD (  13.64  )
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

The register base that was used to write to the QSERDES_DP_PHY_MODE
register was 'dp_dp_phy' before commit 815891eee668 ("phy:
qcom-qmp-combo: Introduce orientation variable"). There isn't any
explanation in the commit why this is changed, so I suspect it was an
oversight or happened while being extracted from some other series.
Oddly the value being 0x4c or 0x5c doesn't seem to matter for me, so I
suspect this is dead code, but that can be fixed in another patch. It's
not good to write to the wrong register space, and maybe some other
version of this phy relies on this.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Abel Vesa <abel.vesa@linaro.org>
Cc: Steev Klimaszewski <steev@kali.org>
Cc: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7d585a4bbbba..746d009d702b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2150,9 +2150,9 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
 	if (reverse)
-		writel(0x4c, qmp->pcs + QSERDES_DP_PHY_MODE);
+		writel(0x4c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
 	else
-		writel(0x5c, qmp->pcs + QSERDES_DP_PHY_MODE);
+		writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
 
 	return reverse;
 }

base-commit: 4cece764965020c22cff7665b18a012006359095
-- 
https://chromeos.dev


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
