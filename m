Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2B01090220
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 13:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91XOXakKHiHgVPSD/ohh4Vdrr0FRWWWqcumH5d600t4=; b=Wlc55oaVhlqaxh
	BlCPBJoX2/taTAwIolcZF/yurVSScYWNiDUrLmfDu0raeguTPt86WpQ4ZRkyFmFTByaA/J4PES/1P
	7Izd5bVX8l17mwJ/6eYwahx2RU+9QU4/uIhJN6H+RX87rQZdGtIs+TcWe1AEAl/Kp4ob5zA/h54zZ
	qw/yyadza6wOFxGJp2aqwiyceTV4333kbT2ixTX5NjK950L/wacduCqESAh9vj1LLheFQl4v9t+Uv
	rB6nGRzK+8fWxPx5Y9jTlJnV6LtDk+zIX98/dDl6hUUlEjYDjpggGM2ZJHYz0ix/lHxWCJ6OxJefQ
	8gWjeqRIwGvAF8wSAkqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3D7c-0000000Aeza-1jlp;
	Thu, 19 Mar 2026 13:09:08 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3D7Z-0000000Aez2-1udb
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 13:09:06 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5a1438649b2so53207e87.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 06:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773925743; x=1774530543; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eK3EVuDFkrZ7hmAmWn6xkd27Z8e5d83PJyq1D4T9NcA=;
        b=j00YP3WwohYwWa0XBCT8YxRK2bkq0559xDPHhUc7qi5eQUiiIiLioe0LLRSqhludwd
         bpVTHwza78+aregqihzGa5m9gq2n86FNXw+w4HOHwAStlPiRjcOdm0aBl3T88PUqdC28
         cmtSpwFiqnwK4YgB3Mp8aCf2+HQ4VmS3NVjolY3oYmA0RBg0Qpwq6a/TKEezlaZoCc/1
         i/8vBeRN3koBCE8wHq4V1Cq5ygIR3uiPecr2q2ZMX5KY7jtkT7cywAWbKcKuKwwSQ/i8
         dmc+K/VTZRek2NK3Mpov7QvVQ4ScRBziPepxWZ84m0JpYPiF/tSnkiuu6DMGvWCddVUB
         MXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773925743; x=1774530543;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eK3EVuDFkrZ7hmAmWn6xkd27Z8e5d83PJyq1D4T9NcA=;
        b=eh/6GGw5XuVWlhyuLztQBmMCiyrEOsUoE0y61e0Ua39DZvNMHUY7lQeDY1W2CeTuAZ
         5W9DQsBoYoQRRSNGnbwssH9+RcdJ1NtwWAOxsSIG/b3MhTC7jRczE5WBkDB1FtWRzDQ1
         9moR8ujNeE40keC5N1gOV0HBi5T2qWvjK9UTFg92ZxqhVAHIx3c+3siv/C9GJFrJlEmf
         HhQccM62F+vngKjTM8pnaPmiB1kFzh4EveSomszWNTaxNkiMQXVDnMcYqc/MgQWIvNZj
         p/4yR4lMcWtnbgKd4q3TcyYFprwvI+oarc3xzyLf3Z8+tFTjw5+rcA0UrXkMqNxkHvyK
         TeQA==
X-Forwarded-Encrypted: i=1; AJvYcCUbvmjTGzltHokcHwhD3UjcyIkKx4prbcgyXmD1dzZlneYYBtcNshpIt4AaJbF2FxzvsHALmTpJrpo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlUL42WsHcPK6b58Vcr2B9XRDHP3C1U16ONBmWtuN5Z9gY05an
	xvjNxFZ4G4ceLKRQERsATpcJWWS73+n8KEWJD29TR5ZuuDJsuLhIOxvStcm5BcO/yo8=
X-Gm-Gg: ATEYQzyz0vnLN/5Yjwmm2HbZodS1BCGC2pBAVmbA8BFpPelHejDLol4ngZ4ZiL32nIS
	gazqxU7/Yxu6imiVgIbIpm3ePiCrNExiJwhSdcKO69jYnU1if3qpQ3jtMNhIJFdDYvBSl8/04Os
	eHHCTcVgG/xlhWFd1H6uOdokCJNYemfA9npgf83CCn8bv4z4tlwTeENBsvrkL0nG9g3JavSEvS8
	oAapLiAwgL6ofsLHr8RCh93meKsWUCB8gCECZfiS2SrpsDbFGirOLpz7dRBR09HsK5FTI0e2jZs
	jbplCuwl/lvK7JpTDynZdIP1WV14NP4Kk5ljmlsRyTlRVc7BJq/t6GxgSLKk6IyxLEPTygjXpeT
	yahJ56exlAmQUkOwxinfl/TqZABNZkhv+6qwNJBvlyXAW20AaF7ykz66V7nKGn6qefsdqxlxUzB
	QgzDx+CaefCYGFx/R3mmD2CPW7Jt7vfzjDkoFYSm+8V+OpeSiR9wovu2Fgb8MSA2pr4+kNp2mSs
	5dq8w==
