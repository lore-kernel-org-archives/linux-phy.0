Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52EEACD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 06:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGWwnTfGlY45eiS+M+q1tJmC3lLcme0HPyhUnMCsfP4=; b=wv8N0nqbKyhIrL
	Tb7xj3QbbxsvJMlGNrfcqG98nurU3ujf6xsa11RWE5JzKz4yKZflMc4TWmw1jw4v5yc4bKiRbtlze
	Lw9wdU79aXYd8xeg/NaVF5Z7+6MSgG7q22kpiQQocxOAWwrURXiNjISNeLd1JA2q0rOx617bhgeKo
	LsysyqgtJsrIhhOKpp9+gPVdRqTkGoemtiViagfIX+fUNxL1up2gcSBYx+a+m1USLNtUqwBaqUsiH
	t1XxXkG/Ew4G2AyHBdBlkH4MwshCl6AeZHnPRINVE9qD9rscAiJkHNwzH4kx8tY6bTn1P4//75gN8
	ByVCdXVoqD0FUiKhyTJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTdK-00000002uZe-3q0R;
	Mon, 08 Jun 2026 06:38:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTdJ-00000002uZX-22K0
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 06:38:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A16BB6001D;
	Mon,  8 Jun 2026 06:38:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B80C1F00893;
	Mon,  8 Jun 2026 06:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780900728;
	bh=P23cbBDokDRyIR/cbXUTwKB8KtJ2t4FrINtPtvBMWnE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=ESw4tqQs1AlXMRnccqFwCQDevnkQml9nL6uZg1uUNlXjlpRgRKU7RhSy97cWCI9Ur
	 lKpUxc3q/fq8gU5q0P6iaoXYvU+AFZQGIDOOsCsrSs7W/DF+MCjjtCdjXzcVe3fuT1
	 C0bKnQ6pgwq1j6kKyu3ruLfq+PMKCUo6F/4XiP+G5eYMCo35oAU3SVvlJAAsUXybg8
	 HPA0vDnhVaZrOtJgIIEtTIfloTrvPfocQHB1mtoFFzo3/921OcSzQhpklixoIUtvco
	 A1enNmlusTr4QLTguRFTKbHIvPPqUN5QMwVw1Vp/8S9HCMtKVBc2TyDH4sucKXs2wb
	 qYukWp9/6PXYQ==
Message-ID: <52ac2b7a-8c7b-4f18-9a28-5b82a92f0a12@kernel.org>
Date: Mon, 8 Jun 2026 08:38:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
 <20260607-devious-active-bobcat-1078ab@quoll>
 <aab3d70a-4939-4f55-a343-4cdeea8915b8@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <aab3d70a-4939-4f55-a343-4cdeea8915b8@oss.qualcomm.com>
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

T24gMDgvMDYvMjAyNiAwNjozNSwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiAK
PiAKPiBPbiA2LzcvMjAyNiAyOjE4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBP
biBNb24sIEp1biAwMSwgMjAyNiBhdCAxMDo1OTo0NVBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55
YSBDaHVuZHJ1IHdyb3RlOgo+Pj4gUENJZSBjb250cm9sbGVyIHByZXNlbnQgaW4gRWxpemEgU29D
IGlzIGJhY2t3YXJkcyBjb21wYXRpYmxlIHdpdGggdGhlCj4+PiBjb250cm9sbGVyIHByZXNlbnQg
aW4gRWxpemEgU29DLiBIZW5jZSwgYWRkIHRoZSBjb21wYXRpYmxlIHdpdGggU004NTUwCj4+IEVs
aXphIFNvQyBpcyBjb21wYXRpYmxlIHdpdGggaXRzZWxmPwo+IMKgU29ycnksIHRoYXQncyBhIGNv
cHktcGFzdGUgZXJyb3IgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBJdCBzaG91bGQgcmVhZDoKPiDC
oCAiUENJZSBjb250cm9sbGVyIHByZXNlbnQgaW4gRWxpemEgU29DIGlzIGJhY2t3YXJkcyBjb21w
YXRpYmxlIHdpdGggdGhlCj4gwqAgY29udHJvbGxlciBwcmVzZW50IGluIFNNODU1MCBTb0MuIgo+
IAo+IMKgIFdpbGwgZml4IGluIHYzLgo+Pj4gZmFsbGJhY2suCj4+IFdoeSByZWcsIGNsb2NrcyBh
bmQgaW50ZXJydXB0cyBhcmUgZmxleGlibGU/IEFyZSB0aGVyZSBkaWZmZXJlbnQKPj4gdmFyaWFu
dHMgd2l0aGluIEVsaXphIFNvQywgZS5nLiBvbmUgd2l0aG91dCBtc2k/Cj4gVGhlcmUgYXJlIG5v
IHZhcmlhbnRzIHdpdGhpbiBFbGl6YSBTb0MuIFRoZSBmbGV4aWJpbGl0eSBpcyBpbmhlcml0ZWQK
PiBmcm9tIHRoZSBTTTg1NTAgZmFtaWx5IGJpbmRpbmcgYW5kIGZvbGxvd3MgdGhlIHNhbWUgcGF0
dGVybiBhcyB0aGUKPiBvdGhlciBjb21wYXRpYmxlcyBpbiB0aGlzIGZpbGUgKGthYW5hcGFsaSwg
c2FyMjEzMHAsIHNtODY1MCwgc204NzUwKQo+IHdoaWNoIGFsc28gaGF2ZSBubyBwZXItY29tcGF0
aWJsZSBjb25zdHJhaW50cy4gSWYgeW91J2QgcHJlZmVyIGV4cGxpY2l0Cj4gY29uc3RyYWludHMg
Zm9yIEVsaXphLCBJIGNhbiBhZGQgdGhlbSBpbiB2My4KCllvdSBuZWVkIGV4cGxpY2l0IGNvbnN0
cmFpbnRzLiBPbGQgdmFyaWFudHMgYXJlIGZsZXhpYmxlIG9ubHkgYmVjYXVzZSBvZgpiYWNrd2Fy
ZHMgY29tcGF0aWJpbGl0eS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
