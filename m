Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E970DEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beDLGeacroMPrd+CTp51WRmztKPVBnZm6TCQTOjQWQo=; b=dgO9nW5BRA/5KD
	z5vFKCj0/XVMByPggVMzWfklxurI+9ElTQtHRydNyPrQmePd3GCECETTYkwRZtgx/M0v2r+sZ2IEr
	Ulio9eGGkY1MQ+h9dhnh/dwPuFT9GmBk/zUb7C+xDblv+KTq1GMk3kiQ1nA1vRr9q11XawuxiZNZs
	fOVUpI1FyYRM/Aa9tIyB9vDS1CYCZ6Ivat+maQa+L408xi7AKR1DIdk1cyrf9Pxf48rP7YWZU4OVj
	CEXceKAYK38J6tE2LFZ6G5wYhc1OkdyqL9YIZwUGJuZyXP4uwzBAfaC2fWtHwk7k1EGhlYhpwhZkB
	7CqGE2rvj5A0cJa9t4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEif-00FBrI-1n;
	Tue, 11 Jul 2023 14:52:01 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEid-00FBp3-08
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:00 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b6a6f224a1so95377761fa.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087116; x=1691679116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DwpWca9CgyQ35ZSWhMi/urF0BbUmz+aNWYsuyPPGirk=;
        b=B5WpYTbTZlwh8+GVpCU6O/Qv4Dffba2h9NL3e/l8kawk4hWNyqHOFcLpy3K/1WoBCU
         U5GSpLs7Tqr67ASi66weG8CDza7OX3OIWU/aPr539ynV3E/Nvhk8pTukLBtbFBv9WVI7
         2IC1BOQWZ+La1k79bVk2j+TK1pyw9ACo/wK2NFyOzuntcVTTie9n/rLYn/p7kwmOT4s8
         SbBNXjX6+wRxgYx/avb74Zw94jSBWZtzyRvxnuhw4ukmwAFTyz25aLqCcLU0yLgoiP6r
         aRcLmov7YlKdZortU5SxkHo7zSn7uPZ/409mv4BkWKZw0+ocL+ub5W3//6xb5k8aB6s0
         eDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087116; x=1691679116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DwpWca9CgyQ35ZSWhMi/urF0BbUmz+aNWYsuyPPGirk=;
        b=ZvawzOJJgb43j6p0KL/oY+DVp/iO6Y7rHUjdnJKdm6sbmSYu6OGL4cuX6QoScPt+ej
         wXGHEew6DcOYal1oV53yUar2K9PlqSZOD5uL7Z4LePqK5za95i2P6FEYxyP+H5gw35VX
         8GGswkR5y+jT7kUlrj1hGo6tLUA2OiDrF0Bn+D2YOm77gzB5HEnF/t9AO3m1mqhctw4i
         0D1YdMEIb/9qSvzHlbpSd9apFPDgrFh0ZTAnjc+z0iY+Vojz1kUXL2s+PD90N0hDffWQ
         /p5keyMDn9Ig36JQfxzlK3+QuRYHTLo3S6PhqxVnyD0JOuD7v3y1XB3XDJH9JE2ge1W0
         RsEw==
X-Gm-Message-State: ABy/qLZxmZKWWEbFtiUMWBlNNC+Xcbqv1ZzcH0zjx+2l9z1vBhiYrRR/
	uI1jUWblzAAGcu+MtKhAza+ycw==
X-Google-Smtp-Source: APBJJlFSi+OhNwfp7UHazwbounYgkkhI7fbQnOcsPDpQUISsmRs0wwGppsyd50YDka3uxhRVFQDIZA==
X-Received: by 2002:a2e:9d16:0:b0:2b6:e9e6:b50b with SMTP id t22-20020a2e9d16000000b002b6e9e6b50bmr12626013lji.25.1689087115708;
        Tue, 11 Jul 2023 07:51:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 02/11] phy: qcom-qmp-ufs: populate offsets configuration
Date: Tue, 11 Jul 2023 17:51:44 +0300
Message-Id: <20230711145153.4167820-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075159_076884_DADDACAF 
X-CRM114-Status: UNSURE (   9.27  )
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

Populate offsets configuration for the rest of UFS PHYs to make it
possible to switch them to the new (single-node) bindings style.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8c877b668bb9..d99dc1043f74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -833,6 +833,8 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= msm8996_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
@@ -924,6 +926,8 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sdm845_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
@@ -1038,6 +1042,8 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8150_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
@@ -1070,6 +1076,8 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
@@ -1102,6 +1110,8 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
