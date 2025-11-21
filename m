Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B17ACFA468
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 08:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOMo3zwE3bPgjHiOW9YZl0PPJgKAB6PHRvuefuZLk9U=; b=mDv8m86uddLtbf
	4FCwNmTkPzHygy3gBePTrsL1JHBT5sjJTpXZ6NGe+l0OXxdBmecoQf8EnNCQB/hQYpW1h2/rECD3Q
	yfI3ZNt7pkryygl7OW+GuyKBG690vu0Va8oxp8ifkLNJeuF0Sgf7ctYx5mvgbaapouk+f8bha9eNZ
	+qz7WSxkofB4TUdvWPUZtxO+gyXjYXjl0bweULRoxiMcM8sTcyDtylJeQoaeU4d90absqtxSX63dD
	SnTOpohnCXKaPHrJFU/gBxyBKVMZnOyPDhwACx8NtLa4rmI/Pvj0nKS4gN1LJR0RsRNklvWywzXLf
	1SHt4lWAMosWlxerAtMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMnG-000000085lq-3q1r;
	Fri, 21 Nov 2025 08:47:02 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMnD-000000085kr-3kwQ
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 08:47:01 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-34585428e33so1739896a91.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 00:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763714818; x=1764319618; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rw6P3vTkq9/VDf2BdRM52eT1wyytd0Ws0h+4Sg6bhM=;
        b=tX7YYGhDS5nRY6mU0gwehzkzr0wFaFwdG+wEzc3M0CPJ0OTRzQSg/ygB4VK6QIt2so
         HIMau39h96jAEQ6oZ4sjRfVw6thFU/9DH4sNz23/OwSPh7B/BmCDJvJLwU8UvPDYhpz2
         MHerwlgi9Xx5z+nm7iNILyCDn/Fk23s3PxdcLQWlq/GmVt8DC5yX7V02aP7MTp6AgLTy
         xA9EQnxRlWJhJ0Sb4PXrLyLX/mvti/PzUQkwksUhML3ZE8QQhVZ/4y9S3OS6XA6i5Js/
         rrYWUQA04HXIoDY7Js+5M3kQT+1baCc0anPpwfb9HzHcSDTiDt5TGdLFxSX6DvTlupWa
         op4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763714818; x=1764319618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9rw6P3vTkq9/VDf2BdRM52eT1wyytd0Ws0h+4Sg6bhM=;
        b=JGKmPJciEOmKebtOgB+6xCHH/IHLH8PlGu+7L9y+i7ydBL5AR054iVdaobPKY6XIgJ
         FPWtuzuRxymKWElNJR8Ncx/yCTvJb5lEQeeIb0g+E6C0GyssUrpr4rf81iXk9xQU1IQo
         T8ih5KldqAExJy76dQq7iiqvSa7vuQbn6GAaUX/AE6PcdLc+VXxqjulcTJQ37GTAEaVn
         s07AkGter3HtO/ZzQrug+So0ydWgupWHu1kL1YpttPhA5uwsRZYP0Tm7XgGi3xY36F+s
         Ta0UJl8C6ABsOTN2kXyI8/5IBWHnCiBnxtlei1+VDGI03hSMBaY76WgW6o1bykDsfQMb
         Jo8g==
X-Forwarded-Encrypted: i=1; AJvYcCVCn5qoy4MoCyoKW/mLWx2mQ8uJ6K5UiWTz9WlmAsI7hEtgwQ0vfS3K7f6r6jAcTDiBIYyFD8SL9M4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHwb07BaT8wTkcdN34PvsHed21Ph9pgPtvxBxAUEXZCK/UiLas
	J2AxXXR86tIV7Spctbxy3IAfsir17GhEF8XJu6qhI8EbVdbSfKOe1VG2FaZTuqXDkzxlgiUKMpT
	BJYZNnyY5DsNAZb+EGO2t74Hp/1HGdd2kcpK2WgF/
X-Gm-Gg: ASbGnct1rHbIi6cwGaW5W7X3bAv6/L+nzRoKrIzIyyYXp20LKf4dY0KLwfjEZpEDbOH
	J3HoOpX6KPtTETQEIxMhyACoBxN08Veu46QvyOCZoRpZfRnwGL0K9fASyueJQAYilzg5W+wjPLI
	SC0HPUb5RBefnzaBhVvD21N0+8geLORUQgxehaZ0tFda57EJRWHYJgCBeObCzEnTlY0J+ONa3EE
	aaCarTb7Asyf+eLKvWhqQ4UPlKnErHXGzMsOW6f0Sld5lPZyHcWLrsGUEcHy7n8EhD/Zsg=
X-Google-Smtp-Source: AGHT+IEGKK1JVapl4Bfkn+X1caSvW4BJYyhUwjXrKD36ojgbUTuY+cLlAhIn+4hGtsKsgQZA7TevAUxQK94FOcafFjQ=
X-Received: by 2002:a05:7022:ea46:10b0:119:e569:f26c with SMTP id
 a92af1059eb24-11c9d819c4amr549173c88.21.1763714817986; Fri, 21 Nov 2025
 00:46:57 -0800 (PST)
