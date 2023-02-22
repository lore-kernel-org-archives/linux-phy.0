Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A068C64EC7
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5BIUcjGl4RE6f+vURsd8hH2XEr8roGAx6T3NY3KfA0=; b=n/N6LHQDVpIsPQ
	nEwIOZVFAZCkEsu7YQkEz9KRru/o8VPSxqTt69KGUjrzrhA0MCiYQucyZ5geojvnEPVDJPFPSFCod
	8vC9sFYmaChuQSZeVFZ+nK954goeqkX7zklNUVAdwPiNTT6c3n+dzfsk+Si0F2+KnTvXIAnq+wdtI
	+BA2onf8t7BdD2LGPhz/PrbBdghVsISlsDfm5LH1vOVhaFBaCphmOARrkPS956PfuX2Dvp7guScht
	pmuv/56NXK887popQfZ4qV1ReKhRgz1OYY8fNjWUr4uuzSIzeAH3oHp0b7GZw0hzTpkDfZky4hilu
	ixNXx8EBFBT4AMjKRLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUqqx-00CppG-IF; Wed, 22 Feb 2023 15:16:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUqqv-00Cpoe-FA
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:16:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1B525B815D2;
	Wed, 22 Feb 2023 15:16:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3DAC433EF;
	Wed, 22 Feb 2023 15:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677078974;
	bh=wUslbHkWZIpoEVNM5LtQHHbJ94IyutGQuJabE24DqWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DAT8rKh33CtVSEYanh8svT89vw8xxLp9ZiBkoGZrikdmQLTe1jJy9FibMbJZ/8dj5
	 J6iZWIDep2t0g79YX2tw+/gt6pZUCsaFwu811Tcjx+06elEPRcCX0eB3BTYAH0413V
	 s/EBlcteHGkrOw/znNzb7Ssv0/JauJsEsfeYscm3NrXOawlIPB70mlqDdpCKLB5axt
	 E1WlAvsj/fM2HmAGcaY6XFvHAh57MdHOGgDuXHgG01IYWpYZ39nq+c2QYmHKJAzwEn
	 B0q5fbmUJOyuaj9ZqvH4XHF1FfRphGRMaGC+7Qc4m6Ee0hnFKGVwVRtIkeykeDcR9l
	 6zT9tkRgBV4PA==
Date: Wed, 22 Feb 2023 15:16:08 +0000
From: Lee Jones <lee@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 2/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern
 property for phy
Message-ID: <Y/YxuM67on1X9NUA@google.com>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
 <20230208190200.2966723-3-abel.vesa@linaro.org>
 <Y+uqcb+CZUy/8GYh@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+uqcb+CZUy/8GYh@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_071617_676323_E198C307 
X-CRM114-Status: GOOD (  19.75  )
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

T24gVHVlLCAxNCBGZWIgMjAyMywgVmlub2QgS291bCB3cm90ZToKCj4gT24gMDgtMDItMjMsIDIx
OjAxLCBBYmVsIFZlc2Egd3JvdGU6Cj4gPiBUaGUgcGh5IHBhdHRlcm4gcHJvcGVydHkgd2lsbCBi
ZSB1c2VkIGZvciBwcm92aWRpbmcgZVVTQjIgcmVwZWF0ZXIKPiA+IGZ1bmN0aW9uYWxpdHkuIFRo
aXMgd2lsbCBiZSBtb2RlbGxlZCBhcyBhIFF1YWxjb21tIFBIWSBkcml2ZXIuCj4gCj4gTGVlLAo+
IAo+IENhbiBJIGdldCB5b3VyIGFjayBhbmQgbWVyZ2UgdGhpcyB0aHJ1IHBoeSB0cmVlCgpBY2tl
ZC1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4KCj4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVs
IFZlc2EgPGFiZWwudmVzYUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAKPiA+IFRoZSB2NCBpcyBo
ZXJlOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwMjA3MTM1NTUxLjE0MTg2
MzctMy1hYmVsLnZlc2FAbGluYXJvLm9yZy8KPiA+IAo+ID4gQ2hhbmdlcyBzaW5jZSB2NDoKPiA+
ICAqIG5vbmUKPiA+IAo+ID4gQ2hhbmdlcyBzaW5jZSB2MzoKPiA+ICAqIG1hZGUgdGhpcyB0aGUg
c2Vjb25kIHBhdGNoIHJhdGhlciB0aGFuIHRoZSBmaXJzdCBpbiB0aGUgc2VyaWVzCj4gPiAKPiA+
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Fjb20sc3BtaS1wbWljLnlh
bWwgfCA0ICsrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Fjb20s
c3BtaS1wbWljLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Fj
b20sc3BtaS1wbWljLnlhbWwKPiA+IGluZGV4IGFkZjg4MjQ1YzQwOS4uMWU2ZmFkZWMxMzAxIDEw
MDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9xY29t
LHNwbWktcG1pYy55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3Fjb20sc3BtaS1wbWljLnlhbWwKPiA+IEBAIC0xMzUsNiArMTM1LDEwIEBAIHBhdHRl
cm5Qcm9wZXJ0aWVzOgo+ID4gICAgICB0eXBlOiBvYmplY3QKPiA+ICAgICAgJHJlZjogL3NjaGVt
YXMvcGluY3RybC9xY29tLHBtaWMtZ3Bpby55YW1sIwo+ID4gIAo+ID4gKyAgInBoeUBbMC05YS1m
XSskIjoKPiA+ICsgICAgdHlwZTogb2JqZWN0Cj4gPiArICAgICRyZWY6IC9zY2hlbWFzL3BoeS9x
Y29tLHNucHMtZXVzYjItcmVwZWF0ZXIueWFtbCMKPiA+ICsKPiA+ICAgICJwb25AWzAtOWEtZl0r
JCI6Cj4gPiAgICAgIHR5cGU6IG9iamVjdAo+ID4gICAgICAkcmVmOiAvc2NoZW1hcy9wb3dlci9y
ZXNldC9xY29tLHBvbi55YW1sIwo+ID4gLS0gCj4gPiAyLjM0LjEKPiAKPiAtLSAKPiB+Vmlub2QK
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
