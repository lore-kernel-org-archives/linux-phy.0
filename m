Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00EC7C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7YpgC6hZ4GlHoGv6H0/y48yArzLARNKFJ5Nna/KEGE=; b=W68uAf9yQTNHWq
	86F2HB1SNG6a5nHPpb721Gq03gDnf6N7DIbBtdTDnCyyM4XmSYQYQYs5LFH80OucNh9ZfPP8T52yo
	Geza0Nq9bboFlYnSke/1OSg/6B2hQbezVv/Yj9cstUm9ZNNFwn5jOAySnViO8GT3izvB3R4EN3OzK
	BNfbgCOvDHs9+D80/yWL36wAdcXDQ9IWHjlCyZSbothJKBEVBq84s5n0gqVey3MsuMSTzUzHSWnjp
	Dsj2EfNPW8SewTUTZ/zzcHWkbFOSRLBYGqD8WiIf1hI0UOCTFtUsacpb5dks+YBj5Mw8BPYeIKGAs
	XXrITo50HNHqnCvheFpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj2ti-00Cgz7-EM; Thu, 13 Oct 2022 18:25:34 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj2tX-00CgwP-LD; Thu, 13 Oct 2022 18:25:25 +0000
Received: by mail-ej1-x632.google.com with SMTP id y14so5704107ejd.9;
        Thu, 13 Oct 2022 11:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B5L/tN8Nk5G1hFHXmpnHlaxEzIusr004HXV2igjx6Dg=;
        b=WaMkAHVPl8AWTlsWCOn5940xJ4n2+DGuI4BNxlNTPRVWDmpiouz4lLGIdgOc56G/S6
         iSHRYRPLpu31hPIR2oj21xQEuSdwrLDTdg/IugpMzX8dl4YOSahc+Yqf4kLYlruz8JzY
         64PxNCx8ufShrGobabHugKDumGeDPrBw9+AWABQqzAidTIT/coJDU4Tn5zSPLWr8sdEf
         oNp8J+itnMQD5L8G24GuDwqs4kj/GWhSmrVNWx4UmvfjtfwYAlO3E248VRJATnUSBFyS
         20aXm6B8tZUCaWd3U1V2l5NDledETwN6ROnHCmJiV5fH9PIprBjM0gH3bh3kAWQdj8xr
         54IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B5L/tN8Nk5G1hFHXmpnHlaxEzIusr004HXV2igjx6Dg=;
        b=45Go0ztfiXEv9wU38iuBSXdvtUZ1tkX97CsVMbALxCqQawrOGVWAVaPoMBFRRnYwsi
         +ww/Y1bX5RutmiyqKpk2KxZWzPAvpCQ3/P8P8yuTi4S4aRJlo8U3FqLihAH03HjXeCHH
         cYXIuwCcsbF/wWcjZ271lQbQXn3NVXpx1L1RoFQvUdNWn8N5aixBYj8KrYsSOeRNVKGU
         WDSJFKhU8rx4rdy2r6gokS3JY4XCyEHwZ87OhQHLqRvV40BgjiMkpTN6cjnKmg8kkjlO
         qQNfslM7lEjK4ltnx3gl45WDoxOQf+HggVGhvbaMNnkBeoi1IKuKD6NWIzJQyJCQ6A+N
         0z7A==
X-Gm-Message-State: ACrzQf0XUBIi5cYBOtl2rTF3O/oJd82iISuFRzaO0sQPmXHEKCoq4d8r
	a7gvpjKa/GmzyLAqM86v0Wk=
X-Google-Smtp-Source: AMsMyM5D9VcyYdymrteUFP/uy7fZdMK47gw4RIDknOofM1/3bcKBsARkwBkRONaV/eI3T52TMYs+Xg==
X-Received: by 2002:a17:907:75ed:b0:78d:97ed:2894 with SMTP id jz13-20020a17090775ed00b0078d97ed2894mr732203ejc.739.1665685520104;
        Thu, 13 Oct 2022 11:25:20 -0700 (PDT)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id i24-20020a056402055800b004588ef795easm283249edx.34.2022.10.13.11.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 11:25:19 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>, Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: Re: [PATCH v2 04/10] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Thu, 13 Oct 2022 20:25:18 +0200
Message-ID: <3442772.V25eIC5XRa@kista>
In-Reply-To: <439b685e3aada19021d94669f6f855f1fc81d08e.camel@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me> <4218006.ejJDZkT8p0@kista> <439b685e3aada19021d94669f6f855f1fc81d08e.camel@icenowy.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_112523_710769_C21328EB 
X-CRM114-Status: GOOD (  24.54  )
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

