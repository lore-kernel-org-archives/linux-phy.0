Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E74BC6FA9D
	for <linux-phy@archiver.kernel.org>; Wed,  1 Mar 2023 14:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLVb2Yl6U/vEQzfY92L8z4pVfYMcE+PBapGp13HXTyU=; b=R+b0kaDQp3q8Mo
	N0jYyfTDZF5j+NNRlSsK2L4CuLIIlHhkxT5X9iFt0RQifokb2KrDkUgzF4QTobPOk5IKjK9HtJpUI
	cidOCL4nXtW8gUmkethIpkMORXnnjEt1B5gE+A2/9UPZWaVuLU6u75ufHLXtPrD/u+iCIWHAnYbNP
	Xvdr5+xNHL9alIaUs94/UUTyqNtrxrOgN7FJqchOHOI42q1QzkgMsdBmPO+mY+VL/WEHXg13aU8lj
	FRkG4LjyuYSOGjMACPtN8Dhj0nXObpIdQL8kqsUq/W4JHvMNxlg7ZWE2n4xNRuPyi3fuxZ3/wP6Z0
	H5T3uEjILFtcTedXA+3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXNvA-00GVI7-N0; Wed, 01 Mar 2023 14:59:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXNv8-00GVH9-52
	for linux-phy@lists.infradead.org; Wed, 01 Mar 2023 14:59:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9555C61253
	for <linux-phy@lists.infradead.org>; Wed,  1 Mar 2023 14:59:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0692CC4339B
	for <linux-phy@lists.infradead.org>; Wed,  1 Mar 2023 14:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677682744;
	bh=Yqf9Ws2DwHgKm6RKTHWwgebUlFuviIC5Mpr3HYPHYMw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rSsYKIdcxo70HEhgfKeS6SyvlL/FIrQc4GDqJf8RNHWp2+mWnEq0OVjMa/KjgGkJj
	 VE4Pdz/5lZKXobmNg7Uk039lRQF3HJxeNHxrNndJpgDZYrBJfv4iK/9UQL7aoT/OtN
	 UuUm6kCuUrcZO7E7ZOJ74vqbqacktSVKlk+u7mFZ0bLrNYKpejvLpNu735mNhnL6uN
	 k+1NnbKB+LsnqVRruxNCAAoQUWGwU/MFvVkigPLmpk6Zb8Zxad6jbYrbXZMSBdIWAc
	 GRNXS1H27eFK7fHbkQiSjDlQCG42bMd5iraaTIwQgvW6NLAMiYX3gO1KFEgoeahTIW
	 m4QOgiw4EBGLw==
Received: by mail-ua1-f41.google.com with SMTP id bx14so3898035uab.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Mar 2023 06:59:03 -0800 (PST)
X-Gm-Message-State: AO0yUKVNnoKoQmxEnhcAoLY2z7UuKUPkxMpYVydGyGrgx2GyErRdJfta
	dGj2vZdZdOxw6TkN7YRyo0rFXNaP/f7LJuo8qg==
X-Google-Smtp-Source: AK7set9NsZVlDinXDgjj4dqHc+VM2sMCUP6iO8tYTToBCSoRpMdK6SGL9S8gxffoDxacEmes9w4Gxeg/JlPukGxzdw0=
X-Received: by 2002:ab0:4a97:0:b0:68d:6360:77b with SMTP id
 s23-20020ab04a97000000b0068d6360077bmr3878835uae.1.1677682742965; Wed, 01 Mar
 2023 06:59:02 -0800 (PST)
MIME-Version: 1.0
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-3-manivannan.sadhasivam@linaro.org> <20230227195535.GA749409-robh@kernel.org>
 <20230228082021.GB4839@thinkpad>
