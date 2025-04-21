Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC0DC369C2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 01:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwZlDq/REZlgqmzTv2aHZwxQbeJGrB8tl7ybyeryzOA=; b=D/DDzZnhNp+Uzj
	vzq+ENRjwU4bujjCjhRLVDMlh3/1rkLXLqm44k/+kcUAl8N/dGWcrlg9TdQW2z6IE95ZCDDKqvD+l
	ltoxryeisBFDfrH/09zrOMdY6nQ734qYpMTl47cPuDusQ9cE2Ejf2MYOpGJxHTUE0HxJ/+LgzZdD/
	1dN2r2HIPJdQtTpRtgbknKqydrrzQJ3hpH6jhEkU/AcNoIjjW7nz/gXOx2FP8q0rGkQC37V+SGD12
	lL9VY5pHJCcnbuqKiz7QQtA5YevFYH798MVNpbS9U9ymKMC6408TxnTDQjOtrY10po3hBQyZdrxa+
	wsibDv+T883A4kYrIL0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6gCq-00000003N6v-1IUt;
	Mon, 21 Apr 2025 01:44:20 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6gCn-00000003N6Z-3XFM
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 01:44:19 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-54ac9b3ddf6so3376418e87.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Apr 2025 18:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745199855; x=1745804655; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xNsP8TLxSjuJhg4MR6E04vLB1ANe+AOPTx67417P+WE=;
        b=nOEyIxGj5YXKwzptaNoYOwXtgUYxj9SaBCCR4pJS7kaoySCRfmmzMNFBVOo/hXEY4s
         wuSDVJKOC9uyk3dv+yU1YGcxd9yRVMBH5jq+jQxtJsuw28bUTI5bzMNWPArNLYiFD4dc
         LKJ2MFsyARmKt+osFHS2q4cBj2IQpbdB7Wq11pYo+ruNNJQjf4nn4Z93410wOfIxotTn
         Xl8lBrTphkwpEeXcK9aG7whDgSfnajG2ar60uma5ot602ekvIocVPnUHk2ZBLuepkiVE
         Ikxzh8pCEMmbkKZ/kG/YmimKkuY37nRD37yZqYcwfCEqGmVgFrLF/mb4acv9oEl7Jp+q
         Iaqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745199855; x=1745804655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNsP8TLxSjuJhg4MR6E04vLB1ANe+AOPTx67417P+WE=;
        b=sweniACMSzzefswtkYCHdJ+fGWh4HnzMkKE1DhDr+wbLyQRTejw1mQWpfpaMaqDk3P
         oF4ZRKpsB3VVFW30P1Kxt25kRdez02RsRjiCaPIvo44MkB6x85tItlrva+oBBzrirkxP
         Xu5JPNrWGhQr22E6TxZrIasentspHXQH03nzX7Mr7dasvZVW/bM/ArGJHhlruR71b5xQ
         J0gvgY1038MKIOLQDMiOZo97jOaYGcRMtmzem8wAbFEMFhxPa2WOTny3i0FnQ1OtAVCR
         aXXwx9NNP+arzXCUWH0MlHj/gq0CUJZngLfu5iQxUuQstfnn06pVk7Rm79fKaQb2z0fB
         hZUw==
X-Forwarded-Encrypted: i=1; AJvYcCW3kaCzVIzaZFMCdU5qqxIRhFdtclKpRc5b9thw+S6XfWqt8p5eXw5riajEvKfJ3fUWQ6oBCP/BxRU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAUvs6s68M01iUXvCiStgQEq2ayQLZJ8duLh82B9NkIVBZvGL4
	3Xtjcbt94YaMuSkoBwqq1EmmkGFZdqUPrYdD+d/lhWQ8g1X0F+hCCy6amgX0om5LnLau46mgT+0
	UsrwzqZ1t/fgLEJhxA5ULemOgEYo=
X-Gm-Gg: ASbGncsLYcYmYfLL6K4liA9de4NF+UyvK2/rK8dNDVJeXqgECmQ9Uq6Yx7JZfDUhZ6f
	L3f8l/i6GnxYIxi6eNxbVk5H5UZK8DfqDOrA8VlA4VZWmcEmEYuj0iS06itW3TZzs+SzYy/fBMA
	ktloWW0+ssyIC5bliaQacKXHBaisiZLvyc
X-Google-Smtp-Source: AGHT+IFJLl/9yEM6wOg1YcMUI+mppVQUpO6qF5SpCVT+8GKVAgREPCb9zCBKUQIoF0AwDOC3aXUAnkrQH3n39mE1160=
X-Received: by 2002:a05:6512:3f21:b0:545:2335:6597 with SMTP id
 2adb3069b0e04-54d6e66c65dmr2824515e87.50.1745199855053; Sun, 20 Apr 2025
 18:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com> <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
In-Reply-To: <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sun, 20 Apr 2025 20:44:04 -0500
X-Gm-Features: ATxdqUFF7fzxh_DaX7KhjifiWMQ2sIaayfrHFWcFH33ybOICoCOmsho-NVU-v8U
Message-ID: <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: webgeek1234@gmail.com
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250420_184417_881021_820747B9 
X-CRM114-Status: GOOD (  21.42  )
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

