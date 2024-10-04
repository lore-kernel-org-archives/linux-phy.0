Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3846CF884F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 23:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZgPndroGUze3JGAV6sgJvXPEzb+tYyTrG8a7eadgrY=; b=xL+EwcSyvuYS5Z
	RvZZ7FVqkqBeeT789/9NAaMFYpVV42Rm65JfmXORc1u1E+D0fpG30v14YwcO69wRxLRVxWMi3KrYk
	1S1L4v5xrZGqeu3pLfNWLg4+hn0GA1HIhVVfPyOF1716QBVuq2qstnjhcpq1mgCMJwfNsG91pKfA4
	737oW7Y+BiYagRlSBb7RDGla9Zr0SK+SPya8u6NcFZpQ/SZI1DuDl7U4N60sNaQJViiJzTWfvAgJ1
	OOo+S3tzw7Gz4CjPuScjvO0B4YPWTD1J9pmOqwDJi21u4C2o2h38nPUUwoXFT1VM0I0rFAmZUl6m8
	q9F31lfioODXRoIPObqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swrpp-0000000ESGR-1gR6;
	Fri, 04 Oct 2024 23:35:45 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swrpn-0000000ESG4-2LPv
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 23:35:44 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5c5b9d2195eso3535570a12.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Oct 2024 16:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728084941; x=1728689741; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHK0D1s9Qo1IqE2HKTU0otYR/E6L/9tQTdG+2dwbQok=;
        b=IBW7QmKqwplvFbVP6Cxw7mxkR0hWWjfscLDjFmsUfnWJfWtF/q6wY24QLxNgazHJEf
         3avP2efysXQXo7+LS4q3n91q78WQohi3VHbgQJY1y/+HAf3BnImT3wet5RpdbUffbS8N
         OebPo2s3US+DzxDhdQAQcgCuDw4UotrXa9KGbm3gASd8tGpaJBoVH87vtAFop4hnp02F
         /KzWaYUGcuc4w0hsPBaZnB6LcBTbPqR8c3xEH0ASVTxM7a4xwJ+Qt0q4Mr0jikteSnWP
         JnCvKbJN+E2nck6ihFkCaxXgTmf7hYCdAjwshZq75dC7st1Z08JrMxEurQ0WFtq7D/e3
         Ps2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728084941; x=1728689741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHK0D1s9Qo1IqE2HKTU0otYR/E6L/9tQTdG+2dwbQok=;
        b=vZSo1YB+azm/mQhtEk9G+zPayu7lkAbkcHyXq24urzwEeDBzqb7c9gk7QIRYd+heVm
         aNFZFlURLCGfTCtaGq2JeosNF4qHVTF3vtbWtaAxj+f1a1s8dmMAoi1g8jGr9bcQXs3I
         /fOFQNvhoj+a5AC/yjgzNnDh7VBrBvry1ErFE3QJ8uBn7sjk5ZBVGQ5SEMlZ3L4dYRot
         YEFWSTXrwbeEKVXzxODUe38YLQYE5Gmb1z6jHotE2GDnWQ0FOlF83aX/uhhS4I72X7nf
         BBSfKmEJK9Y1GIFTmsdBOYdnyoehuIiUjpyU3wedbwVHbcSQn6VbiO2gvYc3J5+KMxn3
         i59w==
X-Forwarded-Encrypted: i=1; AJvYcCXJ6rtAsl+8rt4I41ayxbErog2JaZI37KEV7wHeDVVx/zWQyJ2qXE4doB6tbUwQZLCbmUatrLQvP5A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCsEGIf+oe/OP1nyudeU3/xyWs4fUok/PSuk3JydSxomxUNDnX
	xRmmudnN4PfVYwr9nyXRQNd9WZNlZvbGkGJNDPEwm+5ucQ0+znxlY3/pVi8ahkqFq09cu+sZ1nR
	i4qZBI0PULWlVJTcrbInXLBSjwKq2xqaZg+/BEw==
X-Google-Smtp-Source: AGHT+IGPfIHH+Zp5Rrnp/4cdlv7+ntavMlTz4b8lvAgp1HxlYv3oA5g7pPdRzZ2UO6t4p9o6uvu5sZ7C/5KdcLit40Y=
X-Received: by 2002:a05:6402:2709:b0:5c8:9722:f9d1 with SMTP id
 4fb4d7f45d1cf-5c8d2dfdba7mr2858346a12.5.1728084940798; Fri, 04 Oct 2024
 16:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241004034131.1363813-1-CFSworks@gmail.com> <20241004034131.1363813-2-CFSworks@gmail.com>
 <d8e12243-20d2-4a37-92d1-df6b9b32dc63@broadcom.com>
