Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1D5EB64DA
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jul 2023 11:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZsXI/3Sk4S/TQ+SkLfd+3t3S9xW3MYBL9R2Ox8u8AY=; b=dMiikiU6y1fJw3
	haa8Dna5mI8ISIia+abPGfcbkqWLiv44kIkcXiDUUbQ2yKjobiciXXs1mlwa82nZI6jlU5iKXc2Wv
	enCkaoWm60qr/R5twh6WZStBbg9rFhi8MfWUgML59zVjQnsYe0Un/AIEIuhUmQ0P6TuqLIsoy5iRZ
	vgGAX92NJBlZh8+rIzdLAuBT4hnK/tGopKhUTXfvzeEP0swgsZ+Ban2NPJG9ZF25Z4CDix923we34
	lpceuuojhv9+53IMWJNLktB7QU8u48z+j7AD/JZlB2vKkphsS/emhajfL8xx8S2Jj6k3Kex0/3H5k
	zYvhy03bzlEz1/gTW93A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKH8M-0065EH-1j;
	Fri, 14 Jul 2023 11:38:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKH8J-0065Dq-38
	for linux-phy@lists.infradead.org;
	Fri, 14 Jul 2023 11:38:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 344E661CF4;
	Fri, 14 Jul 2023 11:38:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C8C9C433C7;
	Fri, 14 Jul 2023 11:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689334726;
	bh=9artJVaQtMug2n6qMELklKGNREEdY8yUeo63Mr8mbsU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EdaymevCQ0+erDe9qggKjzpnZwcOBTDQdIp7GnJJfWGKvLYWOFvZ0MUBHQJgo/Znc
	 svhwY5LgJs4LUjWO0Ey1Sx8Fc+iaZPTBzFhhrWMG1NqCKGrI5bXxhcRrjf/30ab4bq
	 6CmdhtPABgWfFC3xPYtxPy8LN301ptw9Pb3in3XxpJD/f2ESby9GlQvWob5dCHp+xB
	 n6VG2p12ageWJki9prZWOPcRllaLSrXYjglYakFRxDzpuf7IXIiSpB43zEOeuqq4jE
	 i5sbHnXTWRlLmtmQOS71atufV1XaknAkKvz1j3oYPSflhS+NBzI+weiyWoKFioUQJF
	 xC+H9mV14D6/g==
Message-ID: <2bd1189a-3cca-220d-0db3-c63c539b03bc@kernel.org>
Date: Fri, 14 Jul 2023 14:38:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] phy: ti: gmii-sel: Allow parent to not be syscon node
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230713200957.134480-1-afd@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230713200957.134480-1-afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_043848_069215_DB7C2A28 
X-CRM114-Status: UNSURE (   9.37  )
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



On 13/07/2023 23:09, Andrew Davis wrote:
> If the parent node is not a syscon type, then fallback and check
> if we can get a regmap from our own node. This no longer forces
> us to make the parent of this node a syscon node when that might
> not be appropriate.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>

Reviewed-by: Roger Quadros <rogerq@ti.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
