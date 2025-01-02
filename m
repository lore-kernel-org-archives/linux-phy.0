Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F430E77188
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 15:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BaCGHcBzrSDjT3l9KJxvcn3mvpa2ESHthcJClww9mg=; b=SdVsP+LOKwDOny
	toke2jomY/ePcRb9kvSJBFL7/liltBXIQyMP5JZaDitxoGenuCET2RfFUlbnoJCaKUDfhZDgrWRMB
	lv8onFT6CKkaa0QAsKw8zp2OKoTD4e8YFe7vvcUo41fENRzZaPviwbOXS2iXkwlwUlMKV94+yZ/kd
	BdkGYVb+xn0/FM8Gbv9XOxPmhcz+fb/1wyLySBOx1GxiKKHT2ObuOGc3EWb5XMXIpVSLgfPIEL0Hy
	2wwZGps40Xge6Clw1O3/epPTApJdIUwBqHY4oCHmQRBg5bCDEygflHRxUJoWVpmjZgmprKS6er5lY
	tCuGiuN1H1ug0Qq7OXDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTMkB-0000000AeWa-0sJ5;
	Thu, 02 Jan 2025 15:04:15 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTMk9-0000000AeW0-1HlP
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 15:04:14 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so12797376a91.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jan 2025 07:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735830252; x=1736435052; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y+hYU60o4hzvELd0On7/goN8mKWqhV4ks7dF5AmzLEA=;
        b=ef8ao4tlINE/+APshPmT1X71ASZ8ZbfyyLUW78rIzcJbGjzkg616csg23IusVzkWQr
         QTBzxeB9ow/kYOLqT3y9cpjfMMBGAOZuvFcOi9bzSxARkl3dX6im5Quv2icUQnPv17Je
         0YZyTIfivUvKrkCe/eEF3uzppbGBcIj/wqmXBYnkJP8+VwGHrA1mpIYHNY7B4abcZ+AR
         hpJ21iZ46Nknbjt1fAFZAEFQ7n1JImFqiwK53itMTo9Jjuzm3T8SEKh2ts3Hr/m2TqOE
         930YeqkpzHhj+aQWzFk6hTjRtslL/X9q6LRxmTaFrz7KBwgY0B4+gC5/7TsMWV4zUoRL
         QE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735830252; x=1736435052;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y+hYU60o4hzvELd0On7/goN8mKWqhV4ks7dF5AmzLEA=;
        b=l3/U7K1fKb30w9soL6ZckoLKYhLyR3N0ghEF02q5WUKlpyu771XEA9TwnvZs1z3eYw
         qAqUsi1Hlon01B696DHlxj6dkJGt86Dl7GNHJnYa97tAchB6L0eZ7rtvlpuSA29q1dX2
         3KJjOQYmmpish8v+TFi67275E6q8WtEGNnvm3mEOnd1H2360JXUH/xVMFgEnphy/Al6s
         1L8i883tWeG6q7zFfkl4SpIpB96zx9lyCSpXwuA659NzKj4Vm16jC6Bhgu9Tm/sxSknS
         51cfL0ObusVMVoixBCEdHROpVXelXuE6NhTjuk/ctsfp2Gi/IwMy+1u+5SgnEKekzBDr
         K61g==
X-Forwarded-Encrypted: i=1; AJvYcCU1+VWiHWMV+NeNUn9CeG8YR9DEcZZI61TCGnoq2Lxnuz7lmzqUUYeAkEYujA+h6avLx6U7aNPFgvo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpSpDtFEggvp1cQNwet94f2cN3UdF82aC7LMO5w8YM1LkjZogL
	T2d1YuQ0tHlSuQDzTVe/NyUaOfpTfNEXzj4+JMs96ZKYYc5w+FW0kvv8metI/hih1xDn99tP2Ct
	sx6bDKqnipjYJbOu4Ww/FEOm3wPiYQQ==
X-Gm-Gg: ASbGncuZfz4kysUGhN95O2Iw+A586ZyXnloN7EIwI3+zbnVKPQPgQ7Dvors/nA6iCRy
	d+LpT8eXX0alhPUAxQq5WyScumHo9Ie9TIBngVw==
X-Google-Smtp-Source: AGHT+IFcUzEZyZ7gX22nI6QQsGDbnZtgR+BiX0DoE+KELoBR8ufeSMC47quMax/3N6DoZKXUfnxFrzTvwGeMA/1Ez6s=
X-Received: by 2002:a17:90b:2545:b0:2ee:a76a:820 with SMTP id
 98e67ed59e1d1-2f452e3eebamr64652298a91.18.1735830251621; Thu, 02 Jan 2025
 07:04:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com> <Z3aDU_dhfgEHlL4u@atmark-techno.com>
In-Reply-To: <Z3aDU_dhfgEHlL4u@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 2 Jan 2025 09:04:00 -0600
Message-ID: <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Pei Xiao <xiaopei01@kylinos.cn>, geert@linux-m68k.org, aford@beaconembedded.com, 
	arnd@arndb.de, frieder.schrempf@kontron.de, kishon@kernel.org, 
	l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_070413_349502_5583E05C 
X-CRM114-Status: GOOD (  22.90  )
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

