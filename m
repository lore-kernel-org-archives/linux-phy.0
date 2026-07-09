Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEAEC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 07:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dhk7+yuP9sZTNJ+5nsjtZM/NdWpU86k+2N6A/3o2+Hw=; b=1RDxtQQ06yabAT
	gy3ahtIb/YO3hojqXMINAid3V91wkngPwTm2Tyh2IGJsA5SeeFIH17BWp+jo6Ndq0SmOt3OxUNzV/
	IKbss4/NZQd5H40Kq+svzNpzRnUnqZ9I4PUpNfDsrf5T7nwXj44hMzAy6w8Vx8L6k2ihZ7IaQeKYL
	lbxMWrfV74e8vEb0NfXQw91pepugf/2vQOTdOSAA7YC8X4hV1nY3DdVKxA+v1Z8bTT+Eh1IniWcfZ
	8RwIYK2cZOfRPMmdbQcbf8dWy/9EDlnFaVDvXJ20BC6Fj4cYRMB8E/AvSUY0G7jnogFu9ZhPO/pWd
	BM4+QA9mzU2rNagksqBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whimY-00000001EOE-1K1k;
	Thu, 09 Jul 2026 07:02:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whimX-00000001EO6-1qnx
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 07:02:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 22FDA43CE8;
	Thu,  9 Jul 2026 07:02:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A296A1F000E9;
	Thu,  9 Jul 2026 07:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783580569;
	bh=NzIqQ2D9aMXkHds0tnuIATjx2bm6szjPYh6ykWpAR+E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g+w9AViZIaK6t2//w6EtsvDN7Guhk9/iX7y8SI6IoPE4JkIkM49nUO0hMPa/sKxtl
	 XoH/kpvbvzGBDd5dKAkv+VefyBwpfHJrR784n6yiRNLcP860vNBQPlR8SbYC0MEiTc
	 5WkEZd0c+B22TwO75sJP7jhlr3DYWQ2pkKs8Qsjsz/XYeO5lvcVUjS0Jz3g0AuxDPp
	 SYCHD/MWIxg8W3s1nVa2q18UUhE9lQmQoFmtNBGAOW9yhz2x4S5uxXx92Hz2JRlMa8
	 NBoPMet5CwS5y7WS4fI5C6fpPPpsyewRZzEfPQXvbCKX+PrzvrLKTE4+k4sdYPWUtU
	 ooAvyum94o3Rw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] PCI: qcom: enable Link retain logic for Hamoa
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260709-link_retain-v3-4-81a9d187bb61@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
 <20260709-link_retain-v3-4-81a9d187bb61@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 07:02:48 +0000
