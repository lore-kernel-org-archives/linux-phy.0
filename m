Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C64C77B76
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 11:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht/kwQLiufesTvgRxSeeJKqjIyS7/cpxWueH+nVngzk=; b=47UxlvWO9ITIxf
	QekiUaG06yvM6t4T5Ztl2opcjWJMtvM7ASXYI19tu64t4iGFQm7SWcGTEE0vHhRVK+35t1RjSC5EE
	Y+kY5laErHr5F9zlTSOxx7iwhs8suSrV/X7J9XXd6NTNPR0BJ4+57+6AWLpR9QotVpUfShmLmbJsi
	byT5GZAgGSpLSU0+VB9YPRAV76CK3tPQHFQiiyfQBSmhz+F/9vapL9sOWzeGx6gfyqrMxN67vxs0y
	E5ia6a5VXWVb5SNzaTBcaSwnqTT/6/3RXuP2dVCtRWYrg5FZ6huaE52Tw8aXUHifCc3x+Ffp9ELWK
	z3CMrL6VHKvatzyXgzTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCXx-00HTvJ-2T;
	Tue, 11 Apr 2023 11:52:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCXv-00HTub-0T
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 11:52:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF341621D6;
	Tue, 11 Apr 2023 11:52:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F87C433EF;
	Tue, 11 Apr 2023 11:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681213941;
	bh=7RJUk4YSpd3pqSy0exl1oYWF66yQpy0/ne486dtH/XM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c1gOSy88hc71+QkoCHhohvTl/y7A+kQeo7BHoUCffJqiu75CRPLLtcZljbp7c1tkK
	 CtAtZ+H1vzm6I1idVCZdhZiSwX9Ku3emALK6adwDciQtTSRJk2/W3qIkGF+yB20PNc
	 Sx2RV87NVXxczyNoNCqgWzrVEdhPenghf+raL60PnomNznqiHYC4cwSEOr/RhazCYX
	 sMpF6bwTcZqy5NimR+veX23m7xDpm1q4MMZjzBfQ4/WawLoBQCcdf1G+m4fMsdYCRi
	 l5y96hmZLSNOwQXVRsVYPeSQ+1RSOouhWKqq7Z1GHe/CMaxKt/0RLMe/h/LRnWDArR
	 nSWwSz5zbxdiA==
Date: Tue, 11 Apr 2023 17:22:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, mani@kernel.org, p.zabel@pengutronix.de,
	linus.walleij@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
	quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
	quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
	quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
	quic_ipkumar@quicinc.com
Subject: Re: [PATCH V2 5/9] dt-bindings: PCI: qcom: Add IPQ9574
Message-ID: <20230411115201.GM5333@thinkpad>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
 <20230404164828.8031-6-quic_devipriy@quicinc.com>
 <79ddaff0-00a9-36db-2bc0-4c844ffd9528@linaro.org>
 <999dfe1c-3b0d-1cc1-7407-e0917fc62d77@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <999dfe1c-3b0d-1cc1-7407-e0917fc62d77@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_045223_284416_B38152C7 
X-CRM114-Status: GOOD (  23.21  )
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

