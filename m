Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDD6C3ABC9
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 11:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mTMVqzVGY+nvzZJ8voFXHagjTisz/lzLzH98PkNJCk=; b=X6YJqIPqPnl0cW
	D/z+tj7hCBaJaDlSUSNTt1wa2jfs42VUKHO6+Y/h+WZ7uLV4Jt69nAlA4s4oZBqhfjTaGI1fJgs+2
	it2zG8UJhpCC66okcDlxXRh++6eLv1JNDUAzcgjJi0QtTMBNKb/HEmxzTzt5FfwgIP/3JeGeUOLs3
	3vAG3ZQ46Ydzjv+jfFr9fpOEN1nFWtcBVpX6RXQG09rjzYCJwFYDqQ0y/BWXf6wXYwdPavTCCjohs
	k59gOCNYL33SvaU9el+GHFrtfYYqfQ6v4O2NL8vPpMmDL8959RXsTM4Y70OHaxVhheKY1jndDnLUa
	lKKEZzhkMuFH61sVPUmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFWhT-00000000OIk-0cnf;
	Thu, 15 May 2025 11:24:31 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFWhP-00000000OG4-3gJx
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 11:24:29 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-441ab63a415so8658315e9.3
        for <linux-phy@lists.infradead.org>; Thu, 15 May 2025 04:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747308266; x=1747913066; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Oq3luUbNQrh4sO37NnuDYHxjHPc8/KBLQt1bSPbX55c=;
        b=Sduo+vGKDZZMOV4tq9fdgsjFQPm23QP3ms8HX1cv88VTxvc39I462OeCAQOxjdlxeA
         zJ175X/HlnVD/J2hF75FpcfPgv7YsQ8tp/z+t3WfB/LXorBXM3fBssOQKXZqsEbn10xz
         bbeRv3dd1XGkjVbgpSFXeN4UReqr+gIj5K8oEYc12f55rG4the66VNJwRYXk0p/Wdt9j
         VDtsv40flcvPGcyFECwXaCtFJnsL8I8dIoLI1NwZ2QUciF5zGzKGe0ln0paOuPYuNLSX
         PHheFb9S68bjnV51YFy0KYiGCj5Bnt9y0urcuXrFOMvrMfUn8s6lxqN473AWIthQk8xd
         3ESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747308266; x=1747913066;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oq3luUbNQrh4sO37NnuDYHxjHPc8/KBLQt1bSPbX55c=;
        b=gDNkcrN/BlGfREp2e7XI5BmnAi2xyHGtQS7rrNttUpdl7jOWb7R6WdoFLyaIlIPA1J
         qaL/55sZZtLltdImMu5fj6fwFbe9Kik13+3lDRlG6TS5cDwatey4MM6oiGPPBkTBmOu4
         6vL2tC7ICKL27CwYrbUP/g6YJtK5ACPYiygpNvOojBdHAc3xvdIVn0+HuQE/667oMlJ6
         ijz+H4iJ6vjz6X4xHjtyCro55zXmnf4Rs3ANRl9ip+nDjTGsBhmzHWJJsTQNMjH61Fjm
         T/+uOhInHYf0EZn2oWIB4msULyv2p7ARzgSVn1J+kNNchk8GqJMzLZbsRU7vqAV8QYN6
         jo3Q==
X-Gm-Message-State: AOJu0YylvaXR9Md7egdLbahfN/AKD/dvCkZXFk8sTUHzUC5LurBneMUW
	OuClh8IMS53PoPH0PAeOfZHm2+NqfIsSUB7sX6pJ1OdXHyf9PF6IWNtxrmTaXeQ=
X-Gm-Gg: ASbGncui7Ac7d2MDNhY+K467GXXm0z13ohu3+9HkH4UTB0gV8KRHGIxjwniflRLegkM
	i+noEGnkgg/UOp98x/MPreqIJjMWcDmKml5Rtfdw+QSuO4Ql4clxU1rYSOKwBZk45MxctPgu0gv
	lE1xALuHRXykfWdU0X3uI3aLvXQd214NvhQsaZdwTKa1+8d3/wU4ZikddIPwOHAFSDI7w5IxSQB
	5XWMGdtCKUCqSBonALRDmEQBT15csTTFCTBosPlKaUcBLR8+3k/THqFOeYG+G7SeeFwqBbHn9LY
	aRIzklOJQGxZY5doEuYMkOVrmrewIQDemzqqaYxQ+8oAdwXeAX3D59z5gwSdswc6RgcwbijOjTZ
	HN+YkAF3DGoL6deyrjCy9
