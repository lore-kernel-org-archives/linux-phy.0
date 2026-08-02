Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 783E2C55171
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 14:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NRjY0ToLvx1ofz/zaK8glrRwvtItCNd6F6Cvsatcdc=; b=vA+Q/1B7xKyTjU
	Da1Fs1ku30iPvBxYuQBOIdVYPvV910JDmag4MGyJp2C/4ixVj9nJf2zL+0prflZ0t93e1jV1unwO+
	GIkuF5tXDTcJakj44Cg4rTlbWr4A2QrF+fgh28HSD/URoSFAxPnI1dzEECfgYCPz6f1yUJU+1N4E9
	EOpmxOjH12FRkxhIdQ4vNYmqJbRWCl2g9aW9CvNzjT63aR8WITslMlc/Kz/iiuS53DrRYKn/abkzM
	tHjK75694T68PwimujDA6aEs7yxuAb5n73zpDPtDVmX7ST90w5l0/sgZ4pvk2Nw58BFI6zEz1ESES
	+7z3O/3e1q67RbrVv6vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8I-0000000FiBi-0e7s;
	Sun, 02 Aug 2026 14:25:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8G-0000000FiBE-46UW
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 14:25:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6938141FB8;
	Sun,  2 Aug 2026 14:25:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C9F31F00A3D;
	Sun,  2 Aug 2026 14:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785680740;
	bh=SmqZW0ePrOksqVVsyWw6+qGX0mB9t950hRwdl2vqUPU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mUrudIlYhDIRI8O7+DtKWCjKoJo4/kAOy6Q1Fysx9lpBM/+yt0u/wMERTXMbv/hOO
	 RQhipTQ1ke3y+6Xac6dRWMoUf11Mg363JtqCPKLbwszX0CPivfWVwIgNpExra+DD3q
	 YfvXGVWehKJp0u3xODgN7y7j1cAYfS4mvb2iJnSaorswZUEV+6JX/qwfXYbWPKoY0Q
	 /kBcSA7ThxIRA3g7NGXZWW2UoeLI+3tVGhKlR6nWhMLJwbRV50VyAq5SC/XQuuLQEV
	 uUS8PLqXSXAYsTXqc0O8SISnyqNkbdkS50GsfYNxhkAzyLCk072EaaXe2jj0RWa75j
	 me64j7NRqYyaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/10] dt-bindings: net: pcs: add
 rockchip,rk3568-xpcs binding
