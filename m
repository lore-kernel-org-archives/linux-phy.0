Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A262DC3600B
	for <linux-phy@archiver.kernel.org>; Thu, 27 Mar 2025 17:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqoEpMgFbAgE7MuyOcLIOGKy5k2u23fuDjA86yPXRwI=; b=uOU5YzZ/F0anJ1
	67Qa/pAikySgYweG+EVTKoMiBFGXZ+JI8TOyUTIjfbDVQFIcKVjHFo3mNjg0nxlBkPVR2pxsd6sqK
	saADgmdBuX0PmHPJKq7WzVSSWqbRUk0yerg3soPjC7XWggLx9fOlHsH2J4/Gzso1poC6f2ITILBue
	J7E7AlI4uqopKnJ0pJVMSLwIJGeD9BgXB1Yqs3dLg/CkMQieIVPx1hgbFJyLW+o+pKMF+Mkc/pnxY
	qI2PIuO/sEwr6cf9zGOMx1DejCFw/ozEjD0Qc+6CpB9EHZqID0upCtOhHU0TNzr9s1lDUMsienMt4
	sgITIo8ocnJ3ZarG8Nbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txr3q-0000000BfFT-1Nhx;
	Thu, 27 Mar 2025 17:30:34 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txr2y-0000000Bf7A-1XfX
	for linux-phy@lists.infradead.org;
	Thu, 27 Mar 2025 17:29:41 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-226185948ffso29102505ad.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Mar 2025 10:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743096579; x=1743701379; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xUAnTAtDNuNnJIdSSQ+Rk9ZfVSwofE0KN7R4UOP1qhM=;
        b=UW2xt9XmO+Fz3m+ZrGOygOWaA0lZVO90zcfK1J5/Qj3rj+XzYpg7MaxGyIEG1KS6Ka
         oJ1dGlRlINA4vTyLcYO1qiOzRsxamRM/PPe13EBQBR+CrlkeOXQCnMdsCR5/sfZ4+nFD
         qgQfh2U0R3VYFI/JeshqU5z/gfITrpk/nKpJ7sScPj6xrs4bJO9KB5Jzy5SB2H9dpiWA
         Cehwi6F8Ves/c6QIQu9+dkxD21hBa+ICEEshhosDsc1NzsQNXe+Z1nByLLe2U9kHjnbg
         A3LfGyO525oUO/KsthM/yFxvq3X2COk9WnAVtcYvpo5OIhidYtF6pPZ9SMsqswNSdBQq
         usNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743096579; x=1743701379;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xUAnTAtDNuNnJIdSSQ+Rk9ZfVSwofE0KN7R4UOP1qhM=;
        b=QnHgtH6Ll1n/7mUnqmFpCmMXVSq+M0soU/Ycv/EiBfUyncQTftop/dDU3t6wQCbd0G
         Xkufqr3sGvoz89gS5SqpnAgKLCOdMOooMuy4yLhdhNJZztXYYniV1uhvTuRiiQo4GqhB
         +hQ7seNPmrohtxs2es23XR2kAtjoZZ0Mve8KyZR67Pmx++hBvC8mBnpADjw89HYJfRUJ
         CkFTbD1XIPW0Vr6FQOfQFBz2afV2PZwQ1GJVFdnAFpfzhYcbcFN/PCPgFxll0jT49WVE
         BtbPQ2G9cK4cctPzrrFfkBJzRY5kwPr8cTxZ4tGIUImO6YqQEl6Nz5pAJ0DXBAZjSBz8
         WCPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo+Lc5QESFhCw88JG0rEk063Eud3vG4jX3hx8zyLU5fqABQUcJxAJVcDH5fjtj8b3mgVSVEQWne6I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxiXr+UTXfJTBau4Zox+6IxvMXmf7gzdpzhMdQjtAsfeugmptz8
	8nXlA2gsjOLcNgPo39EK76QSOtnLiYAUor56vHQjPqqe3I+Y2IbjikQVuwG0LA==
