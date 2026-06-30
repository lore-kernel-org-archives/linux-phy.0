Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEEEC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vohUaOuJ5zb53HYWZCkjOQBJfzPchITjekMS5qYOqA=; b=tLb2Qh9rxRn+o1
	dDeI+74rkTwOdtjo3vfU0yrAIlKpxFRO+wA4rjdb84LOkXAkqGY9xQ4x/836dpMpADBOyTx6nmtrv
	bO07wk9z2B4zPQ/fImWGPkpE/DSNwlaor99dmqmuj7acpUVHg1PV6DUQ5pQi2MOlDwvt5VtpUKiHK
	PjjV3Ak+pAB5mG9XtalwUpyl0AyoVPK5lY+5489iwwhKvgUy4R5QOCXohV3m58/X8u2p7RGLMilP3
	9Gwah+CWlr9FXNEfdti37fy6XhKvIn17jHpqH92akoinD+W19a1J7606G3OSELCtsqNhWc9ziEqI9
	w4GHbvqqmDxvy2zn7x/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVx-0000000HA91-0b5C;
	Tue, 30 Jun 2026 13:28:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVu-0000000HA7s-28pu
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EE6EB601DC;
	Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 450051F00A3A;
	Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826113;
	bh=+FAD0oKS3SeQ82yLrtXGWjS6Gjvd3EoOnAU9Vn3DKCA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gb3wrXA1wKlOsU4o5YpskKf7EaW/7Z5k4ogtGGTCHbKvSWIXMdTWcQ47xRXvmAuSV
	 ekA7zkyWW3SYG9AWBvQ0lL8tIAvV3r5t00rg95fP6gXHpoSPh8s6UiAIxJAgkHk59q
	 furj2i8HbcsnchP5GMCI+RxfNR3SrJUUF6oArUfYjFaWgoyL00Aad9wd582f9AY1vO
	 IxTj3TLbFkvdB+432Xbn2vr3xf4klRgcrVletBnYDj7dHdXtQIUq+iXwlpnuK2PYuz
	 6mLzSBSukM8pXEveX79W+u6HVQFoc6Tg3/OaCYPmlyZ1GJ4HwKnE0VYM+OZ2PmOzEP
	 sW4009xsEb+7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/13] pcmcia: replace linux/gpio.h inclusions
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260629132633.1300009-9-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-9-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:32 +0000
Message-Id: <20260630132833.450051F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbnZhbGlkIHJlc291cmNlIGNsZWFudXAgb24gZXJyb3IgcGF0aCBsZWFkaW5nIHRv
IHBvdGVudGlhbCBkb3VibGUtZnJlZSBvZiBhIGRldnJlcy1tYW5hZ2VkIEdQSU8gZGVzY3JpcHRv
ci4KLS0KCmNvbW1pdCBhMWEyMDY0NzkxNGQ3OGQ2YTE1NjU1ZGVhODg5ZTlkNTNjNzM0MTM2CkF1
dGhvcjogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCnBjbWNpYTogcmVwbGFjZSBsaW51
eC9ncGlvLmggaW5jbHVzaW9ucwoKVGhlIHBjbWNpYSBkcml2ZXJzIGFsbCB1c2UgdGhlIGxlZ2Fj
eSBpbnRlcmZhY2VzLCBzbyBjb252ZXJ0IHRvCmluY2x1ZGUgbGludXgvZ3Bpby9sZWdhY3kuaCBp
bnN0ZWFkLgoKU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KClsg
Li4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNtY2lhL3NhMTEwMF9oMzYwMC5jIGIvZHJp
dmVycy9wY21jaWEvc2ExMTAwX2gzNjAwLmMKPiBpbmRleCAxMGNiOTljMjBhN2Y1Li42YzUyZDkw
Nzk1ZWI0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNtY2lhL3NhMTEwMF9oMzYwMC5jCj4gKysr
IGIvZHJpdmVycy9wY21jaWEvc2ExMTAwX2gzNjAwLmMKPiBAQCAtMTEsNyArMTEsNyBAQAo+ICAj
aW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+IC0jaW5jbHVkZSA8bGludXgvZ3Bpby5oPgo+ICsj
aW5jbHVkZSA8bGludXgvZ3Bpby9sZWdhY3kuaD4KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24n
dCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBJIG5vdGljZWQgYSBwcmUtZXhp
c3RpbmcKaXNzdWUgd2hpbGUgcmV2aWV3aW5nIHRoZSBHUElPIGluY2x1ZGUgY2hhbmdlcy4KCkRv
ZXMgdGhlIGVycm9yIHBhdGggaW4gaDM2MDBfcGNtY2lhX2h3X2luaXQoKSBjYXVzZSBhIGRvdWJs
ZS1mcmVlIG9mIGEKZGV2cmVzLW1hbmFnZWQgR1BJTyBkZXNjcmlwdG9yPwoKSWYgZ3Bpb19yZXF1
ZXN0KEgzWFhYX0VHUElPX09QVF9OVlJBTV9PTikgb3Igc3Vic2VxdWVudCBsZWdhY3kgR1BJTyBy
ZXF1ZXN0cwpmYWlsLCB0aGUgY29kZSBqdW1wcyB0byBvciBmYWxscyB0aHJvdWdoIHRvIHRoZSBl
cnIwMSBsYWJlbDoKCmRyaXZlcnMvcGNtY2lhL3NhMTEwMF9oMzYwMC5jOmgzNjAwX3BjbWNpYV9o
d19pbml0KCkgewogICAgLi4uCmVycjA2OiAgZ3Bpb19mcmVlKEgzWFhYX0VHUElPX0NBUkRfUkVT
RVQpOwplcnIwNTogIGdwaW9fZnJlZShIM1hYWF9FR1BJT19PUFRfUkVTRVQpOwplcnIwNDogIGdw
aW9fZnJlZShIM1hYWF9FR1BJT19PUFRfT04pOwplcnIwMzogIGdwaW9fZnJlZShIM1hYWF9FR1BJ
T19PUFRfTlZSQU1fT04pOwplcnIwMTogIGdwaW9fZnJlZShIM1hYWF9HUElPX1BDTUNJQV9JUlEw
KTsKICAgICAgICByZXR1cm4gZXJyOwp9CgpUaGUgZXJyMDEgbGFiZWwgaW5jb3JyZWN0bHkgZnJl
ZXMgSDNYWFhfR1BJT19QQ01DSUFfSVJRMC4gVGhpcyBHUElPIGlzCm1hbmFnZWQgYnkgZGV2cmVz
IGFuZCB3YXMgbm90IGV4cGxpY2l0bHkgcmVxdWVzdGVkIHVzaW5nIGdwaW9fcmVxdWVzdCgpIGlu
CnRoaXMgZnVuY3Rpb24uIAoKV2hlbiBkZXZyZXMgY2xlYW5zIHVwIHRoZSBmYWlsZWQgcHJvYmUs
IGl0IHdpbGwgYXR0ZW1wdCB0byBmcmVlIHRoZSBHUElPCmFnYWluLiBUaGlzIGNvdWxkIGxlYWQg
dG8gYSBkb3VibGUtZnJlZSwgZ3Bpb2xpYiBzdGF0ZSBjb3JydXB0aW9uLCBrZXJuZWwKd2Fybmlu
Z3MsIG9yIGFjY2lkZW50YWxseSBmcmVlaW5nIGEgR1BJTyBhY3F1aXJlZCBieSBhIGNvbmN1cnJl
bnQgZHJpdmVyLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYyOTEzMjYzMy4xMzAwMDA5LTEtYXJuZEBrZXJuZWwub3JnP3BhcnQ9
OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
