Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1134C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 11:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBsmEAKfSmJo6I7yxBLdPE2ekzXgkyBeSr0sZZLxFbM=; b=CQC/86d36BhC8B
	b0PwnIZEaZJMDwhSOOls8jg4yHoPWMjAX5I+m3Qw9oZJ15fyea+KfkRPx6tfEl7yFsv5faKTILFN8
	1TyiRIg9JqPbamOVQMX0gOB5pcM50olSdIswDRbKP9JjvPtWXCzJxVBk3YMN+qd+W+bRTGWDRWlJl
	Mbs0FMQUP6zVBPV4uJV+bWOWp72IbINjoRBfI/Z/cyV+fvT+aET1+5GVisZvjAnoBtqwdkZL5F1aD
	xrIVW/+oNJShxOaQfINw9T1kQEIF2rqVdGyTVJvd9fnt/q4nPuU95E9Kp8d8I8PF+wOG1MmCRlruq
	zXV2/2vwQogXlC96h/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhQz-0000000C281-2rWg;
	Tue, 16 Apr 2024 11:57:09 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhQw-0000000C270-0S5l
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 11:57:08 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5a49261093cso2284974eaf.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 04:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713268621; x=1713873421; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ophtYrF9IpPwZurMvgYV2hp9I3BGj1tkL8j63ZRtc2I=;
        b=fnsnQzy094NEJqkGNaTVxMqXrKsssht2eWQtlJvKNQUGvd9ZRpjjnrD06dofaWu/Jm
         1GfPJ7npi2PYk7sWCD2gfDi1yuEhMaoJrz14NAaGBTQGGH4hrLEBxlfYcEvsEgDS/DC5
         WeWyIRaRNgden9NkQHD8HC3gmtX1t55G2/1mH1oe3ZzORrXu0YqHS6bTNHzIflTg/eil
         dUUxjHk+35Hef+XPuoaSTbbOOKk94X1cAM0juGgVnJD9sK79lzPxDAZ6LLGVdaIhA/jZ
         Pu6x911kEfh4tpwyAR00bIJIyER4C7BVV3UKXQBijtdoJ2DD+LfKDcGA33cb5s/ZPjN4
         69iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713268621; x=1713873421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ophtYrF9IpPwZurMvgYV2hp9I3BGj1tkL8j63ZRtc2I=;
        b=SD4nITqbyHOLtZwtsk1rDh4yXehb27bKOFsXWZWd3IMCoGHfMhrKAtbvQvNfDGQOc9
         FvnL/L9f+J7FBmPqzWlm5uunc2lE/zjZcyoCUj3kzh3Oy6j5VgC42VUb4+yv+IXSyg8S
         i+IKyd3GbsAoF7y2mzBJtNCwuCjk+xP/WWio2s/NfFDkoFfxW34zz6z8HbfdDZqdI4fM
         Xc8nQaFlqRHO0wQpdB/ravPAhzyX11HqLek5f7juSKj4u0XCU69y3Q04mcCwMIXWWjk3
         OvwrxYxeIwwWFTHD3D8izrI+IyK0fo+LqHn2k77bOJR5EHe0H1xGFjZQoJHJcL1f9E8C
         f4qw==
X-Forwarded-Encrypted: i=1; AJvYcCUVHG5y1l7FjJQB1PpWj1K5gjrl9jHOPKB52u9cM8+qO4Un6pT1fGKDtSdSm6crAChTYFqHSPN2IuGkEbdVx6s5LFwZEg+tzOkfWTfcDw==
X-Gm-Message-State: AOJu0YzsBlVQ1yJUBNiPo7rvvGxz9e8Q35UVcZz8eWqaXfvMOHEn08Kl
	eApOCXbtYETSnnwVnoIs32XHm1bylepaUeQgoaK6UGrNpzOFFsSwfXrn2038gH3ypFdqWI3ciyJ
	XQ79b+HiPnWB+c0JhBZzfqtBjBJFHBBkdWzdLhQ==
X-Google-Smtp-Source: AGHT+IGdAJXHt7mAsVZuzt9JgE7vdWoLagtGQT3T15A+kBPHpQZl6zuXKVT8ycszrHB5VvpVeZdYSex6pwkAq/Bp7sg=
X-Received: by 2002:a4a:aecb:0:b0:5ac:9efc:3b02 with SMTP id
 v11-20020a4aaecb000000b005ac9efc3b02mr5501112oon.8.1713268621486; Tue, 16 Apr
 2024 04:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-6-peter.griffin@linaro.org> <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
In-Reply-To: <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 12:56:50 +0100
Message-ID: <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_045706_261520_0B11A04E 
X-CRM114-Status: GOOD (  17.27  )
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