X-Google-Smtp-Source: AGHT+IHewJ1yK2km4hF4XJnukjwH9B+t5DFAbmZFcOJDYUefiqQ+fuKodfexjRPHQzwg8kOClUt6eg==
X-Received: by 2002:a05:600c:4691:b0:43d:40b0:5b with SMTP id 5b1f17b1804b1-442f2168cc3mr58378255e9.25.1747308265655;
        Thu, 15 May 2025 04:24:25 -0700 (PDT)
Received: from [10.61.0.59] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebd47d39sm62595095e9.1.2025.05.15.04.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 04:24:25 -0700 (PDT)
Message-ID: <7cb062aefa6f8287b30c95bb12274c83ff6df34e.camel@linaro.org>
Subject: Re: [PATCH 2/2] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, 	alim.akhtar@samsung.com, peter.griffin@linaro.org,
 kauschluss@disroot.org, 	m.szyprowski@samsung.com, s.nawrocki@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
 dev.tailor@samsung.com, 	faraz.ata@samsung.com, muhammed.ali@samsung.com,
 selvarasu.g@samsung.com
Date: Thu, 15 May 2025 12:24:23 +0100
In-Reply-To: <20250514134813.380807-3-pritam.sutar@samsung.com>
References: <20250514134813.380807-1-pritam.sutar@samsung.com>
		<CGME20250514133847epcas5p41a1c413aecefa2fab32357c6c69e999c@epcas5p4.samsung.com>
	 <20250514134813.380807-3-pritam.sutar@samsung.com>
User-Agent: Evolution 3.55.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_042427_922121_BD7A44E9 
X-CRM114-Status: GOOD (  18.18  )
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

