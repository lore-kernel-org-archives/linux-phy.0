Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 849A5C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 23:35:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4172C611C4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 23:35:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4172C611C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LtY/fcyvbhteuYvfbqi0H1X/ojNc7HHleKGZTztIUWQ=; b=zvdIDdiScYOl2V
	LGejmTgbVAB8Y6XLv8AGvHkudK3Jjh/0yGXTcSCbPLt36LitIJ6F/9mVLs5Eo6555WvmCSrfISbWD
	UYuB72t9nsnD1ravrPuIzinKLqys7IHqknApmCa/uGrQzd1Smgj0ePr/wgEUoQ2sXW1k1fKtwlNFW
	F6HCaBTrziGmQUeC8pFec710H0T/O3t1cRJM/ILXzkg/XMnULR+D+D5YrEDfgAnGIvIqUMs2rFZxI
	HyVRbrDnWg5EQP1EqmEY0PHD7MlMdNX87JBgXW0o3adfsAi43fSI6UHgdzWPjt1NotK1yuez/ksxf
	GyMdi6aBrC/FmbgudglQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTBmO-009wt9-QQ; Wed, 22 Sep 2021 23:35:56 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTBmL-009wsJ-Iz
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 23:35:55 +0000
Received: by mail-lf1-x134.google.com with SMTP id g41so18638461lfv.1
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 16:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JvK7nAAVSpgD5oIumQfPNaMMDtIPTVj4JW6h6SRFBiI=;
 b=m7Ws3JYfXgj+8PH6Cag5WpV2j8JcFJnqRzZ68LxwCGf2HaDFfNhmeZ7GD5HhEVEmHr
 2wdPhokOrDyfZ4kfdurEt1drytZc88nqomP8V70TiyK3ukpJ4njjqOllO3cpzVFcjcx8
 SvvhudRrNmGLbqmBJvGThmenRpFYW8lOhCeWyTze63VvwstcABuKR2/XjU0wehMkiOIv
 M2FdSAOIn+cy5ypv4P5Y094wPzuXhmG4/KmvJ1Uw1i/OtBvwmSHemheKyd3qZcbqJbbz
 4pfU3ojQzxnsjNguwUj6yIrP+RcaZ4PMLyoz1XpRnd4RMVrjvh2ekbdqQh+UXDGEjyTV
 WIZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JvK7nAAVSpgD5oIumQfPNaMMDtIPTVj4JW6h6SRFBiI=;
 b=75cBnLOUZ8bvnMiYlX4Yk+dgVQxzLpFo9VU7hFvrLi0iRxp/QO7/bBcXxp90Ks/uS4
 OczWgcJwADs6KSEETebsRDo+9bXl79KxZXCs0dWXAhvmDf3Rjy3kteA9ybGwzYI0fd5z
 WZoWFloceFCNNBtouBnCuNxn2azjlzFnCTw0Bh+t/3C7pUTGkU3D3nubzwxRe/MXMbwW
 ztA90QzqAZ3+jOwg9r+s1BNS5CUyCgRXeXhI3nb3gp2hnNQduB2tkrGW9bzfr/WnVO/e
 EHiT8AqKqC99k0I9Jfgp9UJ0mktpQrkWEs01millPBA8mb1hER+J/p2lKCXtvpJIpe3A
 7Ssw==
X-Gm-Message-State: AOAM531CkKRu7asebTim/SMV5Hjol3nPIfgkiLtKVbIPn/4wUJdE+UEt
 Pal8yoEIa9o6oD6Hk/foGYFsFIEag0UkEyWH
X-Google-Smtp-Source: ABdhPJw6/BC44TsHxbq6eRNn+XpjMPDGV7n+oj8ucJc6YzVyg5rvHLlqT4IM85ADObmwy3AF+rI4vA==
X-Received: by 2002:a2e:9707:: with SMTP id r7mr1272013lji.121.1632353751921; 
 Wed, 22 Sep 2021 16:35:51 -0700 (PDT)
