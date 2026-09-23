Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC991C982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PubdUEIEs7SRkmgmNQdI9VgVsUyHtVnu28QRNumzlnc=; b=OwEzrkdkDsin++
	+uBCjgJC9OG2Rh9ikr0QWDMxmWtdkdzbwAzEMK5H0KLAcwTRqJ4iGLsLWfa4G5h/NxQWOwtpJQ/1L
	VVlgS8aJkaryLr5SdW1ZBlsvGi53erfvyRO/yZajvZYfHwsVo/c9ix/FPjXW0AAhJ0bdXY/Vfm90t
	FytW04yJnzapM2BiiQGoRVcn7h39wVOTKB0NyN1uAjQ+J0/vWSPmblSG02sYUysdbS80Gjl27cYWu
	2bSj2lvX7Y0fS8RYKaNc0pBeKK9nWSL4O9IGBXO02Z7v/KKlhWS44U9MBXcZHUIo4vcJT8eiieUrW
	iZVKDLBS0VBK0e/IiwgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MHK-00000008HIi-2GXT;
	Wed, 23 Sep 2026 12:40:50 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MHH-00000008HHL-0zoN
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:40:48 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c1971f5efc3so48768866b.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790167245; cv=none;
        d=google.com; s=arc-20260327;
        b=ES1sx7nopBoCTEjrH0EOkWHMpG8lqXxC8rjfJ257oFocKNmvYlFTDuGu4DORVEulAe
         E9SLqVJDlsOqM+P8OhZVUvhgiW53EhCheTlcG2XF7x0FQlotxei3Yv17/tdNdoht2jrv
         qrAwLiV+YrBoGGZH/FNrZL0rRLao8QiBMJilhCA5wbeYH8yyzGtLTiZMMJ9jdG1BhHKQ
         ILNbxnrEOuLm6ZrrKeLn2aeEudd4sfkrsZyhN5PG7HdV6pIL8yew6YTMgJ1vkMORUJsN
         L8rP8XFL23zmilujtgCKLajYLrzccqY0OEVRXYH0kgNS6UP/6NPdlZ9RDinls8KjU9DA
         4vzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        fh=o5X5Xp1D1Y3OI6jUQ7f4FDOE96QhSgvMFj4JzuFvM0U=;
        b=sNcPJD/P5nssXKNN+QzHj4HysHCyck1JEAtBN25OIGkkf8LtgE2lAKbjI6fr4KqqRt
         otl1VUkMv/eeyYlSxU1ycala1oHUd8HiIrWUT+mf4tjgxq30PmmNaN0gdPwUhYIWs3wt
         Ic0FbirZa80fgmHURQ2L4+X1bs0fNHBflapyPH3UNJLPvoDaAOMQnpeZ4bpSJKTdzQyw
         ZU0EXGRCJ9P0hQeA/bqHDS8EL0fDT+uLZin8G0T5HooSbSmiol9WREXYeUuJvUGiS+a1
         SHke+2SHdMm12/ZTGzwRjRnKbayxXCgPio5IEfgzG836UNGZqylvamyrugKbRIlKlRpS
         JXRw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790167245; x=1790772045; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        b=TbXwFkiryluEvIfUM1PvVRhthkcjJWHsmVFoMRTVWnIXg9XQ1sWpdkxhm7TNhFHoOE
         yxzL2WOXuzR8aINrapR/7sTBJrGC0xv7xAjuSbUw3v0OEJpNDcQNcUDGc29J8Aa715cx
         xXv5v1DZGdYN50pgqpyEYUNTTrdax+NCwGBNpH+bTxORJsu5Ij6VDGglS6W0YMYrpE0b
         swKulj3paZ70T2l+lo+dvTuM2rAOUGvFl4vo14j6lDEHkfNu+ZS5KM4aQpYqP1yi2Vxi
         DgrEP48lpS+/nMnWzDASSpmciqisXT75AYU11lTL+H8c4SmEd8YIqzOhmiExQNSxB03e
         Brtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790167245; x=1790772045;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yrBXUqSfBJNVOGA4p1L4WG725TYm+nXRxrzQgFuRPz4=;
        b=B0W032tH3gSwYOM+zY9AY+lNljGL78LYkxRkSgkLx4hkkBHNcBKmoTMZJUZn8xJ4F/
         /Q3fXK1cL7k9jp2JMZGE829gMlwzxh/gC7C8gEpEPUlmD8Yw9FScv0xIYf9bw5XOqGnI
         vxPz16MO6F4PpQ46nw2+tv5AZCUIIMllvGY2ZyD8DnRTYSOVMKz4NSRYe3upI6SAWQtB
         CgahJXsLNZRFV5rbOu4FZJLdHuEusRJDAaRMs0PaBKUKgr1z9t38STdbRfEAfiUU1Ln+
         4NiAOu5UfTo/CnhTXNXNbQncIw5Oe3lSGzxttAY+CeQOct6k1Eu1vkm8O+mUZJnr4uE5
         +xFw==
