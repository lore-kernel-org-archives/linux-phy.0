Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39668CA6012
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eiN80yU8BrHra/CPf5hUshlzFvetUJPD7vvQ5sZcuM=; b=PTDGvXCYzpMap+
	xLISxiE1+o0DblKR2sJjZdDH2jxzX15RJA4tz8bq6x8zmo85ec0wTSjijaGrfKVsspzSjdrLF8QJm
	1J0FrFUwN8gsgXzQvUHBKJz2qyCb1NCvu9L9os5DtxEHSFhB3cKaXL2wu/w06XP0/RDbWw+jd2lnp
	1Ue4ilHpk3kSGEQ00rL/XCJodaUSaACljKzoOUoEY3Y8lyLXnM+HhYcCI/gqdAuV/xEhrnj/J/2Uv
	F9l7uGC6U59GH9wfkmuI98jUN8VAzfx7N/IeYHj5I20Nzja9eYoZntiLCzJRI0khJKkcbt++cfJHG
	GQSxAPT+9z0FNDjWo+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF68S-00000005po3-2Pjv;
	Fri, 09 Oct 2026 08:39:24 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF68P-00000005pnK-317S
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 08:39:23 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-c2e5e801487so621204366b.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 01:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791535159; x=1792139959; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p+vqQSz3CWMehrnqKQx0wIXwhLvGj+tDDI6FZmqwFVU=;
        b=N03PDd7lIrdI/PVvhyFouo8i/OIhtnCrR3lbIBkJT+Lsf27O57i0C+WyKZjBVxmN2T
         fnmPRFgI2ynOvtyNzcNt4JIe6VQC2VnH+BUsnynqCtfSHa7uOzi1NHEnMERIZ7Mwrr5h
         U59qapjkv8t0bqD/iKO7VEoPdNIR1JoLFeTaTaxWLGysqpcc+HtUhPHPryEAg3e7Oli2
         00Qe/eRJPEBrABk96iSEUMy6axo8Rpk//eHSEwOCcRgOAcZ1+0c6APXsoE04pJ7G1KlM
         zZU0NP5AcsQvDhFy0oxx5/6MsxKo9iIQEC9v/+rTFFXCYt4WFcH+coxSL006pOqqn5ai
         vNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791535159; x=1792139959;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p+vqQSz3CWMehrnqKQx0wIXwhLvGj+tDDI6FZmqwFVU=;
        b=Juou9kxDA/ZKFTJ47olc4GXuLAy5UB9FQCpit/Xwa3XPCuCAFEMfMoZ/wCW+PifDHG
         Y/+kWeZ2RDNRmgDpkqxfDkGk9a58Hw7y44t3vo7Tq7CqMwikjlzS+2A8YezJw/hzDrFZ
         HD4Wz530mPzxTqUR3QtqSaMkwNTItn4hW4IsAf/N0v7+RmeYKQtJrKXzjEdbnkC2FkEI
         RkDGdT97bTt2FbgBgZq2cc7hoM9BKe6I94aU3omIkVDPtog1SUTRGmEH1+O7gnU3AC6a
         uIdF0Sjv5swoVwWwBxIiOybK2G/Bic35uJ31Urd21aS5Vh20AtvqxYOoZNO5HEV1Lb7I
         SL9g==
X-Forwarded-Encrypted: i=1; AKwUvBzTxhQpxHn9BP+pb736+pZSpgcI02GH4ByG+SaHawqh0As3ko3PUu5wzaf4oraVCO9eSt4gtnE7S88=@lists.infradead.org
X-Gm-Message-State: AFq9FYJPNqOqjwc1kW3vCZ6Nd9c/2h/HDy5XnGEfe5HU7nKZli4G03GG
	vavepnApYGs35NZrxXDmcBvcpSszfXwY4zKe6qMchY6wFlqA086ACy+d5sLJTzG0wCeLWNgIUwp
	VmzX6
X-Gm-Gg: AYBFou0oVjjyklxcJizgLubV8Gy0ybJCvmXJu9hAXs+EHl1pggqp+BQlEiaATuPXzCk
	WZ5FwIjQL8vYRZ+nrsLC7Vykkne1IEbanrqLljp8JdvJmdkNOdXm4JWQXROXnqLMDGNePoRLI2J
	c5p6PDc03x8jBVk2KyhTLKVCEQ+QoSlEJ5zlXpcx0iREdC0zs7sRdIH2ZIMGZ5rrVixC36b4xh8
	sefxGhZXU04PeliMpQFhFBEOWqYmALnXEtIZwSDPvHmH1sQQYF1ReKdqXpgi0bOsNiUiozs/NVG
	gieepgj3+36h1WFrjwM69O5Y2je5UPuJMFISleG2t/UWSrQoZWKpJDHpcHLmyfHXm7NcehMhdju
	cR6y4/HmVkFOwt9qrE7YBhQSbX0P2dndFU6nlOU8hUy6XbtUrebEUxuFfTxM/v8a5eanY+e/1UA
	SVHIxl3UckwYVNRcJhYbyn3R3P8LGjbIy7ViMOQeiIoIcZB+Ap87ZDSB/Q/+yvNVg6/GC8bgCX7
	kPl5MzozA==
