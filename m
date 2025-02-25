Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B080C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 21:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1C/ECj5Iu76JuSIJdgwzxTgOLfB1698BBnk4pRqz/w=; b=rejlBpjfA00ViI
	x3BytTMFGF9Ww4V8gbQLZfFkfqWpMruUoT87sYuHVYoTk8BRqLOoSyABxWBJc/29Mm2bKGQ1fGIvG
	ykVa8nq9kxhXI+fUJ46yMsmxUoem8f7sFAmXb4hD+9ejMdnh1/4pEIoMOcHhIjRjc1hxBem8ZDFO3
	aQJk125e9j7HZug4zf/JYNUE1/QkIdWTbKIyyruniGaJuVVQ+sNsSTeUX4kvlIdfn6c6+LANeG3bs
	KLBi8SzRr66T141gOKOUCHuFi2aUYSaR3av6pTPdoXikG+cW8R5+HCwN4MyIZODfJOVALb1rAQDNZ
	DXc2jj6yAshMtJ/FyMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn2Tv-00000001Yf5-0z97;
	Tue, 25 Feb 2025 21:28:47 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn2Jn-00000001W8j-0g3z
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 21:18:20 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-520b58510c7so1447423e0c.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 13:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740518298; x=1741123098; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClmqOl/Tw6JC6bZhWsysftkJJqIKxw8FKGY3Yy+YdFc=;
        b=Xe42cc6cR6Eb4y5dwqkhgfIMLnWuqda33gbQNXR5BsI47ZtLFssRdgN2ZBZTbA7xwN
         Gx1yPVVxcMGLsVaWi+azhAVMiFsUiftwH/W6MMcA+QSd2UMbysJwnf1ToFNQO76H2FpG
         ZLFlk4PLsNhJASTHZNNyUKbUSELaHp3wxRen8hSjtVaHwQhnC/OGP7i41PB8DPOvoRuB
         25BNELPEY5r9W6XXKvKSsAC2Tvk4JJNOK8jlhFVdDvxiV09M7WgaEWOA+kXnIzs7REEw
         4oEw+PMVM8wQ9mXESBFBc3zY6efJ+yuXzDhcePnq5exVNfTy1IqFAitDUPiE52nSAF4W
         cLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740518298; x=1741123098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ClmqOl/Tw6JC6bZhWsysftkJJqIKxw8FKGY3Yy+YdFc=;
        b=oGU3wCB8JzauwFBA0euk1t+t0xcHLn9RP1G0/sTBorxuWoPnO0UmvhFDUmGvgoQW8k
         0Pp7065RpCsaINp4h5sgo0MXqL6I8NVpux4diwlrUY9x0nlsfScyenJR/w8ydj+jtIdP
         Yzjs+5GYMGeHD4zzcEwnTESTz9i5C/rfQN007USyg5qndQ0MXhp7d4XEoGa2pkIPdZ7F
         9r1mo6SFlGzBdMYnl7l8JAS4tZ/AF0oNF7p+68vhnWVU4EVowBDG813v6RDyHZMf3GuC
         jshGSfjjwLjShIXYjG61xHhw75NV+tEX0HE6us8734ii5H02ecIwE+3hfoEZCU+xhCln
         zYbw==
X-Forwarded-Encrypted: i=1; AJvYcCWj4UR9Kh5rtNNC/G+JNnTqwXb82Jy0VRUstXxEHVD2RwK+bFAqZFkcsX8Iavpv2UWJJTdZVq7VL7E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yye54Y+fla693DFqe67o7/RJw3ZVhxJJ6IO9qYKajIyy8vYZLO6
	LecPllgP3vVRASMyzBr/w+4P1A83cpPFI4lIw6YhcqSmuo2gQ+0SZTC1B38qdKwpykK2IUjF5De
	icRZ+pmKR4YsF0YpvK0DnzGKm5YA=
X-Gm-Gg: ASbGncvLMzD6RNx0EBqMaUatq125HGhjN8l68jmuxopRV7GHjJ3bINmIYNAdoDMfR/X
	5ks/4mUy0ws8DqZpnCMj6Fp2Lyjy+ICj1O4VaGgSsZSo4/GHB6xwn74qxjF/JL8NQyPrd8vuZ/k
	/MyDlEqv0=
X-Google-Smtp-Source: AGHT+IE1ro2Ea2GyyaX3xp2teX3THRLd4qkveKPG3P4FVT7E3q9jXm31Jo+kkD1ljGeB4qt1pCLbRlljtq0HjJqQfAg=
X-Received: by 2002:a05:6122:3c94:b0:50b:e9a5:cd7b with SMTP id
 71dfb90a1353d-5223cd2c8a8mr3161652e0c.9.1740518297995; Tue, 25 Feb 2025
 13:18:17 -0800 (PST)
