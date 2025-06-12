Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE1DC61CE8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jun 2025 10:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QESwN11GlI74Pul6sifIOGgUVAiXl80x263jMgGyxaY=; b=sk6mwFNQ6Tjbyn
	jFA7HWTj9Eh0dNaS5ReANxhufKS94YLSIUIbKVrMvs3IbdbavH0WyOo/6YntzOBUOy4ccNSrjPrWF
	dwdLJreysspfXA4qDOLYmrwTVSEJZApE3I629pPsKg3ofoQHfzVMzZqDPCi1Bk3HWMfj1Ev3vFUNQ
	xwSUnbB95v+AIPCpyFIgHucIwqN1HsmoVXUTAeONv8W17GMmeXEf1UhGkVk9Ew9H0kMqIxl4tjY7M
	6o1WIVdXALsIst+SUGtt2U0tuEKfzAaD5GsUiku/wr8OsDD+BnF6Y4CfCtuMM/eMGzVnnZNIRrQsK
	/mY7b6eG74NLbQ2jfvZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPepp-0000000CuqG-1far;
	Thu, 12 Jun 2025 10:07:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdeI-0000000CiSr-32bA
	for linux-phy@lists.infradead.org;
	Thu, 12 Jun 2025 08:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749718260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E6IteP7BP9moGyYHUNtJgLr0pJFVsqjJ7MguYFjZTR8=;
	b=FRTrvHG+MjgkEDet6S0VW13F1D2uWiPHr6bg8BafbTfSELsxoVz1RYcoc1Tl9XYKlKQVD1
	v3k3kbD+pnTLxMOBc9ImE4QZBAubBUuYNxrsakJA/QPNktdPCqPwgZ05Fo+PWCH6fak21M
	w4jb3IaaXLoWfqJEh4bVuFIr8Ky2ea4=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-6dw1gAboNbapjFRASyUaFQ-1; Thu, 12 Jun 2025 04:49:18 -0400
X-MC-Unique: 6dw1gAboNbapjFRASyUaFQ-1
X-Mimecast-MFC-AGG-ID: 6dw1gAboNbapjFRASyUaFQ_1749718157
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-735b8bd859eso207100a34.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Jun 2025 01:49:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749718157; x=1750322957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E6IteP7BP9moGyYHUNtJgLr0pJFVsqjJ7MguYFjZTR8=;
        b=jVRrwXIFzoUCSj0RporGMSOEhDrwtoGku4uyEPkUr87qSWKk2cZcc8ONzYs9eG0zr0
         EP0WtT8eD0LrHjKQElwYG5yG5izzvc37qxWDQs877iaVClNSfgjWYA25Fc0HIubITg9h
         /3f3aZD0R5ASufWg0JkUYeOl0/ExClX10Sy/NpMPLTxkMv0f5xagSNF0lCzg184tFVgv
         Orbuy4yZk0l0tM+w6OKYE+BbEwdaM2GhK6dCdZteYaDmjf3OwLZ3PvFM7McwOjRyDTEq
         uCtqdIo8x8Wk33wHj7x7dzLrx2JDMdCphpJi/HUvmaPgX68RuKlw+MbJLYErLVtz+NUL
         K6iA==
X-Forwarded-Encrypted: i=1; AJvYcCWikNqG0FqXSMe9Q9PwpOVyIc6s72h6Fjs3gOYpkJxRshrt105hMbXA5nlf5BrnCRCV/WKUTvMTahc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqpZA41X5ufMg6qVc6yvt7EIqXj0YFudFY6ThzIhAeynR8Bdik
	wHDce8jy0cgn9Gv+aSL8Di/EO3uKCEsU9rFFhLoIF50lf1LiTMo2lAwseh+/8gLDQs7taOpARFR
	pGEkHtzBVZ5lbVloW90RJsh5tj/q+ypVsDXcynjq+EX7UOwCsrju3Zzp+xDf/Le+horRWOEXGuG
	JKSaIDiq9T2i8EZuYoCRsqSKqMSoFjyara0AqEHGBCpg==
