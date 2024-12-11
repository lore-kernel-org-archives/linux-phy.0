Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C08E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 11:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQn877PRO+c7j7QgxL/j5svAuf3SR0Smzas04N0uVmQ=; b=UlNb/UUYXyLhpw
	y2DoMagNWG55P/S9WPhSrE06dhqUVvSMnMP2Tsae+8X0IKBsYrwNKDps/51/CbV3jjjEBiGrTMrQA
	6m0E/WktsOIFeyINwryDeNKoYS8PjO/L6/VwH0fIsrhR55di3YN77Qo1Yb42yiluDPL2+hnyK+7Lo
	SJfDxaiOsM/ic2cZD0ek7GSEdimtAZh/EdUG7zY+dbVsk5eH0BHcSIIwMnbotThT0Nq4pbUd0XiJt
	gLHFPUA+7xSnx30GuAwEjKFhshZdEWj5ua3oZ7FF1lepRoCsMFcwQIJBb//UTke1n1xixqV2jloeW
	ruv1qxLyL4t9h8kjgq/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLF0-0000000Ekvc-42PV;
	Wed, 11 Dec 2024 11:50:54 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLEx-0000000Ekuy-42iG
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 11:50:53 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2165448243fso34986855ad.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 03:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733917851; x=1734522651; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zhcCxygbhPLWVCPLSEOC9aoZpP2GOwRDWDssDWGzilI=;
        b=K0rDfxTQSVK8i1tE5wjFoAvBA8rJfw0vUmGPZLmurZn+vhu6csUn8n+pu7sQap2OTU
         DLPMGxY+PKWsAyDEFzU0dDRj+2zZXQ51dZoU3zm04TCK/IvVVndcZP4ozWxToxrcHSqS
         7oHMsd4Y7CSeqQagERIgYNetD8RRbxrtovypdJ4KpQZbOKBGIaVXAR+ChAGL+4WfZAJY
         PISzo8A+ota9Np1CgKR+qJ+VrGDOWUYqmdxP0v0sOD7MuRNuzTYLzlnJDKY6EfnMlM/O
         NFsr77rUZEmzJZL2v53dQruNhyHFxGxnL2fHhxCxan53hLDMRPfpYZKBzKJF33Bw4H8+
         7lKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733917851; x=1734522651;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhcCxygbhPLWVCPLSEOC9aoZpP2GOwRDWDssDWGzilI=;
        b=ZQKRvTNponE8Hiv00DwikrzFmRFPhYdQObl2f2OUfFkofyZ6t7t9HHBpZ0lf8m0+j0
         J9VgNOGQMh+HKNg2D+dU5NmZhaOoiATLaucunWlD1KCEP+tp0PPsU/lp8MiDEPow669E
         9XKjgihBQDLHhhsu7YtKtN8fA4p78H2gNI6lKd8AIMT7jWhCEeVQh1ssFNRtNya8GLPe
         KYhTmOlXapLc8g4taaxwnJTGAjEVoZcM8ZBmd4H1M8tmyAdfaSGolCr47b5v8pIASzfu
         HBrHwhq2nZh8gkQDdRN4m75F+nvRfNKRm1PQqkb2oGbA5f8rmUqvT5v6bGwkjIxuqY8n
         eSfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfg0mhfKopcbFd7GU9mKTjmj/93uhHkPjcW1/dS/t3LpHraStyTlvP6xnImPbD7H8e98NOMzqwjZI=@lists.infradead.org
X-Gm-Message-State: AOJu0YypFEC6cDjsPdh0Jn5FQAk60e7tdYWemZzf0aa2u4QfJoXzz8Ih
	kv4SSANIRDwLJpJceDgwLU8JhjBD+KIXXfCxdxwtWzCtPS6WycPU7m+LGQWo/Q==
X-Gm-Gg: ASbGncteyGVoNhP8YJe1a6Jlr0JdBFrWoktaHAQQTNaazgPRuwAYvwosGXdNb8OUzFz
	KL6Wa0uozuqRLjIGBKMSRAcucn1emsNEgBVuNBvE7XAYyd6nTOlJpYNyQi5nF8TuESSYovbUtlG
	GL6JxVMOYNDGXJJ/sMk6G3nL1q43kiRTuEHmm2XZ4OlPseyu6U7r0T7C0F/3TtZ0iqJWZxxbC0c
	HT/L9uw4rray5rfawdCds3LrebK969WbuUAYdH7StOTqwmw2lcMqYOoit/k0Ek=
