Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34264C54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 19:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KLu2v0+FgIRbLr3ChrL9UpB6qT5NmFucU6qs9tO3Gk=; b=H9huCJPjzrh6Cn
	19+wXoU0diJhs6JsozypOVBxpEyC82O8N31BiZl/4tD1nHXUNOINqQsnDJJxgeDvTJaiQGSWRg+gW
	F7fXOaRYBD24eh/mAeg2oJA26M8uIjK/CjobGkQb6CVfX/MH4j/Phm97TkcxHwYpesPxNPk/SM362
	I0yhHPpHqC/Yp+jluT3xltc9uZ9HwlUqtcVJhU6wS278QoaScSTlZmqxaX08rA/5y2l+9BAd5eVIG
	3BMjISkMi++uC/IdftWCnj7oh9R5J+CqLaUIUkjms6e8Wh7CGXMlH0fExeUHlwHxQn5F/1ZKl0b30
	WljWYL/agDhY4ro6b3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPUZ-004BD0-LE; Fri, 13 Jan 2023 19:13:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPUY-004BCd-Hs
	for linux-phy@bombadil.infradead.org; Fri, 13 Jan 2023 19:13:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=aFmGn8H0AyUbffI3Ed9O4Auopin8Ul/by6EY8uZUZeo=; b=SrpRyhd+wpPrWHa0ZOsGYpvbE1
	tcT6JjCWrkSvfI5I+ldnd+/cbdV6LgM4M1XUW7Bk14Emh+KhW1hhM/SvRhJ/9qumxh5CPNkcBAtHz
	pfeT0FFEb9Lk2jkQTNokTVqp6MgfD72vaRqvlOk36AYR26c/gtex7TySMT++30jVLe+m1uykbOZDT
	ydJrpWKCbD68A4xq89QBFAvYxtsrX2EO+piHGOmCqeTu5O04808XyX/fiizCY0OoxhmBkIBFW2EMj
	HUKhGyzLJF8LGAi725YeEFHB2ZnjsZzWRBIBQAPR0aH3LORW/OSh1RQoG7gMikkEIXK9vMOW3oEsg
	dp/Va26A==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pGOgX-004QkE-0d
	for linux-phy@lists.infradead.org;
	Fri, 13 Jan 2023 18:21:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 86272622C7;
	Fri, 13 Jan 2023 18:21:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F79C433EF;
	Fri, 13 Jan 2023 18:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673634115;
	bh=wgQJUKdJiGKKA14S47GMRE1JaKpLXL4mOsb55g2FXfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LHqcZJFW7FFOU7mLmtzcZc65vV/jG1OheZkgWG+nZpLF5a07vabcsa0W0mPknD3W3
	 6piXoExjwVwNJw3NeMYKekgT+lk8/1DLKu5/bkstfoTPaZvXU64xovijcaDiYUiGFk
	 Rd5NfpqWMTaFCEjuCoT4QWGZQrhR0QzI8HxMF6+tvslQKZL5Nolf5pGHRYV/6vqPBE
	 OAmUqnXJl7IRRbEMMbzfI4/n7i4UkTj6uLVdI2N7K3bEp0pT9HT+IZznwylpQX8yzE
	 565XcMR2/LpYlaptp1l9ZR7anl1/iXPvalchvrmWsWh4soIqdSi9T63jQF7Be7Fqz8
	 dhDa/4nB1pHcA==
Date: Fri, 13 Jan 2023 23:51:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org,
	marijn.suijten@somainline.org
Subject: Re: [PATCH v6 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Message-ID: <Y8GhPiRZxFZhhQuu@matsya>
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-4-they@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108195336.388349-4-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_182149_447266_E3B48C69 
X-CRM114-Status: UNSURE (   8.19  )
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

On 08-01-23, 16:53, Lux Aliaga wrote:
> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
> compatible for it and modify the config from SM6115 to make them
> compatible with the SC8280XP binding

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
