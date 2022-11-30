Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51AA1C4708A
	for <linux-phy@archiver.kernel.org>; Wed, 30 Nov 2022 15:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMCPy0p6dWY56GgGGMpvFpnbVwmcyqbfRWPXPMmYrck=; b=eeV6zAzmzZVlVQ
	2t4oNXUV2naelu1lAcNg4kGeYAFwgixU35apJtu/XSOZed+aOS78g4IL9+9RmCFNagvG9bhHyKPAJ
	g600RfXGEPRJ1JVZj6vVWnMQQqPTFONO1jVB0tvGtXkaAbZuE+7AJLIiNUIs8s+OOqYYYaVYk9KAk
	sxrWFDclDxpdNU3vIodAjvbn2aXRUKdovmCFVgbds78ih4RTudROpW8IbHlnFN+oCrCn6PhM68u8u
	smXyKo3cICNNf3/+rZtHZ/R6b1ZmC6pL/5IeXx2noX07MTMgE323CIA1CRSbaAOFrWKSaNQSnpVhq
	38SafQeBqGMdeu118rng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0Ooj-00HIk3-Mk; Wed, 30 Nov 2022 15:16:09 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0Ooe-00HIfe-6X
	for linux-phy@lists.infradead.org; Wed, 30 Nov 2022 15:16:08 +0000
Received: by mail-lj1-x231.google.com with SMTP id bn5so21244541ljb.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Nov 2022 07:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fBqKY5yXMXQuePyYKRrEKVvy6dgb6e3BQEBKFrS2SOk=;
        b=xaMwhi8t/77sRinO6CaduGrAoHZRRnvXT88bQ20GODkbSIJmlyjhXqUCTHJDozifaU
         bQO4Vdk/wve2AEpaXg5eri7mT4HYlCTwHF6goWC/PPi+AAhaDfA81cBIIb11vd77U2uW
         g8bS4oOq+Sv+WNBgfAFQvJ70LzadCjOd5kbSNBWYCYlhneHnQkDPEWDuKWMRqhNdJ7Bv
         5Z7Cc5KPLuwS+LBOnPAzgmuoLsOJNgax+o7F+3J08T7oMTd0CcLAfHQGHEKhJGrY5PUs
         jaN0MbfPEsXufBzYN3eHDIu2OCarSyD9FZqDknOoxSwZ3ij4+nQEx56Vk89D6XCcXf6l
         yFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fBqKY5yXMXQuePyYKRrEKVvy6dgb6e3BQEBKFrS2SOk=;
        b=x3fOgGWkrQ2Gy/BSFb1gBgPPn2mUrRuXtI+U+eQf357aSiyAwudo7YKnUQfwkLqUkA
         wSFxXtANMTxS+agwKwKrg4Yu3VKJIWwZGBdY18qzZWAtyJFqyWB6lUVSsdGJn7TZrSom
         QonEAKmhc8S10RdLFWwMFHqTdi0XuNf5UZAUDHFG0q8hWRxAgY7Ndb/nQAQN/DwzfhFX
         L8iwj3z/OL5Goi4jGfiAtnzO7b21XvsU1greRqWf58PI+ouGz9FpI5QYBeX0xWMl5kMM
         7r81w8M4Y2AliIr2lRPkZsxJuqF5Y5O7TTyx+ym0i50BnlDHALgxVSbyG8JNrpPxy2Hw
         DuKw==
X-Gm-Message-State: ANoB5pl8xUdiRJoxRnrgmtsI1XOs/RhyqfOxwGc22gVVtoBc3e3e3zV7
	I146j6WHmZftoy/br2jCCzvaLE20oVHiPVcC
X-Google-Smtp-Source: AA0mqf7wh2enQmEweeZZD/gaekmYNNgnB360r7ykWS1nE5Ed9UiwwqFkYWP5sq6UAoFj+fC06zjv7Q==
X-Received: by 2002:a2e:9b17:0:b0:279:bb68:f1bc with SMTP id u23-20020a2e9b17000000b00279bb68f1bcmr2209137lji.445.1669821360584;
        Wed, 30 Nov 2022 07:16:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t15-20020a05651c204f00b0026bf43a4d72sm72447ljo.115.2022.11.30.07.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 07:15:59 -0800 (PST)
