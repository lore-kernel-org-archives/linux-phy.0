Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FFBFC46CD2
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMb9cbkV36E2aA2XlnGQD9eDtTplvgPylwd6J90A1G4=; b=xX38KlrTwGMNT+
	Xl2T+9snAVVI5ksrpc9Q8SUDCOjJ6e4XlZgzsbx+v/lZo9kQWaYbu4KmyHZDnwFIa+XWslXuJTuOa
	pC4WWQYZG2YbkqOnm69VmETEtj+I+bQ1skJCFe3ZFRaNsP8iBfgsUgRm48qXUdQZ0UrXMBqhUaStu
	XFTFrDj8khE/W2d6Zi5GWvm1A04eo2RBuqR3HDs2uqXxh3b8+6fvR8QGlHlT1agQyqXxVGzr+R6go
	25LOPVSE3jEHcDP4v2R2P/ico9gpEBeVIt4ZgDK0NvBD4K7BPyJjwufiv82KMB8jocuCpaF/TCkyt
	sw2MmKzr0DhXHN87Ai0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1yO-00ECd7-0Q;
	Mon, 22 Jan 2024 21:36:52 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS1yK-00ECcX-1D;
	Mon, 22 Jan 2024 21:36:49 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a26f73732c5so399073366b.3;
        Mon, 22 Jan 2024 13:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705959405; x=1706564205; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kh1sidT+OYt5uYsBoa3HOhiQe7ArH4ir2l1s+REcQPU=;
        b=ExO3XG15XIlXbyKtSOq+KWryyjQalMQZ+AzqKup68IDwIgJJk7kihuZaYqkVqWN/nb
         rgW16JvMz3361ze3dqD8QVoY+/R20cMnKMtUbS5qqSn3pa/wJNSaZrFU6eE+c3joxmZK
         tNpsjI2Hn3yWb/RQsaStZNthcSM9ttBYoS0o93ctu5iFboQWiiCVrEZshcjnvOqthS5Y
         7NP9j+TmKUUnqobwH1Z6c9/4OfCmuasIRWxbd/0ltx556FtvGMgjKri4EQR6g1v55nQ/
         WfMxB46TI+FEnsaKpkCZTMJNrHQu39K64JHNxV1eS3zOIGbrL+O3KwwpUOcCbjZ6Pxey
         5Z7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705959405; x=1706564205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kh1sidT+OYt5uYsBoa3HOhiQe7ArH4ir2l1s+REcQPU=;
        b=Fcaafnc4Cz2egk5T+kRFJM1MgzYGqurXT7YGBnOP37ubjmHZpuomvHu5UQTNgZ6MGS
         xEAp/yVZX2P2EL7o22Gx/65LEM49y68uzmDuVjc4QKCY0oK2NwoBo/Bd3+3sjjZm/tCY
         6p8mkGqFUkIpkZsmGVH1gFk0vcAAdxwmI+OlfW+EO/kStDLNdvCx2sScP+RWcGI/t/gk
         h7lr+0biselEy8hI9dfjYy4YIuC+z8Q+L1+85Lsw8P3Tv9ZgQC7caCD94bXt2fVa4ur/
         4foyElgFH7qwCwk5nw+tF820uHR3jeScsr7DiwoiKriQ+1VUxKWF3s/50Bpveg031Et1
         n2hw==
X-Gm-Message-State: AOJu0YyRcWRNFkyfI8d4+FzQ9zYphZxkZTjqQCxKsKOGhU8v8ZbrmLFA
	8LXNw4wBNqp0MDRWuOPcvmrNAcxzBCGgpncbE1AH9IRs5NoqqygbG7eCH4kTcqq3GMrMaPYZb/R
	zmODO+oWuO2tKiToBvhDfyy2R12U=
X-Google-Smtp-Source: AGHT+IF/SL58a8hmAkmkCe5q5zm+9sw1I9Kywvqs5C4nI1iPfdBzh55WJjaIzUvjLszirg3nQ/bBqI6uZdDo77QpfCc=
X-Received: by 2002:a17:906:b2c6:b0:a30:9e78:662f with SMTP id
 cf6-20020a170906b2c600b00a309e78662fmr317678ejb.70.1705959405451; Mon, 22 Jan
 2024 13:36:45 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com> <CAHp75VfPQz4PWdzFUU_n+R=XohBjyXM0zsjD-bUD2jmb42ds8Q@mail.gmail.com>
 <9cb47f37-bd98-4136-b844-33cf2be593df@bootlin.com>
