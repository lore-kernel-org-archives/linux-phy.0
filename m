Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6EA0FCC062
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 19:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfChhxIdcDe3l3EV/Ke+N8+cELy91YSxQfTtNpeXUIQ=; b=YfuRCQ5GbKATYD
	RByGb2bLb/bR6iThqeh7ic2jpEWd+gPmBNSEaQhW9T//zDHENPTbWGqi8TvK3gQw5c9zGMIVgBmTI
	/GC9zy+H0MGUpNNjzJllWnYMhjvWGFzDg6iUBkUmSTM+je0VBDaZvdin2+pB/ChhWQnCv4j+AW+Er
	l1uS1gRq/wVlWechbn7AcCruHV6JOOj9U36xo9Q74dpmQvv0IzfwAKi3GzFxY4hAIaS1UfMipmdZO
	GrwkKFHb8ebiz8NvCxh+dGTztCKBXHzpVmnDruBAws0o5spVbnHvjh+EC49gmI/KU8+Fcy6t46qNf
	mf30YaJqiTqm9wOF8FNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyayD-00000004POm-1UyZ;
	Fri, 06 Mar 2026 19:36:21 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyayA-00000004PNr-2lBf
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 19:36:19 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b936331786dso1048933966b.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 11:36:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772825777; cv=none;
        d=google.com; s=arc-20240605;
        b=W3q8+PYF4/mkfx63bqEM2xwY1arNWmqSep6jBZqC7dVwYH85IMIijcjXQbuP+MUogj
         Wowk+opwNo96tUUZuzZ/aWCiy+MX/Z2fFADk+sonwkcXKkYBZSrdyWbrMP+CoghXQV64
         hVM70pXgOWFY4Zn1MIdjgyiW0eWOO3Ubva2pTF+5rBqIJvRP+icicHR9OGd8uEHpDkIh
         kjmNkYb75+CLqoi9KhYjciEpCAu06pjeZABRcObIRG0buFROx7oNmbZughNToTLVQgvc
         mYKfuBLi+9tDPjXX59K7uzN+zmpPwvR0BuRSY4o0uf62VF3o9g8aLpfHO8pkGySCp+Zk
         REfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/oFep3QUMArP/Mg+XO3iZqRWYbfwWlvGA+rkFHJ1kfo=;
        fh=3sOKRAITY+5QfDv3P/DDIoD3Rw7nVG3IjB2Y2XgQlEw=;
        b=IabEglrfbY3oLu9dzWwRV4gS10eGN1AB2rz9vYcIVNjqz4xNpmWdOtIwKddFXNKvH2
         bEpEn/VDmySfjdlFls3y27qJy1D3AsIm6EhDW8Bq6OT2XLFjN8D3KhZHBry5oi27sy4h
         S1NooMpDFb1o1FkA41Fjzfv9LMpTxfKTHCTH6gnljvmF5KMn4rpJ+pQeCwFCMIVsEDnj
         Y1MkKXsYma6HhQfSxGuzB4URK/JjqP3zKAU4i73QS4VQQAqTpFRmGoWAi62DLCmjbEhB
         /AJsRsr1yvgEJrAG5V1gUwYCAI3/9p/V+gleRKrOex3XRzm3nb5f9M0gfn50aNFAlMJo
         THqA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772825777; x=1773430577; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/oFep3QUMArP/Mg+XO3iZqRWYbfwWlvGA+rkFHJ1kfo=;
        b=MYy5KFbprOtZDhbed9EyTsMOegDe+wKMmkltZCDMd8QT4JGrrdGzXSKoLMkKGTRwgz
         ZMwlXfgRsCGeeaX3OLLI9U5LAJyvj9h6xzgve4s2j5x7K0gUbLnM5g6J1lrYI7fZ0lfR
         SZbl72PGMaxpWQL12cre57naA5d59MRhUftzaYiltTJAuNNUXZ7u0R89KJpYkpnU7d1K
         wsiyUbVl2ty8qkKWSTbnkrCa91x9zkL4s+SWLbVD0YYP2vDbQ5V4t93hFJfaWZGmL3pK
         ynDS/M5TqJH9uhSEhXYeWpRgUCIELOhSZ9FaPbTHVfDuS1vEsqIEbElrshnKUJ5j+iXH
         QBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772825777; x=1773430577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/oFep3QUMArP/Mg+XO3iZqRWYbfwWlvGA+rkFHJ1kfo=;
        b=mT6w/WQ5tH08BlUgvJIinahFzOBnazBZVl4xZulZwAr4oSLcR7IlQ1NKonVlqP8iGc
         Z2NxpA75qT3ancsMeD0EGo525m5rcuvcenkseDfoaoMd/s4/V6K1lGmPBn8/IVw7UnY1
         xdp6KEXQgAUdC0iU15l6Y66VOZIFMa2jH0bVncLeX7PHkP5ydUS8tJWHPEl3f/Xwm2QC
         1KzSp2ipCPAfFQ+fupkgCHl7cJxNjD5ESHB8y7Pgg8ekeJF8fLoLKTOintNbkjufb4tQ
         f9KaD7IdBv1FiGgG5iOgfevwcaRjgaJQ+2vp8fjYxDn6L2kaXlPNs/MFON4Fe9xtaIii
         VVHQ==
