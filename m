Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 850CFCA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6JO6DHh59rYjOsVp7mEYIZ9x+3Ulwc03iUrKZZy9PU=; b=yuFnOc4e2QYJ+O
	hUQhXhxm5P6fEAqUhlRjqwN3PBtga+HKn5w27e+/lZLIQuruLTSkkbDD4Qw1Z9fpV2RpzAaFrHWHO
	6yhLzLz2pkVBQmt+BmGnrRzThuRb7apH6r82hDhKAbuKsa8cVWtVDPaHVFMraT5hF5YlNoiAViAYe
	lG7e3WRtzOk7ZrKhSkM+zR6cOOY2wi3Lo380vbQKMJuBkUtfRkLUIEqGM1dR3HRHhjTmmza6hrj/m
	BGvNuhUO5Im/jtos8OeZpaJIUlgvgPq5dWwmKGDOmM9W7vQm8TSSvHMiHQbmTyrwCXfoCtF4G29y8
	VqWtsR6NngA1YdCl63SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTmT-0000000327i-10BN;
	Fri, 22 Aug 2025 15:34:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upMRF-00000001qRL-3mKi
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 07:43:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE0435C675E;
	Fri, 22 Aug 2025 07:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1DE9C4CEF1;
	Fri, 22 Aug 2025 07:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755848632;
	bh=Vo6lGk3lJxWzkqjBHldERuXljqaYSDMJvGkWXAsvEMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AxiAkC/Uq6DTFLdpAeDazGexMQGwo5OAzT25VbIPq9h6cbk0g0Pm7aCBXH6ge/K5C
	 Eysk+65rDgz5DuULeiQrGXivwHmnMScNXYLo4t0JddFrhKJu+qBi4fgQf/tVFiEC/Y
	 rLQPLfHYHHMVNInaLRPmXOw3ptp0oIjfpZFHFvL7kis+M+kblYA+h8SKZ84ZOOi4Ps
	 sxyPYn3S0UVY7XkexvvOtghovEAhd0nIP4e2NjMa0SqUJo4ovTO5WSEfL6mkH1r3P2
	 pBK8ElcKSfqeNpjB8PbtH9btw1TsE59bJA7PGnvhcZtnPkkAIk504Ngbk9BZ7f00gO
	 8pqIqcIqWfA0A==
Date: Fri, 22 Aug 2025 13:13:34 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v10 3/5] arm64: dts: qcom: qcs8300-ride: enable pcie0
 interface
Message-ID: <wwpdqg3tqq252emsbhu3lvpq5eefgbzk7bpgr2gu3hekokoqob@76fcww4fm3yg>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
 <20250811071131.982983-4-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811071131.982983-4-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_004354_017913_07427789 
X-CRM114-Status: GOOD (  12.90  )
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

T24gTW9uLCBBdWcgMTEsIDIwMjUgYXQgMDM6MTE6MjlQTSBHTVQsIFppeXVlIFpoYW5nIHdyb3Rl
Ogo+IEFkZCBjb25maWd1cmF0aW9ucyBpbiBkZXZpY2V0cmVlIGZvciBQQ0llMCwgYm9hcmQgcmVs
YXRlZCBncGlvcywKPiBQTUlDIHJlZ3VsYXRvcnMsIGV0YyBmb3IgcWNzODMwMC1yaWRlIGJvYXJk
Lgo+IAo+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBsaW5hcm8ub3JnPgo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQu
ZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhhbmcgPHpp
eXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9xY3M4MzAwLXJpZGUuZHRzIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vcWNzODMwMC1yaWRlLmR0cwo+IGluZGV4IDhjMTY2ZWFkOTEyYy4uZThlMzgyZGIyYjk5IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4MzAwLXJpZGUuZHRzCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMKPiBAQCAtMzA4
LDYgKzMwOCwyMyBAQCAmaXJpcyB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsm
cGNpZTAgewo+ICsJcGVyc3QtZ3Bpb3MgPSA8JnRsbW0gMiBHUElPX0FDVElWRV9MT1c+Owo+ICsJ
d2FrZS1ncGlvcyA9IDwmdGxtbSAwIEdQSU9fQUNUSVZFX0hJR0g+OwoKU2luY2Ugd2UgaGF2ZSBk
ZXByZWNhdGVkIHRoZXNlIHByb3BlcnRpZXMgaW4gaG9zdCBicmlkZ2Ugbm9kZSByZWNlbnRseSwg
cGxlYXNlCm1vdmUgdGhlc2UgcHJvcGVydGllcyB0byBQQ0kgYnJpZGdlIG5vZGUuCgotIE1hbmkK
Cj4gKwo+ICsJcGluY3RybC0wID0gPCZwY2llMF9kZWZhdWx0X3N0YXRlPjsKPiArCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAr
JnBjaWUwX3BoeSB7Cj4gKwl2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdfbDZhPjsKPiArCXZkZGEt
cGxsLXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+ICsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsK
PiArCj4gICZxdXB2M19pZF8wIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiBAQCAtMzQ4
LDYgKzM2NSwyOSBAQCBldGhlcm5ldDBfbWRpbzogZXRoZXJuZXQwLW1kaW8tcGlucyB7Cj4gIAkJ
CWJpYXMtcHVsbC11cDsKPiAgCQl9Owo+ICAJfTsKPiArCj4gKwlwY2llMF9kZWZhdWx0X3N0YXRl
OiBwY2llMC1kZWZhdWx0LXN0YXRlIHsKPiArCQl3YWtlLXBpbnMgewo+ICsJCQlwaW5zID0gImdw
aW8wIjsKPiArCQkJZnVuY3Rpb24gPSAiZ3BpbyI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDI+
Owo+ICsJCQliaWFzLXB1bGwtdXA7Cj4gKwkJfTsKPiArCj4gKwkJY2xrcmVxLXBpbnMgewo+ICsJ
CQlwaW5zID0gImdwaW8xIjsKPiArCQkJZnVuY3Rpb24gPSAicGNpZTBfY2xrcmVxIjsKPiArCQkJ
ZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+ICsKPiAr
CQlwZXJzdC1waW5zIHsKPiArCQkJcGlucyA9ICJncGlvMiI7Cj4gKwkJCWZ1bmN0aW9uID0gImdw
aW8iOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPiArCQkJYmlhcy1wdWxsLWRvd247Cj4g
KwkJfTsKPiArCX07Cj4gIH07Cj4gIAo+ICAmdWFydDcgewo+IC0tIAo+IDIuNDMuMAo+IAoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