MIME-Version: 1.0
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com> <20250225105907.845347-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250225105907.845347-6-claudiu.beznea.uj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 25 Feb 2025 21:17:52 +0000
X-Gm-Features: AQ5f1Jo2VftSleZ87D2j-IA4DPgIo3RBwdu6m9T9vVR3u6tfRaSwqq2-lvouTpI
Message-ID: <CA+V-a8scgrFTe5GAUDSp7_v0M+iHEXBqpmjnavnPrSXYeXOQ0Q@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] phy: renesas: rcar-gen3-usb2: Set timing registers
 only once
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org, 
	horms+renesas@verge.net.au, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_131819_199736_6DC1965E 
X-CRM114-Status: GOOD (  16.02  )
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

T24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMTE6MDLigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gcGh5LXJjYXItZ2VuMy11c2IyIGRyaXZlciBleHBv
cnRzIDQgUEhZcy4gVGhlIHRpbWluZyByZWdpc3RlcnMgYXJlIGNvbW1vbgo+IHRvIGFsbCBQSFlz
LiBUaGVyZSBpcyBubyBuZWVkIHRvIHNldCB0aGVtIGV2ZXJ5IHRpbWUgYSBQSFkgaXMgaW5pdGlh
bGl6ZWQuCj4gU2V0IHRpbWluZyByZWdpc3RlciBvbmx5IHdoZW4gdGhlIDFzdCBQSFkgaXMgaW5p
dGlhbGl6ZWQuCj4KPiBGaXhlczogZjNiNWE4ZDliNTBkICgicGh5OiByY2FyLWdlbjMtdXNiMjog
QWRkIFItQ2FyIEdlbjMgVVNCMiBQSFkgZHJpdmVyIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+IFJldmlld2VkLWJ5OiBZb3NoaWhpcm8gU2hpbW9kYSA8eW9zaGloaXJvLnNoaW1vZGEu
dWhAcmVuZXNhcy5jb20+Cj4gVGVzdGVkLWJ5OiBZb3NoaWhpcm8gU2hpbW9kYSA8eW9zaGloaXJv
LnNoaW1vZGEudWhAcmVuZXNhcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEg
PGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2
MjoKPiAtIGNvbGxlY3RlZCB0YWdzCj4KPiAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYyB8IDcgKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ClJldmlld2VkLWJ5OiBMYWQgUHJhYmhha2FyIDxwcmFiaGFrYXIu
bWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+CgpDaGVlcnMsClByYWJoYWthcgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZl
cnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBpbmRleCAyMWNmMTRlYTM0Mzcu
LmE4OTYyMWQzZjk0YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2Fy
LWdlbjMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVz
YjIuYwo+IEBAIC00NjcsOCArNDY3LDExIEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2Iy
X2luaXQoc3RydWN0IHBoeSAqcCkKPiAgICAgICAgIHZhbCA9IHJlYWRsKHVzYjJfYmFzZSArIFVT
QjJfSU5UX0VOQUJMRSk7Cj4gICAgICAgICB2YWwgfD0gVVNCMl9JTlRfRU5BQkxFX1VDT01fSU5U
RU4gfCBycGh5LT5pbnRfZW5hYmxlX2JpdHM7Cj4gICAgICAgICB3cml0ZWwodmFsLCB1c2IyX2Jh
c2UgKyBVU0IyX0lOVF9FTkFCTEUpOwo+IC0gICAgICAgd3JpdGVsKFVTQjJfU1BEX1JTTV9USU1T
RVRfSU5JVCwgdXNiMl9iYXNlICsgVVNCMl9TUERfUlNNX1RJTVNFVCk7Cj4gLSAgICAgICB3cml0
ZWwoVVNCMl9PQ19USU1TRVRfSU5JVCwgdXNiMl9iYXNlICsgVVNCMl9PQ19USU1TRVQpOwo+ICsK
PiArICAgICAgIGlmICghcmNhcl9nZW4zX2lzX2FueV9ycGh5X2luaXRpYWxpemVkKGNoYW5uZWwp
KSB7Cj4gKyAgICAgICAgICAgICAgIHdyaXRlbChVU0IyX1NQRF9SU01fVElNU0VUX0lOSVQsIHVz
YjJfYmFzZSArIFVTQjJfU1BEX1JTTV9USU1TRVQpOwo+ICsgICAgICAgICAgICAgICB3cml0ZWwo
VVNCMl9PQ19USU1TRVRfSU5JVCwgdXNiMl9iYXNlICsgVVNCMl9PQ19USU1TRVQpOwo+ICsgICAg
ICAgfQo+Cj4gICAgICAgICAvKiBJbml0aWFsaXplIG90ZyBwYXJ0IChvbmx5IGlmIHdlIGluaXRp
YWxpemUgYSBQSFkgd2l0aCBJUlFzKS4gKi8KPiAgICAgICAgIGlmIChycGh5LT5pbnRfZW5hYmxl
X2JpdHMpCj4gLS0KPiAyLjQzLjAKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
