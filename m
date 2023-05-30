Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73D09C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKJfzwSqzCdfbKgUgp6M80itDMjefYxSLPR23+qfJSM=; b=gNX47oee3oYzHv
	cng8qUX2egxGZUIXAKNOWwwFlZS2bQv0qesSQYAA/QJs+rI9LyJ+7R1O1eOQPG2qMy0/TzoOXcxQA
	NCLnVM0OZd4gTfFRsAVds9ZBpbII/dBXVlgJcl09eWdPF1yScqQM495Il04Jce1TrD51VwMj19RaF
	N9lH4dI+j3tbIsvMO2NFtHl8C5fvcAu9SJi8Xq+0FYi/55YkBjfblV/VM6dcg7u4N1aT1QsvyzvIK
	jjrQznjZ5zVR41muYeWtdCHYopD88anWl1CLji7kw1vP1vApFkV8WAFMPfSyf8fYudNgYyYs4cOQ1
	I4OhBE0j9bMDv6nNDJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3uuf-00CzEC-0P;
	Tue, 30 May 2023 08:41:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3uuX-00Cz8t-1I
	for linux-phy@bombadil.infradead.org;
	Tue, 30 May 2023 08:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ctRkf1Nrzpq+Bo2Yx960UtDdp4B1S01USNtgO/gQUhM=; b=NtApw/m+UUX6KUP8RuOUihPy3Q
	LPcVmWbbKG6dyfZ0KjULkzLo8zT6no/EGLTlxCptk+SX1ahhKc+Gv5gVdAJ+jjEnQNQXf+dxJqujg
	cV8UZXu1PtywVwDCzc49HMkyuxc7ibMBiSurFJScBDpDUpoVIMIdnwD+3qNVnTfVpyEIxZ/l+6/vb
	xJVQ2Jp1DSFTdNAIG5aN3JG9qouYtIsW+yu2tOtvFm1jEqt5ByIsjBfAbef8BkD9NquopWRb0m87m
	ZLIvRQN3RHeZKrBcbz0QiPdS3Bc4+aZYWRsUUgMKMgJuEqtgRMAEDcI4ue+GTIYdCx2V0c+VbZ9sW
	86+ad72Q==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tvw-00Dbrm-2W
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 07:38:26 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-30ae7cc0e86so2119921f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 00:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685432298; x=1688024298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ctRkf1Nrzpq+Bo2Yx960UtDdp4B1S01USNtgO/gQUhM=;
        b=jMMrGUJAvfTZrZqX1mfK3okGKWvfNOoy+yZ4cMmFMBEU5SuvcgxRjsnG3DAsSLAZYT
         +8ANXDrhIBZOpGdTZFDJa4xt4wOU9Yy1GrENAbMGs0cSSklsmTzzdaPR7sbjsq4Hlwcv
         jL12ccLOUzaLRA+3w8EKTc5xC61IdMlSvE1LioGfP7sHYLJRWH866kG06J838NOfE0lG
         +DMABJ5t4tJxq6AAlh2GD0v6jQRgizrj41ayPgvVyaKbAwvbwpHWZtxOTCWeL8qOwvx5
         eo5dOW1P8R1GPTcODWWuc34BDSeSxqmO1B4LncBZQE6gR2jSF8pfoip9FN8103eg+FD/
         Qurw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685432298; x=1688024298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ctRkf1Nrzpq+Bo2Yx960UtDdp4B1S01USNtgO/gQUhM=;
        b=OTLWIRohwiafC37My+PrbVmXQU9f6zlX3s13/E67UA4iV2uXxwxfMXrYQ+mG0oOZAz
         5EivQ6/3rPKW0WF0VMcR+ATClsfGbzNTBqHWeIv9yE3C4wj+ir8Spke4tJaAXJ45oWdG
         8+o7hk9rm2+K2uCsL0ylnMct7x1P9G3im4wkOGwj1gZbKz7mZVXrP7bFRB55jleIYf4q
         YgwfZXLOd6NcpjJbX2jW8gkOtrtLxlGRwdTzQY+3wSKAj/4ubmTxValxP7iXwc5OEJPw
         i0PEBx4P2zB0hylwkf+sSSSq/Df1p2wcVvfpQDTuy7NWzTkwBcPiCq9dWnp+6Z8UVQYF
         hoNg==
