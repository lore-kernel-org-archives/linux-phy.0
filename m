Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D94C4828F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrPyoYDTZ4SWI2S/S/3uq1DIyMOoeMfXITLUsnjEGR0=; b=qTPyCsAahauwcg
	wQy+NgyrjU81Ki8j4Th2u3tXfVOEm/uhuphAZJy4YB6RVfDj4BgMnFYOWqskX4bf5gwKwpxgQy2pP
	K9GwoXAQG72LiM0/0F5rKBwdfXBFdzYfg6ndKve2n2IQwBC0tg7Py+lm7gaTIW+n8vwRfZtjkuwwQ
	K/PI4RA4mt50kCL06QWZIBnxpI0w9NlhkJxNFh7Deq0XM9z7dcNjXUsj/rCjXeFm64M4NmyyRTRsE
	eFNn37MRZp9Z5mgnoKFFvEiGXigJavhF6G33ah2o1ySHkLBlVNiAyHdLH+IOyKQ4cYJm1E126+p+Z
	hh+ff3XJGSCLyFEBIYnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUH-0000000Aqj9-0FG7;
	Wed, 07 Feb 2024 14:01:17 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUE-0000000Aqhz-06Ce
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 14:01:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 28A93CE18F9;
	Wed,  7 Feb 2024 14:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EC6FC43399;
	Wed,  7 Feb 2024 14:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314471;
	bh=QU4zHZ5yZeKhRA/NcZb3RGYc2aTKm/UNV58L0yHSg4g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=upz6wTkPOaXK7fDrCqAlhpvRtNW41LZp7hzefKj8TaSbqSsvri+h2NWWSK4EUpacc
	 T7pofSj3QSVXF+ZeC8ARmOm4Xh5U7Gl2Q47BH7IATHvJVdxy5vYOMpveckm5zUluLZ
	 ZX+RWMRDK7Cv/eEgONhjudY+dsF72jjGA9aoroNQZh+dUW2YMtXvAdc2Fr0scDMGis
	 qUi7OkZkDkTkf0A7+6KRh7C9DXehkazqmIKiKy3//RzZVGIXDKOw3YIeH8Q3e10LqM
	 XES8QOsD1tqm+EyKNWW45QbDiZxpL4/ALosiPCtXb6VFz6n+P0GCJOyhXpu0E0yJhM
	 AtPW7WSeAh/HA==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Elliot Berman <quic_eberman@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240201-phy-qcom-eusb2-repeater-fixes-v4-1-cf18c8cef6d7@linaro.org>
References: <20240201-phy-qcom-eusb2-repeater-fixes-v4-1-cf18c8cef6d7@linaro.org>
Subject: Re: [PATCH v4] phy: qualcomm: eusb2-repeater: Rework init to drop
 redundant zero-out loop
Message-Id: <170731446925.147017.11723042709584104683.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:09 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060114_287136_D0A7E1EF 
X-CRM114-Status: UNSURE (   6.16  )
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


On Thu, 01 Feb 2024 10:39:33 +0200, Abel Vesa wrote:
> Instead of incrementing the base of the global reg fields, which renders
> the second instance of the repeater broken due to wrong offsets, use
> regmap with base and offset. As for zeroing out the rest of the tuning
> regs, avoid looping though the table and just use the table as is,
> as it is already zero initialized.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: qualcomm: eusb2-repeater: Rework init to drop redundant zero-out loop
      commit: 734550d60cdf634299f0eac7f7fe15763ed990bb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
