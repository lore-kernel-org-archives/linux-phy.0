Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1740C44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 15:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zn5eDKr2FuXMYB2wgrYOD+FZrGTkqyEHBNICpUPi1A=; b=Jp1+Oj2BaQCYlV
	Fc82g+KWSVrD2fU0TvF1wtaEGMAzWPlKeICgFszQLHyzRuu8SYntYQvWwI4VlpttMdRRKB7W9DLIw
	hUIv7zWKEsmj4MBVbhPae/HOzLqCS1KQSwDmKADHU9ZwAUWRP6NkvPW40pqNVfaX9BmQ5+I68js7m
	FofKpUh8fYci8C/WOtorgfGoGFlT8OqxUnb3jLJkmqejT4dCex8EQR9aqYa4sZ5gkTB7zTKgFJTDN
	dt5JRVrm7m4cMAJArR7B7kDlJfPXnrgrMKtHSGn6xQy0RDS9QAIDewNyW+iwzrRqzNlAVxWH5x7tk
	4iTqIiwjfDdRXc9K4E8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkNuQ-0000000025n-28h8;
	Thu, 16 Jul 2026 15:21:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkNuP-0000000025a-0ZON
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 15:21:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B651942ABA;
	Thu, 16 Jul 2026 15:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D0A01F000E9;
	Thu, 16 Jul 2026 15:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784215316;
	bh=0uJAqNPqRN9zFKpe4rToI06McO8LVIzTQsp8TngAvRA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=djbPzk3Q5ANtO9OSlKcgBDhmNNKFMoVzXq1Vme86QZ5xjiW4m+A76OYSZbemSVHnK
	 wCZGPflDbJFmy21Drj6iPAigv3ev/nH9vA8vlSBJdhqYDg7AiFGVvaZY2DCqrEQsPG
	 x9HCsao9m9Y+pN6SRvThiPhup5Xcyb58/L/Z2QR2iBNs6GsAQniM0yPRT7LK790xxY
	 jvVcokrIeElM+jn3Ej/XLoCVMX8jcO/6oZ9CPacQiz5tOojpgnwJUOgsXNW3k2XCfN
	 oRcEC3BmF8lz89djONHD8LT8uU3eNVhdNsT6sIkkAVwWx7XoIwT4iI10LnpPD6dG7o
	 txajBWOD1kkFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Document MT8196 MediaTek
 PCI-Express Gen4 S-PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260716151333.77254-2-angelogioacchino.delregno@collabora.com>
References: <20260716151333.77254-1-angelogioacchino.delregno@collabora.com>
 <20260716151333.77254-2-angelogioacchino.delregno@collabora.com>
Date: Thu, 16 Jul 2026 15:21:55 +0000
Message-Id: <20260716152156.2D0A01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyB1cHBlciBi
b3VuZCAoYG1heEl0ZW1zYCkgZm9yIHRoZSBgcmVnYCBwcm9wZXJ0eSBhcnJheS4KLS0KCi0tLSBQ
YXRjaCBbMV06IFtQQVRDSCAxLzJdIGR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50IE1UODE5NiBN
ZWRpYVRlayBQQ0ktRXhwcmVzcyBHZW40IFMtUEhZIC0tLQpjb21taXQgNDZjYjBiYzU3NDRhMWFh
ZWVjZTU3MGY5ZDM4M2NjOTQ4YmJjYWI3OQpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpkdC1iaW5kaW5n
czogcGh5OiBEb2N1bWVudCBNVDgxOTYgTWVkaWFUZWsgUENJLUV4cHJlc3MgR2VuNCBTLVBIWQoK
VGhpcyBjb21taXQgaW50cm9kdWNlcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0
aW9uIGZvciB0aGUKUENJLUV4cHJlc3MgR2VuNCBTLVBIWSBmb3VuZCBpbiBuZXdlciBNZWRpYVRl
ayBTb0NzIGxpa2UgdGhlIE1UODE5Ni4gSXQKZGV0YWlscyB0aGUgcmVxdWlyZWQgcHJvcGVydGll
cywgbnZtZW0gY2VsbHMsIGFuZCBwb3dlciBkb21haW5zIGZvciB0aGlzCmhhcmR3YXJlLgoKPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRl
ayxtdDgxOTYtcGNpZS1zcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L21lZGlhdGVrLG10ODE5Ni1wY2llLXNwaHkueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMmI2MTg4MmM0MDJjMgo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10
ODE5Ni1wY2llLXNwaHkueWFtbApbIC4uLiBdCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJs
ZToKPiArICAgIGNvbnN0OiBtZWRpYXRlayxtdDgxOTYtcGNpZS1zcGh5Cj4gKwo+ICsgIHJlZzoK
PiArICAgIG1pbkl0ZW1zOiAyCj4gKwo+ICsgIHJlZy1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsg
ICAgICAtIGNvbnN0OiBzaWYKPiArICAgICAgLSBjb25zdDogY2ttCgpbU2V2ZXJpdHk6IExvd10K
SXMgYW4gdXBwZXIgYm91bmQgbWlzc2luZyBmb3IgdGhlIHJlZyBwcm9wZXJ0eSBhcnJheSBoZXJl
PwoKVGhlIHNjaGVtYSBkZWZpbmVzIG1pbkl0ZW1zOiAyIGJ1dCBvbWl0cyBtYXhJdGVtcy4gU2lu
Y2UgcmVnLW5hbWVzIGV4cGxpY2l0bHkKZGVmaW5lcyBleGFjdGx5IHR3byBpdGVtcywgc2hvdWxk
IHJlZyBpbmNsdWRlIG1heEl0ZW1zOiAyIGFzIHdlbGwgdG8gZnVsbHkKYm91bmQgdGhlIGFycmF5
IGFuZCBwcmV2ZW50IHBvdGVudGlhbCBkdF9iaW5kaW5nX2NoZWNrIHZhbGlkYXRpb24gd2Fybmlu
Z3M/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNzE2MTUxMzMzLjc3MjU0LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xs
YWJvcmEuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
