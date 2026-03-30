Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2227CFB3CE2
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 09:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNRTzQi4m98PLdbpsbvyDlFwYNWsTl5bvC9uryZpGvU=; b=P9X5kOIBfLMWCV
	y5JpN6G+WvzpZkHPyNnFpaoW8SSGaVnV74uppzV6e8+8S76XvyASn689GBHKIpJ78Sq4U9BmZWB6g
	mvrQYapbn5WMyfTN4hkcRq9+MGmT2t2pBrkQxKTW77WcrAxWsnlEPsAe4p2pzeArNmuPJUT/MyH9V
	G9JHalvhsGqv8rk3xeNDPMQVZ+6pHNGV7UyKvjuHUZI2oLFNIkOZ37JDkZKAMQK2ZxjNqTd+K+5TI
	i7K+A7wsyO5OiwRXmzm+Zd4ZUYS3nl83m+Wuqf8qY3Mk7/ll7qTo4S0EmTaEqn3mshO6AlJNJLJgI
	G54eePZrUn7BrJdNXalw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78W8-0000000Avet-3MgH;
	Mon, 30 Mar 2026 09:02:40 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w78W5-0000000AveU-0nD3
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 09:02:39 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b97bca3797dso635881466b.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 02:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774861355; x=1775466155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ta07eiLe/pVnHnMt5yIA7myVk76JrlK9RRotd9Crmig=;
        b=RMC34tAJAsblFIG8hgOWeN0+TD8ke9YUKW+uTOe0jTJzkN0Q/m+QRDJJr5MKSJCJj5
         hoZR78Mfe0/N9SAj7cvfbPp4qgWkXP2TQYuG94THypjYnmHYI1WnBG4KVGi1bG9CCnS2
         aEgDyaKDOszNFbCEfMD/bh1tbbT3oFid199u77GensatT7gvA2qQ6dLSEhUs1UI3aWA3
         TY5aZ2wtUNFntJXXdsTTgMAbe11XcozvJjvcfvy/xrVUaZEQG4qOkRVbWdK4qozWjfEn
         JgTwFn16pQEKkj3bk5EtlokM36xAtlsbcw/pkGM1+8uBm5r0Ow7OzE8i6ZobGyOCM2nY
         UrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774861355; x=1775466155;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ta07eiLe/pVnHnMt5yIA7myVk76JrlK9RRotd9Crmig=;
        b=L6PWaMY7+TeeUjpfrR002MJUlU9/FkAFybuosQIcVR5750az3GlJK54gOpXqzKHkKF
         IxU2s3KZV9nzxWkPTqHPCBSUlXzEDAw8+Vw7f2+alWcJRO2W3FSIHVwmZXqYIQK8Pc7P
         SpmuSNFAiFpCFDnrYqzGdBx9ye3w/Ex1e2EvfDytw9+fXCLaZXaRjuU/IiiD1JB7wyj5
         19IfB5zDaQ/kCzlj337B5CM92X7mWxOHjPUwRYrj9hmxQxZuk5cVzTcdIHo0cROqmAjG
         HKAWtrGlhYKVBPwc1n5f5K+SFbNb4BHIeTPmkp2/g5eHMeqcM2+0tBVaqAJMASBv7gFb
         TJOg==
X-Forwarded-Encrypted: i=1; AJvYcCW5ZTyNg3VP6awyNpyRp6OkJ1dDisiyCj96OeAD48+n5giiywTG/lkrYJiQ7EJzlOrONmbSxXy6nOo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDaA5iJKimn5t6cA7I3al3UmOUTVIT6Ziq6KlACbQPVcKatzj5
	o4IsomTawLmG+dUbw2QB6b1tU4jghdVAb38rtGej3ui9VRclh0pQJzBvYvetTR678Ww=