X-Gm-Message-State: AC+VfDwIfjQ1+AW/e8N6W2JEbmOtoRm42Cxfpj1RUcu/P2Fw84IMA1Ip
	+apownC75Akgn+tFpyvFSpIGXw==
X-Google-Smtp-Source: ACHHUZ4C7tOtF573M3nwtI82CwuRsBcqayZMHzvOm/CW35Q7iEfXvwMttSTu2aZcZb8Vt79OK5xKIQ==
X-Received: by 2002:adf:e74d:0:b0:2f7:8f62:1a45 with SMTP id c13-20020adfe74d000000b002f78f621a45mr1236774wrn.66.1685432298189;
        Tue, 30 May 2023 00:38:18 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m4-20020a5d4a04000000b003079c402762sm2312013wrq.19.2023.05.30.00.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 00:38:17 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 May 2023 09:38:05 +0200
Subject: [PATCH v5 04/17] clk: meson: g12: use VCLK2_SEL, CTS_ENCL &
 CTS_ENCL_SEL public CLK IDs
MIME-Version: 1.0
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-4-56eb7a4d5b8e@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: "Lukas F. Hartmann" <lukas@mntre.com>, 
 Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4965;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ykSwF0V0lUS+Xeggc75UkrBZ6e3mEPjzepbC0GhniEs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkdafeS+RBYJ5gBUnorLdUmAymfM1ZVs6kR7L/wisf
 VI37kfGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZHWn3gAKCRB33NvayMhJ0T+CEA
 DGHyBfRCXIDqYZbNurPI1sb/Ze3ilqYZTVrrQuJjM90Tdl5a0o8b0qbWQ4kDxqEAAU/IEY99JNJfed
 fN2ZePLSSArZ3dWZ27Uz9sHdan8oAH6ato+VnQaXwv0Gr2sVJd0pkIOhITtBi9S/R4LLjuwi4t3n/d
 j5HDJAkYcOJdI7Dchkjdz48fItlAadx8zAsSwHVL/kKBE9wAQOGjeK1ew+fIyDCkNvQOTadJCi6NxA
 aV+cql+M0q6BDWHu4yicOdD2mFyMSpVKCToEI/FLBTD+ygyZvxe3eQuKD9SGVqnMC599JfvAAI0N1W
 oo9R9a2rBKGTakLKlQkvN2mZ2m+8Irmb+TzSa6KuKz7KdvfOt+yr5DKoI8P8xh0PxcafZupyoPe96J
 zYufDbbAKJ1HvsSWuPk5qiU1wcEmDl8aPbkq48H0J7VDdNgCUIKvpkj3OjW9Q00lhqlubi20bMLBHd
 DawwHZqV4+uT/DnKHLjjAJXDw3M0lbx8Q7bmDywDggDW9DVEo2WdK2PEFe4Dn4h+ffxePtd3kPt3NU
 NugxodI/LFlkkgSxrZ0PRvdcAa8mVl34uRbcF+ObjLhe/HiKKIBhKZax7QZsWqxLYX/KjGc940s/fL
 jLXmJXY5pD4LmSVneMDFo94J6M24fGigo/zZALq+zEpiX1hoqd4Pmbwr0KDQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_083821_509646_9C4ED13E 
X-CRM114-Status: GOOD (  10.35  )
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

