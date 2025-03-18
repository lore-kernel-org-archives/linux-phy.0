Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEF7C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy635liZmRwegDi9pZrmEQxkeZBBR3oCGHKl1g34FFg=; b=KvR7g2aBWNnzq5
	TNUParrkHSm4cDR8CB21PSL4qWP5EvBiKs6FssWhiiDE+z6tH7INJtq2xW3SLAQ1U8HgmKfzu77n0
	/ePKRSwLcVoiuT3H6NmF5dJpI4PtctHMy96xAWpCvjhc2z1RrCgX3FlNtShcv982RUoHdUxnTjGOE
	VXIgq22Gm+bAO4SSwBmufPIyXW/2ekQSUciMfsW46Byo98vTywRVLRgJGZaafqzUT9y1DuO2JCQUl
	s/v4Bh19uf5DGN3IwxwuLMvyGr6cXKCYloE8KqbPz64yqf4AFzpQrawLgOySK4ZKbiPMq5QklN7xb
	FZC/1P63nEy/DF8GUTMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPiT-00000004k91-2nrf;
	Tue, 18 Mar 2025 05:42:17 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPiR-00000004k8X-0Nmx
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:42:16 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-223a7065ff8so63792305ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276534; x=1742881334; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6uTdlYTFmX0lcTy7/Wc30lbOKxSruoFsMBQRPIOcNoU=;
        b=Et2rIJzTQIrS/QWKNmRXlXC0pAJ7jdWIw2BQQVm5ZGxi2V3dUhYjmI7g4MZ1Ndl7ss
         R1O3cYtgIRzpD34Ai/v7adRHcRtCnyfvyuXwMTJGy4tJXHaO7UZp1P4X0NPTPzdBPzEq
         573KfT5+eDlJ4eQVsizgDFRU+ugduHmSiaIHo+puQAekB5NVsrjubF9K2hARbqNmdjYb
         5HXZIDfNUx8Ffj/8Md61GR2Fugl44U7K2xHqhfgC+CGHT39BFoubdOfiOoXi4MkJqev1
         bfOEewI48I9DoXVs3DUByfrkr2UQ1Vs3mAAil6nCvch5ME9D00tlhDHXb8pf4ZoGB0sQ
         XTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276534; x=1742881334;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6uTdlYTFmX0lcTy7/Wc30lbOKxSruoFsMBQRPIOcNoU=;
        b=td9jab/klPCryzaoa9a6mq/XycJ1ZVVqhcpr9tbTM+TcA//blFVpqV2/diIN0nJdMB
         mNAKvGNmaTqnh3D0Cu35bAHEF9sn9xbeULWLmXGk5V7jRdSWm+I3/13BzOvc9YlxDn6h
         Ten/vCmNMDNXZib3LlhEP+OvmKOf50ap9V7M/Oc1AqywbhcNWh7wEnNgyN2kuXNE8d/3
         rrwGXWTTgddyknvLZH3p3LVEny4NeDfyPrf9Qx2/eEGlul+wzVCqdbWpCq6evUUZO7qQ
         PtA75f5OXhHFxjjTnG0W7zUy1Feqam53BuDc8Pu4j4PF4XMSUqWPlTNQzfzqIw8bW4Ze
         eqRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHjpacO4szi3GY9HXFeG+8PUqT940IyzkJz1alsD/J7YWnSGQjOrrl470D7aI6LHwvTgAXhY1pJrk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcuU2wM5LvsI72+yxqqfRbHPpO4Y8BORQ1Wa7X+mrRF7JP2CzP
	7Gxvxo6SJHH65lY9yUxCUhl3wAhsA5bF2hgvOiyJSwvwiJzdi2o0XbcHAEXReA==
