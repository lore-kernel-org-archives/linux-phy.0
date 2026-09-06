Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F71C79F99
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 12:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXE5gOgJDzt+wzUld6m6dZ2AaMqlBe1QSQzm0u+outY=; b=EUtyHXCAgTcsKs
	YDw6m8O9wO0oesZWdLXvL1zxusJPvoLZKyXzq9QNlokIu+dZbPXjbD/tlp8A3DvA+BVuUu/IAimDD
	2xmHRRaPGi2bw7gjMofd8k+7ve9BUEJua9Vz9R2BMQzgWqndr6+3gykO48JTndgKvjWoCnnIt5Yk6
	qofTW2rycybWMTI56pWVSnZwxBSDwdR1e5FadwdYKXgyr7Izu2Qb4DVn3vKbxZtoJs2x3dYSwdfgD
	gzmE8W/9P1Q1aZnxWF5OHiN6uWMshyQ1i9a9JiSPZ/LHDYMr8aMXO3W2XqUXHg0VKwmsw2KQe+Iue
	CNXtHlAYHJJoZ+YG68bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BXa-000000050da-2A59;
	Sun, 06 Sep 2026 12:00:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3BXZ-000000050dT-3FVp
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 12:00:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3FF09601DB;
	Sun,  6 Sep 2026 12:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1D71F00A3A;
	Sun,  6 Sep 2026 12:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788696002;
	bh=tpIg3TvddyiLXTXNM82gVxkqulczRwY8wSBX7Comeg0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UsEubW4kU2ekf9vKWh/ZY4sgGrsrnFcVX7FuXzMVH2oYxV/Ona0cnzi06Ji2mmJse
	 WMJzrfuTLtodLpdH9P8/1VjeSpEttlqEXMAcO9NOChGXAcqHjSrJlPIfEm5S7vf6ir
	 UgEnjVKfANCUWmm2q5WygRSbcv5ZslHPAi2WGZ+cAHB7yetFw3AxIoC8a6SCgOe4ax
	 zweei73jMa/+jMs1A/2IbOIaU/nvZhB9WaL+wq/joYHpVPF9DDWsEb80umk53UL+h/
	 n4v2cTIubh0xzLhtw9R5Zd6Z4WFKL4lQLDxBHrjDF7rCrIwXe9e4x5EJX9dZgmuXQe
	 PR5Ikh0wVWbGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 5/5] media: qcom: camss: Use data-lanes starting at
 1 for new CSIPHY mode
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: media-ci@linuxtv.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-clk@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-5-f7bd68b5369f@linaro.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-0-f7bd68b5369f@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v16-5-f7bd68b5369f@linaro.org>
Date: Sun, 06 Sep 2026 12:00:01 +0000
Message-Id: <20260906120002.4A1D71F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIGludHJv
ZHVjZXMgYSBidWlsZCBmYWlsdXJlIGR1ZSB0byBhbiB1bmRlY2xhcmVkIGlkZW50aWZpZXIgYENT
STJfTUFYX0RBVEFfTEFORVNgIHVzZWQgaW4gdGhlIGJvdW5kcyBjaGVjay4gVGhlIGNvcnJlY3Qg
aWRlbnRpZmllciBpcyBsaWtlbHkgYFY0TDJfTUJVU19DU0kyX01BWF9EQVRBX0xBTkVTYC4KLS0K
CmNvbW1pdCA2NDEyY2I4NzAxOWJhZGFhMjY4NDM5Mzc0Nzk2M2M1NDQ5OTc2NmJjCkF1dGhvcjog
QnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgptZWRpYTogcWNv
bTogY2Ftc3M6IFVzZSBkYXRhLWxhbmVzIHN0YXJ0aW5nIGF0IDEgZm9yIG5ldyBDU0lQSFkgbW9k
ZQoKVGhpcyBwYXRjaCB1cGRhdGVzIHRoZSBDU0lQSFkgbG9naWMgdG8gYWNjb21tb2RhdGUgYSBj
aGFuZ2Ugd2hlcmUgZGF0YS1sYW5lCmluZGV4aW5nIHN0YXJ0cyBhdCAxIGluc3RlYWQgb2YgMCBm
b3IgbmV3IENTSVBIWSBtb2Rlcy4gSXQgaW50cm9kdWNlcyBhCmxhbmVfYmFzZSBvZmZzZXQgdG8g
ZHluYW1pY2FsbHkgbm9ybWFsaXplIHRoZSBsYW5lIGluZGljZXMgZGVwZW5kaW5nIG9uCndoZXRo
ZXIgdGhlIFBIWSBpcyBsZWdhY3kgb3IgbmV3LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IDg0MDk3ZDgyZDk5YzkuLjhhNGQ4YTIwNmNmMGQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwoKWyAuLi4gXQoK
PiBAQCAtNDc3Nyw3ICs0Nzc4LDE0IEBAIHN0YXRpYyBpbnQgY2Ftc3NfcGFyc2VfZW5kcG9pbnRf
bm9kZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+ICAJZm9y
IChpID0gMDsgaSA8IGxuY2ZnLT5udW1fZGF0YTsgaSsrKSB7Cj4gLQkJbG5jZmctPmRhdGFbaV0u
cG9zID0gbWlwaV9jc2kyLT5kYXRhX2xhbmVzW2ldOwo+ICsJCXU4IGxhbmUgPSBtaXBpX2NzaTIt
PmRhdGFfbGFuZXNbaV07Cj4gKwo+ICsJCWlmIChsYW5lIDwgbGFuZV9iYXNlIHx8IGxhbmUgLSBs
YW5lX2Jhc2UgPj0gQ1NJMl9NQVhfREFUQV9MQU5FUykgewoKW1NldmVyaXR5OiBMb3ddCklzIHRo
ZXJlIGEgbWlzc2luZyBkZWNsYXJhdGlvbiBmb3IgQ1NJMl9NQVhfREFUQV9MQU5FUyBoZXJlPyBU
aGlzIGxvb2tzIGxpa2UgaXQKbWlnaHQgY2F1c2UgYSBidWlsZCBmYWlsdXJlLiBTaG91bGQgdGhp
cyBiZSBWNEwyX01CVVNfQ1NJMl9NQVhfREFUQV9MQU5FUwppbnN0ZWFkPwoKPiArCQkJZGV2X2Vy
cihkZXYsICJpbnZhbGlkIGRhdGEtbGFuZSAldVxuIiwgbGFuZSk7Cj4gKwkJCXJldHVybiAtRUlO
VkFMOwo+ICsJCX0KPiArCj4gKwkJbG5jZmctPmRhdGFbaV0ucG9zID0gbWlwaV9jc2kyLT5kYXRh
X2xhbmVzW2ldIC0gbGFuZV9iYXNlOwo+ICAJCWxuY2ZnLT5kYXRhW2ldLnBvbCA9IG1pcGlfY3Np
Mi0+bGFuZV9wb2xhcml0aWVzW2kgKyAxXTsKPiAgCX0KPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwNi1iNC1saW51eC1uZXh0
LTI1LTAzLTEzLWR0c2kteDFlODAxMDAtY2Ftc3MtdjE2LTAtZjdiZDY4YjUzNjlmQGxpbmFyby5v
cmc/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
