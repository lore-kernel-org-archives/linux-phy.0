Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA6B2C4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1uBamhCcWFO7E7mLI6vWF1iwVVXt+Npc+lwVFw2rkM=; b=eotgwXdWefCbbQ
	xq1bWEEQfj1JWDh6oqUgwPrepsdS02uufCBo9s9jJGWEKkN4ieQCcGMTy53ajIGC8+7+14/m7vMeT
	5azvZIpDJAGWkuFaEeubaiU6mnu2AT3zbFH/0EqMi3y5h0dFKeZvJN0mz29WhyRGQ+3eR+rbjEFWR
	cMIuojTIHC0g1Z+K91WwsUBnkGDNw41C43AQ9hkYF3GVJQ9F4cRpekUbFI2ywiYlZLi61JQ6f2a0Q
	uY71gJKMuKexU+Rch7LPmxrI/Rhx/gqUrf00flnx2wfw8XzIB67YbtuLWmgDp4UJ+oTNXsOZf3efb
	fPExEBQLFko6G0zMUdDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl141-00000003wBT-0c3h;
	Sat, 18 Jul 2026 09:10:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl13z-00000003wB6-3idZ
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 09:10:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 29D1840997;
	Sat, 18 Jul 2026 09:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24B81F000E9;
	Sat, 18 Jul 2026 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784365827;
	bh=46axE531NMeXXqrYN/5GxuQRO2vEnX7vXrwlooHpohs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZijdbqM3GfIhWsWav51+EFnSjSAVySvcib+K48Yidj/ZufbKcQsxJbjHpOEc4kIqn
	 Q6fruy/5p0KrbzrIlpF34a7Z5P4cBiFyJMJ04SyVGBeXpHdB6JHKMNlda8y7x3CttC
	 sPhPRo9WUPxVLiNGo0XOgS2N6XCgmUPbXrYz7rGlLTaIP79PFIvKM0coDZfuuJI/pc
	 ddH12eil7NgZcOdNglRiZUT4cy7Kpe8RLCZMpTUDENZKqQjLMH6fS1FdAz+WxgSuCQ
	 i8HR3DDxFCpwm9X8x3bo7oU+ydudrWS6lHRuRAKtYlx2ND5AvkM8uJ8nDM7tUjaa/7
	 pBKez9syMX7Qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: starfive: Fix runtime PM cleanup in JH7110
 DPHY RX probe
To: "Can Peng" <pengcan@kylinos.cn>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260718090054.444513-3-pengcan@kylinos.cn>
References: <20260718090054.444513-1-pengcan@kylinos.cn>
 <20260718090054.444513-3-pengcan@kylinos.cn>
