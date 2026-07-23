Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43209C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 21:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRWupGJDtc080AF5sonIhc6HEwW8b/WQuiRsqkRf+lA=; b=hyH3fNFrJsbiRJ
	pl9seGIjUVUxvTnSwmPyDwHvpWY4UFz03qhu9NOdIabv+9xgBkcZnsXLfi86Dtmw4FOplMF3IYl1s
	aIG1AUYyApahms6MFTq9WBVzChKAKxxYaGJcCwxNh7L5RIDDNgOuZzYwJLHCs5EAmiEvkYRXoll61
	z74gns9pWg7Jkfa+Y9umH46DyVx0F8BakfPnUL56hAMtR3l6c4jvbQOGuFJAtViVxH6O+T57BIuQ6
	4vJbaxxCdo/yiJiGb+1iVHrsLzZGOatAggw2yvEnrakLUd8/cpcorHKmbEkYWkYMN/EQWkMwSmi10
	Gk+oAbKbpMt26rTq8ymA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1HS-0000000F8g8-3pe3;
	Thu, 23 Jul 2026 21:48:38 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1HQ-0000000F8ez-02BO
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 21:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784843313;
	bh=0DKLloNkB21AKXQThOK9Wz9baK2f0lW80gZlTFUCfVM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k3nlLFv8ACJTu73Qgt70Tqeo8QC4ZWyGnDBDSqKTQeLWU3prsl67S/a9sea3qS618
	 ZFa0TItBMoxfpdFh4pqM8u6CUKG65IRSrPgmCnelf2v4pngvBNEZVQVryJo3QqUORP
	 zAw7q7zHbwoTKKLCt83fbH05adFbHm7zn3iwY3nO9is4DjKOF1En+Rnq3BLbAfDBhe
	 FIz6yfn6PhE3JaRERuEPXbBh0DMmpYhYq++WYrfkUx4kZUzRT/9IErrKFJF/hpRwed
	 coOueRVA2nVxt1OeXWb/9+ayCRCVaJOsMyTq9ZQ3qK18R2+uLKtXf6I1LhQcpMUEZa
	 GCYlIikIliaig==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C92B017E001F;
	Thu, 23 Jul 2026 23:48:32 +0200 (CEST)
Message-ID: <84a30b28-f003-4ead-968e-641517fa3d67@collabora.com>
Date: Fri, 24 Jul 2026 00:48:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-5-8e786067865f@collabora.com>
 <20260723200041.0B3DF1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260723200041.0B3DF1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_144836_213878_0A66BDF8 
X-CRM114-Status: UNSURE (   3.59  )
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

On 7/23/26 11:00 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Ignored PLL configuration errors lead to silent hardware failures and a permanent power leak.

Already discussed:

https://lore.kernel.org/all/88624071-de6b-4fd1-9984-f79270c2979f@collabora.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