Now those CLK IDs were added to the public bindings header, switch
to use those defines and drop the PRIV defines.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/meson/g12a.c | 18 +++++++++---------
 drivers/clk/meson/g12a.h |  3 ---
 2 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index a132aad2aac9..461ebd79497c 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -4411,7 +4411,7 @@ static struct clk_hw_onecell_data g12a_hw_onecell_data = {
 		[CLKID_PRIV_VID_PLL_SEL]	= &g12a_vid_pll_sel.hw,
 		[CLKID_PRIV_VID_PLL_DIV]	= &g12a_vid_pll.hw,
 		[CLKID_PRIV_VCLK_SEL]		= &g12a_vclk_sel.hw,
-		[CLKID_PRIV_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
+		[CLKID_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
 		[CLKID_PRIV_VCLK_INPUT]		= &g12a_vclk_input.hw,
 		[CLKID_PRIV_VCLK2_INPUT]	= &g12a_vclk2_input.hw,
 		[CLKID_PRIV_VCLK_DIV]		= &g12a_vclk_div.hw,
@@ -4438,12 +4438,12 @@ static struct clk_hw_onecell_data g12a_hw_onecell_data = {
 		[CLKID_VCLK2_DIV12]		= &g12a_vclk2_div12.hw,
 		[CLKID_PRIV_CTS_ENCI_SEL]	= &g12a_cts_enci_sel.hw,
 		[CLKID_PRIV_CTS_ENCP_SEL]	= &g12a_cts_encp_sel.hw,
-		[CLKID_PRIV_CTS_ENCL_SEL]	= &g12a_cts_encl_sel.hw,
+		[CLKID_CTS_ENCL_SEL]		= &g12a_cts_encl_sel.hw,
 		[CLKID_PRIV_CTS_VDAC_SEL]	= &g12a_cts_vdac_sel.hw,
 		[CLKID_PRIV_HDMI_TX_SEL]	= &g12a_hdmi_tx_sel.hw,
 		[CLKID_CTS_ENCI]		= &g12a_cts_enci.hw,
 		[CLKID_CTS_ENCP]		= &g12a_cts_encp.hw,
-		[CLKID_PRIV_CTS_ENCL]		= &g12a_cts_encl.hw,
+		[CLKID_CTS_ENCL]		= &g12a_cts_encl.hw,
 		[CLKID_CTS_VDAC]		= &g12a_cts_vdac.hw,
 		[CLKID_HDMI_TX]			= &g12a_hdmi_tx.hw,
 		[CLKID_PRIV_HDMI_SEL]		= &g12a_hdmi_sel.hw,
@@ -4642,7 +4642,7 @@ static struct clk_hw_onecell_data g12b_hw_onecell_data = {
 		[CLKID_PRIV_VID_PLL_SEL]	= &g12a_vid_pll_sel.hw,
 		[CLKID_PRIV_VID_PLL_DIV]	= &g12a_vid_pll.hw,
 		[CLKID_PRIV_VCLK_SEL]		= &g12a_vclk_sel.hw,
-		[CLKID_PRIV_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
+		[CLKID_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
 		[CLKID_PRIV_VCLK_INPUT]		= &g12a_vclk_input.hw,
 		[CLKID_PRIV_VCLK2_INPUT]	= &g12a_vclk2_input.hw,
 		[CLKID_PRIV_VCLK_DIV]		= &g12a_vclk_div.hw,
@@ -4669,12 +4669,12 @@ static struct clk_hw_onecell_data g12b_hw_onecell_data = {
 		[CLKID_VCLK2_DIV12]		= &g12a_vclk2_div12.hw,
 		[CLKID_PRIV_CTS_ENCI_SEL]	= &g12a_cts_enci_sel.hw,
 		[CLKID_PRIV_CTS_ENCP_SEL]	= &g12a_cts_encp_sel.hw,
-		[CLKID_PRIV_CTS_ENCL_SEL]	= &g12a_cts_encl_sel.hw,
+		[CLKID_CTS_ENCL_SEL]		= &g12a_cts_encl_sel.hw,
 		[CLKID_PRIV_CTS_VDAC_SEL]	= &g12a_cts_vdac_sel.hw,
 		[CLKID_PRIV_HDMI_TX_SEL]	= &g12a_hdmi_tx_sel.hw,
 		[CLKID_CTS_ENCI]		= &g12a_cts_enci.hw,
 		[CLKID_CTS_ENCP]		= &g12a_cts_encp.hw,
-		[CLKID_PRIV_CTS_ENCL]		= &g12a_cts_encl.hw,
+		[CLKID_CTS_ENCL]		= &g12a_cts_encl.hw,
 		[CLKID_CTS_VDAC]		= &g12a_cts_vdac.hw,
 		[CLKID_HDMI_TX]			= &g12a_hdmi_tx.hw,
 		[CLKID_PRIV_HDMI_SEL]		= &g12a_hdmi_sel.hw,
@@ -4908,7 +4908,7 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_PRIV_VID_PLL_SEL]	= &g12a_vid_pll_sel.hw,
 		[CLKID_PRIV_VID_PLL_DIV]	= &g12a_vid_pll.hw,
 		[CLKID_PRIV_VCLK_SEL]		= &g12a_vclk_sel.hw,
-		[CLKID_PRIV_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
+		[CLKID_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
 		[CLKID_PRIV_VCLK_INPUT]		= &g12a_vclk_input.hw,
 		[CLKID_PRIV_VCLK2_INPUT]	= &g12a_vclk2_input.hw,
 		[CLKID_PRIV_VCLK_DIV]		= &g12a_vclk_div.hw,
@@ -4935,12 +4935,12 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_VCLK2_DIV12]		= &g12a_vclk2_div12.hw,
 		[CLKID_PRIV_CTS_ENCI_SEL]	= &g12a_cts_enci_sel.hw,
 		[CLKID_PRIV_CTS_ENCP_SEL]	= &g12a_cts_encp_sel.hw,
-		[CLKID_PRIV_CTS_ENCL_SEL]	= &g12a_cts_encl_sel.hw,
+		[CLKID_CTS_ENCL_SEL]		= &g12a_cts_encl_sel.hw,
 		[CLKID_PRIV_CTS_VDAC_SEL]	= &g12a_cts_vdac_sel.hw,
 		[CLKID_PRIV_HDMI_TX_SEL]	= &g12a_hdmi_tx_sel.hw,
 		[CLKID_CTS_ENCI]		= &g12a_cts_enci.hw,
 		[CLKID_CTS_ENCP]		= &g12a_cts_encp.hw,
-		[CLKID_PRIV_CTS_ENCL]		= &g12a_cts_encl.hw,
+		[CLKID_CTS_ENCL]		= &g12a_cts_encl.hw,
 		[CLKID_CTS_VDAC]		= &g12a_cts_vdac.hw,
 		[CLKID_HDMI_TX]			= &g12a_hdmi_tx.hw,
 		[CLKID_PRIV_HDMI_SEL]		= &g12a_hdmi_sel.hw,
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index 9a3091fcaa41..8275413f2beb 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -168,7 +168,6 @@
 #define CLKID_PRIV_VID_PLL_SEL			130
 #define CLKID_PRIV_VID_PLL_DIV			131
 #define CLKID_PRIV_VCLK_SEL			132
-#define CLKID_PRIV_VCLK2_SEL			133
 #define CLKID_PRIV_VCLK_INPUT			134
 #define CLKID_PRIV_VCLK2_INPUT			135
 #define CLKID_PRIV_VCLK_DIV			136
@@ -265,8 +264,6 @@
 #define CLKID_PRIV_NNA_CORE_CLK_SEL		265
 #define CLKID_PRIV_NNA_CORE_CLK_DIV		266
 #define CLKID_PRIV_MIPI_DSI_PXCLK_DIV		268
-#define CLKID_PRIV_CTS_ENCL			271
-#define CLKID_PRIV_CTS_ENCL_SEL			272
 
 #define NR_CLKS					273
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
