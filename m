Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27575C25B07
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m26feL4JChGNzvrxt38Z3rOJT3b4Hd5QdohlbPrPV+Q=; b=l1iefm2kJnP5HJ
	luKkifVB96tiibYbfbNh5wi4BnhqBWLWwoghpb6eh7QRARzLIkn+1n1NgdlDhdAKsWWT1m5M5kzWy
	R7SLiYJsA/YMsCEFQMTsuqarroEbth9myeU4KUvxo9JZF03l5is/oTpeS0qKH8T/JF8n/NtdfzmlV
	HWXRzItlSq6qQRihCWS7AQpLdNnXvAXDJX46ztObJbojFBodUmFQwJCUW+IkwfGCmkpIpHUeDVn+o
	O0eAUv9Q2RQbptzTspwMmZUYz2ejKrxw0SEhoLYpbxWL18TgGlXLC5a/knBj/PnjTo26WkqdqBwP0
	jMXw0HjXIsZzaXv3Qijg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy6-0090Wt-E8; Wed, 10 Aug 2022 04:05:18 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy2-0090T7-Ja
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:16 +0000
Received: by mail-ot1-x330.google.com with SMTP id x1-20020a056830278100b00636774b0e54so9836077otu.4
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=otMbQ+fUxY1KqKVlgDpCNz3GS8mo4JE64ISTgGLY7Bw=;
        b=oPeYvsLzthrz/wujDz0x/KTlTkoB+UZmMOVZZjqZIzw2t7p1M+oZodLqLyVDF+VWIf
         ShCQapeXpthbW5woDkAX/t3LC7d0BYxdmKqGRnjJ/kirHgAJvSPjQzUdL9wYBMXmM0lU
         e9qtqsJq7q1Yf0LAMlLRdwQeGbsB6PhCHBpYd/YnbIzx0/JZzo4Ngw6flLPerrHB2slx
         l8XSb+KPrM/zk1Tz1TH7ObJSqiEmmVBN+kPlYWOqgeWZm5aagYKpQRn2ufTrwecc/nN3
         B4Rouk2kAS1ttVijfZIGlf9o7QFzV3E+oOE8C3InauGXSiGSQnv2BjQpZCwpAhTRc7h8
         C7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=otMbQ+fUxY1KqKVlgDpCNz3GS8mo4JE64ISTgGLY7Bw=;
        b=gdu876nn/cnTBtB91no5qeTXpVUJA/8MLRN8DAhtp2T9ryQe7OO2u51VQurCPrIUCT
         +UWQy1axOBajxOHq1FjMhC/OJ/3gr8YD0HPamWQhye89/8HzaYu19nnIhZNZaYH+3JfF
         rN9lmIVBwCD+PdBS1jzwiC87hyDaBLx1ZjgipfbyD6ogJVQTIUj6+o1eN4tZFvyOHctL
         mXXRWR3Pnvgt4+8IZe7b6UPMyrK97sRGMy021KeLkT+rjjo9Hxf8AtYrwHSuZ82EfNeC
         8v5GyIoQyAs9dkkmYBJZCnKbC66jOwswv19amqMqnnPYZ0xrWYbBr7NBQbeC3fMjT0N3
         LibA==
X-Gm-Message-State: ACgBeo1DCNwsnoJqaDZTwvI+jMjQZxIrE/TXF6ES3ExfB1CkKIMDm5p8
	mIxygvTyZ2/QFpsnQbJCJ3h4GA==
X-Google-Smtp-Source: AA6agR5PSzQ8RoK4TmRdA43VijbvZZNJhXAslG52xfwT/rylQBDFDrhutFH1LFS21v1AOHoPPevuug==
X-Received: by 2002:a05:6830:638d:b0:636:a941:d467 with SMTP id ch13-20020a056830638d00b00636a941d467mr8679172otb.5.1660104313495;
        Tue, 09 Aug 2022 21:05:13 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:12 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] phy: qcom: edp: Add SC8280XP eDP and DP PHYs
Date: Tue,  9 Aug 2022 21:07:45 -0700
Message-Id: <20220810040745.3582985-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210514_665451_0B724BF9 
X-CRM114-Status: GOOD (  11.30  )
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

The Qualcomm SC8280XP platform has a number of eDP and DP PHY instances,
add support for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 74 +++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 301ac422d2fe..de696108cf6e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -100,6 +100,78 @@ struct qcom_edp {
 	struct regulator_bulk_data supplies[2];
 };
 
+static const u8 dp_swing_hbr_rbr[4][4] = {
+	{ 0x08, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x00, 0x0d, 0x14, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x03, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_swing_hbr2_hbr3[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x00, 0x0c, 0x15, 0x1b },
+	{ 0x02, 0x0e, 0x16, 0xff },
+	{ 0x02, 0x11, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_cfg dp_phy_cfg = {
+	.is_dp = true,
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
+static const u8 edp_swing_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x0d, 0x16, 0x1e, 0xff },
+	{ 0x11, 0x1b, 0xff, 0xff },
+	{ 0x16, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x05, 0x12, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_swing_hbr2_hbr3[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x08, 0x11, 0x17, 0x1b },
+	{ 0x00, 0x0c, 0x13, 0xff },
+	{ 0x05, 0x10, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_cfg edp_phy_cfg = {
+	.is_dp = false,
+	.swing_hbr_rbr = &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -767,6 +839,8 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc7280-edp-phy" },
 	{ .compatible = "qcom,sc8180x-edp-phy" },
+	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
+	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
