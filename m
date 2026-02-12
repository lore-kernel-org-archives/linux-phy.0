Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 096B4EB48FC
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 10:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xliqnY26qLcGaBw52VsYvmZQ5XTCxooNBYtrtkOwL64=; b=IMTA2U+R3plr9f
	9Z8Ut9xY92XoXcPr2TrYTywYMJ4gtbXSXjksY1rfGwtBCYj9hk4ESPIjMbF/w3GyZzfy79Z4KgzLX
	PG6LracL2LnkiqC6/9SLYQLXupU2UgALkahz/JnV8jhT8bjJq1DttYvOmfOCX5gx0Ge5SN/+UQ60k
	wcX9aCCATc8msCw3UbLPvSqFT5K5Z+OEhXVOK4la0yEUN3QrPHSTw3IYu+D6OmEdkCVe5fvF8bsK4
	Doy18cVLYhfnkYnWv4guvU/PSWJCNjGZc0r9RdL1Zm8pv0q/7XEFrtCMy63gT0iZJD14iw1G1ZMPK
	2jnQhngjyUDOmp+Cilwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU7K-00000001x1I-3msS;
	Thu, 12 Feb 2026 10:40:16 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU7I-00000001x0r-1oYn
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 10:40:13 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-59e5eaa491cso1683068e87.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 02:40:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770892810; cv=none;
        d=google.com; s=arc-20240605;
        b=As2BmF5ZV4Q2c994AsWOygOJpV5gEnHxo9gFj2rhILBDYloV0mN2Rn/1GSE0UjrYOL
         S6ZIp4HErD8HMZBIGDqIHT+fIwHMS/kGzLICcb3t/5d/mCWwqSTxJbHqVH01Wr+adYaQ
         XVTVj8XOQ/8kssRboK6LU7XnkTtg/FNNmeNG4dVVb9V9EyRywrfhs8BzjevEwS740K4U
         qiMAwfX3CLnxCMq6Rh3kq3cQm0xP0W6uEDIhzlePg1yRRuI5P5clCGjBqTh0WrklS+t1
         3Z7C0O4k2ey14aZvbuQWhfxIAmz2UE1jbJQatKOL5WJ3A6PE2LTFYdGHslIfIVrg/psN
         i+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2QFiFFZSy2peF3P/wq5YLTidjl6EH3wfnbLnCbW9XTY=;
        fh=mLV01n1pP932WVU5VRVOx2lsX6zYqBaMaRjdShrpS64=;
        b=HofBkqWNIJ9QIfOM496+cBaHgzt8BT8eqmgEKNhe2NIvXnBy/M5SEmCYG7lMLzfHCf
         ai6eR/H2dti3ZvJY2L0lZGXqgjkrI7WU6q6dn475zU78dDrrMpFeLKFckm7ZxROBpOWU
         bcCoFIrV3NUCxC1AAHtqHCTYppQjSEBKjyZw9oKdvI30X8p47MYdCzXO8OjgC555ts1U
         VuVQbq9/POWQOIsglkxypN6PmGBjLJKXkH4c2TSdjoAg4275VY7njzsfxHKGPv9OP6oz
         v1C8phGAZ6+8Ixs6wVySN2xurs8slJFFoWhqJG+Px6omhmq+RqLytA6WvgrHyPUCqIfp
         viNg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770892810; x=1771497610; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2QFiFFZSy2peF3P/wq5YLTidjl6EH3wfnbLnCbW9XTY=;
        b=TbMuTBNF6enVnpXBgEULJ4/rTj6nL66t0tbLxOseclSdHYYWewivK0xNXYWHTf8KMv
         5K0aEqbA1yq6VS/YHhiMqzXHc/BPftL+H3Zfvo8h1/RVM6geT2dmZhDWl2jzAJ+ukbl2
         gKMMt8g4fPoHmlaavHXD//jUYv8dv7OKGw4NsICMeyG9mtST9DukgHtn+LHGsTnmFc4x
         edPRnUrJ1w4bGXeMW+qkcCOIQReV9giikFfkmtAwbrmbWArqGxM8cwwqB17umxF7n/Dx
         yVu6eh3zF1CeN7pmC6tOqKuAwU3nWn2td7Aa5SpEfIdV30hAlBfXc4LP7nNjkyV3f2Px
         yUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892810; x=1771497610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2QFiFFZSy2peF3P/wq5YLTidjl6EH3wfnbLnCbW9XTY=;
        b=U5H2ivYFL5Z9wSA1YEaCNMuMfCrOl6liP258XIyMGQN5TNFDoKosowuy5Nm3ujgCVn
         xcmYi+fG5bD71uU4/X4+Ixe0Nx4QcmLmHO0B/S3voS8ceVP615ND5G6Zkp/jqg3RVo9G
         q9gbqoNyfoLQuc8eCYG9I1IjL1c4AZe7JrWLKitP0+cjgpse4sF6Ct7YFvTKrQe7PuDf
         az/xyHF7Rj1OHWFoNlt1dven9M6hqTVAroAUdrzpafJ/Ee9mBSfSEmxnnNi5+H3bVWO/
         VJrUhapZDzhVnWniVDoDZZMD5QMflpxL2OVH5uLDdxs+lSp4TVRKb7qNEye2lEDKD1OY
         Onmw==
