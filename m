Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E4C9CD3427
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 00:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APc4D0kFeUEl611KR09VMQ7su7rnATNzASABbauT92Q=; b=4sNSmp+46Lgzl+
	kkpd7/mvLa3lJXq95MyXI4n6cM/rdiry9tVQqEVMian1E1jtObPJuuQ8M4VUcI5oqQjNkAWzmJ/1P
	uRcxz0mh8YkAXl7gsk5wiQHGhRLnuGQYEKEyzkHMc5sXgUWgEaum5c3POe1FoMDh4sHgaBPgkShmp
	MVE+Afo6GhEZdz7h2Sg8H7tYs16RxG4z6GO0FUtvVq0kOLp9uro/bQmsZZfIqxdDiLw8MSWwwO5X3
	WTl46+98The6FRrPAzz9HQTxDxUQNGOx7939Z3F0OVLmcMie87NmYNE1CC587OU6UpMLXp1XHMx0D
	/n4JiXDe2hToAjkDpC8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQTI-00000000LAL-3l84;
	Wed, 06 May 2026 00:50:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQTG-00000000L7e-1DWC
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 00:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778028637;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M/24W4AwvWyRwYbo6ULJEPyQOBfb+Ll9imS0OxoxU8g=;
	b=VeJqmnQAos35D+mjQtRk0YvaskA0YFaKmyA/JJohVWd58VitSHl5R0f1stwEHG30bW2XLO
	2XOTtY8tTpgBMGNfUEVM3L/PK71uXZLT7H09YMHxYbcEJuJcIAH6NpxSpXzdkyGXRGEWqk
	xI/Bq0pS3w44jVEvfwkeFfSgdyFqruM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-76-BvGqIdEZM1SJMyH-mshJKQ-1; Tue, 05 May 2026 20:50:35 -0400
X-MC-Unique: BvGqIdEZM1SJMyH-mshJKQ-1
X-Mimecast-MFC-AGG-ID: BvGqIdEZM1SJMyH-mshJKQ_1778028635
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8d5d03ae893so1018101985a.3
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 17:50:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778028635; x=1778633435;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M/24W4AwvWyRwYbo6ULJEPyQOBfb+Ll9imS0OxoxU8g=;
        b=BWMEGrcCIas4JaGrsuTbygPVmfiC8WcieVXvBfiz+u92I/9DTEteQaWQvecMi6qfrS
         q+5PAbJuXliuKAyjGfgyq7nwQYcT4r8KJBAHY5gKvp6nho9wau258VYsT3V3KI1t5Dvn
         05MfbUuMn8jHTm/f4TIwBLYMLMVH8urbRnmu+tlrt8Qw2X4Sd2el2RdOCDhty/b+IPMA
         iJsJq4n3Kbthe8bdFwsoYeJz32Tbbc/w8feWHibAQo7dLL9FnQaNGoPwIIBJwSUXBW7e
         AAGyNvVC8jsS2QEDZ2/kUTHQJJnxZgwQwWvhmB1rOITOXfzXlEaG/1EsWsy/hX7sg5hz
         7uJg==
X-Forwarded-Encrypted: i=1; AFNElJ/4agLk5lm+1pvFua3WnzX2DcVqTip+bTWke//XwCV1R+VIIg6NjQs0EP5G4aIJlBhd9VjC4nQjAis=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGMENnlaGMGOnqOxMFp7KJIS8204JnF7wm+NTXnDvwwO+WC3Ry
	4+Pgv1iH1Lza2k0mjUmQiDq0TbTmj/ahsmNRNk/emO41yhSfAZZKKVlcgISJ8wi76NsN/oJfdT4
	BCMhd0EgVliWjKubNh501vQTdZ/Uli/MHjw0QrV4zj2xHlSkkQtbkGRVal141YXdu1Ho=
X-Gm-Gg: AeBDieuuY0Yn5qg3S6PQW34Cgze8sM5avv3EhwbVFynpoQ8QXaBJWuyDrZxv6n+N7eC
	u6stEicRb1+CbUBg+R8vt0ywmAwhWif+K5Z3jhHrol7GfTtee9sj4NuCmyCJW0g1sTqwaQ6xyua
	92rJX5XFZF5p1GYh71rq7TnIEk06C3sN1bwHA2N28/dBe/XLZTNTuU0IeLX44zZ5jaykG3EaZ4M
	FLUaghbMryOHsj48Y89uzV9Ss3rZAFKSunbk7e+kbeA9UQFMYW43n43VPLo6+HQoXND8o2dFtu6
	vNraDuOhXzEFsvF47cmPkJO3QtX9UVxmufnNsitaA1qis8fSzd659c6P3nO0L+GakOyWXg3Hn8A
	QvU+9A8FYKbC7ZUPQcTU2MKOpEN0U+SODj4upxHrnre8qVlkMnc/+cPwXQLZ6LwdIOcuqOml5
