Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F78C43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 10:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fm0o5dHuAHZuMePdokr1aU+ca/yalq5ENCMzJfD8fwI=; b=rYyLlDkYBTlZWu
	vaClntLmCBzRVY/RLRmkqiKGgCzajPAMy/HnKI1RiqLlofIL5tOtqYdIUGl5MGoilnntJ4VTNWgWO
	54THbqmcQlJbQvaXFcdTrWf7VqXn9HtqqBFlGrmuTjCs7zd0TGp8RjZCqeKv0cyVVxG8P+MXGOhoM
	Wx/Xeo3GD+xMunbR4uHnI8TLr6UT0iQ91+QG8PuoGqj8AomJon26oFEPRchyibe8A8HtdznX8epbH
	5gsTn9ZW7YQWB6lg7ZluX7ZFXyZCQW+FvIcG/LSB8RXDGN7C3+Qp9k067jHJDsC5TIVA/W5uSkI2U
	jxYq/qUndaeAgmIDO8IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET6A-003gdq-FN; Thu, 21 Jul 2022 10:08:02 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET2J-003dn1-SF
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 10:04:05 +0000
Received: by mail-pl1-x629.google.com with SMTP id w7so1325406ply.12
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 03:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=k2cfPwM4F8MRG16OVbwN5qbYqMkFUntciq+TeBCrGDw=;
        b=xn1hFsp+rwVt8rSkdOTGbbWXiQRceoZzibnj/20NRMiIyicNBeZuHqd5BMXWw4Amwg
         qGeaB0+qOl8xhuPq+JGxDj16XbYYMeovfEMAtfN180AMBXOqTE6djezZ5mA7b6ZcgmVM
         jUlojxG84UW7A7dmaLA3Jr/LwZnZ8Vzc1sDr4ngmKdCHjXHM7qlbmfOGe1ev4k9sHDDj
         DSdlk7nxjZXiq5TLIxAZCo1jbWSaFmQltpYyfqnTLXYhdfR1jr7GHTLZWe66UMX0dkSX
         CoagdFmUK+J9WM/vg+Jc7rvFtK6PQ6MJrqrSAq0BJCK8PKof8NRK+ZXKJToB3BtqcA2+
         nQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=k2cfPwM4F8MRG16OVbwN5qbYqMkFUntciq+TeBCrGDw=;
        b=ogG4ayaB+7CPnSPJx/5fQMYKnWBSoL1+YbCciAs/wdT9kvSX+4QXRFf3WbL6Kd2KRh
         v8h980SCImzdIyEzvr0Y1BEcAzm0UKiLk9Bksi1tokrhdlOhixWDET/OMidQeLdXTWsb
         /2BToZLjP+fK9Bn56Ll3IguCIx5+Vvtv8RfzZH016R2AOp2/Rz5Gpw7FsfptE/C9MXw0
         a/FQtrhqW/Z6Z1Dm8eUbxDl04/1pY++KEnB0FHEVu7ciHormlETCa4PMrFSs5jokCtHa
         Ptp+LuTJHcvzrkyq4Oj7ZfrKL/kwcG2kAvwnvJLbSCBOW4IOb25uCZaX2RzL9IBlulq+
         iflw==
X-Gm-Message-State: AJIora8WO6R0PQ5NH71NBWlOo6wJ2CmiU2aci0gIu8QsJK+5AXSn2Q/X
	AthewlxeSVNrI1FFYJkscVbI
X-Google-Smtp-Source: AGRyM1sWdnzwXT+3f8ffMpQ35lw1gPgPdgjyWLnWiaWwz/hbcnb7Zjs075w009E5GTau5fJJAnrLpA==
X-Received: by 2002:a17:90a:7c05:b0:1ee:e40c:589b with SMTP id v5-20020a17090a7c0500b001eee40c589bmr10549539pjf.78.1658397841781;
        Thu, 21 Jul 2022 03:04:01 -0700 (PDT)
Received: from thinkpad ([117.217.186.184])
        by smtp.gmail.com with ESMTPSA id u124-20020a627982000000b0052b4f4c6a8fsm1295424pfc.209.2022.07.21.03.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 03:04:01 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:33:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 2/4] phy: qcom-qmp-pcie: suppor separate tables for
 EP mode