X-Gm-Message-State: AOJu0Yw2Pbe3Uc30Xk63oT6eGveKEivjhnpLLDZPIn9JMgyYB1Oa5R2s
	/YrYUDh0mjFmFev6c8M9ovb8j0G39/CvkExZOIKmsIBwN22usxlJEstpfCsMSz3l1btxIulf+00
	kMqydXa56JaujuKXh2aV8Kwxqwexm9Wk=
X-Gm-Gg: ATEYQzzSbUhKuFRxgD21zqBG37G+7MQZakBduTpNBzDC5ONsMTHiMMpXORXDx/GDaDY
	RaJ7cS8UsTYGYRuGtPdyhxXXTjSKCEwJrrL0k3QtYqrbBBSEvhAA3wRfFq7mE8lA6m0xIc01Bad
	aY7TaCBvoeqD3A8yG6TwJZGZYVkTpOZffQlYcZ4cT0k2H/S47JynDpmr7twXZgBL/mnKrZOfbgh
	R40/gsl4NBjJFNMTrKr+NDNv75rk4wxz/R/FnXITD8AMeEOW24KRy953eais0E+uWXCR7/nSTtw
	fPtM2SqchMk3Incj1gpYn5yifeC1NVgmTPB7ynKyZ8XFX3K+ZHuBBy35IUR0EJHZQIF9U6aafEn
	+7FZR4A==
X-Received: by 2002:a17:906:9f89:b0:b8d:bf38:7025 with SMTP id
 a640c23a62f3a-b942dcec7dbmr224391366b.16.1772825776547; Fri, 06 Mar 2026
 11:36:16 -0800 (PST)
MIME-Version: 1.0
References: <20260304232848.469446-1-rosenp@gmail.com> <72e8b51c-4dcc-4c42-9e26-8ad8f9299c76@embeddedor.com>
In-Reply-To: <72e8b51c-4dcc-4c42-9e26-8ad8f9299c76@embeddedor.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 6 Mar 2026 11:36:05 -0800
X-Gm-Features: AaiRm52MbBKFLewPkU2F6yezblScaa4YRJUtrHXt3-c7p3yL5wyd8k_-nrQOniE
Message-ID: <CAKxU2N-+hE8BZ=cf3VF0Kkac8G9KWrmvQaCnWfcVSzv3MCm7CQ@mail.gmail.com>
Subject: Re: [PATCH] phy: miphy28lp: kzalloc + kcalloc to single kzalloc
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: linux-phy@lists.infradead.org, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	"moderated list:ARM/STI ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL HARDENING (not covered by other areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_113618_713610_C43DB3DF 
X-CRM114-Status: GOOD (  15.78  )
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

