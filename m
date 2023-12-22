Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900F2C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsWSMaHvGF6c9yQW+UfVclBZ/DgQMTt1otBFTey7kr8=; b=WYePRdbe+haEoS
	/LJrRkHuTXnTqiLbBYk/n4p8/sD3f2UNQz4V3FbmMWD97rczjqejApVAzmd39uF0RHh49QOQMdYg2
	B5WDFOHLlu7jyzE0uAWYnunYSHnB9tK3zohQ1cmOLLrseZADUaLCeeok9WlG9fMtW/kRQAFMlfLCf
	0SnxycVJlDq2gqY+65yak3C6nfFYarqv93nb+32i62h30Q6Kqq0aSYE+BDz4PCg9POj1HUSm3QAEQ
	DdqMSS4zsaYzFb8cyax4qX7ZUEk2t1ezhs8/IUcgK0QSzF9EtKDw4yfcvAPQ0YRKQIqvdQFlecJmp
	N6T9b1X2jw6uYYEOjncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcWG-005W57-16;
	Fri, 22 Dec 2023 10:12:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcWE-005W4q-2P
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0EEA561B77;
	Fri, 22 Dec 2023 10:12:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21BB5C433C8;
	Fri, 22 Dec 2023 10:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239957;
	bh=219GP91d68zGoZ1cFfjVthGnJx/nc2d6y0Gb+Spz9BQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i1ttZV5wTLS0aipOuZ7Vimv3aTekOWo4PtDf8LspdJB5Fi7GHxsWyWuGQiLMzjNzm
	 ZuJbod0ykU39/qoXXw20zQ7Yv25NYxU1PqqGOY+dN2BS4tOSZpYIPGdUK85IDGJ6lJ
	 HgnSyNjiD55DjaMp+geTO/sBNKHsYQZJRdllk5LaukY+6ZOutpnTSlnitR4E+hvw7B
	 dQPsBNFAHPGigJSBwNZNw4yERYJe0QSYAqt9cwXii624qxeuCEWmgrKUGWHpRvEnnM
	 imDcaUjSlP9xnyp1RbZWJlHypkiIbSohEIgzgipdO+QE021OKGiI34c6tlkIJ3Y1HX
	 W+ULD/m0nkJfw==
Message-ID: <09cd6d99-6a06-4920-9ed0-78661060b759@kernel.org>
Date: Fri, 22 Dec 2023 12:12:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/2] phy: ti: gmii-sel: Enable SGMII mode for J784S4
Content-Language: en-US
To: Chintan Vankar <c-vankar@ti.com>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Sinthu Raja <sinthu.raja@ti.com>, Andrew Davis <afd@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20231221102956.754617-1-c-vankar@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221102956.754617-1-c-vankar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021238_846924_E812E315 
X-CRM114-Status: UNSURE (   5.18  )
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



On 21/12/2023 12:29, Chintan Vankar wrote:
> TI's J784S4 SoC supports SGMII mode with the CPSW9G instance of the CPSW
> Ethernet Switch. Thus, enable it by adding SGMII mode to the list of the
> corresponding extra_modes member.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
