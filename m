Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80973C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dARKBIwLQM5r2yZXQQhhcruhcWlvJMSb2yCkwlFJDv8=; b=haH6ZNRtuuIA9A
	j7doBzV9x8CqeZvj+l7IpHCHnutMHkfOtlzbeK64JLLCMGND5G0I9MKgZTKCfUAq601mtYoc3WWgA
	BmaL/pD5Ip2lVBOtmNZ6Kbjo3WGe5HyMLBgxUaCxqyg8Jg3kD+X5O+QqREkZqLnSLtjARAUEygynr
	6q00jqYNfZny/2CyKcnc9oJUOHUMw5wDFz2O3msd2t4slFw6R4Bptmf1qW7q4A6PYVF2zRxubqaOS
	z63nhNOg9PZZlGbHGQO2O6lKv/pQnmnyXWhp6fH9JZ2ATcQRU/L6xhxQTremXVsCeBT9Q8lyEq/VD
	dUAS1N7U05ZLqc9uXrJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPlc-00000004650-0E91;
	Thu, 01 Aug 2024 06:58:28 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPlZ-00000004633-3iaW
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:58:27 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5c691c6788eso3456397eaf.2
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 23:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722495504; x=1723100304; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b80CEDH1AWD7dRM9ZkzDS0U0qYNdNBA0wVmoesZ+ivU=;
        b=tx85wIekFRO6wDhZCUJr9YbsB8Eld+NClX7RFti6xXAwi3n8Xl+C8OCQXNh5gHp5lp
         Eu6DIVcl8x7Ad0BMFXOQplgNIr0yzkJZfWb9oUNy+k9BBB7TVrlommiKyUr3cXVgZs4K
         C4C5Ld46/BEsHmWiQOM61y4IKXn105qa9qcpaqYkSSEeOxki17FrwiOCeroDP6K1T7/r
         PapqYB1ASrIqXMXdXPpijFnRVqTRjtg99Y4D2xNkK4aHx4eMd9/t1Bxu2xdZTZaiU7vZ
         Vi67LlEWibW+gxPXDilIiZWwMvaTD4HF9NCpzEa7TOWpCUSV8SlzJcGUtCShipiHZLMP
         wUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722495504; x=1723100304;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b80CEDH1AWD7dRM9ZkzDS0U0qYNdNBA0wVmoesZ+ivU=;
        b=E4bfpZYhMMQwW2LodlM1PU13CTYI9+6Zvy6tlD4i+jRLI653ZshJvZPET8A3NDKH7L
         ocWJBb+2RYVBcQC/bjInTLYpD6pKNb4wqspgEWBRgHn5Unv12lnyp0U1YYWKOaLP1wHN
         b9WW+l+Dm5pEb9FFCqnuvIplYbpTkVWG/31ng3OmPwzR8PpVoR/ET3qG5w++vdknB498
         WINb7dGSBnaKLRfss+MwluAw//2GcjRpTrUGPg2OQWEbxjm2/4rhZL9mboi87oAMdVoO
         ej8uY7GmMXVCUVk7GIT0/MIHR2nI5ospSzfmTnVw5Zq9vWyusEr1N2sID2bUG7q9j6pC
         H71w==
X-Forwarded-Encrypted: i=1; AJvYcCVOCvdhgCYuzjh7N7lwuR/0OMjG2BMvQLYfGWq+QVyoGkNzHb7D7kei5TVQ9W+XwWTEUOuySFAVvPi3e7gCt3vrV2IFKnuAV4Iwcnr8pA==
X-Gm-Message-State: AOJu0Yzcc9bUS2PbG/mUzjfj3dOyknZI5kzJ0S4bww//PqzAY9o5Zqx1
	KYVmOlhHrB0ISGjRTOVx1ArolCHMG1VsIOxhUGO4+tvF71eh2xS9GszXyEK+yQ==
X-Google-Smtp-Source: AGHT+IEAZToGJkTgcxaM2rLESmbJojcIECRtbj2ajP/I4aD7kMYijhp0v1pTxUNit5zec6JnLqQU5w==
X-Received: by 2002:a05:6870:8a22:b0:25e:b999:d24 with SMTP id 586e51a60fabf-26879d81d10mr1705185fac.0.1722495504609;
        Wed, 31 Jul 2024 23:58:24 -0700 (PDT)