X-Gm-Gg: ASbGncveP2COKpwLXMYOBwrmGC1EqdoPw+R+KKtXCSSFol6yaMFNStIOITrFEn4ENRJ
	Zp4kPV8J8st6OwF18i3ln1zMp/W0NojWVei+j+Ew7QT+g+5QmMLjfd1rR/jtAVZITFKr+yEUcGo
	edoN4LdDuHyM12E+LpR6oQXftd14UlueqX77IN9AO6ejb55m9GCLWrw1gMtqeFYCYmJ7P2naQhi
	yFBGPPqSfeG32pchY1Bcn7E4f2TFFzs/GB4NYAeF/Xc5OVfx2ZACrucnPjk42h+uSsvYBy1pRP1
	uPAW+EBjYguyazjncx86XlThci5sXUs0r2eQTAcrccuHAgkLt0tJkRjv
X-Google-Smtp-Source: AGHT+IFOH6UBcZLNFyKi3R0DYxxlEzwZKcLhc9kucytFBc8bEghyTXV17BElYA2xigUTl+vXY+lgbw==
X-Received: by 2002:a17:902:ea06:b0:21f:f3d:d533 with SMTP id d9443c01a7336-225e0a62cb3mr182056615ad.2.1742276534533;
        Mon, 17 Mar 2025 22:42:14 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c688846csm85669065ad.33.2025.03.17.22.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:42:14 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:12:07 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: qcs8300: enable pcie1
