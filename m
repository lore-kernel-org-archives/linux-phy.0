Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02502C55838
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wW0l5Wt4OlxSpLnKkngYD7tzl1sA+yuKHHfqZw658HE=; b=wQ++jfYJNk2AZI
	FaMCLtbMctsu0VeNCbnnTavQFDWxsVyiQmaE1zMI5IjVZ6sJi4d7kIlHznWETgvQJ/PqS5CPMHEc9
	XR5F3g6PLQYFZiYWD393JXZkALExyn2W4GOqH8LFa7CzbThp8KL6/uyHGYvFErHGqX2y2D+19dy2q
	80FhxY7XnyTL6HN3GpKt+RxFN/wZ8x+8tD7dIU+a2aa8PQJcwwOVNJG0TNjUaYECPpNq8Ktkc8usY
	m+IN2sIX9GrO7+wza+L12WnHRyRynGzHKwpo9DjZUwrjrsh8aNa4LS2cr/LDqYE12HRcXa3bmazvM
	w1p0K7Svs/A8/ZYNU59Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDKf-00000001h2k-25ys;
	Tue, 04 Aug 2026 11:29:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDKd-00000001h2Y-2vDy
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:29:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1557760A59;
	Tue,  4 Aug 2026 11:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A6611F000E9;
	Tue,  4 Aug 2026 11:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785842954;
	bh=6JcNQs2WlbVMgSSl8SoLHT4nH7Wq2k3BE/RZ/sKOpEg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=o23aRFvcJR9SkFnXPwZ0HQEIJ/nEKCpj+Y4qXjX8aPsUxhN6VvHMQF1u7h/MDaqcp
	 Lla1SgbR/GVQEFMAcDxjvpwngs8Foqdw6FF4rI7S91DgHDPzwzttcEkM0nQFLNB8Ej
	 jJmw0IH51Eac+J/5syOUV8b/eVNFuRU4aoDpycQiqKxIOdMvZNVT6PTLVB6GxQwZsu
	 Pa72dVsTQqhWFQUX9Bbo3LSsbGr2AtDN6uf4Ivpc9kWhKjvE3u5FRu4/C0DV1oygVH
	 othYYgePFH+xqZVDU1d7XBLJ8Jo3NM5lTSAhJ47CqUOLf8lVwR5HfcWrdULZyrDzxE
	 JBWDUIvpwvkOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: ti,phy-usb3: document aspcie
 reference clock setting
To: "David Oberhollenzer" <david.oberhollenzer@sigma-star.at>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
 <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