Message-ID: <20220721100353.GB39125@thinkpad>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
 <20220719200626.976084-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220719200626.976084-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_030403_954812_206D8B33 
X-CRM114-Status: GOOD (  24.29  )
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

cy9zdXBwb3Ivc3VwcG9ydAoKT24gVHVlLCBKdWwgMTksIDIwMjIgYXQgMTE6MDY6MjRQTSArMDMw
MCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBUaGUgUENJZSBRTVAgUEhZIHJlcXVpcmVzIGRp
ZmZlcmVudCBwcm9ncmFtbWluZyBzZXF1ZW5jZXMgd2hlbiBiZWluZwo+IHVzZWQgZm9yIHRoZSBS
QyAoUm9vdCBDb21wbGV4KSBvciBmb3IgdGhlIEVQIChFbmQgUG9pbnQpIG1vZGVzLiBBbGxvdwo+
IHNlbGVjdGluZyB0aGUgc3VibW9kZSBhbmQgdGh1cyBzZWxlY3RpbmcgYSBzZXQgb2YgUEhZIHBy
b2dyYW1taW5nCj4gdGFibGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3Yg
PGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUuYyB8IDMzICsrKysrKysrKysrKysrKystLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gaW5kZXggMjNjYTU4NDhjNGE4
Li44OTgyODhjMWNkN2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjaWUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1w
Y2llLmMKPiBAQCAtMTM2OCw3ICsxMzY4LDggQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiAgCj4g
IAkvKiBJbml0IHNlcXVlbmNlIGZvciBQSFkgYmxvY2tzIC0gc2VyZGVzLCB0eCwgcngsIHBjcyAq
Lwo+ICAJc3RydWN0IHFtcF9waHlfY2ZnX3RhYmxlcyBwcmk7Cj4gLQlzdHJ1Y3QgcW1wX3BoeV9j
ZmdfdGFibGVzIHNlYzsKPiArCXN0cnVjdCBxbXBfcGh5X2NmZ190YWJsZXMgc2VjX3JjOyAvKiBm
b3IgdGhlIFJDIG9ubHkgKi8KPiArCXN0cnVjdCBxbXBfcGh5X2NmZ190YWJsZXMgc2VjX2VwOyAv
KiBmb3IgdGhlIEVQIG9ubHkgKi8KCkFnYWluLCBhIGNvbW1lbnQgaXMgbmVlZGVkIGZvciB0aGVz
ZSBtZW1iZXJzLgoKPiAgCj4gIAkvKiBjbG9jayBpZHMgdG8gYmUgcmVxdWVzdGVkICovCj4gIAlj
b25zdCBjaGFyICogY29uc3QgKmNsa19saXN0Owo+IEBAIC0xNDE4LDYgKzE0MTksNyBAQCBzdHJ1
Y3QgcW1wX3BoeV9jZmcgewo+ICAgKiBAaW5kZXg6IGxhbmUgaW5kZXgKPiAgICogQHFtcDogUU1Q
IHBoeSB0byB3aGljaCB0aGlzIGxhbmUgYmVsb25ncwo+ICAgKiBAbW9kZTogY3VycmVudCBQSFkg
bW9kZQo+ICsgKiBAc2VjOiBjdXJyZW50bHkgc2VsZWN0ZWQgUEhZIGluaXQgdGFibGUgc2V0Cj4g
ICAqLwo+ICBzdHJ1Y3QgcW1wX3BoeSB7Cj4gIAlzdHJ1Y3QgcGh5ICpwaHk7Cj4gQEAgLTE0MzMs
NiArMTQzNSw3IEBAIHN0cnVjdCBxbXBfcGh5IHsKPiAgCXVuc2lnbmVkIGludCBpbmRleDsKPiAg
CXN0cnVjdCBxY29tX3FtcCAqcW1wOwo+ICAJZW51bSBwaHlfbW9kZSBtb2RlOwo+ICsJY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnX3RhYmxlcyAqc2VjOwoKUGxlYXNlIG1vdmUgdGhlIHBvaW50ZXIg
dG8gdGhlIHRvcCB0byBhdm9pZCBob2xlcy4gSWYgcG9zc2libGUgb3JnYW5pemUgdGhlCm1lbWJl
cnMgaW4gYSBwYXR0ZXJuOgoKcHRyCnN0cnVjdAplbnVtCnU2NAp1MzIKdTgKCj4gIH07Cj4gIAo+
ICAvKioKPiBAQCAtMTY4Myw3ICsxNjg2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5
X2NmZyBzbTgyNTBfcW1wX2dlbjN4MV9wY2llcGh5X2NmZyA9IHsKPiAgCS5wY3NfbWlzY190YmwJ
CT0gc204MjUwX3FtcF9wY2llX3Bjc19taXNjX3RibCwKPiAgCS5wY3NfbWlzY190YmxfbnVtCT0g
QVJSQVlfU0laRShzbTgyNTBfcW1wX3BjaWVfcGNzX21pc2NfdGJsKSwKPiAgCX0sCj4gLQkuc2Vj
ID0gewo+ICsJLnNlY19yYyA9IHsKPiAgCS5zZXJkZXNfdGJsCQk9IHNtODI1MF9xbXBfZ2VuM3gx
X3BjaWVfc2VyZGVzX3RibCwKPiAgCS5zZXJkZXNfdGJsX251bQkJPSBBUlJBWV9TSVpFKHNtODI1
MF9xbXBfZ2VuM3gxX3BjaWVfc2VyZGVzX3RibCksCj4gIAkucnhfdGJsCQkJPSBzbTgyNTBfcW1w
X2dlbjN4MV9wY2llX3J4X3RibCwKPiBAQCAtMTcyNiw3ICsxNzI5LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTgyNTBfcW1wX2dlbjN4Ml9wY2llcGh5X2NmZyA9IHsKPiAg
CS5wY3NfbWlzY190YmwJCT0gc204MjUwX3FtcF9wY2llX3Bjc19taXNjX3RibCwKPiAgCS5wY3Nf
bWlzY190YmxfbnVtCT0gQVJSQVlfU0laRShzbTgyNTBfcW1wX3BjaWVfcGNzX21pc2NfdGJsKSwK
PiAgCX0sCj4gLQkuc2VjID0gewo+ICsJLnNlY19yYyA9IHsKPiAgCS50eF90YmwJCQk9IHNtODI1
MF9xbXBfZ2VuM3gyX3BjaWVfdHhfdGJsLAo+ICAJLnR4X3RibF9udW0JCT0gQVJSQVlfU0laRShz
bTgyNTBfcW1wX2dlbjN4Ml9wY2llX3R4X3RibCksCj4gIAkucnhfdGJsCQkJPSBzbTgyNTBfcW1w
X2dlbjN4Ml9wY2llX3J4X3RibCwKPiBAQCAtMTk1MSw3ICsxOTU0LDcgQEAgc3RhdGljIGludCBx
Y29tX3FtcF9waHlfcGNpZV9zZXJkZXNfaW5pdChzdHJ1Y3QgcW1wX3BoeSAqcXBoeSkKPiAgCXZv
aWQgX19pb21lbSAqc2VyZGVzID0gcXBoeS0+c2VyZGVzOwo+ICAKPiAgCXFjb21fcW1wX3BoeV9w
Y2llX2NvbmZpZ3VyZShzZXJkZXMsIGNmZy0+cmVncywgY2ZnLT5wcmkuc2VyZGVzX3RibCwgY2Zn
LT5wcmkuc2VyZGVzX3RibF9udW0pOwo+IC0JcWNvbV9xbXBfcGh5X3BjaWVfY29uZmlndXJlKHNl
cmRlcywgY2ZnLT5yZWdzLCBjZmctPnNlYy5zZXJkZXNfdGJsLCBjZmctPnNlYy5zZXJkZXNfdGJs
X251bSk7Cj4gKwlxY29tX3FtcF9waHlfcGNpZV9jb25maWd1cmUoc2VyZGVzLCBjZmctPnJlZ3Ms
IHFwaHktPnNlYy0+c2VyZGVzX3RibCwgcXBoeS0+c2VjLT5zZXJkZXNfdGJsX251bSk7Cj4gIAo+
ICAJcmV0dXJuIDA7Cj4gIH0KPiBAQCAtMjA0NSw2ICsyMDQ4LDkgQEAgc3RhdGljIGludCBxY29t
X3FtcF9waHlfcGNpZV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIAl1bnNpZ25lZCBpbnQg
bWFzaywgdmFsLCByZWFkeTsKPiAgCWludCByZXQ7Cj4gIAoKSGVyZSBhbHNvLCBhIGNvbW1lbnQg
d291bGQgYWRkIGEgdmFsdWUuCgpUaGFua3MsCk1hbmkKCj4gKwlpZiAoIXFwaHktPnNlYykKPiAr
CQlxcGh5LT5zZWMgPSAmY2ZnLT5zZWNfcmM7Cj4gKwo+ICAJcWNvbV9xbXBfcGh5X3BjaWVfc2Vy
ZGVzX2luaXQocXBoeSk7Cj4gIAo+ICAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHFwaHktPnBp
cGVfY2xrKTsKPiBAQCAtMjA1NywzNSArMjA2MywzNSBAQCBzdGF0aWMgaW50IHFjb21fcW1wX3Bo
eV9wY2llX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCXFjb21fcW1wX3BoeV9wY2llX2Nv
bmZpZ3VyZV9sYW5lKHR4LCBjZmctPnJlZ3MsCj4gIAkJCQkJIGNmZy0+cHJpLnR4X3RibCwgY2Zn
LT5wcmkudHhfdGJsX251bSwgMSk7Cj4gIAlxY29tX3FtcF9waHlfcGNpZV9jb25maWd1cmVfbGFu
ZSh0eCwgY2ZnLT5yZWdzLAo+IC0JCQkJCSBjZmctPnNlYy50eF90YmwsIGNmZy0+c2VjLnR4X3Ri
bF9udW0sIDEpOwo+ICsJCQkJCSBxcGh5LT5zZWMtPnR4X3RibCwgcXBoeS0+c2VjLT50eF90Ymxf
bnVtLCAxKTsKPiAgCj4gIAkvKiBDb25maWd1cmF0aW9uIGZvciBvdGhlciBMQU5FIGZvciBVU0It
RFAgY29tYm8gUEhZICovCj4gIAlpZiAoY2ZnLT5pc19kdWFsX2xhbmVfcGh5KSB7Cj4gIAkJcWNv
bV9xbXBfcGh5X3BjaWVfY29uZmlndXJlX2xhbmUocXBoeS0+dHgyLCBjZmctPnJlZ3MsCj4gIAkJ
CQkJCSBjZmctPnByaS50eF90YmwsIGNmZy0+cHJpLnR4X3RibF9udW0sIDIpOwo+ICAJCXFjb21f
cW1wX3BoeV9wY2llX2NvbmZpZ3VyZV9sYW5lKHFwaHktPnR4MiwgY2ZnLT5yZWdzLAo+IC0JCQkJ
CQkgY2ZnLT5zZWMudHhfdGJsLCBjZmctPnNlYy50eF90YmxfbnVtLCAyKTsKPiArCQkJCQkJIHFw
aHktPnNlYy0+dHhfdGJsLCBxcGh5LT5zZWMtPnR4X3RibF9udW0sIDIpOwo+ICAJfQo+ICAKPiAg
CXFjb21fcW1wX3BoeV9wY2llX2NvbmZpZ3VyZV9sYW5lKHJ4LCBjZmctPnJlZ3MsCj4gIAkJCQkJ
IGNmZy0+cHJpLnJ4X3RibCwgY2ZnLT5wcmkucnhfdGJsX251bSwgMSk7Cj4gIAlxY29tX3FtcF9w
aHlfcGNpZV9jb25maWd1cmVfbGFuZShyeCwgY2ZnLT5yZWdzLAo+IC0JCQkJCSBjZmctPnNlYy5y
eF90YmwsIGNmZy0+c2VjLnJ4X3RibF9udW0sIDEpOwo+ICsJCQkJCSBxcGh5LT5zZWMtPnJ4X3Ri
bCwgcXBoeS0+c2VjLT5yeF90YmxfbnVtLCAxKTsKPiAgCj4gIAlpZiAoY2ZnLT5pc19kdWFsX2xh
bmVfcGh5KSB7Cj4gIAkJcWNvbV9xbXBfcGh5X3BjaWVfY29uZmlndXJlX2xhbmUocXBoeS0+cngy
LCBjZmctPnJlZ3MsCj4gIAkJCQkJCSBjZmctPnByaS5yeF90YmwsIGNmZy0+cHJpLnJ4X3RibF9u
dW0sIDIpOwo+ICAJCXFjb21fcW1wX3BoeV9wY2llX2NvbmZpZ3VyZV9sYW5lKHFwaHktPnJ4Miwg
Y2ZnLT5yZWdzLAo+IC0JCQkJCQkgY2ZnLT5zZWMucnhfdGJsLCBjZmctPnNlYy5yeF90YmxfbnVt
LCAyKTsKPiArCQkJCQkJIHFwaHktPnNlYy0+cnhfdGJsLCBxcGh5LT5zZWMtPnJ4X3RibF9udW0s
IDIpOwo+ICAJfQo+ICAKPiAgCXFjb21fcW1wX3BoeV9wY2llX2NvbmZpZ3VyZShwY3MsIGNmZy0+
cmVncywgY2ZnLT5wcmkucGNzX3RibCwgY2ZnLT5wcmkucGNzX3RibF9udW0pOwo+IC0JcWNvbV9x
bXBfcGh5X3BjaWVfY29uZmlndXJlKHBjcywgY2ZnLT5yZWdzLCBjZmctPnNlYy5wY3NfdGJsLCBj
ZmctPnNlYy5wY3NfdGJsX251bSk7Cj4gKwlxY29tX3FtcF9waHlfcGNpZV9jb25maWd1cmUocGNz
LCBjZmctPnJlZ3MsIHFwaHktPnNlYy0+cGNzX3RibCwgcXBoeS0+c2VjLT5wY3NfdGJsX251bSk7
Cj4gIAo+ICAJcWNvbV9xbXBfcGh5X3BjaWVfY29uZmlndXJlKHBjc19taXNjLCBjZmctPnJlZ3Ms
IGNmZy0+cHJpLnBjc19taXNjX3RibCwKPiAgCQkJICAgICAgIGNmZy0+cHJpLnBjc19taXNjX3Ri
bF9udW0pOwo+IC0JcWNvbV9xbXBfcGh5X3BjaWVfY29uZmlndXJlKHBjc19taXNjLCBjZmctPnJl
Z3MsIGNmZy0+c2VjLnBjc19taXNjX3RibCwKPiAtCQkJICAgICAgIGNmZy0+c2VjLnBjc19taXNj
X3RibF9udW0pOwo+ICsJcWNvbV9xbXBfcGh5X3BjaWVfY29uZmlndXJlKHBjc19taXNjLCBjZmct
PnJlZ3MsIHFwaHktPnNlYy0+cGNzX21pc2NfdGJsLAo+ICsJCQkgICAgICAgcXBoeS0+c2VjLT5w
Y3NfbWlzY190YmxfbnVtKTsKPiAgCj4gIAkvKgo+ICAJICogUHVsbCBvdXQgUEhZIGZyb20gUE9X
RVIgRE9XTiBzdGF0ZS4KPiBAQCAtMjE4Nyw2ICsyMTkzLDExIEBAIHN0YXRpYyBpbnQgcWNvbV9x
bXBfcGh5X3BjaWVfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LAo+ICAKPiAgCXFwaHktPm1vZGUg
PSBtb2RlOwo+ICAKPiArCWlmIChzdWJtb2RlKQo+ICsJCXFwaHktPnNlYyA9ICZxcGh5LT5jZmct
PnNlY19lcDsKPiArCWVsc2UKPiArCQlxcGh5LT5zZWMgPSAmcXBoeS0+Y2ZnLT5zZWNfcmM7Cj4g
Kwo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLS0gCj4gMi4zNS4xCj4gCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
