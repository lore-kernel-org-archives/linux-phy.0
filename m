Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD5AC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 04:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FP+4rY13jwsxddB2siJzpj6relAM0P5HWQsonZRdwI=; b=f1s3FtfWkWeymY
	YRnwlNuU+glplXRXsy9rkrrJjn0uGZgPeA+DXgfOBqvtAxF6DEcujxyZlSljSiEomGxrRbVzsCk2Z
	KNF7RVHcvNvXhSD636Kunw7bcVPq55yqF70+2VHL9Rtsr7rWUm9ODVgtyM4TCRV1qJV5sEZ7FKi3Z
	T88l/jC8nQYINHeiqOW1SwvQvgLs8DnH5pENcZU5PG5B0hhfu4XTzXKM5HRRvfXlYpepy1+0q+s9x
	DEo9ui1LKzEiLZUjEV1luB1drb7SwqtusJ7EdWnlD2bTjgNL6Gn1SnnlJ0Apk+8IvMZxlRlttnGhF
	yjI36yQelpGl8LTJG/Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjuQ1-003HNY-2x;
	Wed, 05 Apr 2023 04:06:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjuPz-003HMh-1W
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 04:06:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1063163B04;
	Wed,  5 Apr 2023 04:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19089C43324;
	Wed,  5 Apr 2023 04:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680667602;
	bh=F35Yo8CMdTUZ+xGUntt/U4RBF4z2aepfzc1/ck9Ojxw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JdCshkzEhkUcabh3ygObV5AxGeiLE0Okvfc91ka2CufTi/UjCM8Y4k6kI/R+Hd0Tq
	 M8y+4ujE0Af8VrxBK6upf7RGU+hgRXQRIb2AEyLYdRAZP3uCGWjv/mXOAEcl39rNXK
	 dP2RX6PzQ25bdLHZOnppJ3huYrVZeIY3R4aGIrDdIct76sBXW1FAtnFmPzE7/FTFp4
	 LWUfohWz3JMhkCk2He0rDqoELE8EzADxOogt7uTIeWOBg+5sqIj7eIijLa4LA4xgz3
	 MH37HL3rvP/Qx8+2sZfW80KC0Pwdo5gjrAyb3WHfTspMGO7XmWEVDvt9DeIANL5uuO
	 3eDKFIBUGPTgQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgi Djakov <djakov@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-pm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Avri Altman <avri.altman@wdc.com>,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-phy@lists.infradead.org,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-scsi@vger.kernel.org,
	Bart Van Assche <bvanassche@acm.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Subject: Re: (subset) [PATCH v2 00/12] Introduce the SC8180x devices
Date: Tue,  4 Apr 2023 21:09:11 -0700
Message-Id: <168066774419.443656.6508694636390869164.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230325122444.249507-1-vkoul@kernel.org>
References: <20230325122444.249507-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_210643_546276_92453EDF 
X-CRM114-Status: GOOD (  11.08  )
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

On Sat, 25 Mar 2023 17:54:32 +0530, Vinod Koul wrote:
> This introduces Qualcomm SC8180x SoC which features in Lenovo Flex 5G
> laptop. This also adds support for Primus platform as well as Lenovo Flex 5G
> laptop.
> 
> I would be great if submaintainers can ack the binding patch so that
> everything can go thru qcom tree
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: firmware: document Qualcomm SC8180X SCM
        commit: c78ad8597ed961e822bf86ce7f1916dbfba255ef

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
