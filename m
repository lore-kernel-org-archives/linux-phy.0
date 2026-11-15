Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19214606A336
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 19:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UCELRZEA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PKuaxVJ0czD58uXHE2AXmBGcxJ4APdDYnIvemZm/Sic=; b=UCELRZEArwMd42pnb8Jof5ik+1
	FCCE1g86YiHN6vWXwmos/NZ/1h8vO+9v44v0aeSTqULpCHCSUZZ+nBGrieSQqM658jWeSV4A6BWvJ
	I/f7SgM04Jr6SWQ/cQTupHLLpUd30WLp4M9Ce9xuZhDTGAANZwqvULIJm/pS5eSq2Ahib/QEJvnhZ
	1GRG/etoweQELfHNckCmv8Ims9magT2s08owxkOMJ4LPmL4RlmXHXGcWLLMHGWEvKaDu0wPjmt3p/
	N6qY4jVJGYfSk72ezGWSiblOI4lF2vX6hRY4I5pevZQlBsUz9R3U9tblXVcKDBr2NSRcCq4XGNmsp
	KJtBnTZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSg4h-00000000OYL-2fwk;
	Sun, 15 Nov 2026 19:39:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSg4g-00000000OYE-0uTG
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 19:39:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AC1FC44E83;
	Sun, 15 Nov 2026 19:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B46CE1F000C4;
	Sun, 15 Nov 2026 19:39:32 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
References: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
Date: Sun, 15 Nov 2026 11:39:26 -0800
Message-Id: <179477156606.132702.14520908453502528873.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4185;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=u5YX6B1rgBteaMlYQ3xEJmuhRJTD0/qE0aiK3+RfynQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+gpwy46M+AR2Fr0X/klk3joJ9AcKwVi4HkKiP
 KofsTGc4l+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoKcAAKCRBVnxHm/pHO
 9Ze0B/9UrTSnuvM8m3o2w6ZPwDFosmvJcHg3HE3y7nVaH+lpDFePIn+2SJNJ0O6rwLZBTT2oRj5
 8Zvpxdpz1ce/XYhHknzdeaaKokvOcBqgVBT0N8x68H1TvyN5ta4KrOp9LjLV0IAsSeLFb0xSPjC
 JtobzxpVbGuOqmgAkzAPv30P9fo8XbuPNBeBlwOw9R2kXNGpZAJoY0N6Y7xG0yfLsMLqHixE0MH
 QvNTmjeU4OZgMWn8Qrkwi78VjMmPb5npMZ03yB8b78SyOKVgcx/pIU8VwPTdTR7OvwYPFwjE3KR
 QbCs0H/9ZYRjVTZJhEqyxa6tTsLDeb/PtlxW3WYe1nILLU5H
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-27 14:00 +0100, Mattijs Korpershoek wrote:
> The Qualcomm automotive  SA8255p SoC abstracts resources such as resets,
> clocks and regulators in firmware. The SCMI firmware exposes multiple
> protocols to control such resources which are identified by protocol_id.
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
> Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
> for which we don't have any information. Since it is not mandatory
> for the PHY to be functional, we have omitted it from the bindings and
> the driver.
> 
> Patch 1 adds the binding for sa8255p. Similarly to what has been done
> for I2C [1], this is a separate binding.
> 
> Patch 2 adds the driver change, which is based on a public vendor
> patch from qualcomm [2].
> I did the following changes on top of that:
> * Use devm_add_action_or_reset() for dev_pm_domain_detach_list() instead
>   of implementing a driver .remove()
> * Changed power domain names to drop 'usb_' prefix
> * Fixed various error handling paths
> * Added suspend/resume support
> 
> This has been tested on next-20261026 with a Ride4 SA8775P board that
> has SCMI firmware (which is compatible).
> 
> [1] https://lore.kernel.org/all/20260617-enable-i2c-on-sa8255p-v7-1-ad736dbeab57@oss.qualcomm.com/
> [2] https://git.codelinaro.org/clo/le/meta-qti-auto-kernel/-/blob/LY.AU.0.1.0.r1-16800-gen4meta.0/recipes-kernel/linux/files/usb/0014-PENDING-phy-qcom-snps-femto-v2-Add-support-for-SA825.patch
> 
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


> ---
> Changes in v4:
> - Don't control regulator, clk and reset in SCMI path (Mani)
> - Rename helper functions to qcom_snps_pds_{enable,disable}_all and
>   qcom_snps_pd_{enable,disable}_transfer (Mani)
> - Add some more helper functions to keep probe() cleaner.
> - Dropped Neil's R-b due to the above driver changes
> - Link to v3: https://lore.kernel.org/r/20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org
> 
> Changes in v3:
> - Applied R-b from Krzysztof and Neil
> - Link to v2: https://patch.msgid.link/20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org
> 
> Changes in v2:
> - Move 'core' as first domain, before 'transfer' (Krzysztof)
> - Reworded binding commit message to be more precise about the various
>   domains ('core', 'transfer' and 'perf') (Krzysztof)
> - Link to v1: https://patch.msgid.link/20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org
> 
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Manivannan Sadhasivam <mani@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Mattijs Korpershoek <mkorpershoek@kernel.org>
> To: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> 
> ---
> Mattijs Korpershoek (1):
>       dt-bindings: phy: Add sa8255p high-speed USB PHY
> 
> Sriram Dash (1):
>       phy: qcom-snps-femto-v2: Add support for SA8255P
> 
>  .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      |  52 +++++
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 253 +++++++++++++++++----
>  2 files changed, 256 insertions(+), 49 deletions(-)
> ---
> base-commit: f1ac44c32cba88ad65dcecd4a279661d14e93651
> change-id: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001
> 
> Best regards,
> --  
> Mattijs Korpershoek <mkorpershoek@kernel.org>
> 
> 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
