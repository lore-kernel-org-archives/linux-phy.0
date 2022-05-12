Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5BEEC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 10:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRdlq9AOwY3FeW2hw7enBnzoHf1Svo0nrMxdFJbF8hQ=; b=Ed/oU7eqnalhfO
	YYRymFFOE0sQaTiWwLXQkO9AYvtQwKToVay+IX2omQKzAQw7njmiqRPpiBAf8zW82ie1XG5sKtpTp
	qFORtwgvZSB36titoH5Z0ZFWYJFk2LtYUsoDiWz05VlxVu2Ms84zP9AyyDLmEAkdglspq/OFjJDFO
	LHyPAOhZDi98zMODFoBUTwFMHjqKwBzqUa0HpQzzqcPxDx68QhJvaiFNIV5CTOJ6mbE6kYghoAMQ5
	XyserK6Ut4JQbOpp40e7xU70WvH3MhvlxKjbEUFQIggoWwTxBJv0Ir61o/fPcAblsfh4O5LL8dGm+
	8fKAQ8CAlFM3KLYgs6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np65T-00BOCi-9c; Thu, 12 May 2022 10:30:27 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np65P-00BOAR-Jx
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 10:30:25 +0000
Received: by mail-ed1-x52e.google.com with SMTP id ba17so5698515edb.5
 for <linux-phy@lists.infradead.org>; Thu, 12 May 2022 03:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Jl+ZZLPEmKFGVogvW81THWaOFnfrMcq7xgsxNJKbp8Y=;
 b=GzHOlN0ZzVY4PrqYpKqPssLC3MnbSsdquS7slbkn7dcdXDOrQpCRO8USwHNEsG3Ysf
 jju6K0tEIHtYxB4vhKQcLCXTFcb2Y9juE/nPZnI9LSD+xuSwFndkivKRNQ+dZA+wYnyD
 oYxi6rdcJ3ZBUG08tLjCMUb3wUfGdt1yHBdL754NRw1j1CoCHU1rkKgEl8haN/BCf0k3
 qzmFdXoKxi+jkWpLJSnhloCSptQ+ruWOvyhvxxsimbDX+8Xl6g9xn3e8ZsaYaKvdCClH
 w8qbLG6rSSGpdpTFjHHKAV3ZKzzLMCLF4hWyUZVEL5r/gyg+vxdCkctA67GXkCCWANDg
 8ulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Jl+ZZLPEmKFGVogvW81THWaOFnfrMcq7xgsxNJKbp8Y=;
 b=f0AXC/YU99zl5ixHxqGtJ/ly/iFzF/2BYjonx7WT9ZYxSPcPSsaMGCmduEAK9rm9J/
 xAmItvJy6+0B2xJ68cyloTtWOv6ldgslAVN/v0rCajB3m2Y8BE9sRVjMtaSDGAwnzNGv
 czwata9NGcKFk73kHG2ns1sFVAx4ha0CmM8fn3opSbSJ+tLoekDAa1VRj7JK8p6jGvJG
 WjzRnTFWqqI9LM4n7dOqbUMLMkRgdZPeu1aNSLVVujCS90FbpLzFf/jt8UyhW5v+GQyQ
 q0sOSBcOOxRF52rX25NRMSlBzDiuvULm8zE0B9WP34t9tjlQmG8KzQzFwr17nTBxReML
 kHCA==
X-Gm-Message-State: AOAM5301mp0IPXIuJz9vU9gkSOmHQCCB2qDWfOt7E2DZT+pRNPpgyfu9
 oXU7LUpLfsYR4OBrpW9uX8U83A==
X-Google-Smtp-Source: ABdhPJyfG2D7eWQvDaS2cd6jcMEovgXAcO4kNIJd+zFA4btjO+0kmpY2e/uHtr9ENXd4dF29PFCiUA==
X-Received: by 2002:a05:6402:948:b0:425:ea37:96b8 with SMTP id
 h8-20020a056402094800b00425ea3796b8mr34018713edz.90.1652351421995; 
 Thu, 12 May 2022 03:30:21 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 q20-20020a170906941400b006f3ef214dd1sm1991452ejx.55.2022.05.12.03.30.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 03:30:21 -0700 (PDT)
Message-ID: <5b32cecf-873a-6367-df87-1b8d45e63cec@linaro.org>
Date: Thu, 12 May 2022 12:30:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
 <9644d608-4ab9-ed0d-50fb-0016e4331361@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9644d608-4ab9-ed0d-50fb-0016e4331361@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_033023_744611_964DEFE0 
X-CRM114-Status: GOOD (  18.48  )
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

