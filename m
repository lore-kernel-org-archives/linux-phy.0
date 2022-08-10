Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D618C25B07
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEi5+aeMdy+uzdffrY5HVPq9sl2NwkY+rrqHDIqqJkg=; b=pwNnaP9RgCfXdu
	B4+uzp63RgGcRXaozF52W4E3zp5CgGNXFHbYFnWaxuUijkTE/Mz/Sc3JhxYrJehFKnnIaWKsHxw0n
	OeyJfd7SaicjHlZERhxzdicDfGV5/dJSnwdUPMTRfRERQj4s6JSiJamFCwxdrBI2MrpUjfYfaqj5i
	H58ZrDy7ete9AywStOCdCUqHdgmqhXNbhsViwLcgnq4jsY8AO91AZ3xKKY5Kp+kn9C/Bwl8hifIwY
	R+wb5hcmJG/FWu3t41wfhg6ztKqv/jzCeNi1oTH2refnTRPC7Gux0juezd1oE2ZbO/PcWQBd8fzk+
	3h+W1HOgCZyQZl9ZA53g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy3-0090Uj-D5; Wed, 10 Aug 2022 04:05:15 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcxz-0090Pk-79
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:13 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-10d845dcf92so16391013fac.12
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=HzcSJs+NvWUdifTJLSaa1lWlyL4/HJWO6YyuNswmu8k=;
        b=F+jj/+NblCgAiqI7gTvhil038xrXyct9C3al/0zb0I0AIF/Q8ANqfp/VQky13ntjWk
         sp838B0eILlMKMNT0J9TyjsfQPZi3ltxstK4VU8OlpdHRpJQavuFO69O5H6nK5+x2BiF
         mABLuh4eHe5gbY8bFROJcDKIPYE4SeX5yu6i2ms1ELAx0jX+R1cFUUW33zzziC5PZBz8
         46JVLpAEpyoPRIlZ42RbUB2EXuQBa0942SHTbrsWot2LrwWiHfCdhf4Z+hJcpgIlzxeV
         IkOMXktCOHhDU99vmycgdZUnpe336z7bJmlJzkxLVYf9aLlp2cjhPib3IambJzqy+Ddd
         bdSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=HzcSJs+NvWUdifTJLSaa1lWlyL4/HJWO6YyuNswmu8k=;
        b=pfYMbSTogLZPBImYTUh5ENcakzMIu0AJGfRxDxkFCTBMQIayzPJhjUMHtmhEs1nbkO
         dvnyUEB1DQCxkHtPiwEwDhm/v1Y3hkBvn4ESMXMYj24NMu3Fmq/aKhh0vfmWP6TCO1Ym
         ssi7NnLzivvYxaHFwWIgUNRC/CbUz9pVzVhnIDpPIMMXQXFC0icCWJtVIBLbC5OxJnKL
         OjtXLtQoSX1YgLC3Tjr2utFpwu5r5BTuUegEMezDsuyx6rh0+QvU9NeiYHoL1c90Iomf
         NmMuGvhZ8zi6QXxxLNfFZXukVcpTwIdMCAnInMXSqQF97OYS3rbSPvjd2fugL7FndcLz
         7LTA==
X-Gm-Message-State: ACgBeo1EBRJRPJU06no4iJPxrtTB7vZ/AGGz6nSjXFo5b9akWZBtuhg9
	CXU1VhBfeGhpyyqORP4QsXMBp8pnCwYSTw==
X-Google-Smtp-Source: AA6agR73b4wlzonVOhZjp7c4P1ifYkupQzqac6zf6QWTANNg3mP5G3KpN2C/JmlXJeOgYzK+j9Mfeg==
X-Received: by 2002:a05:6870:2423:b0:fe:4131:6db9 with SMTP id n35-20020a056870242300b000fe41316db9mr679490oap.75.1660104310120;
        Tue, 09 Aug 2022 21:05:10 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:09 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] phy: qcom: edp: Generate unique clock names
Date: Tue,  9 Aug 2022 21:07:42 -0700
Message-Id: <20220810040745.3582985-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210511_325012_0938AF53 
X-CRM114-Status: GOOD (  10.15  )
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

With multiple Displayport PHYs the hard coded clock names collides,
generate unique clock names based on the device name instead.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7e3570789845..41aa28291cea 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -571,21 +571,24 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 {
 	struct clk_hw_onecell_data *data;
 	struct clk_init_data init = { };
+	char name[64];
 	int ret;
 
 	data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
+	snprintf(name, sizeof(name), "%s::link_clk", dev_name(edp->dev));
 	init.ops = &qcom_edp_dp_link_clk_ops;
-	init.name = "edp_phy_pll_link_clk";
+	init.name = name;
 	edp->dp_link_hw.init = &init;
 	ret = devm_clk_hw_register(edp->dev, &edp->dp_link_hw);
 	if (ret)
 		return ret;
 
+	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(edp->dev));
 	init.ops = &qcom_edp_dp_pixel_clk_ops;
-	init.name = "edp_phy_pll_vco_div_clk";
+	init.name = name;
 	edp->dp_pixel_hw.init = &init;
 	ret = devm_clk_hw_register(edp->dev, &edp->dp_pixel_hw);
 	if (ret)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
