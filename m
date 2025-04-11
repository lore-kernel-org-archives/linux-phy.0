Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBFDC369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xg8gssPpPDIGqFRqsiv5/kE+7DBbZ4LoI1kFCxaubA=; b=ovAPeyotZN+S0T
	ciznU/XD8pycHZ5TQgKaf4uBXwnRG9KrEB2Vo66ARbYptbo5bxAo22RvbukueoteXrK/xY5KZ8OzH
	AEouY+ik4iFbbyTYWC0ltGmj8TOHjc+aJ+q0rF3W4hvusGmMfX1dqF4ibnK6ICuw7csni5jLOPE3F
	dvJP30UdP/DV94wE2AHKoMhBSdjLp0Z8b5Ku1R/XkBQrodheCigvfdDQ0a5lLCA4nUNU36TufQaNw
	JB/R80iip8PzeLU6b+iqqY9GZpBO9HgoFfUAT4qXLFrIpocGxEs4Z2hE3lpK3fnI0UiQMkiUMqpS6
	xWePdEEQ9ZpeyZGw8Bmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DKW-0000000Di3J-1fwR;
	Fri, 11 Apr 2025 12:17:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDi-0000000Dgbg-0WxZ
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:10:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E2A48A4AAE4;
	Fri, 11 Apr 2025 12:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029C7C4CEE7;
	Fri, 11 Apr 2025 12:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373453;
	bh=qxljhewYd8uQZhJ5liuBCuqJPGFbVQf70VSK71PakAg=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=k/I7n/nECS42xSMcy4SZNPq38kiNBu5aqr9flo3peZIptSXzlnB27dlTj7Kud7nB5
	 19RAH3Y3sOPX8i0542gTDJRswQHP228U4ix6QNTF+5n8GCEn3cegIih8NeKepSHanL
	 dV8yNZigkBnFrYiRNI+FSA/trBFLSFXVZGJSbIsA4NM9dMa7KJb+peefNRAw1WqKAQ
	 qK3en53tCHE+bQU/TPWlFjfqzNW4LbhXd4yyBK09nI3BkFxNOfHTl9pWKbxhfkdtpl
	 3fnBdPrUW/VVmWR2W6UsFpQLBIVHMfs7T7y/qW4yYGpm3qq2X+ZDd1//g7t5+olNlu
	 T/OZO7twLBLHg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250404121326.318936-1-krzysztof.kozlowski@linaro.org>
References: <20250404121326.318936-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] phy: marvell: Do not enable by default during
 compile testing
Message-Id: <174437345164.673939.5767205456999337217.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051054_234161_6CE725B1 
X-CRM114-Status: UNSURE (   3.83  )
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


On Fri, 04 Apr 2025 14:13:25 +0200, Krzysztof Kozlowski wrote:
> Enabling the compile test should not cause automatic enabling of all
> drivers.
> 
> 

Applied, thanks!

[1/2] phy: marvell: Do not enable by default during compile testing
      commit: be62baafc24105b3803fe7e09cfd23247588eb80
[2/2] phy: samsung: Do not enable PHY_EXYNOS5_USBDRD by default during compile testing
      commit: 6a9accd65608559c4e00ca5480e5d298bf329217

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
