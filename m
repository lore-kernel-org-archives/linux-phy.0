Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C01C48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 23:38:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1942B61C32
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 23:38:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1942B61C32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16vE07rc2hNH/6DAEcdmxSXWHsYdyG8fNqYqd7NMKRg=; b=F5SldfX9fO2Y/h
	W7HpvOhmvpH83ZzIRriqaRt6RandxT8Hyhndo00VXkLWMfkVeN1sWn3F/K5y3A9j4OVpFTAZaBitY
	42bnoKeBZ0GBX8R8G3eEN6wwt4b7Q2JevUa+Hr6gkzcor/QseKUflDBXN4AJjekkgd/uVU9eu6S+H
	+duoC1RdZVDYu9SfSfkZS1Ky2UBQN82iqAl8Ej77HyivRBG3Z0YdYCZ/iCauSI369RwOkne5z1lC7
	Ci8bYbFlljq7m7dKKoaXBKmsHr1T0hlhJ9vi9MDHYKF8b54XZl/tEtPchDzh66csbT+UQoHjBRfWN
	TBEVul6PgyfoorNhLMKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxeMX-006JcD-Fy; Sun, 27 Jun 2021 23:38:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxeMV-006Jbs-KC
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 23:38:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 92AAE6161E;
 Sun, 27 Jun 2021 23:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624837130;
 bh=lenqMCekltDX+AqjNhd4JqLUZdEG+Ux+jyQjI5v5huI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=jaZVw/TjdAeOh/2jAk4WhKHFhMjAGvUf86jBRnDRkR/jEDNzTsK77UOyarfX89h4V
 X9DqNoC0n5e35VsFbj8h3BKLdtB93RQSzqOC3Iu+hYohijhD9K9YduwCS0hn/QEIKM
 6qh876xSLr4e5mPDIM9UfvSzm77vfH+nwcgQEICFGQ2S8vKcqq4ZWmx+feItoTkdNQ
 XiUNPCQzH/GxiXqJGJB8gOIovctHeWIWy6DOw22pDm/aYvYt2wOydWsgc3brAXU4vr
 iPJOMG5SVhiW8idUi6G0sfbaLOlbwPv/O5iOwNA4gce9I5Ju19Q14+jRRb+3Q+15KG
 gTBbmljy7GgoA==
MIME-Version: 1.0
In-Reply-To: <20210627045631.2882-4-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-4-jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 3/9] clk: pistachio: Make it selectable for generic MIPS
 kernel
From: Stephen Boyd <sboyd@kernel.org>
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Date: Sun, 27 Jun 2021 16:38:49 -0700
Message-ID: <162483712923.3259633.15640278024587375157@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_163851_723321_FD15D17D 
X-CRM114-Status: UNSURE (   9.51  )
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

Quoting Jiaxun Yang (2021-06-26 21:56:25)
> diff --git a/drivers/clk/pistachio/Kconfig b/drivers/clk/pistachio/Kconfig
> new file mode 100644
> index 000000000000..efb7a7f45259
> --- /dev/null
> +++ b/drivers/clk/pistachio/Kconfig
> @@ -0,0 +1,8 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config COMMON_CLK_PISTACHIO
> +       bool "Support for IMG Pistachio SoC clock controllers"
> +       depends on MIPS

Is anything MIPS specific? Or can this be 

	depends on MIPS || COMPILE_TEST


> +       help
> +         Support for the IMG Pistachio SoC clock controller.
> +         Say Y if you want to include clock support.
> \ No newline at end of file
> -- 
> 2.32.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
