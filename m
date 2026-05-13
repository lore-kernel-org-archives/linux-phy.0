Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7684DCD37AC
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 20:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BB0a64i8qXTA4wN8+TyQkL0uUfx5eIXYa+4HzjPC5dQ=; b=BZ/SMi6WQU1DqI
	8MIkbKgBE7adSqP1BE6sRxrhileduYqzLllCQwrEtEUUPeoEuyn6l5mX/mA2hmZa2HYDzCJsm2kUm
	TUxXjvPQE6nFTPpxR1leNM1+SZplBkViM2UhkCqvFZ1NCQ0Hwq47XFW0WCDUY9iggii1aRqylcRye
	WtTQpNmDdvwcTY0Y8Z0byBOhjN8lP+x3b7c5tBfzQUeMxqMQumPt5DClTH+mn+nbafRZl43jYaBm4
	Qn8F6HbyuErzjmVEY3+iEzXXUSJfcGdflw8XZLrC1ULP2jqw+V3YRM/h6lvZPqvCUajxG2l0IwnLl
	f8V6jYBxJ4GhKxnrX2tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNGJc-00000003kEN-0xF9;
	Wed, 13 May 2026 20:36:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNGJa-00000003kEE-3Dzx
	for linux-phy@bombadil.infradead.org;
	Wed, 13 May 2026 20:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Reply-To:
	Subject:From:Sender:MIME-Version:Content-ID:Content-Description;
	bh=lU5c6CmJT2QlhW7S/ZMffS6IrBmo/2cf13fu15CMEEM=; b=XuDOcx6zeypV37oi3SnE5y85oT
	iFKXzU4dNCnQvyBEGteXzGdqSaQliwei9UM9oPS3VxnWCS927tuRdilK34xL1tBVHDl84HVeYj485
	LjPhA94/gFt48dPagf2GknX2eWf9t973PRuX2rOFEPuKrWuieBUg8cPc6FA+j16G42lfp7N6rKqzk
	zaqb06AELlF5Lb53h3Uhs509Sdbt3kwLTtssK6Ik800q6SRSqp29Xyj2Be71YLAQSa/ZRvBIDnqAt
	VFOu6L3I6UoYCLDsRVLh62euAoxVEZFiIxVfn9VfEW+ZIdaddUsO1otsz1+R/uC75PNkX8OYRO7Jd
	Y9hD7CZA==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNGJX-00000001Po0-06Jd
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 20:36:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A308E41E65;
	Wed, 13 May 2026 20:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26ADC19425;
	Wed, 13 May 2026 20:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778704577;
	bh=igiAOqMJ+PW3iRFkkM/moq2giTXus4FGIzUG6jGZVPg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=FBqGrVjBBzQovIwUAfcUADANQYGn9IhJJLhb4VALKEY/YIcjsewx7xGR8Z7LKnzM3
	 v8cdMIjk2TBtvpXbUCAR4RCcdC8B64Uw8rWEQQvANmrHViKS778A/ATS/Zc7O1E8zW
	 2ny2fvq/oKyZkAmTF9iFHxeY9jMdBzJPzQ80GToAQf/MBQt3lv+DaVMG9qTjFQAGA/
	 RkzFWzTc1DR0RLkI+i5hmM9nPCvPDPvY7mK2TwCDpUWZhXovRn6+4oLTQg2/vZU6pC
	 kYcCbzMYVJWKsGyKcMAThUObXZ1lHE/gPhsjTYrobvpuB/H8gMQxxz16oXwJNMY09U
	 evC2j/UP0Kcyw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: add control register regmap
