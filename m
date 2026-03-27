Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E351310F2840
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 15:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEZDLeMtnWtLtCkJQUYvmsEkjx6ec3siDUoQgmoKwLk=; b=T5HyZQY74Wv0yj
	WGz7M1wrKPLpOASzUzfwsoMysnMGFDfoFPvj9IuYwUWK20YirL/uLQkPbo2Dzr1tTwrIb6Sa3ApVW
	mndwzU++1lQRvQOc2bByOn76LV9lwbKjfy3yoXDp7fsusnNX98DvKiFrs+BijGwAn1/2aBnczGD+r
	ARgkPKyqmKrGLhctvPNH5uyM2d+wfjdMliyltt46Cl/JSdz+n8P24tCYQJt0rllMo0pSTNKcGd25f
	DjfWXVtYKISAMOBjsR79/61t0qowoRqQk475ZTek4gguvwTxRa6jPA2T/gbLSDqKs2Y9Gl6fyJ8x8
	qhfvHrgZ8yI9LglBgXIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w697H-00000007h4I-2BKj;
	Fri, 27 Mar 2026 15:28:55 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w697F-00000007h3o-1Oph
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 15:28:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso25293105e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 08:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774625331; x=1775230131; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KPfKYIz0itJnZ243zFJfg1PZYfMp2nj029kDZFys+04=;
        b=SwPVOCM4gZhQ91TKrAfNE2BBD2Bsle/z2IFmvm6Yjs6eeTgXVY1UEmjtbIqNigoRCv
         itrHJUWONrctNJ4UTse+kDXAny3573zrv8Yltnftz/UnidvBOY+/he3TPzppRAt0q1xU
         RsOp54Sdnk+fyCOltudsELfxQGYO/bOyVho5s1dnvLfEOw4m+sUXyMS3pa3TXgvszo43
         eNgXtT+NjE9kcS991nLHD16bYbrwIfsnnjwtYMjdNnpx8aE2x8OAqpv8NxYTsIWf5Q8g
         LJtJ5/Lic4hpIwbVNuvvytUFcBt3vTyuyT5zAXaEADOYtj68UZR94GxW6pK+dwplEUj6
         Nzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774625331; x=1775230131;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPfKYIz0itJnZ243zFJfg1PZYfMp2nj029kDZFys+04=;
        b=ZdXGgDO9YbreLoQcRoYL4JCMMEwt8RlYqbIcCuRSfi3k53YMzP0kMnsNHVb1ZOPnNA
         inCYo8calbaFfMi2zgrmvkAK4fyVT+QtO5nAu3C9dYaxsjwfKsSea2uFEHdwRZZ8Ua2m
         3ndGAzFCt+0XWxHYZmJIbCwp6LqWEEMAPzL7tHTDgePj1ilnMyBL5GHBAF+ZaVScLADY
         YBR7rPw83CG/QYrK9kf0nHjYFLWuzWkm9a9QxdtFmLI12XpxmPGUNgZwe9Ag4+qLa27b
         faasdJO8Sm+/asvJjkA8FVDzJaRKkPpMAHASyWmnoYqk9rJ8U/VjaEYjmfmyoHebTBaO
         kG2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7ei0L7lkmHcIxO83gb6EujRDy4ZeB8Kffxj7JTOQIpaqiTcXuUFCiMddgg5b6HDwSbPcbtUq+DMA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxE9a8VHI8MfaDYlSEEWswXklPsjqB+5GYaEDlrciLMYg0fnBBe
	ztRoWJb0TX0a12F9WyBS4brXv/quKnfnkETxNIRG41EMh0q3z2V3hJ5vLQ1B3nRqpAo=