T24gMTIvMDUvMjAyMiAwNzo1NywgS3Jpc2huYSBLdXJhcGF0aSBQU1NOViB3cm90ZToKPiAKPiBP
biA1LzExLzIwMjIgMTE6NDkgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDEx
LzA1LzIwMjIgMTc6MjYsIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4+PiBGcm9tOiBTYW5kZWVw
IE1haGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMuY29tPgo+Pj4KPj4+IEFkZCBkZXZpY2Ug
dHJlZSBiaW5kaW5ncyBmb3IgU05QUyBwaHkgdHVuaW5nIHBhcmFtZXRlcnMuCj4+Pgo+Pj4gU2ln
bmVkLW9mZi1ieTogU2FuZGVlcCBNYWhlc3dhcmFtIDxxdWljX2Nfc2FubUBxdWljaW5jLmNvbT4K
Pj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgS3VyYXBhdGkgPHF1aWNfa3Jpc2t1cmFAcXVpY2lu
Yy5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZlbXRv
LXYyLnlhbWwgICAgICAgfCA4NyArKysrKysrKysrKysrKysrKysrKysrCj4+PiAgIDEgZmlsZSBj
aGFuZ2VkLCA4NyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZlbXRv
LXYyLnlhbWwKPj4+IGluZGV4IDFjZTI1MWQuLjcwZWZmZmUgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIu
eWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29t
LHVzYi1zbnBzLWZlbXRvLXYyLnlhbWwKPj4+IEBAIC01Myw2ICs1Myw5MyBAQCBwcm9wZXJ0aWVz
Ogo+Pj4gICAgIHZkZGEzMy1zdXBwbHk6Cj4+PiAgICAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0
byB0aGUgcmVndWxhdG9yIDMuM1Ygc3VwcGx5IG5vZGUuCj4+PiAgIAo+Pj4gKyAgcWNvbSxocy1k
aXNjb25uZWN0LWJwczoKPj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5p
dGlvbnMvaW50MzIKPj4+ICsgICAgZGVzY3JpcHRpb246Cj4+PiArICAgICAgVGhpcyBhZGp1c3Rz
IHRoZSB2b2x0YWdlIGxldmVsIGZvciB0aGUgdGhyZXNob2xkIHVzZWQgdG8KPj4+ICsgICAgICBk
ZXRlY3QgYSBkaXNjb25uZWN0IGV2ZW50IGF0IHRoZSBob3N0LiBQb3NzaWJsZSB2YWx1ZXMgYXJl
Lgo+Pj4gKyAgICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbXVsdGlwbGVzIG9mIGJhc2lz
IHBvaW50cyAoMWJwID0gMC4wMSUpLgo+PiBUaGlzIG1lYW5zIHRoZXJlIGlzIHNvbWUgbWluaW11
bSBhbmQgbWF4aW11bSAoMTAwJSk/Cj4gCj4gSGkgS3J6eXN0b2YsCj4gCj4gWWVzIHRoZXJlIGFy
ZSBtYXggYW5kIG1pbiBmb3IgZWFjaCBwYXJhbWV0ZXIgKG5vdCBuZWNlc3NhcmlseSAwJS8xMDAl
KQo+IAo+IEFzIGFuIGV4YW1wbGUgaWYgd2UgdGFrZSBzcXVlbGNoIGRldGVjdG9yIHRocmVzaG9s
ZCwgdGhlIHJlZ2lzdGVyIHZhbHVlIAo+IHZzIGFjdHVhbCBwZXJjZW50YWdlIGNoYW5nZXIgYXMg
cGVyIGRhdGEgYm9vayBpcyBhcyBmb2xsb3dzIDoKPiAKPiAlIGNoYW5nZSBpbiB2b2x0YWdlwqDC
oMKgIHzCoMKgwqDCoCBjb3JyZXNwb25kaW5nIHJlZyB2YWx1ZQo+IAo+ICDCoC0yMC45MCXCoMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqAgfCDCoMKgIDcKPiAgwqAtMTUuNjAlwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDYKPiAt
MTAuMzAlwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqDCoCA1Cj4gLTUuMzAlIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIMKgIDQKPiAwJcKgIMKgIMKgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAzCj4gNS4zMCXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCDCoMKgIDIKPiAxMC42
MCXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDEKPiAxNS45MCUgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqAgMAo+IAo+IEhlcmUgdGhlIG1pbiBhbmQgbWF4IGFyZSAxNS45JSB0byAt
MjAuOSUKPiAKPiBUaGUgbWluIGFuZCBtYXggZGlmZmVyIGZvciBlYWNoIHBhcmFtZXRlciBhbmQg
bWlnaHQgbm90IGJlIG5lY2Vzc2FyaWx5IAo+IDAlIGFuZCAxMDAlCgpUaGVuIGl0IHNlZW1zIHBv
c3NpYmxlIHRvIGRlZmluZSBtaW5pbXVtIGFuZCBtYXhpbXVtIHZhbHVlcyAtIHBsZWFzZSBhZGQK
dGhlbSAoIm1pbmltdW06IHh4eHgiKS4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