Received: from thinkpad ([120.60.66.23])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81234dsm10912944b3a.115.2024.07.31.23.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 23:58:24 -0700 (PDT)
Date: Thu, 1 Aug 2024 12:28:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <20240801065814.GA3705@thinkpad>
References: <20240731115637.90351-1-manivannan.sadhasivam@linaro.org>
 <nkfrtuxv4ueow66bnazyb4ul3pz3z3wo6zsptu6wnw7hflxerx@pkwn7sx6gfqi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nkfrtuxv4ueow66bnazyb4ul3pz3z3wo6zsptu6wnw7hflxerx@pkwn7sx6gfqi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235826_125843_A461984B 
X-CRM114-Status: GOOD (  24.43  )
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

T24gV2VkLCBKdWwgMzEsIDIwMjQgYXQgMDk6MjY6MjdQTSAtMDUwMCwgQmpvcm4gQW5kZXJzc29u
IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDMxLCAyMDI0IGF0IDA1OjI2OjM3UE0gR01ULCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBUaGVzZSByZWdpc3RlciBwcmludHMgYXJlIHVzZWZ1
bCB0byB2YWxpZGF0ZSB0aGUgaW5pdCBzZXF1ZW5jZSBhZ2FpbnN0IHRoZQo+ID4gUWNvbSBpbnRl
cm5hbCBkb2N1bWVudGF0aW9uIGFuZCBhbHNvIHRvIHNoYXJlIHdpdGggdGhlIFFjb20gaHcgZW5n
aW5lZXJzIHRvCj4gPiBkZWJ1ZyBpc3N1ZXMgcmVsYXRlZCB0byBQSFkuCj4gPiAKPiAKPiBJJ3Zl
IHdyaXR0ZW4gdGhpcyBwYXRjaCBldmVyeSB0aW1lIEkndmUgdG91Y2hlZCBvbmUgb2YgdGhlc2Ug
UEhZcywgc28gSQo+IGNlcnRhaW5seSBsaWtlIHRoaXMuCj4gCgpNZSB0b28gOikgSSd2ZSBiZWVu
IGNhcnJ5aW5nIHRoaXMgYXMgYW4gb3V0LW9mLXRyZWUgcGF0Y2ggZXZlciBzaW5jZSBJIHN0YXJ0
ZWQKYnJpbmdpbmcgdXAgUWNvbSBjaGlwc2V0cy4KCj4gPiBTYW1wbGUgZGVidWcgcHJpbnRzOgo+
ID4gCj4gPiBRTVAgUEhZOiBXcml0aW5nIFJlZzogUVNFUkRFU19WNV9DT01fU1lTQ0xLX0VOX1NF
TCBPZmZzZXQ6IDB4MDA5NCBWYWw6IDB4ZDkKPiA+IFFNUCBQSFk6IFdyaXRpbmcgUmVnOiBRU0VS
REVTX1Y1X0NPTV9IU0NMS19TRUwgT2Zmc2V0OiAweDAxNTggVmFsOiAweDExCj4gCj4gVGhhdCBz
YWlkLCB3aXRoIG11bHRpcGxlIGluc3RhbmNlcyBvZiBQSFlzIGJlaW5nIGNvbmZpZ3VyZWQgYXQg
YWJvdXQgdGhlCj4gc2FtZSB0aW1lIGl0IHNlZW1zIHRoaXMgd291bGQgYmVuZWZpdCBncmVhdGx5
IGZyb20gc29tZXRoaW5nIGlkZW50aWZ5aW5nCj4gd2hpY2ggUEhZIGluc3RhbmNlIHRoZSB3cml0
ZSByZWxhdGVzIHRvPwo+IAo+IGRldl9kYmcoKSB3b3VsZCBjZXJ0YWlubHkgYmUgbmljZS4uLgo+
IAoKSSB1bmRlcnN0b29kIHRoYXQgYWZ0ZXIgY29tbWVudHMgZnJvbSBEbWl0cnkuIFNvIHY0IGhh
cyB0aGlzOgoKcWNvbS1xbXAtcGNpZS1waHkgMWMwZTAwMC5waHk6IFdyaXRpbmcgUmVnOiBRU0VS
REVTX1Y1X0NPTV9TWVNDTEtfRU5fU0VMIE9mZnNldDogMHgwMDk0IFZhbDogMHhkOQoKLSBNYW5p
Cgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAKPiA+IENoYW5nZXMgaW4gdjI6
Cj4gPiAKPiA+ICogTW9kaWZlZCB0aGUgZGVidWcgcHJpbnQgdG8gaW5jbHVkZSByZWcgb2Zmc2V0
Cj4gPiAKPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tbW9uLmggfCA1
ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbW1vbi5oIGIvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbW1vbi5oCj4gPiBpbmRleCA3OTkzODQy
MTA1MDkuLjQwYmViNDEzMzI4ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1jb21tb24uaAo+ID4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLWNvbW1vbi5oCj4gPiBAQCAtOSw2ICs5LDcgQEAKPiA+ICBzdHJ1Y3QgcW1wX3Bo
eV9pbml0X3RibCB7Cj4gPiAgCXVuc2lnbmVkIGludCBvZmZzZXQ7Cj4gPiAgCXVuc2lnbmVkIGlu
dCB2YWw7Cj4gPiArCWNoYXIgKm5hbWU7Cj4gCj4gY29uc3Q/Cj4gCj4gUmVnYXJkcywKPiBCam9y
bgo+IAo+ID4gIAkvKgo+ID4gIAkgKiBtYXNrIG9mIGxhbmVzIGZvciB3aGljaCB0aGlzIHJlZ2lz
dGVyIGlzIHdyaXR0ZW4KPiA+ICAJICogZm9yIGNhc2VzIHdoZW4gc2Vjb25kIGxhbmUgbmVlZHMg
ZGlmZmVyZW50IHZhbHVlcwo+ID4gQEAgLTIwLDYgKzIxLDcgQEAgc3RydWN0IHFtcF9waHlfaW5p
dF90Ymwgewo+ID4gIAl7CQkJCVwKPiA+ICAJCS5vZmZzZXQgPSBvLAkJXAo+ID4gIAkJLnZhbCA9
IHYsCQlcCj4gPiArCQkubmFtZSA9ICNvLAkJXAo+ID4gIAkJLmxhbmVfbWFzayA9IDB4ZmYsCVwK
PiA+ICAJfQo+ID4gIAo+ID4gQEAgLTI3LDYgKzI5LDcgQEAgc3RydWN0IHFtcF9waHlfaW5pdF90
Ymwgewo+ID4gIAl7CQkJCVwKPiA+ICAJCS5vZmZzZXQgPSBvLAkJXAo+ID4gIAkJLnZhbCA9IHYs
CQlcCj4gPiArCQkubmFtZSA9ICNvLAkJXAo+ID4gIAkJLmxhbmVfbWFzayA9IGwsCQlcCj4gPiAg
CX0KPiA+ICAKPiA+IEBAIC00NSw2ICs0OCw4IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBxbXBfY29u
ZmlndXJlX2xhbmUodm9pZCBfX2lvbWVtICpiYXNlLAo+ID4gIAkJaWYgKCEodC0+bGFuZV9tYXNr
ICYgbGFuZV9tYXNrKSkKPiA+ICAJCQljb250aW51ZTsKPiA+ICAKPiA+ICsJCXByX2RlYnVnKCJR
TVAgUEhZOiBXcml0aW5nIFJlZzogJXMgT2Zmc2V0OiAweCUwNHggVmFsOiAweCUwMnhcbiIsCj4g
PiArCQkJdC0+bmFtZSwgdC0+b2Zmc2V0LCB0LT52YWwpOwo+ID4gIAkJd3JpdGVsKHQtPnZhbCwg
YmFzZSArIHQtPm9mZnNldCk7Cj4gPiAgCX0KPiA+ICB9Cj4gPiAtLSAKPiA+IDIuMjUuMQo+ID4g
Cj4gPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