T24gRnJpLCBNYXIgNiwgMjAyNiBhdCAxMToyOOKAr0FNIEd1c3Rhdm8gQS4gUi4gU2lsdmEKPGd1
c3Rhdm9AZW1iZWRkZWRvci5jb20+IHdyb3RlOgo+Cj4KPgo+IE9uIDMvNS8yNiAwODoyOCwgUm9z
ZW4gUGVuZXYgd3JvdGU6Cj4gPiBVc2UgZmxleCBhcnJheSB0byBzaW1wbGlmeSBhbGxvY2F0aW9u
Lgo+ID4KPiA+IEFsbG93cyB1c2luZyBfX2NvdW50ZWRfYnkgZm9yIGV4dHJhIHJ1bnRpbWUgYW5h
bHlzaXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5j
b20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9waHkvc3QvcGh5LW1pcGh5MjhscC5jIHwgMTIgKysr
KystLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3N0L3BoeS1taXBoeTI4bHAu
YyBiL2RyaXZlcnMvcGh5L3N0L3BoeS1taXBoeTI4bHAuYwo+ID4gaW5kZXggNDNjZWY4OWFmNTVl
Li5mZDkzMWVkZTcxNjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9zdC9waHktbWlwaHky
OGxwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3N0L3BoeS1taXBoeTI4bHAuYwo+ID4gQEAgLTIy
NCw4ICsyMjQsOCBAQCBzdHJ1Y3QgbWlwaHkyOGxwX2RldiB7Cj4gPiAgICAgICBzdHJ1Y3QgZGV2
aWNlICpkZXY7Cj4gPiAgICAgICBzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4gPiAgICAgICBzdHJ1
Y3QgbXV0ZXggbWlwaHlfbXV0ZXg7Cj4gPiAtICAgICBzdHJ1Y3QgbWlwaHkyOGxwX3BoeSAqKnBo
eXM7Cj4gPiAgICAgICBpbnQgbnBoeXM7Cj4gPiArICAgICBzdHJ1Y3QgbWlwaHkyOGxwX3BoeSAq
cGh5c1tdIF9fY291bnRlZF9ieShucGh5cyk7Cj4gPiAgIH07Cj4gPgo+ID4gICBlbnVtIG1pcGh5
X3NhdGFfZ2VuIHsgU0FUQV9HRU4xLCBTQVRBX0dFTjIsIFNBVEFfR0VOMyB9Owo+ID4gQEAgLTEx
NjgsMTYgKzExNjgsMTQgQEAgc3RhdGljIGludCBtaXBoeTI4bHBfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIHN0cnVjdCBwaHlfcHJvdmlkZXIgKnByb3ZpZGVy
Owo+ID4gICAgICAgc3RydWN0IHBoeSAqcGh5Owo+ID4gICAgICAgaW50IHJldCwgcG9ydCA9IDA7
Cj4gPiArICAgICBzaXplX3QgbnBoeXM7Cj4gPgo+ID4gLSAgICAgbWlwaHlfZGV2ID0gZGV2bV9r
emFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqbWlwaHlfZGV2KSwgR0ZQX0tFUk5FTCk7Cj4gPiAr
ICAgICBucGh5cyA9IG9mX2dldF9jaGlsZF9jb3VudChucCk7Cj4gPiArICAgICBtaXBoeV9kZXYg
PSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc3RydWN0X3NpemUod2lwaHlfZGV2LCBwaHlzLCBu
cGh5cykgLFRHRlBfS0VSTkVMKTsKPgo+IFRoaXMgaXMgYmFkLi4uIGl0IGxvb2tzIGxpa2UgeW91
IGRpZG4ndCBidWlsZCBhbnkgb2YgdGhlc2UgcGF0Y2hlcy4KTWlzc2luZyBDT01QSUxFX1RFU1Qg
b24gdGhpcyBkcml2ZXIuIFdpbGwgZml4Lgo+Cj4gLUd1c3Rhdm8KPgo+ID4gICAgICAgaWYgKCFt
aXBoeV9kZXYpCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4KPiA+IC0gICAg
IG1pcGh5X2Rldi0+bnBoeXMgPSBvZl9nZXRfY2hpbGRfY291bnQobnApOwo+ID4gLSAgICAgbWlw
aHlfZGV2LT5waHlzID0gZGV2bV9rY2FsbG9jKCZwZGV2LT5kZXYsIG1pcGh5X2Rldi0+bnBoeXMs
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKCptaXBoeV9k
ZXYtPnBoeXMpLCBHRlBfS0VSTkVMKTsKPiA+IC0gICAgIGlmICghbWlwaHlfZGV2LT5waHlzKQo+
ID4gLSAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ICsgICAgIG1pcGh5X2Rldi0+bnBo
eXMgPSBucGh5czsKPiA+Cj4gPiAgICAgICBtaXBoeV9kZXYtPnJlZ21hcCA9IHN5c2Nvbl9yZWdt
YXBfbG9va3VwX2J5X3BoYW5kbGUobnAsICJzdCxzeXNjZmciKTsKPiA+ICAgICAgIGlmIChJU19F
UlIobWlwaHlfZGV2LT5yZWdtYXApKSB7Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
