Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E6CC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQdDZ5LE2s0j1RH+y0rpf7T8N+mV6VwYSflYIo4rveU=; b=skKJeSs1DP4fq8
	SZQ6s0lLc16ISFFrxcQo4K0adKU9iUPH0th3BQYmcrWvMFLAxQJGCLuWPOZdebNCEe8wHA28vSop1
	7cf65yBlGBHUzYlVcMBdVGWj2oPsjSmzmxKZWyw9bv7N9hFNLMHxhI1w3UofqFf6Tf3UppNLm3iXt
	N/VG/m3k7aVDYvLiAY+UijLi6eSoXtFKb/DA78bMyPqWklk9wE9b5EloxymhGHfqfRchI+bclwCek
	OWU3wGlr7Nk2VYH6RlyhAbAmViCpOuPcxE4gabVaUd+hj9j5Ha+uiH3wTtDUxxucYNXDak8UyCvWd
	ZvYvV1AEVGMJxvaN5MEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdT9-003pRp-12;
	Wed, 12 Apr 2023 16:37:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdT6-003pR2-2h;
	Wed, 12 Apr 2023 16:37:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 67C6B6371C;
	Wed, 12 Apr 2023 16:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42DEFC433EF;
	Wed, 12 Apr 2023 16:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681317431;
	bh=RoVMZVKoGh0q2IDJXWkpO4j1mz3VEQexezR7Rj1plCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nWod2hVKj26DHH5xNKy55eel9cwUci5Sn+M7P2m7K7cDG23FJODQT0bsZuk9gY4Ns
	 9xKlXfGtZbuDlKeKUOclfQ+NJAVagExcsdNMf/ZuBN3tS7RE2NgxEhFTl4M6+Xqh3g
	 GdGACJ83UAbbO8GuV4mo7M9B6OojWzu1jA2M0MKmNcz8BjRHdMZxK0J7sNzeGZ0VJA
	 MAaQ3mOZ/CPbx5LqJHRPzWx7zW+T9uEhNFrAUqU2VzIivVO6wT/PqoF/4xSDrCNzTx
	 6MA40+DkQZeEIltDW9JbJul/EWogcVnEmWFyDXJkQNNf1tinFX1odXJTYC7nwIuoWl
	 VuyZpxnDU0HgQ==
Date: Wed, 12 Apr 2023 22:07:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, rogerq@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com, t-patil@ti.com
Subject: Re: [PATCH] phy: ti: j721e-wiz: Fix unreachable code in
 wiz_mode_select()
Message-ID: <ZDbeNFI8fjQWF4Oe@matsya>
References: <20230403094552.929108-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403094552.929108-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_093712_918377_B4FFE516 
X-CRM114-Status: UNSURE (   7.04  )
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

On 03-04-23, 15:15, Siddharth Vadapalli wrote:
> In the wiz_mode_select() function, the configuration performed for
> PHY_TYPE_USXGMII is unreachable. Fix it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
