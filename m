Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CAD9C88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 03:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYrgqXgAK6nfyndAd35ssmt+Q1KLVaZGGogNsE4+FcI=; b=pw4PHzQY5o1dlR
	3zUkgVT3rvSjpYpD64jkFVbC04c2+mOaWLqHZxqjXm9ZFHnMXDusJXogmjQ+mm6RcJAXDXkRhxBdW
	q5ZrZkb25WC3dt4us/fQzfuqGCWl9N7N7IpOVudFpJRjxLJgF/F+rJxt26Z9cinN23EfKwGueGTOB
	WbE8NYA0kiGh6FS2fDUMLG0+vIAezYEFSFhNSdTM6l4oSSzsjKgO2zHfmINdm/kCT/6VpJYd0O9fY
	kbyM2dp9p+hxzle5qKV2Bjz1vJmAiHzvEowxLA1WOSOsWaDpfIkd8Q1ekAy9m9kwf5gJyiWcOslO9
	V0WTsj1hUQexkEi/KhbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xLi-00000002Gft-3htI;
	Mon, 14 Sep 2026 03:27:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xLg-00000002Gfm-3yAa
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 03:27:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4FCEA60AA6;
	Mon, 14 Sep 2026 03:27:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9434D1F000FF;
	Mon, 14 Sep 2026 03:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789356434;
	bh=CIDbXVM2jeGQjO4zxD5leriOt7cLbGdO3SlDMTR1Ssg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LV7b/PzUJaEst7qWyVaYoRKcR3BRX+AOcDz5SqSfx7NDkF1D7nqB8DPL1aXWKQizN
	 jaQEkisfNN122Xfajpz4UIghBmRJOiin3oVxYH4YmOw17aNIjbkXUJ0iJ5zkt3xmUg
	 QY/BS2GQu5gqwTmZ3WCo6LKS7TCAD2vnq//0Gyx0gxhxfTGn6P5TUMYJrcVSA1Pu+u
	 Yq2TCZEvr6iOqyXFUxUNOcCVt4FOFo1Z/U3a+8RsmF9IytIpCqYKx17TrvTZkXPzel
	 gIrdD4N9qCMxIVKFE+A4HqP6Tc3XgY/pfTk5bUyIacWSReYYxSnZRZb6YCCNPfIerW
	 SfeX8NfLjQn2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260914031859.385224-4-a0987203069@gmail.com>
References: <20260914031859.385224-1-a0987203069@gmail.com>
 <20260914031859.385224-4-a0987203069@gmail.com>
Date: Mon, 14 Sep 2026 03:27:13 +0000
Message-Id: <20260914032713.9434D1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVW5jaGVja2VkIHJl
Z21hcF9yZWFkIHJldHVybiB2YWx1ZSBpbiBtYTM1X3JvbGVfc3dfZ2V0IGxlYWRzIHRvIHRoZSB1
c2Ugb2YgdW5pbml0aWFsaXplZCBzdGFjayBtZW1vcnksIHBvdGVudGlhbGx5IGxlYWtpbmcgMSBi
aXQgb2Yga2VybmVsIHN0YWNrIGRhdGEgdG8gdXNlcnNwYWNlLgotLQoKY29tbWl0IDkzYjFhZDhl
NjY0ODg5MTBkN2MyOTY0MjdjYjNhY2JlYzgxM2UwYTIKQXV0aG9yOiBKb2V5IEx1IDxhMDk4NzIw
MzA2OUBnbWFpbC5jb20+CgpwaHk6IG51dm90b246IHBoeS1tYTM1ZDEtdXNiMjogZXh0ZW5kIHRv
IGR1YWwtcG9ydCB3aXRoIE9URyBzdXBwb3J0CgpUaGlzIHBhdGNoIGV4dGVuZHMgdGhlIE51dm90
b24gTUEzNUQxIFVTQiAyLjAgUEhZIGRyaXZlciB0byBtYW5hZ2UgYm90aCBQSFkwCmFuZCBQSFkx
IHBvcnRzIHVzaW5nIGEgdW5pZmllZCBpbml0IGNhbGxiYWNrLiBJdCB1cGRhdGVzIHRoZSByZXNl
dCBhbmQgY2xvY2sKcG9sbGluZyBzZXF1ZW5jZXMgYW5kIGFkZHMgYSByZWFkLW9ubHkgVVNCIHJv
bGUgc3dpdGNoIGZvciBQSFkwIHRvIGV4cG9zZQp0aGUgYWN0aXZlIHJvbGUgdG8gdXNlcnNwYWNl
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYyBi
L2RyaXZlcnMvcGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmMKPiBpbmRleCA5YTQ1OWI3MDBl
ZDQ4Li4yYzYwYmUwZWU1MGY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L251dm90b24vcGh5
LW1hMzVkMS11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNi
Mi5jCgpbIC4uLiBdCgo+ICtzdGF0aWMgZW51bSB1c2Jfcm9sZSBtYTM1X3JvbGVfc3dfZ2V0KHN0
cnVjdCB1c2Jfcm9sZV9zd2l0Y2ggKnN3KQo+ICt7Cj4gKwlzdHJ1Y3QgbWEzNV91c2JfcGh5ICpw
ID0gdXNiX3JvbGVfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiArCXUzMiB2YWw7Cj4gKwo+ICsJ
cmVnbWFwX3JlYWQocC0+c3lzcmVnLCBNQTM1X1NZU19QV1JPTk9UUCwgJnZhbCk7Cj4gKwo+ICsJ
cmV0dXJuICh2YWwgJiBQV1JPTk9UUF9VU0JQMElEKSA/IFVTQl9ST0xFX0hPU1QgOiBVU0JfUk9M
RV9ERVZJQ0U7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpDb3VsZCB0aGlzIGxlYWQgdG8gdGhl
IHVzZSBvZiB1bmluaXRpYWxpemVkIHN0YWNrIG1lbW9yeT8gSWYgdGhlIGNhbGwgdG8KcmVnbWFw
X3JlYWQoKSBmYWlscywgdGhlIHZhcmlhYmxlIHZhbCB3aWxsIHJlbWFpbiB1bmluaXRpYWxpemVk
LiBXaGVuCmV2YWx1YXRlZCBpbiB0aGUgcmV0dXJuIHN0YXRlbWVudCwgaXQgd291bGQgcmV0dXJu
IGEgVVNCIHJvbGUgYmFzZWQgb24gc3RhY2sKZ2FyYmFnZS4KClNpbmNlIHRoaXMgcm9sZSBpcyBl
eHBvc2VkIHRvIHVzZXJzcGFjZSB2aWEgdGhlIHN5c2ZzIHJvbGUgc3dpdGNoIGludGVyZmFjZSwK
Y291bGQgdGhpcyBwb3RlbnRpYWxseSBsZWFrIG9uZSBiaXQgb2Yga2VybmVsIHN0YWNrIGluZm9y
bWF0aW9uIHRvIHVzZXJzcGFjZQppZiB0aGUgTU1JTyByZWFkIGhhcHBlbnMgdG8gZmFpbD8gU2hv
dWxkIHRoZSByZXR1cm4gdmFsdWUgb2YgcmVnbWFwX3JlYWQoKQpiZSBjaGVja2VkIGJlZm9yZSBl
dmFsdWF0aW5nIHZhbD8KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTQwMzE4NTkuMzg1MjI0LTEtYTA5ODcyMDMw
NjlAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