SGkgQW5kcsOpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKT24gRnJpLCA1IEFwciAyMDI0IGF0
IDA4OjM4LCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToK
Pgo+IE9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3JpZmZpbiB3cm90
ZToKPiA+IEVuYWJsZSB0aGUgY211X2hzaTIgY2xvY2sgbWFuYWdlbWVudCB1bml0LiBJdCBmZWVk
cyBzb21lIG9mCj4gPiB0aGUgaGlnaCBzcGVlZCBpbnRlcmZhY2VzIHN1Y2ggYXMgUENJZSBhbmQg
VUZTLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5A
bGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2ds
ZS9nczEwMS5kdHNpIHwgMTIgKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlu
b3MvZ29vZ2xlL2dzMTAxLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUv
Z3MxMDEuZHRzaQo+ID4gaW5kZXggZWRkYjZiMzI2ZmRlLi4zOGFjNGZiMTM5N2UgMTAwNjQ0Cj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaQo+ID4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kKPiA+IEBA
IC0xMjUzLDYgKzEyNTMsMTggQEAgcGluY3RybF9oc2kxOiBwaW5jdHJsQDExODQwMDAwIHsKPiA+
ICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDcxIElSUV9UWVBF
X0xFVkVMX0hJR0ggMD47Cj4gPiAgICAgICAgICAgICAgIH07Cj4gPgo+ID4gKyAgICAgICAgICAg
ICBjbXVfaHNpMjogY2xvY2stY29udHJvbGxlckAxNDQwMDAwMCB7Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJnb29nbGUsZ3MxMDEtY211LWhzaTIiOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDE0NDAwMDAwIDB4NDAwMD47Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGNsb2NrcyA9IDwmZXh0XzI0XzVtPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hTSTJfQlVTPiwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hTSTJfUENJRT4sCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbXVfdG9wIENMS19ET1VUX0NNVV9IU0kyX1VG
U19FTUJEPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNtdV90b3AgQ0xL
X0RPVVRfQ01VX0hTSTJfTU1DX0NBUkQ+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
LW5hbWVzID0gIm9zY2NsayIsICJidXMiLCAicGNpZSIsICJ1ZnNfZW1iZCIsICJtbWNfY2FyZCI7
Cj4gPiArICAgICAgICAgICAgIH07Cj4KPiBUaGlzIGRvZXNuJ3QgYnVpbGQgYmVjYXVzZSB5b3Ug
ZGlkbid0IGFkZCB0aGUgY2xvY2sgaWRzIGluIHRoZSBiaW5kaW5nIHBhdGNoLgoKVGhlc2UgY2xv
Y2sgSURzIGFyZSBmb3IgY211X3RvcCwgbm90IGNtdV9oc2kyLiBUaGV5IHdlcmUgYWRkZWQgYXMg
cGFydApvZiB0aGUgaW5pdGlhbCBnczEwMS9PcmlvbGUgdXBzdHJlYW0gc3VwcG9ydCBzZXJpZXMg
aW4gdGhlIGZvbGxvd2luZwpjb21taXQKCmNvbW1pdCAwYTkxMGYxNjA2Mzg0YTU4ODZhMDQ1ZTM2
YjFmYzgwYTdmYTY3MDZiCkF1dGhvcjogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5h
cm8ub3JnPgpEYXRlOiAgIFNhdCBEZWMgOSAyMzozMDo0OCAyMDIzICswMDAwCgogICAgZHQtYmlu
ZGluZ3M6IGNsb2NrOiBBZGQgR29vZ2xlIGdzMTAxIGNsb2NrIG1hbmFnZW1lbnQgdW5pdCBiaW5k
aW5ncwoKICAgIFByb3ZpZGUgZHQtc2NoZW1hIGRvY3VtZW50YXRpb24gZm9yIEdvb2dsZSBnczEw
MSBTb0MgY2xvY2sgY29udHJvbGxlci4KICAgIEN1cnJlbnRseSB0aGlzIGFkZHMgc3VwcG9ydCBm
b3IgY211X3RvcCwgY211X21pc2MgYW5kIGNtdV9hcG0uCgogICAgUmV2aWV3ZWQtYnk6IFNhbSBQ
cm90c2Vua28gPHNlbWVuLnByb3RzZW5rb0BsaW5hcm8ub3JnPgogICAgU2lnbmVkLW9mZi1ieTog
UGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgogICAgUmV2aWV3ZWQtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KICAg
IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMzEyMDkyMzMxMDYuMTQ3NDE2LTMt
cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnCiAgICBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpyZWdhcmRzLAoKUGV0ZXIK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
