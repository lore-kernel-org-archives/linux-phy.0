Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB2C4C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Guq26463Kx1B/03SEQu5dRm1TjSmsZudv89PFPruDUg=; b=ctEbTs/q+PeJs2
	4jXvRW9zuqjuO0xQ9iTlBpd9RM9sY6ZWxR7OK+0120fjxRWJrgpaGnV8p4XvyOjBE0MmOVXWyDlnT
	GVRMOKeUa3EysVxmYhaQ9oic3NgOD1PKXAJl/7mZwVhMM2ORPwcpKP7d86I8T/xUyvLbJtwnJlBgD
	pdbW4ejaQ2NgHLrQJRCfCeI2SGbbKRJy67D3kHOlAce1ZQS/NDZsi9jjrWqO3Hm0DsmgR5ENVjctp
	OfeJ6QaEyREkDPqU38CuvRe7YDI/QohzdX1nCZRKvt8Oj8vOx0PwahI8kCpiDMxjd9bjQisKokRjL
	5AILIVfwNXBLSE4VKNcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm76o-000000091Fn-2hay;
	Tue, 21 Jul 2026 09:49:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm76n-000000091FE-1X89
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:49:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E98CD415CF;
	Tue, 21 Jul 2026 09:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F6441F00A3A;
	Tue, 21 Jul 2026 09:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784627392;
	bh=KFcy1DLAO/kJeoR/koU2y5c43w0/DPsFa5ZIqltDBmE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J2RM79Wo60evZapTtPv31e8/18ShuQR/6vq2QNrJFcL5BjHKRrZZxdQNzWkmarn4B
	 qrH2+GNBIaQZYpH8paeCf1CioozE11iOuyC5xTOj2xv0jQGh/j5bbYikMf1wOpqtCS
	 PZwIF6T/goydJgj4K/I17iX232+oNgqRwcNdrPHCWDIRm8C0ybq0kYwKNx3C3oMzi4
	 gNTO9xkAF0+M2WYMpyFSnt5ONoYoDpp7siIu54mSK7FTIL+C0t2Fg5eb5GQCkYOiil
	 1bvyo8G4jw79PJOXRj+MRVp3U4ltGyUgN780O6N94A1S53dx2mWPY3TtbVe7Hx3ee7
	 zJnjlnC/sigAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 01/12] spmi: Fix potential use-after-free by
 grabbing of_node reference
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260721093626.96264-2-angelogioacchino.delregno@collabora.com>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
 <20260721093626.96264-2-angelogioacchino.delregno@collabora.com>
