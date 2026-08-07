Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75A4EC5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZ0ZKv27tskupd2J+jUJsgHplWDHmgBvvfZbl32+tPw=; b=dStgq7cG1YLol7
	IPKjSamJnLdzrgmn0pGp2SBjpf0zSHhN/OI355RGh4TgOWyYuS1t7uLKmLs4oY/6AD91oE/F31zmc
	1mMMAgqjMSF7wgsm76pMFeH7uz83ee24ozSsoXuTOPmXYocCfcvbywGsCQBBFSN8/cPhfpyKIwOaD
	xBZu+Az6pLXQ7DVRdSCWH48o1BXnwEb263Tv4gMa3PMCNB75AXwx874Z6V+oqfUmplpy6OQpRBCR1
	Aj2XJNYAryUT3d1yFFqIPVHojiT8HdxLVMNjhAFIBeR7K63sd3Ljk4T9uYrlT8MZRhV3ZoErLsRaW
	evT/77dluPIMldy4EP3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJPB-00000007zli-2CmG;
	Fri, 07 Aug 2026 12:10:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJPA-00000007zla-1wf4
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:10:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 29F3943A0D;
	Fri,  7 Aug 2026 12:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 908A21F000E9;
	Fri,  7 Aug 2026 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786104628;
	bh=omVmCxufR2KEfAHglCQk1kgesXi+aQ93qmaZVz6mkS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dYtpW3KhvGVbusf1kssvUt3rJ7XSD3jfOcANC5gD/zd7SfjUWvC05YW6fouta61gF
	 zT4bCHfuxW8ofqerRFfgzMhT8glG1Xww+EVzUCQ4eSVWim/7fHUnyCowfRi4oCR5i6
	 aS67jVjMS/ZY2UxdpgTI/AfT5lo3ud0seB2CKTpK4S5awGS6a29thJIjRirySdsoyH
	 WWyqVwi/6Dx1AqHAfOEcQwEVGp2eyKu3kOmYvOsWMvHWAwTN4zZ1UlLr5eNajC4VM/
	 mKgbb+pttEm5WJFG6HYH6Tr3ye+S7aSRfFFimMQHyC6RYXhnF9R6vrEvWmX+qIhh3l
	 t2uKXqQRNeOWw==
Date: Fri, 7 Aug 2026 14:10:17 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
Message-ID: <pu6seb2byma6unnvhzfocxrvatnt4qkviyawhgrhhunrbemvzs@vh7yum24azyg>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-1-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-topic-usb4phy-v3-1-ccf0f7ea98b5@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMDQ6MTk6MTNQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gU29tZSBpbnN0YW5jZXMgb2YgdGhlIFFNUCBjb21ibyBQSFkgKGNhbGxlZCBVU0I0
M0RQKSBmZWF0dXJlIGEgdGhpcmQKPiBmdW5jdGlvbmFsIHN1Yi1ibG9jaywgcmVzcG9uc2libGUg
Zm9yIFVTQjQvVGh1bmRlcmJvbHQgMyBjb21tdW5pY2F0aW9uLgo+IAo+IENvbXBhcmVkIHRvIHRo
ZSB0b2RheSdzIHN0YXRlIG9mIHRoZSBiaW5kaW5nLCBvbmUgbW9yZSBjbG9jayAoUDJSUjJQIC0K
PiBQSFktdG8tUm91dGVyLCBSb3V0ZXItdG8tUEhZKSBuZWVkcyB0byBiZSBlbmFibGVkIGZvciB0
aGUgUEhZIHRvIGJlCj4gYWJsZSB0byBzd2l0Y2ggdG8gVVNCNCBtb2RlLiBBbGxvdyB0aGF0IGZv
ciBYMUUuCj4gCj4gQWxzbywgYWRkIGEgYmluZGluZ3MgZGVmaW5lIHRvIGxldCBjb25zdW1lcnMg
YWNjZXNzIGl0Lgo+IAo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6c29ubmV0LTUKPiBSZXZpZXdlZC1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0u
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1
YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
