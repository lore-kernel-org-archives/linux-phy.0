Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 081FEC4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRgypvPkPeSL1KOHvtxyvIrw2xICT9odVD9dNOEAzZ8=; b=t2ksorHmbHF/2d
	Mww2bFU25i3fNouLtDw/RTlhme9qgtew91Ny1+qlXIMHU1K++R9eYqbBJJ5MDeUI+zjjStvV/5hXC
	ZNvpe2/W7alK51KZlzq4RIwViF+OHysUqMDm65pG0mULoFhjK36ciQq9+brmldJ0Y9SuD6zlz3Okj
	DrafgLiM34zXAfi6BLQhuoo0gZKEYz5O3SzSVg2/PVGN4X86s3vLVqFEnUw64LcI/9DkPes3YqOnT
	C9+wIL43iyML0LT/qOGQfv78klsVgMEp0YnQJFuyR4ntbmIxVnIh/ow1Wtg+TpLAhEwZcvJSgzYDE
	HaU7KWq+AEe7Vo3iDQGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEJ6-00Ct4f-2S;
	Thu, 07 Dec 2023 13:20:48 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEJ4-00Ct4C-0c
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:20:47 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2851a2b30a2so742066a91.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 05:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701955243; x=1702560043; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DYFq85X/BIHTHq7kGtptVxvPwKJGLk6dGCvTwIzJ+dU=;
        b=PHt8ifZJg07yyU25bOIwFvFYb9mS+Y/0bEZYQDm1n72D7jJXcjHhY1lNck/dBmJpPZ
         U9r7PzROHocx/U0NgiJW+XjKnsgt1uGZUIbVXLHWVvp/qHRsb05H9uJXQvFcvASG57hK
         0oOu32s4kGs2phzBslpLZu/8HmtazSiQoHOm20wEEuXUzXlE+/4To1UonoRChexN71sv
         XH6zeDyQAc/R/GV9cOe0fN1hxTBT+yiTga682aMq989UEH3YmGmAmzk5UKX+yhaz8trB
         K1S8IndwrABvTRmKHetXYNPybrsB1V4Vv4fTNOBB/EKQhypBaG84LgjX1vC6XODfPKE7
         wcjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701955243; x=1702560043;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DYFq85X/BIHTHq7kGtptVxvPwKJGLk6dGCvTwIzJ+dU=;
        b=igwkIaZReJAdgAujMe86OE6UcU72aY2Sy179Q/weCcBOaKHtN18GaZ9jHJD0Aowy/5
         mD5Zm0Ow/KEAebLsNg8awkq5T899EP3vnemKBU4D2ExiTc4VcBBINADytX9kDdSaG1rM
         EODxGUv3TyWbORVDBe6l2h4xUVDfd6RQHHUw34hjozlb9nJkgCSQqw7AAzQC7TJUltN/
         p2f6b8o3IyZni13cNmWECF9zPua+HoebN8gEFXcjuY4pe+eoYm0+5YpSmIBkVz9mLFsP
         tas4R+ySxu/tYjZdOcF/bPPEbt9W6i2v/dn6i0eLIobEAaBqEl8vW5iZmeI8lHX0h270
         bDgw==
X-Gm-Message-State: AOJu0YzDK3amV/usziL39NVot/bzTAghYYlnJi9SQHZD/rRczwVSTrA4
	OAVOraik25i/vaDs4JG1XEmz
X-Google-Smtp-Source: AGHT+IGkgup8HVw36DeNUf8Hl9xmr9ZQZ/zGq74w+jN8tcKimhg+P7eKKuGTOsm5hdUE53L9XXKyEA==
X-Received: by 2002:a17:90a:8c0b:b0:286:f5f1:309a with SMTP id a11-20020a17090a8c0b00b00286f5f1309amr2090274pjo.81.1701955243349;
        Thu, 07 Dec 2023 05:20:43 -0800 (PST)
Received: from thinkpad ([117.248.6.133])
        by smtp.gmail.com with ESMTPSA id ju1-20020a170903428100b001cfc030da6bsm1359638plb.253.2023.12.07.05.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:20:42 -0800 (PST)
Date: Thu, 7 Dec 2023 18:50:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231207132032.GL2932@thinkpad>
References: <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
 <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
 <20231207101252.GJ2932@thinkpad>
 <ZXHDCNosx8PCUzao@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXHDCNosx8PCUzao@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_052046_231359_3005F243 
X-CRM114-Status: GOOD (  24.32  )
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