Date: Tue, 21 Jul 2026 09:49:52 +0000
Message-Id: <20260721094952.7F6441F00A3A@smtp.kernel.org>
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
IFtIaWdoXSBJbXByb3BlciByZXNvdXJjZSByZWxlYXNlIG9uIGVycm9yIHBhdGggaW4gYHNwbWlf
Y29udHJvbGxlcl9hbGxvYygpYCBsZWFkcyB0byBJREEgY29ycnVwdGlvbi4KLS0KCi0tLSBQYXRj
aCBbMV06IFtQQVRDSCB2MTMgMDEvMTJdIHNwbWk6IEZpeCBwb3RlbnRpYWwgdXNlLWFmdGVyLWZy
ZWUgYnkgZ3JhYmJpbmcgb2Zfbm9kZSByZWZlcmVuY2UgLS0tCmNvbW1pdCA3YWUwNGM1M2VhMDcy
MzhmOTk4M2JhNDVmYzcyYWM2MDcwOTMxY2M5CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwg
UmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnNwbWk6IEZp
eCBwb3RlbnRpYWwgdXNlLWFmdGVyLWZyZWUgYnkgZ3JhYmJpbmcgb2Zfbm9kZSByZWZlcmVuY2UK
CkluIG9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcygpLCBhIG5vZGUgaXMgYXNzaWduZWQgdG8gYSBu
ZXdseSBjcmVhdGVkIFNQTUkgY2hpbGQKZGV2aWNlIGR1cmluZyBpdGVyYXRpb24uIFRoZSByZWZj
b3VudCBpcyBkcm9wcGVkIGF0IGV2ZXJ5IGl0ZXJhdGlvbiwgc28gYQp1c2UtYWZ0ZXItZnJlZSBt
YXkgb2NjdXIgd2hlbiBhbiBvdmVybGF5IGlzIGR5bmFtaWNhbGx5IHVubG9hZGVkLiBUaGlzIGNv
bW1pdApyZXNvbHZlcyB0aGUgaXNzdWUgYnkgaW5jcmVhc2luZyB0aGUgb2Zfbm9kZSByZWZjb3Vu
dCB3aGVuIGFzc2lnbmluZyB0aGUgbm9kZQphbmQgcmVsZWFzaW5nIGl0IGluIHNwbWlfZGV2X3Jl
bGVhc2UoKS4KCkNsb3NlczogaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4
MTAwOTQ5LjM2MzA5LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3Bh
cnQ9MgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcG1pL3NwbWkuYyBiL2RyaXZlcnMvc3BtaS9z
cG1pLmMKPiBpbmRleCA1N2I3YzBjYjQyNDA3Li5mNmQyZjRiZGRmY2QyIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvc3BtaS9zcG1pLmMKPiArKysgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gQEAgLTI0
LDYgKzI0LDcgQEAgc3RhdGljIHZvaWQgc3BtaV9kZXZfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gIHsKPiAgCXN0cnVjdCBzcG1pX2RldmljZSAqc2RldiA9IHRvX3NwbWlfZGV2aWNlKGRl
dik7Cj4gIAo+ICsJb2Zfbm9kZV9wdXQoZGV2LT5vZl9ub2RlKTsKPiAgCWtmcmVlKHNkZXYpOwo+
ICB9CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlz
IHBhdGNoLCBidXQgd2hpbGUgcmV2aWV3aW5nIHRoZSByZXNvdXJjZQpyZWxlYXNlIHBhdGhzIGlu
IHRoaXMgZmlsZSwgSSBub3RpY2VkIGEgcG90ZW50aWFsIElEQSBjb3JydXB0aW9uIGluCnNwbWlf
Y29udHJvbGxlcl9hbGxvYygpIGR1cmluZyB0aGUgZXJyb3IgcGF0aC4KCklmIGlkYV9hbGxvYygp
IGZhaWxzIHVuZGVyIG1lbW9yeSBwcmVzc3VyZToKCmRyaXZlcnMvc3BtaS9zcG1pLmM6c3BtaV9j
b250cm9sbGVyX2FsbG9jKCkgewogICAgLi4uCglpZCA9IGlkYV9hbGxvYygmY3RybF9pZGEsIEdG
UF9LRVJORUwpOwoJaWYgKGlkIDwgMCkgewoJCWRldl9lcnIocGFyZW50LAoJCQkidW5hYmxlIHRv
IGFsbG9jYXRlIFNQTUkgY29udHJvbGxlciBpZGVudGlmaWVyLlxuIik7CgkJc3BtaV9jb250cm9s
bGVyX3B1dChjdHJsKTsKCQlyZXR1cm4gRVJSX1BUUihpZCk7Cgl9CiAgICAuLi4KfQoKSXQgY2Fs
bHMgc3BtaV9jb250cm9sbGVyX3B1dChjdHJsKSwgd2hpY2ggZXZlbnR1YWxseSBpbnZva2VzIHNw
bWlfY3RybF9yZWxlYXNlKCk6Cgpkcml2ZXJzL3NwbWkvc3BtaS5jOnNwbWlfY3RybF9yZWxlYXNl
KCkgewogICAgLi4uCglpZGFfZnJlZSgmY3RybF9pZGEsIGN0cmwtPm5yKTsKCWtmcmVlKGN0cmwp
Owp9CgpTaW5jZSB0aGUgY29udHJvbGxlciBtZW1vcnkgaXMgemVyby1pbml0aWFsaXplZCBhbmQg
Y3RybC0+bnIgaGFzbid0CmJlZW4gc2V0IHlldCB3aGVuIGlkYV9hbGxvYygpIGZhaWxzLCBjdHJs
LT5uciBpcyBpbXBsaWNpdGx5IDAuCgpEb2VzIHRoaXMgdW5jb25kaXRpb25hbGx5IGZyZWUgSUQg
MCwgaW5hZHZlcnRlbnRseSByZW1vdmluZyB0aGUgaWRlbnRpZmllcgpmb3IgYW5vdGhlciBhY3Rp
dmUgU1BNSSBjb250cm9sbGVyIGFuZCBsZWFkaW5nIHRvIHN5c2ZzIG5hbWluZyBjb2xsaXNpb25z
CihzcG1pLTApIG9uIHN1YnNlcXVlbnQgYWxsb2NhdGlvbnM/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIxMDkzNjI2Ljk2MjY0
LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