T24gVGh1LCBKYW4gMiwgMjAyNSBhdCA2OjE14oCvQU0gRG9taW5pcXVlIE1hcnRpbmV0Cjxkb21p
bmlxdWUubWFydGluZXRAYXRtYXJrLXRlY2huby5jb20+IHdyb3RlOgo+Cj4gQWRhbSBGb3JkIHdy
b3RlIG9uIE1vbiwgRGVjIDMwLCAyMDI0IGF0IDA4OjExOjE2UE0gLTA2MDA6Cj4gPiA+IGluZGV4
IDVlYWM3MGExZTg1OC4uM2U0ZDFhNTE2MGVhIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4gPiArKysgYi9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4gPiBAQCAtMzQxLDcgKzM0MSw3
IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZz
bF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGJy
ZWFrOwo+ID4gPiAgICAgICAgIH0KPiA+ID4KPiA+ID4gLSAgICAgICB3cml0ZWIoRklFTERfUFJF
UChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwo+ID4g
PiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgPT0gNCA/
IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4gPgo+ID4gVGhlIGZv
ci1sb29wIGFib3ZlIHRoaXMgbGluZSBzdGF0ZXM6ICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBk
aXYrKykKPiA+IEhvdyBjb3VsZCB0aGlzIGV2ZXIgcmVhY2ggND8gIElmIGl0IGRpZCByZWFjaCA0
LCB0aGUgY2FsY3VsYXRpb24gZm9yCj4gPiBpbnRfcGxsY2xrIHdvdWxkIG5lZWQgdG8gYmUgcmVj
YWxjdWxhdGVkIHNpbmNlIGludF9wbGxjbGsgPSBwY2xrIC8gKDEKPiA+IDw8IGRpdik7Cj4KPiBC
dXQuLi4gZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYrKykgZG9lcyByZWFjaCA0LCBpZiB0aGUg
YnJlYWsKPiBjb25kaXRpb24gZGlkbid0IG1hdGNoLCB3aGljaCBpcyBzb21ldGhpbmcgdGhlIGNv
bXBpbGVyIGNhbm5vdCBlbnN1cmUKPiBoZXJlLgo+Cj4gVGhlIG9sZCBjb2RlIHdvdWxkIGp1c3Qg
ZmFsbCBvdXQgb2YgYW55IG9mIHRoZSBzd2l0Y2ggY2FzZXMgYW5kIGZhbGxiYWNrCj4gdG8gZGl2
ID0gMSBpZiBwaXhjbGsgPiAyOTcwMDAwMDAsIHdoaWNoIGlzIGxpa2VseSBpbmNvcnJlY3QsIHNv
IGluIHRoYXQKPiBzZW5zZSBqdXN0IHBhZGRpbmcgdGhpcyB0aHJvdWdoIGAmIDNgIGFuZCBwcmV0
ZW5kaW5nIGl0IHdpbGwgbmV2ZXIKPiBoYXBwZW4gaXMgcHJvYmFibHkgYWNjZXB0YWJsZSwgYnV0
IHRoaXMgb3VnaHQgdG8gaGF2ZSBhIGJldHRlciBjb21tZW50Cj4gdGhhbiB3aGF0IFBlaSBqdXN0
IHNlbnQuCgpNYXliZSB3ZSB1c2UgdGhlIE1BWCBmdW5jdGlvbiB0byBzZXQgZGl2ID0gbWF4KGRp
diwzKTsKCj4gKHRoaXMgd2FzIGNvcnJlY3Qgd2l0aCB0aGUgb2xkIGxvb2t1cCB0YWJsZXMsIEkn
bSBub3Qgc3VyZSBpZiB3ZSBjYW4ndAo+IGNvbXB1dGUgYW55IGhpZ2hlciBmcmVxdWVuY2llcyBu
b3c/KQo+Cj4gTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0byBhY3R1YWxseSBjaGVjayBhbmQgaGFu
ZGxlIHRoaXMgc29tZWhvdyBzaW5jZSBJCj4gZG9uJ3QgdGhpbmsgdGhpcyBwYXJ0IG9mIHRoZSBj
b2RlIGlzIHRoYXQgcGVyZm9ybWFuY2UgY3JpdGljYWwgdGhhdCB3ZQo+IGNhbid0IGFmZm9yZCBh
biBleHRyYSBpbnN0cnVjdGlvbiwgZS5nLiBzb21ldGhpbmcgbGlrZSB0aGF0Ogo+IGlmIChXQVJO
X09OQ0UoZGl2ID09IDQsICJwaXhjbGsgJXUgb3V0IG9mIHJhbmdlIiwgcGNsaykpCj4gICAgICAg
ICAoYXBwcm9wcmlhdGUgZmFsbGJhY2sgb3IgcmV0dXJuPykKPgo+IGJ1dCBJIGhhdmVuJ3Qgc3Bl
bnQgdGhlIHRpbWUgdG8gYWN0dWFsbHkgY2hlY2sgc28gd2lsbCBsZWF2ZSB0aGF0IHVwIHRvCj4g
eW91Lgo+Cj4gVGhhbmsgeW91IGJvdGgsCj4gLS0KPiBEb21pbmlxdWUKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