X-Forwarded-Encrypted: i=1; AKwUvBx2h4WV1Og+z/tPaW9tdT2+Y1fchDv1LmlJmnuams2oXPG+D2TIf/hGs8fVGWBabo7RXZL+uog7ty0=@lists.infradead.org
X-Gm-Message-State: AFuF++mQ/n0e7zAsXhBT3FBUtO+EmJVc1ytEz0l0MX0RVQkAKqhPnLB1
	CxJqZpKyLU5q2YF2LU8cP79QIJtIGqpgKQX/o09bV0c4sKZHjujd/sSkMU7Ip8VgyJ9gofTaZmA
	Bs7MG99BJXKM7h3K/WSqSD9jJmFd1MBs=
X-Gm-Gg: AYBFou14yqmNOpgIYeDsVxmqeqeYS8hiC7vuD6P/YDO+sut/ZTwyWiHj09xqjPl83n7
	Xy+dnONATC7gq9HIJWoJGJfKYga4KNFeg1Q4fRiB/82JqDdtN5DAYypnbNG6b/Qce/m3R6WLgcB
	HONFzZiyec5CcpLb9eV9PW+TAKXhMihpapFLBKpTNOwGiRWTXet4tpMko6LQ/Ww+/dQBogovbVQ
	opNJhzMMRkcQ0p8hQI/ieRPXMq6p0YO/Nxd29HAXaznl+w7VgDne5vNTGBu2+6BBQkNZd2kEu0A
	Y8XA2d5QPAxD4kYr7rzt7WkbHUWHKWs/ndDTwrvtTNZGLlpscm54JnbFKg==
X-Received: by 2002:a17:907:d91:b0:c25:5faf:b207 with SMTP id
 a640c23a62f3a-c2aadcf4484mr194861466b.3.1790167245181; Wed, 23 Sep 2026
 05:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922195006.79890f24@kernel.org>
In-Reply-To: <20260922195006.79890f24@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 23 Sep 2026 20:40:33 +0800
X-Gm-Features: AclHuK-io9PS85iIjo2RRKD7nlxq4FY18LSW8xzP9gnGJLLZJesN4MppzV2qPUE
Message-ID: <CALj3r0hH6m7jUEweKMWGmCW9aOxShaqsV0E+z4ztBhXbJ+378w@mail.gmail.com>
Subject: Re: [PATCH net-next v10 00/11] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_054047_317830_4C5A926D 
X-CRM114-Status: GOOD (  10.57  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgyM+aXpeWRqOS4
iSAxMDo1MOWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNCArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gUGxl
YXNlIHNsb3cgZG93biB3aXRoIHRoZSByZXBvc3RzLgo+IE5vdCBtb3JlIHRoYW4gMiBhIHdlZWss
IGFuZCBwbGVhc2Ugd2FpdCBmb3IgdGhlIEFJIHJldmlldyB0byBmaW5pc2gKPiBhbmQgYmUgcHVi
bGlzaGVkIGJlZm9yZSB5b3UgcmVwb3N0LgoKVW5kZXJzdG9vZCwgc29ycnkgZm9yIHRoZSBub2lz
ZS4gSSdsbCBrZWVwIHJlcG9zdHMgd2l0aGluIHRoZSBsaW1pdCBhbmQKd2FpdCBmb3IgdGhlIEFJ
IHJldmlldyB0byBiZSBwdWJsaXNoZWQgYmVmb3JlIHJlcG9zdGluZyBmcm9tIG5vdyBvbi4KCkNv
aWEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
