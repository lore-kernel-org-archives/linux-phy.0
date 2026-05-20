Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EE0CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 19:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+fashp92dDNUhKJHmAjYbLi21cUwhewGu397+5eKio=; b=el5+cj5H/lFJ4/
	2elEFylDf/vhTn/OS/E0YV4qt71y+5VHSDP1/JOt5SzD3Di9SANENkr05Hy67SCzcO/6cfHPFiysv
	bPfggbAjRZ49QCkbpbL6oA/rwqtdLV6rklYOI4Lou3+rCIXf7XYysfMgG5rEo1wojUjBcgUmLrkbF
	Hu1JKMUOZbd+DqQTJNV55aTRVT2GBW8NlFnKSueVEFHp27RiVrgdIIHIE31QAZ/S489RzEny3ckMn
	xPLuP/V7Vnz3rzLoeuN8CTbUDHTW7LZKcjLf5lkDEHkpcbXBFtqHrCvIGKVx2tBNtzQH46XYBzXTW
	6mLAf8Z5pWIeIhL9ywlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPmgD-00000005cQW-0Q1H;
	Wed, 20 May 2026 19:34:09 +0000
Received: from srv4.3e8.eu ([2001:67c:12a0:200::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPmg8-00000005cM1-0yXN
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 19:34:08 +0000
Received: from [IPV6:2003:ed:4732:25a0:50c3:56a0:3512:8308] (p200300ed473225a050c356a035128308.dip0.t-ipconnect.de [IPv6:2003:ed:4732:25a0:50c3:56a0:3512:8308])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by srv4.3e8.eu (Postfix) with ESMTPSA id D5AD2400D1;
	Wed, 20 May 2026 21:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=3e8.eu; s=mail20211217;
	t=1779305602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oOEzfbBHPC8r9KpG96ViZs/3f+GP1SliqG4aMfSM2bA=;
	b=T/pqa5HkW95z8YcfdexeFz7Go9LlS4ttsSchpEOqx4+ZgCzI3Hz7aKGnwrgm72mw/YNyYq
	H+1BsBn2ZcctWeMlGxWWD/LlTPKAqOAIe+i5O7aKQJcXGG7RRuTawvQFg3TY+Amr1Lo3PB
	Jn3CCXKVrE4GtczNPhwzjG8hIeTE/ouBAEhF59MfpGeXKp1rc3MLWD+Dtp2TEkZ+uvWCW9
	JTBL2+gZSv5sKqgqvZLf8Cq8dmLo1rJuvVaWAs+XgFX05NAtBcS85YT+qiPv8s4Vvlu+5W
	ccfUvXaeMydfUysQIjGfwKKZ9EqhTrLiNaSu0mjb0bLQNnh2WTkz41rIa4MH4A==
Message-ID: <c90c514a-2da4-42a5-b416-506cb2aadf0e@3e8.eu>
Date: Wed, 20 May 2026 21:33:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jan Hoffmann <jan@3e8.eu>
Subject: Re: [PATCH net-next v4] net: phy: sfp: probe for RollBall I2C-to-MDIO
 bridge in mdio-i2c
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Petr Wozniak <petr.wozniak@gmail.com>, netdev@vger.kernel.org
Cc: bjorn@mork.no, andrew@lunn.ch, linux-phy@lists.infradead.org,
 kuba@kernel.org
References: <20260519043249.2868-1-petr.wozniak@gmail.com>
 <e563f0be-8cdc-4451-ac93-af3a35485af9@bootlin.com>
Content-Language: en-US
Autocrypt: addr=jan@3e8.eu; keydata=
 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
 AqNjQxfojjo=
In-Reply-To: <e563f0be-8cdc-4451-ac93-af3a35485af9@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_123405_208254_16733618 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyNi0wNS0yOSBhdCAxMjoxMywgTWF4aW1lIENoZXZhbGxpZXIgd3JvdGU6Cj4gSGkgUGV0
ciwKPiAKPiBPbiA1LzE5LzI2IDA2OjMyLCBQZXRyIFdvem5pYWsgd3JvdGU6Cj4+IFRoZSAiT0VN
Ii8iU0ZQLTEwRy1UIiBxdWlyayBlbnRyeSBpbiBzZnBfZml4dXBfcm9sbGJhbGxfY2MoKQo+PiB1
bmNvbmRpdGlvbmFsbHkgZm9yY2VzIE1ESU9fSTJDX1JPTExCQUxMIGZvciBhbGwgbW9kdWxlcyBt
YXRjaGluZyB0aGF0Cj4+IHZlbmRvci9wYXJ0LW51bWJlciBjb21iaW5hdGlvbi7CoCBUaGlzIHdv
cmtzIGZvciBtb2R1bGVzIHRoYXQgZ2VudWluZWx5Cj4+IGltcGxlbWVudCBhIFJvbGxCYWxsIEky
Qy10by1NRElPIGJyaWRnZSwgYnV0IHNpbGVudGx5IGJyZWFrcyBtb2R1bGVzCj4+IHRoYXQgc2hh
cmUgdGhlIHNhbWUgRUVQUk9NIHN0cmluZ3Mgd2l0aG91dCBoYXZpbmcgc3VjaCBhIGJyaWRnZS4K
Pj4KPj4gVGhlIFJlYWx0ZWsgUlRMODI2MUJFLUNHIGlzIG9uZSBzdWNoIG1vZHVsZTogYSBwdXJl
IGNvcHBlciAxMEcgU0ZQKwo+PiBtZWRpYSBjb252ZXJ0ZXIgd2l0aCBubyBJMkMtdG8tTURJTyBi
cmlkZ2UuwqAgSXRzIEVFUFJPTSByZXBvcnRzCj4+IHZlbmRvcj0iT0VNIiwgcGFydD0iU0ZQLTEw
Ry1ULUkiLCBhbmQgLS0gY3JpdGljYWxseSAtLSBWZW5kb3IgT1VJCj4+IDAwOjAwOjAwLCBtYWtp
bmcgT1VJLWJhc2VkIGRpZmZlcmVudGlhdGlvbiBpbXBvc3NpYmxlLsKgIFdpdGgKPj4gTURJT19J
MkNfUk9MTEJBTEwgdGhlIGtlcm5lbCBzdGFsbHMgd2FpdGluZyBmb3IgYSBQSFkgdGhhdCBuZXZl
cgo+PiBhcHBlYXJzOgo+Pgo+PiDCoMKgIHNmcCBzZnAyOiBwcm9iaW5nIHBoeSBkZXZpY2UgdGhy
b3VnaCB0aGUgW01ESU9fSTJDX1JPTExCQUxMXSBwcm90b2NvbAo+IAo+IElzIGl0IHJlYWxseSBz
dGFsbGluZywgb3IgYXJlIHlvdSBmYWNpbmcgdGhlIDI1IHNlY29uZHMgcmV0cnkgbG9vcCBmb3Ig
Cj4gcm9sbGJhbGwgPwoKVGhlIHJldHJ5IGxvb3AgdW5mb3J0dW5hdGVseSB0YWtlcyBtdWNoIGxv
bmdlciB0aGFuIDI1IHNlY29uZHMgaWYgdGhlIApjb250cm9sbGVyIGluIHRoZSBtb2R1bGUgaXMg
bm90IHJlc3BvbmRpbmcgdG8gdGhlIFJvbGxiYWxsIHByb3RvY29sOgoKLSBUaGUgIi5yZWFkX2M0
NSIgbWV0aG9kIG9mIHRoZSBSb2xsYmFsbCBpbXBsZW1lbnRhdGlvbiByZXR1cm5zIDB4ZmZmZiAK
b24gdGltZW91dCAod2hpY2ggaGFwcGVucyBhZnRlciAxMCB0cmllcywgc2xlZXBpbmcgMjAgbXMg
Zm9yIGVhY2gpLgoKLSBXaGVuIGFsbCByZWFkcyByZXR1cm4gMHhmZmZmLCAiZ2V0X3BoeV9jNDVf
aWRzIiByZWFkcyA2MiByZWdpc3RlcnMgCigiTURJT19ERVZTMSIgYW5kICJNRElPX0RFVlMyIiBm
b3IgTU1EIGRldmljZXMgMC0yOSwgcGx1cyAiTURJT19TVEFUMiIgCmZvciBNTUQgMzAgYW5kIDMx
KS4KCkNvbnNpZGVyaW5nIHRoZSAyNSBhdHRlbXB0cyBmb3IgcHJvYmluZywgdGhpcyBtZWFucyB0
aGUgYWN0dWFsIHJldHJ5IApsb29wIGlzIGF0IGxlYXN0IDUuNSBtaW51dGVzIGxvbmcuIEluIHBy
YWN0aWNlIGl0IGlzIGV2ZW4gd29yc2UsIGFzIHRoZSAKSTJDIHRyYW5zZmVycyBhbHNvIHRha2Ug
c29tZSB0aW1lLgoKSXQgc2VlbXMgdG8gbWUgbGlrZSB0aGlzIGlzIHRoZSBjb3JlIG9mIHRoZSBp
c3N1ZSBoZXJlLiBJZiB0aGUgdGltZW91dCAKd2FzIGp1c3QgMjUgc2Vjb25kcywgaXQgd291bGQg
YmUgYSBiaXQgYW5ub3lpbmcsIGJ1dCBzdGlsbCB1c2FibGUuCgpKYW4KCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