X-Gm-Gg: ATEYQzwHEOuKtcJuedPky1YXN1O9VW5oPvn02yT72PMVJQxYjMURAz6YdRPlJ4MN0PW
	kkOAf/fSnJufbb0jNUBwZsWg6JoJJUkeeH+ez0jTqZl7lImuY9jhFlLgn45agzdNdN7dFEK6vhw
	2pbUaMqjj2uU/vFiVoyhsvVQREhJ2/TLgeydyKTuN9WuDIIOodV25xsIs9FgIOVZkCQy0BH9/rX
	Ku0ikFi+h7PTBKrRMZAu8ljh5st7t42rE5AcvbDuok8705oLVqMgsO1GMnmHrUdjIUIugxVb/+4
	zj9uPpV/SktR3GeXbuNuHgga39L2rvci7g6MphqMUDVaeDmhfT4AdHgfgJ4qC/7tXEYmwetLCpB
	cvGq9k+0V3uC2lNL9iJDWAdfpJ7DYcxy+8ubrqICnD+8sllEa7MKQMvP2u2D72MiLJBkzKp8HOX
	VdRYs7iizrp7Ug2LWblqwxBYrWcFkDAf0X3li7RFoiX422GKV7fKUCg52WhINOj27WUH5mDMlwz
	7NFsxrJwgfIkT/zmG0Yt5w=
