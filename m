Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F67606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 21:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p1LKVGQc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=cPo7XPZd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BaducGQg4Okomzi8AzMeamKwAgdTv0zt2CQb/n4mfUU=; b=p1LKVGQcdGzIZsb1WZEwbh+azd
	CFOPeS72Ij1fVS/ifB/shvcdfIwtdMFOWbtMAk1lqrYm+EVRv648TdA1yQUj0u4mloNEIIeULmvQs
	OogPWB0aDHQFmmdqx1oYh6wNOymDSwA0t3wLHS3Pgl+NYFnEulD7iFXYP7oP65sf6pdmcv9nWZZFq
	7VwvrWpjniJU6tKIO5UjRjeH1xVC1jqxMp4nPa+ZHtvT0vDjwe0VZ4btnC32gFTsrHgsFLmSrL00+
	Vqqc4WEnsjd+cXZf2qc2qDGgRdWHHtzPfCYU4jhcRtG/j9efdtZHa7KcJS3mVxJ+M9YuRhSCAWzB3
	w9SQ+05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWK9y-0000000BL0D-0WlC;
	Wed, 25 Nov 2026 21:04:10 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWK9Y-0000000BKvt-0u6q
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 21:03:48 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6b8a1f59d5eso8257313a12.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 13:03:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795640622; cv=none;
        d=google.com; s=arc-20260327;
        b=hKFm8+UlMSiZsE8gGl8aKBVqtVKmrwaDU4n2sqp1xI+peLhX2nFejeetqExa1sEmpd
         o20e+kUX8wD5XIunA8bGbILPE1YWxtesovfyiiWrxC+dBmW3pvC6xJx+6RDc4knnq279
         cjY68XCVXI8/XMBHjSaoWYwAV+eSMNn2FeVk1NfE1bfhAtU8JiQgB9b9fPCK1gs6FUHN
         22/MtadBUWsCo9X46/gbzFlluQKzYpcDtI6psWJD8hWuc8cvNrq47+RddLjejtOp/exL
         omjuYWfSp/0+IDiXaj5p7dvhkndaQEKLxvxRqWBN+yvv7q9F6hoHcLR56BMP3uzFp7ER
         /R8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g8oo3n3BAcC5n/86IJAMCc4c54L34G0M24e5RFRNyIo=;
        fh=OrZNuUJ9GcqR3dH8aC2fnTj7ZGGLsofS4hwB23EMvM0=;
        b=jWQll87xmPwiQxMmcHBNF/L8vV8LzcFZPx0/durupWQYK+GK4zZJlgrObgOVumw7CA
         Ma6oVWrI/lSCxhZPWFm7UoD3xT3OoNQhDwAIrY0Nia7HOW/VezHjhkURDjbAIKLRCp+d
         HnwyOnsh0OAcndGjI5OVppr+RPa4mnKYBUrWABNPYSTCmG1StI0DSqv92cq/d3oBcAur
         RKTXzBtQM5rLv1r1MWjhu210U01uE7ENg3qgiEnEkfzL3v1qquQ2EbAC0mZq736DFe02
         xx6vse+ARJ2P/eQmThSh26LLYMO3nRvogzPz8Cny71Fol/DsBsL55dkktm8jYW+g1Pff
         2bQQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795640622; x=1796245422; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g8oo3n3BAcC5n/86IJAMCc4c54L34G0M24e5RFRNyIo=;
        b=cPo7XPZdm3AulxP/iZ306/tTe52Ii+erddtHHiUvPq6GxfEsype9oRVbFwO/v3GSES
         EKK41aBQ0uVG8W+RzFRF3kdumn2eXFVV84qkO8z1+oR262QHPT+lXzdWb1JKjQfN9gP9
         H7yfUkwL0/miTTYzbF2nin02Ys8H+CKYcBOSh9TwuZgVCbDWgz1OlfV01oyioUtXa2ZL
         CMPKtb8pvzTE7Z+UKL9BMJxCansEqAEfIC3sET+U2kEW3AxVrszTYgvHMpYEtc1BjuR4
         FxasvzP/BUIEus8RmPZDZ/4vJ0OfO/OX3MFaFUiMW0+veL5uL8TTjOUy6otZjvnB8obB
         +4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795640622; x=1796245422;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g8oo3n3BAcC5n/86IJAMCc4c54L34G0M24e5RFRNyIo=;
        b=v10FIOKEw8Y0QKKPteN+g94BtPIq8FgMHbwmtTjKYqd5NhAia5oBIImnBMI0WzMF8H
         DX6enNPfz6jkMvZ/fSMPBAIAcMMpaHTXkOksRNLU9xUXzBOSTXux7746a0kjlOTmCQ1N
         eo36UXfOAa+USdHZfM9ckUXiZpXAcnkmyzyfn3e8GWi07bo+RjpPKD33X/UWGNLzJYaT
         a/TB3bBaAOjZzQf406czqVoQp14YGJ4V4RksooWW5vrz7qw2p8sE7dfR4ApG1wb5uRZf
         a3UuyTkPHj534K60fGA9JucuF5p15z0HtLjbKycU5qcutooZ2UAJ35b9tONGwxZVySBv
         Vf/Q==
