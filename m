Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1486CC67861
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 17:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx5iRGLm0YQItgqTqQHlphu9LnnNLNkRgnTaHkWN/ow=; b=ns09sHpHuQe/MY
	njEUpHh15elrQlNYe0KBHRmCFBVnU+fZSWm+ic3d5IQ8hatmBzrM4HyOQylk+/97d8Y4ac0X7DBub
	eH1GdYQMz/t/RuJtrFGCs6AmTKif87Ao5hVwhyNK+e62ufV8kosEwa2o43c1SXcO9jMz6QTFMCS5Z
	b26An4umMPTphhoKT46phVSFdmQTlOd5RE5QCQZgeYzxGnzSajlehcUQ5g+STwDJA3+KxBrwmYYaU
	gH3XPa5ZYaIMYQz1LS5ayzlMDLblQXLRBIlCq7bjhTg1EQXojj49dsZISYSr7iIrjpCS9Y8okCxzZ
	v5HLSp8L1szVXzphnKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruF2v-000000036Eo-2WdM;
	Tue, 09 Apr 2024 17:14:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruF2s-000000036DF-0PWw;
	Tue, 09 Apr 2024 17:14:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3CF7DCE20F2;
	Tue,  9 Apr 2024 17:14:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81184C433A6;
	Tue,  9 Apr 2024 17:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712682843;
	bh=LPEx6tsL7wgLYi+kk5vkpbbYiQkRmiIS+PLtSy0YjfY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pcmC9XFN912RMvFMTBsOxs05rus3ioP7iQqJNazGrzDoiP7Ljc4Y9u/OFo2drMYc5
	 Y47oEgBi7UKRS5do5zUKwbtZ6obphKVWoEavPZT728bSAwtVk7J8TSsQZX4ZSa7DKv
	 hpFtmGvI8QwKr8MN2FMRQIJIRKkYD8x6LP5+Ja/yJW27JqneVDqXo/cNBtG96EGr+G
	 T2mQsRtFnusKVDFoDxcoM5aumg8aLfbIe3M865YcFvvVFW1WBeBZOTRWODvbam1aBD
	 yAl1wwAPpS2WSDZ6sYFOjTipL19UOEuq8sVy1JM2KysQHpLosxbKubCxvsHDf3sSbL
	 +uaHRk85y/R4A==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516cbf3fd3dso6787563e87.2;
        Tue, 09 Apr 2024 10:14:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUum6D1tJS0mnTdSJ8gPhMNnI+9RECVvWvmRRDHNtIrpOHDs3Ubkj6nMiUuqhwcEhNXWCS/63f1mhlJFrZFMPzY10nrnJ9IueXZHQaj/STCihAXSoH8y+wSiZj1jttuWOAoTOrcbmBgEftD68jXPsviDsgE
X-Gm-Message-State: AOJu0YzYIXvNDecGoxMfXja4iIVppI3Q+Q4pTC5jyRJ/JhWkw//TXiHy
	KJ0IctMKu2Enc9HqWeL/GMmVo/dNv1o6XN5iAwmylA2JyLGMHtKkK8gbL5N6GTcbuuXAn+cBJWm
	8xjk10TeJ7WYk5gIabD6/4w5EWA==
X-Google-Smtp-Source: AGHT+IHdmA/YWkORigJ39s8mUHP/Uw9g5JVSthQiryNaRNFp29Jw8Pu75u88BQ1j6apcee4IbBJ9bbXspK3Ch4S3xfA=
X-Received: by 2002:ac2:4acb:0:b0:515:99f6:2ca4 with SMTP id
 m11-20020ac24acb000000b0051599f62ca4mr50062lfp.36.1712682841868; Tue, 09 Apr
 2024 10:14:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com> <61608010-fbce-46c6-a83d-94c04d0f000d@foss.st.com>