In-Reply-To: <20230228082021.GB4839@thinkpad>
From: Rob Herring <robh@kernel.org>
Date: Wed, 1 Mar 2023 08:58:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJXb1junhU+56ZcqHzAq8g0VN8BzQ2A1C9rB80pZDWJ-w@mail.gmail.com>
Message-ID: <CAL_JsqJXb1junhU+56ZcqHzAq8g0VN8BzQ2A1C9rB80pZDWJ-w@mail.gmail.com>
Subject: Re: [PATCH v2 02/13] dt-bindings: PCI: qcom: Add iommu properties
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <Robin.Murphy@arm.com>
Cc: andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com, 
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, konrad.dybcio@linaro.org, 
	bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_065906_311144_16B4DC69 
X-CRM114-Status: GOOD (  18.70  )
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

K1JvYmluCgpPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAyOjIw4oCvQU0gTWFuaXZhbm5hbiBTYWRo
YXNpdmFtCjxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBN
b24sIEZlYiAyNywgMjAyMyBhdCAwMTo1NTozNVBNIC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToK
PiA+IE9uIEZyaSwgRmViIDI0LCAyMDIzIGF0IDA0OjI4OjU1UE0gKzA1MzAsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gTW9zdCBvZiB0aGUgUENJZSBjb250cm9sbGVycyByZXF1
aXJlIGlvbW11IHN1cHBvcnQgdG8gZnVuY3Rpb24gcHJvcGVybHkuCj4gPiA+IFNvIGxldCdzIGFk
ZCB0aGVtIHRvIHRoZSBiaW5kaW5nLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+ID4gPiAt
LS0KPiA+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2ll
LnlhbWwgfCA1ICsrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4g
PiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3Fjb20scGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9xY29tLHBjaWUueWFtbAo+ID4gPiBpbmRleCBhMzYzOTkyMGZjYmIuLmY0OGQwNzkyYWE1NyAx
MDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9x
Y29tLHBjaWUueWFtbAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3Fjb20scGNpZS55YW1sCj4gPiA+IEBAIC02NCw2ICs2NCwxMSBAQCBwcm9wZXJ0aWVz
Ogo+ID4gPgo+ID4gPiAgICBkbWEtY29oZXJlbnQ6IHRydWUKPiA+ID4KPiA+ID4gKyAgaW9tbXVz
Ogo+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ICsKPiA+ID4gKyAgaW9tbXUtbWFwOiB0cnVl
Cj4gPiA+ICsKPiA+Cj4gPiBJIHRoaW5rIGJvdGggcHJvcGVydGllcyB0b2dldGhlciBkb2Vzbid0
IG1ha2Ugc2Vuc2UgdW5sZXNzIHRoZSBQQ0kgaG9zdAo+ID4gaXRzZWxmIGRvZXMgRE1BIGluIGFk
ZGl0aW9uIHRvIFBDSSBidXMgZGV2aWNlcyBkb2luZyBETUEuCj4gPgo+Cj4gSG93PyBXaXRoICJp
b21tdXMiLCB3ZSBzcGVjaWZ5IHRoZSBTTVIgbWFzayBhbG9uZyB3aXRoIHRoZSBzdGFydGluZyBT
SUQgYW5kIHdpdGgKPiBpb21tdS1tYXAsIHRoZSBpbmRpdmlkdWFsIFNJRDwtPkJERiBtYXBwaW5n
IGlzIHNwZWNpZmllZC4gVGhpcyBoYXMgbm90aGluZyB0bwo+IGRvIHdpdGggaG9zdCBETUEgY2Fw
YWJpbGl0aWVzLgoKSSBzcG9rZSB3aXRoIFJvYmluIG9mZmxpbmUgYW5kIGhlIGFncmVlcyB0aGF0
IGhhdmluZyBib3RoIGlzIGJyb2tlbiBhdApsZWFzdCBpbiBSQyBtb2RlLiBIZSBwb2ludGVkIG91
dCB0aGUgaXNzdWUgaXMgc2ltaWxhciB0byB0aGlzIG9uZSBvbgpUZWdyYVsxXS4KClJvYgoKWzFd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9BUzhQMTkzTUIyMDk1NjQwMzU3Nzc5QTdGOUI2
MDI2RjhEMkExOUBBUzhQMTkzTUIyMDk1LkVVUlAxOTMuUFJPRC5PVVRMT09LLkNPTS8KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
