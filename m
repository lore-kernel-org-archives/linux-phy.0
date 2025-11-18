Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69ABCEDD93
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 14:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+VYq2wNwDRxyOKBulMv8cljO+et7iUttHC6Q08qTO0=; b=uQJ5CPFOMLCOlm
	zXGvPc1qLrJ5JySOvwrpfH876ehABEaSMl2C2yfEPUgGo5VcqUO+d/aHrtOo8QtWWkWpMb/vm5fNf
	mnxpSiSzJmx+NJiiXYAD1nuWWnzVLt81PXXolqnvsjGjd/urhjDNpM4uYwxiOCwnEz9Uabi4WShoM
	I6r0mOye+B320MCL8xc/Cdb/+G+XvmEW6VAhE1R3ySPljMDuR/FcXjDLj0RrI5HCvBZ5E7wLtOnX0
	Srv/5x02K0G0irDhU15F8XdYtT+VF06H19ZoHSxG3BpDsIYFJw17tXh7t1JyFFA7eWavQ3CaB2F8h
	qWrPyuUvyy2rNQwXxwZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMSD-00000000Xhq-24oh;
	Tue, 18 Nov 2025 14:13:09 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMSA-00000000XhL-2oyl
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 14:13:08 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4775638d819so32188995e9.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 06:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763475184; x=1764079984; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lBMakZKxlIHy16Fs9qouAWNB0LpiDg2sSV52gGOgZkc=;
        b=qlU04ISYRuaOlJfvIQBIihDBx1FptcMEHXDw6nH3Xe4ucG2gAWcpBjp6YxAmsI48+b
         H7zVqbKfdvu9A5fmzatxwP1nzm3z63IJrDEBafwcAha2MiBHGbk4oeXjhfDH8DIymmgC
         zWlwvLrOpyZUxd1R6ydQlP9YlCtyAuaNEusEDkindG8TCHVN3W8969ZdUEyfbWMPFliA
         LSb2DjK6A5oghEKvRYHnaVy53PydQjt8ZX/mkovjwgjjU42C5Re8hjP/X4fi0GIcOe1K
         aamxzw+WGnuL0tSz7niasaEhAhEjjoiOc7aVOXFY5/Zn3VSARDefZ1JU4jwsF2Q4UUAM
         Y0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763475184; x=1764079984;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lBMakZKxlIHy16Fs9qouAWNB0LpiDg2sSV52gGOgZkc=;
        b=V1teymfmswepcONfevYlRC3M8hUS7RipAgu4FhKSrnWcj6/IapBZl9MoWQTi4DoYVs
         mQbzZx6zl0sZtdVi+y/BUhfb7+gByWPYk6KqJ0LfT6Di3oc8FdKMGyO30AsRju4rkS5Z
         hP+74DqP+meH4pkLeySL62nB28ehDbbitseJu+DNwIkzfebkwnu0/q7NZjpNoBGVq/Ir
         TTh6EN91yC7nui1iIZKMayza0dU7qMtuIOp/649QWNdp261a/IjSuIeNoMgv7wm6qwpL
         Zx+WKnSjvguMGfSiLgDDkqH3m7LZgBBhgia0nl/rN5PniZzk09ReJUHsmDPnc4xNSZU8
         5+AA==
X-Forwarded-Encrypted: i=1; AJvYcCUq3I1nXTSJdier75iIlkkXJ4yUVQ63dD0Eh7m/c8GQdSpH791iH2GqRE84E/3vqSJh9v32QKtPFxA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/kIWUiT9F+pbmTh6qYJ4CHLr0a+K4OnedwNRYZLy1d62DyelK
	ilLlI7wn6rulZX+bE3kqFl05WaCvoqEW1RmaezCYRNghZ4DynRcVPUy1Mbp7onRfUJQ=
