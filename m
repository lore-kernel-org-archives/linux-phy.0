Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 562EEC28B2E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K+Hss/U2I0V2pTj86rtvMND0f6fRvJFkDV1/z9xi/o=; b=HB+EBElG3vufGQ
	Mrec3fCsMLXxZqOba1OxpM8B29q8AXOQ0dlQ8N5F3lfDVrkC8YKhlk/yCDdHLbn9ORIZS65CfqcsH
	WjWU28kwl6VoGoE68dh9WRveKMhiDa4pubkEI343ftWF+p6tojOgF48v8JuoCEQ/VUFeg2Kqqjajb
	PgEuLHiK/Lo6YevdsSfmRK//Y0IoEIAssPQLHfleaCtIT5ZrPjToX8/CpgB/FnCaIv9znV5IVIFID
	FJuT50BbYtEZ4q7p40PL+hig1EYa4aEfZCxdHjKUno7i7uwum6VpZ2uPaAtBIomYn6KtSjSpanKCH
	dZTzvRA2lGz0atCGfUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trZuU-00000002AyM-0LIV;
	Mon, 10 Mar 2025 09:58:58 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trZkx-0000000290V-37lW
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 09:49:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1741600145;
	bh=KGzohucEibfvFwIp97ECwF+iQRBdnGsGxWwIsbPjQwg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jevzH2MBu7sVcyHublF35nP6u0fgGDvi9j2H5NpntXdLZzwg4QwoFtzlNTH98899z
	 uhXivfdZ3jPFi2Dn22psiisj82vNfeWILjGv1wztyqHPtU0yWqrPR/R6aDVdxEu+su
	 BNdkYiMfbrzu6U8gHY7AxCUSedw53BKgRHMArVdK2k8sVAsIYnfeV5kOyNU11PHwA+
	 HtZv9Q+Xik0GZ1HHzpRvU5LWcut03a74wdIF5VowQMQ01+l//3PbF2bdSFcA0IvMl0
	 FljKGIVuXEeLns03bAuzXRl58ZjmScKHujFC/7n/fBN0xJqxpHEhhD24X9JRZL4789
	 78pj0QiJj90eQ==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 8F5C26B8
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 18:49:05 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=Z4jeYE00;
	dkim-atps=neutral
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 2B1C36B8
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 18:49:03 +0900 (JST)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2254e500a73so22903965ad.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 02:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1741600143; x=1742204943; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cMplhkU7/xNaLivbH/tAX85wd7GEF5imHf27QWWTOFA=;
        b=Z4jeYE00MJvX6VvC+5o28iIyCjpYDnhhQMOPq8qxC2Z3cTrIr4I/5QmBb0clurc03V
         Wn5g6nbk6kLvsPDlUo/n/WRt5o4FebhcSqMnZknhA8Hz97cfMc245+2cYbkY/kBFYAoX
         EVS9G3Q+YaSp/b8qELUrp8dhJ90ahRrGKfzy7h3QeUak1l+4Ale64phZIiZgZwZ6uYnk
         o7JAyg4lphzruOkz8GtNwbXz9OrHWbYYYQzGQeVFBD05pby9KxM0/wIZutGD+3lEU55L
         xL17mzeaUxCo9PZa5BazKfzzJDsjcudFUgSfg87fpIvI9wbdSxQoRQhclkLHmgSqVVGg
         sKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741600143; x=1742204943;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cMplhkU7/xNaLivbH/tAX85wd7GEF5imHf27QWWTOFA=;
        b=Ml8KijSTLW1c7RhRJQm8SYn0IPO2cGcbgp5ii1TQkoRSAQ3Ey0waKjsuqX0sBVjoGP
         xWwfjvFezZcvWIzc1vNQ0PvoGK3dYLZzpkGaTsV8ny/kWQgL6M6M5D7VgEez/fAewscM
         rULqdEWRD1oJepp2t9s5sjVGP96R+ZpSwQaIF0RQoeNom4ykDJHiL+OOOU8bnNm+X0yM
         lqVrbm5RgYYzGUHoW6+48wcWZ9CEJJwtojaUFuo+qIgI6Y1H4N/KpgOVQAvuHHyAemIO
         AzCFuAibigReEXvWJWBf/IzfdOpm+5dZXjkye5A86f9uEB8yNp1hMLd5mGnKtrRL0GAh
         JNig==
X-Forwarded-Encrypted: i=1; AJvYcCXEHgKDneOrGVE9liHdxaA4eU2L9/vR/LQppLXwAS8Z09ab7FllxrnTeZ5PQNyPvhDZ/RtgsfyTrn0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBf/o3FWrvY4N7xGD4rnKOdW0nd//dwrJJaMg+fOwuhiBkG0++
	D4TZUKgiv0U05XSEwL+GQk61AqRo8qcNh849KFUxIkacM661ZJWXyb/u1hcz+1ZK2fxNUegVtU6
	U1ohCc856TAJUFKRc1X3cbZ7W7AetpO4/AGQWC7/7kAjsLuKPl3YsHe+ThCgZ0Wa2
