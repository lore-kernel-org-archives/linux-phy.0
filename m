Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1850AC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78Ygcg0FxYP3KBQw6VcbkX2pCd+UA0dFgNXQroK6K6Q=; b=TDBud1VygQUWbn
	bpD8Vj8JRbHdaU/RiLZzd/zA4D8u9Tn3uOic8pcp1swjaKqne0tWI37PUnuy8zc5w8TOBNJ74basI
	03LT2+toJd90wSGGhmD42zWKYRHMjiXvwXLzWlIDOO3GcPA/DaaLqnxvkt+zKSjWMjBMznZuurTUP
	cWQ+Q/XJHjM9XL+eRsmNV03J8nAfovk2Ez4QiHG4k05Vgxu825bH9ECUluDzI7YHMHkPRUc+PM/Sr
	h94Dg0c8ultN1JGY2majmZtk4WEAAKUVHqrPX08HajIBriTT43isKjJHYwllA4IC58JLMF/IJFXTO
	8Q05wSz8bwIeORUV/DkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cy0-00Fah2-Fk; Tue, 05 Jul 2022 07:27:28 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cxn-00FacC-Gk; Tue, 05 Jul 2022 07:27:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 47EE2CE1A55;
	Tue,  5 Jul 2022 07:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17F87C341C7;
	Tue,  5 Jul 2022 07:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657006025;
	bh=P9WW1S4fhwQrJAaPn5iB7lNyAya9Q15GecNEfE4VjO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AXsPunkY4b9NsUuMA7VBjiPtGjsvdUvyy5CDpaDQspcvO9a4o8/LMiB70MUF01Q32
	 HNG70OQWCKEEKI8GU1OpOPTpxTll/PR35jSE/7h7iZ/zDl2GhVUta/yH3pXhwa7wiT
	 wq2uhBPZDLTAD56zANY4oKr4sHlbhCbjnPwinj4m0MvfIuYbEi8+D6CRn5MR0+RcOA
	 IPCxLeWVUlTKbpHtHh/SCQuKPfbqs98jCpTbSt6HzsRtOVNZgZ/IqBp8gyg+Dpf1tO
	 5z4JMAEF9GQzoPZXtXK4iZTGg4e7ty+qApMEtiJwqzQPCYQy8MPqGmOGRegu9k/43i
	 O0eEaeBLQq0yg==
Date: Tue, 5 Jul 2022 12:57:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Samuel Holland <samuel@sholland.org>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Sync initial otg state
Message-ID: <YsPnxQXKpDJ4MC4a@matsya>
References: <20220622003140.30365-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220622003140.30365-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_002715_809550_0C21E9EC 
X-CRM114-Status: UNSURE (   7.51  )
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

On 21-06-22, 20:31, Peter Geis wrote:
> The initial otg state for the phy defaults to device mode. The actual
> state isn't detected until an ID IRQ fires. Fix this by syncing the ID
> state during initialization.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