X-Forwarded-Encrypted: i=1; AJvYcCX3u2vk7QxRM9nlOgbYnZv4zPlVZDNm+6UgI1zi//WKAMiIbpAVIRzq95XIV14LE3jDEJXQ0/3aonE=@lists.infradead.org
X-Gm-Message-State: AOJu0YynTOP3vAGOYg4crohb40QV0p1Ju8+IqhDxqL9oS/B/CTbkfmuR
	oeNyGOWoJ+GTqT6EzcSx5wV4EjWeM7aHbNkUUNyaBdPsO48DW7keXYg17TWcUKFNWHWZozH6VD/
	czq/K84xzz2bP7Sn2pIwZP1AXMvdlsM6r/Y+YL59Rrw==
X-Gm-Gg: AZuq6aIcFXTi8pPJdopoFwgirIIAld+XUWz/WRvClYM5zQGEOAXVwCxC0+7HGR3uSSV
	G6tL72TYe0h4qfzpMqglM93tQStOMnHHkr+FoY8zGeHTXVR1QLGpOSrO9LLJprBTg+BpYwLXG2/
	5WOEGUSqPGnZ3rpioB4T1v2CS8sFDuIr18isJS7IFErVz89m5DxJ6R3mdi4aSiAJJauXEkBSQ3K
	2MIXDnmqgKQhvbnBrF3FTsHT+pn3Rfkf5op/8xz2IUnUrTX9EI5IZcrSdmGFrnZvFF1r9pZjTkA
	WSI4ok5G
X-Received: by 2002:a05:6512:3d1b:b0:59d:f69e:16c2 with SMTP id
 2adb3069b0e04-59e640214bfmr777362e87.12.1770892809915; Thu, 12 Feb 2026
 02:40:09 -0800 (PST)
MIME-Version: 1.0
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com> <aYyrsPTH1923jV7y@vaman>
In-Reply-To: <aYyrsPTH1923jV7y@vaman>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Feb 2026 11:39:31 +0100
X-Gm-Features: AZwV_QgmPkOET-FDUx-HmcWBF5gAKY3tXEOlKsTxUDKVx9vpnPTXKu6513pj8u4
Message-ID: <CAPDyKFo92pOimvtGdN4yvFtFkc3vB+ex2OH10WmoKXcVSS+iAA@mail.gmail.com>
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local devm_mux_state_get_optional()
To: Vinod Koul <vkoul@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Vladimir Oltean <olteanv@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Josua Mayer <josua@solid-run.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-next@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_024012_510200_E0C7E07B 
X-CRM114-Status: GOOD (  22.45  )
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

