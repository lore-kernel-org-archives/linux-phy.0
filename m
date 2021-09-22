Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BE42C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 22:16:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E6EB60F3A
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 22:16:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E6EB60F3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DTtV8LpFqWTa5DWVNB0kXIQTpepr/broXrJ+Pa+DOuo=; b=t8A5i1MeRVRguY
	KEY8LnbAUI1ztdS3AOuIY33WsKpfWA5iPgBNS3cz+/kQ6IBZn3NYPQVWpUuQWGx/Ju2GJ8/mbjzCe
	NBdpktkPsNSe6BC+Iw9RvzocvDX+Xp+xcOB6ySruiAezxY8tLi2I8m4i1FitzWaS+q4I3sHWcQmZP
	FE1qh8mx+Bwfh/Ue6KwoqJ53xPXcnHoELPF2weM16hBpjtOcwYD/zM6Emphx4XXV3J39OBdN3tst1
	ZzSU/k9apBscaYRmzqZZ+Y/9wgimxao4X7zYQNLAIAUS9a5Hby1L6J/f4WR0GOSKXbS/yK+vovsjX
	mjOzJsh/8YdMqQ1jUqJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTAXU-009pG4-Q1; Wed, 22 Sep 2021 22:16:28 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTAXS-009pFR-6g
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 22:16:28 +0000
Received: by mail-lf1-x12e.google.com with SMTP id u18so17440643lfd.12
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 15:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iJyIIM2QFhs+G5EZ1WU7oBTvtat5Hn20U14nwrelU7s=;
 b=HuEgirt2muwN+0XlXBdcb6b2Otnh/emh7JWoI7WblW6h6LmNMrkYZpKTT8xygsJ9is
 DLE0aEnyE/rMxqn42/b0S2wlRJif/C4vJDgRjS8Z3xoVjs0qi6hdfHi5kuzKG6+gXHNl
 fFmpRMUdMZgwbpLJNeqLfi86yycrLi2MFx8wbYH1YpIpBgpGkVJ4fwzyiG0HgL+FMs10
 ELXAg5vk6w2jOA91gIkYKoou/222VaQtGUHcnGhyfVUmap+oWlBbKaiGucClwjG0Uvn/
 ObbbhQ8ZNonbVWsQj/abn+CN1lKvkNWRcWsq99j8Tk28hv7ethbdAVH30y7O5EODWDnz
 7/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iJyIIM2QFhs+G5EZ1WU7oBTvtat5Hn20U14nwrelU7s=;
 b=GTx+b0rQEsI+KKWy/4Fsgba4gJOBsJQCNmgPlctGoR/WS7bzbrK5UgwP5stIrJ+ti1
 ClkCc8YH8Veb7wdEHFh/j0OAY3JunSntqqorRu3MCt/C9exHd+/oNKu6hbWxowdn42eC
 9gQVtCDtcwufyBtw6i68q3mzEYfbndN+i3fG2m0vRlVWMaFG7d7huamya91w2L9V8JBn
 oru9fVCluRBw+CbIXk/ElfyWAvPL6RsCeZCMe6m/IcAN/7KrSvgwz/YN3aCMYuwkyljf
 87ZjaVANECebuaegxS8mfzzHsESjRnCMV4WldwDfSifT43yCNCh/BGjKZFDu/9DU0Rlu
 1suA==
X-Gm-Message-State: AOAM531KZtXw+9V5OfNOJrmqnrIlnlVJClkfgN89RJ6w3KMcSZWRZdic
 F4c4BHXMa9ziOKpT+xTWopslrw==
X-Google-Smtp-Source: ABdhPJz1Vsssxxw6D2HRoNWz+ON9jnTJVcB0f7IgKXZgr9ecJz1mhJ6urjy9Z2S9K3rTXpq+AmovdA==
X-Received: by 2002:ac2:5609:: with SMTP id v9mr1162154lfd.415.1632348983612; 
 Wed, 22 Sep 2021 15:16:23 -0700 (PDT)
Received: from localhost.localdomain (88-112-130-172.elisa-laajakaista.fi.
 [88.112.130.172])
 by smtp.gmail.com with ESMTPSA id br40sm275811lfb.64.2021.09.22.15.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 15:16:23 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Vivek Gautam <vivek.gautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-qusb2: Fix a memory leak on probe
Date: Thu, 23 Sep 2021 01:16:13 +0300
Message-Id: <20210922221613.2115038-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_151626_351449_6F5FC819 
X-CRM114-Status: UNSURE (   9.05  )
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

Fixes: 0b56e9a7e835 ("phy: Group vendor specific phy drivers")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 3c1d3b71c825..061665ba8ef7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -589,6 +589,8 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
 				 val[0] << HSTX_TRIM_SHIFT,
 				 HSTX_TRIM_MASK);
+
+	kfree(val);
 }
 
 static int qusb2_phy_set_mode(struct phy *phy,
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
