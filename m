Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EB1C54791
	for <linux-phy@archiver.kernel.org>; Sun, 10 Mar 2024 13:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxxfqZpuAW79JfDqeZJEZLfXRzih6aE27pjSwVCeSvA=; b=dpo6muNvK3aOaZ
	jET4qSqacyLsWoCgUgD5yJm5uwl06pFY2KA2j4u21HL+Cd5s9fC7lJE+qZ4BvyFN6Hchs5YXTKrdR
	FXx3DJAvJ7wnlFFKVi0cvoG0c+jbtL4RSqmK/gsLfTbe4lchCmX2RzAvF7O7CQTNVZP/Vot7KU5Br
	GbjDv7FIz8V7gITqyJJ52sAu/ybN0bw2QGNHrym0fC21ZTiGOMFWn2VRDKKY10YVgPz0R4s5qjTNz
	UeTyWjfOeXNOzKmlUYXx7yCHGxIe52EBBN0l9kCoEvcWvZ5qKyMUBA2KCGVSyzL5isL0wrm4g2GUc
	Q6e2M8oIorOqS0BwhEjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjJFB-0000000FqDV-1q9z;
	Sun, 10 Mar 2024 13:29:37 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjJF7-0000000FqCY-0s0l
	for linux-phy@lists.infradead.org;
	Sun, 10 Mar 2024 13:29:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0F0B0CE09CF;
	Sun, 10 Mar 2024 13:29:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD694C433F1;
	Sun, 10 Mar 2024 13:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710077368;
	bh=gfkP8LYRyawwp9+kWHGhd2GZEQ3SoFQ4y8eKVamILuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RqfW/h3S87jj7+W0+B9RcHkHeLPMG/GXlWRzgASmC2b8EWoY7lueJu1mlC+YIbp3H
	 fdtydgo6WXrq37R2CEaQMUhqH/yH2E3zP8RbNWRVgYkybKx5d1ztSLMM6nr6pzYOPT
	 +eCV80EPFkgM35jQ+KctNZ6YUI6GBHW6Rva3JsOmSaQGx4obn2rtHl4c54iT/b78CA
	 n+UPO0swXukzZ2bmFJPHQqdDq8bfZyuD/f2v0dtDGFG7l7EKX9Uf+T3ito+2AADnKc
	 Fx4o6ls2xSbKE6YG3b779HPh+rgb4L9Jl61IIB4VeY9L/D/eLdqUh9y3mtvuAq9Q8a
	 Vz/xvIwAtBPRA==
Date: Sun, 10 Mar 2024 18:59:15 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
	quic_nsekar@quicinc.com, quic_srichara@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_varada@quicinc.com, quic_devipriy@quicinc.com,
	quic_kathirav@quicinc.com, quic_anusha@quicinc.com
Subject: Re: [PATCH 00/10] Add PCIe support for Qualcomm IPQ5332
Message-ID: <20240310132915.GE3390@thinkpad>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_062933_545829_6F4581EC 
X-CRM114-Status: GOOD (  13.42  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTE6NTg6MzdBTSArMDUzMCwgUHJhdmVlbmt1bWFyIEkg
d3JvdGU6Cj4gUGF0Y2ggc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgZW5hYmxpbmcgdGhlIFBDSWUg
Y29udHJvbGxlciBhbmQKPiBVTklQSFkgZm91bmQgb24gUXVhbGNvbW0gSVBRNTMzMiBwbGF0Zm9y
bS4gUENJZTAgaXMgR2VuMyBYMSBhbmQKPiBQQ0llMSBpcyBHZW4zIFgyIGFyZSBhZGRlZC4KPiAK
PiBVTklQSFkgY2hhbmdlcyBkZXBlbmRzIG9uCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjMxMDAzMTIwODQ2LjI4NjI2LTEtcXVpY19uc2VrYXJAcXVpY2luYy5jb20vCj4gUENJZSBk
cml2ZXIgY2hhbmdlIGRlcGVuZHMgb24KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
MzA1MTkwOTAyMTkuMTU5MjUtMS1xdWljX2Rldmlwcml5QHF1aWNpbmMuY29tLwo+IAoKQW55IHBs
YW4gb24gdGhpcyBzZXJpZXMgYW5kIHRoZSBkZXBlbmRlbmNpZXM/CgotIE1hbmkKCj4gUHJhdmVl
bmt1bWFyIEkgKDEwKToKPiAgIGR0LWJpbmRpbmdzOiBjbG9jazogQWRkIHNlcGFyYXRlIGNsb2Nr
cyBmb3IgUENJZSBhbmQgVVNCIGZvciBDb21ibyBQSFkKPiAgIGNsazogcWNvbTogaXBxNTMzMjog
QWRkIHNlcGFyYXRlIGNsb2NrcyBmb3IgUENJZSBhbmQgVVNCIGZvciBDb21ibyBQSFkKPiAgIGFy
bTY0OiBkdHM6IHFjb206IGlwcTUzMzI6IEFkZCBzZXBhcmF0ZSBlbnRyeSBmb3IgVVNCIHBpcGUg
Y2xvY2sKPiAgIHBoeTogcWNvbTogQWRkIHN1cHBvcnQgZm9yIFBpcGUgY2xvY2sgcmF0ZSBmcm9t
IGRldmljZSBkYXRhCj4gICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHVuaXBoeS1wY2llOiBBZGQg
aXBxNTMzMiBiaW5kaW5ncwo+ICAgcGh5OiBxY29tOiBpcHE1MzMyOiBBZGQgc3VwcG9ydCBmb3Ig
ZzN4MSBhbmQgZzN4MiBQQ0llIFBIWXMKPiAgIGR0LWJpbmRpbmdzOiBQQ0k6IHFjb206IEFkZCBJ
UFE1MzMyIFNvQwo+ICAgcGNpOiBxY29tOiBBZGQgc3VwcG9ydCBmb3IgSVBRNTMzMgo+ICAgYXJt
NjQ6IGR0czogcWNvbTogaXBxNTMzMjogQWRkIFBDSWUgcmVsYXRlZCBub2Rlcwo+ICAgYXJtNjQ6
IGR0czogcWNvbTogaXBxNTMzMjogRW5hYmxlIFBDSWUgcGh5cyBhbmQgY29udHJvbGxlcnMKPiAK
PiAgLi4uL2JpbmRpbmdzL2Nsb2NrL3Fjb20saXBxNTMzMi1nY2MueWFtbCAgICAgIHwgICA2ICst
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbCAgICB8ICAzNiAr
KysrCj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSx1bmlwaHktcGNpZS0yOGxwLnlhbWwgICB8ICA2
NSArKysrKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzItcmRwNDQxLmR0cyAg
IHwgIDc0ICsrKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRzaSAg
ICAgICAgIHwgMTg4ICsrKysrKysrKysrKysrKysrLQo+ICBkcml2ZXJzL2Nsay9xY29tL2djYy1p
cHE1MzMyLmMgICAgICAgICAgICAgICAgfCAgIDcgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1xY29tLmMgICAgICAgIHwgICAxICsKPiAgLi4uL3BoeS9xdWFsY29tbS9waHkt
cWNvbS11bmlwaHktcGNpZS0yOGxwLmMgIHwgIDQ5ICsrKystCj4gIDggZmlsZXMgY2hhbmdlZCwg
NDEyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIuMzQuMQo+IAo+
IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
