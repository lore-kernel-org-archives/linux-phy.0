Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49EB5C77B61
	for <linux-phy@archiver.kernel.org>; Mon, 24 Apr 2023 20:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vG3/9S8+AeVREjBMHZRnYc9T2wXcVRf8jsCHKkz8Yc8=; b=rPTdZgOgaFK4vT
	CRtXHx5I01hbif9XJhVb7IUbUyFEDKZQ3M1f+1BFG5Ao9PC37VRJOYQWUVpqSRnEcUipwVsyl/5IK
	fsw9CAHg25OINELD4zzU6gRI/kvePfhqeJC/2xD1xdsCHIQEj7rdFQWVVyFrhmxmxBgPg4ZlAbFtX
	zA4chbUPvlQE/bmqibjJUPSyD2Z7eslt3ekmPZ/0nyIMiqkZRSWzepIPPCVCzP/4tEDkOHZ/ro7/R
	96nAi+R4oxgDxKE4OHbyxPCLysi7kIbWU8vcOU5PTHXLT8cwrd0KIhqaobz7a8tWvd60LTSZdKCwu
	VU1Odk8KUJyGTntuFzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr312-00H9Uc-2B;
	Mon, 24 Apr 2023 20:42:28 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr30y-00H9Rw-2e
	for linux-phy@lists.infradead.org;
	Mon, 24 Apr 2023 20:42:26 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-63b73203e0aso30837491b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Apr 2023 13:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1682368939; x=1684960939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F5ZMC5VZS+YuBCnDNL+LpSQZtLatJs+u2JnjBvK8Odc=;
        b=DGbRYrvKbvAoKpxgR0HQbFQbYXIsz+xp2DGSkA2iOQ8mk1waOeWr+SQSqHjNuasxPf
         8n+vMTsSnPigKcKIoYZz5PxLBhE5efTfaOCZ8JQV/rP6KgWH3nnIBQVYIr26Po+rSVfL
         XKUeFmdh9NNpkHFwRbRXZrVl72cOFnBWI8Dgk+co7z1DsCZf3I+iGPR2qA6JciXH6DEX
         Qh0waztvz2vfOG82eC66kLBXYiKWml2zHWu/0w++9GWg6HxYxWvVKbS71C6Drwt+GaGj
         UnoKPfxkLl/YsG6phBs1KAw1BycVRWcxeqF4Q9S3pHsn0wCjS3bASvhbon6oYA/iVdX2
         4r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682368939; x=1684960939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5ZMC5VZS+YuBCnDNL+LpSQZtLatJs+u2JnjBvK8Odc=;
        b=I4h0GWW1IZUr06DbSDsLnTmF0gy+x6ft/bkAphtVdued1B1mycZpIrPLXrbIcykKvW
         /9uD2BD77uuTfOkXA+KjX9KUwGivteaz2nvJS1Y6L/6EffUFVwB/e1mwzErUoQzcRDNR
         RgFKtQAZIJ28XoXbgDXZ6rbY3v8Y2zfSUKD9S2rc4+glWHz1K4P2b3bi7r99s2c2yZSC
         1HFqKlmu6p+Tr9MOJFI+8PrgOYbAhjlAa2pir7Ddf4LPWWbjrAJ0S/qsjsd371n6FwOA
         V/dS14Idq6+x5C+m6acJ7tH92nFH8xHKdR6IEw6hqoXdy4Tt9X/20Bx1PyeiuOj25eIF
         yP1Q==
X-Gm-Message-State: AAQBX9cN1CljL0hsDIGAl7vA5A8lTh6YDQXiBSw7jzHuV9/C7VOpfkWy
	hLtcGOJZU3BNAJehT7mxSSrGED5dyh39QcbYvGl5kA==
X-Google-Smtp-Source: AKy350bsHQq1EzNGt73/j+nTzeIplaa5l3Hebw0touKLhbf8se1E6Dle8Z8ftc4k7i07Zf4ORu/GiUefhBFP9DGqO5w=
X-Received: by 2002:a17:90a:6b43:b0:246:9517:30b6 with SMTP id
 x3-20020a17090a6b4300b00246951730b6mr22012160pjl.4.1682368939446; Mon, 24 Apr
 2023 13:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230413-fixes-for-mt8195-hdmi-phy-v2-0-bbad62e64321@baylibre.com>
 <20230413-fixes-for-mt8195-hdmi-phy-v2-1-bbad62e64321@baylibre.com> <20230421221330.GA3657732@dev-arch.thelio-3990X>
In-Reply-To: <20230421221330.GA3657732@dev-arch.thelio-3990X>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 24 Apr 2023 13:42:08 -0700
Message-ID: <CAKwvOd=5szkx5yA0bxcyktx85opAwLrB3_4n13SMV7p3m9x7LQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
To: Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, llvm@lists.linux.dev, Nathan Chancellor <nathan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_134224_860343_8D6CBC2C 
X-CRM114-Status: GOOD (  20.37  )
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

