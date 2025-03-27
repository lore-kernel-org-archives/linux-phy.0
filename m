Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363FCC3600C
	for <linux-phy@archiver.kernel.org>; Thu, 27 Mar 2025 17:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fot6GhRq5xRFEGdP/mPFNER195shZEoGSKlrsnDMRp4=; b=4o+TMg4WuVelcK
	/bRinKErbp8LiE9nRi5ywiSuKuCDQSyb2i1bimtybl50yQFytVZN2si1QaWgaADpn77F5Sz/snIiQ
	P1pCzZzsAvg3lyhA6gYYzbYN+q/mazjocGfvpxnWBuMUM7Ipc9qbmFOzoy2mdg4nNFJP/b1Xhs1t7
	eJPgHDXw0KZiXsRTidM79v7KSvFsmHUgETGVXpqV044ltc2H84Y7WPNJkabn4aOdUK+PR1HhikzoU
	hMDAzk64F+mJF+TO0dTWpdGF7XRqdk5itNGHAx/K64jCZqx3dJoAwmF487CCZPThEKBiebAitBOjz
	ZiSoEiqCgPmU29KQv98A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txr1l-0000000Betu-34DO;
	Thu, 27 Mar 2025 17:28:25 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txr1j-0000000BetU-0Z4v
	for linux-phy@lists.infradead.org;
	Thu, 27 Mar 2025 17:28:24 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2ff797f8f1bso1968745a91.3
        for <linux-phy@lists.infradead.org>; Thu, 27 Mar 2025 10:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743096502; x=1743701302; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QHz+SaPSWGp6wDaJlC8xVhuyDfBVETPMBB/j6NeLduE=;
        b=UKhFz6gLg+wKpUfOZ8/L0G9ib/mTZUxCpnwGcV5/7ttHY5KSfbMiqHrTbhKFOyBIXe
         5IYyhhvIunfL/kBuYbrpgafa6DBgqK3OuCw0FBSVv+7xru81OEZzzKvs7MokKY7NYuCn
         B5v9y4xsrMG9S9NQ9CUqHD8X+XPj0Q55DQLFg4Bm/AT7i6+eYxYt6HdJNAthxiirL3Jt
         fRHHVkzptSaaxXzzQEpPZRA1uJpVTTu+0wFReJ7V1TfvLi3qnAo+lp6AjAuO0wAk2Zj8
         CHPwLZa4+r/JMV16k+BYo8gjavRK0QQDRMVa/zDooC52aNDzWrlvBZE3ZxCTTsvzvQ84
         wIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743096502; x=1743701302;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QHz+SaPSWGp6wDaJlC8xVhuyDfBVETPMBB/j6NeLduE=;
        b=DWUYTkeweCYBF2PHb4N5JRfz9TSSe7nLtSYG+zpN6i0eUxBWrjXMxa1czKaznr70NG
         RBco4oATcPhz4hgQG8lzk3WQOqsMkqRllHvd/wYZSsT+hyeBZOghX5Wej8NYQwpfNvUi
         jxAktCqteGKxjrUS7SfP74tdlvfHten19jkHgjrvrQn/LQpnhoq2rU6VejTU9oM2eri5
         ZBdusvHBkCFEf+hUovieOQ3oKcPqauif4wxcNkXFcTOBwZAwzpGmGfaBTRd8oxqv5ME2
         3nhAiQ/CAkNCddbZ9fy10LSG9jncXkSkmlXtOrLWA95LCE6jQ4H1pBGREvwx5M2ULCxT
         398Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4orUSjc5YOljOdxxp6hgiiLcL/IkckHnYwK/gXicFQjTU/UgHyADmHhFq1kEQZW+Rh9g6tSekukc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEWkK1lE4yExNmnppoA/R2BVOqIkkdFPjbEul7q4iYcJnsbM+/
	dCz1XIMRQ0+d/3ZFDlR2IcefrkdKk6JBSXoN3B6Bp/Wy6TIWHXUMZb+JiK0+Yw==
X-Gm-Gg: ASbGncuXwmgos2OnPw82Fl9GGrNCLpLXMatqhIPW51jPn9JkkDe/c7blZPOrP3yS+KL
	TI0xXqpWDoFux1ejbgty1U+OZDVHceUN/0Gz7vvH1WLT1PIIWGleLrss3iOcmMNW1gdFNn5ntRo
	65t6qnJLAPYt/nTj+whOpwnPDkxXUwFIOzInj7FkhC4AZoGNL3K7/5Gp1WvsQCc9yjvqGJ/mPyu
	KlcC4hTCtg22KXJc6rYLTTYEpXpY8iD5d85axRVVFsEN9meQlgfIkbf9LV5vkdpG+SYFRqr2WHN
	CbLtQlcNB6PNfVypRMbuLgPc0tekJ/FhkyJuFmPy6VBHiNV+aE94Cic=