RG5lIMSNZXRydGVrLCAxMy4gb2t0b2JlciAyMDIyIG9iIDEwOjQ5OjUxIENFU1QgamUgSWNlbm93
eSBaaGVuZyBuYXBpc2FsKGEpOgo+IOWcqCAyMDIyLTEwLTEy5pif5pyf5LiJ55qEIDIzOjIxICsw
MjAw77yMSmVybmVqIMWga3JhYmVj5YaZ6YGT77yaCj4gCj4gPiBIaSBJY2Vub3d5LAo+ID4gCj4g
PiBEbmUgc3JlZGEsIDEyLiBva3RvYmVyIDIwMjIgb2IgMDc6NTU6NTYgQ0VTVCBqZSBJY2Vub3d5
IFpoZW5nCj4gPiAKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IFRoZSBGMUMxMDBzIFNvQyBoYXMgb25l
IFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQgdG8gYSBNVVNCCj4gPiA+IGNvbnRyb2xsZXIuCj4gPiA+
IAo+ID4gPiBBZGQgc3VwcG9ydCBmb3IgaXRzIFVTQiBQSFkuCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDx1d3VAaWNlbm93eS5tZT4KPiA+ID4gLS0tCj4gPiA+IE5v
IGNoYW5nZXMgc2luY2UgdjEuCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9waHkvYWxsd2lubmVyL3Bo
eS1zdW40aS11c2IuYyB8IDExICsrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FsbHdp
bm5lci9waHktc3VuNGktdXNiLmMKPiA+ID4gYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1
bjRpLXVzYi5jIGluZGV4Cj4gPiA+IDNhMzgzMWY2MDU5YS4uMmY5NGNiNzc2MzdiCj4gPiA+IDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiA+ID4gQEAg
LTEwOSw2ICsxMDksNyBAQCBlbnVtIHN1bjRpX3VzYl9waHlfdHlwZSB7Cj4gPiA+ICAgICAgICAg
c3VuOGlfdjNzX3BoeSwKPiA+ID4gICAgICAgICBzdW41MGlfYTY0X3BoeSwKPiA+ID4gICAgICAg
ICBzdW41MGlfaDZfcGh5LAo+ID4gPiArICAgICAgIHN1bml2X2YxYzEwMHNfcGh5LAo+ID4gPiAg
fTsKPiA+ID4gCj4gPiA+ICBzdHJ1Y3Qgc3VuNGlfdXNiX3BoeV9jZmcgewo+ID4gPiBAQCAtODU5
LDYgKzg2MCwxNCBAQCBzdGF0aWMgaW50IHN1bjRpX3VzYl9waHlfcHJvYmUoc3RydWN0Cj4gPiA+
IHBsYXRmb3JtX2RldmljZQo+ID4gPiAqcGRldikgcmV0dXJuIDA7Cj4gPiA+ICB9Cj4gPiA+IAo+
ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyBzdW5pdl9mMWMxMDBz
X2NmZyA9IHsKPiA+ID4gKyAgICAgICAubnVtX3BoeXMgPSAxLAo+ID4gPiArICAgICAgIC50eXBl
ID0gc3VuaXZfZjFjMTAwc19waHksCj4gPiAKPiA+IEkgdGhpbmsgeW91IHNob3VsZCBqdXN0IHVz
ZSBzdW40aV9hMTBfcGh5LiBJdCBoYXMgbm8gc3BlY2lhbAo+ID4gaGFuZGxpbmcuIEkgZG9uJ3QK
PiA+IHNlZSBhIHBvaW50IGFkZGluZyBuZXcgcGh5IHR5cGVzIGlmIHRoZXJlIGlzIG5vIHNwZWNp
YWwgY2FzZXMgZm9yIGl0Lgo+IAo+IFNvdW5kcyByZWFzb25hYmxlLCBhbHRob3VnaCBJIHRoaW5r
IHdlIHNob3VsZCBmaW5hbGx5IGRyb3AgLnR5cGUgYW5kCj4gdXNlIG9ubHkgZGVzY3JpYmluZyBp
dGVtcy4KClRoYXQgd291bGQgYmUgZXZlbiBiZXR0ZXIuIFdpbGwgeW91IGRvIGl0PwoKPiAKPiA+
IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4gPiA+ICsgICAgICAgLmRpc2NfdGhyZXNo
ID0gMywKPiA+ID4gKyAgICAgICAucGh5Y3RsX29mZnNldCA9IFJFR19QSFlDVExfQTEwLAo+ID4g
PiArICAgICAgIC5kZWRpY2F0ZWRfY2xvY2tzID0gdHJ1ZSwKPiA+ID4gK307Cj4gPiA+ICsKPiA+
ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfdXNiX3BoeV9jZmcgc3VuNGlfYTEwX2NmZyA9
IHsKPiA+ID4gICAgICAgICAubnVtX3BoeXMgPSAzLAo+ID4gPiAgICAgICAgIC50eXBlID0gc3Vu
NGlfYTEwX3BoeSwKPiA+ID4gQEAgLTk4OCw2ICs5OTcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZAo+ID4gPiBzdW40aV91c2JfcGh5X29mX21hdGNoW10gPSB7IHsgLmNvbXBh
dGlibGUgPQo+ID4gPiAiYWxsd2lubmVyLHN1bjUwaS1hNjQtdXNiLXBoeSIsCj4gPiA+ICAgICAg
ICAgICAuZGF0YSA9ICZzdW41MGlfYTY0X2NmZ30sCj4gPiA+ICAgICAgICAgeyAuY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXVzYi1waHkiLCAuZGF0YSA9Cj4gPiAKPiA+ICZzdW41
MGlfaDZfY2ZnIH0sCj4gPiAKPiA+ID4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW5pdi1mMWMxMDBzLXVzYi1waHkiLAo+ID4gPiArICAgICAgICAgLmRhdGEgPSAmc3VuaXZf
ZjFjMTAwc19jZmcgfSwKPiA+ID4gICAgICAgICB7IH0sCj4gPiA+ICB9Owo+ID4gPiAgTU9EVUxF
X0RFVklDRV9UQUJMRShvZiwgc3VuNGlfdXNiX3BoeV9vZl9tYXRjaCk7Cj4gPiA+IC0tCj4gPiA+
IDIuMzcuMQoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
