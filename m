Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF0AEB48F8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 10:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYRTAA01DCsiOPNMqXJHVCKB2CiJdstc/3IJ0eaX5m8=; b=bPwjW5sMixFNzD
	/N9MLLew8g30QI/lYlbb84nlokGKbXRYs8Eqj9qcLuM6D6z4LOi+pjoHrcMaMSk2Kg6U/hcnltvQa
	3rInu2oguPOHJZCpJ9GHc+/w3+yDPb5aCSCT4Al45pXH8Z6VfieGHkmToptdZ4tHQ+GHTxqWXJIi6
	4OrwWUAgfpTIbtgK2sMIf64tAYNlMzFyGJELg9XQ8q1LVWRZz1DBvhi3j4A3KyeABZO1dRzUPFA3e
	1OmJRvToujILmwSd8SyepC2gAdC9lKIuStgLgBR397JHpG1zxdnJqjGOHyiSpgjtkcMRWzyVWRgU1
	3s+nJtXVLRoV3FERPpMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU5L-00000001wt7-2sC7;
	Thu, 12 Feb 2026 10:38:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU5I-00000001wsh-2LAA
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 10:38:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id ffacd0b85a97d-4376bd50b01so532587f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 02:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770892687; x=1771497487; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EHvH2NxXNZ50ASeOsz2aD1KixOOY7ZptsiQm52Vzawc=;
        b=EXijWhGHmbRY8gBwbkEu/mKLVTsQn0WmHGXbFLaBZKH1s7NUaNsI16ZEjCU+sQVvlu
         PT7ZY4mLFVIb7uWyTTcPfO8mPPgcQfK1Yw7xjNxCrcmuQ0i9f9WyuDFQRtyKJUbTjfhk
         elbeb8sSWRkhGgDgYWv8qFhlp00PniydUHZcyf6frWM2cJOJdPvG0G7HZkkZzD5F+YcO
         ubdSjF9nhwSu6RMJ9HYFOMgtX0vsQXYzrbvF8PhLcseepNcADmx7UFLdZG/db4F5CpTI
         ePB+9uDC72vpD22ByUVyH3cbfjF/jwMuvwIunTgKIUGIx10u6VChDcfPxD0xJQK3Nlq+
         H5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892687; x=1771497487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EHvH2NxXNZ50ASeOsz2aD1KixOOY7ZptsiQm52Vzawc=;
        b=abrNlpCcUivMb4Z2L2ctDhrd7OmzK7i8jlelh4r86yarukq3NU/4VI2eIM7mgkr9JH
         Z/iK5BsUE4+t/NzYin49JU1FpiA1uGdZ5HDX6GNq8n2y7O03wxK/FCKzUC/ekkYyEuN+
         tVP2qB94X0e9TGqKzK56/TYCovypoUp/GVubAqA+6G3X2AF+5XzE7OgmnWYAsZUw8aJN
         1os2W4UcfUE/Ngg9FnAmnMpNBtRim2uj8Saa/hcASO3d6PJu2kCcQ7C0pt80WZqNEnmN
         eKLt8ueHe0rgNp1Vn/TN8R8LvrFh7lxWfjxKE0vPxAgElZ/3l8+629u0PDF4aRBMnBxH
         4S5g==
X-Forwarded-Encrypted: i=1; AJvYcCX0vp6C7ikTRVQRCgQybL4apbCK1ThOgG/2RjSukA6C0OD8LZ2fiYBk58SeWa0ZE9nxdWQuZbbOK1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/uo9nnw9Y9kv8jRfLWdmaXlOeJ7A8cbX/hs7wbMRTQlEgt2L0
	BuQWPoLmCtoL2UfskpXSrJ/B8VctAj95pvorcL3Zw7UGobQ+SSdVLryDqw0jDsl1
X-Gm-Gg: AZuq6aLOgeygAke39B+miOdOflVLdR8SLZMuL0yXW5yTA8KrRTzJZldSA8srWT+zn+N
	EVDkqdInnoSWXW2bStLYyGgrtLHs/bNi1Ohsmrmf8mgQYDZg2cx6K08iw3eFNftvSs1KDk9ukWN
	1N5jvRaGkBlc5AWJOqOOAN3SsQsxpLmrFk/OH3A1gqMCfOQOUZLFrSXsEbknzzd4Kyc7y3A/HcQ
	Ys+AsrReEHIBYbxfKBx2Q381PM5YZ/bdnwHS5fdOf885xjIbxA0bA9mM2N8Z5VpWucsbsFEXo4K
	ASthAW5pfB5vYUH4JGrfXP+Q/KcQd5QOO8sfVyVhpJnopHk5QPBmIl76S5Gh/hZZQcovW3/pUy/
	/2VEZjxyN2xNb+7o4r6ztI7RHAXBMy/XGmiM2x2HxjEpzqyBKhN93xXxSNIcbytTrHX0i29qHAX
	glYxqryXf8qks4LYQ=
X-Received: by 2002:a05:600c:c16f:b0:477:9dd9:ac57 with SMTP id 5b1f17b1804b1-4836561a23bmr17586025e9.0.1770892686309;
        Thu, 12 Feb 2026 02:38:06 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d835f6bsm167527835e9.14.2026.02.12.02.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 02:38:05 -0800 (PST)
Date: Thu, 12 Feb 2026 12:38:03 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <20260212103803.xut4sjbypgb26mo4@skbuf>
References: <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
 <aYznE1FIbs_0OcPR@shell.armlinux.org.uk>
 <aY1hs4XKZSpvKd3B@vaman>
 <20260212091332.qcpi3qyynmdp4acv@skbuf>
 <aY2lFTIALH7qEJmM@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY2lFTIALH7qEJmM@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_023808_614315_08EA8B95 
X-CRM114-Status: GOOD (  17.01  )
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

On Thu, Feb 12, 2026 at 10:01:57AM +0000, Russell King (Oracle) wrote:
> I'm also going to point out that phy-core allows ->set_mode() to be
> unimplemented, yet the phy_mode is stored. It looks to me like this is
> intentional part of the API, which means that phy_set_mode*() is not
> expected to always result in the hardware being programmed. That
> brings up the obvious question: if phy_set_mode() is not expected to
> always reprogram the hardware, then what phy API call should follow
> this to ensure the hardware is reprogrammed.
> 
> On the other hand, if the API intention was that ->set_mode() must be
> implemented if phy_set_mode*() is to be accepted, then surely
> phy_set_mode_ext() should be checking that phy->ops->set_mode exists,
> and returning -EOPNOTSUPP if it doesn't.

This is a relatively new development.

commit d58c04e305afbaa9dda7969151f06c4efe2c98b0
Author: Dmitry Baryshkov <lumag@kernel.org>
Date:   Sun Feb 9 14:31:45 2025 +0200

    phy: core: don't require set_mode() callback for phy_get_mode() to work

    As reported by Damon Ding, the phy_get_mode() call doesn't work as
    expected unless the PHY driver has a .set_mode() call. This prompts PHY
    drivers to have empty stubs for .set_mode() for the sake of being able
    to get the mode.

    Make .set_mode() callback truly optional and update PHY's mode even if
    it there is none.

    Cc: Damon Ding <damon.ding@rock-chips.com>
    Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
    Tested-by: Damon Ding <damon.ding@rock-chips.com>
    Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
    Link: https://lore.kernel.org/r/20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org
    Signed-off-by: Vinod Koul <vkoul@kernel.org>

If only lore.kernel.org wasn't down, so I could see the back story in
the link...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
