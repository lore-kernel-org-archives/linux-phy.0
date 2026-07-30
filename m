Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43A2FC54FDF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lnk4LW102Yz/xdlRodoFRl5GTPDhcbW863YM2rUlYcY=; b=jIFYTG/4t2htgp
	Nwy9sep60gdhuj0ghLBu9CMOPiKFToW2tyOM2ltCjt5XHo1ZJjMyedjlm6Gus9H2IFFllIT5HvPv0
	/MqdxrCv+3kcnanTrzEvi+5chJNkEzx4MxDnlcZ0G6i5ceAVAaaRoZoxco2SLzBDyYIWRVhPBLZhU
	+d+EtgXpK/KBYEEeBSPzNbdyde5iXQ28YeKj4VUqXiYViiekwtAdQrhp2tGEBbPhW4ctlsCnTx8k7
	SuRl60IEAv3tq5JULekhFFxJOxwe8CJ5Xzby7JNRobbkGtbr+PANcaephB/Q0b6rFnZDVuztgh12b
	8iITqan0/VizgzwfaqgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNoy-0000000AAMe-42Ma;
	Thu, 30 Jul 2026 10:17:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNox-0000000AAMR-3Y55
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:16:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 10763600C8;
	Thu, 30 Jul 2026 10:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 427531F00A3A;
	Thu, 30 Jul 2026 10:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785406618;
	bh=QoCHR5a7rUrMw+Ospw1ml8lNy2FhpkFHESUJrl4P6zI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EgK0G5RQmJjVlmO4DV9UIHZa97CDxFnRvOZUtPQLiluAtGwsAtTtrWMmarwov9Vka
	 EzTQGnEKM3FLzlaUZTnl7I41pX9agw7iefY1HAUH5vOPo1+KyflsFHjzwwRDCUuTXr
	 fYWmFfbgSOWNkTsK7iVirxELYD0JD9PeEpShrP15QWM2j47pmJGlBptZCa8L/d/Riq
	 O1B5bDximr2GfTXvc7ns5t3CZSlPAyzPWzCsLekuFCAwSyg+YdXEiyt7L3PMZTtoCc
	 EboURRp7beBVTFhMYsXJC51aQfNyN2T1VYuC6/OUzJajVknfqq3zkjGdMXdzlOt+CZ
	 7c4eDS+Uqy8rw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 09/26] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-scsi@vger.kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-9-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-9-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:16:57 +0000
Message-Id: <20260730101658.427531F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBuZXdsaW5l
IGNoYXJhY3RlciBgXG5gIGluIGBkZXZfZXJyYCBmb3JtYXQgc3RyaW5nLgotIFtMb3ddIEluY29t
cGF0aWJsZSBwb2ludGVyIHR5cGUgcGFzc2VkIHRvIGBvZl9wcm9wZXJ0eV9yZWFkX3UzMmAuCi0t
CgotLS0gUGF0Y2ggWzldOiBbUEFUQ0ggdjEwIDA5LzI2XSBzY3NpOiB1ZnM6IG1lZGlhdGVrOiBS
ZXdvcmsgdGhlIGNyeXB0LWJvb3N0IHN0dWZmIC0tLQpjb21taXQgY2JlZTM0NzUxMzI4NDQ2ZDMz
YzE2NGU5MGU3OTRiNDQ3NzNhZjVlYgpBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xh
cy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZXdvcmsg
dGhlIGNyeXB0LWJvb3N0IHN0dWZmCgpUaGlzIGNvbW1pdCByZXdvcmtzIHRoZSBjcnlwdC1ib29z
dCBmdW5jdGlvbmFsaXR5IGJ5IGFkZGluZyB2ZW5kb3IKcHJlZml4ZXMgdG8gdGhlIGRldmljZSB0
cmVlIHByb3BlcnRpZXMsIHJlbW92aW5nIHVubmVjZXNzYXJ5IGNsb2NrCndyYXBwZXJzLCBhbmQg
cmVzdHJ1Y3R1cmluZyB0aGUgaW5pdGlhbGl6YXRpb24gY29kZS4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRp
YXRlay5jCj4gaW5kZXggNTBlNzcwMWQ3OTQzYi4uNTU3MDExNzJiY2YxNSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91ZnMvaG9z
dC91ZnMtbWVkaWF0ZWsuYwpbIC4uLiBdCj4gQEAgLTYzMyw2NSArNjE4LDUxIEBAIHN0YXRpYyB2
b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQoc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBib29zdCkK
WyAuLi4gXQo+ICsJY2ZnLT5yZWdfdmNvcmUgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwo
ZGV2LCAiZHZmc3JjLXZjb3JlIik7Cj4gKwlpZiAoSVNfRVJSKGNmZy0+cmVnX3Zjb3JlKSkgewo+
ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBkdmZzcmMtdmNvcmU6ICVwZSIsIGNmZy0+
cmVnX3Zjb3JlKTsKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgc2hvdWxk
IHRoaXMgZXJyb3IgbWVzc2FnZSBpbmNsdWRlIGEgdHJhaWxpbmcgbmV3bGluZT8KCldpdGhvdXQg
aXQsIHRoZSBuZXh0IHByaW50ZWQga2VybmVsIG1lc3NhZ2UgbWlnaHQgYmUgYXBwZW5kZWQgdG8g
dGhlIHNhbWUKbGluZSwgcmVzdWx0aW5nIGluIGdhcmJsZWQgbG9ncy4KCj4gKwkJcmV0dXJuOwo+
ICAJfQo+ICAKPiAtCWlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJib29z
dC1jcnlwdC12Y29yZS1taW4iLAo+IC0JCQkJICZ2b2x0KSkgewo+IC0JCWRldl9pbmZvKGRldiwg
ImZhaWxlZCB0byBnZXQgYm9vc3QtY3J5cHQtdmNvcmUtbWluIik7Cj4gLQkJZ290byBkaXNhYmxl
X2NhcHM7Cj4gKwlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJtZWRp
YXRlayxib29zdC1jcnlwdC12Y29yZS1taW4iLAo+ICsJCQkJICAgJmNmZy0+dmNvcmVfdm9sdCk7
CgpbU2V2ZXJpdHk6IExvd10KRG9lcyBwYXNzaW5nICZjZmctPnZjb3JlX3ZvbHQgdG8gb2ZfcHJv
cGVydHlfcmVhZF91MzIoKSBjYXVzZSBhIGNvbXBpbGVyCndhcm5pbmcgaGVyZT8KCkxvb2tpbmcg
YXQgc3RydWN0IHVmc19tdGtfY3J5cHRfY2ZnLCB2Y29yZV92b2x0IGlzIGRlY2xhcmVkIGFzIGFu
IGludCwgYnV0Cm9mX3Byb3BlcnR5X3JlYWRfdTMyKCkgZXhwZWN0cyBhIHBvaW50ZXIgdG8gYSB1
MzIuIFRoaXMgbWlnaHQgdHJpZ2dlciBhbgppbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIG9yIHBv
aW50ZXIgc2lnbiB3YXJuaW5nIG9uIHN0cmljdCBidWlsZApjb25maWd1cmF0aW9ucy4KCj4gKwlp
ZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IG1lZGlhdGVrLGJvb3N0
LWNyeXB0LXZjb3JlLW1pbjogJXBlXG4iLAo+ICsJCQlFUlJfUFRSKHJldCkpOwo+ICsJCXJldHVy
bjsKPiAgCX0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MzAtbXQ4MTk2LXVmcy12MTAtMC1iYzVlY2VmMjAyZGNAY29sbGFib3Jh
LmNvbT9wYXJ0PTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
