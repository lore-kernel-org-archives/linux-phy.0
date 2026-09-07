Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3FBC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHGTMpae9r/MoO6F1iEyd0HXRTG/r4P6WOmkHPbH8TE=; b=SgtIteC27al2Fj
	ebn2vzBC/ColmZdBIHsPSyzI1S47nV8GleWODU/nkfeCI4tOaan7yK1PebY2xoQwnFooG4YORktId
	FFZ3tweztXA/Lol4E5tYQYLD9yjbSFWw8pGrjUJ7w009LY6guYEz6rDoC4sHxQezxb8xm92To/F/p
	2qngQ0ilpWreoRMdQdMRdkSD0Z+7Zvn4sQfkqJDobr9Xnf125unnzZuNEP+1i8vLGe07f7EeI8VKt
	qf7fZBUv6ypydhCfvwcYJrMaFBGpJoP4Sv4s+FR88Fmeg9eMaDz/JBrZN2YlFaQty3EDHZnnE5jSc
	AOBSxq5ngDpo/2HPFSNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XAL-00000006bdL-2Wvd;
	Mon, 07 Sep 2026 11:05:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XAK-00000006bdA-3d05
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:05:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 50050601F9;
	Mon,  7 Sep 2026 11:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1866D1F00A3D;
	Mon,  7 Sep 2026 11:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788779132;
	bh=9w+yezYlK7U311raSgrzFh4bSQ3Pq/lnodM4AqaFq8M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=lRKNfjaP0TSM+C6Z51ZvaSdSJSuU3udU6ZtvHKuaZh1LmhTJFmwc9czlT6e+bHddE
	 nOKNS811YQISDkiheK+jJZz2Dp6kUnWWYdwu+r+jQ7WLDEVYvxF8QP6mvRn3AirpMZ
	 LwBi2j2XJte1cMRpVvZZy9OuMhNVsLnnKbUCQ8xkEWR4fxYQ1NKTaBJhCpAlhoUe13
	 ZQ0oEcGzZCgqKe8tlGZX2pI+57IhkXQuPdU+I/K5A4PYpoQLcIUdCQfpWB97CmznYI
	 h0/CFESMTVAiWzH2mJAkcXuNAQqLNm2swTnZb1uJVyBetZVKPbTWnSwmkgtaxfH3v5
	 MS4xOroj2zC0g==
Message-ID: <f798b003-4661-4cb9-8a3e-7579d0595904@kernel.org>
Date: Mon, 7 Sep 2026 12:05:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
 Guru Das Srinagesh <linux@gurudas.dev>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
 Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <iIEI9RqdlqSAwrBGxsv48s_r9QoTRP_IPoifu8PCol261xGqyCULXGQaaMYndhNAFA7YAzraXTr-UzZhguWz3g==@protonmail.internalid>
 <20260907-glymur_camss-v2-2-75f7982dc983@oss.qualcomm.com>
 <3e619085-3311-4acd-9493-e849875563d7@kernel.org>
 <HMhSsbIuGgGqeuA5WMqtACmlFgoNgQBLsfBFZfnuCmLfXfbUtwOV1sM1eDF762HX1aTqREbCfWm72IeQWTAUvA==@protonmail.internalid>
 <9ebc94f1-3ed8-4a21-a84e-ccd46f044927@oss.qualcomm.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <9ebc94f1-3ed8-4a21-a84e-ccd46f044927@oss.qualcomm.com>
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

T24gMDcvMDkvMjAyNiAxMTo0MiwgTmloYWwgS3VtYXIgR3VwdGEgd3JvdGU6Cj4+PiBYMUU4MDEw
MCBzdXBwb3J0cyBib3RoIHRoZSBsZWdhY3kgQ1NJUEhZIHJlc291cmNlcyBhbmQgdGhlIG5ldyBQ
SFkgQVBJOwo+Pj4gR2x5bXVyIHVzZXMgb25seSB0aGUgbmV3IFBIWSBBUEkgdmlhIHN0YW5kYWxv
bmUgcGh5QCBjaGlsZCBub2RlcywKPj4+IHNvIHBlci1DU0lQSFkgY2xvY2tzLCBpbnRlcnJ1cHRz
IGFuZCBzdXBwbGllcyBhcmUgYWJzZW50IGhlcmUuCj4+IFdoYXQncyB1cCB3aXRoIHRoZSBjb21t
aXQgbG9nIGhlcmUgPyBUaGVyZSBpcyBubyBsZWdhY3kgQ1NJUEhZIGluIHRoaXMuLiA/Cj4+Cj4g
UmlnaHQsIEdseW11ciBoYXMgbm9uZSDigJQgdGhhdCdzIHRoZSBwb2ludC4gWDFFODAxMDAgc3Vw
cG9ydHMgYm90aDsKPiBjYW1zc19kZXRlY3RfbGVnYWN5X3BoeSgpIHBpY2tzIHRoZSBwYXRoIGF0
IHJ1bnRpbWUgYnkgY2hlY2tpbmcgaWYKPiB0aGUgcmVtb3RlIGVuZHBvaW50IGlzIGEgcGh5QCBu
b2RlLiBHbHltdXIgaXMgbmV3LXBhdGggb25seSwgaGVuY2UKPiBhIGRlZGljYXRlZCBiaW5kaW5n
IHdpdGhvdXQgdGhvc2UgbGVnYWN5IHByb3BlcnRpZXMuCgpZZXMgT0sgSSBzZWUuCgpEbyB5b3Ug
cmVhbGx5IG5lZWQgdG8gbWVudGlvbiBIYW1vYSBoZXJlID8gSSdkIGp1c3QgZHJvcCB0aGF0IGZy
b20gdGhlIApjb21taXQgbG9nLgoKRGVzY3JpYmUgR2x5bXVyIC0gSGFtb2EgaXMgaXJyZWxldmFu
dCB0byB0aGlzIGZpbGUuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
