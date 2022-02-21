Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE76C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vaUrpWn6EW9MxuibDEmPufp51iPmw41h2Tsum/WlUQ=; b=n6tew+tSYRLkkX
	wpRstXcNuaI/EKWUKig0cuL4Y3TRDHVQLAu7SNIQymtQb8N+rvRZ+KvCH7cwBqkuKr5p2cvAZwl2B
	y/XRP74+KvW8lKO0xzOy43EzVgwVYCXYWk3+xxkOYVN4RfcJQR64EuD7lzezp9AFWtjSRoiVYTwsh
	lSrwNf/QMiuZMA6h8TT6K69JU4mE1gNIwYpUzvk+83Tvd2cSLqu8pS5DdBZDYVfsQUO0JEARQEIH3
	A3/+YTCiZxho6WCk3sLy40bkMpIK4pRLakvQRgGgEtLqLbC1TR8Wnv+yvlaUYMzTXA6egNqJbMM5x
	vwbFGNE7sSI34AfZAYaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9Au-0064Cf-Or; Mon, 21 Feb 2022 13:56:24 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM8jM-005uLi-9P
 for linux-phy@lists.infradead.org; Mon, 21 Feb 2022 13:27:57 +0000
Received: by mail-wm1-x333.google.com with SMTP id n8so9500989wms.3
 for <linux-phy@lists.infradead.org>; Mon, 21 Feb 2022 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/lGIfMGk1oVr2+u1/5qKv/kN5Orfd9go72p5+5s/Q1Q=;
 b=Nn23Z3VJQgFV/uNeTp2uTp/Mpb76j7vhPK0nI2byWaEp2tI1bKPWr4+pk5pbqkHpDg
 HQlS+z9Oiw8FNgfxvncdtmqlQgI3ccP4XXIQkpKj8UA8vDB9+GZC0ZzrJV+KiyO1+/py
 +ULXb/rd2IH+UeQaYsWm2UwcKP27BDuNuOxAxRM4Xf7ltHDyAQ/6BcQmKV32iHhA8oUk
 VIBmldm8FfoJaZ8b8ZFgcF4d3ayOh5glmC/vTW4YOJ80zTrfk3TNgVcbd1ezM/1B7fVs
 9Me1mk4gyQjTmr0FyoUORZSAYuWhiT677ZuFvsA3tRgh/9DcCce8MnLKGLzVS3FXZA1q
 SdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/lGIfMGk1oVr2+u1/5qKv/kN5Orfd9go72p5+5s/Q1Q=;
 b=6BMWkcbBA/HmY+ewrvX9DKGDhOMxYJ3uJf3GVLHlwvyRJAR4qv2lm3cd5LZyubbd/K
 7AsqnB1TxO0JgZ0FFmfW2yxNHiFkiN3YIIGZHeAHzywfBMgveCFXYpLSMxeYzqdmFvcx
 pyaOt0zm63xkVmqUg4wrGzre8horo1MHCj23W3X/+Pig8T96tgwdJUld6QCbNiBFKYmo
 Buk4b3GvU1mLJT3HQmaDMzNjtQ31qBbEqGaglJTZjjx9WEB32NOPyGF3gFjNVj2O/vmO
 WvboOmxlIv5/xRqKqAnajx7uCyGr5gXZqbF0IkiM2/bcIDGAlyvv7tWu5J4QEWHKz3RZ
 1zLg==
X-Gm-Message-State: AOAM533JqPJnIStRiOfkWbpuZKGgZuarCNMv/SR+HDGm6CM2IkXxpfx4
 vF64EOVuzlIS5/cD1LCrqQdo7Q==
X-Google-Smtp-Source: ABdhPJwF5QWnYt1zOPAojpFO1VDPsFZ4MZKwOYNkOiOQlcod81UDKpEXWWBm+3GFWGQFtL4+tnSMvQ==
X-Received: by 2002:a7b:c196:0:b0:37c:91e0:85f3 with SMTP id
 y22-20020a7bc196000000b0037c91e085f3mr21240303wmi.172.1645450072472; 
 Mon, 21 Feb 2022 05:27:52 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id n15sm24583839wri.80.2022.02.21.05.27.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 05:27:52 -0800 (PST)
