Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94CE5C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSAxZzhq66aQsuKxQ7hYGflrbq06kjNVDKTfJiigvCs=; b=iJ5zxCDJRVmy45
	Hol+iz1oNBLQVkK/Wrtjk2nKslwAHXmOA7dbWfdvTrZ/GqdR2PtrtB5zV+knJfkG57U/X1qTJEtsA
	nWL76+3Qk3K1peWZf5oril8L+L/usmI/8UqlE4Lq/sRf+HM+haRfs6DWQwudUWFmkVT3eF7r/24P3
	9GOevJEeF1zygSfb9pUjEuoo4LtEAghuNLK48mGdu6bFtnAGvRvZshvQ5kAV87gEzY4O9Evv2extk
	+aMdX2TLtJyDFd9+MEq/BYazMVpQ9jaherNdlaJz9nyUMIWpqpjnH0+KCAw+0llpuFj51xisodb1p
	tEjQsmVgNEc5HBSmZ2Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiw-000000045H9-1BXo;
	Thu, 01 Aug 2024 06:55:42 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiU-0000000458e-1LKQ
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9AFF3CE1894;
	Thu,  1 Aug 2024 06:55:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B7AC4AF09;
	Thu,  1 Aug 2024 06:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495311;
	bh=TbyKm3nbIWiUjuGYa2rN211etWAP2Wd52cytE+uCLAE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=s1ZqFtVx2Vb5RP9cHC/M9Kz8erKYAabCLo1pCzOBPKHMp7lfiPcwYWPmRM0rS8ykc
	 RRx25RWYeznVJr9UBq4V+H4mCqF28+iNpom/Br0XIQgm88DPEsw58AlRCv1F8MfGne
	 kpLWbQld7FidQTfBDP0tQa4CHLBZ3nCCkOa1Rha9SjgiOONPx8NwXhqPbQ2JMPjuQz
	 fRwVTq4rOndZMzeB0PTE+5ntAmJ9PaA59mCyzB7FNPuINa3TXk5oLY/QmyD4AXGke2
	 sZ4G/+2RTd9DJJJXvgDH/1gGls2HDTftwrXoYYN1kTtEQofTixIH6HnIIrglGxpwlr
	 9QS1PMwi6A4pw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240711152313.2364383-1-robh@kernel.org>
References: <20240711152313.2364383-1-robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: hisilicon,hi3798cv200-combphy:
 Convert to DT schema
Message-Id: <172249530893.256913.16118366660084365289.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235514_603068_5DA154E3 
X-CRM114-Status: UNSURE (   5.08  )
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


On Thu, 11 Jul 2024 09:23:13 -0600, Rob Herring (Arm) wrote:
> Convert the hisilicon,hi3798cv200-combphy binding to DT schema format.
> 
> Drop the example as arm/hisilicon/controller/hi3798cv200-perictrl.yaml
> already contains an example of this binding.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: hisilicon,hi3798cv200-combphy: Convert to DT schema
      commit: dd1051f9329880a0749954e601a5ece9a07f8685

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
