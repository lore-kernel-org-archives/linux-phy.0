Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1212BC43217
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 05:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sF/5tDwhe7PAdd+pEGUjIra0rSLe8OowjU702fNyScI=; b=T5GxHazoL9Q0A7
	M7zKD1zirb3QkT7Sv+lTjSR4wdgf5oT50Vqk2jr4JWyYIBCVCCnmbsycip1eCCk6ty6uopda1BYNY
	HjWxaTCfHUw69/Zl6MQ0MUlsQuZmYJ99CaJ/RHhmgQvbkE7B05BHfQYjqPDl7nmb9x0qmOG5y9IHC
	HhLSKBBbxoYTqG2rEG4w9ZSP2a1auhFhHekwmS43kUOzQaNBZ6Kw8VFl723lYugcn+PdpZxLlDKTJ
	tBHpJGqpQ93Fwheo6uOa76j70DUO8LlFqMC5+migoaD2I/ADJUvBVW8g8q83pYAzPaVe/uwOc40wI
	ovAO3SG/cCp4+/5tOx2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol1dB-00FAaI-Tr; Wed, 19 Oct 2022 05:28:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol1d9-00FAZU-Ib
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 05:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1395B6173D;
	Wed, 19 Oct 2022 05:28:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90922C43470;
	Wed, 19 Oct 2022 05:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666157317;
	bh=zcvlAPCMUxoBZOtKn7CdHbj2emRTExlH2yMzgliRJoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RasJl0Hr14fJTyGEQK/ynOvBRb7f6CmvrzoPLZml/au6P4VbE2hXZAvZZrWOVC+D1
	 at0DSJVa1+bOtXkFc7qqE7NueIxEeTZNsk5u650BpmrARKxkSzYAUq3z7xfJkzGOow
	 vnIpTWWQl0mliUuN1e0l/a2AdcgBi9uj0cijUnTEeCaKSl2+64nDJ4uhzVZnFiDaTh
	 eVuEdgvcwrQOzaNjdCAFbvIlTmq5W9lXfz3LFtoLTvxncF4MLnzGFL9V+h/LJ41zjM
	 wouZLAvnhAIfUmFZkWN37ULnz674dan7Tup6MUTC0xhLEgkXCu5r7XRpUIUXCSCuas
	 +GFcM5Ct8UTLQ==
Date: Wed, 19 Oct 2022 10:58:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
	Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH] doc: phy: Document typical order of API calls
Message-ID: <Y0+LAK2UVLOyZS8H@matsya>
References: <20221018175841.1906611-1-sean.anderson@seco.com>
 <e002248f-7070-3f89-04f2-e7f694fad5cc@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e002248f-7070-3f89-04f2-e7f694fad5cc@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_222839_684677_656F5254 
X-CRM114-Status: UNSURE (   8.08  )
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

On 18-10-22, 14:01, Sean Anderson wrote:
> Hi Vinod,
> 
> When sending this patch, I noticed that Kishon's email bounced. Is he

See 76845ba539c3 is phy/fixes

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
