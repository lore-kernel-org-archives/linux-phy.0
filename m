Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AF77C624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jafSx5RwaNGGH3X0LYYEGR31eCQuoc5Q6upzFNewoD8=; b=BchvITU9/sYwDf
	3UOxEd3qtaToEcKlf+oVknGRgF1cw15Hj8w9LNV0t6OjqBMx7B1yCQ+m5ppqYCEPg0F2XmtQ9bl+h
	Me1wIqmQn7HX81GqyGHfYaOlz4jMReKDZntgm5clmCqKc5RNMw0L8l6oMjxDub3MuH+L66huYXwPl
	fDlvnTsIktZ7eWFgcxye1/CH/2AIEyLk7q4vGlg6CQk4Pu4kQ7IbiJ8w6RXcNN22+YypnXOKrvMHs
	3vnXhO36OMO0iJ3YHMpuiEcclpVIm+AoNiVZNwr+HXKIAf7dXo0uO8tlrshptXMsJpsXgvwvMNSB3
	Ix+ZlX7+R1dSKdk93dZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RPR-0000000CfJu-2vBG;
	Tue, 01 Sep 2026 16:32:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RPR-0000000CfJj-0poW
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:32:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D83A840A95;
	Tue,  1 Sep 2026 16:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C1E81F000E9;
	Tue,  1 Sep 2026 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788280348;
	bh=RVThgaMR7YohtKU+H34GcPG6L+uQ/2tYAFBh5huo7Aw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NEcYq2JYd/dvywBUlY5TZauCY6BC/h3ZQk+q0O8o2ofgu8WAguvE2utBzaLhf2WTZ
	 CBoNatInlvzyrgUR1nZ3dna6okUWkCPJgzGTWXB9S650GbL7efzj//P2LIlI5v4OVe
	 hfIByv2BfvOfQ3C50rzJflWiqXwLOk6YNzgVX6AXy9a+t+aQZ1vef54u4FSrI8CYAR
	 PC4U+VnaEJsc5RwYUGkI8kWwA2PqUOTGG81gei3XnwOV2U+pE+AL+MeIgooLdGPbpH
	 nmSi6Brc+wmPiEOr1q0OftMn6ameRzg6CsQBZTqxm6YYlCG8yn1Nk+BA73GdgUfSFg
	 2knVwUg1N99Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 24/24] scsi: ufs: mediatek: Add MT8196 compatible,
 update copyright
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: olteanv@gmail.com, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-24-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-24-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:32:27 +0000
Message-Id: <20260901163228.3C1E81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbnNpc3RlbnQgaGFyZHdhcmUgc3RhdGUgb24gcm9sbGJhY2sgZmFpbHVyZSBp
biB1ZnNfbXRrXzA5dl9vZmYoKSBsZWFkcyB0byByZWd1bGF0b3Igc3RhdGUgbWlzbWF0Y2ggYW5k
IHBvdGVudGlhbCBjcmFzaC4KLS0KCmNvbW1pdCA1MzI1OTJkMTg2MmQ5NDJkZDA5NDAwZDY4ODgw
MzExMWZjMmQxMmNiCkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJv
bGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6IEFkZCBNVDgxOTYgY29tcGF0
aWJsZSwgdXBkYXRlIGNvcHlyaWdodAogICAgClRIZSBNVDgxOTYncyBVRlMgY29udHJvbGxlciBo
YXMgYSBuZXcgY29tcGF0aWJsZS4gQWRkIHRoZSBuZWNlc3NhcnkKc3RydWN0IGRlZmluaXRpb25z
IHRvIHN1cHBvcnQgaXQuCiAgICAKQWxzbyB1cGRhdGUgdGhlIGNvcHlyaWdodHMgYW5kIGF1dGhv
cnMsIHdpdGhvdXQgdGFicyBmb2xsb3dpbmcgc3BhY2VzIHRvCmF2b2lkIGNoZWNrcGF0Y2ggZXJy
b3JzLCB0byBsaXN0IG15c2VsZiBhcyBoYXZpbmcgY29udHJpYnV0ZWQgdG8gdGhpcwpkcml2ZXIg
YWZ0ZXIgdGhlIHByZWNlZGluZyByZXdvcmsgcGF0Y2hlcy4KCj4gVEhlIE1UODE5NidzIFVGUyBj
b250cm9sbGVyIGhhcyBhIG5ldyBjb21wYXRpYmxlLiBBZGQgdGhlIG5lY2Vzc2FyeQoKVGhpcyBp
c24ndCBhIGJ1ZywgYnV0IHRoZXJlIGlzIGEgdHlwbyAoVEhlKSBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJp
dmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+IGluZGV4IGE4OTQ4MTBhODNkZTcuLmU2YTY3
Mjg4OGQwNDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+
ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKClsgLi4uIF0KCj4gQEAgLTIy
NTQsMTAgKzIyNjAsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB1ZnNfbXRrX3NvY19kYXRhIG10
ODE5Ml84MTk1X2RhdGEgPSB7Cj4gIAkubnVtX3JlZ19uYW1lcyA9IEFSUkFZX1NJWkUodWZzX210
a19yZWdzX2F2ZGQxMl9ja2J1Zl9hdmRkMTgpLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0
cnVjdCB1ZnNfbXRrX3NvY19kYXRhIG10ODE5Nl9kYXRhID0gewo+ICsJLmhhc19hdmRkMDkgPSB0
cnVlLAo+ICsJLmhhc19hdmRkMDlfMSA9IHRydWUsCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMg
YSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCB0aGlzIGNvbW1pdCBleHBsaWNpdGx5IGV4cG9zZXMg
YSBkb3JtYW50CnJlZ3VsYXRvciBzdGF0ZSBtaXNtYXRjaCBidWcgYmVjYXVzZSBtdDgxOTZfZGF0
YSBpcyB0aGUgZmlyc3QgdG8gc2V0Cmhhc19hdmRkMDlfMSB0byB0cnVlLgoKSW4gdWZzX210a18w
OXZfb2ZmKCksIGlmIGhvc3QtPnJlZ19hdmRkMDkgaXMgc3VjY2Vzc2Z1bGx5IGRpc2FibGVkIGJ1
dApob3N0LT5yZWdfYXZkZDA5XzEgc3Vic2VxdWVudGx5IGZhaWxzIHRvIGRpc2FibGUsIHRoZSBm
dW5jdGlvbiBlbnRlcnMgYW4KZXJyb3Igcm9sbGJhY2sgcGF0aDoKCmRyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmM6dWZzX210a18wOXZfb2ZmKCkgewouLi4KCWlmIChob3N0LT5yZWdfYXZk
ZDA5KSB7CgkJcmV0ID0gcmVndWxhdG9yX2Rpc2FibGUoaG9zdC0+cmVnX2F2ZGQwOSk7Ci4uLgoJ
fQoKCWlmIChob3N0LT5yZWdfYXZkZDA5XzEpIHsKCQlyZXQgPSByZWd1bGF0b3JfZGlzYWJsZSho
b3N0LT5yZWdfYXZkZDA5XzEpOwoJCWlmIChyZXQpIHsKCQkJZGV2X2Vycihob3N0LT5oYmEtPmRl
diwgIkZhaWxlZCB0byBkaXNhYmxlIGF2ZGQwOS0xLXN1cHBseTogJXBlXG4iLAoJCQkJRVJSX1BU
UihyZXQpKTsKCQkJdWZzX210a192YTA5X3B3cl9jdHJsKHJlcywgMSk7CgkJCXJldHVybiByZXQ7
CgkJfQoJfQouLi4KfQoKSXQgcmVzdG9yZXMgU01DIHBvd2VyIHdpdGggdWZzX210a192YTA5X3B3
cl9jdHJsKHJlcywgMSkgYW5kIHJldHVybnMgYW4KZXJyb3IsIGJ1dCBjcnVjaWFsbHkgbWlzc2Vz
IGNhbGxpbmcgcmVndWxhdG9yX2VuYWJsZShob3N0LT5yZWdfYXZkZDA5KSB0bwpyZXZlcnQgdGhl
IHByZXZpb3VzbHkgZGlzYWJsZWQgaG9zdC0+cmVnX2F2ZGQwOSByZWd1bGF0b3IuCgpUaGlzIGxl
YXZlcyB0aGUgVUZTIFBIWSBzdGF0ZSBtYXJrZWQgYXMgcG93ZXJlZCBvbiwgYnV0IHRoZSBQSFkg
aXMKcGh5c2ljYWxseSBkaXNhYmxlZCBhbmQgaXRzIGVzc2VudGlhbCByZWdfYXZkZDA5IHJlZ3Vs
YXRvciBpcyBwb3dlcmVkIG9mZi4KCkNvdWxkIHN1YnNlcXVlbnQgYWNjZXNzZXMgdG8gdGhlIFVG
UyBjb250cm9sbGVyIGF0dGVtcHQgdG8gb3BlcmF0ZSBvbgp1bnBvd2VyZWQgaGFyZHdhcmUsIGxp
a2VseSBjYXVzaW5nIGEgaGFyZHdhcmUgaGFuZyBvciBhbiBhc3luY2hyb25vdXMKZXh0ZXJuYWwg
YWJvcnQgdGhhdCBjcmFzaGVzIHRoZSBzeXN0ZW0/Cgo+ICsJLnJlZ19uYW1lcyA9IHVmc19tdGtf
cmVnc19hdmRkMTJfY2tidWYsCj4gKwkubnVtX3JlZ19uYW1lcyA9IEFSUkFZX1NJWkUodWZzX210
a19yZWdzX2F2ZGQxMl9ja2J1ZiksCj4gK307Cj4gKwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkwMS1tdDgxOTYtdWZzLXYxMS0w
LWRiZDAwNzcwNDQ5MEBjb2xsYWJvcmEuY29tP3BhcnQ9MjQKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
