Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 409A1C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9Z1OUdwcZllmxXKo/CMONlPMcy4TC3/LhiZcMfIsw0=; b=Tw9iz9dEKrDg3L
	pTxtljtIt26kT1M1VAfedsWxBGFNe9ntiu61LIv5w1dMCv7rEK7QpvMEM6dfNu99PX2WyJljqtTFg
	fH6LAFt0UwQJ9abcOyJsh8rSCtZU6qrKZlaIYJ3tmtLmvTc8oih/uYk7CXxt+Tqw5ZO2taMQxLAYj
	J4YkDoHW/Mwdq556Gd4ydcpUvUE4Elp9i3cJKTVckFxBtdiDXE5kY6yDtrbNDVc+TUz0+BpvnaXnM
	qNbBtrw8MsMBvv+iZIZM1TguRzFZZPyPextXRhMHIMZUHM81Bhli1TaRyG59z2kuNCXU1+l2Zy58f
	0JUpoSYoJ4zeppPsN4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcv-00000009YUS-3qw2;
	Tue, 21 Jul 2026 13:35:17 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcq-00000009YNX-2lNh
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:35:16 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5aebd7da975so1285178e87.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784640910; x=1785245710; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=XBEoUQBhQJegFsZb7/UMDUnu+Fzmn8HXOU/ouOdSNmw=;
        b=l5a2Ivhz3QRqi9ARUyIO63lbWqTEl+2HJD0OMTvxgPBeXKEYihEtbIaTh65mnnk9Gz
         dK95KxTOL83oa+HYcDiWwqtkLnLvzkrT2EWBli5aLuZ4h1Ee29b6Kxmz+Zx6jcVu0ji8
         Pbq3bN5ErjA+qn9DArGOCun6oJx3RLJ614JU6dCrPDkYlHV2x57L3ZnaytLWD2LVHHmP
         99vz9kV9cuxn5JTKQBhKBpJ4OHVh3g+v91mrm6HkDvsx6FSUaMkY4nvjO0QABlO1yt3d
         gFsTFmmhixEAVNGgK5I+Zmbr0Hl9nVmNrIVArLcWGLNretk1QoJXgkb5yFF8S3z85ZdA
         GjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784640910; x=1785245710;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XBEoUQBhQJegFsZb7/UMDUnu+Fzmn8HXOU/ouOdSNmw=;
        b=UYh7PRzI/86sOmmehcJWesTdNb4m87Tjp8Ugx4Nmwre9+NeNwYBbrbrzr8ClpsGcW3
         1Hu5Ppd0Goie9mjLgYu/fF5Azbm2wm+09SEWBMNKLzAxU63c1BgtBn95o4ALboq6d2WN
         6LCNWJw7pj6kgtdFfan9eba4us4EmGYDTLCH+ILtf28pj+EodpgSCu3e2tRL1POzwmm9
         IE9Twa8Nc+gpiV70x4szEwGIOOXvtcrNOLVU8Ce+ogN3vstQ6REx7+9j3RF13B69ms3I
         zKEtRj6fT80PQovHXWk+vj0wcSYnzRQ0j8PqrBVduzfII4K7R0kBMJjlQjcoC4/HAXu3
         TIZA==
X-Forwarded-Encrypted: i=1; AHgh+RrBOLJCiisSKTZM6yHkUFG2C/+wKA6LczPnzeTT5z6SDap2f/G2ATOGfxAN0foR2bRJBahJLg5UGeg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx127z5jtg1f/GQE1cvzp66qr2e16+6CHOiGGtHlDjhmlwnc6R2
	+6YcoYypg+n2F0BCiu02J+UV/y0h/pFWVDhrZA6vXPmAVAjg+ylPoiJwrvt55BCiTXo=
