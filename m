Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39939CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTLa5+IdjTSJRQxgFyzKyCdjui4SFL0r5wcqx8NfMbk=; b=n/d7u/1M8DOVC+
	uNH1H5/Nszz8F3KlAB0MZkhne+UTqJNzIKNOFZMsFrKmPrRpz4OGcaY+ctUNH2eJvJb11cc8eUa6C
	2JKN7RUyFyTV4EZzIcujjC77z5YKJPoCoiw9kuMVP7IesDLFGVQAPCFhxsVtVSTLWiRjMxjt/Gh0/
	h/0XHQP8nVDc3gsXqQQ/rc5PyzBDErYx5XoP0DJpsxmYB6U4tVc+ihH2a45shLnKEhlxuZDP9Rowf
	m67dWwPcqh3gRfPa0nZBBPg4nbVzHI2zhB1DkHcw1rlRLmxJIlrv8hQaSK1QW00V8myV6AQPViPz/
	MIz6/DH25dbvlnCIzHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfk7-00000002jtN-30Lp;
	Fri, 16 Oct 2026 11:04:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfk5-00000002jt6-3jD0
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:04:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5C6FD41310;
	Fri, 16 Oct 2026 11:04:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76311F000C4;
	Fri, 16 Oct 2026 11:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792148693;
	bh=hJEcfaxItbBgMisPPCnYTJxs1QVoQIXtn5izeQYbK78=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JOyWd1F2Vnxi3aIG5b0o67kiPstL2UYI4p8YTsRm5sniOtxSEAj68p+2paURlQTuS
	 fN7s031bJSUpRIHzDi9DHhKPH8mQunfRZoppZ9XkeRvCZglY5MjZw4OC3Qk7/m97eA
	 VbDhv4jtqw94RjuFIdNKpOs0ufet7fBsx+6Fjyg93/ShwhjBChz1imnO7l4biz/w03
	 hwnRpEBZoCJb97MLj+YvokNc4eRY88jQR6WK+TKojfq5WEad+BqQIJBRMRxLDdDeDT
	 23JjsHcKK+2MiCNjHuMJCpoyDusxxDFozKGBHUvDUFuCm9/hLmQCXnUCfSioN/8orw
	 OQT1EgT8IUVeg==
Message-ID: <sashiko-outbox-174230@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v2 1/4] phy: Add MIPI C-PHY mode and configuration
 options
To: "George Neacsu" <geocausa@gmail.com>
Cc: linux-phy@lists.infradead.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
Date: Fri, 16 Oct 2026 11:04:52 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiB1c2Ugb2Ygbm9u
LXN0YW5kYXJkIGludGVnZXIgdHlwZXMgaW4gc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBp
X2NwaHkKLS0KCmNvbW1pdCBkOTY2N2NmM2UzZWU1ZmIzZDg0MzIyY2IyZmVmYTJkYWU3OGM5ZTMz
CkF1dGhvcjogR2VvcmdlIE5lYWNzdSA8Z2VvY2F1c2FAZ21haWwuY29tPgoKcGh5OiBBZGQgTUlQ
SSBDLVBIWSBtb2RlIGFuZCBjb25maWd1cmF0aW9uIG9wdGlvbnMKClRoaXMgY29tbWl0IGludHJv
ZHVjZXMgUEhZX01PREVfTUlQSV9DUEhZIGFuZCBhIG5ldyBzdHJ1Y3R1cmUsIHN0cnVjdApwaHlf
Y29uZmlndXJlX29wdHNfbWlwaV9jcGh5LCB0byB0aGUgZ2VuZXJpYyBQSFkgZnJhbWV3b3JrLiBU
aGlzIGFsbG93cwpDU0ktMiByZWNlaXZlcnMgdG8gc3BlY2lmeSB0aGUgc3ltYm9sIHJhdGUgYW5k
IG51bWJlciBvZiB0cmlvcyBmb3IgQy1QSFlzLgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9waHkvcGh5LW1pcGktY3BoeS5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LW1pcGktY3BoeS5o
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5lZjZhZjYxZGVk
MjU0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWNw
aHkuaAo+IEBAIC0wLDAgKzEsMjcgQEAKWyAuLi4gXQo+ICtzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9v
cHRzX21pcGlfY3BoeSB7Cj4gKwkvKioKPiArCSAqIEBzeW1ib2xfcmF0ZToKPiArCSAqCj4gKwkg
KiBTeW1ib2wgcmF0ZSBvbiBlYWNoIHRyaW8sIGluIHN5bWJvbHMgcGVyIHNlY29uZC4KPiArCSAq
Lwo+ICsJdW5zaWduZWQgbG9uZyBsb25nCXN5bWJvbF9yYXRlOwoKW1NldmVyaXR5OiBMb3ddClRo
aXMgaXNuJ3QgYSBidWcsIGJ1dCB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXNlIGV4cGxpY2l0bHkt
c2l6ZWQgdHlwZXMgbGlrZSB1NjQKaGVyZSBpbnN0ZWFkIG9mIHVuc2lnbmVkIGxvbmcgbG9uZz8K
Cj4gKwo+ICsJLyoqCj4gKwkgKiBAdHJpb3M6Cj4gKwkgKgo+ICsJICogTnVtYmVyIG9mIGFjdGl2
ZSB0cmlvcy4KPiArCSAqLwo+ICsJdW5zaWduZWQgY2hhcgkJdHJpb3M7CgpbU2V2ZXJpdHk6IExv
d10KU2ltaWxhcmx5LCB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXNlIHU4IGhlcmUgaW5zdGVhZCBv
ZiB1bnNpZ25lZCBjaGFyPwoKPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTYteDFlLWNwaHktcmZjLXYyLTAtMzc3NjU0
MjUzMTkzQGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
