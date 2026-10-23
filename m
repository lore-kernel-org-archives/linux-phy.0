Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3E6606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 00:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gnXM1Xm0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=packett.cool header.i=@packett.cool header.a=rsa-sha256 header.s=key1 header.b=m60/nwHU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ulAeMrci2qSlTMNTNmYA4oLY6wc+2d164nA+Z0o/fCY=; b=gnXM1Xm0S//Tn1ViGBnvAlnb77
	AMkSJErzNloDADsYQYtCZQqcANNbSksa3lD2TfhDgR/kd0sZ60RGVGDpRH/ysTg+4I63tPffR1yo2
	bZw/IB873Iz3+L9JKyAmqxyDZ2zTAPjssy2tpsWWpHczSKOX+w4OB413oVjOUakuOAtIOs117UGlm
	ZWGWHEgMy24umHweYBsryNpDRaw7CUkVZj99zYwGlJGGfeeuotAHENNdNp6VzCZ0NYtGR1flYKDVi
	LJkITKv9MKjBIBFJFSlm9XUSSJ6IiH51aJOTfK6tj3Sq+qQRIrtiuC4nHgfD3PPJU3rQFzRiGvjsR
	T18O6w7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK2vx-0000000FD5Z-2uj5;
	Fri, 23 Oct 2026 00:14:57 +0000
