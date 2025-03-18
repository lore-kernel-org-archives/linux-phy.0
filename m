Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11F97C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YJWVyasyTqD7BrIM1vbvgJBmccaZj62UNgLqYZcpqY=; b=zabGoNCWHAGIXl
	KnEstTl2ylj3jV/BFeNAYx00w/RaOYaOZYLh+2Y0HxiYtoxTsuKUH+u2tKRK246fqEsM5lNytGVba
	LHq70kvocq9Hax1zjNk4sB1af8n++02M7ADLXxhqe0sfG5BCIWj60n3NvDxj7E7DkSUpk7ozaY3yl
	hhqqfdlA3aobX/U+iruVhO3r6D+ULiReGPYPZb7X5O/rDKvksmEWTI5p0t2ORZHCI18igA+ONdOGj
	Y9fdhU6DMaz/n/eTqEIXLjbrQltLAeANAn3ZaRZ9ejf1hla+VQyvxGFn4894KVR0fOWP0NUeso5Cl
	Voz/voweohLE0zG8lvwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPh3-00000004jwQ-3Ohn;
	Tue, 18 Mar 2025 05:40:49 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPgz-00000004jvU-0rvp
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:40:46 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-223594b3c6dso106970845ad.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276444; x=1742881244; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d61VNKEGG4SYzJHDC8a9AH+5UzzX6XxwSbiiNO09NtQ=;
        b=lW+78sBnwPW0xaE5FAZkkhknDgQKZbF+OlLK9p0+FLYpAcz55pu36H6p06sW050BS1
         1CO7LFOlbmOIAU792FEhG3K8J1fHBTBxfOJHw/C2kNm8Y++5qJpkwhmaCIw0v78wOFtO
         yEVl6lsrIb24+8CMaB3COBY6XhDMLdGskUWppoPlr1ejt40SYktFrabk5ftXln5h3Aq/
         DXKlRz45Lgft+HgDi+y57uuhrpsJ4B7rNCBaRXsXVYKE+N2facZg2S7d0qzsjIhlqY6l
         o0SngcILR66e6iNfA+/nWoA99kZG8aXCxMHLBqbrx3y5PLwGnKLxZ36LxMUUm2278V7h
         Pz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276444; x=1742881244;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d61VNKEGG4SYzJHDC8a9AH+5UzzX6XxwSbiiNO09NtQ=;
        b=CzoatxCvUI0BWaDJRnNtOoMeHvNhnTJC9hhUqNr9rlPThr/10A4bm8X/YGP0t153Ol
         yQdEli+FVIf0WQXt+KsBwy6Fh113oWSuguMV7ZwAjP1xq5lif97jGB231g6m1zH1NP7r
         CKc9wQajkz6cTHZiOhCbNpbhVxnXWIyJ12yABF3uiFM8hbow/9yFCPsoSzvJQOt/4U90
         F/ds+tdQ14LOC8gO5acl3zBINXcLtqPpLemaUm/3fOX73g2hNJ0dbDrgfcePwYX3uEam
         PYMXa0p6kTD2s0+XXKzUzXTC2Z9mru0dOoRLmIC8IvIc5nZc02Oz+Ic9yTsL8i7hOtlR
         I0sw==
X-Forwarded-Encrypted: i=1; AJvYcCXS66v+kuBgkthXpe4CocE3MUNWAHNqWyNLI8x/bPs8VW8Hrk5P1QxnyRTQ0xwqqoyhkHJP4PlwKPg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGHAtKtu3p4XUC7Ti+4FFP2OEXLHfq5LcmI6G4I25rJxVAckYS
	D4e7fCRkSyNqMgOXnR3nMO9JtjR7bFe6sLKVcwWFywmGqS3VNiQn3Bp3hDRXmg==
