Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F71D2F7E9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 04:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JgDNkamDbxpE6aTBC1zzq5VaTeK6yc5UkR003bMLYOA=; b=ydU3PyNwdlHDuq
	9Kt9IRuJjIjoUn4cqPxHXOtPVi/UtoPU95jiAEyRCLFPs6MUb4QxGy1UZdGHpJYKCE2nv5hoKkAl9
	blADkGDpAnzJWfJPqu3LpICxTFC2ByPhF8hLwTwZxhq6kHw81H3XjxODU4JdferhDVD7VmJJ/Jr9q
	DIuDrsxkQas74YvASZWZDWde4GC8a4qhluyusIJpc3tuWXkTvnTCsqWvidCTvxdtyRA5edh9g1XuX
	JLD9/MIweqTeOQ1G3Oe9jUkj+lPRk2TmdKxCLdmOec87R8rC64OGFBfdJlYfY30CPM1+WMMWbbjkv
	/s/1UBAebBXJomvIOAsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1HoU-0000000Dhh4-1ORT;
	Thu, 17 Oct 2024 04:08:38 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Hmz-0000000DhZt-2zxR;
	Thu, 17 Oct 2024 04:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1729138020; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=Iwz05P1p61sVpu5xupITnxxL612xYYGx4kkmJtzWbM8=;
	b=MaFRQ/4qlciqS3ELGqQnLYDhVCTLSkghW1OX3BD2I5G/UKaI/09kg7BBYvh09CB27d0oRVzmnbYAT2F3Jk1F3T+Mqu1p18PonyaAGE5+wDgkIEFV4poS6COqivNVw//z2wMCdj6NQmfPll1nOnTEx+JZtnsote2C38oZe32pnlw=
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0WHJR90w_1729138018 cluster:ay36)
          by smtp.aliyun-inc.com;
          Thu, 17 Oct 2024 12:06:59 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: christian.bruel@foss.st.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com
Cc: linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] phy: stm32: Remove unneeded semicolon
Date: Thu, 17 Oct 2024 12:06:57 +0800
Message-Id: <20241017040657.33992-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.32.0.3.g01195cf9f
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_210706_419181_FC41DD87 
X-CRM114-Status: UNSURE (   7.45  )
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

This patch removes an unneeded semicolon after a switch statement.

./drivers/phy/st/phy-stm32-combophy.c:226:2-3: Unneeded semicolon

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=11403
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/phy/st/phy-stm32-combophy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/st/phy-stm32-combophy.c b/drivers/phy/st/phy-stm32-combophy.c
index e1e7083ccb5f..765bb34fe358 100644
--- a/drivers/phy/st/phy-stm32-combophy.c
+++ b/drivers/phy/st/phy-stm32-combophy.c
@@ -223,7 +223,7 @@ static int stm32_combophy_pll_init(struct stm32_combophy *combophy)
 	default:
 		dev_err(combophy->dev, "Invalid rate 0x%x\n", clk_rate);
 		return -EINVAL;
-	};
+	}
 
 	cr1_mask |= SYSCFG_COMBOPHY_CR1_REFCLKDIV2;
 	cr1_val |= REFCLDIV_0;
-- 
2.32.0.3.g01195cf9f


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