X-Gm-Gg: ASbGncsScnDwHk8zWr9UYuwt3MmrftKmXkkd3qmhY0krLm41RiD2fZGZBjk/uCWeTka
	LHJ1M31iXebzCl5eAQHmovJvPYjrLhfcYpnn53gHwvkYMe+j6/nP5zSpTNiceaVvNBdLg66hDvD
	wcJvk=
X-Received: by 2002:a05:6820:481a:b0:60f:880:6082 with SMTP id 006d021491bc7-610ef6f0f1fmr647781eaf.1.1749718157226;
        Thu, 12 Jun 2025 01:49:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwPFH5xCDRpuf1s5d5mJAfNQIldXb2TcD3mthjSOwkVxy4npvtOqbY5CzUVlMoXgCj/fxjsyNscrEZA/vemEI=
X-Received: by 2002:a05:6820:481a:b0:60f:880:6082 with SMTP id
 006d021491bc7-610ef6f0f1fmr647769eaf.1.1749718156873; Thu, 12 Jun 2025
 01:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250109121614.754466-1-s-vadapalli@ti.com> <20250109121614.754466-2-s-vadapalli@ti.com>
 <fccedc26-0bb9-4078-8a94-4199f6b383c1@kernel.org>
In-Reply-To: <fccedc26-0bb9-4078-8a94-4199f6b383c1@kernel.org>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Thu, 12 Jun 2025 10:48:20 +0200
X-Gm-Features: AX0GCFucWcc-KrL-D5Adt3auExiV1GTxSbUzP5wSIA--M9Ad_QrNh0O58OSRSGM
Message-ID: <CALE0LRsdsTU-NLN4fgh2c8qnS-pPP1BDJvjnvsSOnud8amk3=A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
To: Roger Quadros <rogerq@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org, kishon@kernel.org, 
	sjakhade@cadence.com, thomas.richard@bootlin.com, 
	christophe.jaillet@wanadoo.fr, u.kleine-koenig@baylibre.com, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, srk@ti.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uQ30lV2VUBW2XxBdXzam5sVUBk9iGo_vOWpSrWNVRbo_1749718157
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015102_832319_FD4F5483 
X-CRM114-Status: UNSURE (   8.77  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKT24gVGh1LCBKYW4gOSwgMjAyNSBhdCA1OjM14oCvUE0gUm9nZXIgUXVhZHJvcyA8
cm9nZXJxQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4KPgo+IE9uIDA5LzAxLzIwMjUgMTQ6MTYsIFNp
ZGRoYXJ0aCBWYWRhcGFsbGkgd3JvdGU6Cj4gPiBGcm9tOiBTd2FwbmlsIEpha2hhZGUgPHNqYWto
YWRlQGNhZGVuY2UuY29tPgo+ID4KPiA+IEFkZCByZWdpc3RlciBzZXF1ZW5jZXMgdG8gc3VwcG9y
dCBQQ0llIG11bHRpbGluayBjb25maWd1cmF0aW9uIGZvciAxMDBNSHoKPiA+IHJlZmVyZW5jZSBj
bG9jay4gTWF4aW11bSB0d28gUENJZSBsaW5rcyBhcmUgc3VwcG9ydGVkLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5jb20+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTaWRkaGFydGggVmFkYXBhbGxpIDxzLXZhZGFwYWxsaUB0aS5jb20+Cj4KPiBS
ZXZpZXdlZC1ieTogUm9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+Cj4KClRoZXNlIHBh
dGNoZXMgc2VlbSBnb29kIGFuZCBoYXZlIGJlZW4gcmV2aWV3ZWQgYnV0IGxvb2sgc3RhbGxlZCBo
ZXJlLgpUaGVyZSBpcyBhbnkgY2hhbmNlIHRvIHJlYmFzZSBpdCBvbiB0b3Agb2YgdGhlIG1haW5s
aW5lPwoKVGhhbmtzLAogICBFbnJpYwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
