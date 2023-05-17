Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD02BC77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 05:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMai7WZ/PvDTn5/hN3BascJBqqG7wUrzh1OX0hUbME0=; b=oQfSontSWsWTQQ
	wQWhR3nGyABvT6r0cZQH3WQGeRkvAMAVxx3leIuBxYVKSU11GjznEIpaI6p743vLJPemsAPIF4Yal
	VfBWgFPVuWqS34wAAxRxuOn85HR9sRkUFSHdMHnke/RdqAyTL3WMXzHulA3JXCzHRciND0cAJJyBW
	VEIMcdV4x5NXKHZ7uPO99vapCgm4BnxFxXuGVHrw+lCrlq7RockKYGMy5SPJKUInUh6wylmryB5Ul
	z/Fn6O+u1i/0iTyCE01ItD9b0Z2NooyArdEn4p6AqSVwZN/wdy+shOhzaHcMB+x/s0O1X0VJksAyV
	S7/BWUXJGKJI0Ft6x7zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz9us-008HtP-1n;
	Wed, 17 May 2023 05:41:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz9up-008HsG-3D
	for linux-phy@lists.infradead.org;
	Wed, 17 May 2023 05:41:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 76843612A0;
	Wed, 17 May 2023 05:41:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA5AAC433D2;
	Wed, 17 May 2023 05:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684302090;
	bh=eaW7TtDlCkk3TQHk49qcxVBWo9XRtdT3QMda3V2KuUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k8/O3n52y2l02vvPDz4V5KTECiGq2pMxqf+oPdCEazc14sKqHDD7XE67NjCnLyzxB
	 DC/mp7awBlFw3lTBdmomEbNKOLn5Ud1ZBNFpi1WZ8nwYfnil0u6H4XVgzpdPpb9OXi
	 xACGXsF5HzwCoknWJZK77TTbUQ5RtQZu7cU9g9FhHle0jIXdw7C3I0200DRZ/H9M+q
	 YfBp9Q81q5HOB3dgxrHDsk5GREUP/479ETwSMi/oD6MSb2D8ajzo+H6Mb+FB8UUvff
	 ywtQr2IclG2qEuRMgOdozJEVPuMXarh1cze1l5zMv476/NRwTsirFzm+yWHDvEBjHZ
	 bcFm9MhH4ExWw==
Date: Wed, 17 May 2023 11:11:19 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: mark the UFS controller as
 dma-coherent
Message-ID: <20230517054119.GG4868@thinkpad>
References: <20230515121908.303432-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230515121908.303432-1-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_224136_097530_D3B3571D 
X-CRM114-Status: GOOD (  15.54  )
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

T24gTW9uLCBNYXkgMTUsIDIwMjMgYXQgMDI6MTk6MDhQTSArMDIwMCwgQmFydG9zeiBHb2xhc3pl
d3NraSB3cm90ZToKPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3
c2tpQGxpbmFyby5vcmc+Cj4gCj4gVGhlIFVGUyBpcyBjYWNoZSBjb2hlcmVudCwgc28gbWFyayBp
dCBhcyBzdWNoIGluIHRoZSBkdHNpLgoKVUZTIGNvbnRyb2xsZXIKCj4gCj4gU2lnbmVkLW9mZi1i
eTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgoK
U3VnZ2VzdGVkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4KUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5p
Cgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpIHwgMSArCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NhODc3NXAuZHRzaQo+IGluZGV4IGM1ZTJlMzI1NmJjNC4uYzA3MTdkYWMxMDBjIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpCj4gQEAgLTYwNSw2ICs2MDUsNyBAQCB1
ZnNfbWVtX2hjOiB1ZnNAMWQ4NDAwMCB7Cj4gIAkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNf
UEhZX0dEU0M+Owo+ICAJCQlyZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX25vbT47Cj4gIAkJ
CWlvbW11cyA9IDwmYXBwc19zbW11IDB4MTAwIDB4MD47Cj4gKwkJCWRtYS1jb2hlcmVudDsKPiAg
CQkJY2xvY2tzID0gPCZnY2MgR0NDX1VGU19QSFlfQVhJX0NMSz4sCj4gIAkJCQkgPCZnY2MgR0ND
X0FHR1JFX1VGU19QSFlfQVhJX0NMSz4sCj4gIAkJCQkgPCZnY2MgR0NDX1VGU19QSFlfQUhCX0NM
Sz4sCj4gLS0gCj4gMi4zOS4yCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
