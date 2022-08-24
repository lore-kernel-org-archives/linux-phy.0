Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5130C00140
	for <linux-phy@archiver.kernel.org>; Wed, 24 Aug 2022 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKCruns30IsekOUn4lFw+jD4wtHz+VzRVLoGRjZJYAI=; b=Eyl9IiSRFlc64g
	tumHj6G0TuG0ICEULcVml7+nOxD9UB58aR9XzK4UITWZ81HZNRNW5lo/5XpVfZdOLbJ+RQMYpJaOj
	VsDD37kA2cUkgUIC1oCuq/3yjiSsflXYU9Xcg35j0EPuKymkWVk42xFPCb3vv+HSo8wj21V+TBOJF
	BBZg5WtNIDJgK9F1oGrAJw3Rczi2N9nByu+1ZKNr5Yx+8DhfYGWFE4mxM7gZjd9PQ3Se+U/GVZpIK
	IW13L0VNBxnT3tXhM9HkoPEyMU5LoDAaE+DfIYRFinxfWbm1Wcq/Dz9ddFhD0Nd94qiv8WaoizKGw
	SpnltoyrnjkXAIYwuONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQrok-00Dp4D-A0; Wed, 24 Aug 2022 14:57:18 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQroh-00Dp1L-Nw
	for linux-phy@lists.infradead.org; Wed, 24 Aug 2022 14:57:17 +0000
Received: by mail-pf1-x42b.google.com with SMTP id y141so16725565pfb.7
        for <linux-phy@lists.infradead.org>; Wed, 24 Aug 2022 07:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=gM8GDsnSJOMAUUVJW4tlaybgNtw+UEw7QquIVT86FWw=;
        b=v/UJZUPVd4nDpRPhfiY1BBHYgSiRAyUwSShdy2Y6czy8s8BTWdM7z146eCVCC2Rb2u
         sw6mK0mOFMAzD9JnVP2jDy3hjORVSb5/kmH5h0mndFSr9cTNXQysQ+KJym3TrD32PfK2
         +4x3uldeAdEN9rc5SovE7poXTcKV/8T4SnEWnLviqAfsINw/xbKDZ2yfDLO+l5Pzrh9G
         +VOML6Q04aY/JHoRuL7t5fMy8tKHe+tyBzmxL1G/fOHKyGq7eFkl/mrKCr3J2amnKMaZ
         gvFkhEHmaSStHUyKLL5q1ASztFgqtDb/cPK7VeCpuqjyKVsfdnSQcQq0XNb5wypnjugx
         G1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=gM8GDsnSJOMAUUVJW4tlaybgNtw+UEw7QquIVT86FWw=;
        b=fMMM26wQgPzYd8zMk0VhKIdNOXUEzDaJYy+SeeJ/hV3lWnGvoUZEjz0LBc0dpqChig
         3JD3tLP9BxJ6GBh69GK9vhyK1hBLp4Rg6fhfWzvX8U1mq3TXovzTCf6fmXpcLDvOK/tR
         IfnQrxE3CcSf3TDzmL5yFqRURSQaKkODDSS4XbZ4EUetLLYcAx/b20o7A4R+Q1t9BXZ4
         qiLhEbF/nhbEJ9Fxwz10oVWQuyMaN2v6km4xkUt4z6BiVFcO6M8MqaS0wFOq5gBYIMNn
         dk1yN4GDCNDXupa4VwEs+xV+SZYcAu3/XTLucdFQx9sIP4kB3TiAo/1QxQPAgu9BCviw
         pdSg==
X-Gm-Message-State: ACgBeo3GZjZgF48OlVBinvCD9d9NsCKZVK60FoIfj93KK3mZl+Ub5y8u
	N8B2OLK0f1xrByVWmzS7bMzt
X-Google-Smtp-Source: AA6agR7Ib04+xtPrgNHPwibV1BLIrGmMzfP42SM9GUxtmSCoMT+DDemE1rbAJPOmPKHjsfv+ijTy1g==
X-Received: by 2002:a63:e102:0:b0:41b:3901:990e with SMTP id z2-20020a63e102000000b0041b3901990emr24292701pgh.107.1661353032690;
        Wed, 24 Aug 2022 07:57:12 -0700 (PDT)