X-Gm-Gg: ASbGnctK0TN2+oCwrLgdBFIC0mXJ/sttt7CMTY7RwSf/5MBkPn7IbTQ+//Q2lc/m9hF
	ReWfl8CNixxMCxqiw9bWXIZLnDD06PRZeFIFO+kUZXSQvJvCARQk8oXGMG7V5eAoJSyIvwYSsUY
	YvYQCZqIfR9ID5uZvRDTrYHeV9TYmyasK9Jk8l+cwxmFZ8NF6SFSB3pGvK/mC/eVKNF+wD/sBGQ
	TKRxkI0gl5F4/Lb+ohzrprt9IACATHYwIdv9wpEQqEsMGKwtfRFVXO1wW5H8CgcxrNgkom7R/8t
	FP8uyOoCYcoDdpQlA+6J0wfAnUj1X0lqPmdpsuKg1XMf75AiamYj03LYjO8K64ej44ccx+r/7DU
	odTy0kb7KfH63PjBOsf06PDibWTM3JFgxc+P4Hz9QHzrnTtNWzDJbEoloYdeVWKxMUOl30hRmyr
	4GYzx+vyQTvOWyTFtOQb4DXiP2BWVX+Q==
X-Google-Smtp-Source: AGHT+IFyqJfzakIXR+t0AgFWjrDkLx25IQZZUyzHUFHHX3vPDAz5QlMs2PDokF29MSSQ/p28MKoXCA==
X-Received: by 2002:a05:600c:3b0c:b0:477:7d94:5d0e with SMTP id 5b1f17b1804b1-4778feb18abmr150205545e9.27.1763475184383;
        Tue, 18 Nov 2025 06:13:04 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a0f4ff42sm130392035e9.12.2025.11.18.06.13.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:13:03 -0800 (PST)
Message-ID: <047df95e-b1b6-4e7b-89f7-d7cb69559a49@tuxon.dev>
Date: Tue, 18 Nov 2025 16:13:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
To: Neil Armstrong <neil.armstrong@linaro.org>,
 yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
 <4d486bd8-9e87-4bf2-a96f-38aa0f701c45@linaro.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <4d486bd8-9e87-4bf2-a96f-38aa0f701c45@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_061306_795958_AB976941 
X-CRM114-Status: GOOD (  18.69  )
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