X-Gm-Gg: ASbGncsa/CMupP/yYMopYQTGqXO0IhOAe4T1sKYy2Yhg1+9/r/uk1aVePLAZeBfS985
	PRUVI+5ujyvjbLQirzoddhrMIKvOp8lp6BInsDKYnXxCVrGZL60Rody+c8/hDV143s/shm1nWXR
	gwP/xUXYhSA6IpJoMl6/lqpbpm7++7vMysK2fU1D/dL6G8lURwBn+M0oRva5UmFNi/GJSdIjf2c
	bTOkWYcN2wEhM8AIOxeeI6bvBvWzEytHJNyujouDSv/9xpF4r+pDSijQhQrXGGX82rW7uvKbaVL
	oYlp+FZsrumigmO2a4AJw6a4DwIlcGL8SzznSHsfu0fpWOQdrFADcZY=
X-Google-Smtp-Source: AGHT+IGq9WA9Mg+aD9Pf6gxE2w7nofLRKq3e9u+4e1o+z4k8xCGL05Lgi/yGgHNUkZz6Z+X/JLWE9w==
X-Received: by 2002:a05:6a20:2589:b0:1fd:e9c8:cf3b with SMTP id adf61e73a8af0-1fea2f4c4e7mr10560727637.30.1743096579450;
        Thu, 27 Mar 2025 10:29:39 -0700 (PDT)
