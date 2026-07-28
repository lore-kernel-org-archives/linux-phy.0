Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CE0C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 12:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIG2eY+S+LpijxePSfIQFip1mU0G6NT/7sV9fkt+R7w=; b=LjEf5KPNbDsxIq
	OTPORwynYJoThANv75eYTcM5QZcLk5T8GQ++QOeeOOU3/WAv2E5WLG82sntlKb0zmrt8hlndJJqKC
	JERtYPZONHHTHCGdxaQLhLj3LrprR7rg9QDYvICmMF4n6rpPffcvo4hnNIUTxluJClIV9uQU9EzwU
	GbjAYqrP+E3zbuz8zPJTe+H4hG757OoB+KllzT3NYHzgZABCMpsRQLEramIry9gbrOSqUFS1xcfbm
	OFjUQaCswWVFz8GuGh57IUUT26o0cP+9LXLh9sPFxR54DKTyTAt2yFMfyYqfDTU6o0uH0BqOCadtj
	Mcumrw0mCXWlsP0j6XjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woh9q-00000005HSx-0wFQ;
	Tue, 28 Jul 2026 12:43:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woh9o-00000005HSc-1UR3
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 12:43:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D82160A9E;
	Tue, 28 Jul 2026 12:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC1161F000E9;
	Tue, 28 Jul 2026 12:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785242619;
	bh=LADM8DYbYKlcYqYjSeGAIJ/GXFzY2x2RmiH/8l47JH0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Io/Fi4K5smdz+q/6mzf4cGPC9dYbvgu+/oXe7Y+IHB1Jmowhs+nRgmKGaxgOzEnv5
	 Y1ij6x8TA95Xp3NVVv0FYbEaVH5sVC4FucCcHTmKGvoCgjFv07eH/jSYoDaTD7814f
	 X5liZ6OT0LHm89C+NHQ0RR6+s3ytXVtEi6sXmH+fzeBbbgBlgOxHHBsm+qOzq3p09b
	 x7bv6dK0RQWGaei3Np+uBdNB7xBUx+H6gUGa8tmLwqVeSonb99ZyKyQ4b4TUAzuuUD
	 F2wS0t5r5Nz+achEk2hzao+Y5QnWIwlZIppXxvSIezTDtkffT2KPbyHD78y4MRrIMm
	 U4/URE/as9zWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: broadcom: ns2-usbdrd: cancel delayed work
