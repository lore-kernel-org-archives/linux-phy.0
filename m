Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8213FC982DD
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 20:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUC3nrKY7GeRsemBcVfSPvSXhmQD8yPno+GVHYcvCLo=; b=XE5sqzgn5QBrI8
	NKER0ycSfiU5bj+09ed1c3Zd2TxWil9Z8pRUjINgITFWG4RnRgC1CJX+s/afGPNSLHlHR1ziunrax
	giP0LPUVonZOZeZmWpwUOhFqIuKMq6kTftcQVessbzPPwf4kLe2wY4cIJgWEnO0JEjq8IqT754KEd
	jJwzjMHgGwevyBVFwwDvJeDO0p04AwUQ4PrNPVpzbPPQW9dtpuM0tGLuAyZ8H5WNzwP/js5VoWdD/
	+mYRb4m/49juuC468a0xXjucHDkHybUU7MnpB+roOWJq14/9un9b3fUhhN7QEuNUylc2wKjs+mMNa
	PmqiXNchIHxAfZX1ZIHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7fVp-0000000FXAs-0AFN;
	Fri, 18 Sep 2026 20:48:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7fVn-0000000FXAS-3ZYC
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 20:48:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EA75F60A5E;
	Fri, 18 Sep 2026 20:48:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 301F81F000FF;
	Fri, 18 Sep 2026 20:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789764526;
	bh=Q46hlk/ht4Qwq3PLuLMgIqIWKf6gxNefPEvWDDgXsII=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OwJNN4tXcpurURfx5Ao194w2ideTpdulHFU0B3fH9+iNEirHn9Il7kQA+VY9FoMPH
	 QzCD9UjVWcLbqYAvF7xSIagPA3SGpGQWfWrNgKa/OR351UVrXKXI4UfiZ6Tz6Pl9gl
	 +rxn9NF3MBcdHX08VyePnMn7t1hwoRBKLj9/kpaj+I6rer+8l0sBEV5f9lshBG02ap
	 COITqrqrWY6ZkbeuRGymFjYxvMCarQnP+cPkhG2ziTeYOaOhIK+orX5R6/ZmywUV3O
	 RbF72ErOL8AMOneqDRjCaOqO5w2RCjzSTSmb+Ss0AogM2MSm82LBZl8whg3oH4vXYl
	 5ErDYCPblygVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260917204624.2427486-6-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
 <20260917204624.2427486-6-coiaprant@gmail.com>
Date: Fri, 18 Sep 2026 20:48:45 +0000
Message-Id: <20260918204846.301F81F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gYXJtNjQ6IGR0czogbWlz
c2luZyByZXF1aXJlZCBwcm9wZXJ0aWVzIGluIGRpc2FibGVkIHhwY3Mgbm9kZQotLQoKY29tbWl0
IDY0NWIwMzMzN2QyMTdhYTUxMDNkMmE4MzdhYjhmZWQ3NTQ2NTIxMDgKQXV0aG9yOiBDb2lhIFBy
YW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2ODog
YWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBYUENT
IGRldmljZSBub2RlLCBpdHMgcGNzLW1paSBzdWItbm9kZXMsIGFuZCB0d28KZml4ZWQtY2xvY2sg
cmVmZXJlbmNlIG5vZGVzIHRvIHRoZSBSSzM1NjggU29DIGRldmljZSB0cmVlLiBUaGUgWFBDUyBu
b2RlIGlzCmRpc2FibGVkIGJ5IGRlZmF1bHQgYW5kIGludGVudGlvbmFsbHkgb21pdHMgdGhlIHBo
eXMgYW5kIHBoeS1uYW1lcwpwcm9wZXJ0aWVzIGluIHRoZSBkdHNpLgoKPiBUaGUgWFBDUyBub2Rl
IHJlcXVpcmVzIGEgcmVmZXJlbmNlIHRvIHRoZSBhcHByb3ByaWF0ZSBOYW5lbmcgQ29tYm8gUEhZ
Cj4gdmlhIHRoZSBwaHlzIHByb3BlcnR5LiAgZHRic19jaGVjayBvbmx5IHZhbGlkYXRlcyByZXF1
aXJlZCBwcm9wZXJ0aWVzCj4gZm9yIGVuYWJsZWQgbm9kZXMsIHNvIHRoZSBTb0MgZHRzaSBkb2Vz
IG5vdCBwcm92aWRlIHBoeXMvcGh5LW5hbWVzOgoKW1NldmVyaXR5OiBMb3ddCklzIHRoaXMgYXNz
dW1wdGlvbiBhYm91dCBkdGJzX2NoZWNrIGFjY3VyYXRlPyBkdC12YWxpZGF0ZSBlbmZvcmNlcwp1
bmNvbmRpdGlvbmFsIHJlcXVpcmVkIHByb3BlcnR5IGxpc3RzIGFnYWluc3QgYWxsIG5vZGVzIG1h
dGNoaW5nIHRoZQpjb21wYXRpYmxlIHN0cmluZywgcmVnYXJkbGVzcyBvZiB0aGVpciBzdGF0dXMu
Cgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+IGluZGV4IDNiYzY1
M2YwMjdmMWYuLjIyN2QwM2UzMzYwNDMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LmR0c2kKPiBAQCAtMTEwLDYgKzExMCw1MSBAQCBzYXRhMDogc2F0YUBmYzAwMDAw
MCB7CgpbIC4uLiBdCgo+ICsJeHBjczogZXRoZXJuZXQtcGNzQGZkYTAwMDAwIHsKPiArCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC14cGNzIjsKPiArCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKCltTZXZlcml0eTogTG93XQpXaWxsIHRoaXMgb21pc3Npb24gcmVzdWx0IGluIG1pc3Npbmct
cHJvcGVydHkgdmFsaWRhdGlvbiB3YXJuaW5ncyBkdXJpbmcKbWFrZSBkdGJzX2NoZWNrIGZvciBh
bnkgYm9hcmQgaW5jbHVkaW5nIHJrMzU2OC5kdHNpPyAKCkJlY2F1c2UgdGhlIHJvY2tjaGlwLHJr
MzU2OC14cGNzIHNjaGVtYSB1bmNvbmRpdGlvbmFsbHkgcmVxdWlyZXMgcGh5cyBhbmQKcGh5LW5h
bWVzLCBkdGJzX2NoZWNrIHdpbGwgbGlrZWx5IGZsYWcgdGhpcyBkaXNhYmxlZCBub2RlIGZvciBs
YWNraW5nIHRoZW0Kd2hlbiB2YWxpZGF0aW5nIHRoZSBjb21waWxlZCBkdGIuCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE3MjA0
NjI0LjI0Mjc0ODYtMS1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
