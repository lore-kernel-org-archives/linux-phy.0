Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C344C624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhTgsQ2kkNvMX1o4UngfWDJqLzu7qzx+241tVyqWGGE=; b=a+4ZyyzyL+MWAr
	U7Acb7aEL7L/nxVWo11W6DVnpKnh5I06tXmzFtiYTAeRW8YIYr+vF9ALUwJOjfAbN5YGVGakdF8iE
	R5tpOmZjMXzmBH54KYPuGf4opn/V3vlIurAb+IKchF12tMQBgmtglqbKX1wJeYhMPC3j5zPxkp1NI
	GhnFIbCi07d0hY5bkXU34++/j9dqYW4Fm6pJyZUAGVka0ViIGqeIdi76QeIKCrqVMiumHGwKbT6xC
	ZldCJb3y9/evZu+dSQUVV60HtI/14npkb38tsDATeClKD3yPzgSWtGJe6rBy3qfUFbGMJwLb5C6W6
	VwFrr6pPbNmdJbNgJ3jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R2C-0000000Cceg-03tJ;
	Tue, 01 Sep 2026 16:08:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R2B-0000000Ccea-2Cuz
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:08:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 995036013A;
	Tue,  1 Sep 2026 16:08:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E46181F000E9;
	Tue,  1 Sep 2026 16:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788278906;
	bh=yArGgVkrnvTrfPs8c3pzi6fAqm4chPlIOUOySdlZdVw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ecnkQkpZjeZ15+GUFNwH2EOemvQTKL++Hi9qgNiVPRg7s/o5cuwnvSz9kQkMdg5rD
	 gdt4/l+lm96Pm9qQDB7RZVyYnfUFN9Kc3bb4Jtawfxu8BFrj4PV0Ss6YXPJjlnUUAC
	 Jt+TnI0XiSqgNUuv/I2FjuHsdZOmT4IOVAYvOky9ZHJYIXT/jRnaoZ+LfqKGIKIywt
	 3vqOwPBIodIeWA8A/3ZDDfjQT43Lz9geqeIIG5MJdUA6dLJsmWFNX7/BMrB31fYlyS
	 3K5EbSV7M6mEe/Wx3C9s2MuAz3oMnTR8zFqMlJrFuLnKM0mXVZDPPff88UbopdCCBp
	 /dOelV1QgKdPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 09/24] scsi: ufs: mediatek: Rework init function
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-9-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-9-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:08:25 +0000
Message-Id: <20260901160825.E46181F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlIG9mIGB1ZnNfbXRrX21waHlfcG93ZXJfb24oKWAgaXMg
aWdub3JlZCBpbnNpZGUgYHVmc19tdGtfaW5pdCgpYC4KLS0KCmNvbW1pdCAyZGI5OWRhZjgxY2Nk
NzVjNjNkNzE5NWIyNjA1YWVkNTkzMWUyY2JlCkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxu
aWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6IFJl
d29yayBpbml0IGZ1bmN0aW9uCgpUaGUgY29tbWl0IGNsZWFucyB1cCB1ZnNfbXRrX2luaXQoKSBi
eSByZW1vdmluZyB1bm5lY2Vzc2FyeSBlcnJvciBtZXNzYWdlcywKcmVtb3ZpbmcgdGhlIHVudXNl
ZCBvZl9tYXRjaF9kZXZpY2UoKSBjYWxsLCBhbmQgcmV0dXJuaW5nIGVhcmx5IG9uIGVycm9ycwpp
bnN0ZWFkIG9mIHplcm8taW5pdGlhbGl6aW5nIGFuIGVycm9yIHZhcmlhYmxlLgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmMKPiBpbmRleCBmMjk4ZWE2ZjZlY2I5Li5jNTA4OTgxNTY5NmZlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiArKysgYi9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jClsgLi4uIF0KPiBAQCAtMTMwMSwyOSArMTI4OSwxOSBA
QCBzdGF0aWMgaW50IHVmc19tdGtfZ2V0X3N1cHBsaWVzKHN0cnVjdCB1ZnNfbXRrX2hvc3QgKmhv
c3QpCj4gICAqLwo+ICBzdGF0aWMgaW50IHVmc19tdGtfaW5pdChzdHJ1Y3QgdWZzX2hiYSAqaGJh
KQo+ICB7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0
aGlzIHBhdGNoLCBidXQgd2hpbGUgcmV2aWV3aW5nIHRoaXMKZnVuY3Rpb24ncyBlcnJvciBoYW5k
bGluZywgSSBub3RpY2VkIHRoZSByZXR1cm4gdmFsdWUgb2YKdWZzX210a19tcGh5X3Bvd2VyX29u
KCkgaXMgaWdub3JlZCBmdXJ0aGVyIGRvd246Cgpkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jOnVmc19tdGtfaW5pdCgpIHsKICAgIC4uLgogICAgZXJyID0gdWZzX210a19nZXRfc3VwcGxp
ZXMoaG9zdCk7CiAgICBpZiAoZXJyKQogICAgICAgIGdvdG8gb3V0X3ZhcmlhbnRfY2xlYXI7Cgog
ICAgLyoKICAgICAqIHVmc2hjZF92b3BzX2luaXQoKSBpcyBpbnZva2VkIGFmdGVyCiAgICAgKiB1
ZnNoY2Rfc2V0dXBfY2xvY2sodHJ1ZSkgaW4gdWZzaGNkX2hiYV9pbml0KCkgdGh1cwogICAgICog
cGh5IGNsb2NrIHNldHVwIGlzIHNraXBwZWQuCiAgICAgKgogICAgICogRW5hYmxlIHBoeSBjbG9j
a3Mgc3BlY2lmaWNhbGx5IGhlcmUuCiAgICAgKi8KICAgIHVmc19tdGtfbXBoeV9wb3dlcl9vbiho
YmEsIHRydWUpOwoKICAgIGlmICh1ZnNfbXRrX2lzX3J0ZmZfbXRjbW9zKGhiYSkpIHsKICAgIC4u
Lgp9CgpEb2VzIGlnbm9yaW5nIHRoZSByZXR1cm4gdmFsdWUgaGVyZSBsZWFkIHRvIHRoZSBkcml2
ZXIgb3BlcmF0aW5nIG9uIHVucG93ZXJlZApoYXJkd2FyZSBpZiB0aGUgcmVxdWlyZWQgdm9sdGFn
ZSByZWd1bGF0b3JzIGZhaWwgdG8gZW5hYmxlPwoKdWZzX210a19tcGh5X3Bvd2VyX29uKCkgY2Fs
bHMgdWZzX210a18wOXZfb24oKSwgd2hpY2ggY2FuIGZhaWwgaWYKcmVndWxhdG9yX2VuYWJsZSgp
IGZhaWxzIChyZXR1cm5pbmcgLUVOT01FTSBvciAtRUlPKS4gUHJvY2VlZGluZyBhcyBpZiB0aGUK
cGh5IGlzIHBvd2VyZWQgb24gd2hlbiBpdCBpcyBub3QgbWlnaHQgdHJpZ2dlciBhc3luY2hyb25v
dXMgYnVzIGVycm9ycwpvbiBhcm0gaGFyZHdhcmUgYW5kIGNyYXNoIHRoZSBzeXN0ZW0uCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
OTAxLW10ODE5Ni11ZnMtdjExLTAtZGJkMDA3NzA0NDkwQGNvbGxhYm9yYS5jb20/cGFydD05Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
