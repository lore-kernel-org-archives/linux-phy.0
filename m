Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7A7C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcZuYRUqni5ReBYBraaTDHm86eFpJiWOWqsjsnbRf1I=; b=LjiTkKQNI6rfQu
	CIFsHli11EYYNb7+HkAyt6r9wlXo6EFxYzN3rluelHF8O4FN7/5GUS1iWKnHqdy/fTGxp4otfpdW6
	iGkazn0dOUW95yEsJRQpWZ80Ab8gmRxnZoPyLSdz0eulGsOcMs+blNwXtdEwTKDYYRBXeD6DCUV/Z
	abewIySzDinPmVxMTVz1oUYeq7PSKXXy8MsaaKdCcs3SUPw5AgU/OyVWE/bceLAUrHDmeFRYpETyz
	/WL0ntAnhBWkivU2K6W+SSPtMU7v113ZlC5zCI3a1OxaRW+kazL+k4SsZiavx8XUVl0dIKBtT5RyN
	mKtSTuZMduz5fpEGQkiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseHU-00000005kAw-3uSu;
	Fri, 05 Apr 2024 07:46:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseHQ-00000005k8x-1oDG;
	Fri, 05 Apr 2024 07:46:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DC4BD616DE;
	Fri,  5 Apr 2024 07:46:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FE9EC433C7;
	Fri,  5 Apr 2024 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712303191;
	bh=19hgbaU3P8IPVBIhjWEumRz5j4TbX2VV6q6o2CVSkvM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lZcNmWC+TCfv6qwk4WglYGPuJyGJRbLBcYD/z1wDkQUV5HMeZVQ0FGTxtd1yd94mf
	 kT/R32qUkNvn++EHnRIKZtWVzOeNQTnh8t4LyUNLajF6S8NwCj+jHn30weB+U7OVEz
	 AnDEfedoT/0FIjOdERSkE/xn111acd8qiJWt1xY2ku6gYyv2s6sqESmg0Mipin4nXh
	 wx3phujkHPN6hc9iNk/Px0QP8kmJW5FjH6yt2fKh4d8ytVBAxbIqIoPOH9CCfdzpE7
	 U0uc1aYrl6BZzCUrE+WFu1tYbleQzo7Ctrx5BqIcQGibp2QPUQnaoKYndGekbChhVC
	 IkgMZqtlliY7g==
Message-ID: <6457f778-e42a-4240-9a38-c1300ef23ddb@kernel.org>
Date: Fri, 5 Apr 2024 09:46:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/17] dt-bindings: clock: google,gs101-clock: add HSI2
 clock management unit
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
 saravanak@google.com, willmcvicker@google.com
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-2-peter.griffin@linaro.org>
 <d1aaa3a350315b8eb60aaee416fad4382385ca3a.camel@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <d1aaa3a350315b8eb60aaee416fad4382385ca3a.camel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_004632_628514_A636FB97 
X-CRM114-Status: GOOD (  11.25  )
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

T24gMDUvMDQvMjAyNCAwOToxNSwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gSGkgUGV0ZSwKPiAK
PiBPbiBUaHUsIDIwMjQtMDQtMDQgYXQgMTM6MjUgKzAxMDAsIFBldGVyIEdyaWZmaW4gd3JvdGU6
Cj4+IEFkZCBkdCBzY2hlbWEgZG9jdW1lbnRhdGlvbiBhbmQgY2xvY2sgSURzIGZvciB0aGUgSGln
aCBTcGVlZCBJbnRlcmZhY2UKPj4gMiAoSFNJMikgY2xvY2sgbWFuYWdlbWVudCB1bml0LiBUaGlz
IENNVSBmZWVkcyBoaWdoIHNwZWVkIGludGVyZmFjZXMKPj4gc3VjaCBhcyBQQ0llIGFuZCBVRlMu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJv
Lm9yZz4KPj4gLS0tCj4+IMKgLi4uL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55
YW1swqDCoMKgIHwgMzAgKysrKysrKysrKysrKysrKystLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAy
OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS0K
Pj4gY2xvY2sueWFtbAo+PiBpbmRleCAxZDJiY2VhNDFjODUuLmEyMDJmZDVkMWVhZCAxMDA2NDQK
Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxn
czEwMS1jbG9jay55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9jbG9jay9nb29nbGUsZ3MxMDEtY2xvY2sueWFtbAo+PiBAQCAtMzIsMTQgKzMyLDE1IEBAIHBy
b3BlcnRpZXM6Cj4+IMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtbWlzYwo+PiDCoMKg
wqDCoMKgwqAgLSBnb29nbGUsZ3MxMDEtY211LXBlcmljMAo+PiDCoMKgwqDCoMKgwqAgLSBnb29n
bGUsZ3MxMDEtY211LXBlcmljMQo+PiArwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtaHNp
Mgo+IAo+IENhbiB5b3Uga2VlcCB0aGlzIGFscGhhYmV0aWNhbCBhbmQgYWRkIGhzaSBiZWZvcmUg
bWlzYyBwbGVhc2UuCj4+IMKgCj4+IMKgwqAgY2xvY2tzOgo+PiDCoMKgwqDCoCBtaW5JdGVtczog
MQo+PiAtwqDCoMKgIG1heEl0ZW1zOiAzCj4+ICvCoMKgwqAgbWF4SXRlbXM6IDUKPj4gwqAKPj4g
wqDCoCBjbG9jay1uYW1lczoKPj4gwqDCoMKgwqAgbWluSXRlbXM6IDEKPj4gLcKgwqDCoCBtYXhJ
dGVtczogMwo+PiArwqDCoMKgIG1heEl0ZW1zOiA1Cj4+IMKgCj4+IMKgwqAgIiNjbG9jay1jZWxs
cyI6Cj4+IMKgwqDCoMKgIGNvbnN0OiAxCj4+IEBAIC0xMTIsNiArMTEzLDMxIEBAIGFsbE9mOgo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYnVzCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIGNvbnN0OiBpcAo+PiDCoAo+PiArwqAgLSBpZjoKPj4gK8KgwqDCoMKgwqAg
cHJvcGVydGllczoKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqAgY29udGFpbnM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtaHNpMgo+IAo+IHRo
aXMgYmxvY2sgc2hvdWxkIGFsc28gY29tZSBiZWZvcmUgbWlzYyBwbGVhc2UuCj4gCj4gT25jZSBk
b25lLCBmZWVsIGZyZWUgdG8gYWRkCgpZZXMsIHBsZWFzZSwgYWNrIGZvciBib3RoLgoKQmVzdCBy
ZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
