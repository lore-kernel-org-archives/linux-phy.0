Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94ADFC54ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shhHueK2ZDgrvCaFQNXAYPL94NRexg+oj3w+nO9YqHw=; b=waV3KSZXZ0MW8B
	FH1+lgLYtcAIRxCYuJdI/4/6GCe8gDVkSmE7YoQCxpZXd10kYwp20RO1SEK3JuCHxPIqG6nDwFuqA
	cVqGXVqk4DZXV50FqncDGOiB+3LFtqShZOt4nA2OUL/Xn4IcXSzHhrWFP/cess8wrWLhRO4VwDu9r
	KZNSG5VYi0UDEwy8kIM4N37i3E6QiSb2lZi873joe3SvXM7OrcZC31gMbu9t3JkJdJCyq7U4o+85o
	s3f0EGJxo24LxNCUvEFVWpZYLdGkhxOGC+BrrJswkqDF83Pj3bu+HQQYtfUcHmCyRXmoAc2gOaISS
	SD1Rd2A7sN266JsgxNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIP5d-00000003UnI-13KR;
	Fri, 23 May 2025 09:53:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5Y-00000003M0x-2DJY
	for linux-phy@bombadil.infradead.org;
	Fri, 23 May 2025 08:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KUhT+SbQgQikzIaNnROb+iCCSp/Sa4XXy+U8ikue54w=; b=RZ4PhPyOhsbjemBXksutbaPIQJ
	V+8CtSHobQLsIWiPxg+7lKoYy12jnVoCFAwz80oEoVfr8e6HjL+ER7lLbLUW2cslNVKMfVtNuFBGw
	mEPHivDOwo4/u6G2ETQzlWYNO+01pkJdyMoHOrLsZ7DY/32wHoBchTXSoMjwIhNpOaX0ZG+qn4YdH
	kd+8AQFdLXt3yhg5Cp/6NVY9o9b4P73jlfVMOYug1//vAXQxIN8crSCZtdN7SrP6OLf48ikbTOS+x
	6dFg9I2PTyDj+BCj0NTJwLxl/nvFVE1Jmp1lCAXoKGwpnyBO5bPiVz3Cdx9U5T7CJQ79n3fvP2s1T
	f/v3AsNg==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uIO5V-00000001EME-1hyk
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3D59DA4F1FC;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C70E7C4CEF2;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=i//o3UqrswhmGduD9nFXJlKSTMmDLLiHgF4P7egYPTc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U6Y1TW+rAmr0fJTOAgy8nIoVGvREXl3d0/qjHitilvunFXs/hvyHwmVWET6kconZ5
	 sm6FW6Cxsaw49ihe4iuk64MSDYis5ervImefMlxYbCrHuWG9LKPitPrYlvIR2z31Uw
	 KXAqAnS3zQ75r1bFY8SDXJWR2spDQkYmOETOAukX4mb5A9kltSQ1HfN0CQ/SLDh5ol
	 i1aEwLaauv7nkYvOMU9pkSQg0Wcdg6ju/MnZHgOOWnfJkVxb9IFFqWLHEBOtRq03Xg
	 43BC4f9WMQ66nVPIGM8HjESOfWK45I1KsudTJqVC6Q9mXzd5WmwR5VmJgJgO/AhE4x
	 BaqQZ8KkqVwzA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5P-000000002sg-3VfV;
	Fri, 23 May 2025 10:49:03 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 3/7] phy: phy-snps-eusb2: rename phy_init() clock error label
Date: Fri, 23 May 2025 10:48:35 +0200
Message-ID: <20250523084839.11015-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_094909_667627_01C1A973 
X-CRM114-Status: UNSURE (   9.77  )
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

Rename the clock error label which is now used to disable all clocks and
not just the ref clock on phy_init() errors.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index a799c3d2bcfb..c8f14f8fb9ac 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -474,7 +474,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 	ret = reset_control_assert(phy->phy_reset);
 	if (ret) {
 		dev_err(&p->dev, "failed to assert phy_reset, %d\n", ret);
-		goto disable_ref_clk;
+		goto disable_clks;
 	}
 
 	usleep_range(100, 150);
@@ -482,16 +482,16 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 	ret = reset_control_deassert(phy->phy_reset);
 	if (ret) {
 		dev_err(&p->dev, "failed to de-assert phy_reset, %d\n", ret);
-		goto disable_ref_clk;
+		goto disable_clks;
 	}
 
 	ret = phy->data->phy_init(p);
 	if (ret)
-		goto disable_ref_clk;
+		goto disable_clks;
 
 	return 0;
 
-disable_ref_clk:
+disable_clks:
 	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
 exit_repeater:
 	phy_exit(phy->repeater);
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
