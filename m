Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B6FC46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 08:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUMUTn0rRgTdFduW9FDq69RHFIKEZi+mYMHsL0SkN2o=; b=rB5kQf84oQROOL
	TAwLMPAQfYFLxqqucpsc3yEJ1ESpKRhs83r3Msz7dzqCzXhxSf7oh8m86LkISpWrCoCDxtcj8+Fkg
	seu1CS0gAPdBDKr7ZfLR0Bq5yATTLKwX0jzy36zd8IumQ96jjKEhW3MEyxVSMTIkTiZ42fE1YfKRs
	eiMgRWcjcFYm23eZIWeRHyLaXHGefVUNjy+srtpd7OE84rg99aK2G4dRW+yr3YQuVpoGI9jsjiU4N
	re9snz1og/DWDeaA8tJ/so5yklWWyEajERadWwd8+Owjn5DeVeIYdxpLIjOMRTb+2b/oVAqdY1rEh
	SG0jbLLMEcFkgExdjrXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYhk-0021SE-1u;
	Wed, 24 Jan 2024 08:33:52 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYhg-0021RW-1H
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 08:33:50 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d720c7fc04so29250335ad.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 00:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706085225; x=1706690025; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vPFRER/gkE3zm2pQ/KTOV3I0e5WTpUXpU3iwr5G1xwY=;
        b=Q1fhTHsZ//9F5vk7UqrAX95DtMSE2A1jTdAYbVVW96Vcw2+WEwWCpkIrU71YKNyzfa
         Fk3p0icIYGqLCk6zVfS3OyTzJJcUqJJmO4PQZH2Uwl6vDdpOLGeAT2DQyUGHe23cOZ8H
         SmowZ87HgghckZcosubQcsTtlvDoEdJDFs7GhhMxbmijx1WJ+KLaVh/38nzUXXwS9tpE
         0UNnNIzQbdCAr68UVrzBBYlOl0e1YlTmY1EhamI3roDd7DhSLQJU9jAbWTE/BM9pl1cD
         yYlXU2YhCvc22+XJlV2SecMPW+6K5UfboTkDFyC3CtTxOhskgZU8Dgj4KzC2xL/u6rCG
         HyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706085225; x=1706690025;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vPFRER/gkE3zm2pQ/KTOV3I0e5WTpUXpU3iwr5G1xwY=;
        b=t9l1w/1iUcdITgl11qhamXKKfIyLkolBlupIvkoACUrj+iIGj5cGNKDjNPskFXBSa4
         ivkWHgvoQ0fRw2SUMtlRPouqQgdkXsd/c0R7e+qZkL/goew/1qESc5eFIUCpApqwIJi8
         9GiyVyf6ADkCIPj15PYmnLab6ic3T0N/Ubaz3cKEoEIqhCklpv0IVP/lP1MMs6lfRvzK
         y7hLmffS/OS50M4OINWFzHjrCG5YldaYSfKGMNmJuzM/htySKNYAZ0ZMABSoE97RICu5
         /UhK5xHPe8s0YZPP3urzb73btyQnPqWkoA9atjT0pGGIkDvI4+K/whhQQoqKXD/zDwYA
         UpCA==
X-Gm-Message-State: AOJu0Yy7KpdhbaZ5HUiob6uJw9yZOhMh3e0wHIxA55nFiQXHBLZejeo1
	HlLNYZzeIoPEzWnRbo14RcO98sGzzJkcaMDayAXnRtu56wHgdUVlxU9cs+Bsdw==
X-Google-Smtp-Source: AGHT+IHAMGkA6E3jdrT6it59P0NjlIeY0P9GAB/kSyKZfIcGyYzIgZ45Z1bjWpdQtj9CnzDYvvwFFg==
X-Received: by 2002:a17:902:da84:b0:1d6:f2c0:3c00 with SMTP id j4-20020a170902da8400b001d6f2c03c00mr436044plx.16.1706085225158;
        Wed, 24 Jan 2024 00:33:45 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id r19-20020a170903015300b001d741effb7dsm5373688plc.270.2024.01.24.00.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:33:44 -0800 (PST)
Date: Wed, 24 Jan 2024 14:03:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Subject: Re: [PATCH V1 2/2] phy: qcom: Refactor phy_power_on and
 phy_calibrate callbacks
Message-ID: <20240124083336.GB4906@thinkpad>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
 <20240112153348.2778-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112153348.2778-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_003348_695271_310B955B 
