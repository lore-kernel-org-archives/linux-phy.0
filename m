Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0256DC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 21:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+oVKNCL/w22u1RcHzhB+CFZTEDjzAdQZEZCAjNELLU=; b=lfV2M/MhyUZASi
	0rjCkTcol/58U3wBmr4Jw1qhEVbyhtTOZ68zGCzA39wGZw4ZKqtRvJdXqs4Bu2xc4IekHmF1VQK4+
	cQqvlMndfdQ6myHs7KJNXVPmpylAscplMKX3VuOV4mYprax8BNG6ut8tgD5Ak7ekigELpH77zCVmw
	/iJ+A9DTOBnuxY4mu1h8nPdsjovmcCWpgP8s2xXW2H3za8bp58yTgYWM/J2nk7n5HEN3dD+xB9p4N
	yq3CGuULCbW2TGbykZfFd0sYzSVftfNbEBCJYOYp/BP5Jp3wP5Z1u7kdvt76+KKgT1Px6mBTlVp/P
	a0bw6hpCmIA7HH6V78QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7Ke-0000000FygL-2G9I;
	Wed, 15 Jul 2026 21:39:56 +0000
Received: from mail-ej2-x01.google.com ([2a00:1450:4864:34::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7Kc-0000000FyfC-0SuA
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 21:39:55 +0000
Received: by mail-ej2-x01.google.com with SMTP id a640c23a62f3a-c00c21c58b2so91720266b.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 14:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784151591; cv=none;
        d=google.com; s=arc-20260327;
        b=gtTFamcDP4ljTzzdPXYve4uEzwMeoKjJciEVRYISVQdbtzdOe37qtPf13D7m9tIp5B
         dwlWFipaIJTXCxqdDS54mwp1pR7yFd7eu6XjIR685W3ePFrt76qtpXLgYxVQ6vSSPEOX
         GB+XfRjRaT4zKDpy193E93+02Ow7zrmXWmmLX9xoleNngHyazkuktpmsDP6ghyp8cetj
         NsS0xvIgWSk3/+wd4W9tqdwqOawu/p5Tw3rrZbYhhO8cbHOt+S3DBSCpVPu2qHexVgnB
         vfWPONf1xtVlXzqDWqgTSbNeiGCLiZ/Pcylr7UYJlqJT1X4VgKiD9uA/E4wE8aQY4hFd
         r2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        fh=WcZIfJ9IYgNM3X4Zuge1W+a91SCYfYgHpkf8l+TqORs=;
        b=oYXCgh9ehKmhCE/C39jWbN9n+XPwE7drrmWlDpHYDIVyTqHlSRZAgMPINVmXqFJpoP
         7alyBwTgZ+RvCek8EEveyVumc7YA9/yGQs/VCKSHdO9iJnHRSclx0ZU0iEW+aSX3Uw4h
         ruoKmIIus2PSPJ5lPZ4pUDbApwFOfO8n+FElsv49roYUWjF2LLcJpI3eU+EkPehD0+kO
         gnWD/Fy7i8qazkoXPH1kVPLTjrySZlHFGS4d6VtgXba+3dHp69og+5UfSsA6CC3Zh9Ap
         Un1iSTR1uIBeomjeCWfOjVq/X7xCljmQTAqUvVhazxAoM4a6gGitVS2k9lEhsROSB30K
         /xHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784151591; x=1784756391; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        b=Qbb2wcu0wpSDe3PMbhBCdqjSwEm1uPQyojZ1zwN1nDDjCrIHXMVQlsnu+94FAVhyyN
         eJoHJQ05npG/KZmLkPANJk5AuN5A59uYCdxPD8JXw2WckpmcEp86dw0EPk9eg8kKCLPH
         DgYr3IuNXMJviWYd8njoEjg1Iak6GWfnI4nNZfaHowaCkYBa0xT5LJYcVnIsNWZJZqKw
         tyXraQwvXYJurvAN4qcfdCDDWbJgugtar8Jj26WI1O8eTGh5L6gaLMlzK09e77IZZEc8
         UVrw5CMC5XhAeIe178xQXeTVlidLOnwTNZCOMvFwWssdpGVutIpU2ThUSVng8eL8dIm5
         aw/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784151591; x=1784756391;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        b=Bd0Ryf7S7DIO9nEF9Pu5vRI9uK4Y3i4vhP5yFdx6gtVI09cl+ueqdYoz/mt4LM4DU+
         HZy3igDthx9w/lVtgSy7uYIhvl41AmoOeflRfjPG3zTZHj4gLTG7QsI+61u6Qfdbe31k
         oH2zMAKFsMoWeMnb8nprHGOuwpEWAix6eFM26NwLq1L+ynAtHA4jLsECC0FinCHZnE+q
         SXJmafRC5N0zmQsiKqXHi+3Xzrqfa4sEQIeFMAHTErRSkbwQJdiu/M/FpSSWyh/64Wp3
         QRcfvg1s0CxiRjSpzE+/kFYNNqk5xYNFn/p2qdS40weDS059PeI3zAdeM6LHkVHFsyGN
         611w==
X-Forwarded-Encrypted: i=1; AHgh+RpyNo/cW1UY+dxOS/Mq7fzHvL17IjiQNx8tfNzjd42qqTqRTsA9+CO+qxYieF1MmdOzjaAsoNs++wE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcTWfwU+ZN4KFbjx6TJ20IgXFYaMin8s7zv5lSYEcA9rPO5AIE
	+LEEtZjGjgK1Drkmizip1swkHW54YK4l162XWUXYBoFcz52+lmy6n27jPBC735M7P5dEBDvvBt+
	JA293iQhVyO21cXmRiZtdcJ4xm2nypzQ=
X-Gm-Gg: AfdE7cmIAtvoJWZiJGuFZRo6biiwIZEPEhEblVsVgKmoSsWyd2nXseb5J8GfKXNoBlk
	xNneLgVM1mDNWgDihKWnp+DLa0LExRZ6nrUJ/aSvaL3UnkYFCu9ctvxU+iWi+FzioEe6ZPBp8B6
	nrYyxgTtHQJ+Y6WgbuPvKzFhHt2W8LubMVZ/PQL9/Ge8w08OpI3ahFgNVyYCOSHO+KIoGqROXPq
	l7N+fQZlCkZ1iETIAtVRlPN//mK/iEaoCgEgc2aGdBrf0rXXKR3z8fNj63jh0LE
X-Received: by 2002:a17:907:c317:b0:c12:68f5:e083 with SMTP id
 a640c23a62f3a-c16794fbce8mr296353766b.64.1784151591115; Wed, 15 Jul 2026
 14:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com> <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
 <685d91a3-be6f-42c6-9e23-07629e21bcee@lunn.ch>
In-Reply-To: <685d91a3-be6f-42c6-9e23-07629e21bcee@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 05:39:39 +0800
X-Gm-Features: AUfX_myJ66lYjr_Qz6cecGRXkAPSo59po4VpMAdHmLlPvDjxBLGd-D-lw51lYoE
Message-ID: <CALj3r0hrKt7T6_aZJ_cOJ=akPgShsau6-whcrrWekJE6H-z05w@mail.gmail.com>
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	Christian Marangi <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_143954_151109_A4B2C701 
X-CRM114-Status: GOOD (  12.19  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDAz
OjU35YaZ6YGT77yaCj4KPiA+IEkgYWN0dWFsbHkgc3BlbnQgYWxsIG5pZ2h0IGRlYnVnZ2luZyBj
YWxsIHRyYWNlcyBjYXVzZWQgYnkgdGhlIGN1cnJlbnQKPiA+IHN0bW1hYyBQQ1MgbGlmZXRpbWUg
bWFuYWdlbWVudCwgYW5kIGl0IHdhcyBub3QgYSBwbGVhc2FudCBleHBlcmllbmNlLgo+ID4gVGhl
IGNvZGUgZmVlbHMgbGlrZSBhY2N1bXVsYXRlZCB0ZWNobmljYWwgZGVidCB0aGF0IHNob3VsZCBi
ZSBjbGVhbmVkCj4gPiB1cC4KPgo+IFJ1c3NlbGwgS2luZyB3aWxsIHN0cm9uZ2x5IGFncmVlIHdp
dGggeW91LCBpZiBoZSB3YXMgYXJvdW5kLiBUaGUKPiBwaHlsaW5rIGludGVncmF0aW9uIGludG8g
c3RtbWFjIGNhdXNlcyBhIGxvdCBvZiBwYWluLCBhbmQgaGUgd2FudGVkIHRvCj4gcmlwIGl0IGFs
bCBvdXQgYW5kIHN0YXJ0IGFnYWluLiBCdXQgZG9pbmcgdGhhdCB3aXRob3V0IGJyZWFraW5nIHN0
dWZmCj4gaXMgZ29pbmcgdG8gYmUgaW50ZXJlc3RpbmcuCj4KPiBJZiB5b3UgZmVlbCB1cCB0byBp
dCwgaGF2ZSBhIGdvLiBCdXQgdGFrZSBhIGdvb2QgbG9vayBhcm91bmQgZmlyc3QsCj4gbWFrZSBz
dXJlIHlvdSB1bmRlcnN0YW5kIHRoZSBkaWZmZXJlbnQgdmFyaWFudCwgaW50ZXJuYWwgdnMgZXh0
ZXJuYWwKPiBQQ1MuCj4KPiAgICAgICAgIEFuZHJldwoKSGkgQW5kcmV3LAoKVGhhbmtzIGZvciBz
aGFyaW5nIHRoaXMuIEl0J3MgcmVhc3N1cmluZyB0byBrbm93IHRoYXQgSSdtIG5vdCBhbG9uZSBp
bgpmaW5kaW5nIHRoaXMgY29kZSBwYWluZnVsLgoKSSBmdWxseSBhZ3JlZSB0aGF0IHJpcHBpbmcg
aXQgb3V0IGFuZCBzdGFydGluZyBvdmVyIHdvdWxkIGJlIGEgaHVnZQp1bmRlcnRha2luZywgYW5k
IEknbSBkZWZpbml0ZWx5IG5vdCBjb25maWRlbnQgZW5vdWdoIHRvIHRha2UgdGhhdCBvbgpyaWdo
dCBub3cgLSBlc3BlY2lhbGx5IGdpdmVuIHRoZSByaXNrIG9mIGJyZWFraW5nIGV4aXN0aW5nIHBs
YXRmb3Jtcy4KTXkgY3VycmVudCBmb2N1cyBpcyBvbiBnZXR0aW5nIHRoaXMgUkszNTY4IFNHTUlJ
IHN1cHBvcnQgaW50byBhCm1lcmdlYWJsZSBzdGF0ZSwgcmF0aGVyIHRoYW4gYXR0ZW1wdGluZyBh
IGZ1bGwgcmVkZXNpZ24gb2YgdGhlCnN0bW1hYyBQQ1MgbGF5ZXIuCgpUaGF0IHNhaWQsIEknbGwg
a2VlcCB0aGlzIGluIG1pbmQuIE9uY2UgbXkgY3VycmVudCBzZXJpZXMgbGFuZHMgYW5kIEkKaGF2
ZSBhIGJldHRlciB1bmRlcnN0YW5kaW5nIG9mIHRoZSBkaWZmZXJlbnQgUENTIHZhcmlhbnRzLCBt
YXliZSBJJ2xsCmJlIGluIGEgYmV0dGVyIHBvc2l0aW9uIHRvIGNvbnRyaWJ1dGUgdG8gdGhhdCBs
b25nLXRlcm0gZWZmb3J0LgoKRm9yIG5vdywgSSdsbCBzdGljayB0byB0aGUgaW5jcmVtZW50YWwg
Zml4IHRoYXQgdGhpcyBzZXJpZXMgcHJvdmlkZXMuCgpUaGFua3MsCkNvaWEKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