To: "Hongyan Xu" <getshell@seu.edu.cn>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260728123423.781-2-getshell@seu.edu.cn>
References: <20260728123423.781-2-getshell@seu.edu.cn>
Date: Tue, 28 Jul 2026 12:43:38 +0000
Message-Id: <20260728124338.AC1161F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGxvY2tpbmcgYmV0d2VlbiBhc3luY2hyb25vdXMgZXh0Y29uIHdvcmtx
dWV1ZSBhbmQgc3luY2hyb25vdXMgUEhZIG9wZXJhdGlvbnMsIGNvbWJpbmVkIHdpdGggaW5jb3Jy
ZWN0IHN0YXRlIHN5bmNocm9uaXphdGlvbiBvcmRlcmluZy4KLS0KCi0tLSBQYXRjaCBbMV06IFtQ
QVRDSF0gcGh5OiBicm9hZGNvbTogbnMyLXVzYmRyZDogY2FuY2VsIGRlbGF5ZWQgd29yayAtLS0K
Y29tbWl0IDhkMjRiNGIyMDg3ZTFjZGQ0OTJmMTA0ODk2OGEwZDg5MDczMmU1ZGQKQXV0aG9yOiBI
b25neWFuIFh1IDxnZXRzaGVsbEBzZXUuZWR1LmNuPgoKcGh5OiBicm9hZGNvbTogbnMyLXVzYmRy
ZDogY2FuY2VsIGRlbGF5ZWQgd29yawoKVGhpcyBwYXRjaCBhZGRzIGEgbWFuYWdlZCBjbGVhbnVw
IGFjdGlvbiB0byBjYW5jZWwgdGhlIGRlbGF5ZWQgd29yawp3cV9leHRjb24gYmVmb3JlIHJlcXVl
c3RpbmcgSVJRcy4gVGhpcyBlbnN1cmVzIHRoZSB3b3JrIGRvZXMgbm90IHJ1bgphZnRlciBkcml2
ZXItbWFuYWdlZCByZXNvdXJjZXMgaGF2ZSBiZWVuIHJlbGVhc2VkLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1uczItdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtLW5zMi11c2JkcmQuYwo+IGluZGV4IDg0NzNmYTU3NDUyOTYuLmQwOTU5
NjY4ZGY3OTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1uczIt
dXNiZHJkLmMKPiArKysgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zMi11c2JkcmQu
YwoKWyAuLi4gXQoKPiBAQCAtMzQyLDYgKzM0OSwxMCBAQCBzdGF0aWMgaW50IG5zMl9kcmRfcGh5
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJSU5JVF9ERUxBWUVE
X1dPUksoJmRyaXZlci0+d3FfZXh0Y29uLCBleHRjb25fd29yayk7Cj4gIAo+ICsJcmV0ID0gZGV2
bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgbnMyX2RyZF9waHlfY2FuY2VsX3dvcmssIGRyaXZl
cik7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpU
aGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgSSBoYXZlIGEgcXVlc3Rpb24gYWJvdXQg
aG93IHRoZQpleHRjb25fd29yayBkZWxheWVkIHdvcmsgaW50ZXJhY3RzIHdpdGggc3luY2hyb25v
dXMgUEhZIG9wZXJhdGlvbnMuCgpJbiBleHRjb25fd29yaygpLCB3ZSBjYWxsIGV4dGNvbl9zZXRf
c3RhdGVfc3luYygpIGJlZm9yZSB1cGRhdGluZwpkcml2ZXItPmRhdGEtPm5ld19zdGF0ZSBhbmQg
Y2FsbGluZyBjb25uZWN0X2NoYW5nZSgpOgoKCWlmICghaWQgJiYgdmJ1cykgeyAvKiBIb3N0IGNv
bm5lY3RlZCAqLwoJCWV4dGNvbl9zZXRfc3RhdGVfc3luYyhkcml2ZXItPmVkZXYsIEVYVENPTl9V
U0JfSE9TVCwgdHJ1ZSk7CgkJcHJfZGVidWcoIkhvc3QgY2FibGUgY29ubmVjdGVkXG4iKTsKCQlk
cml2ZXItPmRhdGEtPm5ld19zdGF0ZSA9IEVWVF9IT1NUOwoJCWNvbm5lY3RfY2hhbmdlKGRyaXZl
cik7CgpCZWNhdXNlIGV4dGNvbl9zZXRfc3RhdGVfc3luYygpIGludm9rZXMgY29uc3VtZXIgbm90
aWZpZXJzIHN5bmNocm9ub3VzbHksCmNvdWxkIGEgY29uc3VtZXIgaW1tZWRpYXRlbHkgY2FsbCBQ
SFkgQVBJcyBsaWtlIG5zMl9kcmRfcGh5X2luaXQoKSBvcgpuczJfZHJkX3BoeV9wb3dlcm9uKCkg
aW4gcmVzcG9uc2U/CgpJZiBzbywgdGhvc2UgUEhZIEFQSXMgd291bGQgcmVhZCBkcml2ZXItPmRh
dGEtPm5ld19zdGF0ZSBiZWZvcmUgaXQgaGFzCmJlZW4gdXBkYXRlZCBieSB0aGUgd29ya3F1ZXVl
LgoKRnVydGhlcm1vcmUsIHNpbmNlIHRoZXJlIGFwcGVhcnMgdG8gYmUgbm8gaW50ZXJuYWwgbG9j
a2luZywgd291bGRuJ3QKY29uY3VycmVudCBjYWxscyB0byBuczJfZHJkX3BoeV9pbml0KCkgYW5k
IGNvbm5lY3RfY2hhbmdlKCkgcmFjZSB3aGVuCnBlcmZvcm1pbmcgcmVhZC1tb2RpZnktd3JpdGUg
b3BlcmF0aW9ucyBvbiB0aGUgUEhZIHJlZ2lzdGVycz8KCj4gIAlkcml2ZXItPmlkX2lycSA9IGdw
aW9kX3RvX2lycShkcml2ZXItPmlkX2dwaW9kKTsKPiAgCWlmIChkcml2ZXItPmlkX2lycSA8IDAp
IHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgSUQgSVJRXG4iKTsKCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3Mjgx
MjM0MjMuNzgxLTItZ2V0c2hlbGxAc2V1LmVkdS5jbj9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
