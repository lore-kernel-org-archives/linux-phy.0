Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E7EC001DE
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 11:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MmB36tSWG+qGCesbQbMhuD6kTO4WDeyzpP/fpgqXiQ=; b=Tg8qUuVKBCCzP5
	Xbqu7y2a8kBto6I8Fz3JgD77KarPclCJbAdlX7ONUO8KHwJlAEkCjtZtTtRLN4vkSyYp3OlaIEU9o
	dfB8UGZlNBBms/HOASZ7Bt9XA6kupbRMOBA1soT4y3dkQmAdEF81JiHkUHkGeETWeKcD0TzoHBeXD
	DJ0ubzuse7ras8SK67tI8jdHG/34vY88DQYsbpun7fXdrjFo3YmVRCbVy7ou+O2EXBn2R9CDcgZ4m
	A0MAaOyqFdIZjbpBFfAXFCssVw6Bd4aMue677w24Cufw2ezVCvl86K/b7Fx7m+Q9WPBwPqyATnFSC
	c2KGrbX5xvUG0IxWs3ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHMue-001S6n-02;
	Thu, 06 Jul 2023 11:12:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHMub-001S6G-1e
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 11:12:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B14CD61908;
	Thu,  6 Jul 2023 11:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DDADC433C7;
	Thu,  6 Jul 2023 11:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688641956;
	bh=BOEale8M+9gWzJpHRuHXhPnvc4ZSy1w4GTYANy5u44s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kMxNh/3WZijIVGdc5yewDH3XOYZUJwECrYRcBFuLMNQ6IMO+jdsuY6d6UiK1oWhZx
	 vMdet9znENk+RtaQZfEztdHqN1uut3JpGzkFSI17xYpbcX9RGgw2PRiKI6uIpZzhiD
	 bfXQOzUbhI3UcUlU/v5fz+mIBTxc1EsVRivVIoHifcmzkQOKhmmSOCFTWXj2rErFBW
	 34/4SE/+Sre/Kam6uvCMHHDa4TYCH4ggFSZNAdXJGALxdDqTG1dYhsdXobgKbupeEz
	 GOJ/uscUFvn5ndcc75HnJ4G3BMHCYZETHEzWtfVBiu1RYhJbcrzcigPlpj37ufzAWg
	 PSSkAfs7Wg0PQ==
Date: Thu, 6 Jul 2023 16:42:18 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, konrad.dybcio@linaro.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for PCIe
Message-ID: <20230706111218.GA4808@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <20230705084606.GF11854@thinkpad>
 <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_041237_614516_FDFE6F15 
X-CRM114-Status: GOOD (  18.21  )
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

T24gVGh1LCBKdWwgMDYsIDIwMjMgYXQgMDg6Mzk6NTRBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwNS8wNy8yMDIzIDEwOjQ2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCAwNSwgMjAyMyBhdCAwMTo0NzowNVBNICswNTMwLCBNcmlu
bWF5IFNhcmthciB3cm90ZToKPiA+PiBVcGRhdGUgdGhlIHJlbGF2ZW50IERUIGJpbmRpbmdzIGZv
ciBQQ0llLCBhZGQgbmV3IGNvbmZpZyB0byB0aGUgcGh5Cj4gPj4gZHJpdmVyIGFkZCBwY2llIGFu
ZCBwaHkgbm9kZXMgdG8gdGhlIC5kdHNpIGZpbGUgYW5kIGVuYWJsZSB0aGVuIGluIAo+ID4+IGJv
YXJkIC5kdHMgZmlsZSBmb3IgdGhlIHNhODc3NXAtcmlkZSBwbGF0Zm9ybS4KPiA+Pgo+ID4+IE1y
aW5tYXkgU2Fya2FyICg2KToKPiA+PiAgIGR0LWJpbmRpbmdzOiBQQ0k6IHFjb206IEFkZCBzYTg3
NzVwIGNvbXBhdGlibGUKPiA+PiAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20scW1wOiBBZGQgc2E4
Nzc1cCBRTVAgUENJZSBQSFkKPiA+PiAgIFBDSTogcWNvbTogQWRkIHN1cHBvcnQgZm9yIHNhODc3
NXAgU29DCj4gPj4gICBwaHk6IHFjb20tcW1wLXBjaWU6IGFkZCBzdXBwb3J0IGZvciBzYTg3NzVw
Cj4gPj4gICBhcm02NDogZHRzOiBxY29tOiBzYTg3NzVwOiBBZGQgcGNpZTAgYW5kIHBjaWUxIG5v
ZGVzCj4gPj4gICBhcm02NDogZHRzOiBxY29tOiBzYTg3NzVwLXJpZGU6IGVuYWJsZSBwY2llIG5v
ZGVzCj4gPiAKPiA+IFBsZWFzZSBub3RlIHRoYXQgdGhlIGR0cyBwYXRjaGVzIHNob3VsZCBjb21l
IGJlZm9yZSBkcml2ZXIgcGF0Y2hlcy4KPiA+Cj4gCj4gV2h5PyBEVFMgaXMgYWx3YXlzIGluZGVw
ZW5kZW50IHRodXMgdXN1YWxseSBwdXQgYXQgdGhlIGVuZCBvZiBwYXRjaHNldAo+IG9yIGJldHRl
ciBzZXBhcmF0ZS4gSXQgaXMgdGhlIGZpcnN0IHRpbWUgSSBoZWFyIHRoYXQgRFRTIHNob3VsZCBi
ZQo+IGJlZm9yZSBkcml2ZXIuCj4gCgpUaGlzIGlzIHdoYXQgSSB3YXMgc3VnZ2VzdGVkIGJ5IFJv
YiBkdXJpbmcgbXkgaW5pdGlhbCBkYXlzIGFuZCBJJ3ZlIGJlZW4KZm9sbG93aW5nIHRoaXMgcGF0
dGVybiBzaW5jZSB0aGVuLiBJZiB0aGF0J3Mgbm90IHRoZSBjYXNlLCBJIGhhdmUgbm8gaXNzdWVz
LgoKLSBNYW5pCgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