Received: from thinkpad ([117.207.24.28])
        by smtp.gmail.com with ESMTPSA id j13-20020a170902da8d00b0017284f4a10esm5588128plx.227.2022.08.24.07.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 07:57:12 -0700 (PDT)
Date: Wed, 24 Aug 2022 20:27:02 +0530
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
Subject: Re: [PATCH v1 2/4] phy: qcom-qmp-pcie: support separate tables for
 EP mode
Message-ID: <20220824145702.GE4767@thinkpad>
References: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
 <20220726203401.595934-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220726203401.595934-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_075715_849501_920C385A 
X-CRM114-Status: GOOD (  25.38  )
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

T24gVHVlLCBKdWwgMjYsIDIwMjIgYXQgMTE6MzM6NTlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBUaGUgUENJZSBRTVAgUEhZIHJlcXVpcmVzIGRpZmZlcmVudCBwcm9ncmFtbWlu
ZyBzZXF1ZW5jZXMgd2hlbiBiZWluZwo+IHVzZWQgZm9yIHRoZSBSQyAoUm9vdCBDb21wbGV4KSBv
ciBmb3IgdGhlIEVQIChFbmQgUG9pbnQpIG1vZGVzLiBBbGxvdwo+IHNlbGVjdGluZyB0aGUgc3Vi
bW9kZSBhbmQgdGh1cyBzZWxlY3RpbmcgYSBzZXQgb2YgUEhZIHByb2dyYW1taW5nCj4gdGFibGVz
Lgo+IAoKSSB0aGluayB5b3Ugc2hvdWxkIG1lbnRpb24gd2h5IHNlY29uZGFyeSB0YWJsZSBpcyB1
c2VkIGZvciBkaWZmZXJlbnRpYXRpbmcKYmV0d2VlbiBSQyBhbmQgRVAgbW9kZS4gU29tZXRoaW5n
IGxpa2UsCgpTaW5jZSB0aGUgUkMgYW5kIEVQIG1vZGVzIHNoYXJlIGNvbW1vbiBzb21lIGNvbW1v
biBpbml0IHNlcXVlbmNlLCB0aGUgY29tbW9uCnNlcXVlbmNlIGlzIGtlcHQgaW4gdGhlIHByaW1h
cnkgdGFibGUgYW5kIHRoZSBkaWZmZXJlbnQgb25lcyB3ZXJlIGluIHNlY29uZGFyeS4KCj4gU2ln
bmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3Jn
Pgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIHwgNDEg
KysrKysrKysrKysrKysrKy0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25z
KCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1wY2llLmMKPiBpbmRleCBlNjI3MmJkM2Q3MzUuLmFmMzU3N2E1ZDdlNCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+IEBAIC0xMzY5LDEwICsxMzY5LDE0
IEBAIHN0cnVjdCBxbXBfcGh5X2NmZyB7Cj4gIAkvKiBJbml0IHNlcXVlbmNlIGZvciBQSFkgYmxv
Y2tzIC0gc2VyZGVzLCB0eCwgcngsIHBjcyAqLwo+ICAJc3RydWN0IHFtcF9waHlfY2ZnX3RhYmxl
cyBwcmltYXJ5Owo+ICAJLyoKPiAtCSAqIEluaXQgc2VxdWVuY2UgZm9yIFBIWSBibG9ja3MsIHBy
b3ZpZGluZyBhZGRpdGlvbmFsIHJlZ2lzdGVyCj4gLQkgKiBwcm9ncmFtbWluZy4gVW5sZXNzIHJl
cXVpcmVkIGl0IGNhbiBiZSBsZWZ0IG9taXR0ZWQuCj4gKwkgKiBJbml0IHNlcXVlbmNlcyBmb3Ig
UEhZIGJsb2NrcywgcHJvdmlkaW5nIGFkZGl0aW9uYWwgcmVnaXN0ZXIKPiArCSAqIHByb2dyYW1t
aW5nLiBUaGV5IGFyZSB1c2VkIGZvciBwcm92aWRpbmcgc2VwYXJhdGUgc2VxdWVuY2VzIGZvciB0
aGUKPiArCSAqIFJvb3QgQ29tcGxleCBhbmQgZm9yIHRoZSBFbmQgUG9pbnQgdXNlY2FzZXMuCj4g
KwkgKgo+ICsJICogSWYgRVAgbW9kZSBpcyBub3Qgc3VwcG9ydGVkLCBib3RoIHRhYmxlcyBjYW4g
YmUgbGVmdCBlbXB0eS4KPiAgCSAqLwo+IC0Jc3RydWN0IHFtcF9waHlfY2ZnX3RhYmxlcyBzZWNv
bmRhcnk7Cj4gKwlzdHJ1Y3QgcW1wX3BoeV9jZmdfdGFibGVzIHNlY29uZGFyeV9yYzsgLyogZm9y
IHRoZSBSQyBvbmx5ICovCj4gKwlzdHJ1Y3QgcW1wX3BoeV9jZmdfdGFibGVzIHNlY29uZGFyeV9l
cDsgLyogZm9yIHRoZSBFUCBvbmx5ICovCj4gIAo+ICAJLyogY2xvY2sgaWRzIHRvIGJlIHJlcXVl
c3RlZCAqLwo+ICAJY29uc3QgY2hhciAqIGNvbnN0ICpjbGtfbGlzdDsKPiBAQCAtMTQyMiw2ICsx
NDI2LDcgQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiAgICogQGluZGV4OiBsYW5lIGluZGV4Cj4g
ICAqIEBxbXA6IFFNUCBwaHkgdG8gd2hpY2ggdGhpcyBsYW5lIGJlbG9uZ3MKPiAgICogQG1vZGU6
IGN1cnJlbnQgUEhZIG1vZGUKPiArICogQHNlY29uZGFyeTogY3VycmVudGx5IHNlbGVjdGVkIFBI
WSBzZWNvbmRhcnkgaW5pdCB0YWJsZSBzZXQKPiAgICovCj4gIHN0cnVjdCBxbXBfcGh5IHsKPiAg
CXN0cnVjdCBwaHkgKnBoeTsKPiBAQCAtMTQzNCw2ICsxNDM5LDcgQEAgc3RydWN0IHFtcF9waHkg
ewo+ICAJdm9pZCBfX2lvbWVtICpyeDI7Cj4gIAl2b2lkIF9faW9tZW0gKnBjc19taXNjOwo+ICAJ
c3RydWN0IGNsayAqcGlwZV9jbGs7Cj4gKwljb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGFibGVz
ICpzZWNvbmRhcnk7Cj4gIAl1bnNpZ25lZCBpbnQgaW5kZXg7Cj4gIAlzdHJ1Y3QgcWNvbV9xbXAg
KnFtcDsKPiAgCWVudW0gcGh5X21vZGUgbW9kZTsKPiBAQCAtMTY4Nyw3ICsxNjkzLDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTgyNTBfcW1wX2dlbjN4MV9wY2llcGh5X2Nm
ZyA9IHsKPiAgCS5wY3NfbWlzY190YmwJCT0gc204MjUwX3FtcF9wY2llX3Bjc19taXNjX3RibCwK
PiAgCS5wY3NfbWlzY190YmxfbnVtCT0gQVJSQVlfU0laRShzbTgyNTBfcW1wX3BjaWVfcGNzX21p
c2NfdGJsKSwKPiAgCX0sCj4gLQkuc2Vjb25kYXJ5ID0gewo+ICsJLnNlY29uZGFyeV9yYyA9IHsK
PiAgCS5zZXJkZXNfdGJsCQk9IHNtODI1MF9xbXBfZ2VuM3gxX3BjaWVfc2VyZGVzX3RibCwKPiAg
CS5zZXJkZXNfdGJsX251bQkJPSBBUlJBWV9TSVpFKHNtODI1MF9xbXBfZ2VuM3gxX3BjaWVfc2Vy
ZGVzX3RibCksCj4gIAkucnhfdGJsCQkJPSBzbTgyNTBfcW1wX2dlbjN4MV9wY2llX3J4X3RibCwK
PiBAQCAtMTczMCw3ICsxNzM2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBz
bTgyNTBfcW1wX2dlbjN4Ml9wY2llcGh5X2NmZyA9IHsKPiAgCS5wY3NfbWlzY190YmwJCT0gc204
MjUwX3FtcF9wY2llX3Bjc19taXNjX3RibCwKPiAgCS5wY3NfbWlzY190YmxfbnVtCT0gQVJSQVlf
U0laRShzbTgyNTBfcW1wX3BjaWVfcGNzX21pc2NfdGJsKSwKPiAgCX0sCj4gLQkuc2Vjb25kYXJ5
ID0gewo+ICsJLnNlY29uZGFyeV9yYyA9IHsKPiAgCS50eF90YmwJCQk9IHNtODI1MF9xbXBfZ2Vu
M3gyX3BjaWVfdHhfdGJsLAo+ICAJLnR4X3RibF9udW0JCT0gQVJSQVlfU0laRShzbTgyNTBfcW1w
X2dlbjN4Ml9wY2llX3R4X3RibCksCj4gIAkucnhfdGJsCQkJPSBzbTgyNTBfcW1wX2dlbjN4Ml9w
Y2llX3J4X3RibCwKPiBAQCAtMTk1NSw3ICsxOTYxLDcgQEAgc3RhdGljIGludCBxY29tX3FtcF9w
aHlfcGNpZV9zZXJkZXNfaW5pdChzdHJ1Y3QgcW1wX3BoeSAqcXBoeSkKPiAgCXZvaWQgX19pb21l
bSAqc2VyZGVzID0gcXBoeS0+c2VyZGVzOwo+ICAKPiAgCXFjb21fcW1wX3BoeV9wY2llX2NvbmZp
Z3VyZShzZXJkZXMsIGNmZy0+cmVncywgY2ZnLT5wcmltYXJ5LnNlcmRlc190YmwsIGNmZy0+cHJp
bWFyeS5zZXJkZXNfdGJsX251bSk7Cj4gLQlxY29tX3FtcF9waHlfcGNpZV9jb25maWd1cmUoc2Vy
ZGVzLCBjZmctPnJlZ3MsIGNmZy0+c2Vjb25kYXJ5LnNlcmRlc190YmwsIGNmZy0+c2Vjb25kYXJ5
LnNlcmRlc190YmxfbnVtKTsKPiArCXFjb21fcW1wX3BoeV9wY2llX2NvbmZpZ3VyZShzZXJkZXMs
IGNmZy0+cmVncywgcXBoeS0+c2Vjb25kYXJ5LT5zZXJkZXNfdGJsLCBxcGh5LT5zZWNvbmRhcnkt
PnNlcmRlc190YmxfbnVtKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC0yMDQ5LDYgKzIw
NTUsMTAgQEAgc3RhdGljIGludCBxY29tX3FtcF9waHlfcGNpZV9wb3dlcl9vbihzdHJ1Y3QgcGh5
ICpwaHkpCj4gIAl1bnNpZ25lZCBpbnQgbWFzaywgdmFsLCByZWFkeTsKPiAgCWludCByZXQ7Cj4g
IAo+ICsJLyogRGVmYXVsdCB0byBSQyBtb2RlIGlmIG5vIG1vZGUgd2FzIHNlbGVjdGVkICovCgpX
aGlsZSB0aGUgY29tbWVudCBpcyBmaW5lLCBJIHRoaW5rIGl0J2QgYmUgZ29vZCBpZiB5b3UgbWVu
dGlvbiB0aGF0IHRoZSBtb2RlIHdhcwpub3Qgc2VsZWN0ZWQgdXNpbmcgc2V0X21vZGUoKSBBUEku
CgpUaGFua3MsCk1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
