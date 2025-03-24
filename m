Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B72C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3SCMjmmT440U6bu5YL+e+qXp2jWhVub/AUS1bRt/hQ=; b=jEh54FxND9ByU3
	5rYSDbdTwY1q2C9QfCqlMbk57H36C66BCLfMClWZW80UncGpb2ct/kMpGO8XCEHp/umoexjC+9uX6
	frjA0eUn4yFXt5tbQrc9pl1RmbYsDN61sPqssZqgKHt1khKuBZMPBGZ9U9q7NRkf3gqmggioJxU95
	Q4G0XgxPb3dvnhNX+uHuXXMSo1qz3YDSnwecdF+3Yy0cmKo67T0bxuPcMxiW0MCqaqJGu+VlTh6QT
	/pEwkQLvh/ek6G4K+kP0Xu1dFhDVBDQ3YTeian1l2oq7pf6GvprdTIYjqWikcVioj1v0NXHMCWnFB
	0X/jty9OyLtORlHwuI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twcQx-00000002Tg6-2Uq1;
	Mon, 24 Mar 2025 07:41:19 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twcJA-00000002SSx-1yV2
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:33:17 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2264aefc45dso59508585ad.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 00:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742801595; x=1743406395; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=blHdPfqvckcDqL+CzNJyNVyPgWhN37kCBIwjaKypN3g=;
        b=BMyMxdAGp6U7RsMpFxNuQfHwGExSgatOwgCc9nDSa6cc7sr7kPXZD1iEFcmQVnRVCp
         N1fiL0NOnLdTHXMLpEaiQ8lTOjwHEPsHK1hRuNW2FLVpdJ+uj+0iPjI4I2rvkC7aNQRz
         NMoa+McYnm4ZD3WvCfz+eQqWzxvO/Bz2PZgxbT4TPjkT2JqgdWMmnEeZqnjcnGakuk4/
         sBw/qlMs+HUFq3KMLz6r57J1oBd9/liDXe0wuGT7UMMT+gwnY9RQmHnCrwEc71x6yoej
         eJxUoENDer0wPNGTF4b5pp6djFbrRQinp8yHHSCsZbvovG1gPZHLCpTc1DbLV++JJ6QT
         lvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742801595; x=1743406395;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=blHdPfqvckcDqL+CzNJyNVyPgWhN37kCBIwjaKypN3g=;
        b=W9GdwpfVbtYkFsCbUcKB++Wx4NgxT40fKMSGDcNqqEYvIm2t/e/MpMe1QeF4wi3fKN
         quUTaEWKzz51qHoI5Jy4QR0/RwnCp9nsM/cvdURYUFzZxdoCwLaQ2yFNhdeSYKilCmwn
         2D0CRuQ0+p0Qb+2Pu0g26S5UbOTwRUXq0bFOjiBNkfZgopUSU0pSVPoNcnK9PgmoF2PK
         hGBVIONdAIXPY16DrTOrYfCfSbv0ROxPI82YYvBfze2/ipIX0Pjqnxi4R5jMh+vmUdO2
         jkcizMCs/nYseSWr7Eb5do0rgiyFaOKW6iYaeXoJckOwDJqd5k4D/qzYRRS68LqecEX+
         mwHw==
X-Forwarded-Encrypted: i=1; AJvYcCXuF7082vSCISRziJ+JKKKzrna94fMCJn3YsS2VrZ/taqLgBco7NVfVZTP7MmF8EOZ7T6K4IfTBDeU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbeMI3tyz4m20HXtXAZvsmj4HjF2auQNid5mK3uk4JGXYlk5EN
	6gELVhfoBm6iJiD2RlUoFqkJ1ZaP6JqDLM6FCwQjs/9LKGFkNAhknV2wn8UeHA==
X-Gm-Gg: ASbGncvnDckEWArnlkizwPm5FQ3EOvoHvROgAAvJcMAgsd43kQgvy9WgJw7XnEZhiRC
	YIMJt8PLU/6eIjTPB31tY6CLDWB4zBZmwjB2tZq8SkrSeA0Q0J9D2Jlcu0SqpaUa5EOkOyCE2g8
	ebBverFVsbhxGsfaF4Vc4Rk0cijW4Yrrs3LkjP4BSRgx9k4ONbxj5EwDBTgHBqixLkTRHz1raS2
	MlncVtGHDiivMtw440Bi/sKCAg/XEPSU9H8B8voWe9YJzdI6QVyPvNLynVAL/cfTjwLpBUvs1bo
	A57SEWR8oGz+twxAgSIYOj3reFkSO2I6Ot2nDO3/Z4q2RuHGkUF/JyYpjY3i5A1uEcc=
