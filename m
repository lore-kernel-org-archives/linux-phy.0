Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA67C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 07:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXVNsNE71JFU5E42r4BMgvfggpHqZwtSx7e5suD+60M=; b=h/7zqP5MNiQxBj
	PJuyzt4+rf56oPhqgS81uwvuansQjtXC1JIf9Mltj3fF1uAvn8lpTsmr2eCS9lnr3GgyK1dp0OSIf
	BwOo/ET7qeyBTs3McYGY5virg55kB8AsuAI8rdlgYLZkds0chrsQgXpWj3VkOMGUhMYV/NVMolX5X
	ZQEgMZ+AgqLOPLqDnOknr+liGsy9tTUxs75Dz1+B5YBevzHdT+pMD32CmoJckKsJDaoWLJYrQawyz
	p88Z0UOZr8df2kxG3TsKoef8wW/H/1ihQAeHXj9BGbpsdgqOFKRvWulIrH5MJNg38HuIHq0E3YSjW
	nNseZ5aKoh7wUdqZGsdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJqfN-002Diu-19;
	Thu, 13 Jul 2023 07:23:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJqfL-002Dhl-0Q
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 07:23:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4DDB661A39;
	Thu, 13 Jul 2023 07:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45F4C433CC;
	Thu, 13 Jul 2023 07:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689232985;
	bh=34iBZBeM9o/lETNpx3DmFjAaTAaoREDVy3VCozGSLL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h7Xv9wZXb46K03sC3gymRa4ZNwBcdEB+sTKIrCPeNRwJUYF3u/8Dlt2vhH5lVYFDT
	 0VVchOXpgdGrkLgQklYtLV+pLYTLz5vC89tb7vnTTJjVVl5ZV1yGEayqaaAP1RAiqj
	 7ERJE1MIYKbWRGAW9i9c+U3va4a+tTHAI3/oBwAST8WNJaEuf54EAQ+ohjEkCY2WHg
	 Dw+bih96XyVUYfIRXfWIy2LBCmgtFMvfOm6F3sB8pcHO68R0TjnLKvebcBq+LsF6R8
	 a5W2aStzb5LaM31Eim7l91VcfVj5ODfaoo7UThsFaWrZmanF608D8SvgyQECsApa3G
	 x9ylxg67JQB+A==
Date: Thu, 13 Jul 2023 12:52:49 +0530
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
Message-ID: <20230713072249.GG3047@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <20230705084606.GF11854@thinkpad>
 <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
 <20230706111218.GA4808@thinkpad>
 <878103c6-0dc3-164b-92ce-17ec4f87bff6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878103c6-0dc3-164b-92ce-17ec4f87bff6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_002307_226197_471BD7FB 
X-CRM114-Status: GOOD (  15.01  )
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

T24gVGh1LCBKdWwgMDYsIDIwMjMgYXQgMDI6MDk6MDlQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwNi8wNy8yMDIzIDEzOjEyLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPj4+IFBsZWFzZSBub3RlIHRoYXQgdGhlIGR0cyBwYXRjaGVzIHNob3VsZCBjb21l
IGJlZm9yZSBkcml2ZXIgcGF0Y2hlcy4KPiA+Pj4KPiA+Pgo+ID4+IFdoeT8gRFRTIGlzIGFsd2F5
cyBpbmRlcGVuZGVudCB0aHVzIHVzdWFsbHkgcHV0IGF0IHRoZSBlbmQgb2YgcGF0Y2hzZXQKPiA+
PiBvciBiZXR0ZXIgc2VwYXJhdGUuIEl0IGlzIHRoZSBmaXJzdCB0aW1lIEkgaGVhciB0aGF0IERU
UyBzaG91bGQgYmUKPiA+PiBiZWZvcmUgZHJpdmVyLgo+ID4+Cj4gPiAKPiA+IFRoaXMgaXMgd2hh
dCBJIHdhcyBzdWdnZXN0ZWQgYnkgUm9iIGR1cmluZyBteSBpbml0aWFsIGRheXMgYW5kIEkndmUg
YmVlbgo+ID4gZm9sbG93aW5nIHRoaXMgcGF0dGVybiBzaW5jZSB0aGVuLiBJZiB0aGF0J3Mgbm90
IHRoZSBjYXNlLCBJIGhhdmUgbm8gaXNzdWVzLgo+IAo+IEkgcmVhbGx5IGRvdWJ0IFJvYiBldmVy
IHN1Z2dlc3RlZCB0aGF0LiBIZSBwcm9iYWJseSBzdWdnZXN0ZWQgdGhhdAo+IGJpbmRpbmdzIG11
c3QgY29tZSBiZWZvcmUgdXNlciwgYnV0IG5vdCB0aGUgRFRTLgo+IAoKTWF5YmUgSSBtaXN1bmRl
cnN0b29kIGl0IHRvIGJlIGJvdGggYmluZGluZ3MgYW5kIGR0cy4gVGhhbmtzIGZvciBjbGFyaWZ5
aW5nLgoKLSBNYW5pCgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