X-Google-Smtp-Source: AGHT+IEVbl+wAIa5JZrSvowjO/cDdfR9fBf3jYVsXQMOChSoFGmYHwPGwinFUNul81v+vwc84aIqVg==
X-Received: by 2002:a17:902:ea10:b0:216:2e5e:96ff with SMTP id d9443c01a7336-217782d9da1mr47074955ad.0.1733917851326;
        Wed, 11 Dec 2024 03:50:51 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-216356f24d8sm64927805ad.242.2024.12.11.03.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 03:50:50 -0800 (PST)
Date: Wed, 11 Dec 2024 17:20:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional
 current load properties
Message-ID: <20241211115034.4hrpmninbx5uryev@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
 <20241211062053.vxdpovlmetvyx3za@thinkpad>
 <33697bd9-02f4-4a9a-b8c0-4930d7fdaee2@kernel.org>
 <20241211082404.p7fbmhooikmipxvm@thinkpad>
 <3c7ddb08-38db-44b3-a7a7-ec7b270a408f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c7ddb08-38db-44b3-a7a7-ec7b270a408f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_035052_027556_D48E831A 
X-CRM114-Status: GOOD (  33.22  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMTA6NTI6MTFBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAxMS8xMi8yMDI0IDA5OjI0LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCAwOTowOToxOEFNICswMTAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIDExLzEyLzIwMjQgMDc6MjAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+Pj4gT24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMTE6MjM6
MTFBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+Pj4+IE9uIFdlZCwgRGVj
IDA0LCAyMDI0IGF0IDA2OjUyOjQ3UE0gKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+ID4+Pj4+
IE9uIHNvbWUgcGxhdGZvcm1zLCB0aGUgcG93ZXIgc3VwcGx5IGZvciBQQ0llIFBIWSBpcyBub3Qg
YWJsZSB0byBwcm92aWRlCj4gPj4+Pj4gZW5vdWdoIGN1cnJlbnQgd2hlbiBpdCB3b3JrcyBpbiBM
UE0gbW9kZS4gSGVuY2UsIFBDSWUgUEhZIGRyaXZlciBuZWVkcyB0bwo+ID4+Pj4+IHNldCBjdXJy
ZW50IGxvYWQgdG8gdm90ZSB0aGUgcmVndWxhdG9yIHRvIEhQTSBtb2RlLgo+ID4+Pj4+Cj4gPj4+
Pj4gRG9jdW1lbnQgdGhlIGN1cnJlbnQgbG9hZCBhcyBwcm9wZXJ0aWVzIGZvciBlYWNoIHBvd2Vy
IHN1cHBseSBQQ0llIFBIWQo+ID4+Pj4+IHJlcXVpcmVkLCBuYW1lbHkgdmRkYS1waHktbWF4LW1p
Y3JvYW1wLCB2ZGRhLXBsbC1tYXgtbWljcm9hbXAgYW5kCj4gPj4+Pj4gdmRkYS1xcmVmLW1heC1t
aWNyb2FtcCwgcmVzcGVjdGl2ZWx5LlBDSWUgUEhZIGRyaXZlciBzaG91bGQgcGFyc2UgdGhlbSB0
bwo+ID4+Pj4+IHNldCBhcHByb3ByaWF0ZSBjdXJyZW50IGxvYWQgZHVyaW5nIFBIWSBwb3dlciBv
bi4KPiA+Pj4+Pgo+ID4+Pj4+IFRoaXMgdGhyZWUgcHJvcGVydGllcyBhcmUgb3B0aW9uYWwgYW5k
IG5vdCBtYW5kYXRvcnkgZm9yIHRob3NlIHBsYXRmb3Jtcwo+ID4+Pj4+IHRoYXQgUENJZSBQSFkg
Y2FuIHN0aWxsIHdvcmsgd2l0aCBwb3dlciBzdXBwbHkuCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IFVo
IHVoLCBzbyB0aGUgZG93bnN0cmVhbSBjb21lcyBmaW5hbGx5IQo+ID4+Pj4KPiA+Pj4+IE5vIHNv
cnJ5IGd1eXMsIHVzZSBleGlzdGluZyByZWd1bGF0b3IgYmluZGluZ3MgZm9yIHRoaXMuCj4gPj4+
Pgo+ID4+Pgo+ID4+PiBNYXliZSB0aGV5IGdvdCBpbnNwaXJlZCBieSB1cHN0cmVhbSBVRlMgYmlu
ZGluZ3M/Cj4gPj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvdWZzLWNv
bW1vbi55YW1sOgo+ID4+Pgo+ID4+PiB2Y2MtbWF4LW1pY3JvYW1wCj4gPj4+IHZjY3EtbWF4LW1p
Y3JvYW1wCj4gPj4+IHZjY3EyLW1heC1taWNyb2FtcAo+ID4+Cj4gPj4gQW5kIGl0IGlzIGFscmVh
ZHkgYW4gQUJJLCBzbyB3ZSBjYW5ub3QgZG8gYW55dGhpbmcgYWJvdXQgaXQuCj4gPj4KPiA+Pj4K
PiA+Pj4gUmVndWxhdG9yIGJpbmRpbmcgb25seSBkZXNjcmliZXMgdGhlIG1pbi9tYXggbG9hZCBm
b3IgdGhlIHJlZ3VsYXRvcnMgYW5kIG5vdAo+ID4+Cj4gPj4gTm8sIGl0IGV4YWN0bHkgZGVzY3Jp
YmVzIG1pbi9tYXggY29uc3VtZXJzIGNhbiB1c2UuIExldCdzIHF1b3RlOgo+ID4+ICJsYXJnZXN0
IGN1cnJlbnQgY29uc3VtZXJzIG1heSBzZXQiCj4gPj4gSXQgaXMgYWxsIGFib3V0IGNvbnN1bWVy
cy4KPiA+Pgo+ID4+PiBjb25zdW1lcnMuIFdoYXQgaWYgdGhlIGNvbnN1bWVycyBuZWVkIHRvIHNl
dCB2YXJpYWJsZSBsb2FkIHBlciBwbGF0Zm9ybT8gU2hvdWxkCj4gPj4KPiA+PiBUaGVuIGVhY2gg
cGxhdGZvcm0gdXNlcyByZWd1bGF0b3IgQVBJIG9yIHJlZ3VsYXRvciBiaW5kaW5ncyB0byBzZXQg
aXQ/IEkKPiA+PiBkb24ndCBzZWUgdGhlIHByb2JsZW0gaGVyZS4KPiA+Pgo+ID4+PiB0aGV5IGhh
cmRjb2RlIHRoZSBsb2FkIGluIGRyaXZlcj8gKGV2ZW4gc28sIHRoZSBsb2FkIHNob3VsZCBub3Qg
dmFyeSBmb3IgZWFjaAo+ID4+PiBib2FyZCkuCj4gPj4KPiA+PiBUaGUgbG9hZCBtdXN0IHZhcnkg
cGVyIGJvYXJkLCBiZWNhdXNlIHJlZ3VsYXRvcnMgdmFyeSBwZXIgYm9hcmQuIE9mCj4gPj4gY291
cnNlIGluIHByYWN0aWNlIG1vc3QgZGVzaWducyBjb3VsZCBiZSB0aGUgc2FtZSwgYnV0IHJlZ3Vs
YXRvcnMgYW5kCj4gPj4gdGhlaXIgbGltaXRzIGFyZSBhbHdheXMgcHJvcGVydGllcyBvZiB0aGUg
Ym9hcmQsIG5vdCB0aGUgU29DLgo+ID4+Cj4gPiAKPiA+IEhvdyB0aGUgY29uc3VtZXIgZHJpdmVy
cyBhcmUgc3VwcG9zZWQgdG8ga25vdyB0aGUgb3B0aW11bSBsb2FkPwo+ID4gCj4gPiBJIGRvbid0
IHNlZSBob3cgdGhlIGNvbnN1bWVyIGRyaXZlcnMgY2FuIHNldCB0aGUgbG9hZCB3aXRob3V0IGhh
cmRjb2RpbmcgdGhlCj4gPiB2YWx1ZXMuIEFuZCBJIGNvdWxkIHNlZSBmcm9tIFVGUyBwcm9wZXJ0
aWVzIHRoYXQgZWFjaCBib2FyZCBoYXMgZGlmZmVyZW50Cj4gPiB2YWx1ZXMuCj4gCj4gCj4gRHJp
dmVycyBkbyBub3QgbmVlZCB0byBrbm93LCBpdCdzIG5vdCB0aGUgZHJpdmVyJ3MgcmVzcG9uc2li
aWxpdHkuIElmCgpXaGF0PyBJIHRoaW5rIHRoZXJlIGlzIGEgbWlzdW5kZXJzdGFuZGluZyBoZXJl
LiBUaGUgaW50ZW50aW9uIG9mIHRoZXNlIHByb3Bvc2VkCnByb3BlcnRpZXMgaXMgdG8gYWxsb3cg
dGhlIFBIWSBkcml2ZXIgdG8gc2V0IHRoZSByZXF1aXJlZCBsb2FkIG9mIHRoZSByZWd1bGF0b3IK
dXNpbmcgcmVndWxhdG9yX3NldF9sb2FkKCkgQVBJLiBBcyBwZXIgdGhlIEFQSSBkZXNjcmlwdGlv
bjoKCidDb25zdW1lciBkZXZpY2VzIG5vdGlmeSB0aGVpciBzdXBwbHkgcmVndWxhdG9yIG9mIHRo
ZSBtYXhpbXVtIHBvd2VyIHRoZXkgd2lsbApyZXF1aXJlIChjYW4gYmUgdGFrZW4gZnJvbSBkZXZp
Y2UgZGF0YXNoZWV0IGluIHRoZSBwb3dlciBjb25zdW1wdGlvbiB0YWJsZXMpCndoZW4gdGhleSBj
aGFuZ2Ugb3BlcmF0aW9uYWwgc3RhdHVzIGFuZCBoZW5jZSBwb3dlciBzdGF0ZScuCgpJSVVDLCB5
b3VyIGNvbmNlcm4gaXMgdGhhdCB0aGUgZGV2aWNldHJlZSBzaG91bGRuJ3Qgc3BlY2lmeSB0aGUg
bG9hZCBmb3IgZWFjaApjb25zdW1lciBidXQganVzdCB0aGUgbWluL21heCBsb2FkIG9mIHRoZSBy
ZWd1bGF0b3IuIEFuZCB0aGUgY29uc3VtZXIgZHJpdmVyCnNob3VsZCBmaWd1cmUgb3V0IHRoZSBs
b2FkIGFuZCBzZXQgaXQgYWNjb3JkaW5nbHkuCgpDb3JyZWN0IG1lIGlmIEknbSB3cm9uZy4KCklu
IHRoYXQgY2FzZSwgSSB3YXMgd29uZGVyaW5nIGlmIHRoZSBsb2FkIHNldCBieSB0aGUgZHJpdmVy
IGlzIGdvaW5nIHRvIHZhcnkKYmV0d2VlbiBwbGF0Zm9ybXMgKGJvYXJkcykgb3Igbm90IChxdWVz
dGlvbiB0byBaaXl1ZSBaaGFuZykuIElmIGl0IHZhcmllcwpiZXR3ZWVuIFNvQywgdGhlbiB3ZSBj
YW4gaGFyZGNvZGUgdGhlIGxvYWQgaW4gZHJpdmVyIGJhc2VkIG9uIGNvbXBhdGlibGUuCgo+IElm
Cj4gdGhlc2UgYXJlIGNvbnN0cmFpbnRzIHBlciBib2FyZCwgdGhlbiByZWd1bGF0b3IgcHJvcGVy
dGllcyBhcHBseSBhbmQKPiB0aGVyZSBpcyBubyBkaWZmZXJlbmNlIGJldHdlZW4gdGhpcyAidmRk
LW1heC1taWNyb2FtcCA9IDEwIiBhbmQKPiAicmVndWxhdG9yLW1heC1taWNyb2FtcCIuCj4gCgpU
aGVyZSBpcyBhIGRpZmZlcmVuY2UuIFJlZ3VsYXRvciBwcm9wZXJ0aWVzIGFyZSBqdXN0IHRocmVz
aG9sZC4gU28gdW5sZXNzIHRoZQpjb25zdW1lciBzZXRzIHRoZSBsb2FkLCB0aGV5IHdvbid0IHRh
a2UgZWZmZWN0LiBJIHRoaW5rIHlvdSBnb3QgY29uZnVzZWQgYnkgdGhlCidtYXgnIHdvcmRpbmcg
aW4gdGhlIHByb3Bvc2VkIHByb3BlcnRpZXM/Cgo+IElmIHRoaXMgdmFyaWVzIHJ1bnRpbWUsIHRo
ZW4geW91ciBwcm9wZXJ0eSBpcyBhbHJlYWR5IG5vdCBzdWl0YWJsZSBhbmQKPiB2ZXJ5IGxpbWl0
ZWQgYW5kIHlvdSBzaG91bGQgdXNlIE9QUCB0YWJsZS4KPiAKClRoZSBjb25zdW1lciBkcml2ZXIg
bWF5IHJlcXVlc3QgZGlmZmVyZW50IGxvYWRzIGJhc2VkIG9uIHRoZWlyIG9wZXJhdGlvbmFsCnN0
YXRlLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
