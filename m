Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66758C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 21:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR1mfSrHsikyQtfBi23blX+YzB7rlOOYe84ZQe5ShF4=; b=3ajPfGwV9UbZ2A
	zYh035KpEANm7mHocUIP68mBYutwCXwJGTdeJGsNrGvx9PKBug21LIob9HoQcL96WJFfDEOrV3uNU
	ezX6UUieBCXAJsdYIajf78kFIIzIa1tg/Elp3B65c9eidVZSpisfzO1lp2FPy44opxeVd2QRRR1h6
	qDQBZe7G09W6+8AGvxWxXHF86y6YVQcLHkTerNT44qIha2KZNgWg9FH7E80gaRU8vM1zf0oLAocBe
	2zFsPuQGtnlH+DpCE82hGZPZgHwv5dwkOLl3vLJaQ7aq8i4ePblrVU51vWyQj0gN0QS0AID6JO7I8
	IwA3Tm5qLb5fEHnQrwIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x19Xz-0000000AXcf-3Q0e;
	Mon, 31 Aug 2026 21:28:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x19Xy-0000000AXcN-2nFx
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 21:28:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C6C5402EC;
	Mon, 31 Aug 2026 21:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CED7A1F00A3D;
	Mon, 31 Aug 2026 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788211686;
	bh=Odu2HNFyAIygSQxxZLEKw/2kmbUw+Hljbd2Sv9tAoP0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MLBAWxfKLiieYxmeXewGmaK3Q5ifBh1km3ocg2D4Ha8Xlv4jw20rJhoGJbh6cSbxY
	 U8jCNqhYRJcAvB5sqbhco6ShRYDl4UXpIqif5E2C+bmIZUvPn8Zj1T8YHRB8Onp5Aa
	 Cv6KgboThcPsm0ESrHyLiG40K6pc9oEhON2RQVbRVag1tVWkqll7N4FOa2O0UPpfQn
	 tckP7muHBx5fdevAozwwEWcBjmUXMe8mZmVPGc6QwEHCGwEyMAd5tM8jS9l8Rjj+sq
	 cBafBN+T1pu62WxD5QfmtN7E/9flXBmGINJh+UATlIokqEAVVz/tKTLsek6YbhdSOX
	 NN2OUNiaOGMsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2 3/8] arm64: tegra: Enable XUSB host function on
 Jetson AGX Thor
To: "Wayne Chang" <waynec@nvidia.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260831185835.3732707-4-waynec@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
 <20260831185835.3732707-4-waynec@nvidia.com>