X-Google-Smtp-Source: AGHT+IGdaxHUvNgtq8nt2eMj0NE21L4bvrlhTf8k4RnWCzYdr1Rh6FUOr8cwZ5bcmco+xvo3j8Ftiw==
X-Received: by 2002:a17:902:d549:b0:224:a96:e39 with SMTP id d9443c01a7336-22780c55343mr200013175ad.9.1742801595360;
        Mon, 24 Mar 2025 00:33:15 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811d9eb4sm63872155ad.164.2025.03.24.00.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:33:14 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:03:07 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: quic_srichara@quicinc.com, quic_nsekar@quicinc.com, 
	George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	dmitry.baryshkov@linaro.org, kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	kw@linux.com, lpieralisi@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, 
	robimarko@gmail.com, vkoul@kernel.org
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <f3o6lv4jb2ze4cnoywjseh2fhoquqc6fkgtbqbz4jfh4u5kqyy@wuixplqzlhue>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250318071756.uilfhwfzgr5gds3o@thinkpad>
 <DS7PR19MB88838C8F5959955CB4AE14959DDE2@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88838C8F5959955CB4AE14959DDE2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_003316_524219_3AF28752 
X-CRM114-Status: GOOD (  20.34  )
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

T24gVHVlLCBNYXIgMTgsIDIwMjUgYXQgMDE6NDE6MTlQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB3cm90ZToKPiAKPiAKPiBPbiAzLzE4LzI1IDExOjE3LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBXZWQsIE1hciAwNSwgMjAyNSBhdCAwNTo0MTozMFBNICswNDAwLCBHZW9y
Z2UgTW91c3NhbGVtIHdyb3RlOgo+ID4gPiBGcm9tOiBTcmljaGFyYW4gUmFtYWJhZGhyYW4gPHF1
aWNfc3JpY2hhcmFAcXVpY2luYy5jb20+Cj4gPiA+IAo+ID4gPiBGcm9tOiBOaXRoZWVzaCBTZWth
ciA8cXVpY19uc2VrYXJAcXVpY2luYy5jb20+Cj4gPiA+IAo+ID4gPiBBZGQgcGh5IGFuZCBjb250
cm9sbGVyIG5vZGVzIGZvciBhIDItbGFuZSBHZW4yIGFuZAo+ID4gPiBhIDEtbGFuZSBHZW4yIFBD
SWUgYnVzLiBJUFE1MDE4IGhhcyA4IE1TSSBTUEkgaW50ZXJydXB0cyBhbmQKPiA+ID4gb25lIGds
b2JhbCBpbnRlcnJ1cHQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOaXRoZWVzaCBTZWth
ciA8cXVpY19uc2VrYXJAcXVpY2luYy5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNyaWNoYXJh
biBSIDxxdWljX3NyaWNoYXJhQHF1aWNpbmMuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZW9y
Z2UgTW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgo+ID4gPiAtLS0KPiA+
ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpIHwgMjMyICsrKysrKysr
KysrKysrKysrKysrKysrKystCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIzMCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBx
NTAxOC5kdHNpCj4gPiA+IGluZGV4IDg5MTRmMmVmMGJjNC4uMzAxYTA0NGJkZjZkIDEwMDY0NAo+
ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpCj4gPiA+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiA+ID4gQEAgLTE0Nyw2
ICsxNDcsMjM0IEBAIHVzYnBoeTA6IHBoeUA1YjAwMCB7Cj4gPiA+ICAgCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKPiA+ID4gICAJCX07Cj4gPiA+ICsJCXBjaWUxOiBwY2llQDc4MDAwIHsKPiA+ID4g
KwkJCWNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTUwMTgiOwo+ID4gPiArCQkJcmVnID0gPDB4
MDAwNzgwMDAgMHgzMDAwPiwKPiA+ID4gKwkJCSAgICAgIDwweDgwMDAwMDAwIDB4ZjFkPiwKPiA+
ID4gKwkJCSAgICAgIDwweDgwMDAwZjIwIDB4YTg+LAo+ID4gPiArCQkJICAgICAgPDB4ODAwMDEw
MDAgMHgxMDAwPiwKPiA+ID4gKwkJCSAgICAgIDwweDgwMTAwMDAwIDB4MTAwMD47Cj4gPiA+ICsJ
CQlyZWctbmFtZXMgPSAicGFyZiIsCj4gPiA+ICsJCQkJICAgICJkYmkiLAo+ID4gPiArCQkJCSAg
ICAiZWxiaSIsCj4gPiA+ICsJCQkJICAgICJhdHUiLAo+ID4gPiArCQkJCSAgICAiY29uZmlnIjsK
PiA+ID4gKwkJCWRldmljZV90eXBlID0gInBjaSI7Cj4gPiA+ICsJCQlsaW51eCxwY2ktZG9tYWlu
ID0gPDA+Owo+ID4gPiArCQkJYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4gPiA+ICsJCQludW0t
bGFuZXMgPSA8MT47Cj4gPiA+ICsJCQltYXgtbGluay1zcGVlZCA9IDwyPjsKPiA+IAo+ID4gV2h5
IGRvIHlvdSB3YW50IHRvIGxpbWl0IGxpbmsgc3BlZWQ/Cj4gCj4gVGhpcyB3YXMgb3JpZ2luYWxs
eSBzZW50IG15IHFjb20uIEkndmUganVzdCB0ZXN0ZWQgd2l0aCBhbmQgd2l0aG91dC4KPiBXaXRo
b3V0IGxpbWl0aW5nIGxpbmsgc3BlZWQsIHRoZSBwaHkgZG9lc24ndCBjb21lIHVwOgo+IAo+IFsg
ICAgMC4xMTIwMTddIHFjb20tcGNpZSBhMDAwMDAwMC5wY2llOiBob3N0IGJyaWRnZSAvc29jQDAv
cGNpZUBhMDAwMDAwMAo+IHJhbmdlczoKPiBbICAgIDAuMTEyMTE2XSBxY29tLXBjaWUgYTAwMDAw
MDAucGNpZTogICAgICAgSU8gMHgwMGEwMjAwMDAwLi4weDAwYTAyZmZmZmYKPiAtPiAweDAwYTAy
MDAwMDAKPiBbICAgIDAuMTEyMTYxXSBxY29tLXBjaWUgYTAwMDAwMDAucGNpZTogICAgICBNRU0g
MHgwMGEwMzAwMDAwLi4weDAwYjAyZmZmZmYKPiAtPiAweDAwYTAzMDAwMDAKPiBbICAgIDAuMjM4
NjIzXSBxY29tLXBjaWUgYTAwMDAwMDAucGNpZTogaUFUVTogdW5yb2xsIFQsIDggb2IsIDggaWIs
IGFsaWduCj4gNEssIGxpbWl0IDEwMjRHCj4gLi4uCj4gWyAgICAxLjI1NzI5MF0gcWNvbS1wY2ll
IGEwMDAwMDAwLnBjaWU6IFBoeSBsaW5rIG5ldmVyIGNhbWUgdXAKPiAKCldvdy4gVGhpcyBzaG91
bGQgbmV2ZXIgaGFwcGVuIHVubGVzcyB0aGUgUEhZIHNlcXVlbmNlcyBhcmUgbWVzc2VkIHVwLiBJ
ZiB0aGVyZQphcmUgc3RhYmlsaXR5IGlzc3VlcyB3aXRoIEdlbiAzLCB3ZSBzaG91bGQgZ2V0IHJ1
bnRpbWUgQUVSIGVycm9ycyBhbmQgdGhlIGxpbmsKc2hvdWxkIGF0bGVhc3QgY29tZSB1cCAoYmFz
ZWQgb24gZXhwZXJpZW5jZSB3aXRoIHNpbWlsYXIgaXNzdWVzIG9uIG90aGVyCnBsYXRmb3Jtcyku
CgpTcmljaGFyYW4vTml0aGVlc2gsIG1heSBJIGtub3cgd2hhdCBpcyB0aGUgaXNzdWUgaGVyZT8K
Cj4gPiAKPiA+ID4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDM+Owo+ID4gPiArCQkJI3NpemUtY2Vs
bHMgPSA8Mj47Cj4gPiA+ICsKPiA+ID4gKwkJCXBoeXMgPSA8JnBjaWUxX3BoeT47Cj4gPiA+ICsJ
CQlwaHktbmFtZXMgPSJwY2llcGh5IjsKPiA+ID4gKwo+ID4gPiArCQkJcmFuZ2VzID0gPDB4ODEw
MDAwMDAgMCAweDgwMjAwMDAwIDB4ODAyMDAwMDAgMCAweDAwMTAwMDAwPiwJLyogSS9PICovCj4g
PiA+ICsJCQkJIDwweDgyMDAwMDAwIDAgMHg4MDMwMDAwMCAweDgwMzAwMDAwIDAgMHgxMDAwMDAw
MD47CS8qIE1FTSAqLwo+ID4gCj4gPiBUaGVzZSByYW5nZXMgYXJlIHdyb25nLiBQbGVhc2UgY2hl
Y2sgd2l0aCBvdGhlciBEVCBmaWxlcy4KPiA+IAo+IAo+IFRoYW5rcywgaGF2ZSBjb3JyZWN0ZWQg
dGhlbSBhcyBwYXJ0IG9mIG5leHQgdmVyc2lvbjoKPiAKPiByYW5nZXMgPSA8MHgwMTAwMDAwMCAw
IDB4ODAyMDAwMDAgMHg4MDIwMDAwMCAwIDB4MDAxMDAwMDA+LAo+IAkgPDB4MDIwMDAwMDAgMCAw
eDgwMzAwMDAwIDB4ODAzMDAwMDAgMCAweDEwMDAwMDAwPjsKPiAKPiA+IFNhbWUgY29tbWVudHMg
dG8gb3RoZXIgaW5zdGFuY2UgYXMgd2VsbC4KPiAKPiBhbmQ6Cj4gCj4gcmFuZ2VzID0gPDB4MDEw
MDAwMDAgMCAweGEwMjAwMDAwIDB4YTAyMDAwMDAgMCAweDAwMTAwMDAwPiwKPiAJIDwweDAyMDAw
MDAwIDAgMHhhMDMwMDAwMCAweGEwMzAwMDAwIDAgMHgxMDAwMDAwMD47Cj4gCgpMR1RNLgoKLSBN
YW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