T24gVGh1LCBEZWMgMDcsIDIwMjMgYXQgMDI6MDU6MTJQTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFRodSwgRGVjIDA3LCAyMDIzIGF0IDAzOjQyOjUyUE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDA3LCAyMDIzIGF0IDEwOjUxOjA5
QU0gKzAxMDAsIEpvaGFuIEhvdm9sZCB3cm90ZToKPiA+ID4gT24gV2VkLCBEZWMgMDYsIDIwMjMg
YXQgMDY6NDA6MDlQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gPiAK
PiA+ID4gPiBPSy4gSG93IGFib3V0LCAicWNvbSxicm9rZW4tcmVmY2xrIj8gVGhpcyByZWZsZWN0
cyB0aGUgZmFjdCB0aGF0IHRoZSBkZWZhdWx0Cj4gPiA+ID4gcmVmY2xrIG9wZXJhdGlvbiBpcyBi
cm9rZW4gb24gdGhpcyBwbGF0Zm9ybSwgc28gdGhlIE9TIHNob3VsZCBiZSBwcmVwYXJlZCBmb3IK
PiA+ID4gPiBpdCAoYnkga2VlcGluZyBpdCBhbHdheXMgb24pLgo+ID4gPiAKPiA+ID4gU2hvdWxk
bid0IHRoYXQgYmUKPiA+ID4gCj4gPiA+IAlxY29tLGJyb2tlbi1jbGtyZXEKPiA+ID4gCj4gPiA+
IHNpbmNlIGl0cyB0aGUgQ0xLUkVRIyBzaWduYWwgdXNlZCB0byByZXF1ZXN0IFJFRkNMSyB0aGF0
IGlzIGJyb2tlbiwgbm90Cj4gPiA+IHRoZSBSRUZDTEsgaXRzZWxmPwo+ID4gPiAKPiA+IAo+ID4g
RGFybi4uLiBZb3UgYXJlIHJpZ2h0LiBJIGdvdCBjYXJyaWVkIGF3YXkgYnkgdGhlIGluaXRpYWwg
cHJvcGVydHkgbmFtZS4gVGhhbmtzCj4gPiBmb3Igc3BvdHRpbmchCj4gCj4gVGhpbmtpbmcgc29t
ZSBtb3JlIG9uIHRoaXMgYWZ0ZXIgaGl0dGluZyBzZW5kOiBJdCBtYXkgc3RpbGwgYmUgd3JvbmcK
PiB3aXRoIGEgJ2Jyb2tlbi1jbGtyZXEnIHByb3BlcnR5IGluIHRoZSBQSFkgaW5zdGVhZCBvZiBp
biB0aGUgY29udHJvbGxlcgo+IChvciBlbmRwb2ludCkuCj4gCj4gQ291bGQgdGhlcmUgbm90IGJl
IG90aGVyIHdheXMgdG8gaGFuZGxlIGEgYnJva2VuIGNsa3JlcSBzaWduYWwgc28gdGhhdAo+IHRo
aXMgcmVhbGx5IHNob3VsZCBiZSBhIGRlY2lzaW9uIG1hZGUgYnkgdGhlIE9TLCBmb3IgZXhhbXBs
ZSwgdG8gZGlzYWJsZQo+IEwxIHN1YnN0YXRlcyBhbmQgY2xvY2sgUE0/Cj4gCgpPbmUgaGFzIHRv
IHdlaWdoIHRoZSBwb3dlciBjb25zdW1wdGlvbiBiZXR3ZWVuIGtlZXBpbmcgcmVmY2xrIGFsd2F5
cyBvbiBhbmQKZGlzYWJsaW5nIEwxU1MuIENoYWl0YW55YSwgY2FuIHlvdSBtZWFzdXJlIHBvd2Vy
IGNvbnN1bXB0aW9uIGluIGJvdGggY2FzZXM/Cgo+IFNpbXBseSBsZWF2aW5nIHRoZSByZWZjbGsg
YWx3YXlzIG9uIGluIHRoZSBQSFkgc2VlbXMgbGlrZSBhIGJpdCBvZiBhCj4gaGFjayBhbmQgSSdt
IG5vdCBldmVuIHN1cmUgdGhhdCBjYW4gYmUgY29uc2lkZXJlZCBjb3JyZWN0Lgo+IAoKSSB3b3Vs
ZG4ndCBhZ3JlZSBpdCBpcyBhIGhhY2ssIGV2ZW4gdGhvdWdoIGl0IG1heSBzb3VuZCBsaWtlIG9u
ZS4gVGhlIG9wdGlvbiB0bwprZWVwIHJlZmNsayBhbHdheXMgb24gaW4gdGhlIFBIWSBpcyBwcmVj
aXNlbHkgdGhlcmUgZm9yIHVzZWNhc2UgbGlrZSB0aGlzLgoKLSBNYW5pCgo+IEhhdmluZyBhIHBy
b3BlcnR5IHRoYXQgbWFwcyBkaXJlY3RseSB0byB0aGF0IGJlaGF2aW91ciBoYXMgcmlnaHRseSBi
ZWVuCj4gcmVqZWN0ZWQsIGJ1dCBpdCBzZWVtcyB0aGF0IHNpbXBseSByZW5hbWluZyB0aGUgZmxh
ZyBidXQga2VlcGluZyBpdCBpbgo+IHRoZSBQSFkgbWF5IHN0aWxsIG5vdCBiZSB0aGUgcmlnaHQg
dGhpbmcgdG8gZG8gaGVyZS4KPiAKPiBKb2hhbgoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
