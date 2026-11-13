Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD6D606A895
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0vN5/SnW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fObJOcqr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=T5l4jzo4PR71Z5cpB57bcaiUhpFsnO6+SMHpj26hCyk=; b=0vN5/SnWMEnL4YZ+BfX1V/ixW4
	gmXMfDjqpR/E6C6orujuPQ0rD64qc0EhEIUJxJHvcW0S115/MVTPnofs3ExnQNpELc6H+1nK+HrnV
	UiYygFZSVEde5KYr0xsTyweWKFwugjmiwA+VYHTiwmg+9rbEoXiE7aXzmyOM1m2yBgpC4moS0nH2I
	85V392L36aUcpFiUZlJVmUPveC/KcOvBxP9KjTWxQ43dzYZiE9kOC6UWVKpvGpvZcuXBsQYl4Foq3
	+55OTUSTaYNP7s9B3PltousmJO1Oem5se/uZS+P2CEakzxuxvMUW7F2K64kAOPs9QAsrMVvnBLbYz
	lJFdIL+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoPZ-0000000CLS2-1H4U;
	Fri, 13 Nov 2026 10:21:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoPU-0000000CLQI-1stO
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:21:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CEF666266F;
	Fri, 13 Nov 2026 10:21:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 105AB1F000C4;
	Fri, 13 Nov 2026 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794565291;
	bh=A5Fsa6np7bcmClkXRjxn4FFE7aVHpfRJ5ScRIfaHxb0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=fObJOcqroU1AFQY7X7MkpxbVFjOvCNRRtEX3H2q9c2I3m5UesCPkUh+oz8h2PRGnk
	 V706fJSIVT6Tj/fBY3pDOwdI0B2Ja0ZLIisXRLZFNVV0afBjEhYizkCtCSQsPjOYAM
	 W23b3ksHsXmta9bRCqnHdca/8zar23H3qODcszgdttiJh/ONd8UgvXKmiOiova8+RC
	 B7K4nhlJNWxbYMcUhTyAQl3Zn6EBA0ivmMVeohkQvAwsbwfslvf/h3Zu80UXxGIZiC
	 dGDb5GQhfzutP+dAng7ZGnh4zG7Di0l0ZY+jP09L3LGwwa3zULILVMBIgSFLbU8x4+
	 LOfIS46nMhI2w==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sriram Dash
 <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v4 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
In-Reply-To: <20261027-phy-qcom-snps-femto-v2-8255-v4-2-874023825a63@kernel.org>
References: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
 <20261027-phy-qcom-snps-femto-v2-8255-v4-2-874023825a63@kernel.org>
Date: Fri, 13 Nov 2026 11:21:29 +0100
Message-ID: <xhkdbqzgpqbfa.fsf@mkorpers-koolstof.csb>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Mani,

On Tue, Oct 27, 2026 at 14:00, Mattijs Korpershoek <mkorpershoek@kernel.org> wrote:

> From: Sriram Dash <quic_sriramd@quicinc.com>
>
> SA8255p platform abstracts resources such as resets, clocks and
> regulators in firmware. The SCMI firmware exposes multiple protocols to
> control such resources which are identified by protocol_id.
>
> For this USB phy, 2 SCMI protocols are exposed by the firmware:
> * power domain management protocol (protocol_id=0x11)
> * performance domain management protocol (protocol_id=0x13)
>
> The power domain has 2 indices: 'core' and 'transfer'.
> * core controls the regulators, the clocks and the reset
> * transfer only controls the clocks
>
> For example, to power on/off the PHY, we should use the 'core' domain.
> To disable data transfer and keeping power enabled, we should use the
> 'transfer' domain.
>
> Add support for the SCMI firmware-managed variant in the driver.
>
> Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
> for which we don't have any information. Since it is not mandatory
> for the PHY to be functional, we have ommited it from the driver.
>
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> Co-developed-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>

I hope I've addressed all the comments you had on v3.
Could you have a look please?

Thank you for your time.
Mattijs


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