Received: from localhost.localdomain (88-112-130-172.elisa-laajakaista.fi.
 [88.112.130.172])
 by smtp.gmail.com with ESMTPSA id x204sm287460lff.301.2021.09.22.16.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 16:35:51 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Vivek Gautam <vivek.gautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2] phy: qcom-qusb2: Fix a memory leak on probe
Date: Thu, 23 Sep 2021 02:35:48 +0300
Message-Id: <20210922233548.2150244-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_163553_680179_818A000A 
X-CRM114-Status: GOOD (  13.68  )
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

On success nvmem_cell_read() returns a pointer to a dynamically allocated
buffer, and therefore it shall be freed after usage.

The issue is reported by kmemleak:

  # cat /sys/kernel/debug/kmemleak
  unreferenced object 0xffff3b3803e4b280 (size 128):
    comm "kworker/u16:1", pid 107, jiffies 4294892861 (age 94.120s)
    hex dump (first 32 bytes):
      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    backtrace:
      [<000000007739afdc>] __kmalloc+0x27c/0x41c
      [<0000000071c0fbf8>] nvmem_cell_read+0x40/0xe0
      [<00000000e803ef1f>] qusb2_phy_init+0x258/0x5bc
      [<00000000fc81fcfa>] phy_init+0x70/0x110
      [<00000000e3d48a57>] dwc3_core_soft_reset+0x4c/0x234
      [<0000000027d1dbd4>] dwc3_core_init+0x68/0x990
      [<000000001965faf9>] dwc3_probe+0x4f4/0x730
      [<000000002f7617ca>] platform_probe+0x74/0xf0
      [<00000000a2576cac>] really_probe+0xc4/0x470
      [<00000000bc77f2c5>] __driver_probe_device+0x11c/0x190
      [<00000000130db71f>] driver_probe_device+0x48/0x110
      [<0000000019f36c2b>] __device_attach_driver+0xa4/0x140
      [<00000000e5812ff7>]  bus_for_each_drv+0x84/0xe0
      [<00000000f4bac574>] __device_attach+0xe4/0x1c0
      [<00000000d3beb631>] device_initial_probe+0x20/0x30
      [<000000008019b9db>] bus_probe_device+0xa4/0xb0

Fixes: ca04d9d3e1b1 ("phy: qcom-qusb2: New driver for QUSB2 PHY on Qcom chips")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
Changes from v1 to v2:
* fixed a memory leak in case of reading a zero value and return,
* corrected the fixed commit, the memory leak is present before a rename.

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 3c1d3b71c825..f1d97fbd1331 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -561,7 +561,7 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
 {
 	struct device *dev = &qphy->phy->dev;
 	const struct qusb2_phy_cfg *cfg = qphy->cfg;
-	u8 *val;
+	u8 *val, hstx_trim;
 
 	/* efuse register is optional */
 	if (!qphy->cell)
@@ -575,7 +575,13 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
 	 * set while configuring the phy.
 	 */
 	val = nvmem_cell_read(qphy->cell, NULL);
-	if (IS_ERR(val) || !val[0]) {
+	if (IS_ERR(val)) {
+		dev_dbg(dev, "failed to read a valid hs-tx trim value\n");
+		return;
+	}
+	hstx_trim = val[0];
+	kfree(val);
+	if (!hstx_trim) {
 		dev_dbg(dev, "failed to read a valid hs-tx trim value\n");
 		return;
 	}
@@ -583,12 +589,10 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
 	/* Fused TUNE1/2 value is the higher nibble only */
 	if (cfg->update_tune1_with_efuse)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
-				 val[0] << HSTX_TRIM_SHIFT,
-				 HSTX_TRIM_MASK);
+				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
 	else
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
-				 val[0] << HSTX_TRIM_SHIFT,
-				 HSTX_TRIM_MASK);
+				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
 }
 
 static int qusb2_phy_set_mode(struct phy *phy,
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
