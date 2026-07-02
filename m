Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08472C43602
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttRDmz51eXWqBtU/9XfJpTA/8e+gLdYYfJclYwqveHg=; b=KMgSWDBzOmeY1s
	TsodviFV+4cb0za0GRbeRzfvmi33rx6A4QFv+K2GoVIskXh8dFBaJ/cWR03Y1cAXWUTxiQkkIEL54
	7/ANknI5Y3lX1gHf5DAbvgr1FmeMVmyF7g3NIUaRvHqFJ+N50wLo8OdipgJPee2Z5zN4trAIbwLEM
	1768wuq7y9CKIjr+9UNnkAlaxuUyI6XqYub4/cokr60YmMG6FGdl+BY0kcE4S0/XNzIz24X8dm8Go
	Kb1BRfJQ5waoKIDGfN41bKxYxb3zrouJKGN4e7ZUwj5sNA5zcogXYJMi+MOTjD6S8nmUVrdkOeh9F
	ZVVf5J+yK+GK/n/Mjy8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfE2A-000000045oT-1JE8;
	Thu, 02 Jul 2026 09:48:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfE28-000000045oM-3FHN
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:48:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A87543BD0;
	Thu,  2 Jul 2026 09:48:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFDA11F00A3A;
	Thu,  2 Jul 2026 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985716;
	bh=uvCew2dWaxcd307MeK3+Az1QWGDtYdmUj5QmNI8C2TM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=laXk5rXI0QYbTENyNc8qk5DAVp48ELeR6g5cB9bNAsWHDl+HEwqWWbnEinRaNJyoG
	 XVH1/MYySWhaOq4uAYITA09m5eBAAR5URvD5qUqg3Xjsa1vJUiCMyPyVR1HO0xbi0O
	 M1AWV8fQvBZ2VS13EssAmeQaPMtd+iNbujP1ODKauVjrOKiBOYN/sZyTuNkN66jemj
	 hNTN0qRPIEyaBGJLZMQjhXfOEXxVsZhTebphtHo1+f2vuWj/LtFuoucmBfk6p+fKD2
	 qeNHxFVbZITYkSiq3T4a+heiathmQZ3pc3mpZcFmTv8LrWBnzA6a+Guc95qrVjbdRp
	 8RnUEx6vsj6sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/5] dt-bindings: clock: airoha: Add PHY binding for
 Serdes port
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702093812.15918-2-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-2-ansuelsmth@gmail.com>
Date: Thu, 02 Jul 2026 09:48:35 +0000
Message-Id: <20260702094835.DFDA11F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGAjcGh5LWNl
bGxzYCBwcm9wZXJ0eSBpcyBpbXBsaWNpdGx5IGFsbG93ZWQgZm9yIHRoZSBgZWNvbmV0LGVuNzUx
MjIxLXNjdWAgY29tcGF0aWJsZSwgY29udHJhZGljdGluZyB0aGUgY29tbWl0IG1lc3NhZ2Ugd2hp
Y2ggc3RhdGVzIGl0IGlzIGV4Y2x1c2l2ZSB0byB0aGUgQWlyb2hhIEFONzU4MSBTb0MuCi0gW01l
ZGl1bV0gVGhlIGBhaXJvaGEsZW43NTgxLXNjdWAgdmFyaWFudCBnYWlucyBhIG5ldyBQSFkgcHJv
dmlkZXIgY2FwYWJpbGl0eSwgYnV0IGAjcGh5LWNlbGxzYCBpcyBub3QgYWRkZWQgdG8gaXRzIHJl
cXVpcmVkIHByb3BlcnRpZXMsIGFuZCB0aGUgc2NoZW1hIGV4YW1wbGUgaXMgbm90IHVwZGF0ZWQu
Ci0tCgpjb21taXQgNmQzYTYxMzA3MmIwMDA3ZTc2ZDU4NDY2MjkyMTJmNzVjOGRmYzMwMApBdXRo
b3I6IENocmlzdGlhbiBNYXJhbmdpIDxhbnN1ZWxzbXRoQGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdz
OiBjbG9jazogYWlyb2hhOiBBZGQgUEhZIGJpbmRpbmcgZm9yIFNlcmRlcyBwb3J0CgpUaGlzIGNv
bW1pdCBhZGRzIHRoZSAjcGh5LWNlbGxzIHByb3BlcnR5IGZvciBTZXJkZXMgcG9ydCBzZWxlY3Rp
b24sCnNwZWNpZnlpbmcgdGhhdCBpdCBpcyBjdXJyZW50bHkgc3VwcG9ydGVkIG9ubHkgZm9yIHRo
ZSBBaXJvaGEgQU43NTgxIFNvQy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9jbG9jay9haXJvaGEsZW43NTIzLXNjdS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2Fpcm9oYSxlbjc1MjMtc2N1LnlhbWwKPiBpbmRl
eCBlYjI0YTU2ODc2MzllLi45MTNkZGMxNjE4MmI4IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9haXJvaGEsZW43NTIzLXNjdS55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2Fpcm9oYSxlbjc1MjMt
c2N1LnlhbWwKWyAuLi4gXQo+IEBAIC02NSw2ICs3Miw4IEBAIGFsbE9mOgo+ICAgICAgICAgIHJl
ZzoKPiAgICAgICAgICAgIG1pbkl0ZW1zOiAyCj4gIAo+ICsgICAgICAgICcjcGh5LWNlbGxzJzog
ZmFsc2UKPiArCj4gICAgLSBpZjoKPiAgICAgICAgcHJvcGVydGllczoKPiAgICAgICAgICBjb21w
YXRpYmxlOgoKW1NldmVyaXR5OiBNZWRpdW1dClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhh
dCB0aGUgI3BoeS1jZWxscyBwcm9wZXJ0eSBpcyBjdXJyZW50bHkgc3VwcG9ydGVkCm9ubHkgZm9y
IHRoZSBBaXJvaGEgQU43NTgxIFNvQy4gSG93ZXZlciwgbG9va2luZyBhdCB0aGUgYWxsT2YgY29u
ZGl0aW9uYWwKYmxvY2s6CgogIC0gaWY6CiAgICAgIHByb3BlcnRpZXM6CiAgICAgICAgY29tcGF0
aWJsZToKICAgICAgICAgIGVudW06CiAgICAgICAgICAgIC0gYWlyb2hhLGVuNzU4MS1zY3UKICAg
ICAgICAgICAgLSBlY29uZXQsZW43NTEyMjEtc2N1CgpTaW5jZSBlY29uZXQsZW43NTEyMjEtc2N1
IHNoYXJlcyB0aGlzIGJsb2NrIGFuZCBkb2VzIG5vdCBleHBsaWNpdGx5IGhhdmUKJyNwaHktY2Vs
bHMnOiBmYWxzZSBsaWtlIHRoZSBwcmV2aW91cyBibG9jaywgZG9lcyB0aGlzIGltcGxpY2l0bHkg
YWxsb3cgdGhlCnByb3BlcnR5IGZvciBpdCBhbmQgY29udHJhZGljdCB0aGUgY29tbWl0IG1lc3Nh
Z2U/CgpbU2V2ZXJpdHk6IE1lZGl1bV0KQWRkaXRpb25hbGx5LCBzaW5jZSB0aGUgYWlyb2hhLGVu
NzU4MS1zY3UgdmFyaWFudCBnYWlucyBhIG5ldyBQSFkgcHJvdmlkZXIKY2FwYWJpbGl0eSwgc2hv
dWxkICNwaHktY2VsbHMgYmUgYWRkZWQgdG8gaXRzIHJlcXVpcmVkIHByb3BlcnRpZXMgbGlzdD8K
ClRoZSBleGFtcGxlIGZvciBhaXJvaGEsZW43NTgxLXNjdSBpbiB0aGUgc2FtZSBmaWxlIGlzIGFs
c28gbWlzc2luZyB0aGUKcHJvcGVydHk6CgogICAgICBzY3VjbGs6IGNsb2NrLWNvbnRyb2xsZXJA
MWZiMDAwMDAgewogICAgICAgIGNvbXBhdGlibGUgPSAiYWlyb2hhLGVuNzU4MS1zY3UiOwogICAg
ICAgIHJlZyA9IDwweDAgMHgxZmIwMDAwMCAweDAgMHg5NzA+OwogICAgICAgICAgICAgICNjbG9j
ay1jZWxscyA9IDwxPjsKICAgICAgICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47CiAgICAgIH07
CgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXBkYXRlIHRoZSBzY2hlbWEgdG8gbWFuZGF0ZSB0aGUg
cHJvcGVydHkgYW5kIHVwZGF0ZQp0aGUgZXhhbXBsZSB0byBpbmNsdWRlICNwaHktY2VsbHMgPSA8
MT4gc28gaW5jb21wbGV0ZSBkZXZpY2UgdHJlZSBub2RlcyBkbwpub3Qgc2lsZW50bHkgcGFzcyBz
Y2hlbWEgdmFsaWRhdGlvbj8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDIwOTM4MTIuMTU5MTgtMS1hbnN1ZWxzbXRoQGdtYWls
LmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
