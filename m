Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C1CC79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 14:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXVagQ8IZQzfsW8AEXXlEZj4rFkvn0LKWzIv+hNlK0Q=; b=a7nBw518G9j/iT
	4vCH38vJhRtofB3xT055PEF+oPRby6j77cOGYP0ve52/c0IuWtIJ/WEudtlD+zSBl1414mlq+U6qb
	7Zxv3r7m9mB7fWtkJUGonq7DX59Z0ZDPdajsBOeEgqxil6MG931H8kYFBamgIM93C9XGaWxTSbeSm
	zbH6eMEsZnCMVa4nnjSBPg2riBWF4xo4+3LK0qdvkhnL1oAzITluLsnSvD2M3akTDo8uTM3gASa9S
	5iDywLs66v+msySYzH2UZRLTSC/9uMXejmtf7j0kid188ep+sZoktC6C9qph6zIt7GtweuCOMu2JL
	r3eXsNXanU9J4J+dgUdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4gAZ-0000000EhBC-1y0Z;
	Thu, 10 Sep 2026 14:54:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4gAY-0000000EhAz-463o
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 14:54:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 685ED4330F;
	Thu, 10 Sep 2026 14:54:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340DD1F008BC;
	Thu, 10 Sep 2026 14:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789052070;
	bh=2S+7lOb5lQwJunwgugNvj9bFJbnkzgsbNZSE8mE1MKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dGMeZE7l1V60yzw4gHb+09kXllETJUroPbH8Vp4Rbu5Kgng1++nD8cNPAKi3gPCZe
	 NPUfE8L3JAYlzKvN1jJDeh8JEiD3AJbUt25O0HKYIOlBTbWRyUq4cncTbHXfzpZxZK
	 7IFCUBQxUTqPkaKdkg+xO8xmwxBfkcUwkxaDeDGrR2VLE1krJaVCsVc8EYM8Gd9bte
	 72bt3nn1ag2ZLomqDSyLLvgUt+A5/D0CmRDszXV/64aRY0VyjKq1mSh86Kr2WomlRU
	 xlC1Rc49DgRjgVew7Hm+IO+VZA78G4RiRsDgtqr0ZYQHHYpJKxNlPmch7a4u0Vm92b
	 qglAok8oF1eXQ==
Date: Thu, 10 Sep 2026 16:54:19 +0200
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
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Shikra
Message-ID: <qesmpyfcl3lszmar5rrpzxc5zp7v4gup5xu4ypq6v5pt2wvqnf@oips226nedhu>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMzEsIDIwMjYgYXQgMTI6NTY6MDRQTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBU
cml2ZWRpIHdyb3RlOgo+IEFkZCBRTVAgUENJZSBQSFkgR2VuMngxIHN1cHBvcnQuCj4gCj4gU2ln
bmVkLW9mZi1ieTogU3VzaHJ1dCBTaHJlZSBUcml2ZWRpIDxzdXNocnV0LnRyaXZlZGlAb3NzLnF1
YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
