Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF02BCA600A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5J8QYLdW2AsgrQSG+Aj1lPUpXYApv2E4CcDeA4FzkPQ=; b=vCtMmzV+UsfOWD
	O077Q6pGyvn35MN3qenb0nqQaNo3ooXYJfZB5smjau0k1khPEyOgjcWv72lVeE4P2+xVt/V35cmGk
	L7AtGXr1qSVHPQJvPd+R1ZEoQbtDiV63SLpSeYc38sDjhcogJYidfa0/OYwTVsL4P/JHaLgRpO3Xs
	b4AsKmJHH/VJDeYbN/HvVC0Oiuai1AKOm9ld8FPVF9PCSqomUtvZzxZ9SjAE3/EuHatA+V492zMMB
	CZJFSCWraX2mpVmMk3N60EJLtgjnkT/Kki++mudJ4fDZ2CyOL8mRUi5x7fXL6aTA0Y2v2ULvMYK95
	PZAE9YphfxNayTOTn8zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiXL-00000003k3v-0RAi;
	Thu, 08 Oct 2026 07:27:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiXJ-00000003k3m-3MXo
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:27:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 13F13601DB;
	Thu,  8 Oct 2026 07:27:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44B691F00898;
	Thu,  8 Oct 2026 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791444448;
	bh=AYY88Me7TA7KUYgh6xyZP+abNAUdUmSOBT0v8TqVYjA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M0eUGrEY9jtkDOSlvH5x3Sg6184FyzBbbGP+U41qLHJHpwcr9Z6lldUnsgbVu6DJm
	 RWpbxsU0Zakbpy2MkqmzpeMLmtWDqy+OcwZkjOjU8lfNBjru3aPfIAxpYYejU4oki6
	 5ghX/e5ShWMmZBAEhEEXxdGz1ZFHvDNgqJ9lacxshgCNyQiTcnTf8X6zweV6urQy88
	 oe0t6ErSeFl70ayD468o1iZabuXg2JQQVb+VwxLIxUchG1tqnTZCX4it8J6sHxE4Od
	 gfUvh4Sll1zx/Hvy0cS/UEEwl/7ex3M5clnTqoLjUo7AGHije5PtZt5jWbQYfvh3sO
	 zk4NeO746BevQ==