Message-ID: <7ce2fd0f-621d-dfbb-2ec0-53ccbb3308ae@linaro.org>
Date: Wed, 30 Nov 2022 16:15:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] dt-bindings: PHY: P2U: Add PCIe lane margining
 support
Content-Language: en-US
To: Manikanta Maddireddy <mmaddireddy@nvidia.com>, vkoul@kernel.org,
 kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, vidyas@nvidia.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com, lpieralisi@kernel.org,
 nkristam@nvidia.com
References: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
 <20221124083510.3008139-2-mmaddireddy@nvidia.com>
 <0b203c11-851c-fd6c-faeb-e283b158f1c8@linaro.org>
 <b81c69e0-13a2-6a25-21c7-c0d8804f9c3b@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b81c69e0-13a2-6a25-21c7-c0d8804f9c3b@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_071604_277087_94C7ADB7 
X-CRM114-Status: GOOD (  21.87  )
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

T24gMzAvMTEvMjAyMiAxNjoxMSwgTWFuaWthbnRhIE1hZGRpcmVkZHkgd3JvdGU6Cj4gVGhhbmsg
eW91IGZvciBxdWljayByZXZpZXcuIEkgd2lsbCB3YWl0IGZvciBvdGhlciByZXZpZXdlcnMgdG8g
cmV2aWV3IAo+IHBhdGNoIDIgJiAzLgo+IEkgd2lsbCBhZGRyZXNzIGFsbCByZXZpZXcgY29tbWVu
dHMgYW5kIHNlbmRuZXcgcmV2aXNpb24uCj4gCj4gT24gMTEvMjQvMjAyMiAyOjE1IFBNLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBFeHRlcm5hbCBlbWFpbDogVXNlIGNhdXRpb24gb3Bl
bmluZyBsaW5rcyBvciBhdHRhY2htZW50cwo+Pgo+Pgo+PiBPbiAyNC8xMS8yMDIyIDA5OjM1LCBN
YW5pa2FudGEgTWFkZGlyZWRkeSB3cm90ZToKPj4+IFRlZ3JhMjM0IHN1cHBvcnRzIFBDSWUgbGFu
ZSBtYXJnaW5pbmcuIFAyVSBIVyBhY3RzIGFzIGEgcmVsYXkgdG8gZXhjaGFuZ2UKPj4gdHlwbzog
bWVyZ2luZz8KPiBJdCBpcyBub3QgdHlwbywgaXQgaXMgUENJZSBmZWF0dXJlIGxhbmUgbWFyZ2lu
aW5nLgo+IGh0dHBzOi8vcGNpc2lnLmNvbS9wdXNoaW5nLWxpbWl0cy11bmRlcnN0YW5kaW5nLWxh
bmUtbWFyZ2luaW5nLXBjaWUlQzIlQUUKPj4KPj4+IG1hcmdpbiBjb250cm9sIGRhdGEgYW5kIG1h
cmdpbiBzdGF0dXMgYmV0d2VlbiBQQ0llIGNvbnRyb2xsZXIgYW5kIFVQSFkuCj4+IFBsZWFzZSB1
c2Ugc2NyaXB0cy9nZXRfbWFpbnRhaW5lcnMucGwgdG8gZ2V0IGEgbGlzdCBvZiBuZWNlc3Nhcnkg
cGVvcGxlCj4+IGFuZCBsaXN0cyB0byBDQy4gIEl0IG1pZ2h0IGhhcHBlbiwgdGhhdCBjb21tYW5k
IHdoZW4gcnVuIG9uIGFuIG9sZGVyCj4+IGtlcm5lbCwgZ2l2ZXMgeW91IG91dGRhdGVkIGVudHJp
ZXMuICBUaGVyZWZvcmUgcGxlYXNlIGJlIHN1cmUgeW91IGJhc2UKPj4geW91ciBwYXRjaGVzIG9u
IHJlY2VudCBMaW51eCBrZXJuZWwuCj4gSSB2ZXJpZmllZCB0aGVzZSBwYXRjaGVzIG9uIDYuMC4w
LXJjNiBrZXJuZWwgYW5kIGV4ZWN1dGVkIGdldF9tYWludGFpbmVycy5wbAo+IHNjcmlwdCBvbiBp
dC4gRGlkIEkgbWlzcyBhbnlvbmUgaGVyZT8KClllcy4gQXQgbGVhc3QgUm9iLCBtYXliZSBtb3Jl
LiBZb3UgbmVlZCB0byBDQyBhbGwKbWFpbnRhaW5lcnMvcmV2aWV3ZXJzL3N1cHBvcnRlcnMgYW5k
IGFsbCBtYWlsaW5nIGxpc3RzLgoKSXQncyBub3QgbXkgdGFzayB0byB2ZXJpZnkgZWFjaCBvZiB0
aGVzZSBhZGRyZXNzZXMgdG8gY2hlY2sgd2hldGhlciB5b3UKcmVhbGx5IG1pc3NlZCBzb21lb25l
IG9yIG5vdC4gSSBzcG90dGVkIGF0IGxlYXN0IG9uZSBtaXNzaW5nIGFkZHJlc3Mgc28KanVzdCBy
dW4gZ2V0X21haW50YWluZXJzLnBsIGFuZCB1c2UgYWxsIGVudHJpZXMgZnJvbSB0aGVyZS4KCgo+
Pgo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFuaWthbnRhIE1hZGRpcmVkZHkgPG1tYWRkaXJlZGR5
QG52aWRpYS5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL2JpbmRpbmdzL3BoeS9waHktdGVncmExOTQt
cDJ1LnlhbWwgICAgICAgIHwgNTAgKysrKysrKysrKysrKysrKysrKwo+Pj4gICAxIGZpbGUgY2hh
bmdlZCwgNTAgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS10ZWdyYTE5NC1wMnUueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXRlZ3JhMTk0LXAydS55YW1sCj4+PiBp
bmRleCA0ZGM1MjA1ZDg5M2IuLjBiYTNmNmEwYjQ3NCAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXRlZ3JhMTk0LXAydS55YW1sCj4+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS10ZWdyYTE5NC1w
MnUueWFtbAo+Pj4gQEAgLTQwLDYgKzQwLDUxIEBAIHByb3BlcnRpZXM6Cj4+PiAgICAgJyNwaHkt
Y2VsbHMnOgo+Pj4gICAgICAgY29uc3Q6IDAKPj4+Cj4+PiArICBpbnRlcnJ1cHRzOgo+Pj4gKyAg
ICBpdGVtczoKPj4+ICsgICAgICBkZXNjcmlwdGlvbjogUDJVIGludGVycnVwdCBmb3IgR2VuNCBs
YW5lIG1hcmdpbmluZyBmdW5jdGlvbmFsaXR5Lgo+PiB0eXBvOiBtZXJnaW5nPwo+IEl0IGlzIG5v
dCB0eXBvLCBpdCBpcyBQQ0llIGZlYXR1cmUgbGFuZSBtYXJnaW5pbmcuCj4gaHR0cHM6Ly9wY2lz
aWcuY29tL3B1c2hpbmctbGltaXRzLXVuZGVyc3RhbmRpbmctbGFuZS1tYXJnaW5pbmctcGNpZSVD
MiVBRQo+Pgo+Pj4gKwo+Pj4gKyAgaW50ZXJydXB0LW5hbWVzOgo+Pj4gKyAgICBpdGVtczoKPj4+
ICsgICAgICAtIGNvbnN0OiBpbnRyCj4+IERyb3AgZW50aXJlIHByb3BlcnR5LCBub3QgcmVhbGx5
IHVzZWZ1bC4KPiBJbiBkcml2ZXIsIEkgYW0gdXNpbmcgcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUo
KSwgSSB3aWxsIGNoYW5nZSBpdCB0byAKPiBwbGF0Zm9ybV9nZXRfaXJxKCkKPiBhbmQgZHJvcCB0
aGlzIHByb3BlcnR5Lgo+Pgo+Pj4gKwo+Pj4gKyAgbnZpZGlhLGJwbXA6Cj4+PiArICAgICRyZWY6
IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJyYXkKPj4+ICsgICAg
ZGVzY3JpcHRpb246IE11c3QgY29udGFpbiBhIHBhaXIgb2YgcGhhbmRsZXMgdG8gQlBNUCBjb250
cm9sbGVyIG5vZGUgZm9sbG93ZWQgYnkgUDJVIElELgo+Pj4gKyAgICBpdGVtczoKPj4+ICsgICAg
ICAtIGl0ZW1zOgo+Pj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIEJQTVAg
Y29udHJvbGxlciBub2RlCj4+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IFAyVSBpbnN0YW5j
ZSBJRAo+Pj4gKyAgICAgICAgICAgIG1heGltdW06IDI0Cj4+PiArCj4+PiArYWxsT2Y6Cj4+PiAr
ICAtIGlmOgo+Pj4gKyAgICAgIHByb3BlcnRpZXM6Cj4+PiArICAgICAgICBjb21wYXRpYmxlOgo+
Pj4gKyAgICAgICAgICBjb250YWluczoKPj4+ICsgICAgICAgICAgICBlbnVtOgo+Pj4gKyAgICAg
ICAgICAgICAgLSBudmlkaWEsdGVncmExOTQtcDJ1Cj4+PiArICAgIHRoZW46Cj4+PiArICAgICAg
cmVxdWlyZWQ6Cj4+PiArICAgICAgICAtIHJlZwo+Pj4gKyAgICAgICAgLSByZWctbmFtZXMKPj4+
ICsgICAgICAgIC0gJyNwaHktY2VsbHMnCj4+IFRoYXQncyBub3QgaG93IGl0IHNob3VsZCBiZSBk
b25lLiBZb3UgaGF2ZSBvbmx5IHR3byB2YXJpYW50cyBoZXJlLCBzbwo+PiBhZGQgYSAicmVxdWly
ZWQ6IiBibG9jayB3aXRoIGFib3ZlIGFuZCBvbmx5IG9uZSBpZjp0aGVuOiBjbGF1c2UgZm9yCj4+
IGludGVycnVwdHMgYW5kIG52aWRpYSxicG1wLgo+Pgo+PiBSZXF1aXJpbmcgcmVnL3JlZy1uYW1l
cy9waHktY2VsbHMgc2hvdWxkIGJlIGluIHNlcGFyYXRlIHBhdGNoIHdpdGggaXRzCj4+IG93biBy
ZWFzb25pbmcuCj4gT2ssIEkgd2lsbCBjcmVhdGUgdHdvIHNlcGFyYXRlIHBhdGNoZXMgYW5kIGFk
ZCBpZjp0aGVuIGNsYXVzZSBvbmx5IGZvciAKPiB0ZWdyYTIzNC4KPiBBcyBwZXIgdW5kZXJzdGFu
ZGluZyBmaW5hbCBjaGFuZ2Ugd2lsbCBsb29rIGxpa2UgYmVsb3csIHJpZ2h0Pwo+IAo+IAo+IHJl
cXVpcmVkOgo+ICDCoCAtIHJlZwo+ICDCoCAtIHJlZy1uYW1lcwo+ICDCoCAtICcjcGh5LWNlbGxz
Jwo+IAo+IGFsbE9mOgo+ICDCoCAtIGlmOgo+ICDCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4gIMKg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIG52aWRpYSx0ZWdyYTIzNC1wMnUKPiAgwqDCoMKgIHRoZW46Cj4gIMKgwqDCoMKgwqAg
cmVxdWlyZWQ6Cj4gIMKgwqDCoMKgwqDCoMKgIC0gaW50ZXJydXB0cwo+ICDCoMKgwqDCoMKgwqDC
oCAtIG52aWRpYSxicG1wCgp5ZXMKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