X-Received: by 2002:a05:6512:114f:b0:5a2:7b70:6b9f with SMTP id 2adb3069b0e04-5a27b706d4fmr1208493e87.2.1773925742648;
        Thu, 19 Mar 2026 06:09:02 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c27490sm1148020e87.13.2026.03.19.06.09.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 06:09:02 -0700 (PDT)
Message-ID: <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
Date: Thu, 19 Mar 2026 15:08:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_060905_526771_06B0A942 
X-CRM114-Status: GOOD (  25.82  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy8xOC8yNiAxNzoyNywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQsIE1hciAx
OCwgMjAyNiBhdCAwNDowNzozOVBNICswMTAwLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4gT24g
My8xOC8yNiAxNDoxNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4+IE9uIDE4LzAzLzIwMjYg
MTA6MTUsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4+PiArwqDCoMKgIC8qCj4+Pj4+ICvCoMKg
wqDCoCAqIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkubGFuZXMgc3RhcnRzIGZyb20gemVy
byB0bwo+Pj4+PiArwqDCoMKgwqAgKiB0aGUgbWF4aW11bSBudW1iZXIgb2YgZW5hYmxlZCBsYW5l
cy4KPj4+Pj4gK8KgwqDCoMKgICoKPj4+Pj4gK8KgwqDCoMKgICogVE9ETzogYWRkIHN1cHBvcnQg
Zm9yIGJpdG1hc2sgb2YgZW5hYmxlZCBsYW5lcyBhbmQgcG9sYXJpdGllcwo+Pj4+PiArwqDCoMKg
wqAgKiBvZiB0aG9zZSBsYW5lcyB0byB0aGUgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSBz
dHJ1Y3QuCj4+Pj4+ICvCoMKgwqDCoCAqIEZvciBub3cgdGFrZSB0aGUgcG9sYXJpdGllcyBhcyB6
ZXJvIGFuZCB0aGUgcG9zaXRpb24gYXMgZml4ZWQKPj4+Pj4gK8KgwqDCoMKgICogdGhpcyBpcyBm
aW5lIGFzIG5vIGN1cnJlbnQgdXBzdHJlYW0gaW1wbGVtZW50YXRpb24gbWFwcyBvdGhlcndpc2Uu
Cj4+Pj4+ICvCoMKgwqDCoCAqLwo+Pj4+Cj4+Pj4gVGhpcyBpcyB3cm9uZyBzaW5jZSB5b3UgbG9v
c2UgdGhlIGxhbmVzIG1hcHBpbmcgZGVmaW5lZCBpbiBEVCwgd2hpY2ggaXMgc3RpbGwgaW4gQ0FN
U1MKPj4+PiBidXQgaXMgYSBQSFkgcHJvcGVydHkuIFRoZSBsYW5lcyBsYXlvdXQgaXMgbm90IGEg
cHJvcGVydHkgb2YgdGhlIENTSSBjb250cm9sbGVyLAo+Pj4+IENTSSBjb250cm9sbGVyIG9ubHkg
bmVlZCB0byBrbm93IHRoZSBsYW5lcyBjb3VudCwgYW5kIG5vdCB0aGUgbGF5b3V0Lgo+Pj4KPj4+
IExhbmUgbGF5b3V0IGlzIGEgUEhZIGNvbmNlcm4gYnV0LCB0aGUgUEhZIEFQSSBnaXZlcyB1cyBw
aHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5IHdoaWNoIHNob3VsZCBiZSBleHRlbmRlZCB0byBw
cm92aWRlIGxheW91dCBhbmQgcG9sYXJpdHkuIFRoaXMgd291bGQgdGhlbiBiZSBvZiBiZW5lZml0
IHRvIG1vcmUgdGhhbiBqdXN0IHFjb20vY2Ftc3MuCj4+Cj4+IFdoeSA/IHRoZSBvbmx5IGNvbmNl
cm4gYmV0d2VlbiBhIGNvbnRyb2xsZXIgYW5kIGEgUEhZIGlzIHRoZSBsYW5lIGNvdW50IHRvIGNh
bGN1bGF0ZSB0aGUgYmFuZHdpZHRoLCB0aGUgYWN0dWFsIHBpbiBsYXlvdXQgaXMgY2VydGFpbmx5
IG5vdCBhIGNvbnRyb2xsZXIgY29uY2Vybi4KPiAKPiBJIHRoaW5rIHRoYXQgdGhlIERUIHNob3Vs
ZCBiZSBwcm92aWRpbmcgdGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZQo+IGNvbm5lY3Rpb24gb2Yg
dGhlIGxhbmVzIGFuZCB0aGVpciBudW1iZXIgb24gdGhlIGJvYXJkLiBUaGVuIHRoZSBDU0kgaG9z
dAo+IG1pZ2h0IHdhbnQgdG8gbGltaXQgdGhpcyBmdXJ0aGVyIGZvciB3aGF0ZXZlciByZWFzb25z
LiBCdXQgSSBkb24ndCB0aGluawo+IHRoYXQgdGhlIHByb3BlcnRpZXMgb2YgdGhlIGxhbmVzIHNo
b3VsZCBiZSBjb25maWd1cmFibGUgYmV0d2VlbiB0aGUKPiBjb250cm9sbGVyIGFuZCB0aGUgUEhZ
Lgo+IAo+Pgo+Pj4KPj4+IFJpZ2h0IG5vdyBub25lIG9mIHRoZSBDQU1TUyB1c2VycyBmb3IgdGhp
cyBkcml2ZXIgZGVwZW5kIG9uIGFueSBvdGhlciBtYXBwaW5nIGFuZCBJIHByb3Bvc2UgYSBzZXBh
cmF0ZSBzZXJpZXMgdG8gZml4IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgcmF0aGVyIHRo
YW4gaW50cm9kdWNlIGRhdGEtbGFuZXMgdG8gRFBIWS4KPj4KPj4gTm9uZSBvZiB0aGUgdXBzdHJl
YW0gdXNlcnMgb2YgY2Ftc3MuCj4+Cj4+IFRoZSBwcm9ibGVtIGlzIGV2ZW4gbGFyZ2VyLCBhcyB5
b3UgcmVwbGllZCBpbiBbMV0sIHRoZSBjc2lwaHkgaXMgc3RpbGwgZXhwb3NlZCBhcyBhIG1lZGlh
IGVsZW1lbnQgZnJvbSB0aGUgQ0FNU1MgZHJpdmVyLCB0aGlzIG1lYW5zIHRoaXMgZHJpdmVyIGlz
IG5vdCBjb21wbGV0ZSwKPj4gaXQgc2hvdWxkIGJlIGEgbWVkaWEgZHJpdmVyIGVudGlyZWx5IHdp
dGggZXZlbnR1YWxseSBhbiBpbnRlcm5hbCBQSFkgYXV4IGRyaXZlciwgYnV0IHRoaXMgd291bGQg
YmUgZW50aXJlbHkgaW1wbGVtZW50YXRpb24gc3BlY2lmaWMuCj4+Cj4+IEVpdGhlciB0aGUgUEhZ
IGlzIHN0YW5kYWxvbmUgYW5kIHRoZSBQSFkgY29uc3VtZXIgb25seSBjYWxscyBwaHlfb3Blbi9p
bml0L2NvbmZpZ3VyZS9wb3dlcl9vbi9wb3dlcl9vZmYvZXhpdCwgb3RoZXJ3aXNlIGl0J3Mgbm90
IGEgZnVsbHkgc3RhbmRhbGluZSBQSFkgYnV0IGEgY29tcG9zaXRlIGRldmljZSBsaWtlIGhlcmUu
Cj4+Cj4+IEkgcHJvcG9zZSB0aGF0IHlvdSB3cml0ZSBhIHByb3BlciBtZWRpYSBkcml2ZXIgZm9y
IHRoZSBxY29tIGNzaXBoeSwgd2hpY2ggZXZlbnR1YWxseSBzcGlucyBhIFBIWSBkcml2ZXIgYXMg
YW4gYXV4IGRldmljZS4KPiAKPiBXaHkgZG8geW91IHdhbnQgYSBtZWRpYSBkcml2ZXI/IElzbid0
IFBIWSBkcml2ZXIgZW5vdWdoPwo+IAoKQXMgZm9yIHRvZGF5IENBTVNTIENTSVBIWSBhcmUgYWxy
ZWFkeSBtZWRpYSBkZXZpY2VzLCBhbmQgYSB1c2VyIGFwcGxpZXMgbWVkaWEKc3BlY2lmaWMgcHJv
cGVydGllcyB0byB0aGVtLCBmb3IgaW5zdGFuY2UgbWVkaWEgYnVzIGZvcm1hdCwgcmVzb2x1dGlv
biBldGMuClRlY2huaWNhbGx5IHRoaXMgbWlnaHQgYmUgcmVtb3ZlZCBmcm9tIENBTVNTLCBidXQg
aWYgc28sIHRoZW4gaXQgc2hvdWxkIGJlCmRvbmUgYmVmb3JlIHRoaXMgbmV3IFBIWSBkcml2ZXIg
bW9kZWwgaXMgYXBwbGllZC4KCi0tIApCZXN0IHdpc2hlcywKVmxhZGltaXIKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