T24gV2VkLCAxMSBGZWIgMjAyNiBhdCAxNzoxNywgVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBPbiAxMC0wMi0yNiwgMTQ6MzQsIFVsZiBIYW5zc29uIHdyb3RlOgo+ID4g
T24gVHVlLCAxMCBGZWIgMjAyNiBhdCAxMTo1MywgR2VlcnQgVXl0dGVyaG9ldmVuCj4gPiA8Z2Vl
cnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgo+ID4gPgo+ID4gPiBOb3cgdGhlIG11eCBjb3Jl
IHByb3ZpZGVzIGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbCgpOgo+ID4gPgo+ID4gPiAgICAg
ZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzo5NDQ6MTogZXJyb3I6IHN0
YXRpYyBkZWNsYXJhdGlvbiBvZiDigJhkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWzigJkgZm9s
bG93cyBub24tc3RhdGljCj4gPiA+ICAgICAgZGVjbGFyYXRpb24KPiA+ID4gICAgICAgOTQ0IHwg
ZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hh
ciAqbXV4X25hbWUpCj4gPiA+ICAgICAgICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fgo+ID4gPiAgICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5
LXJjYXItZ2VuMy11c2IyLmM6MjA6Cj4gPiA+ICAgICBpbmNsdWRlL2xpbnV4L211eC9jb25zdW1l
ci5oOjY0OjE5OiBub3RlOiBwcmV2aW91cyBkZWNsYXJhdGlvbiBvZiDigJhkZXZtX211eF9zdGF0
ZV9nZXRfb3B0aW9uYWzigJkgd2l0aCB0eXBlIOKAmHN0cnVjdCBtdXhfc3RhdGUgKihzdHJ1Y3Qg
ZGV2aWNlICosIGNvbnN0IGNoYXIgKinigJkKPiA+ID4gICAgICAgIDY0IHwgc3RydWN0IG11eF9z
dGF0ZSAqZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29u
c3QgY2hhciAqbXV4X25hbWUpOwo+ID4gPiAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ID4KPiA+ID4gRml4IHRoaXMgYnkgZHJvcHBp
bmcgdGhlIHRlbXBvcmFyeSBsb2NhbCB3cmFwcGVyLgo+ID4gPgo+ID4gPiBGaXhlczogYWQzMTQz
NDhjZWI0ZmUxZiAoIm11eDogQWRkIGhlbHBlciBmdW5jdGlvbnMgZm9yIGdldHRpbmcgb3B0aW9u
YWwgYW5kIHNlbGVjdGVkIG11eC1zdGF0ZSIpCj4gPiA+IEZpeGVzOiA4YmI5MmZkN2EwNDA3Nzky
ICgicGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogVXNlIG11eC1zdGF0ZSBmb3IgcGh5cnN0
IG1hbmFnZW1lbnQiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4KPiA+IFRoYW5rcyBHZWVydCBmb3IgaGVscGluZyBv
dXQhCj4gPgo+ID4gPiAtLS0KPiA+ID4gICAtIGFkMzE0MzQ4Y2ViNGZlMWYgaXMgaW4gbW1jL25l
eHQsIGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2VudAo+ID4gPiAgICAgaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvMjAyNjAyMDkxMzM0NDEuNTU2NDY0LTEtdWxmLmhhbnNzb25AbGluYXJvLm9y
Zwo+ID4gPiAgIC0gOGJiOTJmZDdhMDQwNzc5MiBpcyBpbiBwaHkvbmV4dAo+ID4KPiA+IFZpbm9k
LCBkbyB5b3Ugd2FudCB0byBwaWNrIHVwIHRoZSAkc3ViamVjdCBwYXRjaCBhcyBhIGZpeCBmb3Ig
Ny4wLXJjMQo+ID4gb3IgZG8geW91IHByZWZlciBtZSB0byBoYW5kbGUgaXQ/Cj4KPiBTaG91bGQg
SSBkcm9wIHRoZSA4YmI5MmZkN2EwNDA3NzkyIGFuZCBpdCBtYWtlcyB0aGluZ3MgZWFzaWVyIGZv
cgo+IGV2ZXJ5b25lIGFuZCB0aGVuIHdlIGNhbiBwaWNrIGZpeGVkIGNvbW1pdCBmb3IgNy4xIGN5
Y2xlLi4KCldlbGwsIG15IHB1bGwgcmVxdWVzdCBmb3IgTU1DIHdhcyBicm9rZW4gKHRoZSBtdXgg
cGF0Y2hlcyBkaWRuJ3QgZ2V0CnByb3Blcmx5IHRlc3RlZCBpbiBsaW51eC1uZXh0LCB1bnRpbCBp
dCB3YXMgdG9vIGxhdGUpLCBzbyBMaW51cyB3aWxsCm5vdCB0YWtlIGl0LgoKQXQgdGhpcyBwb2lu
dCBJIHdvdWxkIHNheSB0aGF0IDhiYjkyZmQ3YTA0MDc3OTIgaXMgc3RpbGwgYSBiaXQKcHJvYmxl
bWF0aWMgYXMgaXQgdXNlcyB0aGUgc2FtZSBuYW1lIG9mIHRoZSBoZWxwZXIgdGhhdCB0aGUgbXV4
IGNvcmUKaW50ZW5kcyB0byB1c2UuIEl0IHdvdWxkIGJlIGJldHRlciB3aXRoIGEgcGh5IHNwZWNp
ZmljIG5hbWUgZm9yIGl0LCBzbwppdCBiZWNvbWVzIGVhc2llciB0byBjb252ZXJ0IHRvIHRoZSBj
b21tb24gbXV4IGhlbHBlciwgbGF0ZXIgb24uCkFsdGhvdWdoLCBhdCB0aGlzIHBvaW50IGl0J3Mg
c3RpbGwgb2theSBhcyBpcywgYXMgd2Ugd2lsbCBuZWVkIHRvCmRlZmVyIHRoZSBtdXggY29yZSBj
aGFuZ2VzIHRvIHY3LjEgYW55d2F5LgoKU28gdXAgdG8geW91IQoKS2luZCByZWdhcmRzClVmZmUK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