X-Gm-Gg: AR+sD13tDQEPZgWEsgcN+fjmE9oup/ZnZ9LzqeajIA2BPgFcm3Z5Zs9+4C1JtzUcnqq
	odJW1+BDxC8UEjDqsl+uIkkpV3bc1+xyDNlokVKsqvpCzxKkBhOUv0OgKSklvXRjsH4wzruWfZV
	5R8XwFQemDpBzXZp4tUPNFGkYGIvS+/+0z/tqly3B5faVRcgG5kF4D3BSHn3SPzCgoU7anNo6Oh
	Mv/j4tIg7D4oO1pmY0rLGuAaOEjCIStlzTpOA0DX0PQmac52d4xpjFTrug55NIpAGm0oszdy6aE
	Cafka4u61n5lzPBlVLxSCnTXBa6fIsz8ZVAgNzESxlo9iEK+tXuyqMWauP/YE9bo7P8qseyq1O4
	opVIwPUeNKOUkA75yVNEREKOgKZRIX9jLuu8HrT9WJP5PSGw8sHJdidZ+w0WlKqoCZ+lfjkGK29
	blhCmlywY0M8iqX44SZZNCV2ws+9Ap2WH8KzXCoyjhrw1oazN9SG0mh9KX
X-Received: by 2002:a05:6512:b93:b0:5b1:5b9e:8de7 with SMTP id 2adb3069b0e04-5b2a49fca14mr515212e87.2.1784640910132;
        Tue, 21 Jul 2026 06:35:10 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a5588e11sm426572e87.42.2026.07.21.06.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 06:35:09 -0700 (PDT)
Message-ID: <864c13a0-a52c-43f4-9d94-646bf66ba31a@linaro.org>
Date: Tue, 21 Jul 2026 16:35:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
 <_t1jiMTX3iIXhUkTDz0Cbh_uZhdUK_Y8vlIwxt1VNRbuKuRnpVCWabal-b4AuFrVaKrDnQSFOWtDn6-VCbS3DA==@protonmail.internalid>
 <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
 <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
 <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
 <wzsAes-UM4_r8scRyy_yhd39ZdxvT8W9VroVPOGWABLsw7MqR05o_z2MwhgiC1gTSBgfVHpXWADbsqoIOsR0Uw==@protonmail.internalid>
 <ec3d6035-d4de-4e38-8c72-b29a04b263ae@linaro.org>
 <1f128571-ed46-4a60-9594-74fdd5f440d0@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <1f128571-ed46-4a60-9594-74fdd5f440d0@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_063512_787781_8DBE7265 
X-CRM114-Status: GOOD (  27.57  )
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

