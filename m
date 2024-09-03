Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E51E6CA0ED3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 01:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHA29MObGp18iXmKyawyfmS3gq/zgZzgT53XmOpoR8E=; b=OCymXJWBa1mjUs
	Fpx1CW/o8FNuLuX2fmCBBiHvm8v4rGMMt5BE1bhn1Fywp61sckt6UhrKap6O9QhAyP6jOsLiA9wU4
	P/2tJTaAt0JXGk8Pkj3R/vQ1+v6dSO+JxU6AbU5yYnWsWvMCnrdhXbAuXzTqmBPtoBGqvlyqggkG4
	nB05CX9387KHD35c001ZgDv5vH49BIP8Mfls/rdl3jlb4DJBI9Xr91gOAAIZdyqv8sY/vdUDXSRJ5
	+0mLAbA31NzOupmT1YsD3BOTZsyfVzaGw+iUvqAoBEIpMTuazeR4I4Xdt6FewrMLuj4otAFr/KrjL
	03ezCbVmfGo/F4/PA5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIEE-0000000Fvd8-28uc;
	Tue, 03 Sep 2024 01:21:06 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIEB-0000000FvcK-2ryQ
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 01:21:05 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-7176645e51bso811975b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 18:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725326463; x=1725931263; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YmswcnWkPjx3woTAru4QxpFURfDAiH60zG4F5Jk5vUc=;
        b=cvFOz6cEt+GWaNNhcO54avpM/76KvUPhCHdQNm+ruzpL6hPPepp5+sV0i6eOTa+nUG
         hwl73vT0u4k0flVerv8X9oLThUhGijBenAf4o3bqwxuHMFYy0l0tLb5t8rtLPPu6hE0T
         imajAXQopvO1zL4u9xLhS+nieJUTLVhxZ96oQAMEyPolri96vkIZ313XuACjkWj2rvwW
         Q1PI+YmEvjcuehViv0hNshPLhkkRmijtihIG8avci3ypUYIhwJHep556tqyeC9hYDWzW
         J65CPQUPpgmVag20PtFXn2HTSDNwozEBfbH+Imb3hQ8qIcRUSSMHQZuSmaeFXh3/Be6y
         Owug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725326463; x=1725931263;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YmswcnWkPjx3woTAru4QxpFURfDAiH60zG4F5Jk5vUc=;
        b=T5fZDrKIlbgKYEvEQ08P7o/oV0M+a2BKwmUzA46xzHihAGzOlew7ERLFBxFbKNkQC0
         ANaJYtQ/8Pleft9d+zQSmSagVHFt5XlAt/iagEp87qiRnC3+Y9EDcpANtKYw/WJBB3Ne
         fLBxcx7jIaE3kepjt8d5Ko07kF4cbw81tTpIcZuv48gkmIQ4KA/t8sBi7c7mbUeEz7sq
         zelalruqPUFpbJ1DW6UHaAkwpTQ3pFqVbVznp+ZPQDz1EFVDidD/9eiWTNO81xSuOItP
         D78VzyJXS7XYeNQBbEISAcIMFp9xZK6TDBfmqIPptMh6AdMwHj+x5os6xQLAFgZPMlYy
         lu6g==
X-Gm-Message-State: AOJu0Yywc6J+TKtHQjrwwrjaGqbDrm4CShySOt/21bJZkInUp3fuLQ+F
	5ooPCZQSLQlE7mfThKavRuvIeq6jy85Q5FQGVV1fkAaL8MS+R8SWtkwrM54I5EoFXgUz7ZGPtxu
	a2ZdoiEZjqvMsjiG9taSmmr7kEcSsEA==
X-Google-Smtp-Source: AGHT+IFSs3iK2zQclwWKK48pQrtL6JimRbmmzHuCgm5qflbmnd1hOBb4zrrUWvfxpyItM9/pBEmJoDk2swgc+V7rvdA=
X-Received: by 2002:a05:6a20:d50c:b0:1ce:e725:1709 with SMTP id
 adf61e73a8af0-1cee725184emr6123399637.48.1725326462504; Mon, 02 Sep 2024
 18:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240830032442.226031-1-aford173@gmail.com> <20240830032442.226031-3-aford173@gmail.com>
 <ZtFfBs4HEShmJKsi@atmark-techno.com> <CAHCN7xJL-aS+kFp2YwtSSUUMoTBqZCsXb0qvCpYQGpJVM_qJYg@mail.gmail.com>
 <ZtZcit7HVzzedgdk@atmark-techno.com>