X-Google-Smtp-Source: AGHT+IGqtCOWQs3SNQd1ccGYnNeLv3HOIj7c/1mVjG4p0xNEN7WwDgh3wSqvsol2pDFN1HxLXEZyGA==
X-Received: by 2002:a17:90b:520a:b0:2fe:b470:dde4 with SMTP id 98e67ed59e1d1-303a7d6629emr8930210a91.12.1743096501527;
        Thu, 27 Mar 2025 10:28:21 -0700 (PDT)
Received: from thinkpad ([120.60.71.118])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30516d3e132sm172524a91.4.2025.03.27.10.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 10:28:21 -0700 (PDT)
Date: Thu, 27 Mar 2025 22:58:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <vgohpbmbhghooeb6byur2wx535sa7tdmtsu5orgzr26hnaw2yg@aibeo3gqiztn>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
 <ycv74l5nop5mptj6uobuacffnwho2gvznh4dhxagupt5gh6x4k@vgik7ouydy6f>
 <988510be-ee5f-49c9-a5a4-074c51245f95@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <988510be-ee5f-49c9-a5a4-074c51245f95@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_102823_177188_D7946115 
X-CRM114-Status: GOOD (  26.04  )
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

T24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgMDE6MTE6MzVQTSArMDUzMCwgUHJhdmVlbmt1bWFyIEkg
d3JvdGU6Cj4gCj4gCj4gT24gMy8yNS8yMDI1IDEwOjIzIFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gd3JvdGU6Cj4gPiBPbiBNb24sIE1hciAyNCwgMjAyNSBhdCAwNDo0ODozNFBNICswNTMwLCBQ
cmF2ZWVua3VtYXIgSSB3cm90ZToKPiA+ID4gCj4gPiA+IE9uIDMvMjQvMjAyNSAxOjI2IFBNLCBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCBNYXIgMjEsIDIwMjUg
YXQgMDQ6MTQ6NDNQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxlbSB2aWEgQjQgUmVsYXkgd3JvdGU6
Cj4gPiA+ID4gPiBGcm9tOiBOaXRoZWVzaCBTZWthcjxxdWljX25zZWthckBxdWljaW5jLmNvbT4K
PiA+ID4gPiA+IAo+ID4gPiA+ID4gQWRkIHBoeSBhbmQgY29udHJvbGxlciBub2RlcyBmb3IgYSAy
LWxhbmUgR2VuMiBhbmQKPiA+ID4gPiBDb250cm9sbGVyIGlzIEdlbiAzIGNhcGFibGUgYnV0IHlv
dSBhcmUgbGltaXRpbmcgaXQgdG8gR2VuIDIuCj4gPiA+ID4gCj4gPiA+ID4gPiBhIDEtbGFuZSBH
ZW4yIFBDSWUgYnVzLiBJUFE1MDE4IGhhcyA4IE1TSSBTUEkgaW50ZXJydXB0cyBhbmQKPiA+ID4g
PiA+IG9uZSBnbG9iYWwgaW50ZXJydXB0Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBOaXRoZWVzaCBTZWthcjxxdWljX25zZWthckBxdWljaW5jLmNvbT4KPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFNyaWNoYXJhbiBSPHF1aWNfc3JpY2hhcmFAcXVpY2luYy5jb20+Cj4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZW9yZ2UgTW91c3NhbGVtPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0
bG9vay5jb20+Cj4gPiA+ID4gT25lIGNvbW1lbnQgYmVsb3cuIFdpdGggdGhhdCBhZGRyZXNzZWQs
Cj4gPiA+ID4gCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbTxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+ID4gPiAKPiA+ID4gPiA+IC0tLQo+ID4g
PiA+ID4gICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaSB8IDIzNCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ID4gPiAgICAxIGZpbGUgY2hhbmdl
ZCwgMjMyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ID4gPiA+ID4gaW5kZXggODkxNGYy
ZWYwYmM0Li5kMDgwMzRiNTdlODAgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vaXBxNTAxOC5kdHNpCj4gPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vaXBxNTAxOC5kdHNpCj4gPiA+ID4gPiBAQCAtMTQ3LDYgKzE0Nyw0MCBAQCB1c2Jw
aHkwOiBwaHlANWIwMDAgewo+ID4gPiA+ID4gICAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+
ID4gPiA+ICAgIAkJfTsKPiA+ID4gPiA+ICsJCXBjaWUxX3BoeTogcGh5QDdlMDAwewo+ID4gPiA+
ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE1MDE4LXVuaXBoeS1wY2llLXBoeSI7Cj4gPiA+
ID4gPiArCQkJcmVnID0gPDB4MDAwN2UwMDAgMHg4MDA+Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
KwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFMV9QSVBFX0NMSz47Cj4gPiA+ID4gPiArCj4gPiA+
ID4gPiArCQkJcmVzZXRzID0gPCZnY2MgR0NDX1BDSUUxX1BIWV9CQ1I+LAo+ID4gPiA+ID4gKwkJ
CQkgPCZnY2MgR0NDX1BDSUUxUEhZX1BIWV9CQ1I+Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwkJ
CSNjbG9jay1jZWxscyA9IDwwPjsKPiA+ID4gPiA+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gKwkJCW51bS1sYW5lcyA9IDwxPjsKPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiA+ID4gKwkJfTsKPiA+ID4gPiA+ICsK
PiA+ID4gPiA+ICsJCXBjaWUwX3BoeTogcGh5QDg2MDAwewo+ID4gPiA+ID4gKwkJCWNvbXBhdGli
bGUgPSAicWNvbSxpcHE1MDE4LXVuaXBoeS1wY2llLXBoeSI7Cj4gPiA+ID4gPiArCQkJcmVnID0g
PDB4MDAwODYwMDAgMHg4MDA+Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwkJCWNsb2NrcyA9IDwm
Z2NjIEdDQ19QQ0lFMF9QSVBFX0NMSz47Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArCQkJcmVzZXRz
ID0gPCZnY2MgR0NDX1BDSUUwX1BIWV9CQ1I+LAo+ID4gPiA+ID4gKwkJCQkgPCZnY2MgR0NDX1BD
SUUwUEhZX1BIWV9CQ1I+Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwkJCSNjbG9jay1jZWxscyA9
IDwwPjsKPiA+ID4gPiA+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ID4gPiA+ID4gKwo+ID4gPiA+
ID4gKwkJCW51bS1sYW5lcyA9IDwyPjsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4gPiA+ID4gKwkJfTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICAgIAkJ
dGxtbTogcGluY3RybEAxMDAwMDAwIHsKPiA+ID4gPiA+ICAgIAkJCWNvbXBhdGlibGUgPSAicWNv
bSxpcHE1MDE4LXRsbW0iOwo+ID4gPiA+ID4gICAgCQkJcmVnID0gPDB4MDEwMDAwMDAgMHgzMDAw
MDA+Owo+ID4gPiA+ID4gQEAgLTE3MCw4ICsyMDQsOCBAQCBnY2M6IGNsb2NrLWNvbnRyb2xsZXJA
MTgwMDAwMCB7Cj4gPiA+ID4gPiAgICAJCQlyZWcgPSA8MHgwMTgwMDAwMCAweDgwMDAwPjsKPiA+
ID4gPiA+ICAgIAkJCWNsb2NrcyA9IDwmeG9fYm9hcmRfY2xrPiwKPiA+ID4gPiA+ICAgIAkJCQkg
PCZzbGVlcF9jbGs+LAo+ID4gPiA+ID4gLQkJCQkgPDA+LAo+ID4gPiA+ID4gLQkJCQkgPDA+LAo+
ID4gPiA+ID4gKwkJCQkgPCZwY2llMF9waHk+LAo+ID4gPiA+ID4gKwkJCQkgPCZwY2llMV9waHk+
LAo+ID4gPiA+ID4gICAgCQkJCSA8MD4sCj4gPiA+ID4gPiAgICAJCQkJIDwwPiwKPiA+ID4gPiA+
ICAgIAkJCQkgPDA+LAo+ID4gPiA+ID4gQEAgLTM4Nyw2ICs0MjEsMjAyIEBAIGZyYW1lQGIxMjgw
MDAgewo+ID4gPiA+ID4gICAgCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4gPiAgICAJ
CQl9Owo+ID4gPiA+ID4gICAgCQl9Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwkJcGNpZTE6IHBj
aWVAODAwMDAwMDAgewo+ID4gPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTUw
MTgiOwo+ID4gPiA+ID4gKwkJCXJlZyA9IDwweDgwMDAwMDAwIDB4ZjFkPiwKPiA+ID4gPiA+ICsJ
CQkgICAgICA8MHg4MDAwMGYyMCAweGE4PiwKPiA+ID4gPiA+ICsJCQkgICAgICA8MHg4MDAwMTAw
MCAweDEwMDA+LAo+ID4gPiA+ID4gKwkJCSAgICAgIDwweDAwMDc4MDAwIDB4MzAwMD4sCj4gPiA+
ID4gPiArCQkJICAgICAgPDB4ODAxMDAwMDAgMHgxMDAwPiwKPiA+ID4gPiA+ICsJCQkgICAgICA8
MHgwMDA3YjAwMCAweDEwMDA+Owo+ID4gPiA+ID4gKwkJCXJlZy1uYW1lcyA9ICJkYmkiLAo+ID4g
PiA+ID4gKwkJCQkgICAgImVsYmkiLAo+ID4gPiA+ID4gKwkJCQkgICAgImF0dSIsCj4gPiA+ID4g
PiArCQkJCSAgICAicGFyZiIsCj4gPiA+ID4gPiArCQkJCSAgICAiY29uZmlnIiwKPiA+ID4gPiA+
ICsJCQkJICAgICJtaGkiOwo+ID4gPiA+ID4gKwkJCWRldmljZV90eXBlID0gInBjaSI7Cj4gPiA+
ID4gPiArCQkJbGludXgscGNpLWRvbWFpbiA9IDwwPjsKPiA+ID4gPiA+ICsJCQlidXMtcmFuZ2Ug
PSA8MHgwMCAweGZmPjsKPiA+ID4gPiA+ICsJCQludW0tbGFuZXMgPSA8MT47Cj4gPiA+ID4gPiAr
CQkJbWF4LWxpbmstc3BlZWQgPSA8Mj47Cj4gPiA+ID4gVGhpcyBzdGlsbCBuZWVkcyBzb21lIGp1
c3RpZmljYXRpb24uIElmIFFjb20gZm9sa3MgZGlkbid0IHJlcGx5LCBhdGxlYXN0IG1vdmUKPiA+
ID4gPiB0aGlzIHRvIGJvYXJkIGR0cyB3aXRoIGEgY29tbWVudCBzYXlpbmcgdGhhdCB0aGUgbGlu
ayBpcyBub3QgY29taW5nIHVwIHdpdGgKPiA+ID4gPiBHZW4zLgo+ID4gPiA+IAo+ID4gPiA+IC0g
TWFuaQo+ID4gPiBUaGUgSVBRNTAxOCBQQ0llIGNvbnRyb2xsZXIgY2FuIHN1cHBvcnQgR2VuMywg
YnV0IHRoZSBQQ0llIHBoeSBpcyBsaW1pdGVkCj4gPiA+IEdlbjIgYW5kIGRvZXMgbm90IHN1cHBv
cnRlZCBHZW4zLgo+ID4gSG1tLCBzbyBpZiBhIEdlbiAzIGNhcGFibGUgZGV2aWNlIGlzIGNvbm5l
Y3RlZCwgdGhlIGxpbmsgd2lsbCBub3Qgd29yayBhdCBHZW4gMj8KPiA+IEl0IHNlZW1zIHNvIGZy
b20gdGhlIGVycm9yIHRoYXQgR2VvcmdlIHNoYXJlZCBwcmV2aW91c2x5Lgo+IE5vLCB0aGF0IGlz
IG5vdCB0aGUgY2FzZS4gVGhlIGxpbmsgd2lsbCB3b3JrIHdpdGggYSBHZW4zIGNhcGFibGUgZGV2
aWNlIGF0Cj4gR2VuMiBzcGVlZC4gVGhlIGZhaWx1cmUgbG9nIHNoYXJlZCBieSBHZW9yZ2UgaW5k
aWNhdGVzIGEgUEhZIGZhaWx1cmUsIHdoaWNoCj4gaXMgZHVlIHRvIElQUTUwMTggUEhZJ3MgaGFy
ZHdhcmUgbGltaXRhdGlvbi4KCkl0IGRvZXNuJ3QgbWF0dGVyLiBJZiBhIEdlbiAzIGRldmljZSBp
cyBub3QgZ29pbmcgdG8gd29yayB3aXRoIHRoZSBjb250cm9sbGVyICsKcGh5IGNvbWJvLCB0aGVu
IGl0IGlzIGEgaG9zdCBoYXJkd2FyZSBsaW1pdGF0aW9uLiBCdXQgSSdtIE9LIHdpdGggYWRkaW5n
IGEKY29tbWVudCBhbmQgbGltaXRpbmcgdGhlIGNvbnRyb2xsZXIgbGluayBzcGVlZC4KCi0gTWFu
aQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
