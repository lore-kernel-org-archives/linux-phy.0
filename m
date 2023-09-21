Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44CA7E706E7
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 08:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofua0PBzcRymJIfxH34/b/BEOOONLkQXDHLoU48Qf9g=; b=NbaVMGyib27XxP
	a+0u818h9Mha3HI9xUsVcSgY/jfx7lidHXipdptrPOhmiryMVkIUVZjIOG8t7ucD6rL7PqIZy5bPY
	mNt4h6oGwCRdat22HlBaALGaQosujc4NDFAEp/TJvhk8z6jRjwoZeM5Q80Ej4RxlsKiUKECK9IqDm
	sOFVLAPPGuUQAOTvU7ZgvxzlhXfGyrTuNj8GLb+xT9TIzioMoyw7A+70y605dxq6+8hHlB+3CY2oM
	PBLShrLGW0/XEbjBSj53pE340pYpTIygwuJQ7/KO47MVc/BKwjkPILKAM+0gb5vgXIF6mz9KBlitL
	im++Pr36afFOen8a74bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEsi-005TfG-03;
	Thu, 21 Sep 2023 08:17:52 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEsf-005Tem-1M
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 08:17:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0E676B81FAE;
	Thu, 21 Sep 2023 08:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D61C116B8;
	Thu, 21 Sep 2023 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695284266;
	bh=E0OEX/w3VVEk1x8eRqdQdU8ItP99tfJG4PyFQG1J0g4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Klw3oKFy5tL56p7fZHyWWBnTD8cEEPU9Y6G19ZzJLhHUSb60hiDJ7HHYa/N8ZB+q5
	 bxSq4BQROo2YafCvxVhDbKdTnXyVQGC0jV5sQjnIYsvjo5OtZbooaZDxNLvRxRMzgL
	 Coy5hmpV5qfDq6Bky8njlJYlYWspj/d/Hljf7Z2zVPbEwmy64K15qYlxRrfzjUZd5+
	 jON3SLH93Z3eI52XF/IzvWqbm1/h+HdawKwUJggKFrPOC1NTVxlqHI77PdfIYXjd0W
	 uERxMyy9AvW9VRRQ9EZGzcdOOxWmvIwyrEgQH4nFl93Li5LiaM/1Rlnpz7kkRXxBIV
	 NtSGwN3tXsbRQ==
Date: Thu, 21 Sep 2023 10:17:36 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 2/5] PCI: qcom-ep: Add support for SA8775P SoC
Message-ID: <20230921081736.GB2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-3-git-send-email-quic_msarkar@quicinc.com>
 <4b20d3bb-d2d2-0864-013f-104e26ae558c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b20d3bb-d2d2-0864-013f-104e26ae558c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_011749_626311_0E73A008 
X-CRM114-Status: GOOD (  11.45  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDQ6MjQ6MzBQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiAKPiAKPiBPbiA5LzIwLzIzIDE1OjU1LCBNcmlubWF5IFNhcmthciB3cm90ZToKPiA+
IEFkZCBzdXBwb3J0IGZvciBTQTg3NzVQIFNvQyB0byB0aGUgUXVhbGNvbW0gUENJZSBFbmRwb2lu
dCBDb250cm9sbGVyCj4gPiBkcml2ZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1yaW5tYXkg
U2Fya2FyIDxxdWljX21zYXJrYXJAcXVpY2luYy5jb20+Cj4gPiAtLS0KPiBUaGlzIGNvbXBhdGli
bGUgZG9lcyBub3QgYnJpbmcgYW55dGhpbmcgbmV3IHRvIHRoZSB0YWJsZQo+IG9uIGl0cyBvd24u
IFBsZWFzZSBjcmVhdGUgYSBmYWxsYmFjayBjb21wYXRpYmxlLCBkb2N1bWVudCBpdAo+IGluIHRo
ZSBiaW5kaW5ncyBhbmQgdXNlIHRoYXQuIFNlZSBbMV0gYW5kIFsyXSBmb3IgZXhhbXBsZS4KPiAK
CkFjay4KCi0gTWFuaQoKPiBLb25yYWQKPiAKPiBbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLWV1c2IyLXJlcGVhdGVyLnlh
bWw/aD1uZXh0LTIwMjMwOTIwCj4gCj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvdHJlZS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vcG03NTUwYmEuZHRzaT9oPW5leHQtMjAyMzA5MjAjbjY1CgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
