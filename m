Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80004C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZR1KYzKQ1oX4JWNIBubS6lXips4iQ7ao70UuLmw3EPM=; b=viirycFLeFvGtp
	L9o6CdYGR+1wAHpu7+55IoPWSu2ehyQKaqe2VWODrkK5rj2IXdOe5eUwEUO5QCrgPDYWYGtC6xHr6
	w8BosEuOq7bq/U8I1vcweC85sT+kat9lNvPF6NnAaEGRLLxpq/FkEqUUS7Oj9a9HCW9j2o0IcvHkN
	vkV4WLfE2x1nhQ0l1UZHzFeVrRjmuOpdaHU6lnHJA37La86H+OX8urK67VdW9T3J+CynwG/UpxjS6
	ADDOuD2qB1sM4LrXtOoOh2G+nMgvwzYaR3Cdfqw5ytNpHFapxSGrgakr4BNni9azXpgAwgts9xY3d
	QRYJNh1NLa3weHlxyiSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsOp-00000005NPQ-0qzD;
	Fri, 28 Aug 2026 08:57:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsOn-00000005NPE-32Nr
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:57:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 574A941713;
	Fri, 28 Aug 2026 08:57:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 755DA1F000E9;
	Fri, 28 Aug 2026 08:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787907441;
	bh=ENG5w0g3G7lGNkD5zTbR8/bu8fyRwvNz7f3KSXqkEu8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eGfDZNQk5AHUQnQK4Dtq4a7H6kVXCNOVQ4oiR6CwdTQm1x9S92F0a6LiZX+jogC2+
	 woXXujUia/BUuA6pEC2c6Jq9oBE6Ajv9d6e0wb86dciiFEqdxPp0hxsH2YR2QVrCBp
	 l0iJZnC+SL6GyLFRM7Aw8CBAzpi9ENezI64LKZMViI70IgejCmVygwBp80xUR/Cxr8
	 YW09En+kFPoWTLf86211sgpmdpfAD8R2iCuxdWrlrt/9AFQV4cI/QrB192RK5PDVyw
	 uwjcknjIoyhA9BMC9doFANUhqXwn2/ZjmHU7enoe/ERDd4K/AWj5fcwtRyS9lFwsSN
	 qMl+ZUrM55+pA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/7] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260828084737.565-5-kernel@airkyi.com>
References: <20260828084737.565-1-kernel@airkyi.com>
 <20260828084737.565-5-kernel@airkyi.com>
Date: Fri, 28 Aug 2026 08:57:20 +0000
Message-Id: <20260828085720.755DA1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgT0Ygbm9k
ZSByZWZlcmVuY2UgYWNxdWlzaXRpb24gZm9yIGV4cGxpY2l0bHkgcHJvdmlkZWQgZGV2aWNlX25v
ZGUgYG5wYCwgbGVhZGluZyB0byBhIHJlZmVyZW5jZSBjb3VudCB1bmRlcmZsb3cgd2hlbiB0aGUg
ZGV2aWNlIGlzIGRlc3Ryb3llZCBvciBpbml0aWFsaXphdGlvbiBmYWlscy4KLS0KCmNvbW1pdCBl
NTdhZTJmMDEyZGQ0Y2RjODIwZDUxMjU5YjJhMzdkNTg4ZDVjMzFkCkF1dGhvcjogQ2hhb3lpIENo
ZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKZHJtL2JyaWRnZTogYXV4OiBBZGQgZHJt
X2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkKClRoaXMgY29tbWl0IGFkZHMgYSBuZXcg
ZnVuY3Rpb24sIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpLAp3aGljaCBhbGxv
d3Mgc3BlY2lmeWluZyB0aGUgb2Zfbm9kZSBjb3JyZXNwb25kaW5nIHRvIHRoZSBicmlkZ2Ugd2hl
bgpjcmVhdGluZyBhIHNpbXBsZSBEUk0gYnJpZGdlIGRldmljZS4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9hdXgtYnJpZGdlLmMKPiBpbmRleCAxZWQyMWE4NzEzYmZkLi4wNmExNDY2ZjQ5YmQyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMKWyAuLi4gXQo+IEBAIC02Miw3ICs2Mywx
MCBAQCBpbnQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50KQo+
ICAJYWRldi0+ZGV2LnBhcmVudCA9IHBhcmVudDsKPiAgCWFkZXYtPmRldi5yZWxlYXNlID0gZHJt
X2F1eF9icmlkZ2VfcmVsZWFzZTsKPiAgCj4gLQlkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYo
JmFkZXYtPmRldiwgcGFyZW50KTsKPiArCWlmIChucCkKPiArCQlkZXZpY2Vfc2V0X25vZGUoJmFk
ZXYtPmRldiwgb2ZfZndub2RlX2hhbmRsZShucCkpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgbWlzcyBhIHJlZmVyZW5jZSBpbmNyZW1lbnQgZm9yIHRoZSBkZXZpY2Ugbm9kZT8KCkxvb2tp
bmcgYXQgZHJpdmVycy9iYXNlL2NvcmUuYywgZGV2aWNlX3NldF9ub2RlKCkgc2ltcGx5IGFzc2ln
bnMgdGhlCnBvaW50ZXIgd2l0aG91dCB0YWtpbmcgYSByZWZlcmVuY2UsIHdoZXJlYXMgZGV2aWNl
X3NldF9vZl9ub2RlX2Zyb21fZGV2KCkKaW50ZXJuYWxseSBjYWxscyBvZl9ub2RlX2dldChkZXYy
LT5vZl9ub2RlKS4KCj4gKwllbHNlCj4gKwkJZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCZh
ZGV2LT5kZXYsIHBhcmVudCk7Cj4gIAo+ICAJcmV0ID0gYXV4aWxpYXJ5X2RldmljZV9pbml0KGFk
ZXYpOwo+ICAJaWYgKHJldCkgewo+IAkJb2Zfbm9kZV9wdXQoYWRldi0+ZGV2Lm9mX25vZGUpOwoK
W1NldmVyaXR5OiBIaWdoXQpJZiBucCB3YXMgcHJvdmlkZWQgYW5kIGF1eGlsaWFyeV9kZXZpY2Vf
aW5pdCgpIGZhaWxzLCB3b24ndCB0aGlzIGRyb3AgYQpyZWZlcmVuY2UgdGhhdCB3YXMgbmV2ZXIg
YWNxdWlyZWQ/CgpUaGUgc2FtZSByZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IGFwcGVhcnMgdG8g
aGFwcGVuIGR1cmluZyBub3JtYWwgdGVhcmRvd24KaW4gZHJtX2F1eF9icmlkZ2VfcmVsZWFzZSgp
LCB3aGljaCB3aWxsIGFsc28gdW5jb25kaXRpb25hbGx5IGNhbGwKb2Zfbm9kZV9wdXQoKSBvbiBh
IG5vZGUgdGhhdCBkaWRuJ3QgaGF2ZSBpdHMgcmVmZXJlbmNlIGNvdW50IGluY3JlbWVudGVkCmhl
cmUuIFNob3VsZCBhbiBleHBsaWNpdCBvZl9ub2RlX2dldChucCkgYmUgdXNlZCBiZWZvcmUgYXNz
aWduaW5nIGl0PwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyODA4NDczNy41NjUtMS1rZXJuZWxAYWlya3lpLmNv
bT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