X-Received: by 2002:a05:620a:2697:b0:8ee:7878:af33 with SMTP id af79cd13be357-904d3fa461fmr222467285a.4.1778028635183;
        Tue, 05 May 2026 17:50:35 -0700 (PDT)
X-Received: by 2002:a05:620a:2697:b0:8ee:7878:af33 with SMTP id af79cd13be357-904d3fa461fmr222464185a.4.1778028634644;
        Tue, 05 May 2026 17:50:34 -0700 (PDT)
Received: from [192.168.1.15] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8fc2c91fb3bsm1464933385a.41.2026.05.05.17.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 17:50:34 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Tue, 05 May 2026 20:48:58 -0400
Subject: [PATCH v3 02/15] clk: add clk_determine_rate_noop()
MIME-Version: 1.0
Message-Id: <20260505-clk-determine-rate-noop-v3-2-f3f829fbacdf@redhat.com>
References: <20260505-clk-determine-rate-noop-v3-0-f3f829fbacdf@redhat.com>
In-Reply-To: <20260505-clk-determine-rate-noop-v3-0-f3f829fbacdf@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Anson Huang <anson.huang@nxp.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Andrea della Porta <andrea.porta@suse.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sudeep Holla <sudeep.holla@kernel.org>, 
 Cristian Marussi <cristian.marussi@arm.com>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Ulf Hansson <ulfh@kernel.org>, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 arm-scmi@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-pm@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4050; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=c/0o32UHHPR53Ko/1QO7CYkQ8/mLPJcwy6nuModIVJM=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ/TXD3X1X5dNIk97U9eepfJ2/Ueey2OvvzxVCDB6e+7
 NjO5lu4rKOUhUGMi0FWTJFlSa5RQUTqKtt7dzRZYOawMoEMYeDiFICJPItnZLi38Kv1kt/xKhcE
 lrD8PFhVqHlf+UzKp+/rPlyZ9Cvi0mxdRoa/X14/do/lFA8NtajlrzbRUt7fFtq1Z1vWXy0d6bZ
 H2pwA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Ni_KXdX6CSSsqBm0u_Okne7Dht0so-15qgWfQXYZEvo_1778028635
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_175038_402003_82D94180 
X-CRM114-Status: GOOD (  15.41  )
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

Add a new helper clk_determine_rate_noop() that's for clocks where the
rate rounding is handled by the firmware/hardware, or the clock is
capable of any rate. The requested rate is passed through unchanged,
and the actual rate will be learned via recalc_rate() after the rate
is set.

This shared helper will be used to get rid of the driver-specific empty
determine rate implementations that are present in the tree.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Brian Masney <bmasney@redhat.com>
To: Abel Vesa <abelvesa@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
To: Frank Li <Frank.Li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
To: Pengutronix Kernel Team <kernel@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
To: Bjorn Andersson <andersson@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
To: Andrea della Porta <andrea.porta@suse.com>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
To: Alim Akhtar <alim.akhtar@samsung.com>
To: Sudeep Holla <sudeep.holla@kernel.org>
To: Cristian Marussi <cristian.marussi@arm.com>
To: Orson Zhai <orsonzhai@gmail.com>
To: Baolin Wang <baolin.wang@linux.alibaba.com>
To: Chunyan Zhang <zhang.lyra@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: arm-scmi@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-phy@lists.infradead.org
Cc: linux-pm@vger.kernel.org
---
 drivers/clk/clk.c            | 18 ++++++++++++++++++
 include/linux/clk-provider.h |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 048adfa86a5d..956e147f4d4e 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -882,6 +882,24 @@ int clk_hw_determine_rate_no_reparent(struct clk_hw *hw,
 }
 EXPORT_SYMBOL_GPL(clk_hw_determine_rate_no_reparent);
 
+/**
+ * clk_determine_rate_noop - clk_ops::determine_rate noop implementation
+ * @hw: clk to determine rate on
+ * @req: rate request
+ *
+ * Noop determine rate for clocks where the rate rounding is handled by the
+ * firmware/hardware, or the clock is capable of any rate. The requested rate is
+ * passed through unchanged, and the actual rate will be learned via
+ * recalc_rate() after the rate is set.
+ *
+ * Returns: 0 always
+ */
+int clk_determine_rate_noop(struct clk_hw *hw, struct clk_rate_request *req)
+{
+	return 0;
+}
+EXPORT_SYMBOL_GPL(clk_determine_rate_noop);
+
 /***        clk api        ***/
 
 static void clk_core_rate_unprotect(struct clk_core *core)
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index b01a38fef8cf..334b9211a157 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -1431,6 +1431,7 @@ int clk_mux_determine_rate_flags(struct clk_hw *hw,
 				 unsigned long flags);
 int clk_hw_determine_rate_no_reparent(struct clk_hw *hw,
 				      struct clk_rate_request *req);
+int clk_determine_rate_noop(struct clk_hw *hw, struct clk_rate_request *req);
 void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent);
 void clk_hw_get_rate_range(struct clk_hw *hw, unsigned long *min_rate,
 			   unsigned long *max_rate);

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