X-Gm-Gg: ASbGnctTFz8+wLDpjempPhhryRsTx2L8gGWZ26sELcKpYrd5ReuhYa6eZI00LaUmTOM
	8ccvaogybWArE02bypV8YUTePPLMR/sVLEUc+38nE+qUXZWdszBQ4S4sLWc5DJ5B2fSZguCc8vA
	JDGUom0Oj8bxjvy/njKVy22QVoQvgXB8wN2AF48PQnuVfoQ80MZ4u1ZLYNUazxDdHTi/wJVbRVS
	BNhsnKlaaDVvOlG8K3pt2ROr3WLj8wBIic4E2VAJsFvvqpQk4H29ErPxEt+064WJ9fGtNkYwagl
	bxcMEAxfyjUaHgAiHUfQ1pvNrPW1a93yPDi4vtarAv58fK+QxjtajlWkutS2CWoQtUmDJ/58T/o
	=
X-Received: by 2002:a17:902:ecc1:b0:21a:8300:b9ce with SMTP id d9443c01a7336-22428bf713dmr204108795ad.49.1741600142940;
        Mon, 10 Mar 2025 02:49:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzmx6Y1Fxp6z5swFdmpzUwVPgfshZGQMemlhj3ID1HbhozKrpzs4J3HbD5rqkDcthfR80x+w==
X-Received: by 2002:a17:902:ecc1:b0:21a:8300:b9ce with SMTP id d9443c01a7336-22428bf713dmr204108565ad.49.1741600142612;
        Mon, 10 Mar 2025 02:49:02 -0700 (PDT)
