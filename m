Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E12C624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqU5A875Ja6jhuFquyo7KdTUMJ2FNTcpDhPwPLbh6v0=; b=JBHupsIHRIIAUL
	S5IB2Do4pjKxpVryZeVLOzoeCBBpeGMUhwn50Dk23HsdwV5rbAI41P38MdR+7+Up7AuAgzjY3vsfb
	Ar7up6AiIe4GSIF0n/M/mc3AmA8r57wtyl0RQ/IAll+/gMf7ug72gSEtnvdIr0Ch07k3dlGXN4QGu
	2hWXqPkJOr01cqAv/bDdojlM2XEn9WUJP8c3lPrOk+/Da0czqX+F1kSgPo1gfSnFWieUzjT9nO3xV
	QbsUIkC8KH2tLz2Q0v1b72BDSueu7k3+5pIJc0+AxX55Z/zSZRTMuvCuM9/C9SpSFzDC7hC9WakMJ
	mPrQb9SUb2IEEI/6xxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QsT-0000000CbYf-0cGb;
	Tue, 01 Sep 2026 15:58:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QsR-0000000CbY7-3RQA
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:58:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 907A6434B3;
	Tue,  1 Sep 2026 15:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 144271F000E9;
	Tue,  1 Sep 2026 15:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788278303;
	bh=zvgnTgwyrU8nafpmJLmWSm+0Rd2b54xKNuxR6gJPHNw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i271huYcw9ja0VgWWxaQbzFSvcvY2AEVoaIJFlYlLNR72s+yIv6VCcYFTobuxWyfG
	 Rjh7bp2Boi0AYY+7H+UNupfPvvqCzw/1R1FGNoIzhfq29GIGr3dl8gbHr510ZRkgG8
	 id+HiEYY4WyyGdFmpTE5solGTQqpFfokU2TBBLDcrpFbDO2nNO4OkCz1wR1yz6PIxQ
	 ArE+Tx2lo10SVReS4iPIEGiGLq2uNkdRBW6CbgqfPrbXUIHmsNAYZa7ZaubdHoiKCM
	 LKDdlq2oamZaFP45Xw/acOVAL5UYQd+Vbvr+Hx0P3w7bLEiI2/TNR8cH440HIvPyob
	 XUgmTRYjRSEfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 06/24] scsi: ufs: mediatek: Rework resets
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-6-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-6-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 15:58:22 +0000
Message-Id: <20260901155823.144271F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gQSBzcHVyaW91cyB3YXJu
aW5nICdQSFkgcmVzZXQgZmFpbGVkOiAobnVsbCknIGlzIGxvZ2dlZCBkdXJpbmcgaG9zdCByZXNl
dCB3aGVuIHRoZSBvcHRpb25hbCBNUEhZIGlzIGFic2VudC4KLS0KCmNvbW1pdCAzNzQ1MGQ2ZjEy
OTMyM2FlZDc3OWE1YTRhNzdiZGIwZGJhMzk3NDM1CkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xp
IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6
IFJld29yayByZXNldHMKClRoaXMgY29tbWl0IHJld29ya3MgdGhlIFVGUyBNZWRpYXRlayBkcml2
ZXIgdG8gdXNlIGJ1bGsgcmVzZXQgQVBJcy4KSXQgYWxzbyByZW1vdmVzIGxlZ2FjeSBNUEhZIHJl
c2V0IGNvbXBvbmVudHMgYW5kIHRyYW5zaXRpb25zIHRvIG9wdGlvbmFsCnJlc2V0IHZhcmlhbnRz
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBiL2RyaXZl
cnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4g
XQoKPiBAQCAtMjA0LDQ5ICsyMTAsNDYgQEAgc3RhdGljIHZvaWQgdWZzX210a19jcnlwdG9fZW5h
YmxlKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gIHN0YXRpYyB2b2lkIHVmc19tdGtfaG9zdF9yZXNl
dChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0
ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CgpbIC4uLiBdCgo+ICsJcmV0ID0gcGh5X3Jlc2V0
KGhvc3QtPm1waHkpOwo+ICAKPiAtCS8qIHJlc3RvcmUgbXBoeSBzZXR0aW5nIGFmdHJlIG1waHkg
cmVzZXQgKi8KPiAtCWlmIChob3N0LT5tcGh5X3Jlc2V0KQo+IC0JCXVmc19tdGtfbXBoeV9jdHJs
KFVGU19NUEhZX1JFU1RPUkUsIHJlcyk7Cj4gLX0KPiArCS8qCj4gKwkgKiBPbmx5IHNsZWVwIGlm
IHRoZXJlIGlzIG5vIE1QSFkgb3IgTVBIWSBkb2Vzbid0IGhhdmUgYSByZXNldAo+ICsJICogaW1w
bGVtZW50ZWQgKHdoaWNoIGFscmVhZHkgc2xlZXBzKSBvciB0aGUgUEhZIHJlc2V0IGZ1bmN0aW9u
IGZhaWxlZAo+ICsJICogc29tZWhvdywganVzdCB0byBiZSBzYWZlCj4gKwkgKi8KPiArCWlmICgh
aG9zdC0+bXBoeSB8fCByZXQpIHsKPiArCQl1c2xlZXBfcmFuZ2UoMTAwLCAxMTApOwo+ICsJCWlm
IChyZXQgIT0gLUVPUE5PVFNVUFApCj4gKwkJCWRldl93YXJuKGhiYS0+ZGV2LCAiUEhZIHJlc2V0
IGZhaWxlZDogJXBlXG4iLCBFUlJfUFRSKHJldCkpOwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhp
cyBjb2RlIGluYWR2ZXJ0ZW50bHkgbG9nIGEgc3B1cmlvdXMgd2FybmluZyB3aGVuIHRoZSBvcHRp
b25hbCBNUEhZIGlzCmFic2VudD8KCkluIHVmc19tdGtfaG9zdF9yZXNldCgpLCB3aGVuIGhvc3Qt
Pm1waHkgaXMgTlVMTCwgcGh5X3Jlc2V0KE5VTEwpIHJldHVybnMgMC4KVGhlIGNvbmRpdGlvbiBp
ZiAoIWhvc3QtPm1waHkgfHwgcmV0KSBldmFsdWF0ZXMgdG8gdHJ1ZSwgYW5kIHNpbmNlIDAgaXMg
bm90CmVxdWFsIHRvIC1FT1BOT1RTVVBQLCB0aGlzIHBhdGggc2VlbXMgdG8gaW5jb3JyZWN0bHkg
dHJpZ2dlciB0aGUgZGV2X3dhcm4oKSBvbgpldmVyeSByZXNldC4gVGhpcyB3aWxsIHJlc3VsdCBp
biBhIGNvbmZ1c2luZyBlcnJvciBtZXNzYWdlIGxpa2UKJ1BIWSByZXNldCBmYWlsZWQ6IChudWxs
KScuCgo+ICAJfQo+ICsKPiArCXJldCA9IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydChNVEtf
VUZTX05VTV9SRVNFVFMsIGhvc3QtPnJlc2V0cyk7Cj4gKwlpZiAocmV0KQo+ICsJCWRldl93YXJu
KGhiYS0+ZGV2LCAiSG9zdCByZXNldCBkZWFzc2VydCBmYWlsZWQ6ICVwZVxuIiwgRVJSX1BUUihy
ZXQpKTsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDkwMS1tdDgxOTYtdWZzLXYxMS0wLWRiZDAwNzcwNDQ5MEBjb2xsYWJv
cmEuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
