Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9535C3DA64
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 15:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gmMrF2pCuhak6N7I64/0LXg01CkAoLF9MFCnoy3R8Y=; b=Y6F5QoNJll4zpe
	YKiokRLVpZPJIMMpDlcxiZG1lX6ovRaw+Pw7Y9+Q7X4GowsXdQrHRIwKzkRRPLQFkr5Zw0XMkv8k+
	A73z/Oq0JFvbVxBIWS7HHV+aRmKpvLvVxYexhYoWrTejdRnoTEhzYBvEcU75p/btg2urSkSvA2xqY
	91U8loZwFJ7Y5QcIYXJ0RXAeqn2GfRqc6lOLut9rEurBD9i7MlRb8N1NQ/scp+tcyOipVhGuTjOit
	rX703oyNeQfjj4gB7hKaa2jkYrTXy00VLL0XoIO49vTIsD9Lb5/PtjmnqBVc42XtwjLIkz/lJQSGp
	3Xb9leWni0nN03MbWivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBGn-00000001isP-2FnH;
	Wed, 31 Jul 2024 15:29:41 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBGk-00000001iro-2Bm8
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 15:29:39 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-70d2ae44790so4154216b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 08:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722439777; x=1723044577; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mCJpeaoOc2bazfPbXFaOP8MpVPnQ8mFYIONeim+kxB4=;
        b=rjIBlfU6R4+tmLvrX7Z8HFIdosqzWIO4LnRDIm3okuhc/TaJCytjDmVUN//vzqFnTY
         b2kHNUIBzhNRz8emD6u5LMaYSB9TYNQx3sQapGv5mvOCRNy3lG6RRde7HWxZFrAS13sD
         CBnZseOt/iFrlnNCy+3v51XNd//DSpIaiaOsMW1g3ve14Swuv+c+JAu0ENFTywfhbLXT
         N10TilThYE6Q1jXyjip76Vg1v3oQZg6bUsnUfedc9v2Gh0SywQUunVYlMpNEsHU7V5dM
         /FNCF3fXbO5pI4gmi3LYvC7vVFc4GVylyy9rXNQ4tRBRnklaLi731ARkXtInHDchKp8P
         1s3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722439777; x=1723044577;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mCJpeaoOc2bazfPbXFaOP8MpVPnQ8mFYIONeim+kxB4=;
        b=fkXZjc97kuSdYO0A2nrdI1MkHiQ0LlEi0nFNn9HGlOUzv9qEPanbp+rpha93+MNdDM
         8RxxynHoUUqKkqQrzsBidbzaASgCwaG5/fP9HIPsdRqqpI+OZtsGTOIGSRbqrknal1DC
         qaZ7nZ8HcfvVLahyfqOC0be06lz6gn1IU8Rji32Nn0TC/BhLR5xLoHfudnQTTeMTpogx
         +47REFH85WuTfE83jGo3ISe7cgEOsR3xUrIF10/2upbUZ/+Lub1BsdB7mq/GK+zIRw72
         jluqHKmq2mwUqlyUFoAcDZfOJDSMyBtfDXMU+uJy7g3ShAgxJyLBgqpd9tYVYQlt7PKE
         Y8Ww==
X-Forwarded-Encrypted: i=1; AJvYcCVQzosEM0lccLPlWdtt+FOgFiV3vUoL1FqNU5DstA1ypxOWK+fTN4mYpn0uYHMukNWzZDUZI8bsdHYCzswZA+JQLpfdUIFinsNAn05KYA==
X-Gm-Message-State: AOJu0YzSiRF2RuYPo0NR5XQk0hrLxRselXIdgVyewA+GI+jG9boZGh/a
	RY5YRim/vN1xkPv9sE5Iqpi7vZh90aTKVds78WWILEfKyUKDEAiIg8Xn7yqB1Q==
