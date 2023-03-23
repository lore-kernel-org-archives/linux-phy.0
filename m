Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D312C6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 14:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dCGt0BCp/xp0h5Es2aKPk476oZ3sVf27SgIETMt9030=; b=Os6CM0I5nrBXg2
	J0Df2BjGIv29mi41y/QNfk8t5GNZ6OvzYqVhbo3ALISh8cmRoONvAmC7sJT22BZELuWHbHlJQIiLA
	jT/3QbQ7QD5Uvf0BUqqrMQnXoxnS1lueSv0CIsky2x5wU6qilece/1VfeuGyEnxprsxN/MkYR3j4M
	DCMD5AIqOfCQf//gYMvn6V4AId0nCEgETj1HKfNNNAGZrEjynA8FUndBa0eSb8qC81exMwVhDRBjv
	XQF/i7PqSdkdw0pGlRqfZqozYB3pPHN4mnXvfUEHaXxejavg9kLPB44iHHxPrOoefmdhz+OCY3QXv
	xsvCusjNl19hBPWAc9ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfME6-002DiY-06;
	Thu, 23 Mar 2023 14:47:38 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfME3-002DhF-0q
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 14:47:36 +0000
Received: by mail-lf1-x134.google.com with SMTP id y20so28103974lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 07:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679582847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dkVzE0c1IRA8Gk0//5W10K4Vfb8zGz9NSISS6mug9tQ=;
        b=JxXoi2ksQza7GwzgtyPBSN6/cyfLoUIk/3czMiTIcV/TVr73dVJFmfAA1oSuyHh3q5
         x+0XQ+X0cuCKH46NKThXjHIU3/n1Hrn5rVGwMRnVDZdKhQDXPUt6tNIssh00gPQaXa+L
         8E637Kpz/JgUwSr1XYsKE9rCbHja4aRWPp/G+clqntpIo14P5VuM4ER6/U7BpxDcBw8x
         oF1aBtxKhiQ7G7KV1Neh30UoxPuUvMq6vU7Ev3Kwn06qXFJLQR16hVb2hzIzxYmxH5RH
         nHN+YNjGeJD+GQNGuZ/6j5+Xh9A8W9o68fGx2n4/FouTAiXX2aq0W7fpdkw+iUr4flCd
         Z/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679582847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dkVzE0c1IRA8Gk0//5W10K4Vfb8zGz9NSISS6mug9tQ=;
        b=DkhP3xC7rOfuJoaEBSG/Z/AtTzeTkD66sGzlJzAxvXBE1mS70XXuWKfaE3TVAHBhGW
         3EFQ+BuVIlcFqu6SfgC4rNxO8KYXNM8gdoW39kAq3vgPOEtHwa1YVqA8LloVaSn5+qZg
         75oOrnzCSXt39GBEvfSJsEBtPzbzvkzA00LFzqvoRSw1YfggBdWCbBN8ROCXGgcyu/2T
         GpCWQJY+he9gbfMsNLSrHmyos4agk1aR3jbDmcUIQf+cep/nbxLjUswsOeos7e07kUGS
         /qtdFaL3lNJkzlZBn7tEdmECQ9EkfDNiaULbRiAM/Hu3n3wxQtOkkr5sYcrl/337F8Fz
         v4gQ==
X-Gm-Message-State: AO0yUKX4R2Pg+MAhe8hBf0q0ls8VMAFShyguO9Ca4plhEatWZ/eq9ClF
	Oy2dzpCnBxdl5rjkIKxHlZCHPw==
X-Google-Smtp-Source: AK7set+Qn4rMzzUH7pQNtNX4kjI/1cPBc5aaBV58CJkUWNDEvtiDTDvCRLX54C3PTtTXvIgx4gB0mw==
X-Received: by 2002:a19:5210:0:b0:4ea:d6c7:c897 with SMTP id m16-20020a195210000000b004ead6c7c897mr3134613lfb.31.1679582847509;
        Thu, 23 Mar 2023 07:47:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z15-20020ac24f8f000000b004e83fc5f627sm2922033lfs.188.2023.03.23.07.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 07:47:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 1/2] phy: qcom-qmp-combo: fix v3 offsets table
Date: Thu, 23 Mar 2023 17:47:25 +0300
Message-Id: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_074735_293456_380510F6 
X-CRM114-Status: UNSURE (   7.85  )
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

SM8350 and SM8450 use qmp_combo_offsets_v3 table, which doesn't have
PCS_USB offset. Add the usb3_pcs_usb entry to program correct registers
while setting up sm8350 and sm8450 USB+DP combo PHYs.

Fixes: 05bd18348b88 ("phy: qcom-qmp-combo: Add config for SM6350")
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c1483e157af4..3b488d12c933 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1396,6 +1396,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
 	.usb3_serdes	= 0x1000,
 	.usb3_pcs_misc	= 0x1a00,
 	.usb3_pcs	= 0x1c00,
+	.usb3_pcs_usb	= 0x1f00,
 	.dp_serdes	= 0x2000,
 	.dp_txa		= 0x2200,
 	.dp_txb		= 0x2600,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
