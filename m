Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B91C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TFG66Ziu/IuQyKkO4BMmxfy7OD8WFJcQB2wYxeaWz8=; b=YQS6tG4Mgy0MNG
	/LFOSsxJzik9VrW+CrNZ0AEqeTEqFJQoONMTcMOCn2NVmObqB0YRZFc0jYtzeCwqxHtL2eJFHhEsf
	CgFgI0nXhCZEXEoqIucRCECInETCu8JNvmV+X7wJcqW5EpcrVVUcxiwtAh8icvTUjJ8f6KZ8qvhPS
	V5YnRZE5M7UhXlk0T6u1tXJF2MyJuh/QXOyqTjgtc7mLqOlwNLJKr1f9CBg1DfXomU5BVRL9Vry0S
	fXTLmWlHvHlLs0Mv+Q/hrhoumxnYinXxtES+4UkYkl83Re/SHjgOoH+jYheLHev2sW5PpvNH9eOf8
	fytZ0eaUFw1C6+Wckfsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOm-0000000Dikl-32vm;
	Sun, 04 Aug 2024 17:52:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOk-0000000DikB-2pvG
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 17:52:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 016F060ACE;
	Sun,  4 Aug 2024 17:52:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DF00C32786;
	Sun,  4 Aug 2024 17:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793921;
	bh=LzsWllR0cNKFmCtgZ+62TJcAW9upQukY3YNbc8VuYSo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Nhg/20VcPr8vXI2iZvSu/LuSE+GTN0uGVgdjV3dvCu+piG84fEBOLDDRxoSz4kyLT
	 Wj/hSAC1UZVNc7mgMxDBWrdcT24ISci36taphUrFPQidaF80w8rdE6xmvTa9Zx7f8w
	 Afoh+l8QEmSNdA3IdthBlgJCEk6KyP40upkw4smFz8AXpH9m5hvqidUruUFs3v136r
	 s6yDTGzvS/a64jjngaf7ywhj9I/Sy4cKA6CLKUNbfnbpaClRhquSMNZWw4NbPS1ECL
	 LpBNKRdXCgaHGkybZ/RmG8GyrMivz6SGcKkeuOTh3R+E1qBwMrfCswq6bahp3wrkGG
	 Yu0TgDJq/Yk8g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
In-Reply-To: <20240801-x1e80100-phy-qmp-pcie-fix-config-v2-1-cdc0f22b4169@linaro.org>
References: <20240801-x1e80100-phy-qmp-pcie-fix-config-v2-1-cdc0f22b4169@linaro.org>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
Message-Id: <172279391895.406224.15086845328782715859.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:21:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105202_791090_EFBDFA3E 
X-CRM114-Status: UNSURE (   3.81  )
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


On Thu, 01 Aug 2024 13:40:24 +0300, Abel Vesa wrote:
> Update the PCIe Gen4 PHY init sequence with the latest based on internal
> Qualcomm documentation.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: Fix X1E80100 PCIe Gen4 PHY initialisation
      commit: 0e8a0504da59041e775a95db3ebc1a6211423593

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