X-Google-Smtp-Source: AGHT+IGohm1cBq/5zPvLuLsEzQNZ6TosNInwk8VMcHMzDiwyENOeXQOhAAUH2+CrOsko17rLYuRl0A==
X-Received: by 2002:a05:6a21:3483:b0:1be:ffe4:b2a2 with SMTP id adf61e73a8af0-1c4a11796a5mr13080164637.7.1722439777291;
        Wed, 31 Jul 2024 08:29:37 -0700 (PDT)
Received: from thinkpad ([120.60.66.23])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead6e333asm10071047b3a.8.2024.07.31.08.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:29:36 -0700 (PDT)
Date: Wed, 31 Jul 2024 20:59:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <20240731152928.GA2983@thinkpad>
References: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
 <ZqoY5kFLDEmkb495@matsya>
 <knjl4q5zyqz3wrqp5aawgpxk6aqggvteb72enpsgweulgrxmnu@ol42qtug4xvi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <knjl4q5zyqz3wrqp5aawgpxk6aqggvteb72enpsgweulgrxmnu@ol42qtug4xvi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_082938_587637_721C2E47 
X-CRM114-Status: GOOD (  25.33  )
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

T24gV2VkLCBKdWwgMzEsIDIwMjQgYXQgMDM6MTg6MzFQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBXZWQsIEp1bCAzMSwgMjAyNCBhdCAwNDoyODo0NlBNIEdNVCwgVmlub2Qg
S291bCB3cm90ZToKPiA+IE9uIDMwLTA3LTI0LCAxNTozMywgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IHdyb3RlOgo+ID4gPiBUaGVzZSByZWdpc3RlciBwcmludHMgYXJlIHVzZWZ1bCB0byB2YWxpZGF0
ZSB0aGUgaW5pdCBzZXF1ZW5jZSBhZ2FpbnN0IHRoZQo+ID4gPiBRY29tIGludGVybmFsIGRvY3Vt
ZW50YXRpb24gYW5kIGFsc28gdG8gc2hhcmUgd2l0aCB0aGUgUWNvbSBodyBlbmdpbmVlcnMgdG8K
PiA+ID4gZGVidWcgaXNzdWVzIHJlbGF0ZWQgdG8gUEhZLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJv
Lm9yZz4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
Y29tbW9uLmggfCA0ICsrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykK
PiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtY29tbW9uLmggYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tbW9uLmgK
PiA+ID4gaW5kZXggNzk5Mzg0MjEwNTA5Li5lNmE2YmNmY2FjMjggMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21tb24uaAo+ID4gPiArKysgYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tbW9uLmgKPiA+ID4gQEAgLTksNiAr
OSw3IEBACj4gPiA+ICBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCB7Cj4gPiA+ICAJdW5zaWduZWQg
aW50IG9mZnNldDsKPiA+ID4gIAl1bnNpZ25lZCBpbnQgdmFsOwo+ID4gPiArCWNoYXIgKm5hbWU7
Cj4gPiA+ICAJLyoKPiA+ID4gIAkgKiBtYXNrIG9mIGxhbmVzIGZvciB3aGljaCB0aGlzIHJlZ2lz
dGVyIGlzIHdyaXR0ZW4KPiA+ID4gIAkgKiBmb3IgY2FzZXMgd2hlbiBzZWNvbmQgbGFuZSBuZWVk
cyBkaWZmZXJlbnQgdmFsdWVzCj4gPiA+IEBAIC0yMCw2ICsyMSw3IEBAIHN0cnVjdCBxbXBfcGh5
X2luaXRfdGJsIHsKPiA+ID4gIAl7CQkJCVwKPiA+ID4gIAkJLm9mZnNldCA9IG8sCQlcCj4gPiA+
ICAJCS52YWwgPSB2LAkJXAo+ID4gPiArCQkubmFtZSA9ICNvLAkJXAo+ID4gPiAgCQkubGFuZV9t
YXNrID0gMHhmZiwJXAo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiBAQCAtMjcsNiArMjksNyBAQCBz
dHJ1Y3QgcW1wX3BoeV9pbml0X3RibCB7Cj4gPiA+ICAJewkJCQlcCj4gPiA+ICAJCS5vZmZzZXQg
PSBvLAkJXAo+ID4gPiAgCQkudmFsID0gdiwJCVwKPiA+ID4gKwkJLm5hbWUgPSAjbywJCVwKPiA+
ID4gIAkJLmxhbmVfbWFzayA9IGwsCQlcCj4gPiA+ICAJfQo+ID4gPiAgCj4gPiA+IEBAIC00NSw2
ICs0OCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBxbXBfY29uZmlndXJlX2xhbmUodm9pZCBfX2lv
bWVtICpiYXNlLAo+ID4gPiAgCQlpZiAoISh0LT5sYW5lX21hc2sgJiBsYW5lX21hc2spKQo+ID4g
PiAgCQkJY29udGludWU7Cj4gPiA+ICAKPiA+ID4gKwkJcHJfZGVidWcoIlFNUCBQSFk6IFdyaXRp
bmc6ICVzIC0tPiAweCUwMnhcbiIsIHQtPm5hbWUsIHQtPnZhbCk7Cj4gPiAKPiA+IFRoaXMgbGd0
bSwgYnV0IGZhaWxzIHRvIGhlbHAgd2hlbiBvZmZzZXQgX21pZ2h0XyBiZSBpbmNvcnJlY3QsIGlu
Y2x1ZGluZwo+ID4gdGhlIG9mZnNldCB2YWx1ZSBhcyB3ZWxsIChub3QganVzdCB0aGUgbmFtZSkg
d291bGQgYmUgYmV0dGVyIGltby4uLiAKPiAKPiBDYW4gd2UgcGxlYXNlIHVzZSBkZXZfdmRiZyBp
bnN0ZWFkPyBIYXZpbmcgZGV2XyBwYXJ0IG1ha2VzIHN1cmUgdGhhdCB3ZQo+IGNhbiBub3QgbWlz
bWF0Y2ggUEhZcyBhbmQgdGhlIHNlcXVlbmNlcy4gX3ZkYmcgaXMgbGVzcyBpbXBvcnRhbnQsIGJ1
dAo+IEkgZG9uJ3QgdGhpbmsgd2Ugd2FudCB0aGlzIGluIHRoZSBsb2cgbWVzc2FnZXMgdW5sZXNz
IGFic29sdXRlbHkKPiByZXF1aXJlZC4KPiAKCkknbSBub3QgYSBiaWcgZmFuIG9mIF92ZGJnKCku
IElNTywgYWxsIGRlYnVnIG1lc3NhZ2VzIGFyZSB2ZXJib3NlIGFuZCBpZgplbmFibGVkLCB1c2Vy
IGludGVuZCB0byBzZWUgaXQuIFNvIEkgZG9uJ3QgbGlrZSBvbmUgbW9yZSBsZXZlbCBvZgpjb21w
YXJtZW50YWxpemF0aW9uLiBBbHNvIGl0IHJlcXVpcmVzIHVzIHRvIGZlZWQgLURWRVJCT1NFX0RF
QlVHLi4uCgpCdXQgSSBhZ3JlZSB3aXRoIGRldl9kYmcoKS4gSW5pdGlhbGx5LCBJIHRob3VnaHQg
YWJvdXQgaXQgYnV0IGZvcmdvdCB0aGUgZmFjdAp0aGF0IHdlIG5vdyBoYXZlIGFzeW5jIHByb2Jl
LCBzbyB0aGVyZSBpcyBubyBndWFyYW50ZWVlIHRoYXQgdGhlc2UgZGVidWcgcHJpbnRzCndpbGwg
Z2V0IHByaW50ZWQgaW4gb3JkZXIuCgpTZW50IHYzIHdpdGggZGV2X2RiZygpLCB0aGFua3MhCgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
