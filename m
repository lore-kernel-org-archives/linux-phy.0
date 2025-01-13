Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383E3E7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 08:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qzs6HclD8qMUeWo/ede/Jy5qTKNjChnsRmwwEZEGbpc=; b=uLHrU/GY7mf+xt
	8aefSKzaD55r19nv8UKCHKnQsFSDihS9lKdlTpToGhAHArsHUfBuCAONg07vh92K3uZAtX2A0V+EH
	PvnhxezyhqyjDMH++MjKJINXIRiZFlkgctRGQiEhn9HwcM87St5BSkvwm6QF8CizhQBCgCnLjgZWi
	CmlUVqVLqJKQ9oJFXdnoP1lVIdleHj5FGoA7Mkp1ch5diTteZoeyXBvZvmYpuOMKCIVhGAtgTvmF+
	WBvE/qVEvBwKuNs9x0xACc42xRU4lSTu34DL+qyK0JGpBBkYoIGuyrYBzFLk7x0CZ7X6ib3iN/EG1
	6q8nYRh8r/amtNxqSh1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFdS-00000004M9F-41S5;
	Mon, 13 Jan 2025 08:17:22 +0000
Received: from mail-ua1-f43.google.com ([209.85.222.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFdQ-00000004M8q-2iUv
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 08:17:21 +0000
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-85bad7be09dso2397604241.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 00:17:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736756238; x=1737361038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AplhRmKw42+U3Px6KuvgAGvNKJlOKmZ9nDJy4vVaMq8=;
        b=jUpHCNkPy27Qq73GowuHeeMPd3YDsz5X5YSuKn694iEVZYju1aE+m6l+0vs83+S6II
         LfuCdUOAyjq82T8kwKoSayAGqqKq5eLDTnxiqIO2Y6dIERFb6208HNcS+U/ctMJyh2LW
         Ivmr45qLSTm/POZ/ydokpIAqsqr3y6E6YyFWPeKvmAFkFpNqr7FNLx58R59Wnm8FF8Bt
         W3Lyv50HIVeKn1xeQyEtx9Gfp0KFHzdCbbjuEqy/twiXPproXI2iLkbfUsp9FAtlo9bm
         iQ4pbOcawy2hNcbIBJKDyOiu63kChqreY9yCLj/uvtQbcf21q+E3Ok/kbvq8W6XHa29R
         +OXA==
X-Forwarded-Encrypted: i=1; AJvYcCV7z+FbBTwuYs+POxKau9OlGVmJT/VqUIJ6MMrL0uFSmE7eZpQXsn2JTnDv91DIQNyaoX2iM/muRIg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJ0gb4JUcsvXH0snULOs2BgxZKg3loGNqlwkiAa5SySWX8uhJa
	msGv3vrbnoYfKOuf0+ezJfiCxHfk+l9Ohj61+RTUG2ZQgKMcbPkVZQKix/pc
X-Gm-Gg: ASbGncubWGLBMlMc6cdOWbrFQ1VOQzrAfo3XZ+VwrzPszCNueqNQiEUPOJ+gvsL0CP3
	eBUJcsUPogg+P0MALyhWtQluLlV8m3aJJstWWuyrK4bFl8SR7CNTiVDEiqgBcHdK/QL5rbMfGwl
	3UIjq/UcquI5xng7tZAToyF2ndXBUNcnXbfryUme5BInEM9Cv9m3H8bIxhjmkCQ0PynK8bxPciJ
	9CpIvN5Sjhf6+7E2b6QSsEh73HlVqoHuD83cTcizCDRYsSjPURifK3n4o15sdkGoEfpT8ujwe40
	gGUC0ajQGTGlZDFFl7g=
X-Google-Smtp-Source: AGHT+IGMHcOwqt/06Kl4p25Ef71kMXAPTPlmGHEI7RBBgUDJf1BEjHKHvwEzIMaAfcZNSAF70XoFRA==
X-Received: by 2002:a05:6122:4387:b0:518:8e53:818b with SMTP id 71dfb90a1353d-51c6bdece20mr16056848e0c.0.1736756238098;
        Mon, 13 Jan 2025 00:17:18 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51c7fbfdc4fsm3462708e0c.23.2025.01.13.00.17.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2025 00:17:17 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-85ba92b3acfso1903986241.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 00:17:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW2vMVbk7+P2cEDy4UOD7v/EflgZixZEt8H7yJfQrrdRt0hIWCA5RW9wrzh9uqVtAFQzKnkj+oOu6o=@lists.infradead.org
X-Received: by 2002:a05:6102:5128:b0:4b1:f3e:8831 with SMTP id
 ada2fe7eead31-4b3d0da4bf6mr16864525137.6.1736756237689; Mon, 13 Jan 2025
 00:17:17 -0800 (PST)
MIME-Version: 1.0
References: <tencent_0B8867EE08AA1E4818AFCD13C63913D7C507@qq.com>
In-Reply-To: <tencent_0B8867EE08AA1E4818AFCD13C63913D7C507@qq.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Jan 2025 09:17:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX4W0LRqfuPaFiQY29aMahofMRhQyTEd46-S51rCG-r4g@mail.gmail.com>
X-Gm-Features: AbW1kvZKwCiwPqhMkl4B2v0AgL2y9d4X7ozNCYPjt8PwTQ_lqYt2-Txg8c_TSy0
Message-ID: <CAMuHMdX4W0LRqfuPaFiQY29aMahofMRhQyTEd46-S51rCG-r4g@mail.gmail.com>
Subject: Re: [PATCH V4] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: xiaopeitux@foxmail.com
Cc: vkoul@kernel.org, aford173@gmail.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_001720_694908_40110DF5 
X-CRM114-Status: GOOD (  24.40  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgUGVpLAoKT24gTW9uLCBKYW4gMTMsIDIwMjUgYXQgMjo1NeKAr0FNIDx4aWFvcGVpdHV4QGZv
eG1haWwuY29tPiB3cm90ZToKPiBGcm9tOiBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+
Cj4KPiBGSUVMRF9QUkVQKCkgY2hlY2tzIHRoYXQgYSB2YWx1ZSBmaXRzIGludG8gdGhlIGF2YWls
YWJsZSBiaXRmaWVsZCwKPiBidXQgdGhlIGluZGV4IGRpdiBlcXVhbHMgdG8gNCxpcyBvdXQgb2Yg
cmFuZ2UuCj4KPiB3aGljaCBnY2MgY29tcGxhaW5zIGFib3V0Ogo+IEluIGZ1bmN0aW9uIOKAmGZz
bF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXTigJksCj4gaW5saW5lZCBm
cm9tIOKAmGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZeKAmSBhdAo+IGRyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIDo0NzA6MjoKPiAuLy4vaW5jbHVkZS9s
aW51eC9jb21waWxlcl90eXBlcy5oOjU0MjozODogZXJyb3I6IGNhbGwgdG8g4oCYX19jb21waWxl
dGltZV9hc3NlcnRfNTM44oCZCj4gZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEZJRUxE
X1BSRVA6IHZhbHVlIHRvbyBsYXJnZSBmb3IgdGhlIGZpZWxkCj4gICA1NDIgfCAgX2NvbXBpbGV0
aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLAo+IF9fQ09V
TlRFUl9fKQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4K
PiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjUyMzo0OiBub3RlOiBpbiBkZWZp
bml0aW9uIG9mCj4gbWFjcm8g4oCYX19jb21waWxldGltZV9hc3NlcnTigJkgNTIzIHwgICAgcHJl
Zml4ICMjIHN1ZmZpeCgpOwo+ICAgICAgIHwgICAgXn5+fn5+Cj4gLi8uL2luY2x1ZGUvbGludXgv
Y29tcGlsZXJfdHlwZXMuaDo1NDI6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4g4oCY
X2NvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ICAgNTQyIHwgIF9jb21waWxldGltZV9hc3NlcnQoY29u
ZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywKPiAgX19DT1VOVEVSX18pCj4KPiBS
RUcxMl9DS19ESVZfTUFTSyBvbmx5IHR3byBiaXQsIGxpbWl0IGRpdiB0byByYW5nZSAwfjMsCj4g
c28gYnVpbGQgZXJyb3Igd2lsbCBmaXguCj4KPiBGaXhlczogZDU2NzY3OWYyYjZhICgicGh5OiBm
cmVlc2NhbGU6IGZzbC1zYW1zdW5nLWhkbWk6IENsZWFuIHVwIGZsZF90Z19jb2RlIGNhbGN1bGF0
aW9uIikKPiBTaWduZWQtb2ZmLWJ5OiBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+Cj4K
PiBDaGFuZ2xvZzoKPiAtLS0KPiBWNDogY2hhbmdlIHRvIHVzZSBpZiBzdGF0ZW1lbnQKClRoYW5r
cyBmb3IgdGhlIHVwZGF0ZSEKCj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
c2Ftc3VuZy1oZG1pLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1z
dW5nLWhkbWkuYwo+IEBAIC0zMjUsNyArMzI1LDcgQEAgdG9fZnNsX3NhbXN1bmdfaGRtaV9waHko
c3RydWN0IGNsa19odyAqaHcpCj4gICAgICAgICByZXR1cm4gY29udGFpbmVyX29mKGh3LCBzdHJ1
Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHksIGh3KTsKPiAgfQo+Cj4gLXN0YXRpYyB2b2lkCj4gK3N0
YXRpYyBpbnQKPiAgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChz
dHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBwaHlfY29uZmlnICpjZmcpCj4gIHsK
PiBAQCAtMzQxLDYgKzM0MSw5IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxf
bG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICB9Cj4KPiArICAgICAgIGlmICh1bmxpa2VseShk
aXYgPT0gNCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsKPiAgICAgICAg
IHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYpLCBwaHktPnJlZ3MgKyBQ
SFlfUkVHKDEyKSk7Cj4KPiAgICAgICAgIC8qCj4gQEAgLTM2NCw2ICszNjcsOCBAQCBmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19o
ZG1pX3BoeSAqcGh5LAo+ICAgICAgICAgICAgICAgIEZJRUxEX1BSRVAoUkVHMTRfUlBfQ09ERV9N
QVNLLCAyKSB8Cj4gICAgICAgICAgICAgICAgRklFTERfUFJFUChSRUcxNF9UR19DT0RFX0hJR0hf
TUFTSywgZmxkX3RnX2NvZGUgPj4gOCksCj4gICAgICAgICAgICAgICAgcGh5LT5yZWdzICsgUEhZ
X1JFRygxNCkpOwo+ICsKPiArICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAgc3RhdGljIHVuc2ln
bmVkIGxvbmcgZnNsX3NhbXN1bmdfaGRtaV9waHlfZmluZF9wbXModW5zaWduZWQgbG9uZyBmb3V0
LCB1OCAqcCwgdTE2ICptLCB1OCAqcykKPiBAQCAtNDY3LDcgKzQ3Miw5IEBAIHN0YXRpYyBpbnQg
ZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlKHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3Bo
eSAqcGh5LAo+ICAgICAgICAgd3JpdGViKFJFRzIxX1NFTF9UWF9DS19JTlYgfCBGSUVMRF9QUkVQ
KFJFRzIxX1BNU19TX01BU0ssCj4gICAgICAgICAgICAgICAgY2ZnLT5wbGxfZGl2X3JlZ3NbMl0g
Pj4gNCksIHBoeS0+cmVncyArIFBIWV9SRUcoMjEpKTsKPgo+IC0gICAgICAgZnNsX3NhbXN1bmdf
aGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChwaHksIGNmZyk7Cj4gKyAgICAgICByZXQg
PSBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHBoeSwgY2ZnKTsK
PiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIGRldl9lcnIocGh5LT5kZXYsICJw
aXhjbG9jayB0b28gbGFyZ2VcbiIpOwoKcmV0dXJuIHJldAoKPgo+ICAgICAgICAgd3JpdGViKFJF
RzMzX0ZJWF9EQSB8IFJFRzMzX01PREVfU0VUX0RPTkUsIHBoeS0+cmVncyArIFBIWV9SRUcoMzMp
KTsKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0t
IApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMy
IC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGgg
dGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2
YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
