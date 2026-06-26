Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19880C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fL+GXkEPQo74fcO59xvbXQb8yi8I0WgQ+mdJ+iFNdJo=; b=bYxCpfyUPiUaj7
	qZxfgjStLDfxSdZt++0zpg216BXyWRaOrFZKBRZtolLU3eF+Tx2T7y0RZs0jLTWjxHVO/uQt6bNbC
	JlqM+WCBzbCBRVJFujyj16C7qpybMVC8t2EJvodqNjwHWZuaLMUcWMMcQBmHMlIAEfavSpfmB6+XW
	Adc5B5YIUUAxInvE2p7SHMRgMcpnJnnh/UdtDVcBBng2LtqXuILjv6An6Gelzrrsoa2DMJseJIMHD
	0GVAOAwXsaXthT2lSW2B7owUYv3hO1JPiQgf+1RSF+cHqR9LRMRQuM568ijWFQIuimz/4Cw5/oO5x
	7QrRE08j9K2rvf2UMz9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDuT-0000000Bthy-3VCI;
	Fri, 26 Jun 2026 21:16:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDuS-0000000Btho-2ncN
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:16:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FDE2600AA;
	Fri, 26 Jun 2026 21:16:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A1B61F000E9;
	Fri, 26 Jun 2026 21:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508583;
	bh=Oz0hQpoVBgE1fWYgGGRu9XbMpIBs/XffulZYwbOOWDw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z1LKzZO6Mqsw9ZDL6kI3de5mxqdLtg3iqiccHISguaTyv+Xxwf9i9RQXLtrVn3rM/
	 Tms9YQkA9HsErjZUGUDyDaBHqCxaJTkAzxQ8h0D7jdrMUjz3iO9dLyJDi5rHC/UOOW
	 1mVqsD/SQnxzXau+s6ejjWtD+7NDOS8spGJDiQ5AjzSy6sCL7baMVelqtq46tTCcuc
	 aY/rnFk02eJBnePsdw4TRApy+8p2nETFTYnKtoxK/YibO3GlcIwxj6HffNZ+3mGTlo
	 sC66kt8wrViXSM6KwyfmKTcTjuuWoALFaPk9AtVXnduGESYaDAWCXFqwknoW8QTy6G
	 QHa1K7NQsGV/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 03/29] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-3-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-3-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:16:23 +0000
