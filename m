Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E042C77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 18:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnRWCaV/tqWr05B1g8t3lExRlxlInyd/l94Lqmg9TVY=; b=27cYF3HicYXACB
	yZBHlhWzIvZG4ee1EUIS5LdDcRuvjS8ZlS5O3XZ/+YwKrn821h7QL0bJTT5rvPyGG6SHFYop9uil2
	1UmqMXyt7lm1nsiRJXTBo5ZTu0vjLVJaliJSjtJi0WYScMjhihciHyLUO7gaNSzDmLDVk56Bl2FQC
	JUDHXjeUtKotp/JCgbmefDPkj3p50dl/5AzwWraI2ZdU5rErpO2lWQGitaFLwqoepC4d6yRjNqa2P
	YHOQu3mOWMu6iL992YGZoZc24e5uV/OgtE6pIZ93WUx6q3Nn+OQE17g+2um5k6JxnTy3K8uSea4PA
	WGC9+2S+lYQImAWT6pag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5v6-007BBN-0n;
	Thu, 27 Apr 2023 18:00:40 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5v3-007BAu-2G
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 18:00:39 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2a8ba23a2abso86181501fa.2
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 11:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682618435; x=1685210435;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T2GIu/+OnkLafZqySOKrzD8ciYv3HmQaDFMtQHfu3W8=;
        b=GNl7C2x83eoYeZnyG+bDI9/h8i2odgcHYWafi46kOk7JzJjF5axhRmi0NAnbCRGi9c
         kPNaOydGl8zElv98sZkCKsYhuEo6q3b4bxdyYZthrpRKavVJ/zocapR0Q9VCKUJ1qZ+R
         GDFw8svv0wExYnBphIq+5AZWTMab0jYAR6uy/TDwFyp/zjREqiEQhEbFNYDewIUwc+IR
         7v4At6FjAiTehnl41XcBRdoxVNivrzejLzKAKEAUaxzcdognTnQNsidMVg5FZqko57HK
         Vbz2B0VzM74DEmaQAkHl7h/ujsemRRkbnsVpD3f5S2QXJesPf5iQ2madGTTzXbN2stcb
         6ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682618435; x=1685210435;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T2GIu/+OnkLafZqySOKrzD8ciYv3HmQaDFMtQHfu3W8=;
        b=jq5dbIpb7yVR4JU1IuCGj4cKKG/NapLdfqHAl6ua42PnfpQMGblq3rSkLMZdzZh/tU
         QylkbI9WPBWUlRZykdkbwDk2UsuIHxoEK/AWT4ZZE8Vh4nrTuVo5T2w7kRqEhCY3BVAo
         +ueLHZo9fBoNux3C7JTsH5aa9BudSdbwrjB63XJll1315/B1xRfmYblnsIyWUEP3vpfD
         jauPf4ilqiITfHqsO6YV6sfOUTyLSlVq6HM7aG8RNERT1y+fFwUZbV6D0APOCTpyNHUp
         0cDq2o4BU8wBsXWr8XRV4GNxREg34F6b97C53PGpGjuv1xebXSWRiO1U4n0jw3r5u5g1
         8n5Q==
X-Gm-Message-State: AC+VfDx4DUVdrlYSLJuEGW4enek6Ny6+s0iMcN3/8BZbX0dnncXy4UD6
	/tqrNamMpQbc9lgoba/WlUibkw==
X-Google-Smtp-Source: ACHHUZ5CcVXxlMWC43mQzxQDgoafzAlqyemf34S/dtcAHVQXQpFbKrBmB2oqIPlr6oiuy0adBms73g==
X-Received: by 2002:a2e:90c2:0:b0:2a8:ea22:28a6 with SMTP id o2-20020a2e90c2000000b002a8ea2228a6mr946880ljg.9.1682618435356;
        Thu, 27 Apr 2023 11:00:35 -0700 (PDT)
Received: from [172.23.2.5] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id f14-20020a2ea0ce000000b002ab1536377fsm1443232ljm.105.2023.04.27.11.00.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 11:00:34 -0700 (PDT)
Message-ID: <faada5fc-3dda-2d69-508a-15dbf5ddbbcc@linaro.org>
Date: Thu, 27 Apr 2023 21:00:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
Content-Language: en-GB
To: neil.armstrong@linaro.org, Bryan O'Donoghue
 <pure.logic@nexus-software.ie>, Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com>
 <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
 <d1850d73-9d92-c0aa-7cf8-bae4c0e4144b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <d1850d73-9d92-c0aa-7cf8-bae4c0e4144b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_110037_751105_B38BB8A3 
X-CRM114-Status: GOOD (  23.18  )
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