Date: Mon, 31 Aug 2026 21:28:05 +0000
Message-Id: <20260831212805.CED7A1F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb3JyZWN0IHVz
ZSBvZiB0aGUgR0lDX1NQSSBtYWNybyBmb3IgR0lDdjMgRXh0ZW5kZWQgU1BJcyAoRVNQSXMpLCBs
ZWFkaW5nIHRvIGludmFsaWQgaGFyZHdhcmUgSVJRIG1hcHBpbmcgYW5kIGtlcm5lbCB3YXJuaW5n
cyBhdCBib290LgotLQoKY29tbWl0IDI1ZjdiNjkyYjAwOGQ2YWM0ZGQ5YmNhYjJmOGFlMDc0YjFj
NTk4MDEKQXV0aG9yOiBXYXluZSBDaGFuZyA8d2F5bmVjQG52aWRpYS5jb20+Cgphcm02NDogdGVn
cmE6IEVuYWJsZSBYVVNCIGhvc3QgZnVuY3Rpb24gb24gSmV0c29uIEFHWCBUaG9yCiAgICAKRW5h
YmxlIFhVU0IgaG9zdCBhbmQgcGFkIGNvbnRyb2xsZXIgb24gSmV0c29uIEFHWCBUaG9yLgoKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyNjQuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMjY0LmR0c2kKPiBpbmRleCAwMTMyMjhhODE3
MjM3Li5lNTliMWIwYTViOTI1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnZp
ZGlhL3RlZ3JhMjY0LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdy
YTI2NC5kdHNpCj4gQEAgLTQxNDcsNiArNDE0NywxNjAgQEAgcGNpQDg0ODAwMDAgewo+ICAJCQlu
dmlkaWEsYnBtcCA9IDwmYnBtcCA1PjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9
Owo+ICsKPiArCQl4dXNiX3BhZGN0bDogcGFkY3RsQDg2ODAwMDAgewo+ICsJCQljb21wYXRpYmxl
ID0gIm52aWRpYSx0ZWdyYTI2NC14dXNiLXBhZGN0bCI7Cj4gKwkJCXJlZyA9IDwweDAwIDB4ODY4
MDAwMCAweDAwIDB4MjAwMDA+LAo+ICsJCQkgICAgICA8MHgwMCAweDg2YTAwMDAgMHgwMCAweDEw
MDAwPjsKPiArCQkJcmVnLW5hbWVzID0gInBhZGN0bCIsICJhbyI7Cj4gKwkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSA0MTAxIElSUV9UWVBFX0xFVkVMX0hJR0g+OwoKW1NldmVyaXR5OiBNZWRpdW1d
CkRvZXMgdGhpcyB1c2Ugb2YgR0lDX1NQSSBmb3IgSU5USUQgNDEwMSBsZWFkIHRvIGFuIGluY29y
cmVjdCBoYXJkd2FyZSBJUlEKbWFwcGluZz8KClRoZSBHSUN2MyBEVCBiaW5kaW5ncyBsaW1pdCBH
SUNfU1BJIGluZGljZXMgdG8gMC05ODcuIER1cmluZyBzeXN0ZW0gYm9vdCwKd2hlbiBwYXJzaW5n
IHRoZSBkZXZpY2UgdHJlZSB0byBzZXQgdXAgaW50ZXJydXB0cyBmb3IgcGFkY3RsQDg2ODAwMDAs
IGluZGljZXMKZ3JlYXRlciB0aGFuIDk4NyBlbWl0IGEgd2FybmluZyBhbmQgbWFwIHRvIGluZGV4
ICsgMzIsIHdoaWNoIHdvdWxkIGNvbXB1dGUgdG8KNDEzMyBpbnN0ZWFkIG9mIDQxMDEuCgpTaG91
bGQgdGhpcyB1c2UgdGhlIEdJQ19FU1BJIG1hY3JvIHdpdGggYSAwLWJhc2VkIGluZGV4IChlLmcu
LCBHSUNfRVNQSSA1KSB0bwpjb3JyZWN0bHkgc3BlY2lmeSB0aGUgRVNQST8KClsgLi4uIF0KCj4g
KwkJdXNiQGFhMTAwMDAgewo+ICsJCQljb21wYXRpYmxlID0gIm52aWRpYSx0ZWdyYTI2NC14dXNi
IjsKPiArCQkJcmVnID0gPDB4MDAgMHhhYTEwMDAwIDB4MDAgMHg0MDAwMD4sCj4gKwkJCSAgICAg
IDwweDAwIDB4YWEwMDAwMCAweDAwIDB4MTAwMDA+LAo+ICsJCQkgICAgICA8MHgwMCAweGFhNTAw
MDAgMHgwMCAweDEwMDAwPjsKPiArCQkJcmVnLW5hbWVzID0gImhjZCIsICJmcGNpIiwgImJhcjIi
Owo+ICsKPiArCQkJaW50ZXJydXB0cy1leHRlbmRlZCA9IDwmZ2ljIEdJQ19TUEkgOTUyIElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCQkgIDwmZ2ljIEdJQ19TUEkgNDA5NiBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKCltTZXZlcml0eTogTWVkaXVtXQpTaW1pbGFybHksIGRvZXMgdGhpcyBtYXAg
dG8gdGhlIHdyb25nIGhhcmR3YXJlIGludGVycnVwdCAoNDEyOCBpbnN0ZWFkIG9mCjQwOTYpIGR1
ZSB0byB0aGUgdXNlIG9mIEdJQ19TUEkgZm9yIGFuIEVTUEk/CgpUaGlzIHdpbGwgbGlrZWx5IHRy
aWdnZXIgYSAiU1BJIDQwOTYgb3V0IG9mIHJhbmdlICh1c2UgRVNQST8pIiB3YXJuaW5nIGR1cmlu
Zwpib290IHdoZW4gcGFyc2luZyB0aGUgdXNiQGFhMTAwMDAgbm9kZSwgYW5kIGNvdWxkIGJyZWFr
IFVTQiBmdW5jdGlvbmFsaXR5LgoKU2hvdWxkIHRoaXMgdXNlIEdJQ19FU1BJIDAgaW5zdGVhZD8K
Cj4gKwkJCQkJCSAgPCZwbWMgNzkgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkJCSAgPCZw
bWMgODAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODMxMTg1ODM1LjM3MzI3MDctMS13YXlu
ZWNAbnZpZGlhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
