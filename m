Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846A5C624DB
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+WvzJBCZ4mAaYQcKu3d7ErZbP/V0h8ZsBLO7CtSm8s=; b=Tal9tXUDBL+8iR
	yIjZPPWqeO+IJF4e2TGolY+lhE1FQGuUJWXuZeiAR5N8vWUg+E4AkvZnwA/ovcTPhraxcZVlm0Ept
	dPSosd131okyiEtodqv5xHjhdawrzlZZiuwIo93Z1pqfGDagRbxLwCf9WfnD3wB8z2xfqJ2lm1QaK
	B2Rz+L84quyXvFlzDlE11KhpUcGBUWFXL+gMg7M0U/k5vZ4HmS93VzBQKfTTmNm7XmRxecL6b8vV/
	WoIh5kDxMGUIWfi40EQ2Y53B4nT6DkIM38q6eC+SfehX/EZo5v+mcW+GiHLOmXIRM42+pCdsn+Qiy
	WRJC3D1lbRKaOprcvnfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sVK-00000004E26-0PgT;
	Sat, 05 Sep 2026 15:40:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sVJ-00000004E20-0CM4
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:40:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 97903601DB;
	Sat,  5 Sep 2026 15:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED6D91F00A3A;
	Sat,  5 Sep 2026 15:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788622826;
	bh=EPOGoZys2/8mCkrtmEOMC9IINUrL5IIWHmfw5JEF/Sc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VHi6Jv6lFSkjjemBXlmjKZ6MG1YQMxrY20X9ZsSBMMambi9dpkvpCIzuqjaEtSh6w
	 yCz+uKaWDfILStcBGtzUg542MTVrxLmxS6Z3ajTf37p64YAd+aVCHqOTLTMzBbssPP
	 BeQW2jpxdZcqqvqAuhqCSIChJdTc8M5vdBOrExIplLmWfcMq6e4k2w5lKgryfRpRhD
	 FTY9bGkQASN2d+4F527CXcvkz6Bf9I0Q6oJ7iOr1f0F9Rwod8kx7PlYjfiTURfYxGE
	 KkGHCCb0cNxH0oncW3ZMA74L9faQYgmSqZV17dJyq0UvlwM9E4S57pZSIwMkZg4Oud
	 kjnphwpZimkRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-5-820cf5377a70@oss.qualcomm.com>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-5-820cf5377a70@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 15:40:25 +0000
Message-Id: <20260905154025.ED6D91F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgd2ls
bCBmYWlsIHRvIHByb2JlIGlmIENPTkZJR19HRU5FUklDX1BIWSBpcyBkaXNhYmxlZCBiZWNhdXNl
IGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCgpIHJldHVybnMgLUVOT1NZUy4KLS0KCmNvbW1pdCA3
NTM4ZGIzZjQzMjdhOTRmOTJiNDk5MzYwNjNmZGYxOTFiOTAwNjM3CkF1dGhvcjogS3Jpc2huYSBL
dXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgoKdXNiOiBkd2MzOiBx
Y29tOiBNb2RpZnkgaW50ZXJydXB0IGhhbmRsaW5nIGZvciBlVVNCMiBQaHkgdGFyZ2V0cwoKVGhp
cyBjb21taXQgdXBkYXRlcyB0aGUgZHdjMy1xY29tIGRyaXZlciB0byBkeW5hbWljYWxseSBxdWVy
eSB0aGUgYXR0YWNoZWQKUEhZIHR5cGUgYW5kIGFkanVzdCB0aGUgZUQrL2VELSBsaW5lIHdha2V1
cCBpbnRlcnJ1cHRzIGFjY29yZGluZ2x5IGZvcgplVVNCMiB0YXJnZXRzIGluIGhvc3QgbW9kZS4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMgYi9kcml2ZXJzL3Vz
Yi9kd2MzL2R3YzMtcWNvbS5jCj4gaW5kZXggYmEyNmU2MWRmOTE1YS4uMmQxZTY2ZmY3MmVkNSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtcWNvbS5jCj4gKysrIGIvZHJpdmVy
cy91c2IvZHdjMy9kd2MzLXFjb20uYwoKWyAuLi4gXQoKPiBAQCAtNjk4LDYgKzcyMCwxNyBAQCBz
dGF0aWMgaW50IGR3YzNfcWNvbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAJaWYgKHJldCkKPiAgCQlnb3RvIGNsa19kaXNhYmxlOwo+ICAKPiArCXBoeSA9IGRldm1fb2Zf
cGh5X2dldF9ieV9pbmRleChkZXYsIGRldi0+b2Zfbm9kZSwgMCk7Cj4gKwlpZiAoSVNfRVJSKHBo
eSkpIHsKPiArCQlpZiAoUFRSX0VSUihwaHkpICE9IC1FTk9ERVYpIHsKCltTZXZlcml0eTogSGln
aF0KV2lsbCB0aGlzIGNhdXNlIGEgcmVncmVzc2lvbiBpbiBkd2MzX3Fjb21fcHJvYmUoKSB3aGVu
IENPTkZJR19HRU5FUklDX1BIWSBpcwpkaXNhYmxlZD8KCldoZW4gQ09ORklHX0dFTkVSSUNfUEhZ
IGlzIG5vdCBzZXQsIGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCgpIHJldHVybnMKRVJSX1BUUigt
RU5PU1lTKS4gU2luY2UgLUVOT1NZUyBkb2VzIG5vdCBlcXVhbCAtRU5PREVWLCB0aGlzIGNoZWNr
IHdpbGwKZXZhbHVhdGUgdG8gdHJ1ZSBhbmQgY2F1c2UgdGhlIHByb2JlIHRvIHVuY29uZGl0aW9u
YWxseSBhYm9ydC4KClByaW9yIHRvIHRoaXMgcGF0Y2gsIHRoZSBkcml2ZXIgZGlkIG5vdCBmZXRj
aCB0aGUgUEhZIGRpcmVjdGx5LCBhbmQgdGhlCkRXQzMgY29yZSBncmFjZWZ1bGx5IGhhbmRsZXMg
LUVOT1NZUyBieSB0cmVhdGluZyBpdCBpZGVudGljYWxseSB0byAtRU5PREVWLgpDb3VsZCB0aGlz
IGVycm9yIGhhbmRsaW5nIGJlIHVwZGF0ZWQgdG8gYWxzbyBpZ25vcmUgLUVOT1NZUyBzbyB0aGF0
IGV4aXN0aW5nCmNvbmZpZ3VyYXRpb25zIHdpdGhvdXQgQ09ORklHX0dFTkVSSUNfUEhZIGNvbnRp
bnVlIHRvIHdvcms/Cgo+ICsJCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkp
LAo+ICsJCQkJCSAgICAiZmFpbGVkIHRvIGdldCB1c2IyIHBoeVxuIik7Cj4gKwkJCWdvdG8gY2xr
X2Rpc2FibGU7Cj4gKwkJfQo+ICsJCXBoeSA9IE5VTEw7Cj4gKwl9Cj4gKwlxY29tLT5oYXNfZXVz
YjJfcGh5ID0gKHBoeV9nZXRfdHlwZShwaHkpID09IFBIWV9UWVBFX0VVU0IyKTsKPiArCj4gIAlx
Y29tLT5tb2RlID0gdXNiX2dldF9kcl9tb2RlKGRldik7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA1LWV1c2IyLWludGVycnVw
dC12Ny12Ny0wLTgyMGNmNTM3N2E3MEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9NQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
