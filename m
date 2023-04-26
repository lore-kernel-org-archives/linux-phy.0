Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF83C77B60
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 10:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uA9CZiJArMC5T2VUcK7pAUxpQduu+x9P7W8SZkUqb8=; b=QqX+X9SzUwzCDH
	R92XobC45JEH4PrGcCiLuXqLEGIjocKwXFBBqeav/H5HKQlKlQv/tGsUBk1U63Cxw4HNxnEj8qO/9
	6UsLOuFiVBItU4LhqjLWRY9vhQi9tmbaSPGNC+9KLWmVB1dedENB8/8g95aN9jXFPvrJulZcjb0gK
	bm7SNsuDetHjxP6mnxGmQ9im34Xu/u6JzZAMgpUT2ecrI3aYiBUnBN+4nlBpg6MY4jth6Jpm4WrxZ
	NzqA4NfxHZRVAlZN2ZNEdwEaJ6twy5i4B6mu6gla8KNsfI12llFVwFO/c04DopiI+3/juMhtscluO
	DQpVFClx7cb8Ik2GhvbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prcTH-003VlG-1o;
	Wed, 26 Apr 2023 10:33:59 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prcTB-003VeE-2v
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 10:33:58 +0000
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-76d846a4b85so2548277241.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Apr 2023 03:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1682505231; x=1685097231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1fGPJlHu6l7X7WsfJvCNS6QR0SA3h2Zw922iWfKNZI=;
        b=Usx265iOT6v3GkItV6XMI1RJds2zK7WSYjz50PJ3sA8RJnt6tLsQLuYW2LrHDbMRaD
         RXCR8AaaCRnukMDfzvKidWKkfPdBJ8AUw37ccahtk2drjUPT83q+hlgqYc4wI1toM3E1
         8ZFsSVrcHHBqf1vkDBipQ4F/pxpm0vz/cLtrdF7ReExpjEgTSIRD3iaI8AAe2X9MYCiP
         8vlVMESiGnxx1G/yJhgb0P5igOIlSAY9ekmaAocYIWZfZkCptiKT5UOGYOb69yPYL0jN
         eBjaBBrIuvmSdyDfyKQ3Bf+p6LiO3ELzfgMt6E8lRqjHOXUKQubgjd5oDd/MSDiFOJa7
         cX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682505231; x=1685097231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h1fGPJlHu6l7X7WsfJvCNS6QR0SA3h2Zw922iWfKNZI=;
        b=LlaAsmBIuXpbFW/jHgYpOKayQjKudS3kEE3EJWZS944YT3WOJvaNOgZlPB9vrcrdd8
         PcLSb1A6D46kkcNtvcg1dfoDiCl7QhrINx96QLBBCXcJRh+nMh3uNxausBbzUnvxzcFG
         SfwH5UQevQnFr48MeixPOB2K5O7LVUEgsjKijfozqxN8Yehygz4fQXr/N2QffKEQuCEw
         LJ5XPnaELQVBImIj/cRzXOM9Hkr0xKOt7DnFxGazUo/kZiGNsqbYgmTEvnl/CFZ0UqlI
         P/eepvRO0ZmM54HPMxZbg1pF/WxK3vM5DZXCoCF00o2Z5/8rOPMNAQoT710qvoNbfuE0
         /KWA==
X-Gm-Message-State: AAQBX9fHFmft2BJio3T34D+uDCEeL2Iqg6ydZdjf4kMkhT+hFdxpGsK9
	CLvzNM2uIpTH4lJwMq3Q99x/VH3KAbZgwz2EmRl1Lg==
X-Google-Smtp-Source: AKy350bLbcQ1HvoG8xLjW8UzSGSFRdqFANyqcXcuOcFFdYFn0JripAqDqG1+77edDeeYwIMoHU4hKkN7U0F6NAPVC4s=
X-Received: by 2002:a05:6102:34e2:b0:42f:cfdc:4803 with SMTP id
 bi2-20020a05610234e200b0042fcfdc4803mr9106697vsb.33.1682505231629; Wed, 26
 Apr 2023 03:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com> <20230425034010.3789376-6-quic_bjorande@quicinc.com>
In-Reply-To: <20230425034010.3789376-6-quic_bjorande@quicinc.com>
From: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Date: Wed, 26 Apr 2023 11:33:40 +0100
Message-ID: <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_033353_959024_C74C734C 
X-CRM114-Status: GOOD (  26.38  )
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