T24gNy8yMS8yNiAxNjoxOSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAyMS8wNy8yMDI2
IDEyOjI0LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+PiBPbiAyMS8wNy8yMDI2IDEyOjA1LCBW
bGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+PiBPbiA3LzIxLzI2IDEzOjQ3LCBCcnlhbiBPJ0Rv
bm9naHVlIHdyb3RlOgo+Pj4+IE9uIDIxLzA3LzIwMjYgMTA6NTYsIFZsYWRpbWlyIFphcG9sc2tp
eSB3cm90ZToKPj4+Pj4gT24gNy8yMS8yNiAxMjozOSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToK
Pj4+Pj4+IE9uIDIxLzA3LzIwMjYgMDk6MTcsIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPj4+
Pj4+Pj4gK8KgICIjcGh5LWNlbGxzIjoKPj4+Pj4+Pj4gK8KgwqDCoCBjb25zdDogMQo+Pj4+Pj4+
PiArwqDCoMKgIGRlc2NyaXB0aW9uOgo+Pj4+Pj4+PiArwqDCoMKgwqDCoCBUaGUgc2luZ2xlIGNl
bGwgc3BlY2lmaWVzIHRoZSBQSFkgb3BlcmF0aW5nIG1vZGUuCj4+Pj4+Pj4gVGhpcyBoYXMgYmVl
biByZXBvcnRlZCBiZWZvcmUsICNwaHktY2VsbHMgc2hhbGwgYmUgMCwgdGhlIG9wZXJhdGlvbgo+
Pj4+Pj4+IG1vZGUgaXMgc2VsZWN0ZWQgYnkgYnVzLXR5cGUgb2YgZW5kcG9pbnRzIGFzIGl0IGlz
IGRlc2NyaWJlZCBpbgo+Pj4+Pj4+IHZpZGVvLWludGVyZmFjZXMueWFtbAo+Pj4+Pj4+Cj4+Pj4+
Pj4gVHdvIGNvbXBldGluZyB2YWx1ZXMgYXJlIHJlZHVuZGFudCBhbmQgaXQgb3BlbnMgYSBkb29y
IHRvIGEgd3JvbmcKPj4+Pj4+PiBoYXJkd2FyZSBkZXNjcmlwdGlvbiwgdGhlIHRlY2huaWNhbCBk
aXNjdXNzaW9uIGhhcyBub3QgYmVlbiBzdGFydGVkCj4+Pj4+Pj4geWV0Lgo+Pj4+Pj4gU28gYXMg
SSBzYWlkIGJlZm9yZSwgSSdtIGZvbGxvd2luZyBSb2IgSGVycmluZydzIGlucHV0IG9uIHRoaXMg
YW5kCj4+Pj4+PiBLcnp5c3p0b2YgaGFzIGdpdmVuIFJCIGZvciB0aGlzIGJpbmRpbmcuIEF0IHRo
aXMgc3RhZ2UsIEkgZG9uJ3Qgc2VlCj4+Pj4+PiBzY29wZSB0byBjaGFuZ2UgaXQuCj4+Pj4+Pgo+
Pj4+Pj4gQWRkaW5nIGVuZHBvaW50cyB3YXMgYWxyZWFkeSBhIGNvbXByb21pc2UgdG8gYWRkcmVz
cyB5b3VyIGZlZWRiYWNrLAo+Pj4+Pj4gd2hpY2ggSSBob3BlZCB3b3VsZCBicmluZyB5b3Ugb24g
Ym9hcmQgd2l0aCB0aGUgZGVzaWduLgo+Pj4+PiBUaGF0J3MgbXkgY29tbWVudCBkYXRlZCBNYXJj
aCAyNywgMjAyNiwgYW5kIGl0IHNheXMgbW92aW5nIHBoeSB0eXBlCj4+Pj4+IGZyb20gcGh5IGNl
bGwgdG8gdGhlIGVuZHBvaW50IHByb3BlcnR5IGV4Y2x1ZGVzIHRoZSBuZWVkIHRvIHNldCBhbnkK
Pj4+Pj4gcGh5IGNlbGxzOgo+Pj4+Pgo+Pj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1hcm0tbXNtL2UzN2NlNDM4LTEyYzctNDYyZC0KPj4+Pj4gYjJiYy0xMzUxYmU2MmI4MDZAbGlu
YXJvLm9yZy8KPj4+Pj4KPj4+Pj4gVGhlIHRlY2huaWNhbCBjb21tZW50IGlzIGxlZnQgdW5yZXNw
b25kZWQgc28gZmFyIHNpbmNlIHRoZW4uCj4+Pj4+Cj4+Pj4+IFNpbmNlIHRoZXJlIGlzIG5vIGV4
cGVjdGVkIHBoeSBjZWxscyB0byBnZXQgb24gY29uc3VtZXIncyBzaWRlLCBhbmQKPj4+Pj4gc2lu
Y2UgdGhlcmUgaXMgYW5vdGhlciBsaW5rIGJldHdlZW4gQ1NJUEhZIGFuZCBDU0lEIGRlc2NyaWJl
ZCBpbgo+Pj4+PiB2aWRlby1pbnRlcmZhY2VzLnlhbWwsIGFueSBraW5kIG9mIGRlcGVuZGVuY3kg
b2YgdGhpcyBJUCBvbiBwaHkgY2FuCj4+Pj4+IGJlIGp1c3QgcmVtb3ZlZCwgd2hpY2ggc2VydmVz
IHRoZSBwdXJwb3NlIG9mIGhhcmR3YXJlIGRlc2NyaXB0aW9uCj4+Pj4+IHNpbXBsaWZpY2F0aW9u
Lgo+Pj4+Cj4+Pj4gUm9iJ3MgdjEgZmVlZGJhY2sgd2FzIGNvbnN1bWVyLWRlY2lkZXMtbW9kZSB2
aWEgdGhlIGNlbGw7IEtyenlzenRvZiBoYXMKPj4+PiBSLWInZCB0aGUgYmluZGluZyB3aXRoIGNl
bGxzPTEuCj4+Pgo+Pj4gVW5mb3J0dW5hdGVseSB0aGlzIGlzIG5vdCBhIHRlY2huaWNhbCBkaXNj
dXNzaW9uIHRvIG1vdmUgZm9yd2FyZAo+Pj4gYSBiZXR0ZXIgaGFyZHdhcmUgZGVzY3JpcHRpb24u
Cj4+Pgo+Pj4+IEknbSBoYXBweSB0byBsb2NrIGRvd24gdGhpcyBiaW5kaW5nIGFzLWlzIG9uIHRo
YXQgYmFzaXMuCj4+Pj4KPj4+PiBBcmUgeW91IGFyZ3VpbmcgYWJvdXQgcGh5LWNlbGxzIG9yIGFy
ZSB5b3UgYWN0dWFsbHkgYXJndWluZyB0aGUgZW50aXJlCj4+Pj4gaW5zdGFudGlhdGlvbiBvZiBR
dWFsY29tbSBNSVBJIENTSTIgYXMgYSBzdGFuZGFsb25lIGdlbmVyaWMgZHJpdmVyIGluCj4+Pj4g
ZHJpdmVycy9waHkgPyBJdHMgbm90IHRoZSBzYW1lIGRlYmF0ZSBhdCBhbGwuCj4+Pgo+Pj4gU28g
ZmFyIEkgZG9uJ3QgcmV2aWV3IHRoZSBkcml2ZXIsIG9ubHkgQ1NJUEhZIElQIGhhcmR3YXJlIGRl
c2NyaXB0aW9uLgo+Pj4KPj4+IEluIHRoZSBjdXJyZW50IHZlcnNpb24gb2YgdGhlIGhhcmR3YXJl
IGRlc2NyaXB0aW9uIG9uZSBtYXkgZmluZCB0aGF0Cj4+PiB0aGUgZXhwbG9pdGVkICd2aWRlby1p
bnRlZmFjZXMnIGludGVyZmFjZSBjb21wbGV0ZWx5IGNvdmVycyB0aGUgJ3BoeXMnCj4+PiBpbnRl
cmZhY2UgYmV0d2VlbiBDU0lQSFkgYW5kIENTSUQsIHF1aXRlIHByb2JhYmx5IGJvdGggYXJlIG5v
dCBuZWVkZWQKPj4+IGF0IHRoZSBzYW1lIHRpbWUsIGFuZCB0aGUgc2ltcGxlciAncGh5cycgY2Fu
IGJlIHJlbW92ZWQgd2l0aG91dCBhbnkKPj4+IGxvc3Nlcy4gQnV0IGlmIGl0IGlzIGtlcHQsIHRo
ZW4gaXRzIGNlbGwgdmFsdWUgaXMgYW55d2F5IHJlZHVuZGFudC4KPj4+Cj4+Pj4gQXMgdGhlIENB
TVNTIG1haW50YWluZXIsIEknbSBmdWxseSBhZ2FpbnN0IGFkZGluZyBtb3JlIGlubGluZSBtb25v
bGl0aGljCj4+Pj4gQ1NJUEhZIGluaXQgc2VxdWVuY2VzLiBUaGF0IGNvdWxkIGJlIHJlcHJlc2Vu
dGVkIGFzIGEgc2VwYXJhdGUKPj4+PiBsaW51eC1tZWRpYSBkcml2ZXIgYnV0LCB0aGVuIHRoYXQg
aW1wbGllcyB0aGF0IF9hbGxfIHVwc3RyZWFtIENTSVBIWQo+Pj4+IGRyaXZlcnMgaW4gZHJpdmVy
cy9waHkgYXJlIHdyb25nLCBhbmQgSSBqdXN0IGRvbid0IGFjY2VwdCB0aGF0Lgo+Pj4KPj4+IE90
aGVyIHR3byBkcml2ZXJzIGFyZSBkaWZmZXJlbnQgYW5kIHNob3VsZCBiZSBleGNsdWRlZCBhcyBn
b29kCj4+PiByZWZlcmVuY2VzLCBib3RoIG9mIHRoZW0gbGlua3MgZXhhY3RseSBvbmUgc2Vuc29y
IHRvIGV4YWN0bHkgb25lCj4+PiBDU0ktMiBkZWNvZGVyLCBpdCdzIG5vdCB0aGUgY2FzZSBoZXJl
LiBBbHNvIG9uZSBvZiB0aGVzZSB0d28gZHJpdmVycwo+Pj4gaGFzIG5vIHVwc3RyZWFtIHVzZXJz
Lgo+Pj4KPj4+PiBUaGUgYmluZGluZ3MgaGF2ZSBEVCBtYWludGFpbmVyIFJCLCBhbmQgdGhlIGRy
aXZlciBoYXMgUWNvbSBlbmdpbmVlcgo+Pj4+IHRlc3RlZC1ieSwgcmV2aWV3LWJ5Lgo+Pj4+Cj4+
Pj4gVmlub2QsIEtpc2hvbiAtIEFnYWluLCBJJ2QgcmVxdWVzdCB0aGlzIG1lcmdlcyBhcy1pcy4K
Pj4+Pgo+Pj4KPj4KPj4gVGhlIGdyYXBoIGFuZCBwaHlzIGFyZSBkaWZmZXJlbnQgbGF5ZXJzLCBl
bmRwb2ludHMgZGVzY3JpYmUgdGhlCj4+IG1lZGlhIHRvcG9sb2d5LCBwaHlzIGlzIGhvdyBDU0lE
IGNvbnRyb2xzIHRoZSBQSFkgdGhyb3VnaCB0aGUgUEhZCj4+IGZyYW1ld29yayAocGh5X2dldC9j
b25maWd1cmUvcG93ZXJfb24pLgo+Pgo+PiBSZW1vdmluZyBwaHlzIGRvZXNuJ3Qgc2ltcGxpZnkg
dGhlIGRlc2NyaXB0aW9uLCBpdCByZW1vdmVzIHRoZSBjb250cm9sCj4+IGludGVyZmFjZSB3aGlj
aCBpcyB0aGUgbW9ub2xpdGggYWdhaW4uCj4+Cj4+IFdlIGhhdmUgbXVsdGlwbGUgZXhhbXBsZXMg
b2YgdGhpcyBtb2RlbCB1cHN0cmVhbSwgY2Rucy1kcGh5LXJ4ICsKPj4gdGktY3NpMnJ4IGluLXRy
ZWUsIHdpdGggdXNlcnMuCj4+Cj4+IEknbSBzdGlsbCBraWNraW5nIHRoaXMgdXAgdG8gVmlub2Qs
IEtpc2hvbiwgcmVxdWVzdCBzdGFuZHMuCj4+Cj4+IE11bHRpcGxlIERUIGFuZCBkcml2ZXIgdXNl
cnMgYXJlIFJCL1Rlc3RlZC1ieSBvbiB0aGUgc2NoZW1hIGFuZCBkcml2ZXIsCj4+IGxvdHMgb2Yg
b3RoZXIgd29yayBpcyBnYXRlZC4KPj4KPj4gSXQgaXMgdGltZSB0byBtZXJnZS4KPj4KPj4gUGxl
YXNlIGFkanVkaWNhdGUuCj4+Cj4+IC0tLQo+PiBib2QKPiAKPiBIYWQgYSBicmllZiBkaXNjdXNz
aW9uIHdpdGggVmxhZCwgTmVpbCBhbmQgVmlub2QKPiAKPiBSZXNvbHV0aW9uOgo+IAo+IC0gcGh5
cyA9IDw+IHJldGFpbmVkCgpJdCBzaG91bGQgc3VmZmljZSBhcyBhbiBvcHRpb25hbCBwcm9wZXJ0
eSwgbW9yZW92ZXIgYW55IGtpbmQgb2YKcGh5IGludGVyZmFjZSB1c2FnZSBpcyBub3Qgc3VwcG9z
ZWQgdG8gYmUgZG9uZSBmcm9tIENTSUQgZHJpdmVyLgoKPiAtIHBoeS1jZWxscyA9IDwwPgo+IC0g
YnVzLXR5cGUgZnJvbSB0aGUgbWVkaWEtY29udHJvbGxlcgo+ICAgICBBbHJlYWR5IHNwZWNpZmll
ZCB3aXRoIGNhbXNzIHN0aWxsIGFsaWducyB3aXRoIFJvYidzIGRlY2xhcmF0aW9uCj4gICAgICJ0
aGUgY29uc3VtZXIgZGVmaW5lcyB0aGUgbW9kZSIgc28gSSdtIGNvbWZvcnRhYmxlIHdpdGggdGhp
cwo+ICAgICBjb21wcm9taXNlIHBvc2l0aW9uLgo+ICAgICBUaGlzIHdpbGwgc3RpbGwgZmFjaWxp
dGF0ZSBDUEhZIHdvcmsvbW9kZS1zZWxlY3Rpb24gdmlhCj4gICAgIHBoeV9vcHMtPmNvbmZpZ3Vy
ZSgpIHdpdGggaG93IHRvIGRlZmluZSB0aGUgQ1BIWSBwYXJ0IFRCRC4KCkFzIGl0IHdhcyBkaXNj
dXNzZWQgdGhlcmUgc2hvdWxkIGJlIG5vIHBoeSBzcGVjaWZpYyBpbnRlcmZhY2VzCmJldHdlZW4g
dGhpcyBwaHkgZHJpdmVyIGFuZCBDQU1TUyBkcml2ZXIuCgo+IC0gZGF0YS1sYW5lcyA9IDwwIDEg
MiAzPiB2YWxpZAoKV291bGQgYmUgbmljZSB0byBnZXQgYW4gYWNrIGZyb20gbGludXgtbWVkaWEg
bWFpbnRhaW5lcnMgb24gaXQuCgo+IC0gTUFYX0xBTkVTIDggaW5zdGVhZCBvZiBNQVhfREFUQV9M
QU5FUyA3CgpTaW5jZSAnZGF0YS1sYW5lcycgdmFsdWUgZm9sbG93cyBzb21lIHJlZ2lzdGVyIGJp
dHMgYW5kIG5vdAp0aGUgYWN0dWFsIFBDQiBsYW5lcyBhcyBpbiB2aWRlby1pbnRlZmFjZXMueWFt
bCwgdGhpcyBzaGFsbCBiZQpleHBsaWNpdGx5IGRlc2NyaWJlZCBpbiB0aGUgQ1NJUEhZIGR0IGJp
bmRpbmcgZG9jdW1lbnRhdGlvbi4KCj4gLSB2MTQgd2l0aCB0aGVzZSBjaGFuZ2VzIHNob3J0bHku
Cj4gCgotLSAKQmVzdCB3aXNoZXMsClZsYWRpbWlyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