X-Gm-Gg: ATEYQzzZXyeRRIjH6BCORZbNbjDPPheWryhq1Luici5SHOJOZWlD+E66uon5SiZ/K9s
	6Wsh/kS4cKaJ1EwQ3YEjqqW7tusLJXWrIff50NnpVSRQlvVBJesmmoJbTl8y5pRlYmSB+c0faYi
	2aIqeRwKZChbfOpSMu1rrc9IANAHChTQJ410O7GqHLMGNKzbI9TQ0i/nkDL6a1AZYJljnQVbh2t
	1WWt2EY5Ib1jon/ZjsOJp9P+AXQtTXr3bm90GWFUaR/1khv7g8TxP47CgQKIwT4TsEr+oY2Blt+
	cDzQH+/hutY7HTSLNf1catJ02DEycKrA6WR+JQWc7XUvVALHuzXkG3TbeqYgoqVrxx+dqmMh7w8
	KlT9qTpkqK0RUqaZyNCEgrgvMoIxVpnB5uUfQxgeCZnorzwbH3cHJwimSySinY5FIy2sovhS5Jw
	nul1NKWN4ARJKs8XQpkOsZO9+99vyoTytqVFN0
X-Received: by 2002:a17:907:7b9f:b0:b98:33c5:1bb2 with SMTP id a640c23a62f3a-b9b503b6f2dmr693893066b.25.1774861354146;
        Mon, 30 Mar 2026 02:02:34 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.241.179])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b7b1a5924sm263387066b.32.2026.03.30.02.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 02:02:33 -0700 (PDT)
Message-ID: <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
Date: Mon, 30 Mar 2026 10:02:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_020237_298323_DCB48271 
X-CRM114-Status: GOOD (  39.94  )
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

