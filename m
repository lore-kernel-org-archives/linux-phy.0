Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1399BCD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 14:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx0diPYm0Qpg8WN0yRvSHzpLX+Sx6k5BVk1XB3icuCA=; b=bygdQ68dS6HA+9
	7d4rFO+SqYsmgjcFFxpwjOFpaDnHXxqcsObHbM28Cyf6yMspT/M7YvB5271oN8G7pjGB9mC0lVucE
	473qsmZH7Aso51HbuQGUht5BrNCwO1RwOq88rragYUPhyH3njtaPAVx1ljleqBs1TAa3l/2hH614B
	LOwewF32vh2DWY2al/rKyVWLKzs8Bd0a0J4QxZIEErZUSbQHxcXTKDZ/dg/H2Uh4a9xkgvDEymnmA
	evzBS0f5TkQjwGnhe82YZL/5se7m6F9YyjZxY7Z4ttbd0ssYmVcJ2fIxhW2V4hW1lRGsEbUK9Tl1x
	0rqXiRC5U4o5ra+HE1Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQRFu-0000000BBLo-3UdA;
	Fri, 22 May 2026 14:53:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQRFr-0000000BBLM-3j2N
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 14:53:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2140B41B11;
	Fri, 22 May 2026 14:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0CA51F000E9;
	Fri, 22 May 2026 14:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779461619;
	bh=p7s5Y6Jzd5h+6Ly2nPdUJ8IPtzcpsxx+kkOafaBg5FM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mIRd+kIl5GykaEJQuGhrCggIU6x2Fbhw50aXbRTyGoREgvWohI3w7OPCQoB82DQe6
	 h/HTifWjHFUaeAYHjBOea5uqMuJcZ6PK/rGgZ52iJrvFiJfG/vY0RdKxNiVvI8cC1J
	 AwhuqP+BEea6ptSFUAbLWhBsgvkDfzSBJVE/BztVdFXR+lic+MpqGEYFg/dy/a4Zt5
	 cw5sOFzVOdrs4j+R+gWRwMmt4KkNVY6HPeWkOezaygeVGmti0Fk3GNOLOtJlFvF+HE
	 NXtDsRNX7gzEqoQdcJygrI2eq234Jri24i4pJhY1Nu3Wacryjt35q09vxh0QziTTNS
	 0VbczQ0j+OfBw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
References: <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
Date: Fri, 22 May 2026 14:53:38 +0000
Message-Id: <20260522145338.A0CA51F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_075339_943996_834AA57C 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRldmljZSB0cmVl
IGV4YW1wbGUgZmFpbHMgc2NoZW1hIHZhbGlkYXRpb24gYmVjYXVzZSBgcG9ydEAyYCdzIGVuZHBv
aW50IGluY2x1ZGVzIGBkYXRhLWxhbmVzYCBhbmQgYGNsb2NrLWxhbmVzYCB3aGljaCBhcmUgZm9y
YmlkZGVuIGJ5IHRoZSBzY2hlbWEuCi0tCgpjb21taXQgZjE1MzQwYjkwNWQzZjJmOTVlMDIwMjc3
OThhMmViNWQ0ZWQwNmJmNQpBdXRob3I6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1
ZUBsaW5hcm8ub3JnPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbTogQWRkIENTSTIgQy1QSFkvRFBI
WSBzY2hlbWEKClRoaXMgY29tbWl0IGFkZHMgYSBuZXcgYmFzZSBzY2hlbWEgZm9yIHRoZSB4MWU4
MDEwMCBNSVBJIENTSTIgUEhZIGRldmljZXMuCkl0IHN1cHBvcnRzIENQSFksIERQSFksIGFuZCBE
UEhZIHNwbGl0LW1vZGUgYnkgbW9kZWxpbmcgdGhlIENTSVBIWSBkZXZpY2VzCmFzIGluZGl2aWR1
YWwgbm9kZXMgd2l0aCB0aHJlZSBkaXN0aW5jdCBwb3J0cy4KCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAw
LWNzaTItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MDAuLmY0MzRmYjA0NDQ3ZjYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKWyAuLi4g
XQo+ICsgICAgICBwb3J0QDI6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMv
JGRlZnMvcG9ydC1iYXNlCj4gKyAgICAgICAgZGVzY3JpcHRpb246IE91dHB1dCB0byBDQU1TUyBj
b250cm9sbGVyLgo+ICsKPiArICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgZW5kcG9p
bnQ6Cj4gKyAgICAgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjLyRkZWZzL2VuZHBv
aW50LWJhc2UKPiArICAgICAgICAgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsg
ICAgICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludDog
dHJ1ZQo+ICsgICAgICAgICAgICByZXF1aXJlZDoKPiArICAgICAgICAgICAgICAtIHJlbW90ZS1l
bmRwb2ludApbIC4uLiBdCj4gK2V4YW1wbGVzOgo+ICsgIC0gfApbIC4uLiBdCj4gKyAgICAgICAg
ICAgIHBvcnRAMiB7Cj4gKyAgICAgICAgICAgICAgICByZWcgPSA8Mj47Cj4gKyAgICAgICAgICAg
ICAgICBjc2lwaHkwX291dF9lcDogZW5kcG9pbnQgewo+ICsgICAgICAgICAgICAgICAgICAgIGRh
dGEtbGFuZXMgPSA8Mz47Cj4gKyAgICAgICAgICAgICAgICAgICAgY2xvY2stbGFuZXMgPSA8ND47
CgpbU2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIGV4YW1wbGUgZmFpbCBkdF9iaW5kaW5nX2NoZWNr
IHNjaGVtYSB2YWxpZGF0aW9uPwoKVGhlIHNjaGVtYSBkZWZpbml0aW9uIGFib3ZlIGZvciBwb3J0
QDIncyBlbmRwb2ludCBwb2ludHMgdG8gZW5kcG9pbnQtYmFzZSBhbmQKc2V0cyB1bmV2YWx1YXRl
ZFByb3BlcnRpZXMgdG8gZmFsc2UsIHdpdGhvdXQgbG9jYWxseSBkZWZpbmluZyBkYXRhLWxhbmVz
IG9yCmNsb2NrLWxhbmVzLgoKSG93ZXZlciwgdGhlIGV4YW1wbGUgdXNlcyB0aGVtIGhlcmUuIERv
ZXMgdGhlIHBvcnRAMiBkZWZpbml0aW9uIG5lZWQgYQpyZWZlcmVuY2UgdG8gdmlkZW8taW50ZXJm
YWNlcy55YW1sIGxpa2UgdGhlIG90aGVyIHBvcnRzLCBvciBzaG91bGQgdGhlc2UKcHJvcGVydGll
cyBiZSByZW1vdmVkIGZyb20gdGhlIGV4YW1wbGU/Cgo+ICsgICAgICAgICAgICAgICAgICAgIHJl
bW90ZS1lbmRwb2ludCA9IDwmY29udHJvbGxlcl9pbj47Cj4gKyAgICAgICAgICAgICAgICB9Owo+
ICsgICAgICAgICAgICB9Owo+ICsgICAgICAgIH07Cj4gKyAgICB9OwpbIC4uLiBdCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTIy
LXgxZS1jc2kyLXBoeS12Ny0wLTc5Y2IxMjgwZmFkNkBsaW5hcm8ub3JnP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
