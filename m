Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7323BCD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 11:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkIeT5uJH70KEUZYdXORFrtsOuLLmGadqoPb4MbtJtU=; b=3fSjZ1dwVvIlKA
	exs6/zS/a/aRny1FRRt5pHYg0qlGUJ1khluZ2vWgL+Ri8WQxX5gzJRevqQcHUqk6I64PkZLUjSskZ
	pQiHM8tcZGWuyxWeXFhEa39HQXHt7DBjBKjjRqOH02ho55nBUQ2Oocg/RTng7R3MkkbDthc/f+a7d
	S6cBxnLjR3HQprRqv5jFtBIs8yG7x5rLPolFT4WJO63AqkCLwTAdrUiiEZXCiJUSiStUvVOiH+26k
	DhonBketUXm4L0bUkc+zk0r4cXHEpgTAOuH61JZIjOGxWh6sOj6/xL8qH1ryL7Oj/lpjn88oOoK/Z
	aFIxDbqQniAvEo2BXk8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIUM-00000001IfD-02hj;
	Tue, 19 May 2026 11:19:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPIUI-00000001IeY-43N5
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 11:19:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 25B8543B8C;
	Tue, 19 May 2026 11:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD491C2BCB3;
	Tue, 19 May 2026 11:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779189590;
	bh=rRJDzgUkNyYMIRbIwDuKVvq33Ce+FaMGdHZ2ZsA20UY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=uXca168A7SurkYPPV0rIOLppWo1zu5bKAG3JJ8JvFN1e41gJ7aqvXAllWchPiw9uS
	 Q0AlYFGHEKYQVpOohe3vFMuTXy8XRTfSERdLK/U5jBPtJB+XR68pR38/I/jyfkRAug
	 8G/QUH2T5kpQlnWvU3Vkl9TsnoWo4olWTmy8d8VKHWxLDrOEtHxaorrhHjPGO8nzzN
	 6CtI1NZuAHYhrdHIT8irMRm1t4dqicsUCMNVjbHajTo0YF1+ZCQ8InSgemz+kcthBO
	 rfQXLjvr7K7Tsw8eual71vGzgpT4Xt8FUkodQ865XkofMQm4hmhtinDWE6+AHJyjFY
	 gnvzow9xKHgWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: rockchip: inno-usb2: fix missing kernel-doc
To: "Vinod Koul" <vkoul@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260519110134.282428-1-vkoul@kernel.org>
References: <20260519110134.282428-1-vkoul@kernel.org>
Date: Tue, 19 May 2026 11:19:49 +0000
Message-Id: <20260519111949.CD491C2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_041951_026086_9959A407 
X-CRM114-Status: GOOD (  10.13  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGNvbW1pdCBhZGRz
IGEga2VybmVsLWRvYyBkZXNjcmlwdGlvbiBmb3IgYSBzdHJ1Y3QgbWVtYmVyIGBjbGtvdXRfY3Rs
X3BoeWAgdGhhdCBkb2VzIG5vdCBleGlzdCBpbiBgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfY2Zn
YC4KLSBbTG93XSBUaGUgYEZpeGVzOmAgdGFnIGluIHRoZSBjb21taXQgbWVzc2FnZSBpcyBtYWxm
b3JtZWQgZHVlIHRvIGFuIGV4dHJhbmVvdXMgdHJhaWxpbmcgZG91YmxlIHF1b3RlLgotLQoKY29t
bWl0IDUzMmY3OTBiNjA0ZGU1MDRjMTg0MzAwNmMyYmRhN2E0YmNiNjkzN2UKQXV0aG9yOiBWaW5v
ZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgoKcGh5OiByb2NrY2hpcDogaW5uby11c2IyOiBmaXgg
bWlzc2luZyBrZXJuZWwtZG9jCgpUaGlzIGNvbW1pdCBkb2N1bWVudHMgdGhlIGNsa291dF9jdGxf
cGh5IHZhcmlhYmxlIGluIHRoZSBrZXJuZWwtZG9jIGJsb2NrCnRvIHJlc29sdmUgYSBtaXNzaW5n
IGRlc2NyaXB0aW9uIHdhcm5pbmcuCgo+IEZpeGVzOiAyNzc1NTQxZGUwNTggKCJwaHk6IHJvY2tj
aGlwOiBpbm5vLXVzYjI6IEFkZCBjbGtvdXRfY3RsX3BoeSBzdXBwb3J0IikiCgpUaGlzIGlzbid0
IGEgYnVnLCBidXQgdGhlcmUgaXMgYW4gZXh0cmFuZW91cyB0cmFpbGluZyBkb3VibGUgcXVvdGUg
YXQgdGhlIGVuZApvZiB0aGUgRml4ZXMgdGFnLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggOGY0YzA4ZTU5OWFhMi4uYTY5ZTdkYmUx
ODE5NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5u
by11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11
c2IyLmMKPiBAQCAtMTcxLDYgKzE3MSw3IEBAIHN0cnVjdCByb2NrY2hpcF91c2IycGh5X3BvcnRf
Y2ZnIHsKPiAgICogQG51bV9wb3J0czogc3BlY2lmeSBob3cgbWFueSBwb3J0cyB0aGF0IHRoZSBw
aHkgaGFzLgo+ICAgKiBAcGh5X3R1bmluZzogcGh5IGRlZmF1bHQgcGFyYW1ldGVycyB0dW5pbmcu
Cj4gICAqIEBjbGtvdXRfY3RsOiBrZWVwIG9uL3R1cm4gb2ZmIG91dHB1dCBjbGsgb2YgcGh5Lgo+
ICsgKiBAY2xrb3V0X2N0bF9waHk6IG91dHB1dCBjbGsgcGh5IHJlZ2lzdGVycwoKSXMgdGhlIGNs
a291dF9jdGxfcGh5IGZpZWxkIHByZXNlbnQgaW4gdGhlIHN0cnVjdHVyZSBkZWZpbml0aW9uIGhl
cmU/CgpJZiB0aGUgc3RydWN0dXJlIGlzIG1pc3NpbmcgdGhpcyBtZW1iZXIsIGFkZGluZyB0aGUg
ZGVzY3JpcHRpb24gd2lsbAp0cmlnZ2VyIGFuIGV4Y2VzcyBzdHJ1Y3QgbWVtYmVyIHdhcm5pbmcg
aW5zdGVhZC4KCj4gICAqIEBwb3J0X2NmZ3M6IHVzYi1waHkgcG9ydCBjb25maWd1cmF0aW9ucy4K
PiAgICogQGNoZ19kZXQ6IGNoYXJnZXIgZGV0ZWN0aW9uIHJlZ2lzdGVycy4KPiAgICovCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
NTE5MTEwMTM0LjI4MjQyOC0xLXZrb3VsQGtlcm5lbC5vcmc/cGFydD0xCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
