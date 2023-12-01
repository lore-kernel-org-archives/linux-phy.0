Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68BC5C4167B
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYO09mvU4lmeXGQnAJ6vpkEh/SE7FykOQWgBiDxprOE=; b=Xpgh/2wNTL8DvZ
	79cgaPF1dFPmYoL1u75rg8Tm7LKaVKyhPAkKA0Gko5L4b95K60FqnAbWTU6NUmYlwMOtxTCY3+vsl
	sGVyEbvJClI5VhuWuzEGOOLvRsnIGO9+cgXBrsdPGo2izltw+9OrC+jqky/3kAM6M/NGQK87CWX5v
	DWvAEnEEWIp1IZoPs9YyswavGIowQWapLwSRboZrLg6cSi/Mk6lca6RuLm+QWgTqX1aNWVSBx1xW+
	0ecNMT6N18USg23pTwWvM7fooHj8op9xiEIFdeHHqFBFgK4YrPjz3KLTvrRSF6UDE0AqgOid1wpK6
	FRKAzbaAb3Q9rFLG7LEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r91Q5-00DIe8-0T;
	Fri, 01 Dec 2023 11:10:53 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r91Q0-00DIdR-2Y
	for linux-phy@lists.infradead.org;
	Fri, 01 Dec 2023 11:10:50 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3b842c1511fso224540b6e.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Dec 2023 03:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701429046; x=1702033846; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=edpCM+r4M4/R7CxGMXVYffuZgPSvVTUvgVhnl4+XzgQ=;
        b=L+m3IGTDU21oNMrRyYV/VKbz7hWPd8GhNQUuiu8FBDclV4Qg8RbDl2aTPxUlzWUxle
         wy5kUT/EwaaCUlThUnX+hDRY5I0CUvU8dnYBWe8itIwRrqZlLup8JwOBt6YBWM9rAobc
         1972P+qWpz1uh5c5l6KE5EuvxE4buim5sChOwLX0x8itmu9YW9ufimXW29XMvz48tqwR
         zgU5IyLwvv3hwt+Jg5jwitI4fjU3YucjKHWQCTgxweTQlGbEksLD9X+jD8XGdbsjlueU
         UcJOwGL2+SOH5YRBT+0pszOgwAnpMui9OnbbdnZEYXYjO2DekmwuwZcsgCdKgd7zPLcZ
         RSkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701429046; x=1702033846;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=edpCM+r4M4/R7CxGMXVYffuZgPSvVTUvgVhnl4+XzgQ=;
        b=P62HPZa8L/XQyBEQ7rj1E/eoSz8DrhvyVIudizeFDxmCD2bfOYf/aigpDmYfFrg/X3
         ugidEG8iT+JUMYrC/mWwk/4n7S7MEuMGIPOq/7/Lp9VmpsmrLul+R4gpHdGeuwMWp0xM
         n6Pl4eZWK9Xi9eO9a7/7Nk6NGnaORxNPNsXlQ4tRfvOPuQfdUgU3+etmn8aTuge9f9c5
         4p2h6Kk8AYcgVikz7Yh5AR2v6tNd8xnkg4OWf7vRZjr26340efUGuznDOftcn8bqc4V7
         CMKKt8msy5KDDoMVNtTerdk5qj8aRiauNVIMFmg5jxjH2QasERMmHuvcfIZY/Q0EdBJZ
         QTog==
X-Gm-Message-State: AOJu0YxEyvhWDx4vmd2fhduN8UQjWASPUiNKiagAqdBC4eCeVozTS51e
	p7+/huN9yAQ9ck4eLiBkYRvG
X-Google-Smtp-Source: AGHT+IE9hpk7SsuRiq+lhQuZEppdkmL/H6bEvHrCH7Le0ftKkoFdTGYtEmATY9iOeyJwTiuL5WNNmQ==
X-Received: by 2002:a05:6870:e0c9:b0:1f5:b5ca:438d with SMTP id a9-20020a056870e0c900b001f5b5ca438dmr27377051oab.16.1701429046585;
        Fri, 01 Dec 2023 03:10:46 -0800 (PST)