X-Gm-Gg: ASbGncvLqssDgN4upsqf3z1MwJfWnOarm6MU10pKEMooR0a1MDwiRAU/0ZCSaHPLgjy
	zjrjqcJsVJItkRzcsjKJ6pO+FK8ctp4Qzx01xDHPqoDdgNt6bZqIKvH6NA1Q3Gb7cbwdFK4rBDw
	UJK5hTuAGv/T3Bw5D7aECpSLNL0x4EI5rQ0fQa2KD+yXpXSGS11QZq5N8B83011rTgsIeCGjYJW
	KRcX/MXenuum72nxstvtvyEvnkpn92UNC4RRrVbuaW0SWujoMKGFLtzqAAztNZ5ZWeb4Oc72jdo
	N//Ktu+prAu6HpslEPZfuh9vhfg5Ywc9Wqpz23xiON27JOcvwmxihSTu
X-Google-Smtp-Source: AGHT+IGev7ELRVZf4flc+rKyHHXoq4f9Y0nLxBuMxE6xcZ/cQ+wlQxQHB4W0kvEiOt8Denm0JmmFgg==
X-Received: by 2002:a05:6a20:244a:b0:1f3:2e85:c052 with SMTP id adf61e73a8af0-1f5c1327783mr23903526637.35.1742276444249;
        Mon, 17 Mar 2025 22:40:44 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af56ea7daddsm8224643a12.54.2025.03.17.22.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:40:43 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:10:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 5/8] arm64: dts: qcom: qcs8300: enable pcie0