In-Reply-To: <61608010-fbce-46c6-a83d-94c04d0f000d@foss.st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 9 Apr 2024 12:13:48 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJTiBK3qzdMzL-ZuARosKGqnf_PjyCj13_H=V415y9sHQ@mail.gmail.com>
Message-ID: <CAL_JsqJTiBK3qzdMzL-ZuARosKGqnf_PjyCj13_H=V415y9sHQ@mail.gmail.com>
Subject: Re: [PATCH v9 00/13] Introduce STM32 Firewall framework
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: Gatien Chevallier <gatien.chevallier@foss.st.com>, Oleksii_Moisieiev@epam.com, 
	gregkh@linuxfoundation.org, herbert@gondor.apana.org.au, davem@davemloft.net, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, 
	jic23@kernel.org, olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, 
	mchehab@kernel.org, fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, 
	ulf.hansson@linaro.org, edumazet@google.com, kuba@kernel.org, 
	pabeni@redhat.com, hugues.fruchet@foss.st.com, lee@kernel.org, 
	will@kernel.org, catalin.marinas@arm.com, arnd@kernel.org, 
	richardcochran@gmail.com, Frank Rowand <frowand.list@gmail.com>, peng.fan@oss.nxp.com, 
	lars@metafoo.de, rcsekar@samsung.com, wg@grandegger.com, mkl@pengutronix.de, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_101406_534025_2108D483 
X-CRM114-Status: GOOD (  29.73  )
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

