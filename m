Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16C31C43327
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Dsz5V+kOetMiaCJQ06nARpcM7ma/2FA35fCapQ/yHlk=; b=gW3sc0b7iiuKZi
	hDnq6uFn8z5Wei9rYTqIOJohlLHs2HiLhRiyuvC9EWAiR4NRweZVV7R2c653HNqCq636gDt45UUmC
	yMMRtjIxi+SjnO+6Z8UCDS51sCQrdfOULeNfj6OSoH+XRH4FR0CExr4yNVLZIaBHKR+11miLvz3wP
	vBj9w5P00nc2Dvn+RxialCqaAldr5cZlif4sV2/6c1prMmRNoXUKPX/UHMbWGEClaW2/KviXMm1je
	AlCADyycUSMeU2rWDJ9Hb/JK11Feuv7LNNEaYWwdydb+srKCTv5XxDwdVzTQ3hiabDydr6f1u59qv
	Yamd6lRN1GbWryOjYHIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee9S-000000007oS-3ZNk;
	Tue, 30 Jun 2026 19:29:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee9S-000000007oM-1XnU
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:29:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 956B7600DA;
	Tue, 30 Jun 2026 19:29:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ED541F00A3A;
	Tue, 30 Jun 2026 19:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847785;
	bh=fSzRtKVMoXI7+HHGIKAFEIMBcfBqFTGvZ1qEttKO60E=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=B2AIDKh5vbGFBuOg6hOx6tdHmaWWwzMFzTu6BS2ggeDQO9KhP6owJCRkl8I7qxlBp
	 ECPDP5pOgm2JAt74VH4OUJsu5aYNAg6A/L2YR4PPhxeDLFp1x7CzUZe+9vmhA0sZ9D
	 X6hOdFpOm7x5ck+JJJPQmK702bZ4hCPDZUwjDJRi/n4HMA+zAHqds+WajiGX7r4baJ
	 6dUHPXQvZQGfrKnO3eJt/E/Yk2STTm/M/p7wRnbfKh7xLZao2UAhioaDPK08cWiYe+
	 PTYBhUwha03uTbtfVDRPMKh26Y/L/5Rz9zW+Ohwy0mSSp+hbedhj0eVoz5H+L0Q0CG
	 yFF9nsIzeyLVw==
Date: Tue, 30 Jun 2026 14:29:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 7/9] arm64: dts: qcom: shikra: Add PCIe PHY and
 controller nodes
Message-ID: <20260630192944.GA224708@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-7-e1a721eb8943@oss.qualcomm.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Jul 01, 2026 at 12:32:49AM +0530, Sushrut Shree Trivedi wrote:
> Shikra supports single PCIe instance with  5GT/s x1 lane.

s/  / /
s/lane/link/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