Date: Mon, 21 Feb 2022 13:27:50 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Roger Quadros <rogerq@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhOTVrrzYMMC7DKL@google.com>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
 <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
 <YhOIHARSdIliVWjW@google.com>
 <7448b9b3-78f9-6f33-ae8d-d099bc64abe4@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7448b9b3-78f9-6f33-ae8d-d099bc64abe4@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_052756_376562_6A6DA8B3 
X-CRM114-Status: GOOD (  17.63  )
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

T24gTW9uLCAyMSBGZWIgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gT24gMjEv
MDIvMjAyMiAxMzozOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gTW9uLCAyMSBGZWIgMjAyMiwg
Um9nZXIgUXVhZHJvcyB3cm90ZToKPiA+IAo+ID4+IE9uIDIxLzAyLzIwMjIgMTI6MDcsIEtyenlz
enRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPj4+IEVtYWlscyB0byBSb2dlciBRdWFkcm9zIFRJIGFj
Y291bnQgYm91bmNlIHdpdGg6Cj4gPj4+ICAgNTUwIEludmFsaWQgcmVjaXBpZW50IDxyb2dlcnFA
dGkuY29tPiAoIzUuMS4xKQo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20+Cj4gPj4KPiA+PiBUaGFu
a3Mgc28gbXVjaCEKPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFJvZ2VyIFF1YWRyb3MgPHJvZ2Vy
cUBrZXJuZWwub3JnPgo+ID4gCj4gPiBJIGFzc3VtZSB5b3UgbWVhbiBBY2tlZC1ieSAoaWYgeW91
IGFyZSB0aGUgbWFpbnRhaW5lcikgb3IgUmV2aWV3ZWQtYnk/Cj4gPiAKPiA+Pj4gLS0tCj4gPj4+
Cj4gPj4+IFJvZ2VyLAo+ID4+PiBZb3Ugc2hvdWxkIGFsc28gYWRkIGEgbWFpbG1hcCBlbnRyeSBm
b3IgeW91ciBpbmFjdGl2ZSBlbWFpbHMuCj4gPj4KPiA+PiBPSy4gSSB3aWxsIHNlbmQgb3V0IGEg
cGF0Y2ggZm9yIHRoaXMuIFRoYW5rcyBmb3IgdGhlIGhpbnQuIDopCj4gPj4KPiA+Pj4gLS0tCj4g
Pj4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvdGksajcyMWUtc3lzdGVtLWNvbnRyb2xs
ZXIueWFtbCAgICAgfCAyICstCj4gPj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3RpLG9tYXAtdXNiMi55YW1sICAgICAgICAgfCAyICstCj4gPj4+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3RpLGo3MjFlLXVzYi55YW1sICAgICAgICAgfCAy
ICstCj4gPj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3RpLGtleXN0
b25lLWR3YzMueWFtbCAgICAgfCAyICstCj4gPj4+ICA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gV2hhdCdzIHRoZSBtZXJnZS1wbGFuIGZv
ciB0aGlzIEtyenlzenRvZj8KPiAKPiBGaXJzdC1pbi1maXJzdC1zZXJ2ZWQ/IDopIG9yIFJvYj8K
PiBJdCdzIGEgc21hbGwgY2hhbmdlIGFuZCBJIHRoaW5rIG5vbi1jb250cm92ZXJzaWFsLCBzbyB3
aG9ldmVyIGNvdWxkIHBpY2sKPiBpdCB1cCBmaXJzdCwgc2hvdWxkIGRvIGl0LgoKSSdtIGluY2xp
bmVkIHRvIGFncmVlLgoKQWNrZWQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+
Cgo6KQoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpQcmluY2lwYWwgVGVjaG5pY2FsIExlYWQg
LSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