T24gRnJpLCBBcHIgMjEsIDIwMjMgYXQgMzoxM+KAr1BNIE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRo
YW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEFwciAxNCwgMjAyMyBhdCAwNjowNzo0
NlBNICswMjAwLCBHdWlsbGF1bWUgUmFucXVldCB3cm90ZToKPiA+IFRoZSByZXQgdmFyaWFibGUg
aW4gbXRrX2hkbWlfcGxsX2NhbGMoKSB3YXMgdXNlZCB1bml0aWFsaXplZCBhcyByZXBvcnRlZAo+
ID4gYnkgdGhlIGtlcm5lbCB0ZXN0IHJvYm90Lgo+ID4KPiA+IEZpeCB0aGUgaXNzdWUgYnkgcmVt
b3ZpbmcgdGhlIHZhcmlhYmxlIGFsdG9nZXRoZXIgYW5kIHRlc3Rpbmcgb3V0IHRoZQo+ID4gcmV0
dXJuIHZhbHVlIG9mIG10a19oZG1pX3BsbF9zZXRfaHcoKQo+ID4KPiA+IEZpeGVzOiA0NTgxMGQ0
ODZiYjQ0ICgicGh5OiBtZWRpYXRlazogYWRkIHN1cHBvcnQgZm9yIHBoeS1tdGstaGRtaS1tdDgx
OTUiKQo+ID4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+
ID4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFJhbnF1ZXQgPGdyYW5xdWV0QGJheWxpYnJlLmNv
bT4KPgo+IFJldmlld2VkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0aGFuQGtlcm5lbC5vcmc+
Cj4KPiBDYW4gc29tZWJvZHkgcGljayB0aGlzIHVwPyBJdCBmaXhlcyBhIHJhdGhlciBvYnZpb3Vz
IHdhcm5pbmcsIHdoaWNoIGlzCj4gYnJlYWtpbmcgY2xhbmcgYnVpbGRzIChhcyBldmlkZW5jZWQg
YnkgdGhyZWUgdmVyc2lvbnMgb2YgdGhlIHNhbWUgZml4KS4KCiQgLi9zY3JpcHRzL2dldF9tYWlu
dGFpbmVyLnBsIC1mCmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyB8
IGdyZXAgbWFpbnRhaW5lcgpDaHVuZmVuZyBZdW4gPGNodW5mZW5nLnl1bkBtZWRpYXRlay5jb20+
IChtYWludGFpbmVyOkFSTS9NZWRpYXRlayBVU0IzClBIWSBEUklWRVIpCk1hdHRoaWFzIEJydWdn
ZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+IChtYWludGFpbmVyOkFSTS9NZWRpYXRlayBTb0Mg
c3VwcG9ydCkKCkNodW5mZW5nLCBNYXR0aGlhcywgY2FuIG9uZSBvZiB5b3UgcGljayB0aGlzIHVw
LCBwbGVhc2U/CgpPciBWaW5vZCB3aG8gbWVyZ2VkIDQ1ODEwZDQ4NmJiNDQgRldJQ1Q/Cgo+Cj4g
PiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMgfCA4
ICsrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1o
ZG1pLW10ODE5NS5jIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5j
Cj4gPiBpbmRleCBhYmZjMDc3ZmIwYTguLjA1NGI3M2NiMzFlZSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYwo+ID4gKysrIGIvZHJpdmVy
cy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4gPiBAQCAtMjEzLDcgKzIxMyw3
IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfcGxsX2NhbGMoc3RydWN0IG10a19oZG1pX3BoeSAqaGRt
aV9waHksIHN0cnVjdCBjbGtfaHcgKmh3LAo+ID4gICAgICAgdTY0IHRtZHNfY2xrLCBwaXhlbF9j
bGssIGRhX2hkbWl0eDIxX3JlZl9jaywgbnNfaGRtaXBsbF9jaywgcGN3Owo+ID4gICAgICAgdTgg
dHhwcmVkaXZzWzRdID0geyAyLCA0LCA2LCAxMiB9Owo+ID4gICAgICAgdTMyIGZia2Rpdl9sb3c7
Cj4gPiAtICAgICBpbnQgaSwgcmV0Owo+ID4gKyAgICAgaW50IGk7Cj4gPgo+ID4gICAgICAgcGl4
ZWxfY2xrID0gcmF0ZTsKPiA+ICAgICAgIHRtZHNfY2xrID0gcGl4ZWxfY2xrOwo+ID4gQEAgLTI5
MiwxMyArMjkyLDkgQEAgc3RhdGljIGludCBtdGtfaGRtaV9wbGxfY2FsYyhzdHJ1Y3QgbXRrX2hk
bWlfcGh5ICpoZG1pX3BoeSwgc3RydWN0IGNsa19odyAqaHcsCj4gPiAgICAgICBpZiAoIShkaWdp
dGFsX2RpdiA8PSAzMiAmJiBkaWdpdGFsX2RpdiA+PSAxKSkKPiA+ICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7Cj4gPgo+ID4gLSAgICAgbXRrX2hkbWlfcGxsX3NldF9odyhodywgUExMX1BS
RURJViwgZmJrZGl2X2hpZ2gsIGZia2Rpdl9sb3csCj4gPiArICAgICByZXR1cm4gbXRrX2hkbWlf
cGxsX3NldF9odyhodywgUExMX1BSRURJViwgZmJrZGl2X2hpZ2gsIGZia2Rpdl9sb3csCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFBMTF9GQktESVZfSFMzLCBwb3NkaXYxLCBwb3NkaXYy
LCB0eHByZWRpdiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgdHhwb3NkaXYsIGRpZ2l0
YWxfZGl2KTsKPiA+IC0gICAgIGlmIChyZXQpCj4gPiAtICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwo+ID4gLQo+ID4gLSAgICAgcmV0dXJuIDA7Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgaW50
IG10a19oZG1pX3BsbF9kcnZfc2V0dGluZyhzdHJ1Y3QgY2xrX2h3ICpodykKPiA+Cj4gPiAtLQo+
ID4gMi40MC4wCj4gPgo+CgoKLS0gClRoYW5rcywKfk5pY2sgRGVzYXVsbmllcnMKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