MIME-Version: 1.0
References: <20251120-phyb4-v6-0-b6694e1f0caf@google.com> <20251120-phyb4-v6-1-b6694e1f0caf@google.com>
 <20251121-attentive-demonic-jacamar-fc4afb@kuoka>
In-Reply-To: <20251121-attentive-demonic-jacamar-fc4afb@kuoka>
From: Roy Luo <royluo@google.com>
Date: Fri, 21 Nov 2025 16:46:21 +0800
X-Gm-Features: AWmQ_bmUVOlmJqcVyT_EtvB6gdvlOG5rtdefUR1SndkOE8ikDuOVfBKFFoK6hGc
Message-ID: <CA+zupgxskC2HMy_sLusDbb_L1t49frjLQW6isBfAKa6BgNvpNQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_004659_963616_5A6D37B6 
X-CRM114-Status: GOOD (  18.21  )
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

T24gRnJpLCBOb3YgMjEsIDIwMjUgYXQgNDoxNuKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIE5vdiAyMCwgMjAyNSBhdCAwNTozNjo0
MVBNICswMDAwLCBSb3kgTHVvIHdyb3RlOgo+Cj4gSSByZWFkIGxhc3QgZGlzY3Vzc2lvbiBhbmQg
cGF0Y2ggaXMgZmluZSwgZXhjZXB0IG9uZSBpc3N1ZSBpbiBleGFtcGxlIEkKPiBuZXZlciBub3Rp
Y2VkIGJlZm9yZSAoc2VlIGF0IHRoZSBlbmQpLCB3aGljaCBJIHdhbnQgdG8gZml4LiBBcG9sb2dp
ZXMKPiBmb3Igbm90IGJyaW5naW5nIGl0IHVwIGFueXRpbWUgZWFybGllciwgSSBtaXNzZWQgaXQu
IFdoaWxlIGF0IGl0IGFsc28KPiBvbmUgbW9yZSBuaXQuCj4KPiA+ICtkZXNjcmlwdGlvbjogfAo+
Cj4gbml0OiBkcm9wIHwsIGRvIG5vdCBuZWVkICd8JyB1bmxlc3MgeW91IG5lZWQgdG8gcHJlc2Vy
dmUgZm9ybWF0dGluZy4KPgo+ID4gKyAgRGVzY3JpYmVzIHRoZSBVU0IgUEhZIGludGVyZmFjZXMg
aW50ZWdyYXRlZCB3aXRoIHRoZSBEV0MzIFVTQiBjb250cm9sbGVyIG9uCj4gPiArICBHb29nbGUg
VGVuc29yIFNvQ3MsIHN0YXJ0aW5nIHdpdGggdGhlIEc1IGdlbmVyYXRpb24gKGxhZ3VuYSkuCj4g
PiArICBUd28gc3BlY2lmaWMgUEhZIElQcyBmcm9tIFN5bm9wc3lzIGFyZSBpbnRlZ3JhdGVkLCBp
bmNsdWRpbmcgZVVTQiAyLjAgUEhZIElQCj4gPiArICBhbmQgVVNCMy4yL0Rpc3BsYXlQb3J0IGNv
bWJvIFBIWSBJUC4KPgo+IC4uLgo+Cj4gPiA+ICsKPiA+ICthZGRpdGlvbmFsUHJvcGVydGllczog
ZmFsc2UKPiA+ICsKPiA+ICtleGFtcGxlczoKPiA+ICsgIC0gfAo+ID4gKyAgICBzb2Mgewo+ID4g
KyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gPiArICAgICAgICAjc2l6ZS1jZWxscyA9
IDwyPjsKPiA+ICsKPiA+ICsgICAgICAgIHVzYl9waHk6IHVzYl9waHlAYzQxMDAwMCB7Cj4KPiBu
b2RlIG5hbWU6IHVzYi1waHksIGJlY2F1c2UgdGhlcmUgYXJlIG5vIHVuZGVyc2NvcnMgdXNlZCBh
bnl3aGVyZSBpbgo+IHVwc3RyZWFtLiBXaGlsZSBhdCBpdCwgeW91IGNhbiBkcm9wIHRoZSBsYWJl
bCBhcyB3ZWxsLCBiZWNhdXNlIGl0IGlzIG5vdAo+IHVpc2VkLCBzbyBqdXN0IHVzYi1waHlALi4u
Li4gewo+Cj4gUGxlYXNlIHNlbmQgbmV3IHZlcnNpb24gd2l0aCB0aGVzZSB0d28gZml4ZWQgYW5k
Ogo+Cj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4K
Pgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3
LCBJIGFwcHJlY2lhdGUgaXQhCkFjayBvbiBib3RoIHBvaW50cyBhbmQgd2lsbCBzZW5kIG91dCBh
IG5ldyB2ZXJzaW9uLgoKUmVnYXJkcywKUm95IEx1bwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