T24gMjcvMDQvMjAyMyAxNjoxMSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjYvMDQvMjAy
MyAxMjozMywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gVHVlLCBBcHIgMjUsIDIwMjMg
YXQgNDo0MOKAr0FNIEJqb3JuIEFuZGVyc3Nvbgo+PiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNv
bT4gd3JvdGU6Cj4+Pgo+Pj4gVGhlIFFNUCBjb21ibyBQSFkgc2l0cyBpbiBhbiBvZl9ncmFwaCBj
b25uZWN0ZWQgYmV0d2VlbiB0aGUgRGlzcGxheVBvcnQKPj4+IGNvbnRyb2xsZXIgYW5kIGEgVVNC
IFR5cGUtQyBjb25uZWN0b3IgKG9yIHBvc3NpYmx5IGEgcmVkcml2ZXIpLgo+Pj4KPj4+IFRoZSBU
Q1BNIG5lZWRzIHRvIGJlIGFibGUgdG8gY29udmV5IHRoZSBIUEQgc2lnbmFsIHRvIHRoZSBEaXNw
bGF5UG9ydAo+Pj4gY29udHJvbGxlciwgYnV0IG5vIGRpcmVjdGx5IGxpbmsgaXMgcHJvdmlkZWQg
YnkgRGV2aWNlVHJlZSBzbyB0aGUgc2lnbmFsCj4+PiBuZWVkcyB0byAicGFzcyB0aHJvdWdoIiB0
aGUgUU1QIGNvbWJvIHBoeS4KPj4+Cj4+PiBIYW5kbGUgdGhpcyBieSBpbnRyb2R1Y2luZyBhIGRy
bV9icmlkZ2Ugd2hpY2ggdXBvbiBpbml0aWFsaXphdGlvbiBmaW5kcwo+Pj4gdGhlIG5leHQgYnJp
ZGdlIChpLmUuIHRoZSB1c2ItYy1jb25uZWN0b3IpIGFuZCBjaGFpbiB0aGlzIHRvZ2V0aGVyLiBU
aGlzCj4+PiB3YXkgSFBEIGNoYW5nZXMgaW4gdGhlIGNvbm5lY3RvciB3aWxsIHByb3BhZ2F0ZSB0
byB0aGUgRGlzcGxheVBvcnQKPj4+IGRyaXZlci4KPj4+Cj4+PiBUaGUgY29ubmVjdG9yIGJyaWRn
ZSBpcyByZXNvbHZlZCBsYXppbHksIGFzIHRoZSBUQ1BNIGlzIGV4cGVjdGVkIHRvIGJlCj4+PiBh
YmxlIHRvIHJlc29sdmUgdGhlIHR5cGVjIG11eCBhbmQgc3dpdGNoIGF0IHByb2JlIHRpbWUsIHNv
IHRoZSBRTVAgY29tYm8KPj4+IHBoeSB3aWxsIHByb2JlIGJlZm9yZSB0aGUgVENQTS4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBCam9ybiBBbmRlcnNzb24gPHF1aWNfYmpvcmFuZGVAcXVpY2luYy5j
b20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21i
by5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAz
NiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1jb21iby5jIAo+Pj4gYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYwo+Pj4gaW5kZXggNWQ2ZDZlZjM5NDRiLi44NGJjMDgwMDI1MzcgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+Pj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPj4+IEBAIC0y
Miw2ICsyMiw4IEBACj4+PiDCoCAjaW5jbHVkZSA8bGludXgvdXNiL3R5cGVjLmg+Cj4+PiDCoCAj
aW5jbHVkZSA8bGludXgvdXNiL3R5cGVjX211eC5oPgo+Pj4KPj4+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9icmlkZ2UuaD4KPj4+ICsKPj4+IMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5LXFj
b20tcW1wLmg+Cj4+Pgo+Pj4gwqAgI2luY2x1ZGUgInBoeS1xY29tLXFtcC5oIgo+Pj4gQEAgLTEz
MzIsNiArMTMzNCw4IEBAIHN0cnVjdCBxbXBfY29tYm8gewo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgY2xrX2h3IGRwX2xpbmtfaHc7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBjbGtf
aHcgZHBfcGl4ZWxfaHc7Cj4+Pgo+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2JyaWRnZSBi
cmlkZ2U7Cj4+PiArCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2
ICpzdzsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRh
dGlvbjsKPj4+IMKgIH07Cj4+PiBAQCAtMzE5Niw2ICszMjAwLDM0IEBAIHN0YXRpYyBpbnQgcW1w
X2NvbWJvX3JlZ2lzdGVyX2Nsb2NrcyhzdHJ1Y3QgCj4+PiBxbXBfY29tYm8gKnFtcCwgc3RydWN0
IGRldmljZV9ub2RlICoKPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRldm1fYWRkX2FjdGlv
bl9vcl9yZXNldChxbXAtPmRldiwgCj4+PiBwaHlfY2xrX3JlbGVhc2VfcHJvdmlkZXIsIGRwX25w
KTsKPj4+IMKgIH0KPj4+Cj4+PiArc3RhdGljIGludCBxbXBfY29tYm9fYnJpZGdlX2F0dGFjaChz
dHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIGRybV9icmlkZ2Vf
YXR0YWNoX2ZsYWdzIGZsYWdzKQo+Pj4gK3sKPj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IHFtcF9j
b21ibyAqcW1wID0gY29udGFpbmVyX29mKGJyaWRnZSwgc3RydWN0IAo+Pj4gcW1wX2NvbWJvLCBi
cmlkZ2UpOwo+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4dF9icmlkZ2U7
Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIGlmICghKGZsYWdzICYgRFJNX0JSSURHRV9BVFRBQ0hf
Tk9fQ09OTkVDVE9SKSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAt
RUlOVkFMOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCBuZXh0X2JyaWRnZSA9IGRldm1fZHJtX29m
X2dldF9icmlkZ2UocW1wLT5kZXYsIAo+Pj4gcW1wLT5kZXYtPm9mX25vZGUsIDAsIDApOwo+Pj4g
K8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKG5leHRfYnJpZGdlKSkKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKHFtcC0+ZGV2LCBQVFJfRVJSKG5l
eHRfYnJpZGdlKSwgCj4+PiAiZmFpbGVkIHRvIGFjcXVpcmUgZHJtX2JyaWRnZVxuIik7Cj4+PiAr
Cj4+PiArwqDCoMKgwqDCoMKgIHJldHVybiBkcm1fYnJpZGdlX2F0dGFjaChicmlkZ2UtPmVuY29k
ZXIsIG5leHRfYnJpZGdlLCAKPj4+IGJyaWRnZSwgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVD
VE9SKTsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX2Z1
bmNzIHFtcF9jb21ib19icmlkZ2VfZnVuY3MgPSB7Cj4+PiArwqDCoMKgwqDCoMKgIC5hdHRhY2gg
PSBxbXBfY29tYm9fYnJpZGdlX2F0dGFjaCwKPj4+ICt9Owo+Pj4gKwo+Pj4gK3N0YXRpYyBpbnQg
cW1wX2NvbWJvX2RwX3JlZ2lzdGVyX2JyaWRnZShzdHJ1Y3QgcW1wX2NvbWJvICpxbXApCj4+PiAr
ewo+Pj4gK8KgwqDCoMKgwqDCoCBxbXAtPmJyaWRnZS5mdW5jcyA9ICZxbXBfY29tYm9fYnJpZGdl
X2Z1bmNzOwo+Pj4gK8KgwqDCoMKgwqDCoCBxbXAtPmJyaWRnZS5vZl9ub2RlID0gcW1wLT5kZXYt
Pm9mX25vZGU7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIHJldHVybiBkZXZtX2RybV9icmlkZ2Vf
YWRkKHFtcC0+ZGV2LCAmcW1wLT5icmlkZ2UpOwo+Pj4gK30KPj4+ICsKPj4+IMKgIHN0YXRpYyBp
bnQgcW1wX2NvbWJvX3BhcnNlX2R0X2xlY2FjeV9kcChzdHJ1Y3QgcW1wX2NvbWJvICpxbXAsIAo+
Pj4gc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGRldmljZSAqZGV2ID0gcW1wLT5kZXY7Cj4+PiBAQCAtMzQ1OSw2ICszNDkxLDEwIEBA
IHN0YXRpYyBpbnQgcW1wX2NvbWJvX3Byb2JlKHN0cnVjdCAKPj4+IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+Pgo+Pj4gK8KgwqDCoMKgwqDCoCByZXQgPSBx
bXBfY29tYm9fZHBfcmVnaXN0ZXJfYnJpZGdlKHFtcCk7Cj4+PiArwqDCoMKgwqDCoMKgIGlmIChy
ZXQpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+IAo+IEkg
dGhpbmsgdGhlIERSTSBwYXJ0IHNob3VsZCBiZSBvbmx5IGJ1aWx0IGlmIENPTkZJR19EUk0gaXMg
ZW5hYmxlZCwgSSBkb24ndAo+IGhhdmUgYSBzdHJvbmcgb3BpbmlvbiBvbiB0aGlzLCBJIHRoaW5r
IFZpbm9kIGNvdWxkIGhlbHAgaGVyZS4KPiAKPj4+ICsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgLyog
Q2hlY2sgZm9yIGxlZ2FjeSBiaW5kaW5nIHdpdGggY2hpbGQgbm9kZXMuICovCj4+PiDCoMKgwqDC
oMKgwqDCoMKgIHVzYl9ucCA9IG9mX2dldF9jaGlsZF9ieV9uYW1lKGRldi0+b2Zfbm9kZSwgInVz
YjMtcGh5Iik7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIGlmICh1c2JfbnApIHsKPj4+IC0tIAo+Pj4g
Mi4zOS4yCj4+Pgo+Pgo+PiBZb3UgbmVlZCB0byBhZGQgc29tZSBvciBhbGwgb2YgdGhlc2UKPj4g
wqDCoMKgwqDCoMKgwqAgc2VsZWN0IERSTV9ESVNQTEFZX0RQX0hFTFBFUgo+PiDCoMKgwqDCoMKg
wqDCoCBzZWxlY3QgRFJNX0RJU1BMQVlfSEVMUEVSCj4+IMKgwqDCoMKgwqDCoMKgIHNlbGVjdCBE
Uk1fRFBfQVVYX0JVUwo+PiDCoMKgwqDCoMKgwqDCoCBzZWxlY3QgRFJNX0tNU19IRUxQRVIKPj4g
wqDCoMKgwqDCoMKgwqAgc2VsZWN0IERSTV9NSVBJX0RTSQo+PiDCoMKgwqDCoMKgwqDCoCBzZWxl
Y3QgRFJNX1BBTkVMCj4+Cj4+Cj4+IC9vcHQvbGluYXJvL2djYy1saW5hcm8tNy41LjAtMjAxOS4x
Mi14ODZfNjRfYWFyY2g2NC1saW51eC1nbnUvYmluL2FhcmNoNjQtbGludXgtZ251LWxkOgo+PiBV
bmV4cGVjdGVkIEdPVC9QTFQgZW50cmllcyBkZXRlY3RlZCEKPj4gL29wdC9saW5hcm8vZ2NjLWxp
bmFyby03LjUuMC0yMDE5LjEyLXg4Nl82NF9hYXJjaDY0LWxpbnV4LWdudS9iaW4vYWFyY2g2NC1s
aW51eC1nbnUtbGQ6Cj4+IFVuZXhwZWN0ZWQgcnVuLXRpbWUgcHJvY2VkdXJlIGxpbmthZ2VzIGRl
dGVjdGVkIQo+PiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzogSW4g
ZnVuY3Rpb24KPj4gYHFtcF9jb21ib19icmlkZ2VfYXR0YWNoJzoKPj4gcGh5LXFjb20tcW1wLWNv
bWJvLmM6KC50ZXh0KzB4YjUwKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bwo+PiBgZGV2bV9kcm1f
b2ZfZ2V0X2JyaWRnZScKPj4gcGh5LXFjb20tcW1wLWNvbWJvLmM6KC50ZXh0KzB4YjZjKTogdW5k
ZWZpbmVkIHJlZmVyZW5jZSB0byAKPj4gYGRybV9icmlkZ2VfYXR0YWNoJwo+PiBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzogSW4gZnVuY3Rpb24gYHFtcF9jb21ib19w
cm9iZSc6Cj4+IHBoeS1xY29tLXFtcC1jb21iby5jOigudGV4dCsweDEzZmMpOiB1bmRlZmluZWQg
cmVmZXJlbmNlIHRvCj4+IGBkZXZtX2RybV9icmlkZ2VfYWRkJwo+IAo+IEkgdGhpbmsgQ09ORklH
X0RSTV9QQU5FTF9CUklER0UgaW4gYWRkaXRpb24gdG8gQ09ORklHX0RSTS4gc2hvdWxkIGJlIAo+
IGVub3VnaC4KPiAKCkknZCBzYXkgRFJNX1BBTkVMX0JSSURHRSB8fCAhRFJNX1BBTkVMX0JSSURH
RSBpbiBhZGRpdGlvbiB0byBEUk0uIEFuZCB3ZSAKcHJvYmFibHkgc2hvdWxkIGZpeCB0aGUgIGRl
dm1fZHJtX29mX2dldF9icmlkZ2UoKSBzdHViIHRvIHVzZSAKZHJtX29mX2ZpbmRfcGFuZWxfb3Jf
YnJpZGdlKCkgd2l0aCBwYW5lbCA9IE5VTEwuCgo+IFdpdGggdGhpcyBjb25maWcgYWRkZWQgYW5k
IG15IGRybS1icmlkZ2UgaGF0Ogo+IAo+IEFja2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5h
cm1zdHJvbmdAbGluYXJvLm9yZz4KPiAKPiBOZWlsCj4gCj4gCj4+Cj4+IC0tLQo+PiBib2QKPiAK
Ci0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