To: "Xu Yang" <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, Frank.Li@kernel.org, neil.armstrong@linaro.org, imx@lists.linux.dev, olteanv@gmail.com
In-Reply-To: <20260512101212.1498223-1-xu.yang_2@nxp.com>
References: <20260512101212.1498223-1-xu.yang_2@nxp.com>
Date: Wed, 13 May 2026 20:36:14 +0000
Message-Id: <20260513203615.A26ADC19425@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_213619_737626_B4A9B065 
X-CRM114-Status: GOOD (  16.82  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEV4cG9ydGluZyB0aGUg
Q1IgcG9ydCByZWdtYXAgdmlhIGRlYnVnZnMgd2l0aG91dCBjbG9jayBzeW5jaHJvbml6YXRpb24g
YWxsb3dzIHVuY2xvY2tlZCBNTUlPIGFjY2Vzc2VzLCBsZWFkaW5nIHRvIGEgc3luY2hyb25vdXMg
ZXh0ZXJuYWwgYWJvcnQgKGtlcm5lbCBwYW5pYykuCi0gW01lZGl1bV0gVXNpbmcgYSBkaXJlY3Qg
TU1JTyByZWdtYXAgZm9yIGFuIGluZGlyZWN0IGRhdGEvYWRkcmVzcyBwYXJhbGxlbCBwb3J0IGRv
ZXMgbm90IGNvcnJlY3RseSBleHBvc2UgdGhlIGludGVybmFsIFBIWSByZWdpc3RlcnMsIGRlZmVh
dGluZyB0aGUgZGlhZ25vc3RpYyBwdXJwb3NlIG9mIHRoZSBwYXRjaC4KLS0KCmNvbW1pdCBhYzA2
YjYxYzhmNzkzZmY0ZjU2OTNiMDA5ZmJhZDE1ZTk1ZDgyMjQyCkF1dGhvcjogWHUgWWFuZyA8eHUu
eWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBhZGQgY29udHJvbCByZWdpc3Rl
ciByZWdtYXAKClRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJpdCBkYXRhL2FkZHJlc3MgcGFy
YWxsZWwgcG9ydCB0aGF0IGlzCnByb3ZpZGVkIGZvciBvbi1jaGlwIGFjY2VzcyB0byB0aGUgY29u
dHJvbCByZWdpc3RlcnMgaW5zaWRlIHRoZQpVU0IgMy4wIGZlbXRvUEhZLiBBZGQgY29udHJvbCBy
ZWdpc3RlciByZWdtYXAgYW5kIGV4cG9ydCB0aGVzZQpyZWdpc3RlcnMgYnkgZGVidWdmcyB0byBo
ZWxwIFBIWSdzIGRpYWdub3N0aWMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1p
bXg4bXEtdXNiLmMKPiBpbmRleCBiMDVkODBlODQ5YTE0Li45NThkMTE0YjBjODM1IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwpbIC4uLiBdCj4gQEAg
LTY4NSw2ICs2ODksMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14OG1x
X3VzYl9waHlfb2ZfbWF0Y2hbXSA9IHsKPiAgfTsKPiAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwg
aW14OG1xX3VzYl9waHlfb2ZfbWF0Y2gpOwo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCByZWdt
YXBfY29uZmlnIGlteF9jcl9yZWdtYXBfY29uZmlnID0gewo+ICsJLm5hbWUgPSAiY3IiLAo+ICsJ
LnJlZ19iaXRzID0gMzIsCj4gKwkudmFsX2JpdHMgPSAzMiwKPiArCS5yZWdfc3RyaWRlID0gNCwK
PiArCS5tYXhfcmVnaXN0ZXIgPSAweDcsCj4gK307Cj4gKwo+ICBzdGF0aWMgaW50IGlteDhtcV91
c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiAgCXN0cnVj
dCBwaHlfcHJvdmlkZXIgKnBoeV9wcm92aWRlcjsKPiBAQCAtNzEzLDYgKzcyNSwxMSBAQCBzdGF0
aWMgaW50IGlteDhtcV91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIAlpZiAoSVNfRVJSKGlteF9waHktPmJhc2UpKQo+ICAJCXJldHVybiBQVFJfRVJSKGlteF9w
aHktPmJhc2UpOwo+ICAKPiArCWlteF9waHktPmNyX3JlZ21hcCA9IGRldm1fcmVnbWFwX2luaXRf
bW1pbyhkZXYsIGlteF9waHktPmJhc2UgKyBQSFlfQ1JDVEwsCj4gKwkJCQkJCSAgICZpbXhfY3Jf
cmVnbWFwX2NvbmZpZyk7CgpXaWxsIGFjY2Vzc2luZyB0aGUgZGVidWdmcyBmaWxlIHdoZW4gdGhl
IFBIWSBpcyBzdXNwZW5kZWQgb3Igbm90IHlldCBwb3dlcmVkCm9uIGNhdXNlIGEga2VybmVsIHBh
bmljPwoKVGhlIGRyaXZlciBkeW5hbWljYWxseSBtYW5hZ2VzIGl0cyBjbG9ja3MgKGlteF9waHkt
PmNsayBhbmQgaW14X3BoeS0+YWx0X2NsaykKaW4gaW14OG1xX3BoeV9wb3dlcl9vbigpIGFuZCBp
bXg4bXFfcGh5X3Bvd2VyX29mZigpIHJhdGhlciB0aGFuIHVzaW5nCnBtX3J1bnRpbWUuCgpTaW5j
ZSBkZXZtX3JlZ21hcF9pbml0X21taW8oKSBkb2VzIG5vdCBhdHRhY2ggYSBjbG9jayB0byB0aGUg
cmVnbWFwLAp0aGUgcmVnbWFwIGNvcmUgd29uJ3QgZW5hYmxlIGNsb2NrcyBkdXJpbmcgZGVidWdm
cyByZWdpc3RlciBhY2Nlc3Nlcy4gT24KaS5NWCBwbGF0Zm9ybXMsIE1NSU8gcmVhZHMgb24gYW4g
dW5jbG9ja2VkIGhhcmR3YXJlIGJsb2NrIHRyaWdnZXIgYQpzeW5jaHJvbm91cyBleHRlcm5hbCBh
Ym9ydC4KCkNvdWxkIHdlIGRlbGVnYXRlIGNsb2NrIG1hbmFnZW1lbnQgdG8gdGhlIHJlZ21hcCAo
ZS5nLiwgYnkgdXNpbmcKZGV2bV9yZWdtYXBfaW5pdF9tbWlvX2NsaygpKSBvciBpbXBsZW1lbnQg
cG1fcnVudGltZSBob29rcz8KCkFkZGl0aW9uYWxseSwgdGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRp
b25zIHRoZSBDUiBwb3J0IGlzIGEgMTYtYml0CmRhdGEvYWRkcmVzcyBwYXJhbGxlbCBwb3J0IHVz
ZWQgdG8gYWNjZXNzIGludGVybmFsIFBIWSByZWdpc3RlcnMuIERvZXMKdGhpcyBkaXJlY3QgTU1J
TyByZWdtYXAgYWN0dWFsbHkgZXhwb3NlIHRoZSBpbnRlcm5hbCBQSFkgcmVnaXN0ZXJzPwoKU2lu
Y2UgZGV2bV9yZWdtYXBfaW5pdF9tbWlvKCkgY3JlYXRlcyBhIGRpcmVjdCBtZW1vcnktbWFwcGVk
IHJlZ21hcCBvdmVyCnRoZSBDUiBwb3J0J3MgYmFzZSBNTUlPIHJlZ2lzdGVycywgcmVhZGluZyB0
aGUgZGVidWdmcyBmaWxlIHdpbGwgc2ltcGx5CmR1bXAgdGhlIENSIHBvcnQncyBBZGRyZXNzIGFu
ZCBEYXRhIE1NSU8gcmVnaXN0ZXJzLiBJdCB3b24ndCBleGVjdXRlIHRoZQpyZXF1aXJlZCBhZGRy
ZXNzL2RhdGEgaGFuZHNoYWtlIHByb3RvY29sIHRvIHJlYWQgdGhlIGludGVybmFsIFBIWSBzdGF0
ZSwKd2hpY2ggZGVmZWF0cyB0aGUgZGlhZ25vc3RpYyBwdXJwb3NlIG9mIHRoZSBwYXRjaC4KCldv
dWxkIGl0IGJlIGJldHRlciB0byBpbXBsZW1lbnQgYSBjdXN0b20gcmVnbWFwX2J1cyB0byBoYW5k
bGUgdGhlIGF0b21pYwphZGRyZXNzL2RhdGEgaW5kaXJlY3QgcmVhZCBzZXF1ZW5jZT8KCkFsc28s
IGlzIG1heF9yZWdpc3RlciA9IDB4NyBjb3JyZWN0IGhlcmU/IEl0IHNlZW1zIG1pc2xlYWRpbmcg
Zm9yIGEgMzItYml0CnJlZ21hcCB3aXRoIGEgc3RyaWRlIG9mIDQgaWYgdGhlcmUgYXJlIG9ubHkg
YSBjb3VwbGUgb2YgTU1JTyByZWdpc3RlcnMuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTEyMTAxMjEyLjE0OTgyMjMtMS14dS55
YW5nXzJAbnhwLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