X-CRM114-Status: GOOD (  26.84  )
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

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMDk6MDM6NDhQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gQ29tbWl0IDA1MjU1M2FmNmEzMSAoInVmcy9waHk6IHFjb206IFJlZmFjdG9yIHRvIHVz
ZSBwaHlfaW5pdCBjYWxsIikKPiBwdXRzIGVuYWJsaW5nIHJlZ3VsYXRvcnMgJiBjbGtzLCBjYWxp
YnJhdGluZyBVRlMgUEhZLCBzdGFydGluZyBzZXJkZXMKPiBhbmQgcG9sbGluZyBQQ1MgcmVhZHkg
c3RhdHVzIGludG8gcGh5X3Bvd2VyX29uLgo+IAo+IEluIEN1cnJlbnQgY29kZSByZWd1bGF0b3Jz
IGVuYWJsZSwgY2xrcyBlbmFibGUsIGNhbGlicmF0aW5nIFVGUyBQSFksCj4gc3RhcnRfc2VyZGVz
IGFuZCBwb2xsaW5nIFBDU19yZWFkeV9zdGF0dXMgYXJlIHBhcnQgb2YgcGh5X3Bvd2VyX29uLgo+
IAo+IFVGUyBQSFkgcmVnaXN0ZXJzIGFyZSByZXRhaW5lZCBhZnRlciBwb3dlciBjb2xsYXBzZSwg
bWVhbmluZyBjYWxpYnJhdGluZwo+IFVGUyBQSFksIHN0YXJ0X3NlcmRlcyBhbmQgcG9sbGluZyBQ
Q1NfcmVhZHlfc3RhdHVzIGNhbiBiZSBkb25lIG9ubHkgd2hlbgo+IGhiYSBpcyBwb3dlcmVkX29u
LCBhbmQgbm90IG5lZWRlZCBldmVyeSB0aW1lIHdoZW4gcGh5X3Bvd2VyX29uIGlzIGNhbGxlZAo+
IGR1cmluZyByZXN1bWUuIEhlbmNlIGtlZXAgdGhlIGNvZGUgd2hpY2ggZW5hYmxlcyBQSFkncyBy
ZWd1bGF0b3JzICYgY2xrcwo+IGluIHBoeV9wb3dlcl9vbiBhbmQgbW92ZSB0aGUgcmVzdCBzdGVw
cyBpbnRvIHBoeV9jYWxpYnJhdGUgZnVuY3Rpb24uCj4gCj4gUmVmYWN0b3IgdGhlIGNvZGUgdG8g
ZW5hYmxlIFBIWSByZWd1bGF0b3JzICYgY2xrcyBpbiBwaHlfcG93ZXJfb24gYW5kCj4gbW92ZSBy
ZXN0IG9mIHRoZSBjb2RlIHRvIHBoeV9jYWxpYnJhdGUgZnVuY3Rpb24uCj4gCgpUaGlzIHBhdGNo
IHNob3VsZCBjb21lIGJlZm9yZSBVRlMgcGF0Y2ggc2luY2UgeW91IGFyZSBpbnRyb2R1Y2luZyB0
aGUKY2FsaWJyYXRlKCkgY2FsbGJhY2sgaGVyZSBvbmx5LgoKPiBDby1kZXZlbG9wZWQtYnk6IENh
biBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDYW4gR3VvIDxx
dWljX2NhbmdAcXVpY2luYy5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBOYXZlZW4gS3VtYXIgR291
ZCBBcmVwYWxsaSA8cXVpY19uYXJlcGFsbEBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBO
YXZlZW4gS3VtYXIgR291ZCBBcmVwYWxsaSA8cXVpY19uYXJlcGFsbEBxdWljaW5jLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgMTgzICsrKysr
KysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwg
MTE2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZz
LmMKPiBpbmRleCAzYzJlNjI1NWUyNmYuLmFlMDIxODczOGIwYiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiArKysgYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBAQCAtMzIsMTQgKzMyLDE1IEBACj4gIC8qIFFQ
SFlfU1dfUkVTRVQgYml0ICovCj4gICNkZWZpbmUgU1dfUkVTRVQJCQkJQklUKDApCj4gIC8qIFFQ
SFlfUE9XRVJfRE9XTl9DT05UUk9MICovCj4gLSNkZWZpbmUgU1dfUFdSRE4JCQkJQklUKDApCj4g
KyNkZWZpbmUgU1dfUFdSVVAJCQkJQklUKDApCj4gKyNkZWZpbmUgU1dfUFdSRE4JCQkJMAoKV2h5
IDA/Cgo+ICAvKiBRUEhZX1NUQVJUX0NPTlRST0wgYml0cyAqLwo+ICAjZGVmaW5lIFNFUkRFU19T
VEFSVAkJCQlCSVQoMCkKPiAgI2RlZmluZSBQQ1NfU1RBUlQJCQkJQklUKDEpCj4gIC8qIFFQSFlf
UENTX1JFQURZX1NUQVRVUyBiaXQgKi8KPiAgI2RlZmluZSBQQ1NfUkVBRFkJCQkJQklUKDApCj4g
Cj4gLSNkZWZpbmUgUEhZX0lOSVRfQ09NUExFVEVfVElNRU9VVAkJMTAwMDAKPiArI2RlZmluZSBQ
SFlfSU5JVF9DT01QTEVURV9USU1FT1VUCQkxMDAwMDAwCgpXaHk/IFRoaXMgaXMgbm90IG1lbnRp
b25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuIElmIGl0IGlzIG5vdCByZWxhdGVkIHRvIHRoaXMK
cmVmYWN0b3JpbmcsIHRoZW4gaXQgc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2ggd2l0aCBqdXN0
aWZpY2F0aW9uLgoKPiAKPiAgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwgewo+ICAJdW5zaWduZWQg
aW50IG9mZnNldDsKPiBAQCAtMTQ2NCw4ICsxNDY1LDI1IEBAIHN0YXRpYyB2b2lkIHFtcF91ZnNf
aW5pdF9yZWdpc3RlcnMoc3RydWN0IHFtcF91ZnMgKnFtcCwgY29uc3Qgc3RydWN0IHFtcF9waHlf
Y2ZnCj4gIAkJcW1wX3Vmc19wY3NfaW5pdChxbXAsICZjZmctPnRibHNfaHNfZzQpOwo+ICB9Cj4g
Cj4gLXN0YXRpYyBpbnQgcW1wX3Vmc19jb21faW5pdChzdHJ1Y3QgcW1wX3VmcyAqcW1wKQo+ICtz
dGF0aWMgaW50IHFtcF91ZnNfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKPiArewo+ICsJc3Ry
dWN0IHFtcF91ZnMgKnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJY29uc3Qgc3RydWN0
IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiArCj4gKwkvKiBQdXQgUEhZIGludG8gUE9X
RVIgRE9XTiBzdGF0ZTogYWN0aXZlIGxvdyAqLwo+ICsJcXBoeV9jbHJiaXRzKHFtcC0+cGNzLCBj
ZmctPnJlZ3NbUVBIWV9QQ1NfUE9XRVJfRE9XTl9DT05UUk9MXSwKPiArCQkJU1dfUFdSRE4pOwo+
ICsKPiArCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKGNmZy0+bnVtX2Nsa3MsIHFtcC0+Y2xr
cyk7Cj4gKwo+ICsJcmVndWxhdG9yX2J1bGtfZGlzYWJsZShjZmctPm51bV92cmVncywgcW1wLT52
cmVncyk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcW1wX3Vmc19w
b3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKPiArCXN0cnVjdCBxbXBfdWZzICpxbXAgPSBw
aHlfZ2V0X2RydmRhdGEocGh5KTsKPiAgCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0g
cW1wLT5jZmc7Cj4gIAl2b2lkIF9faW9tZW0gKnBjcyA9IHFtcC0+cGNzOwo+ICAJaW50IHJldDsK
PiBAQCAtMTQ4MCw4ICsxNDk4LDcgQEAgc3RhdGljIGludCBxbXBfdWZzX2NvbV9pbml0KHN0cnVj
dCBxbXBfdWZzICpxbXApCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX2Rpc2FibGVfcmVndWxh
dG9yczsKPiAKPiAtCXFwaHlfc2V0Yml0cyhwY3MsIGNmZy0+cmVnc1tRUEhZX1BDU19QT1dFUl9E
T1dOX0NPTlRST0xdLCBTV19QV1JETik7Cj4gLQo+ICsJcXBoeV9zZXRiaXRzKHBjcywgY2ZnLT5y
ZWdzW1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0sIFNXX1BXUlVQKTsKCk5ld2xpbmUgcGxl
YXNlLiBBcyBtZW50aW9uZWQgYWJvdmUsIHdoeSBjYW4ndCB5b3UgdXNlIGV4aXN0aW5nIFNXX1BX
UkROIG1hY3JvLgoKPiAgCXJldHVybiAwOwo+IAo+ICBlcnJfZGlzYWJsZV9yZWd1bGF0b3JzOgo+
IEBAIC0xNDkwLDYxICsxNTA3LDcgQEAgc3RhdGljIGludCBxbXBfdWZzX2NvbV9pbml0KHN0cnVj
dCBxbXBfdWZzICpxbXApCj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gCgpbLi4uXQoKPiArc3RhdGlj
IGludCBxbXBfdWZzX2dldF9waHlfcmVzZXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKPiArewo+ICsJ
Y29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiArCWludCByZXQ7Cj4g
Kwo+ICsJaWYgKCFjZmctPm5vX3Bjc19zd19yZXNldCkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwkv
Kgo+ICsJICogR2V0IFVGUyByZXNldCwgd2hpY2ggaXMgZGVsYXllZCB1bnRpbCBub3cgdG8gYXZv
aWQgYQo+ICsJICogY2lyY3VsYXIgZGVwZW5kZW5jeSB3aGVyZSBVRlMgbmVlZHMgaXRzIFBIWSwg
YnV0IHRoZSBQSFkKPiArCSAqIG5lZWRzIHRoaXMgVUZTIHJlc2V0Lgo+ICsJICovCj4gKwo+ICsJ
cW1wLT51ZnNfcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShxbXAtPmRl
diwKPiArCQkJCQkJCSAgInVmc3BoeSIpOwoKWW91IGhhdmUgbW92ZWQgdGhpcyB0byBwcm9iZSBm
cm9tIHBvd2VyX29uKCkgd2l0aG91dCBhbnkganVzdGlmaWNhdGlvbi4gV2hhdAphYm91dCB0aGUg
Y2lyY3VsYXIgZGVwZW5kZW5jeSBtZW50aW9uZWQgaW4gdGhlIGNvbW1lbnQuCgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
