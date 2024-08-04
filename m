Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B5CC3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i6oBluh/Onuboq+WFtPqrafOdO9y6MOy7FQATnAF+Y=; b=PChqzDPL9EnKYA
	MyvkBNO2bov4CNjUL02u74kUSIyawZslTiNDXCXAcVDQtTiGYT/6kTLYS/u6LreW7zmichtuVZJoC
	3lFV+h8Tzx4i47Zs6pS7m9vdTmvtFBHyj41mBlFh3KTnBJkK/QXbvJTkl2/HTu9tkZ4LMq2YVav7S
	335jYNErRteF/jfRnJFkTC4y2AhJQyxjBA4UFPrTajE6EceoqUu4kMqM4mrSzMNTxtqqQQnAOIPh3
	a0QIN9wu63YemE6zRDANLhUhTa77+hB7vvvLULVLFuLu7yQPYbbkfjiOPHIP4nVRg7TqupBzlT/Tx
	hcbjU/Vdh4p3+XzkB7Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safPr-0000000Dj2U-24Dj;
	Sun, 04 Aug 2024 17:53:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOs-0000000DimR-2z1s;
	Sun, 04 Aug 2024 17:52:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A5E660ACE;
	Sun,  4 Aug 2024 17:52:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F001C4AF1D;
	Sun,  4 Aug 2024 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793930;
	bh=Us0lXeHWzyR7k9ugOLi0cBmrKAZznLPVB/DSKGK+xlY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GjKSPxcJCs71o677BS6gX5usbzQ4C6Bu4IuTBO0snjW3uFuCli48wzWShb2eAfm+x
	 pjMW4mZSdyZWJGszs5blrOcGJXXzFbFT82tFH1hg2OHlq4igguH10oiQBwOa5TivXo
	 E1sF6IM0Athg3VoSNpvvZibf/us0Mt4t87zT2QB3/CSTHDjP+vFC3jJh8VGEAQuN6M
	 5yrHib9uPrZ0j7CtENPTl5r4CltEb3hCnmbomhlCalOIMlgHEizTygXcUqx15mLNJk
	 eNSyhbywwKaHYy8g1tmZ+A7WuaoIHhi1smPVP6xY6MqYuQji/7+d4wbWlMgofXRX4E
	 frstCGG0HyonA==
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, Rob Herring <robh@kernel.org>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
References: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
Message-Id: <172279392602.406224.4966447752583319349.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:22:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105210_838548_81BC2936 
X-CRM114-Status: UNSURE (   4.09  )
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


On Mon, 08 Jul 2024 12:04:33 -0500, Dan Carpenter wrote:
> Return negative -ENOMEM instead of positive ENOMEM.
> 
> 

Applied, thanks!

[1/1] phy: exynos5-usbdrd: fix error code in probe()
      commit: 3a07703a523045cbdb0a5fa5e0902a9145ee43e9

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
