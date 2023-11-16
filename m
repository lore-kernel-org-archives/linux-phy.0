Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C337EC54FB9
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 15:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYDHP+ZG5M9RaHZqYiTCKCxgI7ruwVilEayxbwtlicw=; b=KINSZHUUwHvn+K
	r6EP1Z8ffTckppzCShQd3bNohWCHnZwyvSkHsUHa15nBhB1pzMITJGBE79YzoCDBxebKH/W5aRHXm
	pIKjs6HRd1SASdw2psMiQwfL2uhhWpQsLVPyRMJo+uX6nbtGXxXFYM9CC8caATU/3dDHebHL8354n
	mb2y8GL9Ke3N/pkCqqL21WteD+CdvGFOWY1Kc/BVYZOB+nB+EM9A+P3Tx7pRQ1ypFGghENLQ06IkU
	zBDcVG2xxPZhQJjbTOOBmmcLhxroxZIJjOZP3VWZWqf/K+a3SJ2pZ8pT5DacPKFtYO8Ez3f63UgEi
	EK/+xF1FJYC9Pv4gfRLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dqu-003kgE-1k;
	Thu, 16 Nov 2023 15:00:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dqr-003key-30
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 15:00:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D7791CE20A1;
	Thu, 16 Nov 2023 15:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67565C433CB;
	Thu, 16 Nov 2023 15:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700146815;
	bh=yhaKzC4xxHXc6E+jm/VpLPlXWoQRVF4q21gWBbdXoGQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hm3krBZUbgHv+CA6eFUw5zuEr59VTiYjyeQnPlEEoUNv6/v6FsfOm1V/HxeRK/Riz
	 Cf95PF8V5Ukn6d3cq+xdPzXs5Kc3KMikgmQV1pdMtBJgW1q/X9tSV0aXwK9POndwRp
	 8A3iHdhHAzHLH5muetLX7WQ568lWCB8iycBaRLVQgtlLQlR2lrcsnS9DaRi63cmHjb
	 dO5QCofMZbYb9wIpErXObDmhVG1kkK4dFH0aYIeTR9dkl8V0+g116D+2xHJFGGVN3y
	 hQSZqEzvPvLy6BDeozOnDgdQsnloo66emdE6pLuCG4RjNibo3PhXBAKmFW3ma/xRx3
	 OUoa4T06rywUg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <d2323636c6cd2ec22f73a0ae6c2d34ac99b4abd5.1698854255.git.christophe.jaillet@wanadoo.fr>
References: <d2323636c6cd2ec22f73a0ae6c2d34ac99b4abd5.1698854255.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] phy: core: Remove usage of the deprecated
 ida_simple_xx() API
Message-Id: <170014681304.545052.17451265867929404624.b4-ty@kernel.org>
Date: Thu, 16 Nov 2023 20:30:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_070018_143138_9706DDF0 
X-CRM114-Status: UNSURE (   5.06  )
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


On Wed, 01 Nov 2023 16:57:57 +0100, Christophe JAILLET wrote:
> ida_alloc() and ida_free() should be preferred to the deprecated
> ida_simple_get() and ida_simple_remove().
> 
> This is less verbose.
> 
> 

Applied, thanks!

[1/1] phy: core: Remove usage of the deprecated ida_simple_xx() API
      commit: 772dd70a5ed6845d87738f82c788c9ff4e37fd7f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