X-Received: by 2002:a17:907:3d52:b0:c26:1648:a076 with SMTP id a640c23a62f3a-c31aa0e93bdmr117241666b.49.1791535159415;
        Fri, 09 Oct 2026 01:39:19 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.78.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9a3ae32sm64239766b.28.2026.10.09.01.39.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 01:39:18 -0700 (PDT)
Message-ID: <8a2ff836-57ce-4df6-aaae-0db3f36e8b58@linaro.org>
Date: Fri, 9 Oct 2026 09:39:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 08/12] media: qcom: camss: vfe: Add support for VFE
 1080
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, bod@kernel.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-8-b2c583ef50e0@oss.qualcomm.com>
 <179149982796.2596899.756044515233442982.b4-reply@b4>
 <7452d85d-83a8-493c-8d74-5020ab72982d@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <7452d85d-83a8-493c-8d74-5020ab72982d@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_013921_786956_F5CBFDA5 
X-CRM114-Status: GOOD (  15.01  )
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

T24gMDkvMTAvMjAyNiAwMzo1OSwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9NYWtlZmlsZSBiL2RyaXZlcnMvIAo+
Pj4gbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9NYWtlZmlsZQo+Pj4gaW5kZXggMjE4YmEzYTk1
OTM5Li40MmExNGU4ZmUxYjcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvTWFrZWZpbGUKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9NYWtlZmlsZQo+Pj4gQEAgLTI2LDYgKzI2LDcgQEAgcWNvbS1jYW1zcy1vYmpzICs9
IFwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjYW1zcy12ZmUtMzQwLm8gXAo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGNhbXNzLXZmZS00ODAubyBcCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2Ftc3Mt
dmZlLTY4MC5vIFwKPj4+ICvCoMKgwqDCoMKgwqDCoCBjYW1zcy12ZmUtMTA4MC5vIFwKPj4KPj4g
Q2FuJ3Qgc2F5IEknbSAxMDAwMDAwJSBjbGVhciBvbiB3aGVuIHJlZ191cGRhdGUoKSBpcyBzdXBw
b3NlZCB0byAKPj4gaGFwcGVuIGluCj4+IHRoZSBmbG93IG9mIHRoZSBsb2dpYyB5b3UgaGF2ZSBo
ZXJlLgo+Pgo+PiBJJ20gYSBiaXQgc3VzcGljaW91cyBvZiBhZGRpbmcgYSBuZXcgZmxhZyB3aGlj
aCBza2lwcyB0aGUgdXBkYXRlIGJ1dAo+PiBhc3N1bWVzIHNvbWUgb3RoZXIgYml0IG9mIGNvZGUg
ZXhlY3V0ZXMgbGF0ZXIgYW5kIGRvZXMgdGhhdCB1cGRhdGUuCj4+Cj4+IENhbiB5b3UgZXhwbGFp
biB0aGlzIHNvbWUgbW9yZSBwbGVhc2UuCj4+Cj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBU
aGVzZSBwb2ludHMgd2VyZSBkaXNjdXNzZWQgaW4gYW4gZWFybGllciAKPiByZXZpc2lvbiwgYnV0
IEkgc2hvdWxkIGhhdmUgZXhwbGFpbmVkIHRoZW0gZGlyZWN0bHkgaW4gdGhpcyB2ZXJzaW9uLgo+
IAo+IFZpamF5IG9uY2UgY2xhcmlmaWVkIHRoYXQgdGhlIGNvbmZpZ3VyYXRpb24gcHJpbmNpcGxl
IGJlY2FtZSBtb3JlIHN0cmljdCAKPiBzaW5jZSBLYWFuYXBhbGkuIFdlIGNhbiBiYWNrIHRvIDxo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjYyYTIxYTMtIAo+IGRlOGItNDA2Zi1hMTVkLWI4
YTU3MmFhNzlhYkBvc3MucXVhbGNvbW0uY29tLz4gZm9yIG1vcmUgZGV0YWlscy4KPiAKPiBJbiBz
aG9ydCwgdGhlIGhhcmR3YXJlIGd1aWRhbmNlIGFza3MgdG8gaXNzdWUgdGhlIFJFR19VUERBVEUg
YWZ0ZXIgYWxsIAo+IG9mIHRoZSBDU0lEIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJzIGFyZSB3cml0
dGVuLiBLYWFuYXBhbGkgc2VlbXMgdG8gaGF2ZSAKPiB2ZXJ5IHN0cmljdCBkZXBlbmRlbmN5IGlu
IHRoZSBoYXJkd2FyZSBhYm91dCB0aGlzIHNlcXVlbmNlIGFuZCB3aXRoIHRoZSAKPiBvcmlnaW5h
bCBzZXF1ZW5jZSwgbm8gUlVQIERPTkUgb3IgQlVGIERPTkUgZXZlbnRzIGFyZSByZWNlaXZlZCBh
dCBhbGwuIAo+IFdoaWxlIG90aGVyIGNoaXBzZXRzIGNhbiB3b3JrIG5vcm1hbGx5LgoKQnV0IGhv
dy93aGVyZSBhcmUgd2Ugc2F5aW5nIHRoYXQgaGFwcGVucyA/CgotLS0KYm9kCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
