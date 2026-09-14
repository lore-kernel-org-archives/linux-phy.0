Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88F0C88E73
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 19:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STX3/XzGRmI7NP84JGQ5WSM7suudEQqHXIYI58mTYnA=; b=PGi/JEzC3C82C0
	bEyUK212/6m53AFWnFVaAZ6Rl1VpDOr7FC0hkHqgOp2DYHRZzTeZH3x1mllMSRhd9573nZhuwi7IB
	4ZZ5gQcvaAKFrMyD50lmk3eNr04o9Dcz1HZ0KLYH4tt1vJcS0t1YOiwufOqD7C7sRKsedjH+C0epE
	dU6htWC5PNoDjob15r8/adLucqwkf05971G2+aTvs0X8golcp2xLFSGFhaDZ0JrYhNhBt4I0eM2Fm
	gdNn2Ealxw/RetBfNs6D05MJmFkZIHIOtOujB1CBKqz1/wrv6zZW+U4LduAoX2kmc+6Ut6a6xVpHA
	ZRBQPrejV4IG9p2I5z5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbJ-00000004YJA-1eZd;
	Mon, 14 Sep 2026 19:44:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbH-00000004YIE-2Xkk
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 19:44:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 37E2D40488;
	Mon, 14 Sep 2026 19:44:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 979E11F00898;
	Mon, 14 Sep 2026 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789415063;
	bh=/ir94dy3AU1OanbTxeg78bmKUnOKTcIEX4RThMQ3HbM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b+olwNv7kQk8s5ajCpO5RtdWZ8rbmLjfpf8NkBS8PoK8qFp+NzhlQxV5lYNIMmTCH
	 NdHiGAB7v2vCf1+CfhnPxsqHRAHV9R5e2CrSb5n1fi2H1gf98cvxdLJEcwScyma6EL
	 3+AMbayay5qVGdBKiNR9ducA0UOdokb5rvf4QTJdXOfO/HAQLiOzic7d/5VxAVcJsX
	 y5oAKFyzZho/zmm02AFe5Mp3kI/QQCwJlOGghYJhQoNNWzOAzWpPOKNy2M0SaEruLa
	 m2J+7huT4DI5t01t/QG3VZYa4e12pgCPz2Q3mUDOSw6VfGiuGIDGDyYmuCfIwyH4Jm
	 vZpFj/Nk6eq+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260913185849.907479-6-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
 <20260913185849.907479-6-coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 19:44:22 +0000
Message-Id: <20260914194422.979E11F00898@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGB4cGNzYCBub2Rl
IG9taXRzIHRoZSBgcGh5c2AgYW5kIGBwaHktbmFtZXNgIHByb3BlcnRpZXMsIHdoaWNoIGFyZSB1
bmNvbmRpdGlvbmFsbHkgcmVxdWlyZWQgYnkgdGhlIERUIGJpbmRpbmcgc2NoZW1hLgotIFtMb3dd
IFRoZSBgc3RhdHVzYCBwcm9wZXJ0eSBpcyB1c2VkIGluIHRoZSBgZXRoZXJuZXQtcGNzLW1paUBb
MC0zXWAgY2hpbGQgbm9kZXMsIGJ1dCBpdCBpcyBub3QgcGVybWl0dGVkIGJ5IHRoZSBgcm9ja2No
aXAscmszNTY4LXhwY3MueWFtbGAgc2NoZW1hLgotLQoKY29tbWl0IDJkYzY2YmQxOTNlZDBlYjYz
N2IyZWE5ZmMwM2U0YjQ4MmI0MTkyNjAKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21h
aWwuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2ODogYWRkIFhQQ1MgYW5kIGZpeGVk
LWNsb2NrIG5vZGVzCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBYUENTIGRldmljZSBub2RlIGFuZCBp
dHMgcGNzLW1paSBzdWItbm9kZXMgdG8gdGhlIApSSzM1NjggU29DIGRldmljZSB0cmVlIHRvIHN1
cHBvcnQgMTAwMEJBU0UtWCwgU0dNSUksIGFuZCBRU0dNSUkgaW50ZXJmYWNlcy4gCkl0IGFsc28g
aW50cm9kdWNlcyB0d28gZml4ZWQtY2xvY2sgbm9kZXMgcHJvdmlkaW5nIHRoZSAxMjUgTUh6IHJl
ZmVyZW5jZSAKY2xvY2sgZm9yIHRoZSBHTUFDcy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC5kdHNpCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kK
PiBAQCAtMTEwLDYgKzExMCw1MSBAQCBzYXRhMDogc2F0YUBmYzAwMDAwMCB7Cj4gIAkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiAgCX07Cj4gIAo+ICsJeHBjczogZXRoZXJuZXQtcGNzQGZkYTAwMDAw
IHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC14cGNzIjsKPiArCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCQlyZWcgPSA8MHgwIDB4
ZmRhMDAwMDAgMHgwIDB4MjAwMDAwPjsKPiArCQljbG9ja3MgPSA8JmNydSBQQ0xLX1hQQ1M+LCA8
JmNydSBDTEtfWFBDU19FRUU+Owo+ICsJCWNsb2NrLW5hbWVzID0gImNzciIsICJlZWUiOwo+ICsJ
CXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU2OF9QRF9QSVBFPjsKPiArCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBub2RlIG5lZWQgdG8gaW5jbHVk
ZSB0aGUgcGh5cyBhbmQgcGh5LW5hbWVzIHByb3BlcnRpZXM/ClRoZSBEVCBiaW5kaW5nIHNjaGVt
YSBmb3Igcm9ja2NoaXAscmszNTY4LXhwY3MgdW5jb25kaXRpb25hbGx5IHJlcXVpcmVzCnRoZXNl
IHByb3BlcnRpZXMuIE9taXR0aW5nIHRoZW0gaGVyZSBtaWdodCBjYXVzZSBtYWtlIGR0YnNfY2hl
Y2sgdG8gZmFpbAp3aXRoIHZhbGlkYXRpb24gd2FybmluZ3Mgb24gYm9hcmRzIHRoYXQgZG8gbm90
IG92ZXJyaWRlIGFuZCBwb3B1bGF0ZSB0aGlzCm5vZGUuCgo+ICsKPiArCQl4cGNzX21paTA6IGV0
aGVybmV0LXBjcy1taWlAMCB7Cj4gKwkJCXJlZyA9IDwwPjsKPiArCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKCltTZXZlcml0eTogTG93XQpJcyB0aGUgc3RhdHVzIHByb3BlcnR5IHBlcm1pdHRlZCBp
biB0aGVzZSBjaGlsZCBub2Rlcz8KVGhlIHNjaGVtYSBmb3IgZXRoZXJuZXQtcGNzLW1paUBbMC0z
XSB1c2VzIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQphbmQgcmVzdHJpY3RzIHByb3BlcnRp
ZXMgdG8ganVzdCByZWcuIEluY2x1ZGluZyBzdGF0dXMgaGVyZSB3aWxsIGxpa2VseQp0cmlnZ2Vy
IHZhbGlkYXRpb24gd2FybmluZ3MgZHVyaW5nIG1ha2UgZHRic19jaGVjay4KCj4gKwkJfTsKClsg
Li4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA5MTMxODU4NDkuOTA3NDc5LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTUK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
