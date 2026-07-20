Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC6E8C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZbHDfG1KnLnPAPzdLRuLrqbC8OOar/1PB+Ry96hFIw=; b=sySN7BUkVWAzI/
	3QumTUAKk10Su1XZzgbcB6/OMG1+iPX1T5J4LQreO6swogVZ1ln7dWc3WjSPT3UCzSBq/LEHUQW/P
	ijdUEG/y97Vp2RPJBQnYqXMDQ0D/hTv5dLi2pePSCBid0F45Umr//Dq5drYGVUV3fELcXFLfU7dQe
	IKsP9Qg45zKbVI5CCMCKzxpviYWIVUCjdPgtpcn0ghJ29fi+lu5FwvHAQO2Xg/9cL34Jrzzu2YS0o
	DBSi9R0bLqYuXFXRry9eeipDrPpN+tbd1z0dLvqAxKjRE76kWTZzklw3LvLHxB8xf+Iai1C9E++xl
	RnoR9UvwLn7I2Pw7mWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloOu-00000006sUU-2JqR;
	Mon, 20 Jul 2026 13:51:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloOt-00000006sUM-0LHn
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:51:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 68A4643E38;
	Mon, 20 Jul 2026 13:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D11371F00A3A;
	Mon, 20 Jul 2026 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784555478;
	bh=vl+waiLUFsqAxuoKy0yDZe4zsC06ZCGSPLE90+2m3Ms=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OuH4+4qUVug58PsSGMmX9JJKZ7706qUudKukR8ROex96Vp9/oJBPOFb+kEzNLUpnD
	 HHbkygIEPN5q0QgtFPeXPKwmEfpjYy97IMLBrq12IAeJhebi5cueLZZFCTadwqr9Z6
	 uaCQq+dLmqLPp120N8Uy73OkGB+n81/1SFI4OIDnU+hydf749xU8V5bArkR6cgX9bd
	 CxCjUeASnTKrLyxkbavsR/qNNwtZNIX5P0vmrk4K+0U+8HQExyI6Rr3Bf2CP2rcwa0
	 RwAauPkr80rHjyT4ki2SIXNp9JSbtgAQbq5nVfAjUOb/zMaIHF0aK/xjHqRyD2KwEc
	 R8soWeEgKek4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 3/8] soc: fsl: guts: add a central
 fsl_guts_read() function
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260720133642.136324-4-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-4-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 13:51:17 +0000
Message-Id: <20260720135117.D11371F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERlcmVmZXJlbmNpbmcg
TlVMTCBwb2ludGVyICdzb2NfZGV2X2F0dHInIG9uIHRoZSBlcnJvciBwYXRoIGlmIGl0cyBtZW1v
cnkgYWxsb2NhdGlvbiBmYWlscy4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2MyBwaHktbmV4
dCAzLzhdIHNvYzogZnNsOiBndXRzOiBhZGQgYSBjZW50cmFsIGZzbF9ndXRzX3JlYWQoKSBmdW5j
dGlvbiAtLS0KY29tbWl0IGNjMTMxMmMwMmFiNWMyY2QzZmVkNWUyOTA3NjA4ZTQ0NDUzYzc4MTYK
QXV0aG9yOiBJb2FuYSBDaW9ybmVpIDxpb2FuYS5jaW9ybmVpQG54cC5jb20+Cgpzb2M6IGZzbDog
Z3V0czogYWRkIGEgY2VudHJhbCBmc2xfZ3V0c19yZWFkKCkgZnVuY3Rpb24KClRoaXMgY29tbWl0
IGFkZHMgYSBjZW50cmFsIGZzbF9ndXRzX3JlYWQoKSBmdW5jdGlvbiB0aGF0IGhhbmRsZXMgcmVh
ZGluZwpEQ0ZHIHJlZ2lzdGVycyBiYXNlZCBvbiB0aGUgYWxyZWFkeSBkZXRlcm1pbmVkIGVuZGlh
bm5lc3MuIFRoaXMgYXZvaWRzCmR1cGxpY2F0aW5nIHRoZSBpZi1lbHNlIGVuZGlhbm5lc3MgY2hl
Y2tzIGFjcm9zcyB0aGUgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL2d1
dHMuYyBiL2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMKPiBpbmRleCBhMmI0YzQ3N2IwNjRiLi5lMWIz
YTA1NGU2ODFiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL2ZzbC9ndXRzLmMKPiArKysgYi9k
cml2ZXJzL3NvYy9mc2wvZ3V0cy5jCj4gQEAgLTExMSw2ICsxMTEsMTQgQEAgc3RhdGljIHN0cnVj
dCBmc2xfc29jX2d1dHMgewo+ICAJYm9vbCBsaXR0bGVfZW5kaWFuOwo+ICB9IHNvYzsKPiAgCj4g
K3N0YXRpYyB1bnNpZ25lZCBpbnQgZnNsX2d1dHNfcmVhZChjb25zdCB2b2lkIF9faW9tZW0gKnJl
ZykKPiArewo+ICsJaWYgKHNvYy5saXR0bGVfZW5kaWFuKQo+ICsJCXJldHVybiBpb3JlYWQzMihy
ZWcpOwo+ICsKPiArCXJldHVybiBpb3JlYWQzMmJlKHJlZyk7Cj4gK30KPiArCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZnNsX3NvY19kaWVfYXR0ciAqZnNsX3NvY19kaWVfbWF0Y2goCj4gIAl1MzIg
c3ZyLCBjb25zdCBzdHJ1Y3QgZnNsX3NvY19kaWVfYXR0ciAqbWF0Y2hlcykKPiAgewoKWyAuLi4g
XQoKPiBAQCAtMjA5LDEwICsyMTcsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBmc2xfZ3V0c19pbml0
KHZvaWQpCj4gIAl9Cj4gIAo+ICAJc29jLmxpdHRsZV9lbmRpYW4gPSBvZl9wcm9wZXJ0eV9yZWFk
X2Jvb2wobnAsICJsaXR0bGUtZW5kaWFuIik7Cj4gLQlpZiAoc29jLmxpdHRsZV9lbmRpYW4pCj4g
LQkJc3ZyID0gaW9yZWFkMzIoJnNvYy5kY2ZnX2Njc3ItPnN2cik7Cj4gLQllbHNlCj4gLQkJc3Zy
ID0gaW9yZWFkMzJiZSgmc29jLmRjZmdfY2Nzci0+c3ZyKTsKPiArCXN2ciA9IGZzbF9ndXRzX3Jl
YWQoJnNvYy5kY2ZnX2Njc3ItPnN2cik7Cj4gIAlvZl9ub2RlX3B1dChucCk7Cj4gIAo+ICAJLyog
UmVnaXN0ZXIgc29jIGRldmljZSAqLwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSB0
cmlnZ2VyIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIHRoZSBlcnJvciBwYXRoIGlmIG1l
bW9yeQphbGxvY2F0aW9uIGZvciBzb2NfZGV2X2F0dHIgZmFpbHM/CgpJbiBmc2xfZ3V0c19pbml0
KCksIGlmIHRoZSBremFsbG9jX29iaigpIGFsbG9jYXRpb24gZm9yIHNvY19kZXZfYXR0ciBmYWls
cwpqdXN0IGJlbG93IHRoaXMgYmxvY2ssIHRoZSBjb2RlIGp1bXBzIHRvIGVycl9ub21lbSBhbmQg
ZmFsbHMgdGhyb3VnaCB0byB0aGUKZXJyIGxhYmVsOgoKZnNsX2d1dHNfaW5pdCgpIHsKICAgIC4u
LgoJc29jX2Rldl9hdHRyID0ga3phbGxvY19vYmooKnNvY19kZXZfYXR0cik7CglpZiAoIXNvY19k
ZXZfYXR0cikKCQlnb3RvIGVycl9ub21lbTsKICAgIC4uLgplcnJfbm9tZW06CglyZXQgPSAtRU5P
TUVNOwplcnI6CglrZnJlZShzb2NfZGV2X2F0dHItPmZhbWlseSk7CglrZnJlZShzb2NfZGV2X2F0
dHItPnNvY19pZCk7CiAgICAuLi4KfQoKU2luY2Ugc29jX2Rldl9hdHRyIGlzIE5VTEwgd2hlbiB0
YWtpbmcgdGhpcyBwYXRoLCB3b24ndCBjYWxsaW5nCmtmcmVlKHNvY19kZXZfYXR0ci0+ZmFtaWx5
KSBkZXJlZmVyZW5jZSB0aGUgTlVMTCBwb2ludGVyIGR1cmluZyBkZXZpY2UKaW5pdGlhbGl6YXRp
b24/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNzIwMTMzNjQyLjEzNjMyNC0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9
MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