X-Forwarded-Encrypted: i=1; AL+hErECN2R/SGTpYf923fFS46WbNFydHsaV+emhVgDZAw0y+q0sCx7yO5/LMgaBPCF5BToD/M0OTrQjq5k=@lists.infradead.org
X-Gm-Message-State: APuU4Z/83kw5DsT7bKUYMnKW2b8oOxcLdMB75452RDP/hUGwmQo3em+M
	GBXhiLmKDha74Hs7melvh0zdnyGvFwOHfjDmhmTZ0g1KcdUvLgaJCsaMWouATAAsZKrFJ5W3TDc
	83oU2QzQL9ofrPx3K8J0Tjh/m7IXjldAqMQjBehkfJw==
X-Gm-Gg: AZFdTZcjFW5Bv37RdjB3oIMLqT9TMtVYkT6V2AMsp5hRlycis5KcMTlRhRJfVzYmJH7
	PNCPxNoz2GmZCkV3USuMJwhw5VqUrRtqOebuDWyfWIrksAMTX2D7k3fBCwmtVZN5vYYUk4AaQlR
	FFIyEHdi3ZtoqFYppZC9nN94ra5LK9h6AJSczHCXax0tzxVi/TRHzf0g8OwSvCF5UHmht8Kiih/
	fYCCb43fuXudMIzRozByqOouogd78jjge2cNoLGuw/CQpo529Q9bkVszmgtSpowY2L4lmdWKSoC
	91n/K+mnkzaGP/20FbANds+VaBwnQ4SS1sc9lqFgX6aL/Yv67hrSFbT9mqhKzEI3Ycdpu+kOmpO
	Ml8xKVaSZlfaTQOsvZH7imQiIfdZs8R67r/qYnCJS05Jb42fFXomW33D5W8U8xvd47bNdDe8=
X-Received: by 2002:aa7:df18:0:b0:6b9:c43d:88f with SMTP id
 4fb4d7f45d1cf-6ba37d5c69dmr10748147a12.9.1795640622317; Wed, 25 Nov 2026
 13:03:42 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org> <20261123-gs101-usb-phy-orientation-v2-1-3361fa5f7543@linaro.org>
In-Reply-To: <20261123-gs101-usb-phy-orientation-v2-1-3361fa5f7543@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 25 Nov 2026 21:03:29 +0000
X-Gm-Features: Aa3M54pP550miJl9HbCRj99JxEMj3d0cMVlh26LqNCl_O0LJ7lYFwSv6xfFKFjY
Message-ID: <CADrjBPpm8OzJTG4J8TqWZF-f_qdOKXJ4Tk-LYhNH1D=mWPNNUQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: exynos5-usbdrd: gs101: re-init PIPE3 on
 orientation change
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, RD Babiera <rdbabiera@google.com>, 
	Juan Yescas <jyescas@google.com>, kernel-team@android.com, phone-devel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_130346_547151_642443CC 