X-Received: by 2002:a05:600c:4743:b0:487:2651:dd6b with SMTP id 5b1f17b1804b1-48727f179aemr49696065e9.29.1774625330441;
        Fri, 27 Mar 2026 08:28:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:81c2:60b3:ff00:9a5e? ([2a01:e0a:106d:1080:81c2:60b3:ff00:9a5e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-487270c3393sm28489395e9.4.2026.03.27.08.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 08:28:49 -0700 (PDT)
Message-ID: <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
Date: Fri, 27 Mar 2026 16:28:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-GB
In-Reply-To: <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_082853_421323_85AC3928 
X-CRM114-Status: GOOD (  26.68  )
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

TGUgMjcvMDMvMjAyNiDDoCAxNTozOCwgQnJ5YW4gTydEb25vZ2h1ZSBhIMOpY3JpdMKgOgo+IE9u
IDI3LzAzLzIwMjYgMTA6MDcsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDMvMjYvMjYgMjow
NCBBTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4+IEFkZCBhIGJhc2Ugc2NoZW1hIGluaXRp
YWxseSBjb21wYXRpYmxlIHdpdGggeDFlODAxMDAgdG8gZGVzY3JpYmUgTUlQSSBDU0kyCj4+PiBQ
SFkgZGV2aWNlcy4KPj4+Cj4+PiBUaGUgaGFyZHdhcmUgY2FuIHN1cHBvcnQgYm90aCBDUEhZLCBE
UEhZIGFuZCBhIHNwZWNpYWwgc3BsaXQtbW9kZSBEUEhZLiBXZQo+Pj4gY2FwdHVyZSB0aG9zZSBt
b2RlcyBhczoKPj4+Cj4+PiAtIFBIWV9RQ09NX0NTSTJfTU9ERV9EUEhZCj4+PiAtIFBIWV9RQ09N
X0NTSTJfTU9ERV9DUEhZCj4+PiAtIFBIWV9RQ09NX0NTSTJfTU9ERV9TUExJVF9EUEhZCj4+IERv
ZXMgdGhlX1BIWV8gRFQgbm9kZSBuZWVkIHRvIGJlIGF3YXJlIGFib3V0IHRoaXMgdXBmcm9udD8K
PiAKPiBZZWFoIHRoYXQncyBhIGZhaXIgcXVlc3Rpb24uCj4gCj4gVGhlIHN0YW5kYXJkIG1vZGVs
IGlzIHRvIHBhc3MgdGhlIG1vZGUgdmlhIGJpbmRpbmcgcmlnaHQgbm93LiBZb3UgX2NvdWxkXyBj
b25maWd1cmUgaXQgQCBydW4gdGltZSBpbiBwcmluY2lwbGUuCj4gCj4gQW5kIHlvdSBjb3VsZCBl
dmVuIGNvbmNlaXZlIG9mIGEgc2Vuc29yIGhhcmR3YXJlIHRoYXQgbWlnaHQgZmluZCB2YWx1ZSBp
biB0aGF0IC0gYnV0IElNTyBpdCdzIGEgMTAwJSBoeXBvdGhldGljYWwgdXNlLWNhc2UgLSB5b3Un
ZCBiYXNpY2FsbHkgbmVlZCBhbiBGUEdBIHRoYXQgY291bGQgb3V0cHV0IENQSFksIERQSFkgb3Ig
Zm9yIHNvbWUgcmVhc29uIFNQTElUX01PREUgRFBIWS4KPiAKPiBCdXQgdGhhdCdzIGEgcHJldHR5
IG9mZiB0aGUgd2FsbCB1c2UtY2FzZSB0byBoeXBvdGhlc2l6ZS4gU3BsaXQtbW9kZSBPVE9IIGlz
IGEgYm9hcmQtbGV2ZWwgcGh5c2ljYWwgcmVhbGl0eSB3aGljaCA9PiBhIERUIGRlc2NyaXB0aW9u
IG5vdCBhIHJ1bnRpbWUgY2hvaWNlLgo+IAo+PiBJZiB3ZSBoYXZlIHNvbWUgc2lkZWJhbmQgc2ln
bmFsIChlLmcuIHRoZSBzZW5zb3IgZHJpdmVyIHNwZWNpZmljYWxseQo+PiByZXF1ZXN0aW5nIEMt
UEhZIG1vZGUpLCB3ZSBjYW4gc2ltcGx5IHRocm93IGFsbCB0aGlzIGNvbXBsZXhpdHkgaW50bwo+
PiBwaHlfbW9kZSArIHBoeV9jb25maWd1cmVfb3B0cywgYWxsIGF0IHJ1bnRpbWUKPiAKPiBMaWtl
IEkgc2F5IGl0cyBjb25jZWl2YWJsZSBidXQgSU1PIG5vdCBhIHJlYWwgdGhpbmcgYW5kIHVubGVz
cyB5b3VyIHNlbnNvciBpcyBhbiBGUEdBIG5vdCBwb3NzaWJsZSB0byBzdXBwb3J0IGluIHJlYWwg
aGFyZHdhcmUuCj4gCj4+IEZ1cnRoZXIsIHRoZSBjb21iby9zcGxpdCBtb2RlIG1heSBwb3NzaWJs
eSBiZSBzZWxlY3RlZCB0aHJvdWdoCj4+IGFnZ3JlZ2F0aW9uIG9mIHJlcXVlc3RzLgo+Pgo+PiBU
aGUgcXVlc3Rpb24gcmVtYWlucyB3aGV0aGVyIHRoZSBzZW5zb3Igc2hvdWxkIGhhdmUgYSBkaXJl
Y3QgY29ubmVjdGlvbiB0bwo+PiB0aGUgUEhZIGl0c2VsZiAoaS5lLiBwaHlzID0gPCZjc2lwaHlO
PiBvciBvZl9ncmFwaCBzdHJhaWdodCBpbnRvIHRoZSBQSFkpCj4+IG9yIHdoZXRoZXIgaXQncyBn
b2luZyB0byBiZSB0cmFuc2xhdGVkIGJ5IHRoZSBjYW1zcyBub2RlICh3aGljaCB3b3VsZCBiZQo+
PiB0aGUgb25lIGhvbGRpbmcgYSBQSFkgcmVmZXJlbmNlKSAtIHRoZXJlJ3MgcHJvYmFibHkgc3Vy
ZmFjZSBmb3IgYWRkaW5nIHN1Y2gKPj4gbmVnb3RpYXRpb24gbG9naWMgaW4gYm90aCBwbGFjZXMK
PiAKPiBUbyBiZSBmcmFua2x5IGhvbmVzdCB5b3UgY2FuIG1ha2UgYW4gYXJndW1lbnQgZm9yIGl0
IGVpdGhlciB3YXkuIEhvd2V2ZXIgbXkgaG9uZXN0bHkgaGVsZCBwb3NpdGlvbiBpcyBhbmFseXNp
bmcgb3RoZXIgdXBzdHJlYW0gaW1wbGVtZW50YXRpb25zIGNvbm5lY3RpbmcgdG8gdGhlIFBIWSBt
ZWFucyB3ZSBjYW4ndCBtYWtlIHRoZSBQSFkgZGV2aWNlIGEgZHJpdmVycy9waHkgZGV2aWNlIC0g
aXQgd291bGQgaGF2ZSB0byBiZSBhIFY0TDIgZGV2aWNlIGFuZCB0aGVuIGZvciBtZSB0aGUgcXVl
c3Rpb24gaXMgd2h5IGlzIHRoYXQgZXZlbiByZXF1aXJlZCA/CgpUaGlzIGlzIHBsYWluIHdyb25n
LCBEVCBkZWZpbml0aW9uIGlzIGRpZmZlcmVudCBmcm9tIHNvZnR3YXJlIGltcGxlbWVudGF0aW9u
LCB5b3UgY2FuIGRvIHdoYXRldmVyIHlvdSB3YW50IGlmIHlvdSBkZXNjcmliZSBIVyBhY2N1cmF0
ZWx5LgoKVGhlIENTSVBIWXMgYXJlIG5vdCB0aWVkIHRvIGEgc2luZ2xlICJjb25zdW1lciIgYmxv
Y2ssIHRoZXkgY2FuIGJlIGNvbm5lY3RlZCB0byBkaWZmZXJlbnQgY29uc3VtZXJzIGF0IHJ1bnRp
bWUsIHdoaWNoIGlzIG5vdCBzb21ldGhpbmcgY2xhc3NpYyBQSFkgZGV2aWNlcyBhcmUgZGVzaWdu
ZWQgZm9yLiBTbyB0aGV5IGFyZSBkZSBmYWN0byBhIG1lZGlhIGVsZW1lbnQgaW4gdGhlIGR5bmFt
aWMgY2FtZXJhIHBpcGVsaW5lLgoKPiAKPiBUaGUgbW9kZWwgd2UgaGF2ZSByaWdodCBub3csIHJp
Z2h0IG9yIHdyb25nIGlzIHNlbnNvciBlbmRwb2ludCB0byBjb250cm9sbGVyLiBTaW1pbGFybHkg
dGhlIDwmcGh5IE1PREVfR09FU19IRVJFPiBpcyBhIHBhdHRlcm4gUm9iIEhlcnJpbmcgc3VnZ2Vz
dGVkIGFuZCBJTU8gaXMgYSBjb25zaXN0ZW50IHBhdHRlcm4gd2Ugc2hvdWxkIGFpbSBmb3IgdXBz
dHJlYW0uIFdlIHNlZSBpdCBpbiBsYXRlc3QgUm9ja2NoaXAsIENhZGVuY2UuCgpUaGlzIGRvZXNu
4oCZdCBwcm9wZXJseSBkZXNjcmliZSB0aGUgZGF0YSBwYXRoLCB3ZSBnb3Qgb3V0IG9mIHRoaXMg
Y2xhc3NpYyBzY2hlbWUgd2hlbiBpbXBsZW1lbnRpbmcgdGhlIHdob2xlIFVTQi1DIGNvbXBsZXgg
b24gcXVhbGNvbW0gU29DcyB3aGVyZSB3ZSBoYWQgdG8gZGVzY3JpYmUgdGhlIGRhdGEgZmxvdyB3
aXRoaW4gYWxsIHRoZSBVU0IvRFNQL0RQL1BIWXMgZWxlbWVudHMsIGFuZCB3ZSBoYXZlIGEgbGlu
ayBiZXR3ZWVuIHRoZSBEUCBjb250cm9sbGVyIGFuZCB0aGUgQ29tYm8gUEhZIGFjdGluZyBhcyBh
IERSTSBicmlkZ2UuCkFuZCBhY3R1YWxseSBSb2IgSGVycmluZyBhc2tlZCB1c2UgdG8gZGVmaW5l
IHRoZSBjb21wbGV0ZSBkYXRhIGZsb3csIGl0IHdhcyBhIHN0cm9uZyByZXF1aXJlbWVudC4gSSBk
b24ndCBzZWUgd2h5IHdlIHdvdWxkbid0IGhlcmUuCgpMb29raW5nIGF0IG90aGVyIHZlbmRvcnMg
YW5kIHN0aWNraW5nIHRvIHRoaXMgaXMgd3JvbmcsIHdlIG5lZWQgdG8gc29sdmUgaG93IHRvIGRl
c2NyaWJlIHRoZSBRdWFsY29tbSBDQU1TUyBjb21wbGV4IHdpdGggYWNjdXJhdGUgcmVwcmVzZW50
YXRpb24gb2YgdGhlIGRhdGEgZmxvdyBhbmQgaHcgY29tcG9uZW50cyBpbnRlcmNvbm5lY3Rpb25z
LiBUaGUgY2hvaWNlIG9mIGtlcm5lbCBBUEkgdG8gYWNjZXNzIGFuIEhXIGVsZW1lbnQgaXMgaXJy
ZWxldmFudCBpbiB0aGUgZGlzY3Vzc2lvbi4KClN0YXJ0aW5nIHJlZmFjdG9yaW5nIHRoZSBEVCBy
ZXByZXNlbnRhdGlvbiBvZiBDQU1TUyBpcyBnb29kLCBzdGFydGluZyB3aXRoIFBIWSBpcyB3ZWly
ZCBzaW5jZSBJIGRvbid0IHNlZSB3aGF0IGl0IGRvZXMgc29sdmUgd2UgY2FuJ3Qgc29sdmUgYWxy
ZWFkeSwKYnV0IHlvdSBuZWVkIHRvIHRha2UgaW4gYWNjb3VudCBob3cgdGhlIENTSVBIWXMgYXJl
IGNvbm5lY3RlZCB0byBvdGhlciBIVyBibG9ja3MuIFNpbXBseSBhZGRpbmcgYSAicGh5cyA9IiBy
ZWZlcmVuY2UgZnJvbSBDQU1TUyBub2RlIGRvZXNuJ3QgcmVmbGVjdAphdCBhbGwgd2hpY2ggSFcg
ZWxlbWVudCB3aWxsIGNvbnN1bWUgdGhlIFBIWSwgYW5kIHdoYXQgYXJlIHRoZSBsaW5rIHBhcmFt
ZXRlcnMgYmV0d2VlbiB0aGUgY29uc3VtZXIgYW5kIHRoZSBQSFkgYW5kIGJldHdlZW4gdGhlIFBI
WSBhbmQgdGhlIFNlbnNvci4KVGhvc2UgYXJlIHRoZSB3aG9sZSBtZWFuaW5nIG9mIHRoZSBwb3J0
L2VuZHBvaW50IGxpbmtzLCB3aGVyZSB3ZSBjYW4gZGVmaW5lIG11bHRpcGxlIGVuZHBvaW50cyBm
b3IgYSBzYW1lIGNvbm5lY3Rpb24gdG8sIGZvciBleGFtcGxlLCBkZWZpbmUgbXVsdGlwbGUgc2Vu
c29ycyBvbiBhIHNhbWUgUEhZIGZvciB0aGUgc3BsaXQtbW9kZS4KCk5laWwKCj4gCj4gCj4+IE5v
dGUgdGhpcyBpcyBhIHF1ZXN0aW9uIGFuZCBJJ20gbm90IGF3YXJlIG9mIGFsbCB0aGUgcG9zc2li
bGUgY29tYmluYXRpb25zCj4+Cj4+IEtvbnJhZAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