T24gU3VuLCBBcHIgMTMsIDIwMjUgYXQgMTE6NDXigK9QTSBBYXJvbiBLbGluZyA8d2ViZ2VlazEy
MzRAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgQXByIDQsIDIwMjUgYXQgMzoxOOKAr0FN
IEFhcm9uIEtsaW5nIHZpYSBCNCBSZWxheQo+IDxkZXZudWxsK3dlYmdlZWsxMjM0LmdtYWlsLmNv
bUBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBBYXJvbiBLbGluZyA8d2ViZ2VlazEy
MzRAZ21haWwuY29tPgo+ID4KPiA+IEN1cnJlbnRseSwgaWYgdXNiLXJvbGUtc3dpdGNoIGlzIHNl
dCBhbmQgcm9sZS1zd2l0Y2gtZGVmYXVsdC1tb2RlIGlzCj4gPiBub3QsIGEgeHVzYiBwb3J0IHdp
bGwgYmUgaW5vcGVyYWJsZSB1bnRpbCB0aGF0IHBvcnQgaXMgaG90cGx1Z2dlZCwKPiA+IGJlY2F1
c2UgdGhlIGRyaXZlciBkZWZhdWx0cyB0byByb2xlIG5vbmUuIEluc3RlYWQgb2YgcmVxdWlyaW5n
IGFsbAo+ID4gZGV2aWNlcyB0byBzZXQgdGhlIGRlZmF1bHQgbW9kZSwgYXNzdW1lIHRoYXQgdGhl
IHBvcnQgaXMgcHJpbWFyaWx5Cj4gPiBpbnRlbmRlZCBmb3IgdXNlIGluIGRldmljZSBtb2RlLiBU
aGlzIGFzc3VtcHRpb24gYWxyZWFkeSBoYXMgcHJlY2VkZW5jZQo+ID4gaW4gdGhlIHN5bm9wc3lz
IGR3YzMgZHJpdmVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFhcm9uIEtsaW5nIDx3ZWJnZWVr
MTIzNEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMgfCA4
ICsrKy0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJp
dmVycy9waHkvdGVncmEveHVzYi5jCj4gPiBpbmRleCA3OWQ0ODE0ZDc1OGQ1ZTFmMGU4MjAwZDYx
ZTEzMTYwNmFkYmIwZTJkLi5jNTZlODMyMTZkMGY1NjZhMDliNjczNzcxNzJmYjA0Yzg0MDZmNGNm
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4gPiArKysgYi9kcml2
ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiA+IEBAIC03MzEsMTMgKzczMSwxMSBAQCBzdGF0aWMgdm9p
ZCB0ZWdyYV94dXNiX3BhcnNlX3VzYl9yb2xlX2RlZmF1bHRfbW9kZShzdHJ1Y3QgdGVncmFfeHVz
Yl9wb3J0ICpwb3J0KQo+ID4KPiA+ICAgICAgICAgaWYgKG1vZGUgPT0gVVNCX0RSX01PREVfSE9T
VCkKPiA+ICAgICAgICAgICAgICAgICByb2xlID0gVVNCX1JPTEVfSE9TVDsKPiA+IC0gICAgICAg
ZWxzZSBpZiAobW9kZSA9PSBVU0JfRFJfTU9ERV9QRVJJUEhFUkFMKQo+ID4gKyAgICAgICBlbHNl
Cj4gPiAgICAgICAgICAgICAgICAgcm9sZSA9IFVTQl9ST0xFX0RFVklDRTsKPiA+Cj4gPiAtICAg
ICAgIGlmIChyb2xlICE9IFVTQl9ST0xFX05PTkUpIHsKPiA+IC0gICAgICAgICAgICAgICB1c2Jf
cm9sZV9zd2l0Y2hfc2V0X3JvbGUocG9ydC0+dXNiX3JvbGVfc3csIHJvbGUpOwo+ID4gLSAgICAg
ICAgICAgICAgIGRldl9kYmcoJnBvcnQtPmRldiwgInVzYiByb2xlIGRlZmF1bHQgbW9kZSBpcyAl
cyIsIG1vZGVzW21vZGVdKTsKPiA+IC0gICAgICAgfQo+ID4gKyAgICAgICB1c2Jfcm9sZV9zd2l0
Y2hfc2V0X3JvbGUocG9ydC0+dXNiX3JvbGVfc3csIHJvbGUpOwo+ID4gKyAgICAgICBkZXZfZGJn
KCZwb3J0LT5kZXYsICJ1c2Igcm9sZSBkZWZhdWx0IG1vZGUgaXMgJXMiLCBtb2Rlc1ttb2RlXSk7
Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfdXNiMl9wb3J0X3BhcnNlX2R0
KHN0cnVjdCB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMikKPiA+Cj4gPiAtLS0KPiA+IGJhc2Ut
Y29tbWl0OiA5MWU1YmZlMzE3ZDhmODQ3MWZiYWEzZTcwY2Y2NmNhZTEzMTRhNTE2Cj4gPiBjaGFu
Z2UtaWQ6IDIwMjUwNDA0LXh1c2ItcGVyaXBoZXJhbC1jNDViMTYzN2YzM2IKPiA+Cj4gPiBCZXN0
IHJlZ2FyZHMsCj4gPiAtLQo+ID4gQWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4K
PiA+Cj4gPgo+Cj4gRnJpZW5kbHkgcmVtaW5kZXIgYWJvdXQgdGhpcyBwYXRjaC4KPgo+IFNpbmNl
cmVseSwKPiBBYXJvbgoKRnJpZW5kbHkgcmUtcmVtaW5kZXIgYWJvdXQgdGhpcyBzZXJpZXMuCgpT
aW5jZXJlbHksCkFhcm9uIEtsaW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
