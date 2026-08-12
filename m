Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 549DFC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwrS/v/ZcZwd0uWlctJkx2dk5TtiRZztlrd/obFGiqY=; b=tEmlEAp2N9c7qf
	PPY3UDJB6ZGXUVYX2iCE5fQVcs5W3KtkxNqU5H+02MrllQCgeDqpO9t75NTEcwS6KJ68KtGqVDGXf
	a0Jj5Bi9iWqLzXpjT3QoK2L9WJ4tiNCLEtmjtFfE3Y4RbgA2482l23UE99nHTVT5M4hwFQmlSVUH6
	bAxb5v24JQLUImb+SREZtTqTv3j2B/Ox9vghoqj8PBDm79yddMrmgx8suUQ3K52XB2OX8a7Y9DJa7
	AfAe7wKpV3p+pgH5iUSj/yOeKLmP2aMEexGTeFzkJ88XFDk4+zGl7+gWSyhpoMQVuaDCzS4W3PkKJ
	wOxuvNpwR6BQu7rQMZIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5cH-0000000Focq-48Cr;
	Wed, 12 Aug 2026 09:51:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5cE-0000000FocS-2MN1
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:51:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0F678405C3;
	Wed, 12 Aug 2026 09:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50DFF1F000E9;
	Wed, 12 Aug 2026 09:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528277;
	bh=if0Csk/A9EcSIrsPRD2aB9x/Gl9MgImspW6Oz99kkVA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VN3+mus54DvmqRwFNmi5e+6EB4tukUNkrFMGMJU8Lj+D0C+uK5TP354mj+a1B+dkN
	 gCsgTFvGs6Lqs+9d1cJ71xcubdfFURt24Jn32Fw17KkJS1kbkKfmw7NL7PIoKwos3Y
	 hWMGNTXmHU6AM/4OUBtnVjNui0lVTpps4RRcu/ic4KY+487W1lbbN858CC8SYw/5SD
	 EkAqMM7hNjk8B7azASHUrFAEAqRew7eB/yHmhWQLrawZzHLgU8Mm5asdVIGKPWFz4U
	 7TQ6dXHY5rv3LdupggZD15euBSnx+x/VyClMKoBhQyLyw8ULLfmxgQ0LlEGCp92lhV
	 B3d237hguigJA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/14] arm64: dts: qcom: ipq5018: Add USB Super-Speed
 PHY node
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-3-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-3-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:51:16 +0000
Message-Id: <20260812095117.50DFF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgYHBsYXRm
b3JtX3NldF9kcnZkYXRhKClgIGluIHRoZSBQSFkgZHJpdmVyIHByb2JlIGZ1bmN0aW9uIGxlYWRz
IHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIGRyaXZlciByZW1vdmFsLgotLQoKLS0t
IFBhdGNoIFszXTogW1BBVENIIHYyIDAzLzE0XSBhcm02NDogZHRzOiBxY29tOiBpcHE1MDE4OiBB
ZGQgVVNCIFN1cGVyLVNwZWVkIFBIWSBub2RlIC0tLQpjb21taXQgOTdlYWRkODA5ODMzNDhkYmRk
OGRiZWE3MTBjNzcyODU4YzYxY2NmNgpBdXRob3I6IEdlb3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5t
b3Vzc2FsZW1Ab3V0bG9vay5jb20+Cgphcm02NDogZHRzOiBxY29tOiBpcHE1MDE4OiBBZGQgVVNC
IFN1cGVyLVNwZWVkIFBIWSBub2RlCgpBZGQgVVNCIFN1cGVyLVNwZWVkIFVOSVBIWSBub2RlIGFu
ZCBwb3B1bGF0ZSB0aGUgVVNCIERUIGNsb2NrIG9uIHRoZSBHQ0MKbm9kZSBmb3IgdGhlIEdDQyB0
byBnYXRlIHRoZSBQSVBFIGNsb2NrIHN1cHBsaWVkIGJ5IHRoZSBVU0IzIFBIWS4KCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2lwcTUwMTguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4
LmR0c2kKPiBAQCAtMTc5LDYgKzE3OSwyMyBAQCB1c2JwaHkwOiBwaHlANWIwMDAgewo+ICAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+ICsJCXVzYnBoeTE6IHBoeUA1ZDAwMCB7
Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE1MDE4LXVuaXBoeS11c2Itc3MtcGh5IjsKCltT
ZXZlcml0eTogSGlnaF0KRG9lcyBlbmFibGluZyB0aGlzIFBIWSBleHBvc2UgYSBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UgaW4gdGhlIGRyaXZlciB1cG9uCnJlbW92YWw/CgpMb29raW5nIGF0IHRo
ZSBkcml2ZXIgZm9yIHRoaXMgUEhZIGluCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXVu
aXBoeS11c2Itc3MtMjJ1bGwuYywgdGhlCnFjb21fdW5pcGh5X3VzYl9wcm9iZSgpIGZ1bmN0aW9u
IGFsbG9jYXRlcyB0aGUgdW5pcGh5IHN0YXRlIGJ1dCBmYWlscyB0byBzYXZlCml0IHRvIHRoZSBw
bGF0Zm9ybSBkZXZpY2U6Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS11bmlwaHktdXNi
LXNzLTIydWxsLmM6cWNvbV91bmlwaHlfdXNiX3Byb2JlKCkgewogICAgLi4uCglwaHlfc2V0X2Ry
dmRhdGEodW5pcGh5LT5waHksIHVuaXBoeSk7CgoJcGh5X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlf
cHJvdmlkZXJfcmVnaXN0ZXIoZGV2LCBvZl9waHlfc2ltcGxlX3hsYXRlKTsKICAgIC4uLgp9CgpX
aGVuIHRoZSBkcml2ZXIgaXMgdW5ib3VuZCwgcWNvbV91bmlwaHlfdXNiX3JlbW92ZSgpIHJldHJp
ZXZlcyBhIE5VTEwgcG9pbnRlcjoKCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXVuaXBo
eS11c2Itc3MtMjJ1bGwuYzpxY29tX3VuaXBoeV91c2JfcmVtb3ZlKCkgewoJc3RydWN0IHVuaXBo
eV91c2IgKnVuaXBoeSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwoKCXFjb21fdW5pcGh5
X3VzYl9tdXhfc2VsZWN0KHVuaXBoeSwgZmFsc2UpOwp9CgpUaGlzIE5VTEwgcG9pbnRlciBpcyB0
aGVuIHBhc3NlZCB0byBxY29tX3VuaXBoeV91c2JfbXV4X3NlbGVjdCgpLCBjYXVzaW5nIGEKY3Jh
c2guCgpTaG91bGQgYSBmaXggYWRkaW5nIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHVuaXBo
eSkgYmUgaW5jbHVkZWQgdG8gcHJldmVudAp1bmJpbmRpbmcgdGhpcyBkZXZpY2UgZnJvbSBjYXVz
aW5nIGEga2VybmVsIG9vcHM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEyLWlwcTUwMTgtdXNiMy12Mi0wLThmMzU1ZDdmZjBl
ZkBvdXRsb29rLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