SGksIE5laWwsCgpPbiAxMS8xOC8yNSAxNTo1NCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24g
MTEvNi8yNSAxNTo0MSwgQ2xhdWRpdSB3cm90ZToKPj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNs
YXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Pgo+PiBUaGUgUmVuZXNhcyBSWi9HM1Mg
c3VwcG9ydHMgYSBwb3dlciBzYXZpbmcgbW9kZSB3aGVyZSBwb3dlciB0byBtb3N0IG9mIHRoZQo+
PiBTb0MgY29tcG9uZW50cyBpcyB0dXJuZWQgb2ZmLiBUaGUgVVNCIFBIWSBpcyBhbW9uZyB0aGVz
ZSBjb21wb25lbnRzLgo+PiBCZWNhdXNlIG9mIHRoaXMgdGhlIHNldHRpbmdzIGFwcGxpZWQgaW4g
ZHJpdmVyIHByb2JlIG5lZWQgdG8gYmUgZXhlY3V0ZWQKPj4gYWxzbyBvbiByZXN1bWUgcGF0aC4g
T24gc3VzcGVuZCBwYXRoIG9ubHkgcmVzZXQgc2lnbmFsIG5lZWQgdG8gYmUgYXNzZXJ0ZWQuCj4+
IEFkZCBzdXNwZW5kL3Jlc3VtZSBzdXBwb3J0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1
IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4+IC0tLQo+Pgo+PiBU
aGlzIHBhdGNoIGlzIGJ1aWx0IG9uIHRvcCBvZiBwYXRjaGVzIDEvNywgMi83IGF0IFsxXQo+Pgo+
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUxMDIzMTM1ODEwLjE2ODg0MTUt
Mi0KPj4gY2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20KPj4KPj4gwqAgZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDY2ICsrKysrKysrKysrKysrKysrLS0t
LS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMt
dXNiMi5jIGIvZHJpdmVycy9waHkvCj4+IHJlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4g
aW5kZXggYTM4ZWFkN2M4MDU1Li4zYzA2M2U0ZGVhNDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
cGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcmVu
ZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+PiBAQCAtMTMyLDYgKzEzMiw3IEBAIHN0cnVjdCBy
Y2FyX2dlbjNfY2hhbiB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2O8KgwqDCoCAv
KiBwbGF0Zm9ybV9kZXZpY2UncyBkZXZpY2UgKi8KPj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3Qg
cmNhcl9nZW4zX3BoeV9kcnZfZGF0YSAqcGh5X2RhdGE7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGV4
dGNvbl9kZXYgKmV4dGNvbjsKPj4gK8KgwqDCoCBzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0YzsK
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcmNhcl9nZW4zX3BoeSBycGh5c1tOVU1fT0ZfUEhZU107Cj4+
IMKgwqDCoMKgwqAgc3RydWN0IHJlZ3VsYXRvciAqdmJ1czsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
d29ya19zdHJ1Y3Qgd29yazsKPj4gQEAgLTc3OCwzNSArNzc5LDI0IEBAIHN0YXRpYyB2b2lkIHJj
YXJfZ2VuM19yZXNldF9hc3NlcnQodm9pZCAqZGF0YSkKPj4gwqAgc3RhdGljIGludCByY2FyX2dl
bjNfcGh5X3VzYjJfaW5pdF9idXMoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGFubmVsKQo+PiDC
oCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2ID0gY2hhbm5lbC0+ZGV2Owo+PiAt
wqDCoMKgIHN0cnVjdCByZXNldF9jb250cm9sICpyc3RjOwo+PiDCoMKgwqDCoMKgIGludCByZXQ7
Cj4+IMKgwqDCoMKgwqAgdTMyIHZhbDsKPj4gwqAgLcKgwqDCoCByc3RjID0gZGV2bV9yZXNldF9j
b250cm9sX2FycmF5X2dldF9zaGFyZWQoZGV2KTsKPj4gLcKgwqDCoCBpZiAoSVNfRVJSKHJzdGMp
KQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIocnN0Yyk7Cj4+ICvCoMKgwqAgaWYg
KCFjaGFubmVsLT5waHlfZGF0YS0+aW5pdF9idXMpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
MDsKPj4gwqAgwqDCoMKgwqDCoCByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7
Cj4+IMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7
Cj4+IMKgIC3CoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChyc3RjKTsKPj4gLcKg
wqDCoCBpZiAocmV0KQo+PiAtwqDCoMKgwqDCoMKgwqAgZ290byBycG1fcHV0Owo+PiAtCj4+IC3C
oMKgwqAgcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcmNhcl9nZW4zX3Jlc2V0
X2Fzc2VydCwgcnN0Yyk7Cj4+IC3CoMKgwqAgaWYgKHJldCkKPj4gLcKgwqDCoMKgwqDCoMKgIGdv
dG8gcnBtX3B1dDsKPj4gLQo+PiDCoMKgwqDCoMKgIHZhbCA9IHJlYWRsKGNoYW5uZWwtPmJhc2Ug
KyBVU0IyX0FIQl9CVVNfQ1RSKTsKPj4gwqDCoMKgwqDCoCB2YWwgJj0gflVTQjJfQUhCX0JVU19D
VFJfTUJMX01BU0s7Cj4+IMKgwqDCoMKgwqAgdmFsIHw9IFVTQjJfQUhCX0JVU19DVFJfTUJMX0lO
Q1I0Owo+PiDCoMKgwqDCoMKgIHdyaXRlbCh2YWwsIGNoYW5uZWwtPmJhc2UgKyBVU0IyX0FIQl9C
VVNfQ1RSKTsKPj4gwqAgLXJwbV9wdXQ6Cj4+IMKgwqDCoMKgwqAgcG1fcnVudGltZV9wdXQoZGV2
KTsKPj4gwqAgLcKgwqDCoCByZXR1cm4gcmV0Owo+PiArwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9
Cj4+IMKgIMKgIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4+IEBAIC04NDYsNiArODM2LDE4IEBAIHN0YXRpYyBpbnQgcmNh
cl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdAo+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCArwqDCoMKgIGNoYW5u
ZWwtPnJzdGMgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X29wdGlvbmFsX3NoYXJlZChk
ZXYpOwo+PiArwqDCoMKgIGlmIChJU19FUlIoY2hhbm5lbC0+cnN0YykpCj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gUFRSX0VSUihjaGFubmVsLT5yc3RjKTsKPj4gKwo+PiArwqDCoMKgIHJldCA9
IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoY2hhbm5lbC0+cnN0Yyk7Cj4+ICvCoMKgwqAgaWYgKHJl
dCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSBk
ZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCByY2FyX2dlbjNfcmVzZXRfYXNzZXJ0LCBjaGFu
bmVsLQo+PiA+cnN0Yyk7Cj4+ICvCoMKgwqAgaWYgKHJldCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiByZXQ7Cj4+ICsKPj4gwqDCoMKgwqDCoCAvKgo+PiDCoMKgwqDCoMKgwqAgKiBkZXZtX3Bo
eV9jcmVhdGUoKSB3aWxsIGNhbGwgcG1fcnVudGltZV9lbmFibGUoJnBoeS0+ZGV2KTsKPj4gwqDC
oMKgwqDCoMKgICogQW5kIHRoZW4sIHBoeS1jb3JlIHdpbGwgbWFuYWdlIHJ1bnRpbWUgcG0gZm9y
IHRoaXMgZGV2aWNlLgo+PiBAQCAtODYxLDExICs4NjMsOSBAQCBzdGF0aWMgaW50IHJjYXJfZ2Vu
M19waHlfdXNiMl9wcm9iZShzdHJ1Y3QKPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiDCoMKg
wqDCoMKgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGNoYW5uZWwpOwo+PiDCoMKgwqDCoMKg
IGNoYW5uZWwtPmRldiA9IGRldjsKPj4gwqAgLcKgwqDCoCBpZiAoY2hhbm5lbC0+cGh5X2RhdGEt
PmluaXRfYnVzKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXQgPSByY2FyX2dlbjNfcGh5X3VzYjJf
aW5pdF9idXMoY2hhbm5lbCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycm9yOwo+PiAtwqDCoMKgIH0KPiAKPiBJIGRvbid0IHNl
ZSB3aHkgeW91IGNoYW5nZWQgdGhlIGxvZ2ljIG9mIGNhbGxpbmcKPiByY2FyX2dlbjNfcGh5X3Vz
YjJfaW5pdF9idXMoKSwKPiBtb3ZpbmcgdGhlIHJlc2V0IHNldHVwIGFuZCBoYW5kbGluZyBzaG91
bGQgYmUgZW5vdWdoLCBubyA/Cj4gClNvcnJ5LCBJIG1pc3NlZCB0byBtZW50aW9uIGl0LiBJIGRp
ZCBpdCBsaWtlIHRoaXMganVzdCB0byBhdm9pZCB0aGlzIHBhdHRlcm46CgoJaWYgKGNoYW5uZWwt
PnBoeV9kYXRhLT5pbml0X2J1cykgewoJCXJldCA9IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1
cyhjaGFubmVsKTsKCQlpZiAocmV0KQoJCQlyZXR1cm4gcmV0OwoJfQoKaW4gYm90aCBwcm9iZSBh
bmQgcmVzdW1lIHBhdGguIFRoZSBjaGFubmVsLT5waHlfZGF0YS0+aW5pdF9idXMgY2hlY2sgaXMg
bm90CmVtYmVkZGVkIGluIHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cygpLiBQbGVhc2UgbGV0
IG1lIGtub3cgaWYgeW91IHdhbnQKbWUgdG8gcmV2ZXJ0IGl0LgoKVGhhbmsgeW91LApDbGF1ZGl1
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
