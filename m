Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E55D6CA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 07:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JV+W26iKoSoamiFNL6lHDxzcj81jeShO0bV8cbJECWQ=; b=pne2Nb/Fqvqx7j
	FYnPjse4+8imcepRXHWRKZ8g/J2WzJbuFGUmcdOece0AIicwNJXjsgFRJN4bKBJ5oGfMiNHutITlZ
	RLUmt2q0UpuLNgdHmrm70MiCKvM8K+UvwYZ8HzD5rp8QY6Bmxv+8xCEnc0qaSROVM4qlvIC6WbmqJ
	zBZZIuUQ7z1QZiiEPCNVIfNxlsvjgqFqXbOvGhwpOPr5AatNjSFJmVI7kMqHe+Ixk2bozEq6XP3DU
	5OWaT6b6t5Fr/9nyfy4WikJwDD03DKJP6rKlnlfd/EuSuvClQijWGoVgaMd6i/sVLkaFRnad3K3LC
	qkds2PSi87QxQx8FQbkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM4U-00000001q6l-0t4y;
	Wed, 07 Oct 2026 07:28:14 +0000
Received: from mail-ed2-x08.google.com ([2a00:1450:4864:33::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM4O-00000001q5V-2PuX
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 07:28:12 +0000
Received: by mail-ed2-x08.google.com with SMTP id 4fb4d7f45d1cf-6ad83f018e0so2101196a12.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 00:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791358085; cv=none;
        d=google.com; s=arc-20260327;
        b=NAV1C2kTajGgmh4pompfdSZPAzUmgZs4E0zHjJF6NxokEC401Dc299YavySon+z+q+
         6zqB6LEUjausXQUvAgQaZncWSdUE13SsWsvhPdlW23C5tymx0m0oFsJEdqqEbI3PlYEE
         5GQ9NV+zuh3hiigg3l8KED9BwS2ErPOcK8SsAvaiVEvkHUhhuBbl6sZj1Ss4Le3lgskb
         TyujFpS9ZRE5HmA4otOXuTm97amZ0IeLSvi/G1d6i3V8kfHeCU9/TYFfbHUcGUyMPnmn
         XmdDcZUatTW1WoEYbp5UNKA6TJjG+OvdY4UUWHPcq0/FThWSmCsENtqtGiwyv3fRPTcy
         BzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        fh=dzVQjdYcmRHs3MkSP6vivbSiH+jVSMC8n6NC9QKX4CU=;
        b=cHYJRhnUN2EWpEmSyHVHeK9e7HgdqUF2zO0IWKnRCA+GR4PHpTmL9exbda7xjtTUSz
         tn1TFMLMu6J+HDBV1ezWAhk2+FgejSCgGQnw+M+Zyd9l666plOlADUji2zjFURFdpViP
         nbNxsibM5MdycRZ/WebTj7GqISn4CcfIw00/jqccSauimt60oMeS0BLV6Vci099cUIRs
         grWFjvhljOSVk83B4SQtEUlpq3DU4KdmvR2jCsGSvPjS0CvJLSDIyH1LoX5HLp+/gvIj
         RfLZNAFvgCmJhzOagyFYEgm9qVhniB/1Ozf31LvYOt7BdLLYQF3sbcU3pHAXMfMsm1J9
         kAjw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791358085; x=1791962885; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        b=iGYUnG8aJh3vxv5OtugzmR89CGfMXVF2izEFB+quEagKHXK507lbsjd4/MtqqQ2O01
         Qf1e2AjcZItBQqTP0thE9+W+btkzukG6CLolZ5J6BuzFryxtfkOQyFiEVlsUrMU0uqBK
         vPdFnWarC5uYdIeBuRi7RuX2D+jnJ7bOhbhSko/mokJNQu8Vk3tdtx6CwTnBLCX81SQ9
         I4gfmu+TgvT1yW/kfa/Rds0Q5236CDnsf/QEfRDhiOMBOY567ezD4mAr73EvC8yM5ANZ
         d4/eH7HAA3JAaYqcHfxBHYc8W5D3c9f7XfbV4nWTrieOd7alRoIB/NPkid9QBBHnaf6s
         fwMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791358085; x=1791962885;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        b=dpAXHOOxZr3RIon8hP6He2cRREurHY6sDGJBA5FsT6HkyvuO6zJNLjqN0Bo522cHE0
         8g3uLUbd4KhKpZSyYCIyjf0v4LqDdWnQfCzXFL+yBdvl9BtzX9afVjGG1FNyHi8kOSu7
         VekcR8CF6/iNYZJ+XVyIwAQT0zH0vo81GLUVeFclq+PiKZB2AB9KXccLx3rX8sT72YnK
         9rAKAsQUJSx16ZRnGdS/A1sNfXu0ll73TcbblMiM6BM7fQdDPiZksrOa0EGVV3u+hOBO
         CVyLtATsHRy7R+jQMEZ37xd9F68zw/5i+Rr5ZU13HhfuVn3pCBdVu8xfxnuzcMbTTraG
         OiaA==
X-Forwarded-Encrypted: i=1; AKwUvBzuEzD5KFC3/QEoCVfkWCdXT9RhPid8vHhG+6LzOf24Fex2oIbO549Qb5J4iR/3UaWkIDxoFPauqbo=@lists.infradead.org
X-Gm-Message-State: AFuF++lTXWHiLZ6Kzk4a+MkdtCRIqnZ2aRecMg+/E7gDJPqi2idOOecR
	kr4U+QsUNCmESlefZBLmTf9yfpgvkxZpufy2kkIkK5hykvvNGymYdv5CUbbx2w+eGUXuPd5RxxP
	oim+3oJZX/E/JtNv2DlkL8KwQGVYYhiPNlTi3gDr9aGyZ
X-Gm-Gg: AYBFou28aCB2o1qd3pwjUN4TR6YWaeYbJGZ/G0hELI0BNYMWAy2OO7MbJrCyFlVSUna
	ERxV0XeMkbt9rue5pj7yXkb2tyHUFkhZITUrCeT5w6flCuP4J2A2OhKapcuLTvWX4LRmffbx6V9
	Eq7Rn/hZOSj7e3oYbF3jB9bAzMyoRvEXNs5VxL/DYKS7e5/KCGgPdSZcxyp7IA/EwMgnubnva2K
	NeRkhmaenpr1EmBh0sD+1KkULUaODyNTlOkxp5brK/9EgzjhP/LcZRYUvHRyoNZgK8pN2GYBP4t
	/djdEovTdgxvtlFIN9QsBrGtdUt4PqBEgDeuLJXACJDfQFND9fpJJP5gJVPk47g2DH2A
X-Received: by 2002:a17:907:6ea8:b0:c29:659e:2fd2 with SMTP id
 a640c23a62f3a-c317bdfe7aamr131010766b.27.1791358085108; Wed, 07 Oct 2026
 00:28:05 -0700 (PDT)
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com>
In-Reply-To: <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 7 Oct 2026 15:27:54 +0800
X-Gm-Features: AclHuK9-vNcZxKo1OhLsfKqvuLHm0D_pklXBR5Ny7XJ7B7WuohnKFrZGwSHbsF8
Message-ID: <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_002808_671334_78E29332 
X-CRM114-Status: GOOD (  29.80  )
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

U2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IOS6jjIwMjblubQxMOaciDfml6Xl
kajkuIkgMDg6NTPlhpnpgZPvvJoKPgo+IOWcqCAyMDI2LzEwLzA3IOaYn+acn+S4iSAwOjI4LCBD
b2lhIFByYW50IOWGmemBkzoKPiA+IE9uIFJLMzU2OCwgdGhlIFNHTUlJIGludGVyZmFjZSBjYW4g
YmUgcm91dGVkIHRvIGVpdGhlciBHTUFDMCBvcgo+ID4gR01BQzEgdmlhIHRoZSBHUkYgcmVnaXN0
ZXIgcGlwZV9zZ21paV9tYWNfc2VsLgo+ID4KPiA+IEFkZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVj
dGlvbiBieSBpbnRyb2R1Y2luZyB0aGUKPiA+ICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiBEVCBw
cm9wZXJ0eS4KPiA+Cj4gPiAgRnJvbSB0aGUgUkszNTY4IFRSTSAoUGFydDEsIFBhZ2UgMjI5KSwg
dGhlIFBJUEVfR1JGX1hQQ1NfQ09OMAo+ID4gYml0IDEgKHBpcGVfc2dtaWlfbWFjX3NlbCkgaXMg
ZGVmaW5lZCBhczoKPiA+Cj4gPiAgICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gICAg
ICAxOiBTR01JSSByb3V0ZWQgdG8gR01BQzEKPiA+Cj4gPiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFs
dWUgaXMgMSAoR01BQzEpLiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4gPiB0aGUgZHJp
dmVyIHJvdXRlcyBTR01JSSB0byBHTUFDMDsgaWYgc2V0IHRvIDEsIGl0IHJvdXRlcyB0byBHTUFD
MS4KPiA+IElmIHRoZSBwcm9wZXJ0eSBpcyBhYnNlbnQsIHRoZSBkcml2ZXIgbGVhdmVzIHRoZSBy
b3V0aW5nIHVuY2hhbmdlZCwKPiA+IHNvIHRoZSBlZmZlY3RpdmUgdmFsdWUgaXMgd2hhdGV2ZXIg
dGhlIGJvb3Rsb2FkZXIgb3IgaGFyZHdhcmUgcmVzZXQKPiA+IGxlZnQuCj4gPgo+ID4gVGhlIGRy
aXZlciB2YWxpZGF0ZXMgdGhlIHZhbHVlIGFuZCByZWplY3RzIGFueXRoaW5nIG90aGVyIHRoYW4g
MCBvciAxLgo+ID4KPiA+IFRoaXMgaXMgbmVjZXNzYXJ5IGZvciBib2FyZHMgc3VjaCBhcyB0aGUg
QXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNoCj4gPiB1c2VzIHRoZSBTR01JSSBpbnRlcmZhY2Ug
Y29ubmVjdGVkIHRvIEdNQUMwLgo+ID4KPiA+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3Jv
Y2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDElMjBW
MS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMjkpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50
IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIC4uLi9yb2NrY2hpcC9waHktcm9j
a2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAgICB8IDQyICsrKysrKysrKysrKysrKysrKysKPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gaW5kZXggNzg0
MzM1NmE0ZGQ0Ny4uZjc2YjQ4MDA5NjczZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gQEAgLTE4Niw2ICsx
ODYsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9ncmZjZmcgewo+ID4gICAgICAgc3RydWN0
IGNvbWJwaHlfcmVnIHBpcGVfeHBjc19waHlfcmVhZHk7Cj4gPiAgICAgICBzdHJ1Y3QgY29tYnBo
eV9yZWcgcGlwZV9wY2llMWwwX3NlbDsKPiA+ICAgICAgIHN0cnVjdCBjb21icGh5X3JlZyBwaXBl
X3BjaWUxbDFfc2VsOwo+ID4gKyAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfc2dtaWlfbWFj
X3NlbDsKPiA+ICAgICAgIHN0cnVjdCBjb21icGh5X3JlZyB1M290ZzBfcG9ydF9lbjsKPiA+ICAg
ICAgIHN0cnVjdCBjb21icGh5X3JlZyB1M290ZzFfcG9ydF9lbjsKPiA+ICAgfTsKPiA+IEBAIC0y
MTIsNiArMjEzLDggQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiB7Cj4gPiAgICAgICBi
b29sIGVuYWJsZV9zc2M7Cj4gPiAgICAgICBib29sIGV4dF9yZWZjbGs7Cj4gPiAgICAgICBzdHJ1
Y3QgY2xrICpyZWZjbGs7Cj4gPiArICAgICBib29sIHNnbWlpX21hY19zZWxfcHJlc2VudDsKPiA+
ICsgICAgIHUzMiBzZ21paV9tYWNfc2VsOwo+ID4gICB9Owo+ID4KPiA+ICAgc3RhdGljIHZvaWQg
cm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnBy
aXYsCj4gPiBAQCAtMzQxLDYgKzM0NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGh5ICpyb2NrY2hpcF9j
b21icGh5X3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0IG9mX3BoCj4gPiAg
IHN0YXRpYyBpbnQgcm9ja2NoaXBfY29tYnBoeV9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnByaXYpCj4gPiAgIHsKPiA+ICAgICAgIGlu
dCBpOwo+ID4gKyAgICAgaW50IHJldDsKPiA+Cj4gPiAgICAgICBwcml2LT5udW1fY2xrcyA9IGRl
dm1fY2xrX2J1bGtfZ2V0X2FsbChkZXYsICZwcml2LT5jbGtzKTsKPiA+ICAgICAgIGlmIChwcml2
LT5udW1fY2xrcyA8IDEpCj4gPiBAQCAtMzc1LDYgKzM3OSwxNiBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX2NvbWJwaHlfcGFyc2VfZHQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgcm9ja2NoaXBf
Y29tYnBoeQo+ID4KPiA+ICAgICAgIHByaXYtPmV4dF9yZWZjbGsgPSBkZXZpY2VfcHJvcGVydHlf
cHJlc2VudChkZXYsICJyb2NrY2hpcCxleHQtcmVmY2xrIik7Cj4gPgo+ID4gKyAgICAgaWYgKGRl
dmljZV9wcm9wZXJ0eV9wcmVzZW50KGRldiwgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiKSkgewo+
ID4gKyAgICAgICAgICAgICByZXQgPSBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9j
a2NoaXAsc2dtaWktbWFjLXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKPiA+ICsgICAgICAg
ICAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIHJlYWQgc2dtaWktbWFjLXNlbCBwcm9wZXJ0eVxuIik7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKwo+Cj4gZGV2
aWNlX3Byb3BlcnR5X3JlYWRfdTMyKCkgc2hvdWxkIHJldHVybiBub24temVybyB2YWx1ZSBpZiBp
dCdzIGFic2VudC4KPiBIb3cgYWJvdXQgdGhpczoKPgo+ICAgICAgICAgc3RydWN0IHJvY2tjaGlw
X2NvbWJwaHlfcHJpdiB7Cj4gICAgICAgICAgICAgICAgIGludCBzZ21paV9tYWNfc2VsOwo+ICAg
ICAgICAgfQo+Cj4gc3RhdGljIGludCByb2NrY2hpcF9jb21icGh5X3BhcnNlX2R0Ogo+ICAgICAg
ICAgdTMyIHZhbDsKPgo+ICAgICAgICAgIHByaXYtPnNnbWlpX21hY19zZWwgPSAtMTsKPiAgICAg
ICAgICBpZiAoIWRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJyb2NrY2hpcCxzZ21paS1t
YWMtc2VsIiwKPiAmdmFsKSkgewo+ICAgICAgICAgICAgICAgICAgaWYgKHZhbCA+IDEpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVJTlZBTCwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImludmFsaWQg
c2dtaWktbWFjLXNlbAo+ICV1XG4iLCB2YWwpOwo+ICAgICAgICAgICAgICAgICAgcHJpdi0+c2dt
aWlfbWFjX3NlbCA9IHZhbDsKPiAgICAgICAgICB9Cj4KPgo+IHN0YXRpYyBpbnQgcmszNTY4X2Nv
bWJwaHlfY2ZnOgo+ICAgICAgICAgIGNhc2UgUEhZX1RZUEVfU0dNSUk6Cj4gICAgICAgICAgICAg
ICAgICBpZiAocHJpdi0+c2dtaWlfbWFjX3NlbCA+PSAwKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICByb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBpcGVfZ3JmLAo+Cj4gJmNm
Zy0+cGlwZV9zZ21paV9tYWNfc2VsLAo+Cj4gcHJpdi0+c2dtaWlfbWFjX3NlbCA+IDApOwoKSGks
CgpUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLiBJJ2QgcHJlZmVyIHRvIGtlZXAgdGhlIGN1cnJl
bnQgZm9ybSwgYmVjYXVzZQppdCBrZWVwcyAibWlzc2luZyIgYW5kICJtYWxmb3JtZWQiIGFzIHR3
byBkaXN0aW5jdCBjYXNlcy4KCkN1cnJlbnQgbG9naWM6CgppZiAoZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIpKSB7CiAgICByZXQgPSBkZXZpY2Vf
cHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIsCiAgICAgICAg
ICAgICAgICAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7CiAgICBpZiAocmV0KQogICAgICAgIHJldHVy
biByZXQ7CiAgICBwcml2LT5zZ21paV9tYWNfc2VsX3ByZXNlbnQgPSB0cnVlOwp9CgotIGRldmlj
ZV9wcm9wZXJ0eV9wcmVzZW50KCkgY2hlY2tzIHdoZXRoZXIgdGhlIHByb3BlcnR5IGV4aXN0cy4K
LSBJZiBpdCBleGlzdHMsIGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMigpIHJlYWRzIGl0LiBBIG5v
bi1pbnRlZ2VyIHZhbHVlCiAgKGUuZy4gYSBzdHJpbmcpIHJldHVybnMgYW4gZXJyb3IsIHdoaWNo
IGlzIHByb3BhZ2F0ZWQgLS0gaXQgaXMgbm90CiAgc2lsZW50bHkgdHJlYXRlZCBhcyAiYWJzZW50
Ii4KLSBUaGUgcmFuZ2UgY2hlY2sgaXMgZG9uZSBsYXRlciwgaW4gcmszNTY4X2NvbWJwaHlfY2Zn
J3MgU0dNSUkgY2FzZSwgc28KICBhIGJhZCB2YWx1ZSBvbmx5IGZhaWxzIHdoZW4gU0dNSUkgaXMg
YWN0dWFsbHkgdXNlZC4gVGhhdCBrZWVwcyBub24tU0dNSUkKICB1c2VycyAoUENJZSwgU0FUQSkg
d29ya2luZywgYW5kIGxlYXZlcyByb29tIGZvciBmdXR1cmUgU29DcyB0aGF0IG1heQogIHN1cHBv
cnQgYSBkaWZmZXJlbnQgc2V0IG9mIE1BQ3MuCgpXaXRoIGludCArIC0xIGFzIHRoZSAiYWJzZW50
IiBzZW50aW5lbCwgYSBEVCB2YWx1ZSBsaWtlIDB4RkZGRkZGRkYgd291bGQKd3JhcCB0byAtMSBh
bmQgYmUgbWlzdGFrZW4gZm9yICJhYnNlbnQiLCBieXBhc3NpbmcgdGhlIHJhbmdlIGNoZWNrLiBU
aGUKdTMyICsgcHJlc2VudCBmbGFnIGF2b2lkcyB0aGF0IGFtYmlndWl0eS4KClNvIEknZCBsaWtl
IHRvIGtlZXAgdjEzIGFzLWlzLiBMZXQgbWUga25vdyBpZiB5b3Ugc3RpbGwgZmVlbCBzdHJvbmds
eQphYm91dCBpdC4KClRoYW5rcywKQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