T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgNDo0MOKAr0FNIEJqb3JuIEFuZGVyc3Nvbgo8cXVpY19i
am9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4KPiBUaGUgUU1QIGNvbWJvIFBIWSBzaXRzIGlu
IGFuIG9mX2dyYXBoIGNvbm5lY3RlZCBiZXR3ZWVuIHRoZSBEaXNwbGF5UG9ydAo+IGNvbnRyb2xs
ZXIgYW5kIGEgVVNCIFR5cGUtQyBjb25uZWN0b3IgKG9yIHBvc3NpYmx5IGEgcmVkcml2ZXIpLgo+
Cj4gVGhlIFRDUE0gbmVlZHMgdG8gYmUgYWJsZSB0byBjb252ZXkgdGhlIEhQRCBzaWduYWwgdG8g
dGhlIERpc3BsYXlQb3J0Cj4gY29udHJvbGxlciwgYnV0IG5vIGRpcmVjdGx5IGxpbmsgaXMgcHJv
dmlkZWQgYnkgRGV2aWNlVHJlZSBzbyB0aGUgc2lnbmFsCj4gbmVlZHMgdG8gInBhc3MgdGhyb3Vn
aCIgdGhlIFFNUCBjb21ibyBwaHkuCj4KPiBIYW5kbGUgdGhpcyBieSBpbnRyb2R1Y2luZyBhIGRy
bV9icmlkZ2Ugd2hpY2ggdXBvbiBpbml0aWFsaXphdGlvbiBmaW5kcwo+IHRoZSBuZXh0IGJyaWRn
ZSAoaS5lLiB0aGUgdXNiLWMtY29ubmVjdG9yKSBhbmQgY2hhaW4gdGhpcyB0b2dldGhlci4gVGhp
cwo+IHdheSBIUEQgY2hhbmdlcyBpbiB0aGUgY29ubmVjdG9yIHdpbGwgcHJvcGFnYXRlIHRvIHRo
ZSBEaXNwbGF5UG9ydAo+IGRyaXZlci4KPgo+IFRoZSBjb25uZWN0b3IgYnJpZGdlIGlzIHJlc29s
dmVkIGxhemlseSwgYXMgdGhlIFRDUE0gaXMgZXhwZWN0ZWQgdG8gYmUKPiBhYmxlIHRvIHJlc29s
dmUgdGhlIHR5cGVjIG11eCBhbmQgc3dpdGNoIGF0IHByb2JlIHRpbWUsIHNvIHRoZSBRTVAgY29t
Ym8KPiBwaHkgd2lsbCBwcm9iZSBiZWZvcmUgdGhlIFRDUE0uCj4KPiBTaWduZWQtb2ZmLWJ5OiBC
am9ybiBBbmRlcnNzb24gPHF1aWNfYmpvcmFuZGVAcXVpY2luYy5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIHwgMzYgKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggNWQ2ZDZlZjM5NDRiLi44
NGJjMDgwMDI1MzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLWNvbWJvLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29t
Ym8uYwo+IEBAIC0yMiw2ICsyMiw4IEBACj4gICNpbmNsdWRlIDxsaW51eC91c2IvdHlwZWMuaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L3VzYi90eXBlY19tdXguaD4KPgo+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9icmlkZ2UuaD4KPiArCj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5LXFjb20tcW1w
Lmg+Cj4KPiAgI2luY2x1ZGUgInBoeS1xY29tLXFtcC5oIgo+IEBAIC0xMzMyLDYgKzEzMzQsOCBA
QCBzdHJ1Y3QgcW1wX2NvbWJvIHsKPiAgICAgICAgIHN0cnVjdCBjbGtfaHcgZHBfbGlua19odzsK
PiAgICAgICAgIHN0cnVjdCBjbGtfaHcgZHBfcGl4ZWxfaHc7Cj4KPiArICAgICAgIHN0cnVjdCBk
cm1fYnJpZGdlIGJyaWRnZTsKPiArCj4gICAgICAgICBzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAq
c3c7Cj4gICAgICAgICBlbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVudGF0aW9uOwo+ICB9Owo+
IEBAIC0zMTk2LDYgKzMyMDAsMzQgQEAgc3RhdGljIGludCBxbXBfY29tYm9fcmVnaXN0ZXJfY2xv
Y2tzKHN0cnVjdCBxbXBfY29tYm8gKnFtcCwgc3RydWN0IGRldmljZV9ub2RlICoKPiAgICAgICAg
IHJldHVybiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQocW1wLT5kZXYsIHBoeV9jbGtfcmVsZWFz
ZV9wcm92aWRlciwgZHBfbnApOwo+ICB9Cj4KPiArc3RhdGljIGludCBxbXBfY29tYm9fYnJpZGdl
X2F0dGFjaChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBmbGFncykKPiArewo+
ICsgICAgICAgc3RydWN0IHFtcF9jb21ibyAqcW1wID0gY29udGFpbmVyX29mKGJyaWRnZSwgc3Ry
dWN0IHFtcF9jb21ibywgYnJpZGdlKTsKPiArICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlICpuZXh0
X2JyaWRnZTsKPiArCj4gKyAgICAgICBpZiAoIShmbGFncyAmIERSTV9CUklER0VfQVRUQUNIX05P
X0NPTk5FQ1RPUikpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsKPiArICAg
ICAgIG5leHRfYnJpZGdlID0gZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZShxbXAtPmRldiwgcW1wLT5k
ZXYtPm9mX25vZGUsIDAsIDApOwo+ICsgICAgICAgaWYgKElTX0VSUihuZXh0X2JyaWRnZSkpCj4g
KyAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKHFtcC0+ZGV2LCBQVFJfRVJSKG5l
eHRfYnJpZGdlKSwgImZhaWxlZCB0byBhY3F1aXJlIGRybV9icmlkZ2VcbiIpOwo+ICsKPiArICAg
ICAgIHJldHVybiBkcm1fYnJpZGdlX2F0dGFjaChicmlkZ2UtPmVuY29kZXIsIG5leHRfYnJpZGdl
LCBicmlkZ2UsIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUik7Cj4gK30KPiArCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBxbXBfY29tYm9fYnJpZGdlX2Z1bmNz
ID0gewo+ICsgICAgICAgLmF0dGFjaCA9IHFtcF9jb21ib19icmlkZ2VfYXR0YWNoLAo+ICt9Owo+
ICsKPiArc3RhdGljIGludCBxbXBfY29tYm9fZHBfcmVnaXN0ZXJfYnJpZGdlKHN0cnVjdCBxbXBf
Y29tYm8gKnFtcCkKPiArewo+ICsgICAgICAgcW1wLT5icmlkZ2UuZnVuY3MgPSAmcW1wX2NvbWJv
X2JyaWRnZV9mdW5jczsKPiArICAgICAgIHFtcC0+YnJpZGdlLm9mX25vZGUgPSBxbXAtPmRldi0+
b2Zfbm9kZTsKPiArCj4gKyAgICAgICByZXR1cm4gZGV2bV9kcm1fYnJpZGdlX2FkZChxbXAtPmRl
diwgJnFtcC0+YnJpZGdlKTsKPiArfQo+ICsKPiAgc3RhdGljIGludCBxbXBfY29tYm9fcGFyc2Vf
ZHRfbGVjYWN5X2RwKHN0cnVjdCBxbXBfY29tYm8gKnFtcCwgc3RydWN0IGRldmljZV9ub2RlICpu
cCkKPiAgewo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gcW1wLT5kZXY7Cj4gQEAgLTM0
NTksNiArMzQ5MSwxMCBAQCBzdGF0aWMgaW50IHFtcF9jb21ib19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgcmV0
dXJuIHJldDsKPgo+ICsgICAgICAgcmV0ID0gcW1wX2NvbWJvX2RwX3JlZ2lzdGVyX2JyaWRnZShx
bXApOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiAr
Cj4gICAgICAgICAvKiBDaGVjayBmb3IgbGVnYWN5IGJpbmRpbmcgd2l0aCBjaGlsZCBub2Rlcy4g
Ki8KPiAgICAgICAgIHVzYl9ucCA9IG9mX2dldF9jaGlsZF9ieV9uYW1lKGRldi0+b2Zfbm9kZSwg
InVzYjMtcGh5Iik7Cj4gICAgICAgICBpZiAodXNiX25wKSB7Cj4gLS0KPiAyLjM5LjIKPgoKWW91
IG5lZWQgdG8gYWRkIHNvbWUgb3IgYWxsIG9mIHRoZXNlCiAgICAgICBzZWxlY3QgRFJNX0RJU1BM
QVlfRFBfSEVMUEVSCiAgICAgICBzZWxlY3QgRFJNX0RJU1BMQVlfSEVMUEVSCiAgICAgICBzZWxl
Y3QgRFJNX0RQX0FVWF9CVVMKICAgICAgIHNlbGVjdCBEUk1fS01TX0hFTFBFUgogICAgICAgc2Vs
ZWN0IERSTV9NSVBJX0RTSQogICAgICAgc2VsZWN0IERSTV9QQU5FTAoKCi9vcHQvbGluYXJvL2dj
Yy1saW5hcm8tNy41LjAtMjAxOS4xMi14ODZfNjRfYWFyY2g2NC1saW51eC1nbnUvYmluL2FhcmNo
NjQtbGludXgtZ251LWxkOgpVbmV4cGVjdGVkIEdPVC9QTFQgZW50cmllcyBkZXRlY3RlZCEKL29w
dC9saW5hcm8vZ2NjLWxpbmFyby03LjUuMC0yMDE5LjEyLXg4Nl82NF9hYXJjaDY0LWxpbnV4LWdu
dS9iaW4vYWFyY2g2NC1saW51eC1nbnUtbGQ6ClVuZXhwZWN0ZWQgcnVuLXRpbWUgcHJvY2VkdXJl
IGxpbmthZ2VzIGRldGVjdGVkIQpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29t
Ym8ubzogSW4gZnVuY3Rpb24KYHFtcF9jb21ib19icmlkZ2VfYXR0YWNoJzoKcGh5LXFjb20tcW1w
LWNvbWJvLmM6KC50ZXh0KzB4YjUwKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bwpgZGV2bV9kcm1f
b2ZfZ2V0X2JyaWRnZScKcGh5LXFjb20tcW1wLWNvbWJvLmM6KC50ZXh0KzB4YjZjKTogdW5kZWZp
bmVkIHJlZmVyZW5jZSB0byBgZHJtX2JyaWRnZV9hdHRhY2gnCmRyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1jb21iby5vOiBJbiBmdW5jdGlvbiBgcW1wX2NvbWJvX3Byb2JlJzoKcGh5
LXFjb20tcW1wLWNvbWJvLmM6KC50ZXh0KzB4MTNmYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8K
YGRldm1fZHJtX2JyaWRnZV9hZGQnCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