Message-ID: <20250318054207.baemwcyu43c54cbq@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-8-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-8-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_224215_134920_AB77B751 
X-CRM114-Status: GOOD (  13.52  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MzE6MDJQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGNvbmZpZ3VyYXRpb25zIGluIGRldmljZXRyZWUgZm9yIFBDSWUxLCBpbmNsdWRp
bmcgcmVnaXN0ZXJzLCBjbG9ja3MsCj4gaW50ZXJydXB0cyBhbmQgcGh5IHNldHRpbmcgc2VxdWVu
Y2UuCj4gCj4gQWNrZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxj
b21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhhbkBxdWlj
aW5jLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vcWNzODMwMC5kdHNpIHwgMTIxICsrKysrKysrKysrKysrKysrKysrKysrKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3FjczgzMDAuZHRzaQo+IGluZGV4IDVkMDU2NDBjNWUyMS4uYzAy
NmI3ZTYzZWFlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4MzAw
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC5kdHNpCj4gQEAg
LTYwMiw3ICs2MDIsNyBAQCBnY2M6IGNsb2NrLWNvbnRyb2xsZXJAMTAwMDAwIHsKPiAgCQkJY2xv
Y2tzID0gPCZycG1oY2MgUlBNSF9DWE9fQ0xLPiwKPiAgCQkJCSA8JnNsZWVwX2Nsaz4sCj4gIAkJ
CQkgPCZwY2llMF9waHk+LAo+IC0JCQkJIDwwPiwKPiArCQkJCSA8JnBjaWUxX3BoeT4sCj4gIAkJ
CQkgPDA+LAo+ICAJCQkJIDwwPiwKPiAgCQkJCSA8MD4sCj4gQEAgLTg3Nyw2ICs4NzcsMTI1IEBA
IHBjaWUwX3BoeTogcGh5QDFjMDQwMDAgewo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJ
CX07Cj4gIAo+ICsJCXBjaWUxOiBwY2lAMWMxMDAwMCB7Cj4gKwkJCWRldmljZV90eXBlID0gInBj
aSI7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxwY2llLXFjczgzMDAiLCAicWNvbSxwY2llLXNh
ODc3NXAiOwo+ICsJCQlyZWcgPSA8MHgwIDB4MDFjMTAwMDAgMHgwIDB4MzAwMD4sCj4gKwkJCSAg
ICAgIDwweDAgMHg2MDAwMDAwMCAweDAgMHhmMjA+LAo+ICsJCQkgICAgICA8MHgwIDB4NjAwMDBm
MjAgMHgwIDB4YTg+LAo+ICsJCQkgICAgICA8MHgwIDB4NjAwMDEwMDAgMHgwIDB4NDAwMD4sCj4g
KwkJCSAgICAgIDwweDAgMHg2MDEwMDAwMCAweDAgMHgxMDAwMDA+LAo+ICsJCQkgICAgICA8MHgw
IDB4MDFjMTMwMDAgMHgwIDB4MTAwMD47Cj4gKwkJCXJlZy1uYW1lcyA9ICJwYXJmIiwKPiArCQkJ
CSAgICAiZGJpIiwKPiArCQkJCSAgICAiZWxiaSIsCj4gKwkJCQkgICAgImF0dSIsCj4gKwkJCQkg
ICAgImNvbmZpZyIsCj4gKwkJCQkgICAgIm1oaSI7Cj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDM+
Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCQkJcmFuZ2VzID0gPDB4MDEwMDAwMDAgMHgw
IDB4MDAwMDAwMDAgMHgwIDB4NjAyMDAwMDAgMHgwIDB4MTAwMDAwPiwKPiArCQkJCSA8MHgwMjAw
MDAwMCAweDAgMHg2MDMwMDAwMCAweDAgMHg2MDMwMDAwMCAweDAgMHgxZmQwMDAwMD47Cj4gKwkJ
CWJ1cy1yYW5nZSA9IDwweDAwIDB4ZmY+Owo+ICsKPiArCQkJZG1hLWNvaGVyZW50Owo+ICsKPiAr
CQkJbGludXgscGNpLWRvbWFpbiA9IDwxPjsKPiArCQkJbnVtLWxhbmVzID0gPDQ+Owo+ICsKPiAr
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUxOSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJ
CSAgICAgPEdJQ19TUEkgMTQwIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lD
X1NQSSAxNDEgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0MiBJ
UlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMTQzIElSUV9UWVBFX0xF
VkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAxNDQgSVJRX1RZUEVfTEVWRUxfSElHSD4s
Cj4gKwkJCQkgICAgIDxHSUNfU1BJIDE0NSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAg
ICAgPEdJQ19TUEkgMTQ2IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQ
SSA1MTggSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJCWludGVycnVwdC1uYW1lcyA9ICJtc2kw
IiwKPiArCQkJCQkgICJtc2kxIiwKPiArCQkJCQkgICJtc2kyIiwKPiArCQkJCQkgICJtc2kzIiwK
PiArCQkJCQkgICJtc2k0IiwKPiArCQkJCQkgICJtc2k1IiwKPiArCQkJCQkgICJtc2k2IiwKPiAr
CQkJCQkgICJtc2k3IiwKPiArCQkJCQkgICJnbG9iYWwiOwo+ICsKPiArCQkJI2ludGVycnVwdC1j
ZWxscyA9IDwxPjsKPiArCQkJaW50ZXJydXB0LW1hcC1tYXNrID0gPDAgMCAwIDB4Nz47Cj4gKwkJ
CWludGVycnVwdC1tYXAgPSA8MCAwIDAgMSAmaW50YyBHSUNfU1BJIDE0OCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPiArCQkJCQk8MCAwIDAgMiAmaW50YyBHSUNfU1BJIDE0OSBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPiArCQkJCQk8MCAwIDAgMyAmaW50YyBHSUNfU1BJIDE1MCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPiArCQkJCQk8MCAwIDAgNCAmaW50YyBHSUNfU1BJIDE1MSBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzFfQVVYX0NMSz4sCj4g
KwkJCQkgPCZnY2MgR0NDX1BDSUVfMV9DRkdfQUhCX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BD
SUVfMV9NU1RSX0FYSV9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFXzFfU0xWX0FYSV9DTEs+
LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFXzFfU0xWX1EyQV9BWElfQ0xLPjsKPiArCQkJY2xvY2st
bmFtZXMgPSAiYXV4IiwKPiArCQkJCSAgICAgICJjZmciLAo+ICsJCQkJICAgICAgImJ1c19tYXN0
ZXIiLAo+ICsJCQkJICAgICAgImJ1c19zbGF2ZSIsCj4gKwkJCQkgICAgICAic2xhdmVfcTJhIjsK
PiArCj4gKwkJCWFzc2lnbmVkLWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzFfQVVYX0NMSz47Cj4g
KwkJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDE5MjAwMDAwPjsKPiArCj4gKwkJCWludGVyY29u
bmVjdHMgPSA8JnBjaWVfYW5vYyBNQVNURVJfUENJRV8xIFFDT01fSUNDX1RBR19BTFdBWVMKPiAr
CQkJCQkgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPiArCQkJCQk8
JmdlbV9ub2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZCj4gKwkJ
CQkJICZjb25maWdfbm9jIFNMQVZFX1BDSUVfMSBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFk+Owo+
ICsJCQlpbnRlcmNvbm5lY3QtbmFtZXMgPSAicGNpZS1tZW0iLCAiY3B1LXBjaWUiOwo+ICsKPiAr
CQkJaW9tbXUtbWFwID0gPDB4MCAmcGNpZV9zbW11IDB4MDA4MCAweDE+LAo+ICsJCQkJICAgIDww
eDEwMCAmcGNpZV9zbW11IDB4MDA4MSAweDE+Owo+ICsKPiArCQkJcmVzZXRzID0gPCZnY2MgR0ND
X1BDSUVfMV9CQ1I+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFXzFfTElOS19ET1dOX0JDUj47Cj4g
KwkJCXJlc2V0LW5hbWVzID0gInBjaSIsCj4gKwkJCQkgICAgICAibGlua19kb3duIjsKPiArCj4g
KwkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBHQ0NfUENJRV8xX0dEU0M+Owo+ICsKPiArCQkJcGh5
cyA9IDwmcGNpZTFfcGh5PjsKPiArCQkJcGh5LW5hbWVzID0gInBjaWVwaHkiOwo+ICsKPiArCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiArCQlwY2llMV9waHk6IHBoeUAxYzE0
MDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHNhODc3NXAtcW1wLWdlbjR4NC1wY2llLXBo
eSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMWMxNDAwMCAweDAgMHg0MDAwPjsKPiArCj4gKwkJCWNs
b2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzFfQ0ZHX0FIQl9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19Q
Q0lFX0NMS1JFRl9FTj4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMV9QSFlfUkNITkdfQ0xLPiwK
PiArCQkJCSA8JmdjYyBHQ0NfUENJRV8xX1BJUEVfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJ
RV8xX1BJUEVESVYyX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMV9QSFlfQVVYX0NMSz47
Cj4gKwkJCWNsb2NrLW5hbWVzID0gImNmZ19haGIiLAo+ICsJCQkJICAgICAgInJlZiIsCj4gKwkJ
CQkgICAgICAicmNobmciLAo+ICsJCQkJICAgICAgInBpcGUiLAo+ICsJCQkJICAgICAgInBpcGVk
aXYyIiwKPiArCQkJCSAgICAgICJwaHlfYXV4IjsKPiArCj4gKwkJCWFzc2lnbmVkLWNsb2NrcyA9
IDwmZ2NjIEdDQ19QQ0lFXzFfUEhZX1JDSE5HX0NMSz47Cj4gKwkJCWFzc2lnbmVkLWNsb2NrLXJh
dGVzID0gPDEwMDAwMDAwMD47Cj4gKwo+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUENJRV8xX1BI
WV9CQ1I+Owo+ICsJCQlyZXNldC1uYW1lcyA9ICJwaHkiOwo+ICsKPiArCQkJI2Nsb2NrLWNlbGxz
ID0gPDA+Owo+ICsJCQljbG9jay1vdXRwdXQtbmFtZXMgPSAicGNpZV8xX3BpcGVfY2xrIjsKPiAr
Cj4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ICsJCX07Cj4gKwo+ICAJCXVmc19tZW1faGM6IHVmc0AxZDg0MDAwIHsKPiAgCQkJY29tcGF0aWJs
ZSA9ICJxY29tLHFjczgzMDAtdWZzaGMiLCAicWNvbSx1ZnNoYyIsICJqZWRlYyx1ZnMtMi4wIjsK
PiAgCQkJcmVnID0gPDB4MCAweDAxZDg0MDAwIDB4MCAweDMwMDA+Owo+IC0tIAo+IDIuMzQuMQo+
IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