Message-Id: <20260626211623.7A1B61F000E9@smtp.kernel.org>
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
IFtIaWdoXSBVU0IzIHJldmVyc2Ugb3JpZW50YXRpb24gY2hhbmdlcyBhcmUgbmV2ZXIgcHJvZ3Jh
bW1lZCBpbnRvIHRoZSBQSFkgaGFyZHdhcmUgYmVjYXVzZSBgcmtfdWRwaHlfb3JpZW5fc3dfc2V0
YCB1cGRhdGVzIHRoZSBzb2Z0d2FyZSBzdHJ1Y3RzIGJ1dCBmYWlscyB0byB0cmlnZ2VyIGEgaGFy
ZHdhcmUgcmUtaW5pdGlhbGl6YXRpb24uCi0tCgpjb21taXQgMmUwNDQ4MjA3MTg2ZDBhNDU2MjY2
NTY5MGNmZGFkNGFiZDA1MTA1OQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4u
cmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IERvIG5vdCBsb3Nl
IFVTQjMgUEhZIHN0YXR1cwoKVGhpcyBjb21taXQgZml4ZXMgYW4gaXNzdWUgd2hlcmUgdGhlIFBI
WSBzdGF0dXMgaXMgbG9zdCBkdXJpbmcgYSBEaXNwbGF5UG9ydAptb2RlIGNoYW5nZS4gSXQgZW5z
dXJlcyB0aGF0IHRoZSB0cmFja2luZyBpbmZvcm1hdGlvbiBmb3IgVVNCMyBpcyBwcmVzZXJ2ZWQK
c28gdGhlIFBIWSBpc24ndCBpbmFkdmVydGVudGx5IGRpc2FibGVkIHdoZW4gRFAgaXMgdG9nZ2xl
ZCBvZmYuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5k
ZXggYTVmZmRmN2E2ZTc2Yi4uMTJkZmRkNDcwYTc4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEwMDgsNyArMTAwOCw2IEBAIHN0YXRpYyBp
bnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAg
CQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSk7Cj4gIAkJdWRwaHktPm1v
ZGVfY2hhbmdlID0gZmFsc2U7Cj4gIAl9IGVsc2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewo+
IC0JCXVkcGh5LT5zdGF0dXMgPSBVRFBIWV9NT0RFX05PTkU7CgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyBrZWVwaW5n
IHRoZSBVU0IgbW9kZSBiaXQKaW4gdGhlIHN0YXR1cyBmbGFnIHByZXZlbnQgVVNCMyByZXZlcnNl
IG9yaWVudGF0aW9uIGNoYW5nZXMgZnJvbSBiZWluZwpwcm9ncmFtbWVkIGludG8gdGhlIFBIWSBo
YXJkd2FyZT8KCldoZW4gYSBVU0ItQyBjYWJsZSBpcyBmbGlwcGVkLCB0aGUgb3JpZW50YXRpb24g
c3dpdGNoIGhhbmRsZXIgCnJrX3VkcGh5X29yaWVuX3N3X3NldCgpIHVwZGF0ZXMgdGhlIHNvZnR3
YXJlIHN0YXRlIGFuZCByZXF1ZXN0cyBhIHJlLWluaXQ6CgogICAgdWRwaHktPnBoeV9uZWVkc19y
ZWluaXQgPSB0cnVlOwogICAgdWRwaHktPmZsaXAgPSBmbGlwcGVkOwogICAgcmtfdWRwaHlfc2V0
X3R5cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBoeSk7CgpMYXRlciwgcmtfdWRwaHlfdHlwZWNfbXV4
X3NldCgpIGV2YWx1YXRlcyB3aGV0aGVyIHRvIGFwcGx5IHRoaXMgdG8gdGhlCmhhcmR3YXJlLiBI
b3dldmVyLCBpdCBvbmx5IGNhbGxzIHJrX3VkcGh5X3Bvd2VyX29uKCkgaWYgdGhlIFVTQiBtb2Rl
IGlzIG5vdAphbHJlYWR5IHNldCBpbiB0aGUgc3RhdHVzIGZsYWc6CgogICAgaWYgKC4uLiAmJiAh
KHVkcGh5LT5zdGF0dXMgJiBVRFBIWV9NT0RFX1VTQikgJiYgLi4uKQogICAgICAgIHJldHVybiBy
a191ZHBoeV9wb3dlcl9vbih1ZHBoeSwgVURQSFlfTU9ERV9VU0IpOwoKU2luY2UgRFdDMyBrZWVw
cyB0aGUgUEhZIGVuYWJsZWQgcGVybWFuZW50bHkgYW5kIHRoZSBzdGF0dXMgZmxhZyByZXRhaW5z
CnRoZSBVU0IgbW9kZSwgaXQgYXBwZWFycyBya191ZHBoeV9wb3dlcl9vbigpIGlzIG5ldmVyIGlu
dm9rZWQgdG8gYXBwbHkgdGhlCm5ldyBsYW5lIG1hcHBpbmcuCgpDb3VsZCB0aGlzIGNhdXNlIHRo
ZSBVU0IzIHBvcnQgdG8gc2lsZW50bHkgZmFpbCB3aGVuIHBsdWdnZWQgaW4gcmV2ZXJzZQpvcmll
bnRhdGlvbiwgc2luY2UgdGhlIGhhcmR3YXJlIGlzIG5ldmVyIHJlY29uZmlndXJlZD8KCj4gIAkJ
aWYgKHVkcGh5LT5tb2RlID09IFVEUEhZX01PREVfRFApCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRf
ZGlzYWJsZSh1ZHBoeSwgdHJ1ZSk7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjYtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12
OC0wLTQ3ZjY4Mjk4Nzg5NUBjb2xsYWJvcmEuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
