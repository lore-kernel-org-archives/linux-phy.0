Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF3BC36010
	for <linux-phy@archiver.kernel.org>; Mon, 31 Mar 2025 13:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6lXWE53wpXLKA6uStw8JoAoHbEkdOh8E4o72dQZdCg=; b=vskmj7X0z8jxpg
	aRIeGytzhLAvRInaa+enJAxJyhW4VAyK0zqbXGA1HpMGGIGehonyXarduENY2tbBHzrH4S8XPOJPk
	8pleOruykorlO5dnkCTTSCeCaRQkL+ebt25zZhW+Ur9D5l3dBsF5mtvmbXiq8sVlldf2O59/ds4hz
	41ks0nnB3OC3TJi3/BQCSeZMebPX/CaBl5msKXfXdw9yFyPwV51eYVWQsJIlC3l5W0btrwYofnJ9Z
	U/TqFERP/HXuDVBXVgI31fBQLmvraxaFEzCCFchbE2WF4Ls+SKWsxxOc5Hp7qYWEwweydYiJcFQgh
	QOnJTBInBUVg/ARBpd7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzFSD-00000000Tan-26R9;
	Mon, 31 Mar 2025 13:45:29 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzFQf-00000000TSw-07K7
	for linux-phy@lists.infradead.org;
	Mon, 31 Mar 2025 13:43:54 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-22928d629faso48070425ad.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Mar 2025 06:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743428632; x=1744033432; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=acRC261SaEKC/7/W6BFAn2cHMzShm+CQ8Ads6iAgzlw=;
        b=fZhy1bWp3Ujz42N3GhpvVoYQ2mzrsi7gYIrz/ASufVcbSU1rmnKtp0LLgRlajdpzq3
         Hq56TkN+50TVBCyE0gVYHV0EuftTE++hMCrF3jce0H9DgMYhFGoQXjxeLjgTp5XnRqxB
         8mytBRzwEvevuN1LjRuQy1idjEyNJE1GS+5rAIGtBycQuD0PqArzuKh46kZRdGTVd/R5
         Yjk/LmVg/NzHamtzKUQVy8TxUQxwoAfYSJPRYDfle+pJv+jtfNi+iQGd7fZvzPWA199p
         ReBHYAhdXWHlER4cOQfrb2mAhE015ptoynGglDd+GHK7O1kGZyEo3enOzYK7XiQ7k87L
         qKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743428632; x=1744033432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=acRC261SaEKC/7/W6BFAn2cHMzShm+CQ8Ads6iAgzlw=;
        b=VvJJEG3pAEJmlL17yyJqOzyxmrcSFMNj9A33jSnbLverBw9/Huv/UWGa0YKtek5wf+
         qmGzu17zR+RrHxdTuKeKcbwM+IKyVaXaz6ukEdQRJTDLbQ3rAwuUav5ne4nuV5dwBOFo
         pNoEsJQ+wOOnrE4dVrFh7UluNCJhym5PX7gKSGXfbSnq1w3N5Tf+dC7+Le/wyBfRydYB
         K/l9QKS6EXEajDOOZIZsixv/OwE2ghhgpNFlEEMpcaIiu6pwXLUIkiskI/CdUaexSgFg
         sWxljRC91unsqZ2BeOQCcwYIxwB6fquujkvYrSgdyomv6eIHbqq8MEFkEGQXFBPtcSSs
         B1XA==
X-Forwarded-Encrypted: i=1; AJvYcCVhhyB8pV3ZW3DlIXf9uMjU1CvAH6kz65X6+RNskHvtsDzej8Zvpcsr96fyK3aujNqshQSpLRlIFmE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOFpFwTCrPQbI9iKLRbfjGHWTIJ8ZoJK9M7nVq1J+lcCH64ooT
	AzZzQNtSBPD6eVsZm+shtrKI2jj+YWfg/DkfHTHZIacxBUE8p33rWD20kmpBd4TXmylmnbzh/HA
	kCPY+wffYSo5iaLUdQos68lE+6i8=
X-Gm-Gg: ASbGncuvAo657S3bk2V7sPo4zFFdRDR0jj3Tm6GktY9SnoksArUnoF4Y0/6552sk6Qz
	pPa9x5rUcxVWwwX86ckZMWBBMq/C7/7JjacmpOsz9/1CtbQQsP8jRFvnsQSt8HBTAnlqCXyHRZg
	CIfaKTj/+RTZBZU38QYoVSzc19hopIzR8QRo73
X-Google-Smtp-Source: AGHT+IEPmbA0/4hiOM9hOsW56MQXEn4vU5JkEnSFv38ADOJ8A89PqZHuvxqXawZEyBTy1YJmlUmc91EzpBLa2NbxWV8=
X-Received: by 2002:a17:90b:510a:b0:2ee:ab29:1a63 with SMTP id
 98e67ed59e1d1-30531f7c897mr14182798a91.3.1743428631746; Mon, 31 Mar 2025
 06:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c> <Z861gsaGY6bGSisf@atmark-techno.com>