Date: Sat, 18 Jul 2026 09:10:26 +0000
Message-Id: <20260718091026.B24B81F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgcGh5X2NvbmZpZ3VyZSBjYWxsYmFjayBhY2Nlc3NlcyBoYXJkd2FyZSByZWdp
c3RlcnMgd2hpbGUgdGhlIGRldmljZSBpcyBzdGlsbCBpbiByZXNldCBhbmQgd2l0aG91dCBlbnN1
cmluZyB0aGUgUE0gZG9tYWluIGlzIGFjdGl2ZS4KLSBbSGlnaF0gVGhlIGRyaXZlciBhY3F1aXJl
cyBhbmQgY29uZmlndXJlcyBjbG9ja3MgYnV0IG5ldmVyIGVuYWJsZXMgdGhlbS4KLS0KCi0tLSBQ
YXRjaCBbMl06IFtQQVRDSCB2MiAyLzJdIHBoeTogc3RhcmZpdmU6IEZpeCBydW50aW1lIFBNIGNs
ZWFudXAgaW4gSkg3MTEwIERQSFkgUlggcHJvYmUgLS0tCmNvbW1pdCBmZThhNTBkZWQ0YjZlMDM5
M2ZkNmQ2YTI3ZDIyNzM1MjY2NDI3YTkxCkF1dGhvcjogQ2FuIFBlbmcgPHBlbmdjYW5Aa3lsaW5v
cy5jbj4KCnBoeTogc3RhcmZpdmU6IEZpeCBydW50aW1lIFBNIGNsZWFudXAgaW4gSkg3MTEwIERQ
SFkgUlggcHJvYmUKCnN0Zl9kcGh5X3Byb2JlKCkgZW5hYmxlcyBydW50aW1lIFBNIGJlZm9yZSBy
ZWdpc3RlcmluZyB0aGUgUEhZIHByb3ZpZGVyLgpJZiBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdp
c3RlcigpIGZhaWxzLCBwcm9iZSByZXR1cm5zIHdpdGggcnVudGltZSBQTQpzdGlsbCBlbmFibGVk
LiBUaGlzIGNvbW1pdCB1c2VzIGRldm1fcG1fcnVudGltZV9lbmFibGUoKSB0byBlbnN1cmUKcnVu
dGltZSBQTSBpcyBkaXNhYmxlZCBhdXRvbWF0aWNhbGx5IG9uIGxhdGVyIHByb2JlIGZhaWx1cmVz
IG9yIHVuYmluZC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3N0YXJmaXZlL3BoeS1qaDcx
MTAtZHBoeS1yeC5jIGIvZHJpdmVycy9waHkvc3RhcmZpdmUvcGh5LWpoNzExMC1kcGh5LXJ4LmMK
PiBpbmRleCAwYjAzOWUxZjcxYzU1Li5kMDZmMjFhZDYzMzI1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3N0YXJmaXZlL3BoeS1qaDcxMTAtZHBoeS1yeC5jCj4gKysrIGIvZHJpdmVycy9waHkv
c3RhcmZpdmUvcGh5LWpoNzExMC1kcGh5LXJ4LmMKPiBAQCAtMTUwLDYgKzE1MCw3IEBAIHN0YXRp
YyBpbnQgc3RmX2RwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+
ICAJc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3Byb3ZpZGVyOwo+ICAJc3RydWN0IHN0Zl9kcGh5
ICpkcGh5Owo+ICsJaW50IHJldDsKPiAgCj4gIAlkcGh5ID0gZGV2bV9remFsbG9jKCZwZGV2LT5k
ZXYsIHNpemVvZigqZHBoeSksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFkcGh5KQpbIC4uLiBdCj4g
QEAgLTE5MCw3ICsxOTEsOSBAQCBzdGF0aWMgaW50IHN0Zl9kcGh5X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJcmV0dXJuIFBUUl9FUlIoZHBoeS0+cGh5KTsKPiAgCX0K
PiAgCj4gLQlwbV9ydW50aW1lX2VuYWJsZSgmcGRldi0+ZGV2KTsKPiArCXJldCA9IGRldm1fcG1f
cnVudGltZV9lbmFibGUoJnBkZXYtPmRldik7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7
Cj4gIAo+ICAJcGh5X3NldF9kcnZkYXRhKGRwaHktPnBoeSwgZHBoeSk7Cj4gIAlwaHlfcHJvdmlk
ZXIgPSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigmcGRldi0+ZGV2LAoKW1NldmVyaXR5
OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHdo
aWxlIHJldmlld2luZyB0aGUgUE0KY2hhbmdlcywgSSBub3RpY2VkIGFuIGlzc3VlIGluIHN0Zl9k
cGh5X2NvbmZpZ3VyZSgpLgoKVGhlIHBoeV9jb25maWd1cmUgY2FsbGJhY2sgYWNjZXNzZXMgaGFy
ZHdhcmUgcmVnaXN0ZXJzIGRpcmVjdGx5OgoKc3RmX2RwaHlfY29uZmlndXJlKCkgewogICAgLi4u
CiAgICB3cml0ZWwoRklFTERfUFJFUChTVEZfRFBIWV9FTkFCTEVfQ0xLLCAxKSB8CiAgICAgICAg
ICAgRklFTERfUFJFUChTVEZfRFBIWV9FTkFCTEVfQ0xLMSwgMSkgfAogICAgLi4uCn0KCkhvd2V2
ZXIsIHRoZSBQTSBkb21haW4gaXMgcmVzdW1lZCBhbmQgdGhlIHJlc2V0IGlzIGRlYXNzZXJ0ZWQg
bGF0ZXIgaW4Kc3RmX2RwaHlfcG93ZXJfb24oKS4gCgpCZWNhdXNlIHRoZSBSWCBkcml2ZXIgbGFj
a3MgYSBwaHlfaW5pdCgpIGNhbGxiYWNrLCBpZiBhIGNvbnN1bWVyIChsaWtlCmEgTUlQSSBDU0kt
Mi9EU0kgY29udHJvbGxlcikgY2FsbHMgcGh5X2NvbmZpZ3VyZSgpIHByaW9yIHRvIHBoeV9wb3dl
cl9vbigpLAp3aWxsIHRoaXMgY2F1c2UgYSBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCBvciBz
aWxlbnQgd3JpdGUgZmFpbHVyZSBieQphY2Nlc3NpbmcgcmVnaXN0ZXJzIG9mIGEgZGV2aWNlIHRo
YXQgaXMgc3RpbGwgaGVsZCBpbiByZXNldCBhbmQgdW5wb3dlcmVkPwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzIGFsc28gYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBJIG5vdGljZWQgYSBwb3Rl
bnRpYWwgcHJvYmxlbSBpbgpzdGZfZHBoeV9wb3dlcl9vbigpIHJlZ2FyZGluZyBjbG9jayBlbmFi
bGVtZW50LgoKVGhlIGRyaXZlciBhY3F1aXJlcyBjZmdfY2xrLCByZWZfY2xrLCBhbmQgdHhfY2xr
IGluIHByb2JlKCkgYW5kIHNldHMgdGhlaXIKcmF0ZXMgaW4gc3RmX2RwaHlfcG93ZXJfb24oKToK
CnN0Zl9kcGh5X3Bvd2VyX29uKCkgewogICAgLi4uCiAgICBjbGtfc2V0X3JhdGUoZHBoeS0+Y2Zn
X2NsaywgOTkwMDAwMDApOwogICAgY2xrX3NldF9yYXRlKGRwaHktPnJlZl9jbGssIDQ5NTAwMDAw
KTsKICAgIGNsa19zZXRfcmF0ZShkcGh5LT50eF9jbGssIDE5ODAwMDAwKTsKICAgIC4uLgp9CgpB
cmUgdGhlc2UgY2xvY2tzIGV2ZXIgYWN0dWFsbHkgZW5hYmxlZD8gSSBkbyBub3Qgc2VlIGFueSBj
b3JyZXNwb25kaW5nCmNsa19wcmVwYXJlX2VuYWJsZSgpIGNhbGxzIGluIHRoZSBkcml2ZXIuIFdp
bGwgdGhlIFBIWSBoYXJkd2FyZSBmYWlsIHRvCm9wZXJhdGUgb3IgaGFuZyBvbiByZWdpc3RlciBh
Y2Nlc3MgaWYgdGhlIGNsb2NrcyBhcmUgbm90IGltcGxpY2l0bHkga2VwdCBvbgpieSB0aGUgYm9v
dGxvYWRlciBvciBhIFBNIGRvbWFpbj8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTgwOTAwNTQuNDQ0NTEzLTEtcGVuZ2NhbkBr
eWxpbm9zLmNuP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
