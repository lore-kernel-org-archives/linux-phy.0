Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F1F9C32773
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IauUf0Spa7JWrfTN0CWfw2nfJbCiYZhUkBIa4Fx7Ic=; b=EMOZHP9Td2qWRI
	NtSA1LfeBDkN1G3DRuJfJJA22LRlo7YCgAq5umjw7iIZtTmgEwe8G3vsVQ4NYWEQ6qi61ySeV23jk
	XrzBIVTK09Yh+mFU3Y5Jke9AVOMVsGymHqcxChysOVpDjgqDxNGOTxfDSDHU7LERY5LNVSroRkvI7
	8q8ulXLaZSRCJ/YQQo44/k6ZxpqceDwDTZqfh2ACKTklUzMnOl3ne4adIeyQngC2GbVRI2aqENNEh
	EG4AdtsO0w2v7HouAFdmK5jhB4TBLVMSwndItSQyfzYlqiMsdWX6qShZpPSHbobBtXuZ64MhXuJr2
	W9wIz9ktRob+WuXFFD2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOkva-008Pfh-SY; Thu, 18 Aug 2022 19:11:39 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOkvY-008PeW-6A
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:11:37 +0000
Received: by mail-qv1-xf31.google.com with SMTP id d1so1914360qvs.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 12:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=vQ+wMNUUyM62PQcZ3cfsQhJSizHDV14WzncaejOXp/k=;
        b=iaATwjGuxNwb8WbMrrIWp+6tVJK8LPlvDTL1a19hjbpXAw+QyforsjimHjwpdTgbwu
         Iu81lywD9hDn65obB/PjUMeU9ImsiCE5kBLEAmgYodgc5wqRqX3RS1Nci/indqo4Rgxs
         S4BNcjL0peWMtgeLmglQjyaaZI/hi7eKJFUxqKh56fZHLReI8D3UH3M7LmUwBLTQ2xxE
         ejtymN1qc+Yfyq8mxR9hx6EGS2kjgRU5fe3MFRMjDmY0lebYCvJNRUJbTMGxJDryscpp
         Ybv2rAC5Qu4fc8EW37a+a5fCHBfIfssj+bu5qrPXdPoHq7qdJNWWoteAVPi6kjhA2WZ8
         DayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=vQ+wMNUUyM62PQcZ3cfsQhJSizHDV14WzncaejOXp/k=;
        b=lCRDvcchIAc1uT84aT0KvgE3LwMdfxEVkFOqF5+vRxcCI5+O+Lk/ClUDKm5gkjbeOB
         ZC1JFzIhaOK6Ac1ckMwe2/u7+lzwUYr4Xjh7ESERPksnGieKqKKvMy3YXEKFZWX5i34V
         JHifPibMLEM3RJ+M39r1pYcAzOZT/p2lRT2aECGUH/7DUmvNyg5kUfn2/GgY8iSUQoUk
         xb432iIXvlezhJg4GumYaChKEzM9W/0iOj4R1GTeQ5SgaFcgplbXrklrHLcoKQeJhHtR
         +RzVcVHD51s/52sNcF5kDhzdyLWvT8+5uFi7KJ32jS5b4lAAu7+H5rHZnA1DYQsdBscv
         p9Ew==
X-Gm-Message-State: ACgBeo1o7Edie+qOsj4l/vmafnYjyxJpKgsO+GOv5e2eHzT2DEIc2HlE
	Qg3Sym1/QxIo/+5+haR0HN8kdAFRcpOmBerCJKc=
X-Google-Smtp-Source: AA6agR6DgHQppr2QHoAw1TkFyFvxTa4iDpvfxYu+a264DfSMj+psNtafEvdIeaYlC7SUlmrZ7r4Qprpb/IftYJ9ady8=
X-Received: by 2002:a05:6214:e69:b0:476:b991:586f with SMTP id
 jz9-20020a0562140e6900b00476b991586fmr3697817qvb.48.1660849894713; Thu, 18
 Aug 2022 12:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220817200335.911-1-kabel@kernel.org> <20220817200335.911-2-kabel@kernel.org>
In-Reply-To: <20220817200335.911-2-kabel@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Aug 2022 22:10:58 +0300
Message-ID: <CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com>
Subject: Re: [PATCH linux-phy v2 1/4] string.h: Add str_has_proper_prefix()
To: =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Linux Phy <linux-phy@lists.infradead.org>, Kees Cook <keescook@chromium.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	josef.schlehofer@nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_121136_269273_CACBC00F 
X-CRM114-Status: UNSURE (   9.73  )
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

T24gV2VkLCBBdWcgMTcsIDIwMjIgYXQgMTE6MDYgUE0gTWFyZWsgQmVow7puIDxrYWJlbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEFkZCBzdHJfaGFzX3Byb3Blcl9wcmVmaXgoKSwgc2ltaWxhciB0
byBzdHJfaGFzX3ByZWZpeCgpLCBidXQgcmVxdWlyZXMKPiB0aGF0IHRoZSBwcmVmaXggaXMgcHJv
cGVyOiB0aGUgc3RyaW5nIGl0c2VsZiBtdXN0IGJlIGxvbmdlciB0aGFuIHRoZQo+IHByZWZpeC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KPiAtLS0K
PiBBbmR5LCBLZWVzLCBjb3VsZCB5b3UgYWNrIHRoaXMgaWYgaXQgaXMgb2s/CgpTZWVtcyB0byBt
ZSB0aGVyZSBhcmUgdG9vIG1hbnkgc3RybGVuKCk6cy4gT25lIGlzIGhpZGRlbiBpbiBzdHJuY21w
KCkuCgpCZXNpZGVzIG5vdCB0aGUgZ29vZCBuYW1pbmcgKHdoYXQgJ3Byb3BlcicgbWVhbnMpLCB0
aGUgZW50aXJlIGZ1bmN0aW9uCmlzIG5vdCBuZWVkZWQuIFlvdSBtYXkgc2ltcGx5IGNhbGwKCiAg
c3RyX2hhc19wcmVmaXgoKSAmJiBwW2xlbl0gIT0gJ1wwJzsKCkNvcnJlY3Q/CgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