In-Reply-To: <d8e12243-20d2-4a37-92d1-df6b9b32dc63@broadcom.com>
From: Sam Edwards <cfsworks@gmail.com>
Date: Fri, 4 Oct 2024 16:35:29 -0700
Message-ID: <CAH5Ym4jTidgY9MdWzHN1=30DpOSUKf_h8nXBw21XR1VFuXn6fw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: usb: Fix missing elements in BCM4908 USB init array
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_163543_621550_68AC3C08 
X-CRM114-Status: GOOD (  23.87  )
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

T24gRnJpLCBPY3QgNCwgMjAyNCBhdCA5OjE04oCvQU0gRmxvcmlhbiBGYWluZWxsaQo8Zmxvcmlh
bi5mYWluZWxsaUBicm9hZGNvbS5jb20+IHdyb3RlOgo+Cj4gT24gMTAvMy8yNCAyMDo0MSwgU2Ft
IEVkd2FyZHMgd3JvdGU6Cj4gPiBUaGUgQnJvYWRjb20gVVNCIFBIWSBkcml2ZXIgY29udGFpbnMg
YSBsb29rdXAgdGFibGUKPiA+IChgcmVnX2JpdHNfbWFwX3RhYmxlc2ApIHRvIHJlc29sdmUgcmVn
aXN0ZXIgYml0bWFwcyB1bmlxdWUgdG8gY2VydGFpbgo+ID4gdmVyc2lvbnMgb2YgdGhlIFVTQiBQ
SFkgYXMgZm91bmQgaW4gdmFyaW91cyBCcm9hZGNvbSBjaGlwIGZhbWlsaWVzLiBBCj4gPiByZWNl
bnQgY29tbWl0IChzZWUgJ2ZpeGVzJyB0YWcpIGludHJvZHVjZWQgdHdvIG5ldyBlbGVtZW50cyB0
byBlYWNoIGNoaXAKPiA+IGZhbWlseSBpbiB0aGlzIHRhYmxlIC0tIGV4Y2VwdCBmb3Igb25lOiBC
Q000OTA4LiBUaGlzIHJlc3VsdGVkIGluIHRoZQo+ID4geEhDSSBjb250cm9sbGVyIG5vdCBiZWlu
ZyBpbml0aWFsaXplZCBjb3JyZWN0bHksIGNhdXNpbmcgYSBwYW5pYyBvbgo+ID4gYm9vdC4KPgo+
IFllcywgSSB0aGluayBJIHNlZSB3aGF0IGhhcHBlbmVkIGhlcmUsIHdlIHRvb2sgdGhlIHBhdGNo
IGluIHRoZSAiZml4ZXMiCj4gdGFnIGZyb20gdGhlIG91ciBkb3duc3RyZWFtIHRyZWUsIGFuZCBp
dCBhcHBsaWVkIGp1c3QgZmluZSwgd2Ugd2lsbCBrZWVwCj4gYSBjbG9zZXIgZXllIG9uIG90aGVy
IGVudHJpZXMgaW4gdGhlIGZ1dHVyZS4KPgo+ID4KPiA+IFRoZSBuZXh0IHBhdGNoIHdpbGwgdXBk
YXRlIHRoaXMgdGFibGUgdG8gdXNlIGRlc2lnbmF0ZWQgaW5pdGlhbGl6ZXJzIGluCj4gPiBvcmRl
ciB0byBwcmV2ZW50IHRoaXMgZnJvbSBoYXBwZW5pbmcgYWdhaW4uIEZvciBub3csIGp1c3QgYWRk
IGJhY2sgdGhlCj4gPiBtaXNzaW5nIGFycmF5IGVsZW1lbnRzIHRvIHJlc29sdmUgdGhlIHJlZ3Jl
c3Npb24uCj4KPiBPdXQgb2YgY3VyaW9zaXR5LCBjYW4geW91IGNoZWNrIHdoZXRoZXIgYnVpbGRp
bmcgd2l0aAo+IC1XbWlzc2luZy1maWVsZC1pbml0aWFsaXplcnMgd291bGQgaGF2ZSBjYXVnaHQg
dGhpcz8KCkl0IGFwcGVhcnMgdGhhdCB0aGUgYW5zd2VyIGlzIG5vLCBhdCBsZWFzdCBoZXJlIG9u
IENsYW5nLiBJIGFsc28ganVzdAp0cmllZCAtV2V4dHJhIHRvIHNlZSBpZiBhbnkgd2FybmluZyB3
b3VsZCBjYXRjaCBpdCBhbmQgZGlkbid0IHNlZSBvbmUuCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhh
dCAtV21pc3NpbmctZmllbGQtaW5pdGlhbGl6ZXJzIGlzIGZvciBzdHJ1Y3QKZmllbGRzLCBhbmQg
YSBjb25zdHJ1Y3QgbGlrZToKaW50IGFycmF5WzNdID0gezEsIDJ9OwouLi5kb2VzIG5vdCByZXN1
bHQgaW4gYSB3YXJuaW5nIGJlY2F1c2UgaXQncyBjb25zaWRlcmVkIHBlcmZlY3RseQp2YWxpZCBz
dGFuZGFyZHMtY29tcGxpYW50IEMgcGVyIEMncyBkZWZhdWx0IGluaXRpYWxpemF0aW9uIHJ1bGUu
CgpDaGVlcnMsClNhbQoKPgo+ID4KPiA+IEZpeGVzOiA0NTM2ZmU5NjQwYjYgKCJwaHk6IHVzYjog
c3VwcHJlc3MgT0MgY29uZGl0aW9uIGZvciA3NDM5YjIiKQo+ID4gU2lnbmVkLW9mZi1ieTogU2Ft
IEVkd2FyZHMgPENGU3dvcmtzQGdtYWlsLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBGbG9yaWFuIEZh
aW5lbGxpIDxmbG9yaWFuLmZhaW5lbGxpQGJyb2FkY29tLmNvbT4KPgo+ID4gLS0tCj4gPiAgIGRy
aXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1icmNtLXVzYi1pbml0LmMgfCAyICsrCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLWluaXQuYyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3Bo
eS1icmNtLXVzYi1pbml0LmMKPiA+IGluZGV4IDM5NTM2YjZkOTZhOS4uNWViYjNhNjE2MTE1IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLWluaXQuYwo+
ID4gKysrIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLWluaXQuYwo+ID4gQEAg
LTIyMCw2ICsyMjAsOCBAQCB1c2JfcmVnX2JpdHNfbWFwX3RhYmxlW0JSQ01fRkFNSUxZX0NPVU5U
XVtVU0JfQ1RSTF9TRUxFQ1RPUl9DT1VOVF0gPSB7Cj4gPiAgICAgICAgICAgICAgIDAsIC8qIFVT
Ql9DVFJMX1NFVFVQX1NDQjJfRU5fTUFTSyAqLwo+ID4gICAgICAgICAgICAgICAwLCAvKiBVU0Jf
Q1RSTF9TRVRVUF9TU19FSENJNjRCSVRfRU5fTUFTSyAqLwo+ID4gICAgICAgICAgICAgICAwLCAv
KiBVU0JfQ1RSTF9TRVRVUF9TVFJBUF9JUFBfU0VMX01BU0sgKi8KPiA+ICsgICAgICAgICAgICAg
MCwgLyogVVNCX0NUUkxfU0VUVVBfT0MzX0RJU0FCTEVfUE9SVDBfTUFTSyAqLwo+ID4gKyAgICAg
ICAgICAgICAwLCAvKiBVU0JfQ1RSTF9TRVRVUF9PQzNfRElTQUJMRV9QT1JUMV9NQVNLICovCj4g
PiAgICAgICAgICAgICAgIDAsIC8qIFVTQl9DVFJMX1NFVFVQX09DM19ESVNBQkxFX01BU0sgKi8K
PiA+ICAgICAgICAgICAgICAgMCwgLyogVVNCX0NUUkxfUExMX0NUTF9QTExfSUREUV9QV1JETl9N
QVNLICovCj4gPiAgICAgICAgICAgICAgIDAsIC8qIFVTQl9DVFJMX1VTQl9QTV9CRENfU09GVF9S
RVNFVEJfTUFTSyAqLwo+Cj4KPiAtLQo+IEZsb3JpYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