In-Reply-To: <Z861gsaGY6bGSisf@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 31 Mar 2025 08:43:38 -0500
X-Gm-Features: AQ5f1JpJG3x3SEs9GIv1mzubPpNEg-PfTCQ359LMo2SckOQ0fNPeeBD-j5SgQEM
Message-ID: <CAHCN7xKUdveqVnOXXRL-RhXFrN4OUjJC+VgZguy1kYjx230wCw@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_064353_068297_452B7855 
X-CRM114-Status: GOOD (  40.27  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgNDo0OeKAr0FNIERvbWluaXF1ZSBNYXJ0aW5ldAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+IFV3ZSBLbGVpbmUt
S8O2bmlnIHdyb3RlIG9uIE1vbiwgTWFyIDEwLCAyMDI1IGF0IDEwOjE0OjIzQU0gKzAxMDA6Cj4g
PiA+IGZvciA4My41bUh6LCB0aGUgaW50ZWdlciBkaXZpZGVyIGdlbmVyYXRlcyA4My4ybUh6ICgt
MC4zNiUpLCBidXQgdGhlCj4gPiA+IG5leHQgTFVUIHZhbHVlICg4Mi41bUh6KSBpcyAxLjIlIG9m
ZiB3aGljaCBpbmNvcnJlY3RseSByZWplY3RzIG1vZGVzCj4gPiA+IHJlcXVpcmluZyB0aGlzIGZy
ZXF1ZW5jeS4KPiA+Cj4gPiBJcyB0aGUgdW5pdCBoZXJlIE1IeiBvciBtSHo/IEkgc3VzcGVjdCB0
aGUgZm9ybWVyPwo+Cj4gRXJyLCB5ZXMgTUh6OyBJIHdhcyBzdGlsbCBoYWxmIGFzbGVlcCB3aGVu
IEkgYWRkZWQgdGhhdCBleGFtcGxlIHRvIHRoZQo+IGNvbW1pdCBtZXNzYWdlLi4KPgo+ID4gV2l0
aG91dCBoYXZpbmcgbG9va2VkIGluIGRldGFpbCwgSSB0aGluayBpdCB3b3VsZCBiZSBuaWNlIHRv
IHJlZHVjZSBjb2RlCj4gPiBkdXBsaWNhdGlvbiBiZXR3ZWVuIHBoeV9jbGtfcm91bmRfcmF0ZSgp
IGFuZCBwaHlfY2xrX3NldF9yYXRlKCkuIFRoZQo+ID4gZm9ybWVyIGhhcwo+ID4KPiA+ICAgICAg
IGlmIChyYXRlID4gMjk3MDAwMDAwIHx8IHJhdGUgPCAyMjI1MDAwMCkKPiA+ICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7Cj4gPgo+ID4gd2hpY2ggc2VlbXMgdG8gYmUgbGFja2luZyBmcm9t
IHRoZSBsYXR0ZXIgc28gSSBzdXNwZWN0IHRoZXJlIGFyZSBtb3JlCj4gPiBkaWZmZXJlbmNlcyBi
ZXR3ZWVuIHRoZSB0d28gZnVuY3Rpb25zIHRoYW4gZml4ZWQgaGVyZT8KPgo+IEZvciB0aGlzIHBh
cnRpY3VsYXIgcmF0ZSBjaGVjaywgSSBiZWxpZXZlIHRoYXQgaWYgcGh5X2Nsa19yb3VuZF9yYXRl
KCkKPiByZWplY3RlZCB0aGUgZnJlcXVlbmN5IHRoZW4gcGh5X2Nsa19zZXRfcmF0ZSgpIGNhbm5v
dCBiZSBjYWxsZWQgYXQgYWxsCj4gd2l0aCB0aGUgc2FpZCB2YWx1ZSAoYXQgbGVhc3Qgb24gdGhp
cyBwYXJ0aWN1bGFyIHNldHVwIGdvaW5nIHRocm91Z2ggdGhlCj4gaW14OG1wLWhkbWktdHggYnJp
ZGdlIHZhbGlkYXRpbmcgZnJlcXVlbmNpZXMgZmlyc3QgYmVmb3JlIGFsbG93aW5nCj4gbW9kZXMp
LCBub3QgdGhhdCBpdCdkIGh1cnQgdG8gcmVjaGVjay4KCkkgYmVsaWV2ZSB0aGF0IGlzIHRydWUu
ICBJIGNvbnNpZGVyZWQgYWRkaW5nIGl0LCBidXQgd2hlbiBJIHB1dCBkZWJ1Zwpjb2RlIGluIHRv
IHRyYWNlIHdoYXQgd2FzIGhhcHBlbmluZywgaXQgd2FzIGJlaW5nIHJlamVjdGVkLCBpbiBvbmUK
cGxhY2UsIHNvIHRoZSBvdGhlciBkaWRuJ3QgbmVlZCB0by4gIElmIHRoZSBnZW5lcmFsIGNvbnNl
bnN1cyBpcyB0bwpoYXZlIGl0IGluIGJvdGggcGxhY2VzLCBJIGNhbiBhZGQgaXQuCgo+Cj4KPiBJ
biBnZW5lcmFsIHRob3VnaCBJIGFncmVlIHRoZXNlIGFyZSBkb2luZyBwcmV0dHkgbXVjaCB0aGUg
c2FtZSB0aGluZywKPiB3aXRoIGNsa19yb3VuZF9yYXRlKCkgdGhyb3dpbmcgYXdheSB0aGUgcG1z
IHZhbHVlcyBhbmQgdGhlcmUncyBtb3JlCj4gZHVwbGljYXRpb24gdGhhbiBpZGVhbC4uLgoKSSd2
ZSBiZWVuIHdvcmtpbmcgb24gY3JlYXRpbmcgc29tZSBjYWNoaW5nIHRvIGRldGVybWluZSB0aGUg
YmVzdAp2YWx1ZXMgZm9yIHRoZSBQSFkgYW5kIHJlbWVtYmVyIHRoZW0sIHNvIHRoZSB3b3JrIGRv
ZXNuJ3QgaGF2ZSB0byBiZQpkb25lIGFnYWluIGlmIHRoZSBuZXh0IGNhbGwgdXNlcyB0aGUgc2Ft
ZSBjbG9jayByYXRlLiAgSSdtIG5vdCBxdWl0ZQpyZWFkeSB0byBzdWJtaXQgaXQsIGJlY2F1c2Ug
SSBuZWVkIHRvIHJlYmFzZSBpdCBvbiBMaW51eC1OZXh0IHdpdGgKc29tZSBvZiB0aGUgb3RoZXIg
dXBkYXRlcyByZXF1ZXN0ZWQgYnkgVXdlLiAgTXkgdXBkYXRlcyBhbHNvIHJlbW92ZQp0aGUgbG9v
ay11cCB0YWJsZSBjb21wbGV0ZWx5IGFuZCB1c2UgYW4gYWxnb3JpdGhtIHRvIGRldGVybWluZSB0
aGUKZnJhY3Rpb25hbCBkaXZpZGVyIHZhbHVlcyAtIHRoYW5rcyB0byBGcmllZGVyJ3MgcHl0aG9u
IGNvZGUgdGhhdCBJCnBvcnRlZCB0byBDLiAgSSBleHBlcmltZW50ZWQgcXVpdGUgYSBiaXQgd2l0
aCB3aGljaCB2YWx1ZXMgaGF2ZSBtb3JlCmltcGFjdCBhbmQgcmVvcmdhbml6ZWQgaGlzIG5lc3Rl
ZCBmb3ItbG9vcHMgdG8ga2VlcCB0cmFjayBvZiBob3cgbWFueQppdGVyYXRpb25zIGFyZSBkb25l
IGFuZCBhbHNvIG1lYXN1cmluZyB0aGUgdGltZSBpdCB0YWtlcyB0byBkbyB0aGUKY2FsY3VsYXRp
b25zLCBzbyB0aGUgY29kZSBkb2Vzbid0IHJlYWxseSBsb29rIGxpa2UgaGlzIGFzIG11Y2ggYXMg
b25lCndvdWxkIHRoaW5rLgoKVGhlIGRvd25zaWRlIHdpdGggbXkgdXBkYXRlcyBpcyB0aGF0IHJ1
bm5pbmcgJ21vZGV0ZXN0JyAgb24gdGhlIDRLCm1vbml0b3IgdGhhdCBJIHVzZSBoYXMgc28gbWFu
eSBlbnRyaWVzLCB0aGUgdGltZSBpdCB0YWtlcyB0byBjYWxjdWxhdGUKYWxsIHRoZSB2YWx1ZXMg
Zm9yIHRoZSBtb25pdG9yIHRha2VzIGEgc2Vjb25kIG9yIHR3byBsb25nZXIgdGhhbgpiZWZvcmUs
IGJlY2F1c2Ugc2VhcmNoaW5nIHRoZSBMVVQgaXMgcXVpY2sgYW5kIGRvaW5nIGEgc2VyaWVzIG9m
CmZvci1sb29wcyB0byBmaW5kIHRoZSBub21pbmFsIHZhbHVlcyBpcyBtb3JlIHRpbWUgY29uc3Vt
aW5nLiAgV2UgY291bGQKcG90ZW50aWFsbHkga2VlcCB0aGUgTFVUIGFuZCBvbmx5IHVzZSB0aGlz
IG5ldyBjYWxjdWxhdGlvbiBpZiB0aGUKZW50cnkgaXNuJ3QgaW4gdGhlIExVVC4gIEkgYW0gbm90
IGdlbmVyYWxseSBhIGZhbiBvZiBMVVQncyBpZiB0aGUKdmFsdWVzIGNhbiBiZSBjYWxjdWxhdGVk
LCBidXQgSSBjYW4gYWxzbyBzZWUgdGhlIGFkdmFudGFnZSBvZiBzcGVlZC4KCj4gVW5mb3J0dW5h
dGVseSB0aGUgY29kZSB0aGF0IGNvbXB1dGVzIHJlZ2lzdGVycyBmb3IgdGhlIGludGVnZXIgZGl2
aWRlcgo+IGRvZXMgaXQgaW4gYSBnbG9iYWwgdmFyaWFibGUgc28ganVzdCBjb21wdXRpbmcgZXZl
cnl0aGluZyBpbgo+IHJvdW5kX3JhdGUoKSB3b3VsZCBmb3JnZXQgd2hhdCBsYXN0IHNldHRpbmcg
d2FzIGFjdHVhbGx5IGFwcGxpZWQgYW5kCj4gYnJlYWsgZS5nLiByZXN1bWUsIGJ1dCB5ZXMgdGhh
dCdzIGp1c3QgcmVmYWN0b3JpbmcgdGhhdCBzaG91bGQgYmUgZG9uZS4KPgo+IFdoaWxlIHdlJ3Jl
IGhlcmUgSSBhbHNvIGhhdmUgbm8gaWRlYSB3aGF0IHJlY2FsY19yYXRlKCkgaXMgc3VwcG9zZWQg
dG8KPiBkbyBidXQgdGhhdCAncmV0dXJuIDc0MjUwMDAwOycgaXMgZGVmaW5pdGVseSBvZGQsIGFu
ZCBJJ20gc3VyZSB0aGVyZSBhcmUKPiBvdGhlciBpbXByb3ZlbWVudHMgdGhhdCBjb3VsZCBiZSBt
YWRlIGF0IHRoZSBlZGdlcy4KCkkgYW0gbm90IHN1cmUgd2hlcmUgdGhlc2UgdmFsdWVzIGNhbWUg
ZnJvbSBlaXRoZXIuCgo+Cj4KPiBUaGF0J3MgcXVpdGUgcnVkZSBvZiBtZSBnaXZlbiBJIGp1c3Qg
c2VudCB0aGUgcGF0Y2gsIGJ1dCB3ZSBwcm9iYWJseQo+IHdvbid0IGhhdmUgdGltZSB0byByZXdv
cmsgdGhpcyB1bnRpbCBtaWQtYXByaWwgYWZ0ZXIgc29tZSB1cmdlbnQgd29yawo+IGVuZHMgKHRo
aXMgaGFzIGFjdHVhbGx5IGJlZW4gd2FpdGluZyBmb3IgdGVzdGluZyBmb3IgMyBtb250aHMKPiBh
bHJlYWR5Li4uKQo+IElmIHRoaXMgZG9lc24ndCBib3RoZXIgYW55b25lIGVsc2Ugd2UgY2FuIHdh
aXQgZm9yIGEgdjIgdGhlbiwgYnV0CgpJZiB5b3Ugd2FudCwgSSBjYW4gc3VibWl0IG15IHN0dWZm
IGFzIGFuIFJGQyB0byBnaXZlIGl0IGEgdHJ5IGFuZApzb2xpY2l0IGZlZWRiYWNrLgoKPiBvdGhl
cndpc2UgaXQgbWlnaHQgYmUgd29ydGggY29uc2lkZXJpbmcgZ2V0dGluZyBhcyBpcyB1bnRpbCBy
ZWZhY3RvcmluZwo+IGhhcHBlbnMgKGFuZCBJIHBpbmt5IHByb21pc2UgSSdsbCBmaW5kIHRpbWUg
YmVmb3JlIHRoaXMgc3VtbWVyIC0tIEkgY2FuCj4gc2VuZCBhIHYyIHdpdGggY29tbWl0IG1lc3Nh
Z2UgZml4ZWQgdXAgYXMgRnJpZWRlciBzdWdnZXN0ZWQgaWYgdGhpcyBpcwo+IGFjY2VwdGFibGUg
dG8geW91KQo+CgphZGFtCj4KPgo+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrIGVpdGhl
ciB3YXksIGFuZCBzb3JyeSBmb3IgdGhlIGxvbmcgZGVsYXkuCj4gLS0KPiBEb21pbmlxdWUKPgo+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