Received: from thinkpad ([117.213.102.92])
        by smtp.gmail.com with ESMTPSA id s5-20020a0cb305000000b0066d12d1351fsm1385912qve.143.2023.12.01.03.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 03:10:46 -0800 (PST)
Date: Fri, 1 Dec 2023 16:40:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231201111033.GL4009@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_031048_832473_F94C65AB 
X-CRM114-Status: GOOD (  26.93  )
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

T24gRnJpLCBEZWMgMDEsIDIwMjMgYXQgMDk6MDE6NDNBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwMS8xMi8yMDIzIDA3OjA3LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCAwMjo0OToxOFBNICswNTMwLCBLcmlz
aG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+ID4+Cj4gPj4gT24gMTEvMjgvMjAyMyAyOjI2
IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+PiBPbiAyNy8xMS8yMDIzIDEzOjEz
LCBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IHdyb3RlOgo+ID4+Pj4gRG9jdW1lbnQgcWNvbSxy
ZWZjbGstYWx3YXlzLW9uIHByb3BlcnR5IHdoaWNoIGlzIG5lZWRlZCBpbiBzb21lIHBsYXRmb3Jt
cwo+ID4+Pj4gdG8gc3VwcGx5IHJlZmNsayBldmVuIGluIFBDSWUgbG93IHBvd2VyIHN0YXRlcy4K
PiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IDxx
dWljX2tyaWNoYWlAcXVpY2luYy5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+ICAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwgICAgICAgIHwg
NyArKysrKysrCj4gPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiA+Pj4+
Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sCj4gPj4+PiBp
bmRleCAyYzNkNjU1M2E3YmEuLmM3NDdjOWYzNTc5NSAxMDA2NDQKPiA+Pj4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1w
aHkueWFtbAo+ID4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sCj4gPj4+PiBAQCAtOTMsNiArOTMsMTMg
QEAgcHJvcGVydGllczoKPiA+Pj4+ICAgICAiI3BoeS1jZWxscyI6Cj4gPj4+PiAgICAgICBjb25z
dDogMAo+ID4+Pj4gKyAgcWNvbSxyZWZjbGstYWx3YXlzLW9uOgo+ID4+Pj4gKyAgICB0eXBlOiBi
b29sZWFuCj4gPj4+PiArICAgIGRlc2NyaXB0aW9uOiBJbiBzb21lIHBsYXRmb3JtIHdoZXJlIFBD
SWUgc3dpdGNoIGlzIGNvbm5lY3RlZCwgcGNpZSBzd2l0Y2ggZHVlIHRvIHNvbWUgZGVzaWduCj4g
Pj4+IFlvdSByZWNlaXZlZCBhIGNvbW1lbnQgdG8gdXNlIHByb3BlciB3cmFwcGluZzogODAuIFBs
ZWFzZSBpbXBsZW1lbnQgaXQuCj4gPj4gSSB3aWxsIHVwZGF0ZSB0aGlzLgo+ID4+Pj4gKyAgICAg
IGxpbWl0YXRpb24gZmFpbHMgdG8gcHJvcGFnZSBjbGtyZXEgc2lnbmFsIHRvIHRoZSBob3N0IGFu
ZCBkdWUgdG8gdGhhdCBob3N0IHdpbGwgbm90IHNlbmQKPiA+Pj4+ICsgICAgICByZWZjbGssIHdo
aWNoICByZXN1bHRzIGluIGxpbmtkb3duIGluIEwxLjIgb3IgTDEuMSBleGl0IGluaXRpYXRlZCBi
eSBFUC4KPiA+Pj4+ICsgICAgICBUaGlzIHByb3BlcnR5IGlmIHNldCBrZWVwcyByZWZjbGsgYWx3
YXlzIG9uIGV2ZW4gaW4gTG93IHBvd2VyIHN0YXRlcy4KPiA+Pj4gVGhlIHByb3BlcnR5IG5hbWUg
c3VnZ2VzdHMgdGhhdCdzIHRoZSBzdGF0ZSBvZiBoYXJkd2FyZSAtIHJlZmNsayBpcwo+ID4+PiBh
bHdheXMgb24uIERlc2NyaXB0aW9uIHN1Z2dlc3RzIHlvdSB3YW50IHRvIGluc3RydWN0IE9TIHRv
IGRvIHNvbWV0aGluZy4KPiA+Pj4KPiA+Pj4gQWdhaW4sIHRoaXJkIHRpbWUgKG9uY2UgZnJvbSBC
am9ybiwgb25jZSBmcm9tIERtaXRyeSksIHJlcGhyYXNlIHByb3BlcnR5Cj4gPj4+IG5hbWUgYW5k
IGRlc2NyaXB0aW9uIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSBpc3N1ZS4gSSBzZWUgZGVzY3Jp
cHRpb24KPiA+Pj4gaW1wcm92ZWQsIGJ1dCBub3QgdGhlIHByb3BlcnR5IG5hbWUuIEFnYWluIGlu
IHRoZSBlbmQgb2YgZGVzY3JpcHRpb24geW91Cj4gPj4KPiA+PiBCb3RoIGJqb3JuIGFuZCBEbWl0
cnkgZ2F2ZSBjb21tZW50cyB0byBjaGFuZ2UgdGhlIGRlc2NyaXB0aW9uIG9ubHksIGFuZCBub3QK
PiA+PiB0aGUgcHJvcGVydHkgbmFtZSwKPiA+Pgo+ID4+IGNvcnJlY3QgaWYgSSBhbSB3cm9uZy4K
PiA+Pgo+ID4+PiBzYXkgd2hhdCBMaW51eCBzaG91bGQgZG8uIEJpbmRpbmdzIGRvIG5vdCBkZXNj
cmliZSBMaW51eCBPUy4KPiA+Pgo+ID4+IEkgd2lsbCByZW1vdmUgdGhlIGxhc3QgbGluZSBpbiB0
aGUgbmV4dCBwYXRjaC4KPiA+Pgo+ID4gCj4gPiBZb3Ugc2hvdWxkIG5hbWUgdGhlIHByb3BlcnR5
IGFzLCAicWNvbSxrZWVwLXJlZmNsay1hbHdheXMtb24iCj4gCj4gS2VlcCB0aGUgY2xvY2sgYnkg
d2hvPyBCeSBkcml2ZXI/IFRoZW4gbm90LCBwcm9wZXJ0eSBzaG91bGQgZGVzY3JpYmUKPiBwaHlz
aWNhbCBwaGVub21lbmEgb3IgaGFyZHdhcmUgaXNzdWUgYmVpbmcgZml4ZWQgaGVyZSwgbm90IHdo
YXQgZHJpdmVyCj4gc2hvdWxkIGRvLgo+IAoKVGhpcyBwcm9wZXJ0eSBpbmRlZWQgZml4ZXMgdGhl
IGhhcmR3YXJlIGlzc3VlICh0aG91Z2ggaW4gYm9hcmQgbGV2ZWwpIGFuZCBJIHNlZQphIHBsZW50
eSBvZiBwcm9wZXJ0aWVzIHNpbWlsYXIgdG8gdGhpcyBvbmUgaW5zdHJ1Y3RpbmcgdGhlIE9TIHRv
IGtlZXAgc29tZQpyZXNvdXJjZSBPTiB0byB3b3JrYXJvdW5kIGhhcmR3YXJlIGlzc3Vlcy4gU28g
dGhleSBhcmUgYWxsIHdyb25nPwoKLSBNYW5pCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