Received: from thinkpad ([120.60.71.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deeea2sm81237b3a.21.2025.03.27.10.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 10:29:39 -0700 (PDT)
Date: Thu, 27 Mar 2025 22:59:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-1-quic_varada@quicinc.com, 20250317100029.881286-2-quic_varada@quicinc.com, 
	Sricharan R <quic_srichara@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v7 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <vmka3ediym33gjwy6vztxn25j2gwfeeht3s3nbx3ozinuz2k7n@7nho6bfvsuo5>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
 <20250326-ipq5018-pcie-v7-5-e1828fef06c9@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250326-ipq5018-pcie-v7-5-e1828fef06c9@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_102940_414676_4BEBA5C8 
X-CRM114-Status: GOOD (  14.71  )
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

T24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgMTI6MTA6NTlQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2Fy
QHF1aWNpbmMuY29tPgo+IAo+IEFkZCBwaHkgYW5kIGNvbnRyb2xsZXIgbm9kZXMgZm9yIGEgMi1s
YW5lIEdlbjIgYW5kCj4gYSAxLWxhbmUgR2VuMiBQQ0llIGJ1cy4gSVBRNTAxOCBoYXMgOCBNU0kg
U1BJIGludGVycnVwdHMgYW5kCj4gb25lIGdsb2JhbCBpbnRlcnJ1cHQuCj4gCj4gTk9URTogdGhl
IFBDSWUgY29udHJvbGxlciBzdXBwb3J0cyBnZW4zLCB5ZXQgdGhlIHBoeSBpcyBsaW1pdGVkIHRv
IGdlbjIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2FyQHF1
aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNyaWNoYXJhbiBSIDxxdWljX3NyaWNoYXJhQHF1
aWNpbmMuY29tPgo+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292
IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR2Vv
cmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1vdXNzYWxlbUBvdXRsb29rLmNvbT4KPiAtLS0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaSB8IDI0NiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2lwcTUwMTguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiBp
bmRleCA4OTE0ZjJlZjBiYzQ3ZmRhMjQzYjE5MTc0Zjc3Y2U3M2ZjMTA3NTdkLi45ZjY5NWYwZDlj
NmI3ZjI5YzQ1NjQ5NzdjYWRkNmE3OGI1NWEwNDRmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vaXBxNTAxOC5kdHNpCj4gQEAgLTE0Nyw2ICsxNDcsNDAgQEAgdXNicGh5MDogcGh5QDViMDAw
IHsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiArCQlwY2llMV9waHk6
IHBoeUA3ZTAwMHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLGlwcTUwMTgtdW5pcGh5LXBjaWUt
cGh5IjsKPiArCQkJcmVnID0gPDB4MDAwN2UwMDAgMHg4MDA+Owo+ICsKPiArCQkJY2xvY2tzID0g
PCZnY2MgR0NDX1BDSUUxX1BJUEVfQ0xLPjsKPiArCj4gKwkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19Q
Q0lFMV9QSFlfQkNSPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTFQSFlfUEhZX0JDUj47Cj4gKwo+
ICsJCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwo+ICsJ
CQludW0tbGFuZXMgPSA8MT47Cj4gKwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07
Cj4gKwo+ICsJCXBjaWUwX3BoeTogcGh5QDg2MDAwewo+ICsJCQljb21wYXRpYmxlID0gInFjb20s
aXBxNTAxOC11bmlwaHktcGNpZS1waHkiOwo+ICsJCQlyZWcgPSA8MHgwMDA4NjAwMCAweDgwMD47
Cj4gKwo+ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRTBfUElQRV9DTEs+Owo+ICsKPiArCQkJ
cmVzZXRzID0gPCZnY2MgR0NDX1BDSUUwX1BIWV9CQ1I+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lF
MFBIWV9QSFlfQkNSPjsKPiArCj4gKwkJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCQkJI3BoeS1j
ZWxscyA9IDwwPjsKPiArCj4gKwkJCW51bS1sYW5lcyA9IDwyPjsKPiArCj4gKwkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gKwkJfTsKPiArCj4gIAkJdGxtbTogcGluY3RybEAxMDAwMDAwIHsKPiAg
CQkJY29tcGF0aWJsZSA9ICJxY29tLGlwcTUwMTgtdGxtbSI7Cj4gIAkJCXJlZyA9IDwweDAxMDAw
MDAwIDB4MzAwMDAwPjsKPiBAQCAtMTcwLDggKzIwNCw4IEBAIGdjYzogY2xvY2stY29udHJvbGxl
ckAxODAwMDAwIHsKPiAgCQkJcmVnID0gPDB4MDE4MDAwMDAgMHg4MDAwMD47Cj4gIAkJCWNsb2Nr
cyA9IDwmeG9fYm9hcmRfY2xrPiwKPiAgCQkJCSA8JnNsZWVwX2Nsaz4sCj4gLQkJCQkgPDA+LAo+
IC0JCQkJIDwwPiwKPiArCQkJCSA8JnBjaWUwX3BoeT4sCj4gKwkJCQkgPCZwY2llMV9waHk+LAo+
ICAJCQkJIDwwPiwKPiAgCQkJCSA8MD4sCj4gIAkJCQkgPDA+LAo+IEBAIC0zODcsNiArNDIxLDIx
NCBAQCBmcmFtZUBiMTI4MDAwIHsKPiAgCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJCX07
Cj4gIAkJfTsKPiArCj4gKwkJcGNpZTE6IHBjaWVAODAwMDAwMDAgewo+ICsJCQljb21wYXRpYmxl
ID0gInFjb20scGNpZS1pcHE1MDE4IjsKPiArCQkJcmVnID0gPDB4ODAwMDAwMDAgMHhmMWQ+LAo+
ICsJCQkgICAgICA8MHg4MDAwMGYyMCAweGE4PiwKPiArCQkJICAgICAgPDB4ODAwMDEwMDAgMHgx
MDAwPiwKPiArCQkJICAgICAgPDB4MDAwNzgwMDAgMHgzMDAwPiwKPiArCQkJICAgICAgPDB4ODAx
MDAwMDAgMHgxMDAwPiwKPiArCQkJICAgICAgPDB4MDAwN2IwMDAgMHgxMDAwPjsKPiArCQkJcmVn
LW5hbWVzID0gImRiaSIsCj4gKwkJCQkgICAgImVsYmkiLAo+ICsJCQkJICAgICJhdHUiLAo+ICsJ
CQkJICAgICJwYXJmIiwKPiArCQkJCSAgICAiY29uZmlnIiwKPiArCQkJCSAgICAibWhpIjsKPiAr
CQkJZGV2aWNlX3R5cGUgPSAicGNpIjsKPiArCQkJbGludXgscGNpLWRvbWFpbiA9IDwwPjsKPiAr
CQkJYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4gKwkJCW51bS1sYW5lcyA9IDwxPjsKPiArCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJCSNzaXplLWNlbGxzID0gPDI+Owo+ICsKPiArCQkJ
LyoKPiArCQkJICogSW4gSVBRNTAxOCwgdGhlIFBDSWUgY29udHJvbGxlciBzdXBwb3J0cyBnZW4z
LAoKbml0OiBubyBuZWVkIHRvIG1lbnRpb24gSVBRNTAxOC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