T24gVHVlLCBBcHIgMTEsIDIwMjMgYXQgMDQ6Mjc6MjNQTSArMDUzMCwgRGV2aSBQcml5YSB3cm90
ZToKPiAKPiAKPiBPbiA0LzUvMjAyMyAxMjoyOCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiA+IE9uIDA0LzA0LzIwMjMgMTg6NDgsIERldmkgUHJpeWEgd3JvdGU6Cj4gPiA+IEFkZCBi
aW5kaW5ncyBmb3IgUENJZSBob3N0cyBvbiBJUFE5NTc0IHBsYXRmb3JtIGFuZCBhbGxvdwo+ID4g
PiBtc2ktcGFyZW50IHByb3BlcnR5Cj4gPiAKPiA+IE1pc3NpbmcgZnVsbCBzdG9wLiBBbHNvIGlu
IHlvdXIgb3RoZXIgcGF0Y2hlcy4KPiBPa2F5Cj4gPiAKPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IERldmkgUHJpeWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4gPiA+IC0tLQo+ID4g
PiAgIENoYW5nZXMgaW4gVjI6Cj4gPiA+IAktIFVwZGF0ZWQgdGhlIGNvbW1pdCBtZXNzYWdlIGFu
ZCBkcm9wcGVkIHRoZSBhZ2dyX25vYyBlbnRyaWVzCj4gPiA+IAkgIGFzIGl0IHdpbGwgYmUgaGFu
ZGxlZCB2aWEgaW50ZXJjb25uZWN0IGRyaXZlcgo+ID4gPiAKPiA+ID4gICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgICAgfCA0OCArKysrKysrKysrKysrKysrKysr
Cj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNp
ZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUu
eWFtbAo+ID4gPiBpbmRleCBmYjMyYzQzZGQxMmQuLjg2NTdhYjY1MDA4YyAxMDA2NDQKPiA+ID4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFt
bAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS55YW1sCj4gPiA+IEBAIC0yNiw2ICsyNiw3IEBAIHByb3BlcnRpZXM6Cj4gPiA+ICAgICAg
ICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNjQtdjIKPiA+ID4gICAgICAgICAgICAgLSBxY29tLHBj
aWUtaXBxODA3NAo+ID4gPiAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDc0LWdlbjMKPiA+
ID4gKyAgICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4gPiA+ICAgICAgICAgICAgIC0gcWNv
bSxwY2llLW1zbTg5OTYKPiA+ID4gICAgICAgICAgICAgLSBxY29tLHBjaWUtcWNzNDA0Cj4gPiA+
ICAgICAgICAgICAgIC0gcWNvbSxwY2llLXNhODU0MHAKPiA+ID4gQEAgLTEwNSw2ICsxMDYsOCBA
QCBwcm9wZXJ0aWVzOgo+ID4gPiAgICAgICBpdGVtczoKPiA+ID4gICAgICAgICAtIGNvbnN0OiBw
Y2llcGh5Cj4gPiA+ICsgIG1zaS1wYXJlbnQ6IHRydWUKPiA+IAo+IAo+IFllcyByaWdodCwgd2ls
bCByZWJhc2UgaXQgb24gTWFuaSdzIHNlcmllcy4KPiBCdXQsIGFzIHlvdSBoYXZlIHBvaW50ZWQg
b3V0IGRvbid0IHNlZSB0aGUgYmluZGluZyBjaGFuZ2VzCj4gaW4gbGludXgtbmV4dC9tYXN0ZXIK
PiBNYW5pLCBjb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgdGhlIHRyZWUgZGV0YWlscyBvbnRvIHdo
aWNoIHRoZQo+IGJpbmRpbmcgY2hhbmdlIGlzIG1lcmdlZD8KPiAKCkxvb2tzIGxpa2UgdGhlIGlu
aXRpYWwgbXNpLW1hcCBiaW5kaW5nJ3MgcGF0Y2ggWzFdIG5ldmVyIGdvdCBtZXJnZWQgZXZlbiB0
aG91Z2gKdGhlIGR0cyBwYXRjaCB3ZW50IGluLgoKSSdsbCBzcXVhc2ggdGhlIGxhdGVyIGZpeCB0
byB0aGlzLCBwb3N0IHY0IGFuZCBDQyB5b3UuCgotIE1hbmkKClsxXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyMzAxMDIxMDU4MjEuMjgyNDMtMy1tYW5pdmFubmFuLnNhZGhhc2l2YW1A
bGluYXJvLm9yZy8KCj4gPiBJc24ndCB0aGlzIGNvbmZsaWN0aW5nIHdpdGggTWFuaSdzIHNlcmll
czoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDEwODIwMzM0MC5HQTIyOTU3
My1yb2JoQGtlcm5lbC5vcmcvCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAx
MTExMjMwMDQuMjEwNDgtMS1tYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZy8jdAo+ID4g
Cj4gPiBBbHRob3VnaCBmb3Igc29tZSByZWFzb24gTWFuaSdzIHBhdGNoIHJlZmVyZW5jZXMgbm9u
LWV4aXN0aW5nIGNvbW1pdCBhbmQKPiA+IGh1bmsuLi4KPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+
ID4gS3J6eXN6dG9mCj4gPiAKPiBCZXN0IFJlZ2FyZHMsCj4gRGV2aSBQcml5YQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
