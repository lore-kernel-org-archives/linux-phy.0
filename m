Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7566CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImNO3Y6veJJ4GdqZvJceva41kbecj1bALqJnpZ17/Dk=; b=MsAgWbO8h5Tqbe
	VTAucM+oH+ZFxuPNWP+ScrK7xaSXT9pNBPV71Fj9/pyd8756GcP/fG0qUepLpgw5Z7H5Dj5zdZVKX
	FZoRZ/o8BUEgBOTqEjHIKXGtA9CHV1cUqpdSxdu/qWvezNZmttljQBbou10NRB7uqTSnOwcWREE3h
	RCjnQ0IIqUTY+1XJ4adeI+R2DeQS8d0SHq+hXg+N7tlmH1GB/tM7NnmgQrX2m6VtiZTEKNlQImqg/
	ey9jmfrJURfWPiIlCfPbbmg0mwdDi2B9n4SmbL6f1oLsX70Nz3CIkvYTVK+v7YTBZPhtBzHPHAHIA
	a2Y3cPSSRPf1nEc/29vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCD4-00000008B4K-26eM;
	Thu, 01 Oct 2026 08:32:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCD3-00000008B48-21f0
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:32:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 386C941521;
	Thu,  1 Oct 2026 08:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DE081F00898;
	Thu,  1 Oct 2026 08:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790843529;
	bh=mpY7MydxNt5SFaoXiVAk9+VF27dF7m0gGzMCvNKGgWQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I+2CrSH/LpqRidQAyz2KJdfq89yXzRyEQ6Fpoy8+LI6Xh1ueYLo7zJqhOuc4caY3J
	 9P27DtK2kMTnLBHFL4qJaLTmcfAsxTIOiGKzRyb/hIkMi1cxFosJramru+TOKXU791
	 IVL9FCUC8tCXQnKHMJfulDPq2O9YBRFGq5EWSrRKehVjrR2KjTPbrEJTHBB1ACtydF
	 Y7WR3vwJrOSyJajiBaZ/PrTWZatIMZRKuhPOWAjsCrCChQio5MXQ/GOgGfuNhGdnPo
	 ztdzmr9g8FiitxfZvv2T0jTyW79bExhGZexr5Xt4/FIz9Dk1yz7LuDOypKClqMMJKM
	 vtnQlzuavbC6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 17/24] scsi: ufs: mediatek: Clean up logging prints
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20261001-mt8196-ufs-v13-17-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
 <20261001-mt8196-ufs-v13-17-60854adab6d9@collabora.com>
Date: Thu, 01 Oct 2026 08:32:08 +0000
Message-Id: <20261001083208.9DE081F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gdWZzOiAlcGUgb2Jm
dXNjYXRlcyBwb3NpdGl2ZSBlcnJvciBmcm9tIHVmc2hjZF91aWNfY2hhbmdlX3B3cl9tb2RlKCkK
LS0KCmNvbW1pdCAzYjhiYzcyMTZkY2UzZmEyYjQ1OGM0MDk1YjQzMmRlOTE0NDNmZDJjCkF1dGhv
cjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4K
CnNjc2k6IHVmczogbWVkaWF0ZWs6IENsZWFuIHVwIGxvZ2dpbmcgcHJpbnRzCgpUaGlzIHBhdGNo
IGNsZWFucyB1cCBsb2dnaW5nIHByaW50cyBpbiB0aGUgTWVkaWFUZWsgVUZTIGRyaXZlciBieQph
ZGp1c3RpbmcgdmVyYm9zaXR5IGxldmVscyBhbmQgdXNpbmcgdGhlICVwZSBmb3JtYXQgc3BlY2lm
aWVyIGZvcgpwcmludGluZyBlcnJvciBwb2ludGVycyBpbnN0ZWFkIG9mIGdlbmVyaWMgaW50ZWdl
ciBsb2dnaW5nLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsu
YyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCAyZWRmYThiZDg3N2Fm
Li44ZTVhMGEzOWNlNmNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jClsgLi4uIF0KPiBA
QCAtMTQxMSwxMCArMTQwMyw5IEBAIHN0YXRpYyBpbnQgdWZzX210a19wcmVfcHdyX2NoYW5nZShz
dHJ1Y3QgdWZzX2hiYSAqaGJhLAo+ICAJCXJldCA9IHVmc2hjZF91aWNfY2hhbmdlX3B3cl9tb2Rl
KGhiYSwKPiAgCQkJCQlGQVNUQVVUT19NT0RFIDw8IDQgfCBGQVNUQVVUT19NT0RFKTsKPiAgCj4g
LQkJaWYgKHJldCkgewo+IC0JCQlkZXZfZXJyKGhiYS0+ZGV2LCAiJXM6IEhTRzFCIEZBU1RBVVRP
IGZhaWxlZCByZXQ9JWRcbiIsCj4gLQkJCQlfX2Z1bmNfXywgcmV0KTsKPiAtCQl9Cj4gKwkJaWYg
KHJldCkKPiArCQkJZGV2X2VycihoYmEtPmRldiwgIiVzOiBIU0cxQiBGQVNUQVVUTyBmYWlsZWQ6
ICVwZVxuIiwKPiArCQkJCV9fZnVuY19fLCBFUlJfUFRSKHJldCkpOwoKW1NldmVyaXR5OiBNZWRp
dW1dCldoZW4gdWZzaGNkX3VpY19jaGFuZ2VfcHdyX21vZGUoKSBmYWlscyBkdWUgdG8gYSBwb3Np
dGl2ZSBVUE1DUlMgc3RhdHVzCmNvZGUgKGUuZy4sIFBXUl9SRU1PVEUgb3IgUFdSX0JVU1kpLCB0
aGUgcmV0dXJuZWQgcG9zaXRpdmUgdmFsdWUgaXMKZXZhbHVhdGVkIGJ5IGlmIChyZXQpIGFuZCBw
YXNzZWQgdG8gRVJSX1BUUigpLgoKQmVjYXVzZSB0aGUgJXBlIGZvcm1hdCBzcGVjaWZpZXIgY2hl
Y2tzIElTX0VSUigpLCB3aGljaCBldmFsdWF0ZXMgdG8gZmFsc2UKZm9yIHNtYWxsIHBvc2l0aXZl
IGludGVnZXJzLCBpdCB3aWxsIGZhbGwgYmFjayB0byBwcmludGluZyBhIGhhc2hlZCBwb2ludGVy
Cmluc3RlYWQgb2YgdGhlIG51bWVyaWMgZXJyb3IgdmFsdWUuIAoKV2lsbCB0aGlzIG9iZnVzY2F0
ZSB0aGUgYWN0dWFsIGVycm9yIGNvZGUgZHVyaW5nIFVGUyBsaW5rIGluaXRpYWxpemF0aW9uIG9y
CnBvd2VyIG1vZGUgY2hhbmdlIGZhaWx1cmVzPwoKPiAgCX0KPiAgCj4gIAkvKiBpZiBhbHJlYWR5
IGNvbmZpZ3VyZWQgdG8gdGhlIHJlcXVlc3RlZCBwd3JfbW9kZSwgc2tpcCBhZGFwdCAqLwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MTAwMS1tdDgxOTYtdWZzLXYxMy0wLTYwODU0YWRhYjZkOUBjb2xsYWJvcmEuY29tP3BhcnQ9MTcK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