T24gTW9uLCBBcHIgOCwgMjAyNCBhdCAzOjQ04oCvQU0gQWxleGFuZHJlIFRPUkdVRQo8YWxleGFu
ZHJlLnRvcmd1ZUBmb3NzLnN0LmNvbT4gd3JvdGU6Cj4KPiBIaSBHYXRpZW4sCj4KPiBPbiAxLzUv
MjQgMTQ6MDMsIEdhdGllbiBDaGV2YWxsaWVyIHdyb3RlOgo+ID4gSW50cm9kdWNlIFNUTTMyIEZp
cmV3YWxsIGZyYW1ld29yayBmb3IgU1RNMzJNUDF4IGFuZCBTVE0zMk1QMngKPiA+IHBsYXRmb3Jt
cy4gU1RNMzJNUDF4KEVUWlBDKSBhbmQgU1RNMzJNUDJ4KFJJRlNDKSBGaXJld2FsbCBjb250cm9s
bGVycwo+ID4gcmVnaXN0ZXIgdG8gdGhlIGZyYW1ld29yayB0byBvZmZlciBmaXJld2FsbCBzZXJ2
aWNlcyBzdWNoIGFzIGFjY2Vzcwo+ID4gZ3JhbnRpbmcuCj4gPgo+ID4gVGhpcyBzZXJpZXMgb2Yg
cGF0Y2hlcyBpcyBhIG5ldyBhcHByb2FjaCBvbiB0aGUgcHJldmlvdXMgU1RNMzIgc3lzdGVtCj4g
PiBidXMsIGhpc3RvcnkgaXMgYXZhaWxhYmxlIGhlcmU6Cj4gPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjMwMTI3MTY0MDQwLjEwNDc1ODMvCj4gPgo+ID4gVGhlIG5lZWQgZm9yIHN1
Y2ggZnJhbWV3b3JrIGFyaXNlcyBmcm9tIHRoZSBmYWN0IHRoYXQgdGhlcmUgYXJlIG5vdwo+ID4g
bXVsdGlwbGUgaGFyZHdhcmUgZmlyZXdhbGxzIGltcGxlbWVudGVkIGFjcm9zcyBtdWx0aXBsZSBw
cm9kdWN0cy4KPiA+IERyaXZlcnMgYXJlIHNoYXJlZCBiZXR3ZWVuIGRpZmZlcmVudCBwcm9kdWN0
cywgdXNpbmcgdGhlIHNhbWUgY29kZS4KPiA+IFdoZW4gaXQgY29tZXMgdG8gZmlyZXdhbGxzLCB0
aGUgcHVycG9zZSBtb3N0bHkgc3RheXMgdGhlIHNhbWU6IFByb3RlY3QKPiA+IGhhcmR3YXJlIHJl
c291cmNlcy4gQnV0IHRoZSBpbXBsZW1lbnRhdGlvbiBkaWZmZXJzLCBhbmQgdGhlcmUgYXJlCj4g
PiBtdWx0aXBsZSB0eXBlcyBvZiBmaXJld2FsbHM6IHBlcmlwaGVyYWwsIG1lbW9yeSwgLi4uCj4g
Pgo+ID4gU29tZSBoYXJkd2FyZSBmaXJld2FsbCBjb250cm9sbGVycyBzdWNoIGFzIHRoZSBSSUZT
QyBpbXBsZW1lbnRlZCBvbgo+ID4gU1RNMzJNUDJ4IHBsYXRmb3JtcyBtYXkgcmVxdWlyZSB0byB0
YWtlIG93bmVyc2hpcCBvZiBhIHJlc291cmNlIGJlZm9yZQo+ID4gYmVpbmcgYWJsZSB0byB1c2Ug
aXQsIGhlbmNlIHRoZSByZXF1aXJlbWVudCBmb3IgZmlyZXdhbGwgc2VydmljZXMgdG8KPiA+IHRh
a2UvcmVsZWFzZSB0aGUgb3duZXJzaGlwIG9mIHN1Y2ggcmVzb3VyY2VzLgo+ID4KPiA+IE9uIHRo
ZSBvdGhlciBoYW5kLCBoYXJkd2FyZSBmaXJld2FsbCBjb25maWd1cmF0aW9ucyBhcmUgYmVjb21p
bmcKPiA+IG1vcmUgYW5kIG1vcmUgY29tcGxleC4gVGhlc2UgbWVjYW5pc21zIHByZXZlbnQgcGxh
dGZvcm0gY3Jhc2hlcwo+ID4gb3Igb3RoZXIgZmlyZXdhbGwtcmVsYXRlZCBpbmNvdmVuaWVuY2Vz
IGJ5IGRlbnlpbmcgYWNjZXNzIHRvIHNvbWUKPiA+IHJlc291cmNlcy4KPiA+Cj4gPiBUaGUgc3Rt
MzIgZmlyZXdhbGwgZnJhbWV3b3JrIG9mZmVycyBhbiBBUEkgdGhhdCBpcyBkZWZpbmVkIGluCj4g
PiBmaXJld2FsbCBjb250cm9sbGVycyBkcml2ZXJzIHRvIGJlc3QgZml0IHRoZSBzcGVjaWZpY2l0
eSBvZiBlYWNoCj4gPiBmaXJld2FsbC4KPiA+Cj4gPiBGb3IgZXZlcnkgcGVyaXBoZXJhbHMgcHJv
dGVjdGVkIGJ5IGVpdGhlciB0aGUgRVRaUEMgb3IgdGhlIFJJRlNDLCB0aGUKPiA+IGZpcmV3YWxs
IGZyYW1ld29yayBjaGVja3MgdGhlIGZpcmV3YWxsIGNvbnRyb2xlbHIgcmVnaXN0ZXJzIHRvIHNl
ZSBpZgo+ID4gdGhlIHBlcmlwaGVyYWwncyBhY2Nlc3MgaXMgZ3JhbnRlZCB0byB0aGUgTGludXgg
a2VybmVsLiBJZiBub3QsIHRoZQo+ID4gcGVyaXBoZXJhbCBpcyBjb25maWd1cmVkIGFzIHNlY3Vy
ZSwgdGhlIG5vZGUgaXMgbWFya2VkIHBvcHVsYXRlZCwKPiA+IHNvIHRoYXQgdGhlIGRyaXZlciBp
cyBub3QgcHJvYmVkIGZvciB0aGF0IGRldmljZS4KPiA+Cj4gPiBUaGUgZmlyZXdhbGwgZnJhbWV3
b3JrIHJlbGllcyBvbiB0aGUgYWNjZXNzLWNvbnRyb2xsZXIgZGV2aWNlIHRyZWUKPiA+IGJpbmRp
bmcuIEl0IGlzIHVzZWQgYnkgcGVyaXBoZXJhbHMgdG8gcmVmZXJlbmNlIGEgZG9tYWluIGFjY2Vz
cwo+ID4gY29udHJvbGxlci4gSW4gdGhpcyBjYXNlIGEgZmlyZXdhbGwgY29udHJvbGxlci4gVGhl
IGJ1cyB1c2VzIHRoZSBJRAo+ID4gcmVmZXJlbmNlZCBieSB0aGUgYWNjZXNzLWNvbnRyb2xsZXIg
cHJvcGVydHkgdG8ga25vdyB3aGVyZSB0byBsb29rCj4gPiBpbiB0aGUgZmlyZXdhbGwgdG8gZ2V0
IHRoZSBzZWN1cml0eSBjb25maWd1cmF0aW9uIGZvciB0aGUgcGVyaXBoZXJhbC4KPiA+IFRoaXMg
YWxsb3dzIGEgZGV2aWNlIHRyZWUgZGVzY3JpcHRpb24gcmF0aGVyIHRoYW4gYSBoYXJkY29kZWQg
cGVyaXBoZXJhbAo+ID4gdGFibGUgaW4gdGhlIGJ1cyBkcml2ZXIuCj4gPgo+ID4gVGhlIFNUTTMy
IEVUWlBDIGRldmljZSBpcyByZXNwb25zaWJsZSBmb3IgZmlsdGVyaW5nIGFjY2Vzc2VzIGJhc2Vk
IG9uCj4gPiBzZWN1cml0eSBsZXZlbCwgb3IgY28tcHJvY2Vzc29yIGlzb2xhdGlvbiBmb3IgYW55
IHJlc291cmNlIGNvbm5lY3RlZAo+ID4gdG8gaXQuCj4gPgo+ID4gVGhlIFJJRlNDIGlzIHJlc3Bv
bnNpYmxlIGZvciBmaWx0ZXJpbmcgYWNjZXNzZXMgYmFzZWQgb24gQ29tcGFydG1lbnQKPiA+IElE
IC8gc2VjdXJpdHkgbGV2ZWwgLyBwcml2aWxlZ2UgbGV2ZWwgZm9yIGFueSByZXNvdXJjZSBjb25u
ZWN0ZWQgdG8KPiA+IGl0Lgo+ID4KPiA+IFNUTTMyTVAxMy8xNS8yNSBTb0MgZGV2aWNlIHRyZWUg
ZmlsZXMgYXJlIHVwZGF0ZWQgaW4gdGhpcyBzZXJpZXMgdG8KPiA+IGltcGxlbWVudCB0aGlzIG1l
Y2FuaXNtLgo+ID4KPgo+IC4uLgo+Cj4gQWZ0ZXIgbWlub3IgY29zbWV0aWMgZml4ZXMsIHNlcmll
cyBhcHBsaWVkIG9uIHN0bTMyLW5leHQuCj4gU2VlbiB3aXRoIEFybmQ6IGl0IHdpbGwgYmUgcGFy
dCBvbiBteSBuZXh0IFBSIGFuZCB3aWxsIGNvbWUgdGhyb3VnaAo+IGFybS1zb2MgdHJlZS4KCkFu
ZCB0aGVyZSdzIHNvbWUgbmV3IHdhcm5pbmdzIGluIG5leHQgd2l0aCBpdDoKCiAgICAgIDEgIHZl
bmNANDgwZTAwMDA6ICdhY2Nlc3MtY29udHJvbGxlcnMnIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0
aGUKcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwogICAgICAxICB2ZGVjQDQ4MGQwMDAwOiAnYWNj
ZXNzLWNvbnRyb2xsZXJzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlCnJlZ2V4ZXM6ICdwaW5j
dHJsLVswLTldKycKClJvYgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
