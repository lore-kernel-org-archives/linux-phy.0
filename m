Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB7CC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fFhH2xdqj14TWfBDblOaJWII59yYJqlYcMTnq/CS69U=; b=Dr6qUDg5AOErTY
	pEda6M6seFv6sdtYLF3izbgcpmspKReawGDvn+2OgisCkb2+gwJ3b6KmO02oBebvjT1VpF6eFWWpM
	6PcF1wAxogkQKoR5p8PZjWR3B2Ij4/GKixpcZJnM8deEBjEnOL48iOvCdsblx1F+I4GVnkrYe645Q
	yU6XOCQktTNsrVeX1PjNMYxn1X8wHavSTF5pVZUvD0Tfz9P5ufcewDzojyUwkw5pejd2UUFLfGCZn
	96urdUIKB40qmVq3uAMKUuF6X1lW+GzoUQVgtMwES+A9ubajpf78qYBmJOniaPtSErzUx5nvjbbYG
	PpQkFC6kvyZ6Sdgy7WVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee8U-000000007lg-31mj;
	Tue, 30 Jun 2026 19:28:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee8P-000000007lW-1AEq
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:28:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7DBC3600BB;
	Tue, 30 Jun 2026 19:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 066301F000E9;
	Tue, 30 Jun 2026 19:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847720;
	bh=3xUokEw784jqQMjsVSWEIlpIvgdkj7DJezvHEDxld74=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=lSJnHV0+4/HlK6Dfa3TlgXQOJUzfXRh45Bll5pkrCzjICnIWpk4nu2YnHV7Lwa/yL
	 J25kjic5DcursnlXyfXShrJOlzDW/rurYoFUewp023b3X2NqZGkeWWKRUnOdpJLuHQ
	 nYw6MZjcQacksfZH7wrSO5hWgd/oV9LhKARcy8+68nTPQ/GDz2LkMWuCfGes4NwoZB
	 zYDGKh5uiy8NhomL2Ct1agvdovSbFp1+uQDfWHScdJwlLjZRJVBIS2q+y7NKiQSsLL
	 651919KORECiUqE0cKqyd+SadUX2xnNI7+lyCNiksRDIq0D0GVHCiJCZxBPel0BfKz
	 J0W2jSfOvTsbw==
Date: Tue, 30 Jun 2026 14:28:38 -0500
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
Subject: Re: [PATCH 6/9] PCI/pwrctrl: tc9563: Add API to control endpoint
 power and reset
Message-ID: <20260630192838.GA223662@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-6-e1a721eb8943@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 12:32:48AM +0530, Sushrut Shree Trivedi wrote:
> Some platform utilise TC9563 GPIOs to enable power and
> control reset of endpoints.
> 
> This patch adds support to parse endpoint reset and power enable
> gpios from each TC9563 port node in the devicetree. To configure
> these GPIO's during the POWER ON sequence, two new API's are
> introduced: tc9563_ep_pwr_en() and tc9563_ep_assert_deassert_reset().

s/Some platform utilise/Some platforms utilise/
s/This patch adds/Add/
s/gpios/GPIOs/

  Add tc9563_ep_pwr_en() and tc9563_ep_assert_deassert_reset() to
  configure these GPIOs during the power-on sequence.

Wrap to fill 75 columns.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