Received: from localhost (162.198.187.35.bc.googleusercontent.com. [35.187.198.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a7f747sm73205405ad.127.2025.03.10.02.49.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Mar 2025 02:49:02 -0700 (PDT)
Date: Mon, 10 Mar 2025 18:48:50 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Adam Ford <aford173@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
Message-ID: <Z861gsaGY6bGSisf@atmark-techno.com>
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_024907_906078_DBAD79DD 
X-CRM114-Status: GOOD (  23.80  )
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

VXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGUgb24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMTA6MTQ6MjNB
TSArMDEwMDoKPiA+IGZvciA4My41bUh6LCB0aGUgaW50ZWdlciBkaXZpZGVyIGdlbmVyYXRlcyA4
My4ybUh6ICgtMC4zNiUpLCBidXQgdGhlCj4gPiBuZXh0IExVVCB2YWx1ZSAoODIuNW1IeikgaXMg
MS4yJSBvZmYgd2hpY2ggaW5jb3JyZWN0bHkgcmVqZWN0cyBtb2Rlcwo+ID4gcmVxdWlyaW5nIHRo
aXMgZnJlcXVlbmN5Lgo+IAo+IElzIHRoZSB1bml0IGhlcmUgTUh6IG9yIG1Iej8gSSBzdXNwZWN0
IHRoZSBmb3JtZXI/CgpFcnIsIHllcyBNSHo7IEkgd2FzIHN0aWxsIGhhbGYgYXNsZWVwIHdoZW4g
SSBhZGRlZCB0aGF0IGV4YW1wbGUgdG8gdGhlCmNvbW1pdCBtZXNzYWdlLi4KCj4gV2l0aG91dCBo
YXZpbmcgbG9va2VkIGluIGRldGFpbCwgSSB0aGluayBpdCB3b3VsZCBiZSBuaWNlIHRvIHJlZHVj
ZSBjb2RlCj4gZHVwbGljYXRpb24gYmV0d2VlbiBwaHlfY2xrX3JvdW5kX3JhdGUoKSBhbmQgcGh5
X2Nsa19zZXRfcmF0ZSgpLiBUaGUKPiBmb3JtZXIgaGFzCj4gCj4gCWlmIChyYXRlID4gMjk3MDAw
MDAwIHx8IHJhdGUgPCAyMjI1MDAwMCkKPiAJCXJldHVybiAtRUlOVkFMOwo+IAo+IHdoaWNoIHNl
ZW1zIHRvIGJlIGxhY2tpbmcgZnJvbSB0aGUgbGF0dGVyIHNvIEkgc3VzcGVjdCB0aGVyZSBhcmUg
bW9yZQo+IGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIHR3byBmdW5jdGlvbnMgdGhhbiBmaXhlZCBo
ZXJlPwoKRm9yIHRoaXMgcGFydGljdWxhciByYXRlIGNoZWNrLCBJIGJlbGlldmUgdGhhdCBpZiBw
aHlfY2xrX3JvdW5kX3JhdGUoKQpyZWplY3RlZCB0aGUgZnJlcXVlbmN5IHRoZW4gcGh5X2Nsa19z
ZXRfcmF0ZSgpIGNhbm5vdCBiZSBjYWxsZWQgYXQgYWxsCndpdGggdGhlIHNhaWQgdmFsdWUgKGF0
IGxlYXN0IG9uIHRoaXMgcGFydGljdWxhciBzZXR1cCBnb2luZyB0aHJvdWdoIHRoZQppbXg4bXAt
aGRtaS10eCBicmlkZ2UgdmFsaWRhdGluZyBmcmVxdWVuY2llcyBmaXJzdCBiZWZvcmUgYWxsb3dp
bmcKbW9kZXMpLCBub3QgdGhhdCBpdCdkIGh1cnQgdG8gcmVjaGVjay4KCgpJbiBnZW5lcmFsIHRo
b3VnaCBJIGFncmVlIHRoZXNlIGFyZSBkb2luZyBwcmV0dHkgbXVjaCB0aGUgc2FtZSB0aGluZywK
d2l0aCBjbGtfcm91bmRfcmF0ZSgpIHRocm93aW5nIGF3YXkgdGhlIHBtcyB2YWx1ZXMgYW5kIHRo
ZXJlJ3MgbW9yZQpkdXBsaWNhdGlvbiB0aGFuIGlkZWFsLi4uClVuZm9ydHVuYXRlbHkgdGhlIGNv
ZGUgdGhhdCBjb21wdXRlcyByZWdpc3RlcnMgZm9yIHRoZSBpbnRlZ2VyIGRpdmlkZXIKZG9lcyBp
dCBpbiBhIGdsb2JhbCB2YXJpYWJsZSBzbyBqdXN0IGNvbXB1dGluZyBldmVyeXRoaW5nIGluCnJv
dW5kX3JhdGUoKSB3b3VsZCBmb3JnZXQgd2hhdCBsYXN0IHNldHRpbmcgd2FzIGFjdHVhbGx5IGFw
cGxpZWQgYW5kCmJyZWFrIGUuZy4gcmVzdW1lLCBidXQgeWVzIHRoYXQncyBqdXN0IHJlZmFjdG9y
aW5nIHRoYXQgc2hvdWxkIGJlIGRvbmUuCgpXaGlsZSB3ZSdyZSBoZXJlIEkgYWxzbyBoYXZlIG5v
IGlkZWEgd2hhdCByZWNhbGNfcmF0ZSgpIGlzIHN1cHBvc2VkIHRvCmRvIGJ1dCB0aGF0ICdyZXR1
cm4gNzQyNTAwMDA7JyBpcyBkZWZpbml0ZWx5IG9kZCwgYW5kIEknbSBzdXJlIHRoZXJlIGFyZQpv
dGhlciBpbXByb3ZlbWVudHMgdGhhdCBjb3VsZCBiZSBtYWRlIGF0IHRoZSBlZGdlcy4KCgpUaGF0
J3MgcXVpdGUgcnVkZSBvZiBtZSBnaXZlbiBJIGp1c3Qgc2VudCB0aGUgcGF0Y2gsIGJ1dCB3ZSBw
cm9iYWJseQp3b24ndCBoYXZlIHRpbWUgdG8gcmV3b3JrIHRoaXMgdW50aWwgbWlkLWFwcmlsIGFm
dGVyIHNvbWUgdXJnZW50IHdvcmsKZW5kcyAodGhpcyBoYXMgYWN0dWFsbHkgYmVlbiB3YWl0aW5n
IGZvciB0ZXN0aW5nIGZvciAzIG1vbnRocwphbHJlYWR5Li4uKQpJZiB0aGlzIGRvZXNuJ3QgYm90
aGVyIGFueW9uZSBlbHNlIHdlIGNhbiB3YWl0IGZvciBhIHYyIHRoZW4sIGJ1dApvdGhlcndpc2Ug
aXQgbWlnaHQgYmUgd29ydGggY29uc2lkZXJpbmcgZ2V0dGluZyBhcyBpcyB1bnRpbCByZWZhY3Rv
cmluZwpoYXBwZW5zIChhbmQgSSBwaW5reSBwcm9taXNlIEknbGwgZmluZCB0aW1lIGJlZm9yZSB0
aGlzIHN1bW1lciAtLSBJIGNhbgpzZW5kIGEgdjIgd2l0aCBjb21taXQgbWVzc2FnZSBmaXhlZCB1
cCBhcyBGcmllZGVyIHN1Z2dlc3RlZCBpZiB0aGlzIGlzCmFjY2VwdGFibGUgdG8geW91KQoKCgpU
aGFua3MgZm9yIHRoZSBxdWljayBmZWVkYmFjayBlaXRoZXIgd2F5LCBhbmQgc29ycnkgZm9yIHRo
ZSBsb25nIGRlbGF5LgotLSAKRG9taW5pcXVlCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
