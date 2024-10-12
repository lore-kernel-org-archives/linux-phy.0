Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17EF7CF2571
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 17:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I29i9kCS40ILjG4YSeVI/qaouN5r8GimgxdnXgEF94U=; b=Z4VzcJtxRB65d0
	h+LV2N6d29KNwT2S4EnPlob00UElMsudD4ooteqPkWceXGfs5AaK9j+udb3GBtKGH8CDU17xxYT9k
	pv21dHLPV3zO3Zc0/SgFupwui7n6MdMaBi2gxHoZfJUneirgOslNgA1tJnrSvGx3CbX5+rH79LaWk
	k9NsiuTHz6VdzLMAwWelzMohR2z4UVQmLCeMbLqBqz3YUBnRGvqADN6NCMzV3wC7XldUB+jw4jxnF
	eVKICEEaTRwzNXhh8XcgfOcB9XFv8rQkKux21KgnwqKzvwuHAgFP2KS4OKmJ5t0HyQ/YkYD9OztEY
	KeO7hUnPD8WiyN//eilQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szgIt-00000001bAU-2t02;
	Sat, 12 Oct 2024 17:53:23 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szgGJ-00000001axQ-1vWh;
	Sat, 12 Oct 2024 17:50:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F40A5A40790;
	Sat, 12 Oct 2024 17:50:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7971C4CEC6;
	Sat, 12 Oct 2024 17:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755442;
	bh=IrGrdRYv8ot8a1VdA94PIoD/MYZEgPGcLz0JZgh4aWI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cNuw7kMF5i+IXjEudpdcQl84hpakGHv9yFK0fFIbT4mnDELCrgfcb0zFsdj9GP+PO
	 B94zZ7Uqi3NPpcyttfo309rKRKnv/2NQh9A0WSGJFgeRx4E9JUSulP1mtZ+87P2vGs
	 G2u5vlkv+t9rw+NByEdzqdYZLULTID1USBSLWp2KbIIENdcd2Jb8qk4Dp6pVu/YSl9
	 7S0NbL6qOgxbK2bGktUAPSapgDCYPo2cqgDyFyorCUuyiGIEEVdtNOXXRn13ivTxtm
	 so5k+o4drBBcIUoWTNa/uAqxV5EoWS0vyipDG8VAZDjY2y+R/+ONDt376RPBjmofN2
	 UfaEgzHHaXO0Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andrew Kreimer <algonell@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <20241010091355.8271-1-algonell@gmail.com>
References: <20241010091355.8271-1-algonell@gmail.com>
Subject: Re: [PATCH] phy: sun4i-usb: Fix a typo
Message-Id: <172875543924.55946.332622987727413836.b4-ty@kernel.org>
Date: Sat, 12 Oct 2024 23:20:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_105043_590938_274C1F33 
X-CRM114-Status: UNSURE (   3.78  )
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


On Thu, 10 Oct 2024 12:13:55 +0300, Andrew Kreimer wrote:
> Fix a typo in comments: wether -> whether.
> 
> 

Applied, thanks!

[1/1] phy: sun4i-usb: Fix a typo
      commit: 11dad94b50263bbe87d015041c77be61c8c44161

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
