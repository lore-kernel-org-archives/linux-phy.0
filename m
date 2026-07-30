Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D038AC54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9syNHz9a0CaO/uisCzGkdyHb6RZ7T2LXGJyNg7LLtmY=; b=PjFLOrspFvxBQK
	9pj6Hy+ECM5CeuG9b1OD0Alpht4kCCk/vdjhScTk8z8u+SPlkjMJUcpKqVsiC7XjZQRqUW74krhJO
	5zuFd81w1o+DKHMKvdPAl2Hxxucx44DmlBXBkHSl79nVaXFM4VRxB0LxwhwCRWp95IXxzJGZsJPBd
	wVYwAJBGtbdrHwgCQz8d4qJ1j3qeSs59Hjjj24OzebUoWlNdGA3nnVZbgmCkzYFORvxEGZVzPRNYT
	QR101zPdouCWgUHM7FplPzyXoAQpgIVPXLiJ0Qw4l1OAoDTKL5eBRl+2DM59eAo34fDEChfgHz9tw
	HFK2vJavY7CDRl7cjgTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNlw-0000000A9vL-2K9V;
	Thu, 30 Jul 2026 10:13:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNlv-0000000A9uc-1wsp
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:13:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BB7CB600B1;
	Thu, 30 Jul 2026 10:13:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF0C21F000E9;
	Thu, 30 Jul 2026 10:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785406430;
	bh=OX8l8dHUWyCADygYW1WT2yUHxcWI/LID/rjI6NJe2Vc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lb2Aqw5tXYJrGvhXNcajZh6kZRVxEj4TgYd+q4MlOlbLgY85iL7kERtye6K+YUtVv
	 eBQWhjmzQtuQenRwMQ2AsFvdGl2M52eDZ/HjTkthBcUIjOOpk59XJOKWOAFn5Vhjq1
	 2GxN7cCBPPhcJPodp0Piwf/ib5tlDDOhGoXTHNQEL9gLumpILKwohmVhbaS5ZNHUJq
	 V2KR4h8KNK1ESxjAnsIQ0rbsIUbi2UzTx33iheiPrEBPuY+DDDrA6gN+ZZB9i0XMOr
	 H5cgMHqiaqxLav2I7y9YL6TudFgY7GDWEd77Jz0iz4/2JWpjNvhxljb5RCmLLY+V+z
	 Z/FNk9OmZpNPg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 07/26] scsi: ufs: mediatek: Rework 0.9V regulator
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260730-mt8196-ufs-v10-7-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-7-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:13:49 +0000
Message-Id: <20260730101349.EF0C21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtNZWRpdW1d
IGB1ZnNfbXRrX2dldF9zdXBwbGllcygpYCB1c2VzIGBkZXZfZXJyKClgIGluc3RlYWQgb2YgYGRl
dl9lcnJfcHJvYmUoKWAsIHJlc3VsdGluZyBpbiBleGNlc3NpdmUgbG9nIHNwYW0gd2hlbiB0aGUg
cmVndWxhdG9yIHByb2JlIGRlZmVycy4KClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIE1p
c3NpbmcgZXJyb3IgaGFuZGxpbmcgaW4gYHVmc19tdGtfbXBoeV9wb3dlcl9vbigpYCBsZWFkcyB0
byBQSFkgZnJhbWV3b3JrIHJlZmVyZW5jZSBjb3VudCB1bmRlcmZsb3cgYW5kIHN0YXRlIGRlc3lu
Y2hyb25pemF0aW9uLgotLQoKLS0tIFBhdGNoIFs3XTogW1BBVENIIHYxMCAwNy8yNl0gc2NzaTog
dWZzOiBtZWRpYXRlazogUmV3b3JrIDAuOVYgcmVndWxhdG9yIC0tLQpOb3RlOiBUaGUgZm9ybWF0
IG9mIHRoaXMgcmVwb3J0IGhhcyBiZWVuIGFsdGVyZWQgZHVlIHRvIHJlY2l0YXRpb24gcmVzdHJp
Y3Rpb25zLiBUaGUgb3JpZ2luYWwgcGF0Y2ggZGlmZiBpcyBub3QgcXVvdGVkLCBhbmQgZmluZGlu
Z3MgYXJlIHByb3ZpZGVkIGFzIGEgZnJlZS1mb3JtIHN1bW1hcnkuCgpjb21taXQgNTNmYTcwYzlk
M2Q3NTFlODJlYmI2MWQ5N2QwYzIyODJmNjUwNDZjNQpBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9s
aSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CnNjc2k6IHVmczogbWVkaWF0ZWs6
IFJld29yayAwLjlWIHJlZ3VsYXRvcgoKVGhpcyBjb21taXQgcmV3b3JrcyB0aGUgMC45ViByZWd1
bGF0b3IgaGFuZGxpbmcgaW4gdGhlIE1lZGlhdGVrIFVGUyBob3N0CmRyaXZlci4gSXQgcmVtb3Zl
cyB0aGUgY3VzdG9tIGRvd25zdHJlYW0gbmFtaW5nLCB1c2VzIHRoZSBzdGFuZGFyZCByZWd1bGF0
b3IKQVBJIHdpdGggdGhlIGF2ZGQwOSBzdXBwbHkgbmFtZSwgYW5kIGVsaW1pbmF0ZXMgbWFudWFs
IHN0YWJpbGl6YXRpb24gZGVsYXlzLgoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4
aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB1ZnNfbXRrX21waHlfcG93ZXJfb24oKSBoYW5kbGUKZmFp
bHVyZXMgY29ycmVjdGx5IGR1cmluZyBQSFkgcG93ZXIgdHJhbnNpdGlvbnM/CgpXaGVuIGNhbGxp
bmcgcGh5X3Bvd2VyX29uKCksIHRoZSByZXR1cm4gdmFsdWUgaXMgbm90IGNoZWNrZWQuIElmIGhh
cmR3YXJlCmluaXRpYWxpemF0aW9uIGZhaWxzLCBob3N0LT5tcGh5X3Bvd2VyZWRfb24gaXMgc3Rp
bGwgc2V0IHRvIHRydWUuCgpBZGRpdGlvbmFsbHksIG9uIHRoZSBwb3dlci1vZmYgcGF0aCwgaWYg
dGhlIG5ld2x5IGFkZGVkIHVmc19tdGtfMDl2X29mZigpCmZhaWxzLCB0aGUgZnVuY3Rpb24gcmV0
dXJucyBlYXJseSB3aXRob3V0IHNldHRpbmcgaG9zdC0+bXBoeV9wb3dlcmVkX29uCnRvIGZhbHNl
LgoKQ291bGQgdGhpcyBkZXN5bmNocm9uaXplIHRoZSBkcml2ZXIncyBzdGF0ZSBmcm9tIHRoZSBQ
SFkgaGFyZHdhcmUgc3RhdGU/CklmIHRoZSBkcml2ZXIgaW5jb3JyZWN0bHkgcmVjb3JkcyB0aGUg
cG93ZXIgc3RhdGUgYXMgdHJ1ZSwgc3Vic2VxdWVudApzdXNwZW5kIG9yIGVycm9yIGhhbmRsaW5n
IHBhdGhzIG1pZ2h0IGJsaW5kbHkgY2FsbCBwaHlfcG93ZXJfb2ZmKCkgYWdhaW4sCndoaWNoIHdv
dWxkIGxlYWQgdG8gcG93ZXJfY291bnQgdW5kZXJmbG93cyBpbiB0aGUgUEhZIGZyYW1ld29yayBh
bmQKcGVybWFuZW50bHkgYnJlYWsgdGhlIFBIWSB1bnRpbCBhIHN5c3RlbSByZWJvb3QuCgpbU2V2
ZXJpdHk6IE1lZGl1bV0KSW4gdGhlIG5ld2x5IGFkZGVkIHVmc19tdGtfZ2V0X3N1cHBsaWVzKCks
IGRldl9lcnIoKSBpcyB1c2VkIHRvIGxvZwpmYWlsdXJlcyBmcm9tIGRldm1fcmVndWxhdG9yX2dl
dF9vcHRpb25hbCgpIGZvciB0aGUgYXZkZDA5IHJlZ3VsYXRvci4KCklmIHRoZSByZWd1bGF0b3Ig
cmV0dXJucyAtRVBST0JFX0RFRkVSLCB3aWxsIHRoaXMgZGV2X2VycigpIGNhbGwgY2F1c2UKZXhj
ZXNzaXZlIGxvZyBzcGFtIGR1cmluZyB0aGUgZGV2aWNlIHByb2JlIHBoYXNlPwoKV291bGQgaXQg
bWFrZSBzZW5zZSB0byB1c2UgZGV2X2Vycl9wcm9iZSgpIGhlcmUgaW5zdGVhZCB0byBwcm9wZXJs
eSBoYW5kbGUKYW5kIHN1cHByZXNzIGV4cGVjdGVkIHByb2JlIGRlZmVycmFsIG1lc3NhZ2VzPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDczMC1tdDgxOTYtdWZzLXYxMC0wLWJjNWVjZWYyMDJkY0Bjb2xsYWJvcmEuY29tP3BhcnQ9
NwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