Message-ID: <sashiko-outbox-163752@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 09/12] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: media-ci@linuxtv.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20261008-kaanapali-camss-v19-9-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-9-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 07:27:27 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gbWVkaWE6IHFjb206IGNh
bXNzOiBkYXRhIHJhY2UgaW4gX19jc2lkX2NvbmZpZ3VyZV9yeCByZWFkaW5nIFRQRyBzdGF0ZQot
LQoKY29tbWl0IDAyMjRhNmYyODhhZDc3ZDU3Njg0ODM3ODA1ODQ5MTQzZmVhMjUzMmUKQXV0aG9y
OiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKbWVkaWE6IHFj
b206IGNhbXNzOiB0cGc6IEFkZCBzdXBwb3J0IGZvciB2Mi40LjAgVFBHCgpUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBUZXN0IFBhdHRlcm4gR2VuZXJhdG9yIChUUEcpIG9uIEthYW5h
cGFsaQp1c2luZyBoYXJkd2FyZSB2ZXJzaW9uIDIuNC4wLiBJdCB1cGRhdGVzIGNvbnRyb2wgbG9n
aWMgZm9yIHRlc3QtZW5hYmxlIGFuZApyZXNldCwgYW5kIHJvdXRlcyB0aGUgVFBHIG91dHB1dCBp
bnRvIHRoZSBDU0lEIDEwODAgUlguCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmMKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmMKClsgLi4uIF0KCj4gQEAgLTE0OCw4
ICsxNTEsMTYgQEAgc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yeChzdHJ1Y3QgY3NpZF9k
ZXZpY2UgKmNzaWQsCj4gIAo+ICAJdmFsID0gKGxhbmVfY250IC0gMSkgPDwgQ1NJMl9SWF9DRkcw
X05VTV9BQ1RJVkVfTEFORVM7Cj4gIAl2YWwgfD0gcGh5LT5sYW5lX2Fzc2lnbiA8PCBDU0kyX1JY
X0NGRzBfREwwX0lOUFVUX1NFTDsKPiAtCXZhbCB8PSAocGh5LT5jc2lwaHlfaWQgKyBDU0kyX1JY
X0NGRzBfUEhZX1NFTF9CQVNFX0lEWCkKPiAtCSAgICAgICA8PCBDU0kyX1JYX0NGRzBfUEhZX05V
TV9TRUw7Cj4gKwo+ICsJaWYgKGNhbXNzLT50cGcgJiYgY3NpZC0+dHBnX2xpbmtlZCAmJgo+ICsJ
ICAgIGNhbXNzLT50cGdbcGh5LT5jc2lwaHlfaWRdLnRlc3RnZW4ubW9kZSAhPSBUUEdfUEFZTE9B
RF9NT0RFX0RJU0FCTEVEKSB7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyByZWFkaW5nIGNhbXNzLT50
cGdbcGh5LT5jc2lwaHlfaWRdLnRlc3RnZW4ubW9kZSBoZXJlIGludHJvZHVjZSBhIGRhdGEKcmFj
ZSB3aXRoIGNvbmN1cnJlbnQgVjRMMiBjb250cm9sIHVwZGF0ZXM/CgpUaGUgVjRMMiBjb250cm9s
IGZyYW1ld29yayBtb2RpZmllcyB0ZXN0Z2VuLm1vZGUgaW4gdHBnX3NfY3RybCgpIHdoaWxlCmhv
bGRpbmcgdGhlIFRQRyBjb250cm9sIGhhbmRsZXIgbG9jazoKCnRwZ19zX2N0cmwoKSAtPiB0cGdf
Y29uZmlndXJlX3Rlc3RnZW5fcGF0dGVybigpCgpTaW5jZSBfX2NzaWRfY29uZmlndXJlX3J4KCkg
cmVhZHMgdGhpcyBmb3JlaWduIHN1YmRldmljZSBzdGF0ZSBsb2NrbGVzc2x5LAppdCBieXBhc3Nl
cyB0aGUgY29udHJvbCBmcmFtZXdvcmsncyBsb2NraW5nLiBDYW4gdGhpcyB0cmlnZ2VyIGEgcmFj
ZSBjb25kaXRpb24KbGVhZGluZyB0byBhIHRyYW5zaWVudCBzdHJlYW0gbWlzY29uZmlndXJhdGlv
biBkdXJpbmcgY29uY3VycmVudCBWSURJT0NfU19DVFJMCmNhbGxzPwoKPiArCQl2YWwgfD0gRklF
TERfUFJFUChDU0kyX1JYX0NGRzBfVFBHX01VWF9TRUwsIHBoeS0+Y3NpcGh5X2lkICsgMSk7Cj4g
KwkJdmFsIHw9IENTSTJfUlhfQ0ZHMF9UUEdfTVVYX0VOOwo+ICsJfSBlbHNlIHsKPiArCQl2YWwg
fD0gKHBoeS0+Y3NpcGh5X2lkICsgQ1NJMl9SWF9DRkcwX1BIWV9TRUxfQkFTRV9JRFgpCj4gKwkJ
CTw8IENTSTJfUlhfQ0ZHMF9QSFlfTlVNX1NFTDsKPiArCX0KPiArCj4gIAl3cml0ZWwodmFsLCBj
c2lkLT5iYXNlICsgQ1NJRF9DU0kyX1JYX0NGRzApOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwOC1rYWFuYXBhbGktY2Ftc3Mt
djE5LTAtYjJjNTgzZWY1MGUwQG9zcy5xdWFsY29tbS5jb20/cGFydD05CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
