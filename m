Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10BB0C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 00:21:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA3A860C51
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 00:21:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA3A860C51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2M+5mh8sRwIQGX8ldm6KK1PF1906bOkehxy7Yt052Oc=; b=hk8zWK6nrQPnLh
	S3j7Bt7Y6D31YaQQg6MK10fLprLZmfytKjapIMejmb+6wesM5jK/P8fes4kcUgP+0H5FM70l7ntCB
	dUB5HxXzxV3EpZR90RDR3oZQjvXitWrFAxkvDF1oQ6uRG/pqk8ZMyhMelAIxPXvPra5wpynQ9dGL/
	h0to+Fhbm5YxphC551kLDE1yOMNKHEMVvV/rBBj8JevR44OwS7pNXCne3qjL7sGbHRvr9Oyk82Ff+
	9LbWPUObu24o6MxaBW+LBPnBcpWcZSxDEGQL/q8F30D4XdJlqYzOklgXEB0V+pBXb3DpVCQmwDpKk
	v6AI05n6K82ubprzg0qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8Aqk-00ChHM-AB; Tue, 27 Jul 2021 00:21:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8Aqh-00ChGp-6d
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 00:21:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E84FF60C51;
 Tue, 27 Jul 2021 00:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627345290;
 bh=jx7GrUjcBVT4+QbmqnGbi6IvhiI5CLtmhVggNmKVUU8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=bN0owBW/W8+hcAOGEtiAIhijoEATVuN/+t1MSymdEmMpYUikvHigO6eNG1xyNFqzr
 q2yWLXLPBCxO+Fh7xEeZg9QE3MaDq4ufdqibSsrJprqDbXzDhfqmTMGpf0rHkwACBX
 DTs509F7RRObj8L/yjmGXM1vBwSqVeq8wZfdCy0xJZiN5pc7IcYsf2cszDFGHrt5Oa
 XUoWvKpiPubRdKaSZMqigNwG5KDsYYjGdROgUD2sPKFUpLK7ErDd20pTs/T0R8Vo5Q
 dTVb7KheJhWzDl7J74IT2ja6moU4gtJJbTu7jLYgi0oST45+BMODzRf/quC4lEslS7
 EvcpJ6IxcIUpw==
MIME-Version: 1.0
In-Reply-To: <20210723022543.4095-4-jiaxun.yang@flygoat.com>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
 <20210723022543.4095-4-jiaxun.yang@flygoat.com>
Subject: Re: [PATCH v4 3/9] clk: pistachio: Make it selectable for generic
 MIPS kernel
From: Stephen Boyd <sboyd@kernel.org>
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Date: Mon, 26 Jul 2021 17:21:28 -0700
Message-ID: <162734528861.2368309.16849274181317725077@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_172131_300781_B02BABCC 
X-CRM114-Status: UNSURE (   4.81  )
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

Quoting Jiaxun Yang (2021-07-22 19:25:37)
> We're moving pistachio to generic MIPS kernel. The clk driver
> should be avilable to the generic MIPS kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