Date: Tue, 04 Aug 2026 11:29:13 +0000
Message-Id: <20260804112914.5A6611F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEVycm9yIGhhbmRsaW5n
IGluIGB0aV9waXBlM19hY3NwY2llX3R4X3J4X21vZGVgIGJyZWFrcyBwcm9iZSBkZWZlcnJhbCBh
bmQgY2F1c2VzIHdhcm5pbmcgc3BhbSBvbiBvbGRlciBkZXZpY2UgdHJlZXMKLSBbTG93XSBTY2hl
bWEgVmFsaWRhdGlvbiBJbmNvbXBsZXRlbmVzczogYHN5c2Nvbi1hY3NwY2llLXR4LXJ4YCBhbGxv
d3MgaW52YWxpZCBkZXZpY2UgdHJlZSBjb25maWd1cmF0aW9ucwotLQoKLS0tIFBhdGNoIFsyXTog
W1BBVENIIDIvMl0gZHQtYmluZGluZ3M6IHBoeTogdGkscGh5LXVzYjM6IGRvY3VtZW50IGFzcGNp
ZSByZWZlcmVuY2UgY2xvY2sgc2V0dGluZyAtLS0KY29tbWl0IGM3NjI3ZmQzNDQ4Zjc2YjAwYjMw
M2NhOTVjNDdhOWRhZWQ3M2QxMzMKQXV0aG9yOiBEYXZpZCBPYmVyaG9sbGVuemVyIDxkYXZpZC5v
YmVyaG9sbGVuemVyQHNpZ21hLXN0YXIuYXQ+CgpkdC1iaW5kaW5nczogcGh5OiB0aSxwaHktdXNi
MzogZG9jdW1lbnQgYXNwY2llIHJlZmVyZW5jZSBjbG9jayBzZXR0aW5nCiAgICAKQWRkIHN5c2Nv
bi1hY3NwY2llLXR4LXJ4IHByb3BlcnR5IHRvIHRoZSBQSFkgYmluZGluZ3MuCgo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3RpLHBoeS11c2IzLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3RpLHBoeS11c2IzLnlh
bWwKPiBpbmRleCA4NGY1MzhhYTU4N2M0Li40ZmIwMTdkZjI4OTg1IDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LXVzYjMueWFtbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LXVzYjMueWFt
bAo+IEBAIC01Miw2ICs1MiwxNSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICBlbnVtOiBbd2t1cGNs
aywgc3lzY2xrLCByZWZjbGssIGRwbGxfcmVmLAo+ICAgICAgICAgICAgICAgZHBsbF9yZWZfbTIs
IHBoeS1kaXYsIGRpdi1jbGtdCj4gIAo+ICsgIHN5c2Nvbi1hY3NwY2llLXR4LXJ4Ogo+ICsgICAg
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ICsg
ICAgbWF4SXRlbXM6IDEKPiArICAgIGl0ZW1zOgo+ICsgICAgICBpdGVtczoKPiArICAgICAgICAt
IGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIHRoZSBzeXN0ZW0gY29udHJvbCBtb2R1bGUKPiArICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBSZWdpc3RlciBvZmZzZXQgb2YgQ1RSTF9DT1JFX1NNQV9TV182
Cj4gKyAgICAgICAgLSBkZXNjcmlwdGlvbjogU2V0dGluZyBmb3IgUENJRV9UWF9SWF9DT05UUk9M
Cj4gKwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBhbGxvdyBpbnZhbGlkIGRldmljZSB0cmVl
IGNvbmZpZ3VyYXRpb25zIHRvIHBhc3MgdmFsaWRhdGlvbj8KCkJlY2F1c2UgdGhpcyBpcyBkZWZp
bmVkIGluIHRoZSB0b3AtbGV2ZWwgcHJvcGVydGllcyBibG9jayBhbmQgbGFja3MgYW4gYWxsT2YK
Y29uZGl0aW9uYWwgaWYtdGhlbiBibG9jaywgc2NoZW1hIHZhbGlkYXRpb24gKGR0X2JpbmRpbmdf
Y2hlY2spIHdpbGwgc2lsZW50bHkKcGFzcyBpZiB0aGlzIFBDSWUtc3BlY2lmaWMgcHJvcGVydHkg
aXMgaW5jb3JyZWN0bHkgYWRkZWQgdG8gU0FUQSBvciBVU0IzIFBIWQpub2Rlcy4KClNob3VsZCB0
aGlzIHByb3BlcnR5IGJlIHJlc3RyaWN0ZWQgZXhjbHVzaXZlbHkgdG8gdGhlIHRpLHBoeS1waXBl
My1wY2llCmNvbXBhdGlibGUgc3RyaW5nPwoKPiAgICBzeXNjb24tcGh5LXBvd2VyOgo+ICAgICAg
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ICAg
ICAgbWF4SXRlbXM6IDEKCkFsc28sIGxvb2tpbmcgYXQgdGhlIGNvcnJlc3BvbmRpbmcgZHJpdmVy
IGNoYW5nZXMgdGhhdCBpbXBsZW1lbnQgdGhpcyBuZXcKcHJvcGVydHkgaW4gZHJpdmVycy9waHkv
dGkvcGh5LXRpLXBpcGUzLmM6Cgpkcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYzp0aV9waXBl
M19hY3NwY2llX3R4X3J4X21vZGUoKSB7CiAgICAgICAgLi4uCiAgICAgICAgcmVnbWFwID0gc3lz
Y29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9hcmdzKG5wLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic3lzY29uLWFjc3BjaWUtdHgtcngi
LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAy
LCBhcmdzKTsKICAgICAgICBpZiAoSVNfRVJSKHJlZ21hcCkpIHsKICAgICAgICAgICAgICAgIGRl
dl93YXJuKHBoeS0+ZGV2LCAiY2FuJ3QgZ2V0IHN5c2Nvbi1hY3NwY2llLXR4LXJ4XG4iKTsKICAg
ICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwogICAgICAgIH0KICAgICAgICAuLi4KfQoKW1Nl
dmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgZXJyb3IgaGFuZGxpbmcgYnJlYWsgcHJvYmUgZGVmZXJy
YWw/CgpJZiB0aGUgc3lzY29uIHByb3ZpZGVyIGlzIG5vdCB5ZXQgcmVhZHksCnN5c2Nvbl9yZWdt
YXBfbG9va3VwX2J5X3BoYW5kbGVfYXJncygpIHJldHVybnMgLUVQUk9CRV9ERUZFUiwgd2hpY2gg
aXMKY29udmVydGVkIHRvIC1FSU5WQUwgaGVyZS4KCkFkZGl0aW9uYWxseSwgaWYgdGhlIHN5c2Nv
bi1hY3NwY2llLXR4LXJ4IHByb3BlcnR5IGlzIG1pc3NpbmcgKHdoaWNoIGlzCmV4cGVjdGVkIG9u
IG9sZGVyIHZhbGlkIGRldmljZSB0cmVlcyksIGl0IHJldHVybnMgLUVOT0VOVCwgbGVhZGluZyB0
bwp3YXJuaW5nIHNwYW0uCgpJbiB0aGUgY2FsbGVyOgoKZHJpdmVycy9waHkvdGkvcGh5LXRpLXBp
cGUzLmM6dGlfcGlwZTNfcHJvYmUoKSB7CiAgICAgICAgLi4uCiAgICAgICAgaWYgKHBoeS0+bW9k
ZSA9PSBQSVBFM19NT0RFX1BDSUUpIHsKICAgICAgICAgICAgICAgIHJldCA9IHRpX3BpcGUzX2Fj
c3BjaWVfdHhfcnhfbW9kZShwaHkpOwogICAgICAgICAgICAgICAgaWYgKHJldCkKICAgICAgICAg
ICAgICAgICAgICAgICAgZGV2X3dhcm4oZGV2LCAiZmFpbGVkIHRvIHNldCBBQ1NQQ0llIFRYL1JY
IG1vZGVcbiIpOwogICAgICAgIH0KICAgICAgICAuLi4KfQoKQmVjYXVzZSB0aV9waXBlM19wcm9i
ZSgpIGlnbm9yZXMgdGhlIGVycm9yIGNvZGUsIGRvZXMgdGhpcyBtZWFuIHByb2JlCnN1Y2NlZWRz
IGV2ZW4gaWYgdGhlIHN5c2NvbiBwcm92aWRlciBkZWZlcnJlZD8KClRoaXMgY291bGQgbGVhZCB0
byBzaWxlbnQgaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24gZmFpbHVyZSBvbiBzeXN0ZW1zIHdoZXJl
CnN5c2NvbiBpcyBkZWZlcnJlZC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQxMTE4NDkuOTIwNDYtMS1kYXZpZC5vYmVyaG9s
bGVuemVyQHNpZ21hLXN0YXIuYXQ/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
