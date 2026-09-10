Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC21BC79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 14:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlxsNB0b68THJK1KePaxspqKoa+zWao+01sl5S98b/c=; b=C6akxvrPc+k2d2
	nVNtAHrheuT8m1GknzgwpNDG5JB/ERiVNivOy9N39liWVHtRBgQrN7383ulIUJpUhjKNZvBrcE743
	q3HnE1FIrgQYpUNZyZmC9h2MDiV30ZufQ+UNboU17MOSjNcGJCMQk2HL0tHMKf8dM6iI5JTsGcpag
	lu3qMjxPC3P/75VKzT3VbWmQrOjMBNEQETrpwHBKw3VhgoowtF0tkC5byGdAkaPiZ6vLnabYEw+wP
	xzTIaKF1iWzoQI9cFDRAUkSjLl65yTjonn0769yXDBzFhtYSoUWi0CAohJEyoDMfKNVgkrhguQVxl
	osOCviRt+Lg2y1lUm8qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4g9v-0000000Eh6o-1H8E;
	Thu, 10 Sep 2026 14:53:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4g9t-0000000Eh6b-3mSK
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 14:53:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E59CB600E2;
	Thu, 10 Sep 2026 14:53:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BDBC1F000FF;
	Thu, 10 Sep 2026 14:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789052028;
	bh=9OPS+xkkQJCElwq/tseCCeVoLqNSDE7wwyxeZzZI1W8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i2JoBAH/bvA29K5SXu1CjD1hqwWJEjJolJvSRgvAVXbMcdsQSeiWiIaRil2Z6cVH4
	 ADsDUkmxjVJ8M4Ujr3YSbRv+E0vGEs5QRM7JaRl9vCTXRiEbeg6fz2v8yUVC+RN2bl
	 PFyv3zElqrOEpd7qlYjkrNqgRXyubKrNqqJLNzpUBe8Z4lOOoi8aU+3/VZkd8FCuAm
	 2xF6SxjSE+k+qA2Oz981NhhOa7Nc0eXe86YNEDM60xMBYRcrN/fL/anCN+eboqcDUt
	 iuR5QhIbYtkxVebTjUFwnEiazuE+GFMo7I8wBy9sG4cbtR6tuYv4o/DWGe8lsJ5e38
	 i8UymBZp3G6dw==
Date: Thu, 10 Sep 2026 16:53:38 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Shikra PCIe phy
Message-ID: <luuofaxoe262a2osrs6aev7fpmufkscttjkt7jaw6litrapcgu@rhowfgx7mymc>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMzEsIDIwMjYgYXQgMTI6NTY6MDFQTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBU
cml2ZWRpIHdyb3RlOgo+IERvY3VtZW50IHRoZSBjb21wYXRpYmxlIG9mIHRoZSBTaGlrcmEgUENJ
ZSBwaHkgd2hpY2ggc3VwcG9ydHMKPiBHZW4yeDEuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3VzaHJ1
dCBTaHJlZSBUcml2ZWRpIDxzdXNocnV0LnRyaXZlZGlAb3NzLnF1YWxjb21tLmNvbT4KCkFja2Vk
LWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVh
bGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
