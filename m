Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9E2C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjiTJofrW9WmT7SQ1TsCwBHopu9bJ5x7OL3dwkJM340=; b=gnw94+zYCkKgum
	Ic6GGLr+AeptJ1OT0lv4VgVF+Z1ARdgAoX7uZOxhX34mYqt/0ZchF9VbTfsh+ipggyMLyk5buDPOX
	7WgxlAfIrMERrCZ8Kx1GAFLcef5vc9LKzaVoELK3agfnkTK19Tt4hGhWs141RUs9HDNPyjtDD9mfD
	fd7mZhFAW8XrZeS6Uv4RoqJkeMHWsi7H+wFAYS28c7c26fz1TfL7+Z1c1m+9lpXdaBtAgI8me9mGd
	lc2LDWumKMWADgfckefucYGHqWKaok03lq47GljHTbujqOYNUsulR4m5JlZizhjGoG3pH4X9rNSGS
	6PEBNnqRub0D5OiQfSqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R4o-0000000Ccxn-1KQQ;
	Tue, 01 Sep 2026 16:11:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R4n-0000000Ccxh-3Luh
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:11:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 60BEE4082D;
	Tue,  1 Sep 2026 16:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C175A1F000E9;
	Tue,  1 Sep 2026 16:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788279069;
	bh=+YWU8hjMtZOoVqfdvhTkUjpT+2v10oM7nCmOFuTWuu4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A7ZSBk+/cY43bB79SNKM87+VVn6yGUIiWWPB7NsC8IymoeNj6lx+V2yuZNtyjVHFw
	 FRVYmSs254yya2vgcUvRalwhfdwE6kSKDZ761czVMG/TU2JRNYHi4uoSfiAMGXOSnv
	 LDoSiNkM99LQRx4hzLN0/WV8yjqD1+ftNAh2qH9CXL/D1sVSkUYlBVE4KmqZrs/1Fr
	 sV3GYv4pGsnOrCb8GfCX8wWsH4j9JlKMlvw9jOs9lrP3q2A1JCeLb5RsIUqbXbW+M4
	 h7yQVNHAkdxe17DCspaomTjiQuEYBurKXh0JOx5Nf9CKBn/vxV/vWy+oNEX7Cmp3O8
	 tzge4nhLna2gA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 11/24] scsi: ufs: mediatek: Handle misc host voltage
 regulators
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-11-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-11-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:11:08 +0000
Message-Id: <20260901161108.C175A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVXNlIG9mIGRldl9lcnIo
KSBpbnN0ZWFkIG9mIGRldl9lcnJfcHJvYmUoKSBmb3IgYSBmdW5jdGlvbiB0aGF0IGNhbiByZXR1
cm4gLUVQUk9CRV9ERUZFUi4KLS0KCmNvbW1pdCA0NmQzYzAxNTRjYmU2NWZlMzFkODEzYjQ1ZWFh
M2NiMTczMjc1N2FlCkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJv
bGlAY29sbGFib3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6IEhhbmRsZSBtaXNjIGhvc3Qg
dm9sdGFnZSByZWd1bGF0b3JzCgpNZWRpYVRlayBTb0NzIGhhbmRsZWQgYnkgdGhpcyBkcml2ZXIg
Y29udGFpbiBhIHBlci1Tb0Mgc3BlY2lmaWMgc2V0IG9mCm1pc2NlbGxhbmVvdXMgc3VwcGxpZXMu
IEFkZCB0aGUgbmVjZXNzYXJ5IGRyaXZlciBjb2RlIHRvIGFjcXVpcmUgdGhlc2UKc3VwcGxpZXMg
dXNpbmcgdGhlIHJlZ3VsYXRvciBidWxrIEFQSSBhbmQga2VlcCB0aGVtIG9uIGR1cmluZyBzdXNw
ZW5kLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBiL2Ry
aXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCA2YmJmNTNiNjU4ZjJkLi5mNjE3
Mjc4NzljM2M3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMK
PiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCgpbIC4uLiBdCgo+IEBAIC0x
MjE3LDEwICsxMjE5LDIwIEBAIHN0YXRpYyBpbnQgdWZzX210a19nZXRfc3VwcGxpZXMoc3RydWN0
IHVmc19tdGtfaG9zdCAqaG9zdCkKPiAgewo+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gaG9zdC0+
aGJhLT5kZXY7Cj4gIAljb25zdCBzdHJ1Y3QgdWZzX210a19zb2NfZGF0YSAqZGF0YSA9IG9mX2Rl
dmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+ICsJaW50IHJldDsKPiAgCj4gIAlpZiAoIWRhdGEp
Cj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICsJaWYgKGRhdGEtPm51bV9yZWdfbmFtZXMpIHsKPiArCQly
ZXQgPSBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldF9lbmFibGUoZGV2LCBkYXRhLT5udW1fcmVnX25h
bWVzLAo+ICsJCQkJCQkgICAgIGRhdGEtPnJlZ19uYW1lcyk7Cj4gKwkJaWYgKHJldCkgewo+ICsJ
CQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgbWlzYyByZWd1bGF0b3JzOiAlcGVcbiIsIEVS
Ul9QVFIocmV0KSk7CgpbU2V2ZXJpdHk6IExvd10KQ291bGQgdGhpcyBzcGFtIGRtZXNnIGR1cmlu
ZyBwcm9iZSBkZWZlcnJhbD8KCklmIHRoZSByZWd1bGF0b3JzIGFyZSBub3QgeWV0IGF2YWlsYWJs
ZSB3aGVuIHVmc19tdGtfcHJvYmUoKSBjYWxscwp1ZnNfbXRrX2dldF9zdXBwbGllcygpLCBkZXZt
X3JlZ3VsYXRvcl9idWxrX2dldF9lbmFibGUoKSB3aWxsIHJldHVybgotRVBST0JFX0RFRkVSLiBU
aGlzIGNhdXNlcyBkZXZfZXJyKCkgdG8gcHJpbnQgYW4gZXJyb3IgbWVzc2FnZSBvbiBldmVyeSBw
cm9iZQpyZXRyeS4KCldvdWxkIGl0IGJlIGJldHRlciB0byB1c2UgZGV2X2Vycl9wcm9iZSgpIGhl
cmUgaW5zdGVhZCB0byBxdWlldGx5IGhhbmRsZQotRVBST0JFX0RFRkVSIGFuZCBhdm9pZCB0aGUg
bG9nIHNwYW0/Cgo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiArCj4gIAlpZiAoZGF0
YS0+aGFzX2F2ZGQwOSkgewo+ICAJCWhvc3QtPnJlZ19hdmRkMDkgPSBkZXZtX3JlZ3VsYXRvcl9n
ZXRfb3B0aW9uYWwoZGV2LCAiYXZkZDA5Iik7Cj4gIAkJaWYgKElTX0VSUihob3N0LT5yZWdfYXZk
ZDA5KSkgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkwMS1tdDgxOTYtdWZzLXYxMS0wLWRiZDAwNzcwNDQ5MEBjb2xsYWJvcmEu
Y29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
