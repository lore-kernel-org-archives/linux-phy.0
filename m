Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95A8EC43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tBCr7BPkRI4JGk4NG4XjykZtc0FB5tFMF5gJ3bhYBY=; b=iDRj1+L0rrnewV
	hkS6Z7h8zY0OlSN05geNtt1lnHrmD2cTm2HFchLQS13Eh7E2GI95W9pXW2aKTlRrbjZIQ+hyRK0L2
	Fbg6BLaUCdbKuVvCzjbFTklYQyTPjg4zA3OAVuQemE81LjfQ6eYorO5bSLPlHzuU2rRK1UOPhWP8W
	ZYih8uARhoKQtHSbmT5OCKtKnhUScrobiy37lfzBesg+O9GQezyMk7xlmfTCvzsYh1/nP9fI8/6U1
	Ref0wuun13cG4OY68elRq3uLARWocEspqD4tJmKjqFJmWtreZ9hi6b8fSVCrKypoKtmRYFSRZm5CW
	c36cHpPAmmC8MAsY4MBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyG1-00000002dyh-0xkU;
	Wed, 01 Jul 2026 16:57:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyFz-00000002dxo-36nh
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:57:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 150234393F;
	Wed,  1 Jul 2026 16:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AF511F00A3A;
	Wed,  1 Jul 2026 16:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782925071;
	bh=ELp8dT36Ov29Q8f/rGrN7OIbe/5aMF7wky/XmPklAXA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OzDJ0GmSaruoYAn8rGl/jZAmvwy64Z7XsUPoHmu9SAqGNJlkuePjM6NmJPoxLrLgc
	 w5ajePqibD4hM9Cx8HS5Ad11pS9AI2i7Xur28FCqqnHibNFynjA1iqQjcAYu/tUPt7
	 tMJPwJE8X7pe9L31fDIunc4WcHIBKuS39gIm4lsBEiCDrrj4xm4RY3+ycS28tsX831
	 CIEeh+Y73DHhbHTB/BD6A3s1bNA+Iggb9jsYMpXNIzwdNgAJflVOsvLpot9bZiIfCN
	 yo5lJgbQnml88Ep/aQ3MmJY5coVR1bmVuQmDgVFghpgBzqd7STWWUP4lvLl8yBRg0k
	 JbcBZGFhxa9tQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260701165051.4122259-3-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-3-krishna.kurapati@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 16:57:50 +0000
Message-Id: <20260701165750.9AF511F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIFlBTUwgc2No
ZW1hIGZhaWxzIHRvIGVuZm9yY2UgdGhlIG1hbmRhdG9yeSAzIHJlc2V0cyBmb3IgdGhlIFNoaWty
YSBTb0MsIGFsbG93aW5nIGluY29tcGxldGUgZGV2aWNlIHRyZWUgbm9kZXMgdG8gcGFzcyB2YWxp
ZGF0aW9uLgotLQoKY29tbWl0IGRkODdmODg1NTFjOGQwODUxZmY3MmEwMDdlNWQzZDI1YWExYTNm
YzAKQXV0aG9yOiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29t
bS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBxY3M2MTUtcW1wLXVzYjNkcDogQWRkIHN1cHBvcnQg
Zm9yIFNoaWtyYSBTb0MKCkRlY2xhcmUgdGhlIFVTQi1DIFFNUCBQSFkgcHJlc2VudCBvbiB0aGUg
UXVhbGNvbW0gU2hpa3JhIFNvQy4gU2hpa3JhIHVzZXMKMyByZXNldHMgdG8gYmUgcHJvZ3JhbW1l
ZCBiZWZvcmUgaW5pdGlhbGlzaW5nIHRoZSBwaHkuIEFsc28sIGFkZCByZW1vdGUKZW5kcG9pbnRz
IGFuZCBvcmllbnRhdGlvbiBzd2l0Y2ggc3VwcG9ydCBmb3IgZ2V0dGluZyBUeXBlLUMgb3JpZW50
YXRpb24KaW5mb3JtYXRpb24uCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAtcGh5
LnlhbWwKPiBpbmRleCBlZmI0NjVjNzFjMWI1Li5hZTNmMGRkYTNiY2EyIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLXVz
YjNkcC1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbAoKWyAuLi4gXQoKPiArYWxsT2Y6Cj4g
KyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+ICsg
ICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAgICAg
LSBxY29tLHNoaWtyYS1xbXAtdXNiMy1kcC1waHkKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3Bl
cnRpZXM6Cj4gKyAgICAgICAgcmVzZXRzOgo+ICsgICAgICAgICAgbWF4SXRlbXM6IDMKPiArICAg
ICAgICByZXNldC1uYW1lczoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgICAtIGNv
bnN0OiBwaHlfcGh5Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGRwX3BoeQo+ICsgICAgICAgICAg
ICAtIGNvbnN0OiBwaHkKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgc2NoZW1hIGFjY3Vy
YXRlbHkgZW5mb3JjZSB0aGUgMyBtYW5kYXRvcnkgcmVzZXRzIGZvciB0aGUgU2hpa3JhIFNvQz8K
ClRoZSBiYXNlIHNjaGVtYSBzZXRzIG1pbkl0ZW1zIHRvIDIgZm9yIGJvdGggcmVzZXRzIGFuZCBy
ZXNldC1uYW1lcy4gQmVjYXVzZQp0aGlzIGNvbmRpdGlvbmFsIGJsb2NrIG9ubHkgc3BlY2lmaWVz
IG1heEl0ZW1zOiAzIGFuZCBsaXN0cyB0aGUgaXRlbXMgd2l0aG91dApvdmVycmlkaW5nIG1pbkl0
ZW1zIHRvIDMsIHRoZSBzY2hlbWEgd2lsbCBldmFsdWF0ZSB3aXRoIG1pbkl0ZW1zOiAyIGZvcgpT
aGlrcmEuCgpDb3VsZCB0aGlzIGFsbG93IGluY29tcGxldGUgZGV2aWNlIHRyZWUgbm9kZXMgbWlz
c2luZyB0aGUgcmVxdWlyZWQgdGhpcmQKcmVzZXQgdG8gc2lsZW50bHkgcGFzcyB2YWxpZGF0aW9u
IGR1cmluZyBhIGR0X2JpbmRpbmdfY2hlY2sgcnVuPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwMTE2NTA1MS40MTIyMjU5LTEt
a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