X-CRM114-Status: GOOD (  33.19  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCAyMyBOb3YgMjAyNiBhdCAxNDoyNSwgQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGUgU1MgbGFuZSBtdXggb24gZ3MxMDEgaXMgcHJv
Z3JhbW1lZCBvbmx5IHdoZW4gdGhlIFBJUEUzIHBoeSBpcwo+IGluaXRpYWxpemVkLCBiYXNlZCBv
biB0aGUgVHlwZS1DIG9yaWVudGF0aW9uIGtub3duIGF0IHRoYXQgdGltZS4KPiBUaGUgb3JpZW50
YXRpb24gc3dpdGNoIGNhbGxiYWNrIGp1c3Qgc3RvcmVzIHRoZSBuZXcgb3JpZW50YXRpb24gYW5k
Cj4gcmVsaWVzIG9uIHRoZSBVU0IgY29udHJvbGxlciB0byBleGl0IGFuZCByZS1pbml0aWFsaXpl
IHRoZSBwaHksIHdoaWNoCj4gb25seSBoYXBwZW5zIGlmIERXQzMgZW50ZXJzIHJ1bnRpbWUgc3Vz
cGVuZC4KPgo+IElmIGEgY2FibGUgaXMgY29ubmVjdGVkIGR1cmluZyBib290LCB0aGUgcGh5IGlz
IGluaXRpYWxpemVkIGJlZm9yZSB0aGUKPiBUQ1BDIHJlcG9ydHMgdGhlIG9yaWVudGF0aW9uIChl
LmcuIH40LjBzIHZzLiB+NS4zcyBvbiBQaXhlbCA2KSwgc28gdGhlCj4gbGFuZXMgYXJlIHByb2dy
YW1tZWQgZm9yIFRZUEVDX09SSUVOVEFUSU9OX05PTkUsIGkuZS4gYXMgaWYgcmV2ZXJzZWQuCj4g
RFdDMyBkb2Vzbid0IHJ1bnRpbWUgc3VzcGVuZCB3aGlsZSB0aGUgY2FibGUgc3RheXMgY29ubmVj
dGVkIChhbmQKPiBydW50aW1lIFBNIGlzIGZvcmJpZGRlbiBieSBkZWZhdWx0IGFueXdheSksIHNv
IHRoZSBwaHkgaXMgbmV2ZXIKPiByZS1pbml0aWFsaXplZCBhbmQgdGhlIGxpbmsgY29tZXMgdXAg
aW4gaGlnaC1zcGVlZCBvbmx5Lgo+Cj4gUmUtcnVuIHRoZSBQSVBFMyBpbml0IGZyb20gdGhlIG9y
aWVudGF0aW9uIHN3aXRjaCBjYWxsYmFjayBpZiB0aGUKPiBQSVBFMyBwaHkgaXMgaW5pdGlhbGl6
ZWQgYW5kIGl0cyBsYW5lcyBhcmUgcHJvZ3JhbW1lZCBmb3IgdGhlIG90aGVyCj4gb3JpZW50YXRp
b24uIFJld3JpdGluZyB0aGUgbGFuZSBtdXggcmVnaXN0ZXJzIGFsb25lIGlzbid0IHN1ZmZpY2ll
bnQsCj4gdGhlIGxpbmsgc3RpbGwgY29tZXMgdXAgaW4gaGlnaC1zcGVlZCBvbmx5IHdpdGggdGhh
dC4gUmUtaW5pdGlhbGl6ZQo+IGJlZm9yZSBzaWduYWxsaW5nIFZCVVMgdmFsaWQsIHNvIHRoYXQg
RFdDMyBvbmx5IHNlZXMgVkJVUyBvbmNlIHRoZQo+IGxhbmVzIGFyZSByaWdodC4gQSBmYWlsdXJl
IGlzIG9ubHkgbG9nZ2VkLCBzbyB0aGF0IHRoZSBUQ1BNIHN0aWxsCj4gY29uZmlndXJlcyB0aGUg
VVNCIHJvbGUuCj4KPiBNYXJrIHRoZSBQSVBFMyBwaHkgYXMgaW5pdGlhbGl6ZWQgaW4gdGhlIHNh
bWUgY3JpdGljYWwgc2VjdGlvbiB0aGF0Cj4gcHJvZ3JhbXMgdGhlIGxhbmVzLCBzbyB0aGF0IGFu
IG9yaWVudGF0aW9uIGNoYW5nZSBjYW4ndCBnZXQgbG9zdCBpbgo+IGJldHdlZW4uCj4KPiBBbHNv
IHN0b3Agc3RvcmluZyBUWVBFQ19PUklFTlRBVElPTl9OT05FIG9uIHVucGx1Zywgc28gdGhhdCB0
aGUgc3RvcmVkCj4gb3JpZW50YXRpb24gYWx3YXlzIGRlc2NyaWJlcyB0aGUgbGFuZXM6IHdoaWxl
IHRoZSBQSVBFMyBwaHkgaXMKPiBpbml0aWFsaXplZCwgdGhleSBzdGF5IHByb2dyYW1tZWQgZm9y
IGl0LCBhbmQgd2hlbiB0aGUgcGh5IGlzCj4gaW5pdGlhbGl6ZWQgYWdhaW4gYWZ0ZXIgcGh5X2V4
aXQoKSwgd2hpY2ggZ2F0ZXMgaXRzIHBvd2VyLCB0aGV5IGFyZQo+IHByb2dyYW1tZWQgZnJvbSBp
dC4gVGhpcyBhdm9pZHMgcmUtaW5pdGlhbGl6aW5nIHRoZSBQSVBFMyBwaHkgd2hlbiBhCj4gY2Fi
bGUgaXMgcGx1Z2dlZCBpbiBhZ2FpbiBpbiB0aGUgc2FtZSBvcmllbnRhdGlvbiBhbmQgdGhlIHBo
eSBzdGF5ZWQKPiBpbml0aWFsaXplZC4KPgo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4g
IyA2LjE1Lng6IDJlZjFlNzhlZjcyMjogcGh5OiBzYW1zdW5nOiB1c2JkcmQ6IHByb3BhZ2F0ZSBH
UzEwMSBQSVBFMyBsb2NrIGZhaWx1cmVzCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAj
IDYuMTUueAo+IEZpeGVzOiAwOWRjNjc0Mjk1YTMgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBzdWJz
Y3JpYmUgdG8gb3JpZW50YXRpb24gbm90aWZpZXIgaWYgcmVxdWlyZWQiKQo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKPiAgZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDYxICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4
eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5j
Cj4gaW5kZXggMjE4NmI3NDVkNThmLi5jY2FmMGYyN2M0YzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBAQCAtNTA5LDYgKzUwOSw3IEBAIHN0cnVjdCBl
eHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0YSB7Cj4gICAqIEByZWd1bGF0b3JzOiByZWd1bGF0b3Jz
IGZvciBwaHkKPiAgICogQHN3OiBUeXBlQyBvcmllbnRhdGlvbiBzd2l0Y2ggaGFuZGxlCj4gICAq
IEBvcmllbnRhdGlvbjogVHlwZUMgY29ubmVjdG9yIG9yaWVudGF0aW9uIC0gbm9ybWFsIG9yIGZs
aXBwZWQKPiArICogQHBpcGUzX2luaXRpYWxpemVkOiBnczEwMSBQSVBFMyBwaHkgaXMgaW5pdGlh
bGl6ZWQgKGFuZCBub3QgaXNvbGF0ZWQpCj4gICAqLwo+ICBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRf
cGh5IHsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiBAQCAtNTMyLDYgKzUzMyw3IEBA
IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewo+Cj4gICAgICAgICBzdHJ1Y3QgdHlwZWNfc3dp
dGNoX2RldiAqc3c7Cj4gICAgICAgICBlbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVudGF0aW9u
Owo+ICsgICAgICAgYm9vbCBwaXBlM19pbml0aWFsaXplZDsKPiAgfTsKPgo+ICBzdGF0aWMgaW5s
aW5lCj4gQEAgLTE3MTMsNiArMTcxNSw4IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfZ3Mx
MDFfcGlwZTNfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQo+ICAgICAg
ICAgdTMyIHJlZzsKPiAgICAgICAgIGludCByZXQ7Cj4KPiArICAgICAgIGxvY2tkZXBfYXNzZXJ0
X2hlbGQoJnBoeV9kcmQtPnBoeV9tdXRleCk7Cj4gKwo+ICAgICAgICAgZXh5bm9zNV91c2JkcmRf
dXNiZHBfZzJfdjRfY3RybF9wbWFfcmVhZHkocGh5X2RyZCk7Cj4KPiAgICAgICAgIC8qIGZvcmNl
IGF1eCBvZmYgKi8KPiBAQCAtMTczNyw3ICsxNzQxLDE3IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91
c2JkcmRfZ3MxMDFfcGlwZTNfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJk
KQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPgo+IC0g
ICAgICAgcmV0dXJuIGV4eW5vczVfdXNiZHJkX3VzYmRwX2cyX3Y0X3BtYV9jaGVja19jZHJfbG9j
ayhwaHlfZHJkKTsKPiArICAgICAgIHJldCA9IGV4eW5vczVfdXNiZHJkX3VzYmRwX2cyX3Y0X3Bt
YV9jaGVja19jZHJfbG9jayhwaHlfZHJkKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAg
ICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgLyoKPiArICAgICAgICAqIFNldCB0aGlz
IHdoaWxlIHN0aWxsIGhvbGRpbmcgcGh5X211dGV4LCBzbyB0aGF0IHRoZSBvcmllbnRhdGlvbgo+
ICsgICAgICAgICogc3dpdGNoIGNhbGxiYWNrIGNhbid0IG1pc3MgYW4gb3JpZW50YXRpb24gY2hh
bmdlLgo+ICsgICAgICAgICovCj4gKyAgICAgICBwaHlfZHJkLT5waXBlM19pbml0aWFsaXplZCA9
IHRydWU7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICBzdGF0aWMgaW50IGV4eW5v
czVfdXNiZHJkX2dzMTAxX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiBAQCAtMTc4Myw2ICsx
Nzk3LDkgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9nczEwMV9waHlfZXhpdChzdHJ1Y3Qg
cGh5ICpwaHkpCj4gICAgICAgICAgICAgICAgIHJldCA9IGV4eW5vczg1MF91c2JkcmRfcGh5X2V4
aXQocGh5KTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+ICsgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgc2Nv
cGVkX2d1YXJkKG11dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHBoeV9kcmQtPnBpcGUzX2luaXRpYWxpemVkID0gZmFsc2U7Cj4gICAgICAgICB9Cj4K
PiAgICAgICAgIGV4eW5vczVfdXNiZHJkX3BoeV9pc29sKGluc3QsIHRydWUpOwo+IEBAIC0xODgw
LDggKzE4OTcsNDggQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9vcmllbl9zd19zZXQoc3Ry
dWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+Cj4gICAgICAgICBzY29wZWRfZ3VhcmQobXV0ZXgs
ICZwaHlfZHJkLT5waHlfbXV0ZXgpIHsKPiAgICAgICAgICAgICAgICAgdm9pZCBfX2lvbWVtICog
Y29uc3QgcmVnc19iYXNlID0gcGh5X2RyZC0+cmVnX3BoeTsKPiArICAgICAgICAgICAgICAgYm9v
bCByZWluaXRfcGlwZTMgPSBmYWxzZTsKPiAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IHJl
ZzsKPgo+ICsgICAgICAgICAgICAgICAvKgo+ICsgICAgICAgICAgICAgICAgKiBUaGUgU1MgbGFu
ZXMgYXJlIGNvbmZpZ3VyZWQgZHVyaW5nIFBJUEUzIGluaXQsIGZvcgo+ICsgICAgICAgICAgICAg
ICAgKiBUWVBFQ19PUklFTlRBVElPTl9OT1JNQUwgb3IgZWxzZSBhcyByZXZlcnNlZC4gSWYgdGhl
IFBJUEUzCj4gKyAgICAgICAgICAgICAgICAqIHBoeSBpcyBpbml0aWFsaXplZCBhbHJlYWR5IChl
LmcuIHRoZSBvcmllbnRhdGlvbiBpcyBvbmx5Cj4gKyAgICAgICAgICAgICAgICAqIGtub3duIGFm
dGVyIHRoZSBVU0IgY29udHJvbGxlciBwcm9iZWQpIGFuZCB0aGUgbGFuZXMgaGF2ZQo+ICsgICAg
ICAgICAgICAgICAgKiB0byBjaGFuZ2UsIGluaXRpYWxpemUgaXQgYWdhaW4sIGJlZm9yZSBzaWdu
YWxsaW5nIFZCVVMgdmFsaWQKPiArICAgICAgICAgICAgICAgICogdG8gdGhlIGNvbnRyb2xsZXIu
IFJld3JpdGluZyB0aGUgbGFuZSBtdXggYWxvbmUgaXNuJ3QgZW5vdWdoCj4gKyAgICAgICAgICAg
ICAgICAqIGZvciB0aGUgU1MgbGluayB0byBjb21lIHVwLgo+ICsgICAgICAgICAgICAgICAgKgo+
ICsgICAgICAgICAgICAgICAgKiBUWVBFQ19PUklFTlRBVElPTl9OT05FICh1bnBsdWcpIGlzbid0
IHN0b3JlZDogd2hpbGUgdGhlIFBJUEUzCj4gKyAgICAgICAgICAgICAgICAqIHBoeSBpcyBpbml0
aWFsaXplZCwgcGh5X2RyZC0+b3JpZW50YXRpb24gaXMgd2hhdCB0aGUgbGFuZXMgYXJlCj4gKyAg
ICAgICAgICAgICAgICAqIHByb2dyYW1tZWQgZm9yLCBvdGhlcndpc2UgaXQgaXMgd2hhdCB0aGUg
bmV4dCBQSVBFMyBpbml0IHdpbGwKPiArICAgICAgICAgICAgICAgICogcHJvZ3JhbS4KPiArICAg
ICAgICAgICAgICAgICoKPiArICAgICAgICAgICAgICAgICogRG9uJ3QgcmV0dXJuIGFuIGVycm9y
LCBzbyB0aGF0IHRoZSBUeXBlLUMgcG9ydCBtYW5hZ2VyIHN0aWxsCj4gKyAgICAgICAgICAgICAg
ICAqIGNvbmZpZ3VyZXMgdGhlIFVTQiByb2xlLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAg
ICAgICAgICAgICAgaWYgKG9yaWVudGF0aW9uICE9IFRZUEVDX09SSUVOVEFUSU9OX05PTkUpIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBib29sIHdhc19ub3JtYWwgPSAocGh5X2RyZC0+b3Jp
ZW50YXRpb24gPT0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
VFlQRUNfT1JJRU5UQVRJT05fTk9STUFMKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBib29s
IGlzX25vcm1hbCA9IChvcmllbnRhdGlvbiA9PQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFRZUEVDX09SSUVOVEFUSU9OX05PUk1BTCk7Cj4gKwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHJlaW5pdF9waXBlMyA9IChwaHlfZHJkLT5waXBlM19pbml0aWFsaXpl
ZCAmJgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc19ub3JtYWwg
IT0gd2FzX25vcm1hbCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGh5X2RyZC0+b3JpZW50
YXRpb24gPSBvcmllbnRhdGlvbjsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiArICAgICAgICAg
ICAgICAgaWYgKHJlaW5pdF9waXBlMykgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0
IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfY29uZmlnICpjZmcgPQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcGh5X2RyZC0+cGh5c1tFWFlOT1M1X0RSRFBIWV9QSVBFM10ucGh5
X2NmZzsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gY2ZnLT5waHlfaW5pdChw
aHlfZHJkKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZGV2X3dhcm4ocGh5X2RyZC0+ZGV2LAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkZhaWxlZCB0byByZWNvbmZpZ3VyZSBTUyBs
YW5lczogJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXQpOwo+ICsgICAgICAgICAgICAgICB9Cj4gKwo+ICAgICAgICAgICAgICAgICBpZiAob3JpZW50
YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fTk9ORSkgewo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfVVRNSSk7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnICY9IH4oVVRNSV9GT1JDRV9WQlVTVkFMSUQgfCBVVE1JX0ZP
UkNFX0JWQUxJRCk7Cj4gQEAgLTE5MDAsOCArMTk1Nyw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91
c2JkcmRfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgICAgICAg
ICAgICAgICAgICAgICAgICByZWcgfD0gSFNQX1ZCVVNWTERFWFRTRUwgfCBIU1BfVkJVU1ZMREVY
VDsKPiAgICAgICAgICAgICAgICAgICAgICAgICB3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlO
T1M4NTBfRFJEX0hTUCk7Cj4gICAgICAgICAgICAgICAgIH0KPiAtCj4gLSAgICAgICAgICAgICAg
IHBoeV9kcmQtPm9yaWVudGF0aW9uID0gb3JpZW50YXRpb247Cj4gICAgICAgICB9Cj4KPiAgICAg
ICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPmRydl9kYXRhLT5uX2Nsa3Ms
IHBoeV9kcmQtPmNsa3MpOwo+Cj4gLS0KPiAyLjU2LjEuNzUwLmdmNzBkYzY4MmNmLWdvb2cKPgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