In-Reply-To: <9cb47f37-bd98-4136-b844-33cf2be593df@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Jan 2024 23:36:08 +0200
Message-ID: <CAHp75Ve30T3t0_vHR7TUVVC_WN23dL_rp1k951Da6Re2DJQezw@mail.gmail.com>
Subject: Re: [PATCH 14/14] PCI: j721e: add suspend and resume support
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_133648_435093_581A1858 
X-CRM114-Status: GOOD (  16.80  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgNTozMOKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gT24gMS8xNS8yNCAyMToxMywgQW5keSBTaGV2
Y2hlbmtvIHdyb3RlOgo+ID4gT24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgNjoxNuKAr1BNIFRob21h
cyBSaWNoYXJkCj4gPiA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgoKLi4uCgo+
ID4+ICsgICAgICAgICAgICAgICBpZiAocGNpZS0+cmVzZXRfZ3BpbykKPiA+Cj4gPiBEdXAsIHdo
eT8KPgo+IFRoaXMgcGNpZS0+cmVzZXRfZ3BpbyBjb3JyZXNwb25kcyB0byBQRVJTVCMgb2YgUENJ
ZSBlbmRwb2ludHMuCj4gSSBhc3NlcnQgaXQgZHVyaW5nIHN1c3BlbmQsIGJlY2F1c2UgSSBoYXZl
IHRvIGRlYXNzZXJ0IGl0ICh3aXRoIGEgZGVsYXkpCj4gZHVyaW5nIHJlc3VtZSBzdGFnZSBbMV0u
CgpBaCwgc29ycnkgZm9yIGJlaW5nIHVuY2xlYXIsIEkgbWVhbnQgdGhhdCBncGlvZF9zZXRfdmFs
dWUqKCkgYWxyZWFkeQpoYXMgdGhhdCBjaGVjaywgeW91IGRvbid0IG5lZWQgaXQgaGVyZS4KCj4g
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUt
PnJlc2V0X2dwaW8sIDApOwoKLi4uCgo+ID4+ICsgICAgICAgICAgICAgICBpZiAocGNpZS0+cmVz
ZXRfZ3Bpbykgewo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgxMDAs
IDIwMCk7Cj4gPgo+ID4gZnNsZWVwKCkgPwo+ID4gQnR3LCB3aHkgaXMgaXQgbmVlZGVkIGhlcmUs
IHBlcmhhcHMgYSBjb21tZW50Pwo+Cj4gVGhlIGNvbW1lbnQgc2hvdWxkIGJlIHRoZSBzYW1lIHRo
YW4gaW4gdGhlIHByb2JlIFsxXS4KPiBTaG91bGQgSSBjb3B5IGl0PyBPciBzaG91bGQgSSBqdXN0
IGFkZCBhIHJlZmVyZW5jZSB0byB0aGUgcHJvYmU/Cj4KPiBbMV0KPiBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni44LXJjMS9zb3VyY2UvZHJpdmVycy9wY2kvY29udHJvbGxlci9j
YWRlbmNlL3BjaS1qNzIxZS5jI0w1MzUKCkVpdGhlciB3YXkgd29ya3MgZm9yIG1lLgoKPiA+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+cmVz
ZXRfZ3BpbywgMSk7Cj4gPj4gKyAgICAgICAgICAgICAgIH0KCi4uLgoKPiA+PiArI2RlZmluZSBj
ZG5zX3BjaWVfdG9fcmMocCkgY29udGFpbmVyX29mKHAsIHN0cnVjdCBjZG5zX3BjaWVfcmMsIHBj
aWUpCj4gPgo+ID4gSXMgY29udGFpbmVyX29mLmggaW5jbHVkZWQgaW4gdGhpcyBmaWxlPwo+Cj4g
bGludXgvY29udGFpbmVyX29mLmggaXMgaW5jbHVkZWQgaW4gbGludXgva2VybmVsLmguCj4gQW5k
IGxpbnV4L2tlcm5lbC5oIGlzIGluY2x1ZGVkIGluIHBjaWUtY2FkZW5jZS5oCj4gKGh0dHBzOi8v
ZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjgtcmMxL3NvdXJjZS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLmgjTDkpLgoKT2theSwgc28sIHRyeSB0byBjbGVh
biB1cCBwY2llLWNhZGVuY2UuaCBzbyBpdCB3b24ndCB1c2UgInByb3h5IiBoZWFkZXJzLgpUaGVy
ZSBpcyBhbiBJV1lVIChpbmNsdWRlIHdoYXQgeW91IHVzZSkgcHJpbmNpcGxlLCBwbGVhc2UgZm9s
bG93IGl0LgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
