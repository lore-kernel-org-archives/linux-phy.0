Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3378C982D1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dHUdqnwZUrcaS5K++ujw1aho6OyrFmOlJd8j7tJcIYw=; b=IdOy9XzRJkfRgn
	fpSx0lxgMWQgD3KUAihCUv/jlID9FaDtvadaw/gNm24dk2iw4z0Uao8DFIEWs9iP/alnMwj3cpOUX
	GqgmJ4FyGKXh8AbmKUIZPt8MvF8WGQoQ1OesWY1U+te3ZCZ2k0Ff/Q1rgATxL2XtoxhAHutH0H2JM
	TcwwpXxqhY724MzP4oGRyCCpzlO+oo22xQIwnLrgFY/Fd/b/ojGQGijSOMgGLQF3X7eU0TMu2h2SU
	gurvRUdQozBWqwOHqBscWpIsInS4jk0UCycdRC0uQHsJgZHrWxdVkgzQP/55m7lq46bTj4WGEkA+q
	m29hc3qXwC5cBYb7HYpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CKz-0000000BPot-1lH8;
	Thu, 17 Sep 2026 13:39:41 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CKw-0000000BPoT-23t7
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:39:40 +0000
Received: from dfae2b116770.home.arpa (unknown [36.110.52.2])
	by APP-05 (Coremail) with SMTP id zQCowAC36EKX7atqMqSBCA--.3927S2;
	Thu, 17 Sep 2026 21:39:35 +0800 (CST)
From: Wentao Liang <vulab@iscas.ac.cn>
To: linux-kernel@vger.kernel.org
Cc: linux-phy@lists.infradead.org,
	mani@kernel.org,
	mchehab+huawei@kernel.org,
	neil.armstrong@linaro.org,
	vkoul@kernel.org,
	Wentao Liang <vulab@iscas.ac.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: HiSilicon: Fix PCIe device reference leak in hi3670_pcie_get_resources_from_pcie()
Date: Thu, 17 Sep 2026 13:39:35 +0000
Message-Id: <20260917133935.2153674-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAC36EKX7atqMqSBCA--.3927S2
X-Coremail-Antispam: 1UD129KBjvdXoW7GFyUZFy5ZrWUur15JFW5Wrg_yoWkuwb_GF
	95uFn7Zr40grZxA3srAr95Zr9FyFnrZFyIqws7tFWay39xZr1a9F15Zws0k3ZrurW3uF1k
	Aw1UZw1jkrZrWjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbfAYjsxI4VWkKwAYFVCjjxCrM7CY07I20VC2zVCF04k26cxKx2IY
	s7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4
	kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_
	Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
	xl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r1q6rW5McIj6I8E87Iv67AKxVWxJr0_GcWlOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq62Iq12xI8VA0II8E6IAqYI8I648v4I1lc7Cj
	xVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l42xK82IY6x8ErcxFaVAv8VW8GFyrJr
	1UJwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
	Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK
	8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8Jr0_Cr1UMIIF0xvEx4A2jsIEc7
	CjxVAFwI0_GcCE3sUvcSsGvfC2KfnxnUUI43ZEXa7IU57rcDUUUUU==
X-Originating-IP: [36.110.52.2]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiCRUNA2qrq03P3gAAsk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_063938_898366_E5C8F8ED 
X-CRM114-Status: UNSURE (   7.65  )
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

hi3670_pcie_get_resources_from_pcie() gets a reference to the PCIe
platform device with bus_find_device_by_of_node(), but never releases
it.  The reference is not stored anywhere, so it is leaked both when
dev_get_regmap() fails and on the success path.

Drop the reference right after the regmap lookup, the last use of the
device.

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index dbc7dcce682b..87eac058a4bc 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -584,6 +584,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	 * right regmap. So, let's use the named version.
 	 */
 	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
+	put_device(pcie_dev);
 	if (!phy->apb) {
 		dev_err(dev, "Failed to get APB regmap\n");
 		return -ENODEV;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