Message-Id: <20260709070248.A296A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByb2JlIGRlZmVycmFs
IGxlYWtzIFBIWSBwb3dlci1vbiwgY2xvY2ssIGFuZCByZWd1bGF0b3IgZW5hYmxlIGNvdW50cyB3
aGVuIGBsaW5rX3JldGFpbmAgaXMgYWN0aXZlLgotLQoKLS0tIFBhdGNoIFs0XTogW1BBVENIIHYz
IDQvNF0gUENJOiBxY29tOiBlbmFibGUgTGluayByZXRhaW4gbG9naWMgZm9yIEhhbW9hIC0tLQpj
b21taXQgYTgwZWEyMmFjY2M1ZTkyZTMwOWI4MGU3OTMzZTBmMGJhYzg4YzllYwpBdXRob3I6IEty
aXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29t
PgoKUENJOiBxY29tOiBlbmFibGUgTGluayByZXRhaW4gbG9naWMgZm9yIEhhbW9hCgpUaGUgSGFt
b2EgcGxhdGZvcm0gc3VwcG9ydHMga2VlcGluZyB0aGUgUENJZSBsaW5rIGFjdGl2ZSBhY3Jvc3MK
Ym9vdGxvYWRlciBhbmQga2VybmVsIGhhbmRvZmYuIFRvIHRha2UgYWR2YW50YWdlIG9mIHRoaXMs
IGludHJvZHVjZSBhCnNwZWNpZmljIGNvbmZpZ3VyYXRpb24gKGNmZ194MWU4MDEwMCkgd2l0aCBs
aW5rX3JldGFpbiA9IHRydWUgYW5kCnVwZGF0ZSB0aGUgZGV2aWNlIG1hdGNoIHRhYmxlIHRvIHVz
ZSBpdC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBpbmRleCA3N2Qy
ZDk4OWU5ZGE1Li4wYjM0NWExNmY0Y2Y2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMKPiBAQCAtMTY3MSw2ICsxNjcxLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cWNvbV9wY2llX2NmZyBjZmdfc2M4MjgweHAgPSB7Cj4gIAkubm9fbDBzID0gdHJ1ZSwKPiAgfTsK
PiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfeDFlODAxMDAgPSB7
Cj4gKwkub3BzID0gJm9wc18xXzIxXzAsCj4gKwkubm9fbDBzID0gdHJ1ZSwKPiArCS5saW5rX3Jl
dGFpbiA9IHRydWUsCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgZW5hYmxpbmcgbGlua19yZXRhaW4g
aGVyZSBjYXVzZSBhIHJlc291cmNlIGxlYWsgZHVyaW5nIHByb2JlIGRlZmVycmFsPwoKSW4gcWNv
bV9wY2llX2hvc3RfaW5pdCgpLCBpZiBhbiBpbml0aWFsaXphdGlvbiBzdGVwIHJldHVybnMgLUVQ
Uk9CRV9ERUZFUiBhbmQKbGlua19yZXRhaW4gaXMgdHJ1ZSwgdGhlIGVycm9yIHBhdGggcmV0dXJu
cyBlYXJseToKCmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jOnFjb21fcGNp
ZV9ob3N0X2luaXQoKSB7CiAgICAuLi4KZXJyX3B3cmN0cmxfZGVzdHJveToKICAgIGlmIChwcC0+
bGlua19yZXRhaW4gJiYgcmV0ID09IC1FUFJPQkVfREVGRVIpCiAgICAgICAgcmV0dXJuIHJldDsK
ICAgIC4uLgp9CgpUaGlzIGJ5cGFzc2VzIGVycl9kaXNhYmxlX3BoeSBhbmQgZXJyX2RlaW5pdCB3
aGljaCB3b3VsZCBiYWxhbmNlIHRoZQpyZXNvdXJjZSBjb3VudHMuCgpTaW5jZSBxY29tX3BjaWVf
aW5pdF8yXzdfMCgpIHVuY29uZGl0aW9uYWxseSBlbmFibGVzIHRoZSByZWd1bGF0b3JzIGFuZApj
bG9ja3MsIGFuZCBxY29tX3BjaWVfcGh5X3Bvd2VyX29uKCkgZW5hYmxlcyB0aGUgUEhZcywgd29u
J3QgdGhlc2UgcmVmZXJlbmNlCmNvdW50cyBiZSBsZWFrZWQgb24gZWFjaCBkZWZlcnJhbCByZXRy
eT8gV2hlbiB0aGUgZHJpdmVyIGlzIGV2ZW50dWFsbHkKcmVtb3ZlZCwgZGVpbml0KCkgd2lsbCBv
bmx5IGRlY3JlbWVudCB0aGVtIG9uY2UsIGxlYXZpbmcgdGhlIHJlc291cmNlcwpwZXJtYW5lbnRs
eSBlbmFibGVkLgoKSXMgdGhlcmUgYSB3YXkgdG8gYmFsYW5jZSB0aGVzZSByZWZlcmVuY2UgY291
bnRzIGR1cmluZyBhIHByb2JlIGRlZmVycmFsCndoZW4gbGlua19yZXRhaW4gaXMgYWN0aXZlPwoK
PiArfTsKPiArCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzA5LWxpbmtfcmV0YWluLXYzLTAtODFhOWQxODdiYjYx
QG9zcy5xdWFsY29tbS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