To: "Coia Prant" <coiaprant@gmail.com>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260801142244.679437-6-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-6-coiaprant@gmail.com>
Date: Sun, 02 Aug 2026 14:25:38 +0000
Message-Id: <20260802142539.3C9F31F00A3D@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgWFBDUyBp
bml0aWFsaXphdGlvbiBmb3IgUm9ja2NoaXAgRFdNQUMgKEhhcmR3YXJlIEluaXRpYWxpemF0aW9u
IEZhaWx1cmUpLgotIFtMb3ddIEludmFsaWQgdXNlIG9mICdtaW5pbXVtJyBhbmQgJ21heGltdW0n
IGNvbnN0cmFpbnRzIG9uIHRoZSAncmVnJyBwcm9wZXJ0eSBpbiB0aGUgc3Vibm9kZS4KLS0KCi0t
LSBQYXRjaCBbNF06IFtQQVRDSCB2MiAwNC8xMF0gZHQtYmluZGluZ3M6IG5ldDogcGNzOiBhZGQg
cm9ja2NoaXAscmszNTY4LXhwY3MgYmluZGluZyAtLS0KY29tbWl0IDM0MjdlNjFkZjcxYmZjYzhm
YjY2MWE4ZjEyMGFmMGY0YzE0MWYyMWIKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21h
aWwuY29tPgoKZHQtYmluZGluZ3M6IG5ldDogcGNzOiBhZGQgcm9ja2NoaXAscmszNTY4LXhwY3Mg
YmluZGluZwoKQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFN5
bm9wc3lzIERlc2lnbldhcmUKWFBDUyBpbnRlZ3JhdGVkIG9uIHRoZSBSb2NrY2hpcCBSSzM1Njgg
U29DLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9wY3Mvcm9ja2NoaXAtZHd4cGNzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcC1kd3hwY3MueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvcGNzL3JvY2tjaGlwLWR3eHBjcy55YW1sClsgLi4uIF0KPiArcGF0dGVyblByb3BlcnRp
ZXM6Cj4gKyAgIl5wY3MtbWlpQFswLTNdJCI6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRl
c2NyaXB0aW9uOiB8Cj4gKyAgICAgIE9uZSBvZiB0aGUgZm91ciBNSUkgcG9ydHMgb2YgdGhlIFhQ
Q1MuCj4gKyAgICAgIFRoZSBwb3J0IG51bWJlciBpcyBzcGVjaWZpZWQgYnkgdGhlIHJlZyBwcm9w
ZXJ0eSAoMC4uMykuCj4gKyAgICAgIFRoZSBwb3J0IGlzIGxpbmtlZCB0byBhbiBFdGhlcm5ldCBN
QUMgY29udHJvbGxlciB2aWEgdGhlCj4gKyAgICAgIHBjcy1oYW5kbGUgcHJvcGVydHkgaW4gdGhl
IE1BQydzIGRldmljZSB0cmVlIG5vZGUuCgpbU2V2ZXJpdHk6IEhpZ2hdCkhvdyBpcyB0aGUgcGNz
LWhhbmRsZSBwcm9wZXJ0eSBwYXJzZWQgYnkgdGhlIFJvY2tjaGlwIGRyaXZlciBpbiBwcmFjdGlj
ZT8KCldpdGggdGhlIGdlbmVyaWMgcGNzLWhhbmRsZSBwYXJzaW5nIGxvZ2ljIHJlbW92ZWQgZnJv
bSBzdG1tYWNfcGNzX3NldHVwKCkgaW4KZmF2b3Igb2YgdGhlIHBsYXRmb3JtLXNwZWNpZmljIHBj
c19pbml0IGNhbGxiYWNrOgoKZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvc3Rt
bWFjX21kaW8uYzpzdG1tYWNfcGNzX3NldHVwKCkgewoJaWYgKCFwcml2LT5wbGF0LT5wY3NfaW5p
dCkKCQlyZXR1cm4gMDsKCglyZXQgPSBwcml2LT5wbGF0LT5wY3NfaW5pdChwcml2KTsKfQoKRG9l
cyB0aGUgUm9ja2NoaXAgRFdNQUMgZHJpdmVyIHByb3ZpZGUgdGhpcyBjYWxsYmFjaz8gSWYgbm90
LCBpdCBzZWVtcwpzdG1tYWNfcGNzX3NldHVwKCkgd2lsbCBzaWxlbnRseSByZXR1cm4gMCB3aXRo
b3V0IHBhcnNpbmcgdGhlIHBjcy1oYW5kbGUsCmxlYXZpbmcgdGhlIFhQQ1MgdW5pbml0aWFsaXpl
ZCBhbmQgYnJlYWtpbmcgdGhlIFNHTUlJL1FTR01JSSBzdXBwb3J0IGRlc2NyaWJlZApoZXJlLgoK
PiArCj4gKyAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICByZWc6Cj4gKyAgICAgICAgbWluaW11bTog
MAo+ICsgICAgICAgIG1heGltdW06IDMKCltTZXZlcml0eTogTG93XQpEb2VzIGFwcGx5aW5nIHNj
YWxhciBudW1lcmljIGNvbnN0cmFpbnRzIGxpa2UgbWluaW11bSBhbmQgbWF4aW11bSBkaXJlY3Rs
eSB0bwp0aGUgcmVnIHByb3BlcnR5IGNhdXNlIGEgbWV0YS1zY2hlbWEgdmFsaWRhdGlvbiBlcnJv
ciBkdXJpbmcKbWFrZSBkdF9iaW5kaW5nX2NoZWNrPwoKSW4gdGhlIGR0c2NoZW1hIGNvcmUsIHJl
ZyBldmFsdWF0ZXMgdG8gYW4gYXJyYXkgb2YgaW50ZWdlcnMgcmF0aGVyIHRoYW4gYQpzY2FsYXIs
IHNvIHN0cmljdCBKU09OIHNjaGVtYSB2YWxpZGF0aW9uIHR5cGljYWxseSBmYWlscyB3aXRoIGFu
IGVycm9yIHRoYXQKbWluaW11bSBpcyBub3QgYWxsb3dlZCBmb3IgYW4gYXJyYXkuIAoKQ291bGQg
dGhpcyBiZSBjb25zdHJhaW5lZCBhcyBhbiBhcnJheSBpdGVtIGluc3RlYWQsIG9yIG9taXR0ZWQg
ZW50aXJlbHkgaW4KZmF2b3Igb2YgbWF4SXRlbXM6IDEgc2luY2UgdGhlIG5vZGUgbmFtZSByZWdl
eCAoXnBjcy1taWlAWzAtM10kKSBhbHJlYWR5CmVuZm9yY2VzIHRoZSBwb3J0IG51bWJlcj8KCj4g
KyAgICAgICAgZGVzY3JpcHRpb246IHwKPiArICAgICAgICAgIE1JSSBwb3J0IG51bWJlciBvZiBQ
Q1MuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwODAxMTQyMjQ0LjY3OTQzNy0yLWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD00Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
