Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E0DC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60UmHwlGDakYtZVsipwjnLbjw5cD4Yj9zq+5G4EkbUk=; b=d/0ovn6M7KHpzh
	YiYZeEO9KR1byngzURrQQapyOhnIMje0Mkhi9l/uTT6rgebtPjd6cwZ/0ggyYtZioOsjsp2rvHSLV
	1xfCR6O/anxJ7a/cGUtnfF5X9epNf9gmuzCxIHvBvNOAoFeiLBM3tpLVf7/E+SKYqVgz94LsbtXhv
	Ew3Hag8Tmrq9PQEzOM6L7dZAbuXxoVY8BzODRyaq6NPjrmuOtoDklXXwUcY5XR1sPPZhJHwxhhduA
	qMmsYXQe68u56GE26jT/e8j6kEsH/MuzuXYQWv3dvI/KoDLT84X4eI3GZEKuVnWrKJgVE7Deu5j0d
	/aNq+eZlghVriyomTVAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHECL-00C2gP-2x; Tue, 08 Feb 2022 00:17:33 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHECI-00C2fK-UM
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 00:17:32 +0000
Received: by mail-pf1-x429.google.com with SMTP id n32so15867489pfv.11
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nTlV3k37gSPHQGzmdqOm/GQ1i6HEcGZeJS3MfQHco/Q=;
 b=M5IpI7YRyKlWY4qBdZy1pKA9RYnZ+Ebe1N0CcXRXZlljjHQ4/zokdaM2NCNybfFofw
 lxmzOksfUzhLpcPbp+YuUqxl+teCZFbXQH+POfhpO/FOimCe6m+UAfM0ghM9ljIv6Xhm
 q0/JbWU8GqMIChOD0YZNK62Kfw/7SdPt9d/S0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nTlV3k37gSPHQGzmdqOm/GQ1i6HEcGZeJS3MfQHco/Q=;
 b=zfI2TjKeXGcqf8iBF58h+v+aqeDupQQS0RvoX0WuTcP+lLHJDUz7+DFEjmAH2SBi+a
 J8YKs7g+ln2IP8iZ5HCMpD2+rOuXMqB1NfFLBHIfL6iRBnilzow1G+xo6okDX9MCOtLl
 PIMuMVsRn+CreFIm8uLqYjSbRyqcq0/vS1Y1v/rugvx/acrL0OY63zTY/PUEI8FhRON5
 ZNefZXVGXYcfqhk2xKQA59R4IQWajIsEj7MAPjmJt0600KNkBejNDipIIQcabPuwicS8
 LbsspnUNAVIgPe7weIkkWM2e3QKOV089+G0rpIlCK24ODHVeUJowXKGyBsgBGiI3cbGa
 yJqw==
X-Gm-Message-State: AOAM532X1XfgIjEoGoLHFQSmjHfpl6Yd6Ztweqs5If4EjZbTHlXQzqDy
 qYXK6P4tC+bg62zKhhEmcVSumA==
X-Google-Smtp-Source: ABdhPJwG98yng7p3MlBGXtlfXIidY+MiUfzYLK2chW7OnBZeCQhdaEAEQTFW4ym+ghAdjmC8mLTLQQ==
X-Received: by 2002:a05:6a00:23d3:: with SMTP id
 g19mr1808125pfc.27.1644279449844; 
 Mon, 07 Feb 2022 16:17:29 -0800 (PST)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:6c4d:c442:5b4:f597])
 by smtp.gmail.com with ESMTPSA id mz4sm456185pjb.53.2022.02.07.16.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 16:17:29 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, robdclark@gmail.com,
 quic_khsieh@quicinc.com, quic_abhinavk@quicinc.com,
 linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: [REPOST PATCH v1 2/3] phy: qcom: Add support for eDP PHY on sc7280
Date: Mon,  7 Feb 2022 16:17:03 -0800
Message-Id: <20220207161612.REPOST.v1.2.Iff75c0ea8499f0baf2aa5800f2c45c4128e2415a@changeid>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208001704.367069-1-dianders@chromium.org>
References: <20220208001704.367069-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_161731_001375_EA297F35 
X-CRM114-Status: GOOD (  11.22  )
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

The sc7280 platform supports native eDP controller and PHY.
This change will add support for the eDP PHY on sc7280.

Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index a8ecd2e8442d..21cafbb623f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -654,6 +654,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
+	{ .compatible = "qcom,sc7280-edp-phy" },
 	{ .compatible = "qcom,sc8180x-edp-phy" },
 	{ }
 };
-- 
2.35.0.263.gb82422642f-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
