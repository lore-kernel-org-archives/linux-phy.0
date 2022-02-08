Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4870C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 00:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3UEiRl6tUhBrmHU1BhNLtw+eeSHQlYSFP3liTLNg1c=; b=XHlcNFZjdkDf95
	6U/AK4IJ0zwgv+MJNnpNTgmZLeeSwXDTsvOd7kMNTDr/JkDeOPKwDatX3RSqxH+B+1VlAR38EbxVI
	BCDDMfKAJlocPC/OozC7QtiIbFfKUX3gFydTCux2+wIpETDJ0eaofsn+sKxUhOTA8bmzv3LfZ0xiI
	kCZelcn2VsUAkM4DDU30Akv2Bswm0dijRdINxWbEEeA1/ibkJTl79p8H+4vsIniFAXRroVC2xpPwP
	vTs2vDNKU5g0prq1KZuvO68zMBXQx6b4x+ngPoXyKBGrTWahJGqf36uO6cL0jdZ6MThp1vSlu+WOl
	AThTMvDPPi6WkPC0es8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHECN-00C2h1-5L; Tue, 08 Feb 2022 00:17:35 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHECK-00C2fr-GE
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 00:17:33 +0000
Received: by mail-pf1-x433.google.com with SMTP id u130so15896586pfc.2
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U33ZTHwgHmjIzYzVW35GSTUErZveTsvzYRI78IuL0pI=;
 b=PKAr0GJCu78ei+S4Lat41so9TQfJkESk2YAtsBLsuDgdCKYbchdWWZO0zcikvlM4qp
 SEL9aoQ+G7EDbuJwajYjmQXILX6hHHyQxcI3O/cOVfV8sA8Da7g621rfx5Mqzcf4Qh5D
 6SNG+Ui/OunaDApsqN5YkvnAB5mfr8npQe+iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U33ZTHwgHmjIzYzVW35GSTUErZveTsvzYRI78IuL0pI=;
 b=uX+MOPvdw+0HPDFBPNsetCk2GQf0gIU6h7qp+zJxYACtGPUAdrHo5Zl+QZ/J6FJm9E
 HYJSk/wGqRXjMoA9QJjc29/5yWUzu551zOWkWJNqO0ic9ZnnHlb4jUP4IqUnIbCg3MV+
 uUEBzvcBu5/aU3bUqIj0l9hgfS4IyA5+wgg/4MuxoDbPdGz5bvyER2Hduw+MQDtFNgEN
 XCoj+dCi9n0JmH1xRWlZaVdZ62mfUmOu+BPxmrzY4KtBkxxaROEeKwKF1KvUKeUW1ddX
 EZgXg7PgKNLBw3dzIo/bAFcTy1EM80DmofTYjCR/DQ9qH2yQwNqZQVSgepgGfyHcnr0J
 Vl3A==
X-Gm-Message-State: AOAM532qwew+44l8CgDCYMfKwec2Y0riuxT5Gvue5NZdv7HSejmYyYb5
 Z8FsxrtyG28oWPZMhp3Syzm1/A==
X-Google-Smtp-Source: ABdhPJyat6mgLk+B7LHmqgM/oZQI4LpOtABby6iQ3FD5YT8iXzyLG2E7KhwkS5O6kFxtifv6r+5mAg==
X-Received: by 2002:a65:5801:: with SMTP id g1mr1479962pgr.43.1644279451436;
 Mon, 07 Feb 2022 16:17:31 -0800 (PST)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:6c4d:c442:5b4:f597])
 by smtp.gmail.com with ESMTPSA id mz4sm456185pjb.53.2022.02.07.16.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 16:17:31 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, robdclark@gmail.com,
 quic_khsieh@quicinc.com, quic_abhinavk@quicinc.com,
 linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: [REPOST PATCH v1 3/3] phy: qcom: Program SSC only if supported by sink
Date: Mon,  7 Feb 2022 16:17:04 -0800
Message-Id: <20220207161612.REPOST.v1.3.Ie81d594ec2327dae6410db359cc492484bab171f@changeid>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208001704.367069-1-dianders@chromium.org>
References: <20220208001704.367069-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_161732_586777_5E59B5B2 
X-CRM114-Status: GOOD (  11.50  )
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

From: Sankeerth Billakanti <quic_sbillaka@quicinc.com>

Some legacy eDP sinks may not support SSC. The support for SSC is
indicated through an opts flag from the controller driver. This
change will enable SSC only if the sink supports it.

Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/phy/qualcomm/phy-qcom-edp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 21cafbb623f8..cacd32f6e0cc 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -335,9 +335,11 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
 	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 
-	ret = qcom_edp_configure_ssc(edp);
-	if (ret)
-		return ret;
+	if (edp->dp_opts.ssc) {
+		ret = qcom_edp_configure_ssc(edp);
+		if (ret)
+			return ret;
+	}
 
 	ret = qcom_edp_configure_pll(edp);
 	if (ret)
-- 
2.35.0.263.gb82422642f-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
