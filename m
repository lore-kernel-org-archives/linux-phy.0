Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5EFC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B5016115B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 04:49:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9B5016115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQBXLW+OxR3OTOGm+t8c5FU5EZPB3ImYloBRA75XXWY=; b=xz2vS3W3J2W5p3
	N4unYjLqBDXvvqzCtmILkeU5PW47vLmR3TInbeTRKX6U9UHYr6HbLyig22IGmEu5vo2yZt04nms20
	rEb5vJZxIqa7wgZMwathYLnmoPHw3OUrrJVn3n0VewiWgv4k0QwFRLvAH1StunMXj1I78sXkYqnQX
	13b/n3xcORfogDTX7TA8vEP+zdiazt3/d1VjkTkqlzaurPrP9XHMHGSctGTUBfKxf+O56dRk+5ijy
	uudQV7ZKYsWvkJu7JBM5wGFBYzVpL3M7n19XkYyFrKFyExg832lhc0yH3JJQN8Ic6QprFqN6Hwplj
	7vkSyCuujf3UC0ovJkJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUiZn-001YlO-3J; Mon, 27 Sep 2021 04:49:15 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUiZk-001YkY-As
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 04:49:13 +0000
Received: by mail-pl1-x62f.google.com with SMTP id j14so10918892plx.4
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 21:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yqut9De+8qKtl1UwHb70hm3Lp+Eib/4T+4ZznburE20=;
 b=B+jaGLcWqs5eaW1Zz7HJ5ZpRIcABigLjJ8jgI3gc+6UyUZjhZznJvDGZwWows5qK7f
 cY/lLDnR9u0gryCmklGfZBYrI7DA0WpJeIrw8jHh+0et3FA5mJ8LC31xZR7ioYrI/NUq
 tJ6umUpk+UlGiqx5W3/We8pZNrxG49sAft3lpk83nZXxMtBnyjML+dBv0529ys2RMu8Q
 kKOgczBrg52oLdBTPR4HkyjZQ+UVbbc+mqikypJ9EBAn9wsipLagu2FmLMOU33KKOFr0
 jOZRMvpfhgLTnkcII6Fo+jOEGRFt+8Sua16G5fhS2ehhza9fmiYA6YdAoI/3a0lpSUuG
 OKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yqut9De+8qKtl1UwHb70hm3Lp+Eib/4T+4ZznburE20=;
 b=aqn/1OBhh0nnynzh3HstYNnGIcCj3o3nSXYr07eM6VdTmMup1D91A6fCY3HmiQ4IVA
 xW5jgNQT3Qh6F3Kp+TejGP/bnGF4+/JLzlxrDpxpP74xBXfgTEDJ6/L9CG6wkUEd0UhU
 Bwgpmj/HWvvlvqj0rZFXDa8MdMR9WNvzyWaFSRqeTjn8GTrBdz+gtXHXngKTI96wHdeo
 bVYSV8MceUMXj1/4PurPXzKdUGb/4ivPNZGvxnCWNbGRSyaR/3TeEw437aO8RzSEX8or
 YxvWmFsAmmieJVlHatsDPOsuzszF1Kdoc165V4KX0A1CNfLw7O7bTMMhdVxn9XlSud2A
 AV3g==
X-Gm-Message-State: AOAM533hiMkdeWOnzIuUo1nG/FgHNTdsPiqxnVGDr4wo14Nh0I/B7I4+
 l6a/2dkIV20KwjmTyVztng4plw==
X-Google-Smtp-Source: ABdhPJzMdnW6OyUR+AHbSPpIu8fhtS0rEKQu96QW1RDDYE24xE1zJyIXGuqw/N9ORjpMtMCsdJWKkg==
X-Received: by 2002:a17:902:d34d:b0:13e:25e6:f732 with SMTP id
 l13-20020a170902d34d00b0013e25e6f732mr4337542plk.58.1632718151608; 
 Sun, 26 Sep 2021 21:49:11 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o8sm14550651pjh.19.2021.09.26.21.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 21:49:11 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Manu Gautam <mgautam@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/3] phy: qcom-qusb2: Add missing vdd supply
Date: Mon, 27 Sep 2021 12:48:23 +0800
Message-Id: <20210927044824.30246-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927044824.30246-1-shawn.guo@linaro.org>
References: <20210927044824.30246-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_214912_394463_CF4A0CA4 
X-CRM114-Status: GOOD (  11.21  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Per downstream kernel, beside vdda-pll and vdda-phy-dpdm, vdd is also a
required supply for QUSB2 PHY digital circuit operation.  The driver
works right now likely because firmware already sets it up.  Add it for
correctness and completeness.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index ae063a8b3e28..7a8e4333babe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -371,7 +371,7 @@ static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 };
 
 static const char * const qusb2_phy_vreg_names[] = {
-	"vdda-pll", "vdda-phy-dpdm",
+	"vdd", "vdda-pll", "vdda-phy-dpdm",
 };
 
 #define QUSB2_NUM_VREGS		ARRAY_SIZE(qusb2_phy_vreg_names)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