T24gMzAvMDMvMjAyNiAwODo0OSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMy8yNy8yNiAx
ODo0MiwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gMjcvMDMvMjAyNiAxNToyOCwgTmVp
bCBBcm1zdHJvbmcgd3JvdGU6Cj4+Pj4gVG8gYmUgZnJhbmtseSBob25lc3QgeW91IGNhbiBtYWtl
IGFuIGFyZ3VtZW50IGZvciBpdCBlaXRoZXIgd2F5LiAKPj4+PiBIb3dldmVyIG15IGhvbmVzdGx5
IGhlbGQgcG9zaXRpb24gaXMgYW5hbHlzaW5nIG90aGVyIHVwc3RyZWFtIAo+Pj4+IGltcGxlbWVu
dGF0aW9ucyBjb25uZWN0aW5nIHRvIHRoZSBQSFkgbWVhbnMgd2UgY2FuJ3QgbWFrZSB0aGUgUEhZ
IAo+Pj4+IGRldmljZSBhIGRyaXZlcnMvcGh5IGRldmljZSAtIGl0IHdvdWxkIGhhdmUgdG8gYmUg
YSBWNEwyIGRldmljZSBhbmQgCj4+Pj4gdGhlbiBmb3IgbWUgdGhlIHF1ZXN0aW9uIGlzIHdoeSBp
cyB0aGF0IGV2ZW4gcmVxdWlyZWQgPwo+Pj4KPj4+IFRoaXMgaXMgcGxhaW4gd3JvbmcsIERUIGRl
ZmluaXRpb24gaXMgZGlmZmVyZW50IGZyb20gc29mdHdhcmUgCj4+PiBpbXBsZW1lbnRhdGlvbiwg
eW91IGNhbiBkbyB3aGF0ZXZlciB5b3Ugd2FudCBpZiB5b3UgZGVzY3JpYmUgSFcgCj4+PiBhY2N1
cmF0ZWx5Lgo+Pgo+PiBJJ20gbm90IHN1cmUgd2hhdCBwb2ludCBpdCBpcyB5b3UgYXJlIHRyeWlu
ZyB0byBtYWtlIGhlcmUuIEFyZSB5b3UgCj4+IHRyeWluZyB0byBzYXkgZHJpdmVycy9waHkgaXMg
T0sgd2l0aCB5b3UgYnV0IHlvdSB3YW50IGFuIGVuZHBvaW50ID8gSWYgCj4+IHNvLCBwbGVhc2Ug
anVzdCBzYXkgc28uCj4gCj4gSSdtIGFnYWluc3QgdXNpbmcgdGhlICJwaHlzID0gPD4iIHByb3Bl
cnR5IGluIHRoZSBDQU1TUyB0byByZWZlcmVuY2UgdGhlIAo+IFBIWXMsIGEgIlBIWSIgaW4gdGhl
IGNsYXNzaWMgdGVybWlub2xvZ3kgaXMgdGllZCB0byBhIHNpbmdsZSBjb25zdW1lciwgCj4gYW5k
IGlmIGl0IGNhbiBiZSBzaGFyZWQgdG8gbXVsdGlwbGUgY29uc3VtZXIgeW91IG11c3QgbW9kZWwg
YSBtdXggb3IgCj4gd2hhdGV2ZXIgaW4gdGhlIG1pZGRsZS4KClRoZSBDU0lQSFktdG8tQ1NJRCBy
b3V0aW5nIGlzIHJ1bnRpbWUtY29uZmlndXJhYmxlIGFuZCBpcyBhbHJlYWR5IAptYW5hZ2VkIGJ5
IHRoZSBtZWRpYSBjb250cm9sbGVyIGZyYW1ld29yay4KCkRUIGRlc2NyaWJlcyBzdGF0aWMgaGFy
ZHdhcmUgY29ubmVjdGlvbnMuIFRoZSBkeW5hbWljIG11eCBpcyBhIHNvZnR3YXJlIApjb25jZXJu
LCBub3QgYSBoYXJkd2FyZSBkZXNjcmlwdGlvbiBjb25jZXJuLgoKCj4gVGhlIFBIWSBBUEkgYXMg
YW4gaW50ZXJuYWwgc29mdHdhcmUgaW1wbGVtZW50YXRpb24gaXMgcHJvYmFibHkgZmluZSwgCj4g
ZXZlbiBpZiBpdCBtYWtlcyBpbXBsZW1lbnRhdGlvbiBvZiBzcGxpdCBtb2RlIG11Y2ggbXVjaCBo
YXJkZXIgYW5kIAo+IGRvZXNuJ3QgcmVhbGx5IHNvbHZlIGFueXRoaW5nLCB5b3UgY2FuIGp1c3Qg
Y2FsbCBpbml0KCkvcG93ZXJvbigpLyAKPiBwb3dlcm9mZigpL2V4aXQoKSBkaXJlY3RseSBmcm9t
IHRoZSBDU0lQSFkgbWVkaWEgY2FsbGJhY2tzLgoKR3JlYXQuCgo+PiBJIGNhbiBzZWUgYW4gYXJn
dW1lbnQgZm9yIHRoYXQgaGVuY2UgbXkgcmVzcG9uc2UgdG8gS29ucmFkLCBJIGp1c3QgCj4+IGRv
bid0IHNlZSB3aHkgaXRzIGEgUXVhbGNvbW0gc3BlY2lmaWMgYXJndW1lbnQgYW5kIG9mIGNvdXJz
ZSAKPj4gdW5kZXJzdG9vZCBzdHVmZiBidWJibGVzIHVwIGluIHJldmlldywgd2UgaGF2ZSBhIHB1
YmxpYyBkZWJhdGUgYW5kIAo+PiBjb21lIHRvIGEgY29uc2Vuc3VzIC0gdGhhdCdzIGEgZ29vZCB0
aGluZy4KPj4KPj4gSG93ZXZlciwgSSdkIHdhbnQgd2lkZXIgYnV5LWluIGFuZCB1bmRlcnN0YW5k
aW5nIHRoYXQgZW5kcG9pbnRzIGluIHRoZSAKPj4gUEhZcyBpcyBhIG1vcmUgYWNjdXJhdGUgZGVz
Y3JpcHRpb24gb2YgdGhlIGRhdGEtZmxvdy4KPiAKPiBJdCBpcywgYW5kIGl0IHdhcyBkZXNpZ25l
ZCBmb3IgdGhhdCwgYW5kIGV4dGVuc2l2ZWx5IHVzZWQgaW4gdGhlIG1lZGlhIAo+IERUIHJlcHJl
c2VudGF0aW9uLCBzbyBJIHdvbmRlciBoZXJlIHlvdSB3b3VsZCBub3QgdXNlIGl0Li4uCj4gSW4g
YW4gaWRlYWwgd29ybGQsIHlvdSB3b3VsZCBhZGQgbm9kZXMgZm9yIGVhY2ggQ0FNU1MgaHcgZWxl
bWVudHMgYW5kIAo+IGFkZHMgcG9ydC9lbmRwb2ludHMgbGlua3MgYmV0d2VlbiBhbGwgbm9kZXMg
dG8gZGVzY3JpYmUgdGhlIGRhdGEgZ3JhcGgsIAo+IHRoaXMgd291bGQgYmUgdXNlZCB0byBjb25z
dHJ1Y3QgdGhlIG1lZGlhIGNvbnRyb2xsZXIgZ3JhcGgsIGFuZCBtYWtlIGl0IAo+IG11Y2ggZWFz
aWVyIHN1cHBvcnRpbmcgbmV3IGhhcmR3YXJlLgoKWWVzIGJ1dCBiZSBwcmFnbWF0aWMgTmVpbC4g
VGhlIGZpcnN0IHN0ZXAgaW4gbWFraW5nIHRoZSBtb25vbGl0aCBpbnRvIApzdWItbm9kZXMgaXMg
dGhlIENTSVBIWS4KCk9uY2UgdGhlIENTSVBIWSBpcyBpbiwgd2UgY2FuIGZvbGxvdyBvbiB3aXRo
IGFkZGluZyBuZXcgbm9kZXMgdGhhdCB3YXkgCklQRSwgQlBTLCBJQ1AsIEpQRUcgd2hhdGV2ZXIg
YW5kIGFsc28gd29yayBvbiBpbXBsZW1lbnRpbmcgdGhlIG9sZCBzdHVmZiAKaW4gdGhhdCBuZXcg
d2F5LgoKCj4gCj4+Cj4+IFdlJ3ZlIGJlZW4gYXBwbHlpbmcgRFQgYmluZGluZ3MgYXBsZW50eSB3
aXRob3V0IHRoYXQgc28gZmFyLiBTbyB3ZSAKPj4gd291bGQgZXN0YWJsaXNoIG5ldyBDU0kyIFBI
WSBiaW5kaW5ncyBzaG91bGQgcmVwcmVzZW50IHRoZSBzZW5zb3IgCj4+IGVuZHBvaW50cy4KPiAK
PiBXZSd2ZSBiZWVuIHVzaW5nIGEgZHVtbXkgcmVwcmVzZW50YXRpb24gb2YgQ0FNTSBpbiBhIHNp
bmdsZSBub2RlIHdpdGggCj4gb25seSBlbmRwb2ludHMgY29ubmVjdGluZyB0byB0aGUgc2Vuc29y
cyBhbmQgaGlkaW5nIGFsbCB0aGUgaGFyZHdhcmUgCj4gbGF5b3V0IGluIGNvZGUsIGl0IGRvZXNu
J3Qgc2NhbGUgYW5kIG1ha2VzIHN1cHBvcnRpbmcgbmV3IEhXIGhhcmQuCj4gSSBtZWFuIHRoaXMg
aXMgY29tbW9uIHNlbnNlLCB3aHkgd291bGQgd2UgY29udGludWUgdG8gc3RpY2sgdG8gdGhlIAo+
IGN1cnJlbnQgQ0FNU1MgYmluZGluZ3MgPz8/CgpXZSBfd29uJ3RfIEkganVzdCBkb24ndCBzdXBw
b3J0IGEgYmlnIGJhbmcgaW50ZWdyYXRpb24uIFByb2dyZXNzaXZlIApjaGFuZ2VzIG92ZXIgYSBs
b25nZXIgdGltZWxpbmUgbWFrZSB0aGUgdHJhbnNpdGlvbiBtYW5hZ2VhYmxlLCB3aXRob3V0IAph
Y2NlcHRpbmcgZW5kbGVzcyBzdWItc3RhbmRhcmQgc3R1ZmYgaW4gdGhlIG1lYW50aW1lIG9yIGhv
bGRpbmcgdXAgYWxsIApuZXcgU29DIHN1Ym1pc3Npb24gdW5sZXNzL3VudGlsLgoKSSBtZWFuIHRo
ZXJlIGlzIGEgQ0FNU1MgbWVldGluZyB3aGljaCBJJ3ZlIGJlZW4gcnVubmluZyBmb3IgbmVhcmx5
IGEgCnllYXIgbm93IHRoYXQgYm90aCB5b3UgYW5kIFZsYWQgYXJlIGludml0ZWQgdG8gd2hlcmUg
d2UgaGF2ZSBiZWVuIApkaXNjdXNzaW5nIHRoaXMgZm9yIG1vbnRocy4uLgoKQW55d2F5IG9uZSBj
b25jbHVzaW9uIG9mIHRoYXQgaXMgd2Ugd2FudCB0byB0cmFuc2l0aW9uIHRvIGluZGl2aWR1YWwg
Cm5vZGVzIGZvciBldmVyeXRoaW5nLgoKUEhZIGlzIHRoZSBmaXJzdCBzdGVwIHdoaWNoIEknbSB0
YWtpbmcgYmVjYXVzZSBpdHMgZWFzaWVyIGZvciBtZSBhcyAKQ0FNU1MgbWFpbnRhaW5lciB0byBj
b252aW5jZSB0aGUgQ0FNU1MgbWFpbnRhaW5lciB0byB0YWtlIHRoZSByZWxldmFudCAKcGF0Y2hl
cy4KCmRyaXZlcnMvcGh5IG5vdHdpdGhzdGFuZGluZy4KCj4+Cj4+IElzIHRoYXQgd2hhdCB5b3Ug
d2FudCA/Cj4+Cj4+PiBUaGUgQ1NJUEhZcyBhcmUgbm90IHRpZWQgdG8gYSBzaW5nbGUgImNvbnN1
bWVyIiBibG9jaywgdGhleSBjYW4gYmUgCj4+PiBjb25uZWN0ZWQgdG8gZGlmZmVyZW50IGNvbnN1
bWVycyBhdCBydW50aW1lLCB3aGljaCBpcyBub3Qgc29tZXRoaW5nIAo+Pj4gY2xhc3NpYyBQSFkg
ZGV2aWNlcyBhcmUgZGVzaWduZWQgZm9yLiBTbyB0aGV5IGFyZSBkZSBmYWN0byBhIG1lZGlhIAo+
Pj4gZWxlbWVudCBpbiB0aGUgZHluYW1pYyBjYW1lcmEgcGlwZWxpbmUuCj4+Cj4+IFRoZSBleGlz
dGluZyBDQU1TUyBiaW5kaW5nIGFuZCBtZWRpYSBncmFwaCBhcmUgbm90IGNoYW5nZWQgYnkgdGhp
cyAKPj4gc2VyaWVzLgo+IAo+IFRoaXMgaXMgbm90IG15IHBvaW50LCBJIGRvbid0IGNhcmUgYWJv
dXQgdGhlIHNvZnR3YXJlIGltcGxlbWVudGF0aW9uIGF0IAo+IGFsbCwgSSBjYXJlIGFib3V0IGFj
Y3VyYXRlIGhhcmR3YXJlIHJlcHJlc2VudGF0aW9uLiBVc2luZyB0aGUgInBoeXMgPSAKPiA8PiIg
cHJvcGVydHkgZG9lcyBub3QgZGVzY3JpYmUgaGFyZHdhcmUgYWNjdXJhdGVseS4KPiAKPiBJbiBv
dGhlciB3b3JkczogVGhlIENTSVBIWSBhcmUgbm90IGNvbm5lY3RlZCB0byBDQU1TUy4gVGhpcyBp
cyBfbm90XyAKPiB0cnVlLCB0eWluZyB0aGUgQ1NJUEhZcyB0byB0aGUgQ0FNU1MgYmxvY2sgaGlk
ZXMgdGhlIHJlYWwgZGF0YSBtdXhpbmcgaW4gCj4gc29mdHdhcmUuCj4gCj4gUGxlYXNlIHJlbWlu
ZCBEVCBpcyB1c2VkIGJ5IG11bHRpcGxlIG9wZXJhdGluZyBzeXN0ZW1zLCBhbmQgcHJvcGVybHkg
Cj4gZGVzY3JpYmluZyBoYXJkd2FyZSBpbiBEVCB3aWxsIGhlbHAgaGF2ZSBnb29kIHNvZnR3YXJl
IHN1cHBvcnQgb3ZlciBhbGwgCj4gT1Nlcywgbm90IGp1c3QgTGludXguCj4gCj4+Cj4+PiBBbmQg
YWN0dWFsbHkgUm9iIEhlcnJpbmcgYXNrZWQgdXNlIHRvIGRlZmluZSB0aGUgY29tcGxldGUgZGF0
YSBmbG93LCAKPj4+IGl0IHdhcyBhIHN0cm9uZyByZXF1aXJlbWVudC4gSSBkb24ndCBzZWUgd2h5
IHdlIHdvdWxkbid0IGhlcmUuCj4+Cj4+IEknbSBpbXBsZW1lbnRpbmcgZmVlZGJhY2sgZnJvbSBS
b2IuCj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjUwNzEwMjMw
ODQ2LkdBNDQ0ODMtIAo+PiByb2JoQGtlcm5lbC5vcmcvCj4gCj4gV2hlcmUgZGlkIGhlIGFzayB1
c2luZyB0aGUgUEhZIERUIGJpbmRpbmdzID8gSXMgaGUgYXdhcmUgdGhvc2UgQ1NJUEhZcyAKPiBh
cmUgbXV4ZWQgdG8gbXVsdGlwbGUgY29uc3VtZXJzIHdoaWNoIGFyZSBidXJyaWVkIGluIHRoZSBD
QU1TUyBjb2RlID8KCkkgZnJlZWx5IGFkbWl0IHRvIHRha2luZyB0aGUgaW5pdGlhdGl2ZSBvZiBw
aHlzID0gPD4gYnV0IE5laWwgdGhlcmUgaXMgCl9ub19jaGFuZ2VfIHRvIHRoZSBtZWRpYSBncmFw
aCBhbmQgdGhlICJtdXgiIGlzIGEgcnVudGltZSBjb25maWd1cmF0aW9uIAp0aGF0IGlzIG9uZSBy
ZWdpc3RlciBpbiB0aGUgQ1NJRC4KCllvdSBzZXJpb3VzbHkgd2FudCBhIG11eCBkZXZpY2UgaW4g
dGhlIGtlcm5lbCB0byBtb2RlbCBvbmUgYml0IGluIGEgCnJlZ2lzdGVyID8KCk5vLgoKPj4KPj4g
VG8gbWUsIGhlcmUgaXMgd2hlcmUgd2Ugc3RhbmQ6Cj4+Cj4+IC0gSW5kaXZpZHVhbCBub2RlcyAt
IHdlIGFsbCBhZ3JlZSB0aGF0Cj4+IC0gQXMgc3ViLW5vZGVzIC0gSSB0aGluayB0aGUgbWFqb3Jp
dHkgYWdyZWVzIHRoaXMgS3J6c3p0b2YsIERtaXRyeQo+PiDCoMKgIEknbSBmaW5lIHdpdGggaXQg
dG9vLgo+PiAtIGRyaXZlcnMvcGh5IC0gSSB0aGluayB3ZSBhcmUgYWNjZXB0aW5nIHRoaXMgaXMg
YWxzbyBmaW5lID8KPiAKPiBMaWtlIEkgc2FpZCB0aGlzIGFkZHMgYSBzdXBwbGVtZW50YXJ5IEFQ
SSBsYXllciBmb3Igbm8gcmVhc29uIGFuZCB3aWxsIAo+IG1ha2UgbGlmZSBoYXJkZXIsIGJ1dCBJ
IGRvbid0IGNhcmUgcGVyc29uYWxseS4KPiAKPj4gLSBlbmRwb2ludHMgc2hvdWxkIGZsb3cgaW50
byB0aGUgUEhZIGFuZCB0aGVuIGJhY2sgdG8gdGhlIGNvbnRyb2xsZXIKPj4KPj4gSSBnZXQgdGhh
dCBhcmd1bWVudC4gSW4gZmFjdCBJIF9saWtlXyB0aGF0IGFyZ3VtZW50IGF0IGxlYXN0IEkgbGlr
ZSBteSAKPj4gY29uY2VwdGlvbiBvZiB0aGF0IGFyZ3VtZW50Lgo+Pgo+PiBJJ2xsIHN0aXB1bGF0
ZSB0byB0aGF0IGFyZ3VtZW50IG1lYW5pbmcgdGhlbiB0aGF0LCBuZXcgQ1NJMiBQSFlzIHNoYWxs
IAo+PiBpbmNsdWRlIGVuZHBvaW50cyBmb3IgdGhpcyBwdXJwb3NlIGdsb2JhbGx5Lgo+Pgo+PiBB
cyBJJ3ZlIHNhaWQgYmVmb3JlLCB0aGVyZSdzIG5vdGhpbmcgUXVhbGNvbW0gc3BlY2lmaWMgYWJv
dXQgdGhpcyAKPj4gZGlzY3Vzc2lvbiwgcmVhbGx5Lgo+IAo+IFRoZXJlIGlzLCBiZWNhdXNlIHRo
ZSBjdXJyZW50IFF1YWxjb21tIENBTVNTIGJpbmRpbmdzIGFyZSBpbnN1ZmZpY2llbnQgCj4gYW5k
IHNob3VsZCBiZSBlbnRpcmVseSByZWRlc2lnbmVkIGZyb20gdGhlIGdyb3VuZCB1cCB0byBwcm9w
ZXJseSAKPiBkZXNjcmliZSB0aGUgSFcuCgpUaGUgbG9uZyB0ZXJtIHBsYW4gaXMgdG8gZG8gdGhh
dC4gRGlzY3Vzc2VkIGV4dGVuc2l2ZWx5IHdpdGggdGhlIFFjb20gCnRlYW1zIGRlbGl2ZXJpbmcg
Q0FNU1MsIGV2ZW4gaW52aXRlZCBjb21tdW5pdHkgbWVtYmVycyBhbG9uZy4KCkhlcmUgYXJlIHRo
ZSBtZWV0aW5nIG5vdGVzIC0gaXRzIGFsbCBpbiB0aGUgcHVibGljIGRvbWFpbgoKaHR0cHM6Ly9k
b2NzLmdvb2dsZS5jb20vZG9jdW1lbnQvZC8xeVV3V0hhS0x1b3ZLVmdHVHp2S202OEsxelM2eEJP
TlZ6ak9zUmpEbDAzVS9lZGl0P3RhYj10LjAjaGVhZGluZz1oLm10Ym03cWZvaHdmcwoKLS0tCmJv
ZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