SGksCgpPbiBXZWQsIDIwMjUtMDUtMTQgYXQgMTk6MTggKzA1MzAsIFByaXRhbSBNYW5vaGFyIFN1
dGFyIHdyb3RlOgo+IFRoaXMgU29DIGhhcyBhIHNpbmdsZSBVU0IgMy4xIERSRCBjb21ibyBwaHkg
YW5kIHRocmVlIFVTQjIuMAo+IERSRCBIUyBwaHkgY29udHJvbGxlcnMgdGhvc2Ugb25seSBzdXBw
b3J0IHRoZSBVVE1JKyBpbnRlcmZhY2UuCj4gCj4gU3VwcG9ydCBvbmx5IFVUTUkrIGZvciB0aGlz
IFNvQyB3aGljaCBpcyB2ZXJ5IHNpbWlsYXIgdG8gd2hhdAo+IHRoZSBleGlzdGluZyBFeHlub3M4
NTAgc3VwcG9ydHMuCj4gCj4gVGhlIGNvbWJvIHBoeSBzdXBwb3J0cyBib3RoIFVUTUkrIChIUykg
YW5kIFBJUEUzIChTUykgYW5kIGlzCj4gb3V0IG9mIHNjb3BlIG9mIHRoaXMgY29tbWl0Lgo+IAo+
IEFkZCByZXF1aXJlZCBjaGFuZ2UgaW4gcGh5IGRyaXZlciB0byBzdXBwb3J0IEhTIHBoeSBmb3Ig
dGhpcyBTb0MuCj4gCj4gU2lnbmVkLW9mZi1ieTogUHJpdGFtIE1hbm9oYXIgU3V0YXIgPHByaXRh
bS5zdXRhckBzYW1zdW5nLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4
eW5vczUtdXNiZHJkLmMgfCA4NSArKysrKysrKysrKysrKysrKysrKysrKysKPiDCoDEgZmlsZSBj
aGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jCj4gaW5kZXggNjM0YzQzMTBjNjYwLi43YjRiODAzMTljNWMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+ICsrKyBiL2Ry
aXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBAQCAtMTc3LDYgKzE3Nyw5
IEBACj4gwqAjZGVmaW5lIEhTUEhZUExMVFVORV9QTExfUF9UVU5FCQkJR0VOTUFTSygzLCAwKQo+
IMKgCj4gwqAvKiBFeHlub3M4NTA6IFVTQiBEUkQgUEhZIHJlZ2lzdGVycyAqLwo+ICsjZGVmaW5l
IEVYWU5PU0FVVE92OTIwX0RSRF9DVFJMX1ZFUgkJMHgwMAo+ICsjZGVmaW5lIEdFVF9DVFJMX01B
Sk9SX1ZFUlNJT04oX3gpCQkoKChfeCkgPj4gMjQpICYgMHhmZikKCkkgc3VnZ2VzdCB1c2luZyBz
dGFuZGFyZCBHRU5NQVNLKCkgYW5kIEZJRUxEX0dFVCgpIGZvciB0aGUgdmVyc2lvbiBiaXRzIGlu
c3RlYWQuCgpDaGVlcnMsCkEuCgo+ICsKPiDCoCNkZWZpbmUgRVhZTk9TODUwX0RSRF9MSU5LQ1RS
TAkJCTB4MDQKPiDCoCNkZWZpbmUgTElOS0NUUkxfRk9SQ0VfUlhFTEVDSURMRQkJQklUKDE4KQo+
IMKgI2RlZmluZSBMSU5LQ1RSTF9GT1JDRV9QSFlTVEFUVVMJCUJJVCgxNykKPiBAQCAtMTc3Miw2
ICsxNzc1LDEwIEBAIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgZXh5bm9zNV9yZWd1bGF0b3Jf
bmFtZXNbXSA9IHsKPiDCoAkidmJ1cyIsICJ2YnVzLWJvb3N0IiwKPiDCoH07Cj4gwqAKPiArc3Rh
dGljIGNvbnN0IGNoYXIgKiBjb25zdCBleHlub3NhdXRvdjkyMF9jbGtfbmFtZXNbXSA9IHsKPiAr
CSJleHRfeHRhbCIsCj4gK307Cj4gKwo+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3Vz
YmRyZF9waHlfZHJ2ZGF0YSBleHlub3M1NDIwX3VzYmRyZF9waHkgPSB7Cj4gwqAJLnBoeV9jZmcJ
CT0gcGh5X2NmZ19leHlub3M1LAo+IMKgCS5waHlfb3BzCQk9ICZleHlub3M1X3VzYmRyZF9waHlf
b3BzLAo+IEBAIC0xODQ3LDYgKzE4NTQsODEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1
X3VzYmRyZF9waHlfZHJ2ZGF0YSBleHlub3M4NTBfdXNiZHJkX3BoeSA9IHsKPiDCoAkubl9yZWd1
bGF0b3JzCQk9IEFSUkFZX1NJWkUoZXh5bm9zNV9yZWd1bGF0b3JfbmFtZXMpLAo+IMKgfTsKPiDC
oAo+ICtzdGF0aWMgdm9pZCBleHlub3NhdXRvdjkyMF91c2JkcmRfdXRtaV9pbml0KHN0cnVjdCBl
eHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCj4gK3sKPiArCXUzMiB2ZXJzaW9uOwo+ICsKPiAr
CXZlcnNpb24gPSByZWFkbChwaHlfZHJkLT5yZWdfcGh5ICsgRVhZTk9TQVVUT3Y5MjBfRFJEX0NU
UkxfVkVSKTsKPiArCWRldl9pbmZvKHBoeV9kcmQtPmRldiwgInVzYnBoeTogdmVyc2lvbjoweCV4
XG4iLCB2ZXJzaW9uKTsKPiArCj4gKwlpZiAoR0VUX0NUUkxfTUFKT1JfVkVSU0lPTih2ZXJzaW9u
KSA9PSAweDMpCj4gKwkJLyogdXRtaSBpbml0IGZvciBleHlub3NhdXRvdjkyMCBIUyBwaHkgKi8K
PiArCQlleHlub3M4NTBfdXNiZHJkX3V0bWlfaW5pdChwaHlfZHJkKTsKPiArfQo+ICsKPiArc3Rh
dGljIGludCBleHlub3NhdXRvdjkyMF91c2JkcmRfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+
ICt7Cj4gKwlzdHJ1Y3QgcGh5X3VzYl9pbnN0YW5jZSAqaW5zdCA9IHBoeV9nZXRfZHJ2ZGF0YShw
aHkpOwo+ICsJc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2RyZCA9IHRvX3VzYmRyZF9w
aHkoaW5zdCk7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwlyZXQgPSBjbGtfYnVsa19wcmVwYXJl
X2VuYWJsZShwaHlfZHJkLT5kcnZfZGF0YS0+bl9jbGtzLCBwaHlfZHJkLT5jbGtzKTsKPiArCWlm
IChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwkvKiBVVE1JIG9yIFBJUEUzIHNwZWNpZmlj
IGluaXQgKi8KPiArCWluc3QtPnBoeV9jZmctPnBoeV9pbml0KHBoeV9kcmQpOwo+ICsKPiArCWNs
a19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPmRydl9kYXRhLT5uX2Nsa3MsIHBoeV9k
cmQtPmNsa3MpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBleHlu
b3NhdXRvdjkyMF92M3AxX3BoeV9kaXMoc3RydWN0IHBoeSAqcGh5KQo+ICt7Cj4gKwlzdHJ1Y3Qg
cGh5X3VzYl9pbnN0YW5jZSAqaW5zdCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJc3RydWN0
IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2RyZCA9IHRvX3VzYmRyZF9waHkoaW5zdCk7Cj4gKwl2
b2lkIF9faW9tZW0gKnJlZ19waHkgPSBwaHlfZHJkLT5yZWdfcGh5Owo+ICsJdTMyIHZlcnNpb247
Cj4gKwo+ICsJdmVyc2lvbiA9IHJlYWRsKHJlZ19waHkgKyBFWFlOT1NBVVRPdjkyMF9EUkRfQ1RS
TF9WRVIpOwo+ICsKPiArCWlmIChHRVRfQ1RSTF9NQUpPUl9WRVJTSU9OKHZlcnNpb24pID09IDB4
MykKPiArCQlleHlub3M4NTBfdXNiZHJkX3BoeV9leGl0KHBoeSk7Cj4gK30KPiArCj4gK3N0YXRp
YyBpbnQgZXh5bm9zYXV0b3Y5MjBfdXNiZHJkX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAr
ewo+ICsJc3RydWN0IHBoeV91c2JfaW5zdGFuY2UgKmluc3QgPSBwaHlfZ2V0X2RydmRhdGEocGh5
KTsKPiArCj4gKwlpZiAoaW5zdC0+cGh5X2NmZy0+aWQgPT0gRVhZTk9TNV9EUkRQSFlfVVRNSSkK
PiArCQlleHlub3NhdXRvdjkyMF92M3AxX3BoeV9kaXMocGh5KTsKPiArCj4gKwlyZXR1cm4gMDsK
PiArfQo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGV4eW5vc2F1dG92OTIwX3Vz
YmRyZF9waHlfb3BzID0gewo+ICsJLmluaXQJCT0gZXh5bm9zYXV0b3Y5MjBfdXNiZHJkX3BoeV9p
bml0LAo+ICsJLmV4aXQJCT0gZXh5bm9zYXV0b3Y5MjBfdXNiZHJkX3BoeV9leGl0LAo+ICsJLm93
bmVyCQk9IFRISVNfTU9EVUxFLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBleHlu
b3M1X3VzYmRyZF9waHlfY29uZmlnIHBoeV9jZmdfZXh5bm9zYXV0b3Y5MjBbXSA9IHsKPiArCXsK
PiArCQkuaWQJCT0gRVhZTk9TNV9EUkRQSFlfVVRNSSwKPiArCQkucGh5X2luaXQJPSBleHlub3Nh
dXRvdjkyMF91c2JkcmRfdXRtaV9pbml0LAo+ICsJfSwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgZXh5bm9zYXV0b3Y5MjBfdXNiMzFk
cmRfcGh5ID0gewo+ICsJLnBoeV9jZmcJCT0gcGh5X2NmZ19leHlub3NhdXRvdjkyMCwKPiArCS5w
aHlfb3BzCQk9ICZleHlub3NhdXRvdjkyMF91c2JkcmRfcGh5X29wcywKPiArCS5jbGtfbmFtZXMJ
CT0gZXh5bm9zYXV0b3Y5MjBfY2xrX25hbWVzLAo+ICsJLm5fY2xrcwkJCT0gQVJSQVlfU0laRShl
eHlub3NhdXRvdjkyMF9jbGtfbmFtZXMpLAo+ICsJLmNvcmVfY2xrX25hbWVzCQk9IGV4eW5vczVf
Y29yZV9jbGtfbmFtZXMsCj4gKwkubl9jb3JlX2Nsa3MJCT0gQVJSQVlfU0laRShleHlub3M1X2Nv
cmVfY2xrX25hbWVzKSwKPiArfTsKPiArCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IGV4eW5vczVf
dXNiZHJkX3BoeV9jb25maWcgcGh5X2NmZ19nczEwMVtdID0gewo+IMKgCXsKPiDCoAkJLmlkCQk9
IEVYWU5PUzVfRFJEUEhZX1VUTUksCj4gQEAgLTIwNDcsNiArMjEyOSw5IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGV4eW5vczVfdXNiZHJkX3BoeV9vZl9tYXRjaFtdID0gewo+
IMKgCX0sIHsKPiDCoAkJLmNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M4NTAtdXNiZHJkLXBo
eSIsCj4gwqAJCS5kYXRhID0gJmV4eW5vczg1MF91c2JkcmRfcGh5Cj4gKwl9LCB7Cj4gKwkJLmNv
bXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3NhdXRvdjkyMC11c2IzMWRyZC1waHkiLAo+ICsJCS5k
YXRhID0gJmV4eW5vc2F1dG92OTIwX3VzYjMxZHJkX3BoeQo+IMKgCX0sCj4gwqAJeyB9LAo+IMKg
fTsKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
