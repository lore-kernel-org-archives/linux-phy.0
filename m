Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B65C001E0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 11:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EVoxdyLfeRDUiTOxbo1+ExKwISrhRJU5cFhFSRERhZg=; b=P45q0Anrniq4yJ
	7YN16lixAaJSG5KYIIz7DqaeUEU/6ZjGybFkQVQ9brHQu6EdhGZZbsQawlilT2qKp0ZpQuHK6FQVR
	Q0D7Yc6tbUSNiDfFibqNukA3QduBanCu9OtsMZhXBqKIHyUAY6nnd59Osl8/LAzihQJZmER/FG+ZR
	64re0L6cd/S20rX+WqW9ai6xbQLvE66584sUiiH8hcZAqB3RNX03JWcxarY6j47fYITWoiU+GRHwc
	fN+e7/fizIuqj46Ok7Em/x/1XFevCR6m/Dnl4p0SgVJa/5S13wyPSyKyxA31VqvRRWOHIx1OGRCBl
	g3PGWLcGN5toW4UO6ppg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQn3-00FIhd-16;
	Mon, 31 Jul 2023 11:10:17 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQn0-00FIh9-1Q
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 11:10:15 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fe3b86cec1so673361e87.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 04:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801810; x=1691406610;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2srAIP/YQi6mvgjbvgjdkh2d4Z5eLGc0irCc+WgA5YY=;
        b=yDWu8VEB6cUW3L1Klq7jM/n+7qBYpIlXO7LmrYN2hsPFPdxBZoNntJkvQyq3UZFUbx
         4VWCJF8H1/nIFwyOXKBa6QLw0TfZGAji6fCBo2t/td3IQqQ8lPFlLc3WLFKXf8NudJ5l
         cAUh5aFM94GzAd9UzERfZRSP6oFvRvZQ/jkpLuP8cp8CGBXBEKZRA+y4yzWdDSW3FR9G
         CnMrQCgXaC3UOzHnujh0NPeTJVEQunzO7Z/qcKlAv6TtHv8xDcVGMtX0ALAklI5du30F
         XShosTrki2F27qw2AVViFAR/9C1Ijgu0HxTj4P2ktl9HSASV477AI6cPs/kqmdAMh2Uk
         pxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801810; x=1691406610;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2srAIP/YQi6mvgjbvgjdkh2d4Z5eLGc0irCc+WgA5YY=;
        b=iFrIuTHPUmFaQLmhfPEpY29xJWQK3bw65d0o+uqrcgadRERtDWq6iycEsn5K5R8sbk
         DaAQkVSkH9q++t5SacNnQFm08t7MV/BB3HTjZjI1aJkzWDYsp8cPexELFIE7lQuAqGAR
         dSTQj7Ok7bipR/8JyjXDm2uwwKWPfsQMvgNb6w44aFBRKAFnXSEiNMqp+M5oDPhcZL5I
         g9q54VcB9Rke/lPu4vWg/9sWMJ02l4VUq9lGFFXnc3UY62hV/Nv6RCUsQaPP8w0Za7Ae
         VzTjqc7XXAWubxHcu52CAka/7Rf+4kvh/8oJNW59FtOUw3KMGzI1KMR2TGb/XSEmYkzH
         8WGA==
X-Gm-Message-State: ABy/qLZDWuKDcPWxvEIN0aKYqCWaZJ9yUHv+6PlLwURKvvV4MXVq5Wq8
	3HraV2F7/1coTNm4tm6BB9cdUw==
X-Google-Smtp-Source: APBJJlFOl0HTzDRqfOVJ+zlH7wjpb8G6BdA74h37Uisqly81lGqAAQtTUHFzcQk33kbeCz5juj7Nhw==
X-Received: by 2002:a19:5f1a:0:b0:4fd:bec3:776a with SMTP id t26-20020a195f1a000000b004fdbec3776amr4683437lfb.61.1690801810386;
        Mon, 31 Jul 2023 04:10:10 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w5-20020a19c505000000b004fe37199b87sm429683lfe.156.2023.07.31.04.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:10:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] phy: qcom: qmp-ufs: add missing offsets to sm8150 configuration
Date: Mon, 31 Jul 2023 14:10:09 +0300
Message-Id: <20230731111009.3998089-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_041014_489579_48799A1E 
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

The conversion commit 7559e7572c03 ("phy: Explicitly include correct DT
includes") misses offsets configuration for sm8150 (most likely it was
developed separately from the series adding HS G4 support and was not
adapted for the sm8150/sm8250 configuration split).

Add missing offsets to sm8150_ufsphy_cfg.

Fixes: 7559e7572c03 ("phy: Explicitly include correct DT includes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 03cd47faf3fd..3927eba8e468 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1009,6 +1009,8 @@ static const struct qmp_phy_cfg sm7150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8150_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
