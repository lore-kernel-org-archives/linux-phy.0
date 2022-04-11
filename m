Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43118C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 17:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxMZqsO+cPs1txAH7CXX4vRn49KyDQTiLcLMfkO3KnU=; b=YeztQKDjTZuWNY
	zmxA28s1SL0e3Um8vbf/A1ToCEfxWMKSBNpQ6wFFobZzPUpP8ZnmCvIxNdxrzmxhOMUHUlg2XRnWf
	wXpXuxYc2OlY8aKEPjU0dWvdPsBNpf6/rFgjPm7D23GE6YfpSZZxJKzssJni+pqR55M6nV4I8jZxw
	KocKaYLZ56BxGkFckjswPeflzufXjJM+RKJcoMlYV1figmzqd19tmR8zsHGZhUyDUFtDOMaErAsFV
	tGNbeDR7jY54i0TuDw/2AcxuAKnR0Rto/5HMSphn4h6dE5mvm5YkfeaYck8p5j5lraT8IafOn1A48
	9eXtCv1NDnD3rthvlF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndxyn-009wiZ-GL; Mon, 11 Apr 2022 17:37:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndxyk-009wgO-6q
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 17:37:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 111FBB80F3B;
 Mon, 11 Apr 2022 17:37:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34B2DC385A4;
 Mon, 11 Apr 2022 17:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649698646;
 bh=kYbh6pX/FHME7Yaf3yi+julbzImYTc4dZfXcNYYWD5I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TL/TnBpth40Ri4M7OsvCOZAPrXxbHxUkNB/eNmNclDjN2ERLvLC2oLVJ6AcW+m6wS
 LB6nN09+Z2grJ8aXoEXNt963h0cTvg1gnFTaibyDrJaznXn/quCC3Yj6aat5XTgiJS
 VT6tMd9hdI3PlXaD61qSCVQeXO1V/vRhMxzAIDQq7eNG2RwTrbCtoyLlE0AM+NM4SL
 KBe1v9Gc6rK1r2QDS6VqPqgw7TRS6cGMrsbEG1c8svwZyCM6QM+Aa7Be+WAiVsgUQh
 yE0FpXNby4nCq8Bbj6xvcFX+pvopWFOHurlqP9l/qEDw4JwzsaAgNrfZaC5wIMGA+F
 4CBx39qUN2n/w==
Date: Mon, 11 Apr 2022 23:07:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: ti: tusb1210: Fix an error handling path in
 tusb1210_probe()
Message-ID: <YlRnUqSpXAclhWqs@matsya>
References: <07c4926c42243cedb3b6067a241bb486fdda01b5.1648991162.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07c4926c42243cedb3b6067a241bb486fdda01b5.1648991162.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_103730_435360_567D0F2A 
X-CRM114-Status: UNSURE (   6.36  )
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

On 03-04-22, 15:06, Christophe JAILLET wrote:
> tusb1210_probe_charger_detect() must be undone by a corresponding
> tusb1210_remove_charger_detect() in the error handling path, as already
> done in the remove function.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