In-Reply-To: <ZtZcit7HVzzedgdk@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 2 Sep 2024 20:20:50 -0500
Message-ID: <CAHCN7xLVSq9gh9KbKbFBcZ7HT5vgv4JHdn3QTXFf5B9t86Wp_g@mail.gmail.com>
Subject: Re: [RFC V3 3/3] phy: freescale: fsl-samsung-hdmi: Support dynamic integer
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com, 
	frieder.schrempf@kontron.de, aford@beaconembedded.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_182103_746151_58193304 
X-CRM114-Status: GOOD (  24.93  )
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

T24gTW9uLCBTZXAgMiwgMjAyNCBhdCA3OjQ34oCvUE0gRG9taW5pcXVlIE1hcnRpbmV0Cjxkb21p
bmlxdWUubWFydGluZXRAYXRtYXJrLXRlY2huby5jb20+IHdyb3RlOgo+Cj4gQWRhbSBGb3JkIHdy
b3RlIG9uIE1vbiwgU2VwIDAyLCAyMDI0IGF0IDA0OjIwOjExUE0gLTA1MDA6Cj4gPiA+IC0gICAg
ICAgY29uc3Qgc3RydWN0IHBoeV9jb25maWcgKmN1cl9jZmc7Cj4gPiA+ICsgICAgICAgc3RydWN0
IHBoeV9jb25maWcgY3VyX2NmZzsKPiA+Cj4gPiBXb3VsZG4ndCBjb252ZXJ0aW5nIHRoaXMgZnJv
bSBhIHBvaW50ZXIgcmVxdWlyZSBtZSB0byBkbyBhIG1lbWNweQo+ID4gbGF0ZXI/ICBJdCBzZWVt
cyBsaWtlIHRoYXQncyBtb3JlIHdvcmsgdGhhbiBqdXN0IHBvaW50aW5nIGl0IHRvIGFuCj4gPiBh
ZGRyZXNzLgo+ID4KPiA+ID4gLSAgICAgICBwaHktPmN1cl9jZmcgPSAmcGh5X3BsbF9jZmdbaV07
Cj4gPiA+ICsgICAgICAgcGh5LT5jdXJfY2ZnID0gcGh5X3BsbF9jZmdbaV07Cj4gPgo+ID4gSSB0
aGluayB0aGlzIGlzIHdvdWxkIGhhdmUgdG8gYmUgYSBtZW1jcHkgaW5zdGVhZCBvZiBqdXN0IGFu
IGVxdWFsCj4gPiBzdGF0ZW1lbnQgc2luY2UgcGh5LT5jdXJfY2ZnICB3b3VsZCBubyBsb25nZXIg
YmUgYSBwb2ludGVyLgo+Cj4gQyBhbGxvd3MgY29weWluZyBzdHJ1Y3RzIGxpa2UgdGhpcywgaXQn
cyBmaW5lIHRvIHdyaXRlIGl0IGFzIGp1c3QgYW4KPiBlcXVhbC4KPiBJdCdzIG5vdCAxMDAlIGVx
dWl2YWxlbnQsIGlpdWMgc2ltcGxlIGFzc2lnbm1lbnQgaXMgdW5kZWZpbmVkIGJlaGF2aW91cgo+
IGlmIHRoZSBlbGVtZW50cyBhcmVuJ3QgYWxpZ25lZCBidXQgbWVtY3B5IHdpbGwgd29yayBldmVu
IGluIHRoYXQgY2FzZSwKPiBidXQgZm9yIHVzIHRoaXMgaXMgbm90IGEgcHJvYmxlIG1hbmQgdGhl
IGdlbmVyYXRlZCBjb2RlIHNob3VsZCBiZQo+IGlkZW50aWNhbC4uLiBBbHNvIG5vdGUgSSdtIG9u
bHkgc3VnZ2VzdGluZyB0aGF0IGJlY2F1c2UgdGhlIHN0cnVjdCBpcwo+IHRpbnkgKDEqdTMyKzcq
dTggaXMgbGVzcyB0aGFuIHR3byB1NjQpLCBidXQgdGhpcyBjb2RlIGlzbid0IG1lYW50IHRvIHJ1
bgo+IHZlcnkgb2Z0ZW4gYW55d2F5IHNvIHdlIHNob3VsZCBwcmlvcml0aXplIHJlYWRhYmlsaXR5
IC0tIGlmIHlvdSB0aGluawo+IGl0J3MgaGFyZGVyIHRvIHVuZGVyc3RhbmQgdGhhbiBhbiBleHRy
YSBwb2ludGVyIHNvbWV3aGVyZSBJIGhhdmUgbm8KPiBzdHJvbmcgb3BpbmlvbjsgYXMgc2FpZCBp
biB0aGUgcHJldmlvdXMgbWFpbCBpZiBwYXJhbGxlbCB1c2VzIGFyZQo+IHBvc3NpYmxlIGl0J2Qg
YmUgYmV0dGVyIGtlcHQgb24gdGhlIHN0YWNrIGFueXdheS4uLgoKRG9taW5pcXVlLAoKVW5sZXNz
IHNvbWVvbmUgcHVzaGVzIGJhY2ssIEkgdGhpbmsga2VlcGluZyBpdCBhIHBvaW50ZXIgaXMgbW9y
ZQpjb25zaXN0ZW50IHdpdGggd2hhdCB3ZSBkaWQgYmVmb3JlLCBhbmQgaXQncyBtb3JlIGluIG15
IHN0eWxlIG9mCmNvZGluZy4KCkkgaGF2ZSB0d28gbW9yZSBwYXRjaGVzIGluIHRoZSBzZXJpZXMu
CiogIE9uZSB1cGRhdGVzIHRoZSByb3VuZCBhbmQgc2V0IGZ1bmN0aW9ucyB0byBjb21wYXJlIHRo
ZSBjbG9zZXN0CnZhbHVlcyBiZXR3ZWVuIHRoZSBmcmFjdGlvbmFsIGRpdmlkZXIgYW5kIHRoZSBp
bnRlZ2VyIGRpdmlkZXIgYW5kIHVzZXMKdGhlIG9wdGlvbiB3aXRoIHRoZSBzbWFsbGVzdCBkaWZm
ZXJlbmNlIGJldHdlZW4gdGhlIGFjaGlldmFibGUgdmFsdWUKYW5kIHRoZSBkZXNpcmVkIHJhdGUg
aWYgdGhlIGFjdHVhbCB2YWx1ZSBpcyBub3QgYWNoaWV2YWJsZS4KCiogVGhlIHNlY29uZCByZW1v
dmVzIHRoZSBpbnRlZ2VyIGRpdmlkZXIgdmFsdWVzIGZyb20gdGhlIExVVCBzaW5jZQpoYXZpbmcg
aXQgdGhlcmUganVzdCB0YWtlcyB1cCBleHRyYSBzcGFjZSBhbmQgbWFrZXMgdGhlIExVVCBzZWFy
Y2gKbG9uZ2VyLgoKSSdsbCBzZW5kIGl0IGFzIFY0IHdpdGggYSBjb3ZlciBsZXR0ZXIgZGVzY3Jp
YmluZyBldmVyeXRoaW5nIEkgaGF2ZQpkb25lIGFuZCB0aGUgcmF0aW9uYWxlIGJlaGluZCBpdCB3
aXRob3V0IHRoZSBSRkMgZGVzaWduYXRpb24uCgpGb3Igd2hhdCBpdCdzIHdvcnRoLCBhZGRpbmcg
dGhlIGludGVnZXIgY2FsY3VsYXRvciBhZGRlZCA0IGVudHJpZXMgdG8KbXkgbW9kZXRlc3QgbGlz
dCwgYW5kIGNoYW5naW5nIHRoZSBoZG1pLXR4IHRvIHN1cHBvcnQgYSBjbG9jayByYW50ZSBvZgor
Ly0gNSUgYWRkZWQgYW5vdGhlciAxMSBwb3NzaWJsZSBlbnRyaWVzLiAgSSBoYXZlIG5vdCB0ZXN0
ZWQgdGhlbSBhbGwKeWV0LgpJIGxpa2VseSB3b24ndCBkbyBhIHBhdGNoIGZvciB0aGUgSERNSS1U
WCwgYnV0IGlmIHlvdSB3YW50IHRvIHNlbmQgYQpwYXRjaCBpbmNyZWFzaW5nIHRoZSB0b2xlcmFu
Y2UsIEknbGwgbGlrZWx5IHRlc3QgaXQgYXMgSSBoYXZlIHRpbWUuCgphZGFtCgo+Cj4gLS0KPiBE
b21pbmlxdWUKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