Received: from out-13.mta1.migadu.com ([2001:41d0:203:375::d] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK2vu-0000000FD56-3z7y
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 00:14:56 +0000
X-Envelope-To: linux-phy@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=2swJGTcFLv4kEfw8FDByno5CejpjJPgPYrzDrZPo6QQ=;
 c=simple/simple; d=packett.cool;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792714490; v=1; x=1793319290;
 b=m60/nwHU6DUW1Z/1jMnLsAyKXgyN5KIrtTHBwlmm7wuYzDNBIgHjoEFkCG9n+AUlGukxeIRD
 4YPx/QFstIsv4aIUWImB3r36Acbi+ZCrm1pju7gvtf5gflSXDtnnU9sOcXUgwWwTJClE7ERWRyZ
 tZSbiD/zaqqQtwu+HAgtWmniHkRYwDV0HdWhlZKFyGIIOVswoeumVxd+pY1qShfOw7+BX8lJxMU
 O6Ooq0OkpMplKRpK15zAu1rBuG4TJqf4jvyIKCfNx/oWRKUuY4INzGZ8f6ypqQ9g4Qwq7xRs6n9
 HkXbnm81ML7pbnhm4KtfrULoCzXRT3lJCQ5AJjbBLvdMw==
X-Envelope-To: linux-phy@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 0de22f02c81a06ee;
	Fri, 23 Oct 2026 00:14:50 +0000
X-Mizu-Trace-ID: 0de22f02c81a06ee
X-Migadu-Flow: FLOW_OUT
Message-ID: <f8a9d12b-c859-4d3f-82f6-d22b9eaee472@packett.cool>
Date: Thu, 22 Oct 2026 21:14:45 -0300
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only
 mode
To: Joonhoe Kim <26rote@gmail.com>, vkoul@kernel.org
Cc: neil.armstrong@linaro.org, mani@kernel.org,
 konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
 wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261022165219.1368-1-26rote@gmail.com>
Content-Language: en-US
From: Val Packett <val@packett.cool>
In-Reply-To: <20261022165219.1368-1-26rote@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_171455_408767_134F8D77 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDEwLzIyLzI2IDE6NTIgUE0sIEpvb25ob2UgS2ltIHdyb3RlOgo+IEluIERQLW9ubHkgbW9k
ZSAoRGlzcGxheVBvcnQgcGluIGFzc2lnbm1lbnRzIEMgYW5kIEUpIGFsbCBmb3VyIGxhbmVzCj4g
YmVsb25nIHRvIHRoZSBEaXNwbGF5UG9ydCBQSFkgYW5kIHRoZSBVU0IgUENTIHN0YXlzIHBvd2Vy
ZWQgZG93bi4gVGhlCj4gVVNCIGNvbnRyb2xsZXIgY2FuIHN0aWxsIGV4aXQgYW5kIHJlLWluaXQg
aXRzIFBIWSBpbiB0aGlzIHN0YXRlLCBlLmcuCj4gYWNyb3NzIGEgc3lzdGVtIHN1c3BlbmQgdGhh
dCBsb3NlcyBwb3dlci4gcW1wX2NvbWJvX3VzYl9pbml0KCkgdGhlbgo+IHByb2dyYW1zIHRoZSBV
U0Igc2VyZGVzLCBsYW5lIGFuZCBQQ1MgdGFibGVzIG92ZXIgdGhlIERpc3BsYXlQb3J0Cj4gY29u
ZmlndXJhdGlvbiBhbmQgdGltZXMgb3V0IHdhaXRpbmcgZm9yIFBIWVNUQVRVUywgYW5kCj4gcW1w
X2NvbWJvX3VzYl9leGl0KCkgcmVzZXRzIGFuZCBwb3dlcnMgZG93biBhIFBDUyB0aGF0IGlzIG5v
dCBpbiB1c2UuCj4KPiBJbiBEUC1vbmx5IG1vZGUgb25seSB0YWtlIGFuZCBkcm9wIHRoZSBjb21t
b24gcmVmZXJlbmNlLCBidXQga2VlcAo+IGNvdW50aW5nIHRoZSBVU0IgdXNlciwgc28gdGhhdCBx
bXBfY29tYm9fcmVjb25maWd1cmVfcGh5KCkgcG93ZXJzIHRoZQo+IFVTQiBQQ1MgdXAgd2hlbiB0
aGUgcG9ydCBsZWF2ZXMgRFAtb25seSBtb2RlLgo+Cj4gT24gYSBMZW5vdm8gWTcwMCBHZW4gNSAo
VEIzMjNGVSwgS2FhbmFwYWxpKSB3aXRoIGEgVVNCLUMgbW9uaXRvcgo+IGluIHBpbiBhc3NpZ25t
ZW50IEMsIHJlc3VtZSBmcm9tIHMyaWRsZSBmYWlsZWQgd2l0aCAicGh5IGluaXRpYWxpemF0aW9u
Cj4gdGltZWQtb3V0IiwgdGhlIGR3YzMgcmVzdW1lIHJldHVybmVkIC0xMTAgYW5kIHRoZSBmb2xs
b3dpbmcgeEhDSSByZXN1bWUKPiBodW5nIHRoZSBzeXN0ZW0uCkdvb2QgY2F0Y2guIEkgZG9uJ3Qg
dGhpbmsgSSd2ZSBzZWVuIHN5c3RlbSBoYW5ncyBmcm9tIHRoaXMgb24gSGFtb2EsIGJ1dCAKSSd2
ZSBoYWQgVVNCIHN0b3Agd29ya2luZyBvbiB0aGUgcG9ydHMgd2hlcmUgNHhEUCtVU0IyIHdhcyBs
ZWZ0IApjb25uZWN0ZWQgZHVyaW5nIHN1c3BlbmQuLgo+IEZpeGVzOiA4OTYyNzcxMzhjMTMgKCJw
aHk6IHFjb206IHFtcC1jb21ibzogcmVnaXN0ZXIgYSB0eXBlYyBtdXggdG8gY2hhbmdlIHRoZSBR
TVBQSFlfTU9ERSIpCj4gU2lnbmVkLW9mZi1ieTogSm9vbmhvZSBLaW0gPDI2cm90ZUBnbWFpbC5j
b20+Cj4gLS0tCj4gVGVzdGVkIG9uIGEgNy4zLXJjNCBiYXNlZCB0cmVlLCB3aGVyZSB0aGUgbXV4
IHN3aXRjaCBpdHNlbGYgc3RpbGwgZHJvcHMKPiB1c2JfaW5pdF9jb3VudCB3aGVuIGl0IGVudGVy
cyBEUC1vbmx5IG1vZGUsIHNvIHRoZSB0ZXN0ZWQgY2hhbmdlIHNraXBwZWQKPiB0aGUgY291bnQg
YXMgd2VsbC4gVGhpcyB2ZXJzaW9uIGZvbGxvd3MgdGhlIHJld29ya2VkIG11eCBwYXRoIGluCj4g
cGh5LW5leHQgYW5kIGlzIGJ1aWxkLXRlc3RlZCBvbmx5Lgo+Cj4gICBkcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtY29tYm8uYyB8IDE4ICsrKysrKysrKysrLS0tLS0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+IGluZGV4IDE4N2YwY2QxMWY2Yy4u
NmUzNDA2ZDUxOWQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiBAQCAtNDQ1OSwxMCArNDQ1OSwxMiBAQCBzdGF0aWMgaW50IHFtcF9jb21ib191c2Jf
aW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gICAJaWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKPiAg
IAo+IC0JcmV0ID0gcW1wX2NvbWJvX3VzYl9wb3dlcl9vbihwaHkpOwo+IC0JaWYgKHJldCkgewo+
IC0JCXFtcF9jb21ib19jb21fZXhpdChxbXAsIGZhbHNlKTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJ
aWYgKHFtcC0+cW1wcGh5X21vZGUgIT0gUU1QUEhZX01PREVfRFBfT05MWSkgewo+ICsJCXJldCA9
IHFtcF9jb21ib191c2JfcG93ZXJfb24ocGh5KTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCXFtcF9j
b21ib19jb21fZXhpdChxbXAsIGZhbHNlKTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gWy4u
XQoKVGhlIFVTQjQgY2h1bmsgYWJvdmUgKGp1dXV1c3QgYmVmb3JlIHRoZSBzdGFydCBvZiB0aGlz
IGRpZmYncyBjb250ZXh0KSAKZG9lcyBhIHNpbWlsYXIgdGhpbmcgaW4gYSBkaWZmZXJlbnQgc3R5
bGU6IGl0IGluY3JlbWVudHMgYm90aCBpbml0X2NvdW50IAphbmQgdXNiX2luaXRfY291bnQgYW5k
IGVhcmx5LXJldHVybnMsIHNraXBwaW5nIG92ZXIgcW1wX2NvbWJvX2NvbV9pbml0IAphcyB3ZWxs
LgoKSSB0aGluayBib3RoIFVTQjQgYW5kIERQIHNob3VsZCBiZSB3cml0dGVuIHNpbWlsYXJseSBi
dXQgc2hvdWxkIApxbXBfY29tYm9fY29tX2luaXQgYmUgc2tpcHBlZCBoZXJlPyBObyBpbiBib3Ro
IGNhc2VzIG9yIGRvZXMgVVNCNCBza2lwIAppdCBmb3IgYSBnb29kIHJlYXNvbj8KCihJJ20gZXNw
ZWNpYWxseSB3b25kZXJpbmcgYWJvdXQgdGhlIGltcGFjdCBvZiB0aGF0IG9uIHRoZSBVU0IgSFMg
UEhZIApjbG9jaywgc2luY2UgaXQncyBhY3R1YWxseSBzb3VyY2VkIGZyb20gaGVyZSB3aXRob3V0
IGEgcHJvcGVybHkgbW9kZWxlZCAKZGVwZW5kZW5jeSByaWdodCBub3figKYpCgoKVGhhbmtzLAp+
dmFsCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