Message-ID: <20250318054034.j5stptttkoiutbk5@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-6-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-6-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_224045_254485_3EEC4C57 
X-CRM114-Status: GOOD (  14.39  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MzE6MDBQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGNvbmZpZ3VyYXRpb25zIGluIGRldmljZXRyZWUgZm9yIFBDSWUwLCBpbmNsdWRp
bmcgcmVnaXN0ZXJzLCBjbG9ja3MsCj4gaW50ZXJydXB0cyBhbmQgcGh5IHNldHRpbmcgc2VxdWVu
Y2UuCj4gCj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1
YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhhbkBx
dWljaW5jLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vcWNzODMwMC5kdHNpIHwgMTY4ICsrKysrKysrKysrKysrKysrKysrKysrKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAuZHRzaQo+IGluZGV4IDRhMDU3ZjdjMGQ5Zi4u
NWQwNTY0MGM1ZTIxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4
MzAwLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC5kdHNpCj4g
QEAgLTYwMSw3ICs2MDEsNyBAQCBnY2M6IGNsb2NrLWNvbnRyb2xsZXJAMTAwMDAwIHsKPiAgCQkJ
I3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKPiAgCQkJY2xvY2tzID0gPCZycG1oY2MgUlBNSF9D
WE9fQ0xLPiwKPiAgCQkJCSA8JnNsZWVwX2Nsaz4sCj4gLQkJCQkgPDA+LAo+ICsJCQkJIDwmcGNp
ZTBfcGh5PiwKPiAgCQkJCSA8MD4sCj4gIAkJCQkgPDA+LAo+ICAJCQkJIDwwPiwKPiBAQCAtNzEx
LDYgKzcxMSwxNzIgQEAgbW1zc19ub2M6IGludGVyY29ubmVjdEAxN2EwMDAwIHsKPiAgCQkJcWNv
bSxiY20tdm90ZXJzID0gPCZhcHBzX2JjbV92b3Rlcj47Cj4gIAkJfTsKPiAgCj4gKwkJcGNpZTA6
IHBjaUAxYzAwMDAwIHsKPiArCQkJZGV2aWNlX3R5cGUgPSAicGNpIjsKPiArCQkJY29tcGF0aWJs
ZSA9ICJxY29tLHBjaWUtcWNzODMwMCIsICJxY29tLHBjaWUtc2E4Nzc1cCI7Cj4gKwkJCXJlZyA9
IDwweDAgMHgwMWMwMDAwMCAweDAgMHgzMDAwPiwKPiArCQkJICAgICAgPDB4MCAweDQwMDAwMDAw
IDB4MCAweGYyMD4sCj4gKwkJCSAgICAgIDwweDAgMHg0MDAwMGYyMCAweDAgMHhhOD4sCj4gKwkJ
CSAgICAgIDwweDAgMHg0MDAwMTAwMCAweDAgMHg0MDAwPiwKPiArCQkJICAgICAgPDB4MCAweDQw
MTAwMDAwIDB4MCAweDEwMDAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgwMWMwMzAwMCAweDAgMHgx
MDAwPjsKPiArCQkJcmVnLW5hbWVzID0gInBhcmYiLAo+ICsJCQkJICAgICJkYmkiLAo+ICsJCQkJ
ICAgICJlbGJpIiwKPiArCQkJCSAgICAiYXR1IiwKPiArCQkJCSAgICAiY29uZmlnIiwKPiArCQkJ
CSAgICAibWhpIjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKwkJCSNzaXplLWNlbGxz
ID0gPDI+Owo+ICsJCQlyYW5nZXMgPSA8MHgwMTAwMDAwMCAweDAgMHgwMDAwMDAwMCAweDAgMHg0
MDIwMDAwMCAweDAgMHgxMDAwMDA+LAo+ICsJCQkJIDwweDAyMDAwMDAwIDB4MCAweDQwMzAwMDAw
IDB4MCAweDQwMzAwMDAwIDB4MCAweDFmZDAwMDAwPjsKPiArCQkJYnVzLXJhbmdlID0gPDB4MDAg
MHhmZj47Cj4gKwo+ICsJCQlkbWEtY29oZXJlbnQ7Cj4gKwo+ICsJCQlsaW51eCxwY2ktZG9tYWlu
ID0gPDA+Owo+ICsJCQludW0tbGFuZXMgPSA8Mj47Cj4gKwo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMzA3IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAzMDgg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDMwOSBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMzEyIElSUV9UWVBFX0xFVkVMX0hJR0g+
LAo+ICsJCQkJICAgICA8R0lDX1NQSSAzMTMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkg
ICAgIDxHSUNfU1BJIDMxNCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19T
UEkgMzc0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAzNzUgSVJR
X1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDMwNiBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKPiArCQkJaW50ZXJydXB0LW5hbWVzID0gIm1zaTAiLAo+ICsJCQkJCSAgIm1zaTEi
LAo+ICsJCQkJCSAgIm1zaTIiLAo+ICsJCQkJCSAgIm1zaTMiLAo+ICsJCQkJCSAgIm1zaTQiLAo+
ICsJCQkJCSAgIm1zaTUiLAo+ICsJCQkJCSAgIm1zaTYiLAo+ICsJCQkJCSAgIm1zaTciLAo+ICsJ
CQkJCSAgImdsb2JhbCI7Cj4gKwo+ICsJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+Owo+ICsJCQlp
bnRlcnJ1cHQtbWFwLW1hc2sgPSA8MCAwIDAgMHg3PjsKPiArCQkJaW50ZXJydXB0LW1hcCA9IDww
IDAgMCAxICZpbnRjIEdJQ19TUEkgNDM0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTww
IDAgMCAyICZpbnRjIEdJQ19TUEkgNDM1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTww
IDAgMCAzICZpbnRjIEdJQ19TUEkgNDM4IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTww
IDAgMCA0ICZpbnRjIEdJQ19TUEkgNDM5IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsKPiArCQkJ
Y2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMF9BVVhfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJ
RV8wX0NGR19BSEJfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRV8wX01TVFJfQVhJX0NMSz4s
Cj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9TTFZfQVhJX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0ND
X1BDSUVfMF9TTFZfUTJBX0FYSV9DTEs+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJhdXgiLAo+ICsJ
CQkJICAgICAgImNmZyIsCj4gKwkJCQkgICAgICAiYnVzX21hc3RlciIsCj4gKwkJCQkgICAgICAi
YnVzX3NsYXZlIiwKPiArCQkJCSAgICAgICJzbGF2ZV9xMmEiOwo+ICsKPiArCQkJYXNzaWduZWQt
Y2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMF9BVVhfQ0xLPjsKPiArCQkJYXNzaWduZWQtY2xvY2st
cmF0ZXMgPSA8MTkyMDAwMDA+Owo+ICsKPiArCQkJaW50ZXJjb25uZWN0cyA9IDwmcGNpZV9hbm9j
IE1BU1RFUl9QQ0lFXzAgUUNPTV9JQ0NfVEFHX0FMV0FZUwo+ICsJCQkJCSAmbWNfdmlydCBTTEFW
RV9FQkkxIFFDT01fSUNDX1RBR19BTFdBWVM+LAo+ICsJCQkJCTwmZ2VtX25vYyBNQVNURVJfQVBQ
U1NfUFJPQyBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFkKPiArCQkJCQkgJmNvbmZpZ19ub2MgU0xB
VkVfUENJRV8wIFFDT01fSUNDX1RBR19BQ1RJVkVfT05MWT47Cj4gKwkJCWludGVyY29ubmVjdC1u
YW1lcyA9ICJwY2llLW1lbSIsCj4gKwkJCQkJICAgICAiY3B1LXBjaWUiOwo+ICsKPiArCQkJaW9t
bXUtbWFwID0gPDB4MCAmcGNpZV9zbW11IDB4MDAwMCAweDE+LAo+ICsJCQkJICAgIDwweDEwMCAm
cGNpZV9zbW11IDB4MDAwMSAweDE+Owo+ICsKPiArCQkJcmVzZXRzID0gPCZnY2MgR0NDX1BDSUVf
MF9CQ1I+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFXzBfTElOS19ET1dOX0JDUj47Cj4gKwkJCXJl
c2V0LW5hbWVzID0gInBjaSIsCj4gKwkJCQkgICAgICAibGlua19kb3duIjsKPiArCj4gKwkJCXBv
d2VyLWRvbWFpbnMgPSA8JmdjYyBHQ0NfUENJRV8wX0dEU0M+Owo+ICsKPiArCQkJcGh5cyA9IDwm
cGNpZTBfcGh5PjsKPiArCQkJcGh5LW5hbWVzID0gInBjaWVwaHkiOwo+ICsKPiArCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiArCj4gKwkJCXBjaWUzX29wcF90YWJsZTogb3BwLXRhYmxlIHsKPiAr
CQkJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gKwo+ICsJCQkJLyogR0VO
IDEgeDEgKi8KPiArCQkJCW9wcC0yNTAwMDAwIHsKPiArCQkJCQlvcHAtaHogPSAvYml0cy8gNjQg
PDI1MDAwMDA+Owo+ICsJCQkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfc3ZzX2wxPjsK
PiArCQkJCQlvcHAtcGVhay1rQnBzID0gPDI1MDAwMCAxPjsKPiArCQkJCX07Cj4gKwo+ICsJCQkJ
LyogR0VOIDEgeDIgYW5kIEdFTiAyIHgxICovCj4gKwkJCQlvcHAtNTAwMDAwMCB7Cj4gKwkJCQkJ
b3BwLWh6ID0gL2JpdHMvIDY0IDw1MDAwMDAwPjsKPiArCQkJCQlyZXF1aXJlZC1vcHBzID0gPCZy
cG1ocGRfb3BwX3N2c19sMT47Cj4gKwkJCQkJb3BwLXBlYWsta0JwcyA9IDw1MDAwMDAgMT47Cj4g
KwkJCQl9Owo+ICsKPiArCQkJCS8qIEdFTiAyIHgyICovCj4gKwkJCQlvcHAtMTAwMDAwMDAgewo+
ICsJCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTAwMDAwMDA+Owo+ICsJCQkJCXJlcXVpcmVkLW9w
cHMgPSA8JnJwbWhwZF9vcHBfc3ZzX2wxPjsKPiArCQkJCQlvcHAtcGVhay1rQnBzID0gPDEwMDAw
MDAgMT47Cj4gKwkJCQl9Owo+ICsKPiArCQkJCS8qIEdFTiAzIHgxICovCj4gKwkJCQlvcHAtODAw
MDAwMCB7Cj4gKwkJCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4MDAwMDAwPjsKPiArCQkJCQlyZXF1
aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX3N2c19sMT47Cj4gKwkJCQkJb3BwLXBlYWsta0JwcyA9
IDw5ODQ1MDAgMT47Cj4gKwkJCQl9Owo+ICsKPiArCQkJCS8qIEdFTiAzIHgyIGFuZCBHRU4gNCB4
MSAqLwo+ICsJCQkJb3BwLTE2MDAwMDAwIHsKPiArCQkJCQlvcHAtaHogPSAvYml0cy8gNjQgPDE2
MDAwMDAwPjsKPiArCQkJCQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4gKwkJ
CQkJb3BwLXBlYWsta0JwcyA9IDwxOTY5MDAwIDE+Owo+ICsJCQkJfTsKPiArCj4gKwkJCQkvKiBH
RU4gNCB4MiAqLwo+ICsJCQkJb3BwLTMyMDAwMDAwIHsKPiArCQkJCQlvcHAtaHogPSAvYml0cy8g
NjQgPDMyMDAwMDAwPjsKPiArCQkJCQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47
Cj4gKwkJCQkJb3BwLXBlYWsta0JwcyA9IDwzOTM4MDAwIDE+Owo+ICsJCQkJfTsKPiArCQkJfTsK
PiArCQl9Owo+ICsKPiArCQlwY2llMF9waHk6IHBoeUAxYzA0MDAwIHsKPiArCQkJY29tcGF0aWJs
ZSA9ICJxY29tLHFjczgzMDAtcW1wLWdlbjR4Mi1wY2llLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAg
MHgwMWMwNDAwMCAweDAgMHgyMDAwPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lF
XzBfQ0ZHX0FIQl9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFX0NMS1JFRl9FTj4sCj4gKwkJ
CQkgPCZnY2MgR0NDX1BDSUVfMF9QSFlfUkNITkdfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJ
RV8wX1BJUEVfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRV8wX1BJUEVESVYyX0NMSz4sCj4g
KwkJCQkgPCZnY2MgR0NDX1BDSUVfMF9QSFlfQVVYX0NMSz47Cj4gKwkJCWNsb2NrLW5hbWVzID0g
ImNmZ19haGIiLAo+ICsJCQkJICAgICAgInJlZiIsCj4gKwkJCQkgICAgICAicmNobmciLAo+ICsJ
CQkJICAgICAgInBpcGUiLAo+ICsJCQkJICAgICAgInBpcGVkaXYyIiwKPiArCQkJCSAgICAgICJw
aHlfYXV4IjsKPiArCj4gKwkJCXJlc2V0cyA9IDwmZ2NjIEdDQ19QQ0lFXzBfUEhZX0JDUj47Cj4g
KwkJCXJlc2V0LW5hbWVzID0gInBoeSI7Cj4gKwo+ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8Jmdj
YyBHQ0NfUENJRV8wX1BIWV9SQ0hOR19DTEs+Owo+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9
IDwxMDAwMDAwMDA+Owo+ICsKPiArCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJCQljbG9jay1v
dXRwdXQtbmFtZXMgPSAicGNpZV8wX3BpcGVfY2xrIjsKPiArCj4gKwkJCSNwaHktY2VsbHMgPSA8
MD47Cj4gKwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07Cj4gKwo+ICAJCXVmc19t
ZW1faGM6IHVmc0AxZDg0MDAwIHsKPiAgCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczgzMDAtdWZz
aGMiLCAicWNvbSx1ZnNoYyIsICJqZWRlYyx1ZnMtMi4wIjsKPiAgCQkJcmVnID0gPDB4MCAweDAx
ZDg0MDAwIDB4MCAweDMwMDA+Owo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
