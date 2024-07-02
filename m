Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63802C30658
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 11:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJwSgruv3PsP4w8GrScuTxkVdJrqbg/a8KTvT4PX/6E=; b=t+c0qGZ1Y8ALyh
	27ZXDsMf0+Ai8r9YIAMqKtTycd/Fv8WSk+pi6pHCLH2M8+6Y6CBzJd0HXmwPQaK37lm9gAslbmMeL
	ocqbjeCRF21ksSASM8Yxjfqo5wbZ5Di3xgpOCciPxIU1ILJNfORwMA+rzL1qjjZDTb2k5Li7rpSEn
	weOWDXyB40DklYg2SLr4BG4FJNIC2X25RYmmMTTgFAnyFImV49lBXlc8NB4hZ9iamaSELo5bSh8g9
	0Hrr8anCYpk/ofB7nDmmBuhOxLlD9xCeoUdTfZJMzIWznH1EbBZQLengjhtP6FZ8mX7pjlGLRvFSV
	iaCb11HLq40mY0rLqGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOc5Q-00000006a2H-0KFQ;
	Tue, 02 Jul 2024 11:54:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOc5M-00000006Zzz-1I7U
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 11:54:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2FFF4CE1D1F;
	Tue,  2 Jul 2024 11:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E612C116B1;
	Tue,  2 Jul 2024 11:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719921249;
	bh=ty1qZLwFA4LCJPhQ5+oQL+NTqlr44hCXTZWfi9VlxiE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D1uHxzXASDrj0Xo4U53R9izLeGl/NaX6UFUGzneXoKA1L+NyquI/9cX26qXyeVHDY
	 jYQGC2o4CLhPiMuym5mKkOtr7Fn/H2r9bk0Pmf4UUYK+y3vOleFlOfniF30u6pimN2
	 96iSO5DhMUY8HbZkdgOoHZMOSugn/ITGxfmtDSEEfxQuZ8vXhfFKj+0r71r0gONbQJ
	 +/6HhoaRQWM2FmvEVvq6K+fQtvOONZP+2dBqhtjg2wIFEtmCLBh+EWhaGRhvKiAkNT
	 BcbAVirTjccDd1i6idZswa9vAcJqPkozOp8vdbSr7PnWm+dtz50AsR0CGjeXZk6gpW
	 nmP8hC1ctbotg==
Message-ID: <b73fa427-9b55-4ca5-8edd-530ad26c7df4@kernel.org>
Date: Tue, 2 Jul 2024 14:54:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: cadence-torrent: Check return value on register read
To: Ma Ke <make24@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
 sjakhade@cadence.com, sergio.paracuellos@gmail.com, robh@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240702032042.3993031-1-make24@iscas.ac.cn>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20240702032042.3993031-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_045412_845203_98B1E606 
X-CRM114-Status: UNSURE (   5.24  )
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



On 02/07/2024 06:20, Ma Ke wrote:
> cdns_torrent_dp_set_power_state() does not consider that ret might be
> overwritten. Add return value check of regmap_read_poll_timeout() after
> register read in cdns_torrent_dp_set_power_state().
> 
> Fixes: 5b16a790f18d ("phy: cadence-torrent: Reorder few functions to remove function declarations")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
