Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9377E606A8AD
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 20:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jmQGX8Ir
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=C46c+KLnwnnq6mvdNVwrPsPFfdo8Vt4z/8oTiDNktnY=; b=jmQGX8IrEMJrCg3dRHqqDFwzjG
	JS26V++20r8+jGqa7C1OR1yMVpA1mwe+hL9e+4QHo0QfUWLumrzayEuYjV7Ur2lECvcasMf4iFrhx
	JhSmnV4uargDSs56EsCbK+NbITP3IcCPprjt1K9pgpSKNqCH0cLobjVPH9L8Nj9soyyh9zqyEZexo
	LK7GpeWLm9GNawipEzKrBExz1txzWaH06OQmYRE9+6mC74S2lbD3A3ExdNfHpUtlNc7rI8bP4Nz4z
	WQjQGkyv17yB5RcU3qCtQqgrihav32I8v75sHHLQV8nUUIarjp8bVVnioSEdDj75Hi5pQEOTlFKRy
	rqcfrh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgyQ-00000000S4k-0p9C;
	Sun, 15 Nov 2026 20:37:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgyO-00000000S4U-2TDs
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 20:37:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F30B429C3;
	Sun, 15 Nov 2026 20:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE33B1F000C4;
	Sun, 15 Nov 2026 20:37:09 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] Patch up sc8280xp/Glymur USB3 PHY sequences
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
References: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
Date: Sun, 15 Nov 2026 12:37:06 -0800
Message-Id: <179477502632.135135.2416311636885924719.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=745;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=gVEy+IJfow4CiVU5TFj34jGJiXh3Z1vjzDw3hWs1S2A=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+hf0C6r5kq3RoZQ7NJLwMJcG8ab6mbpJKy3Of
 clbbEeKvaCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoX9AAKCRBVnxHm/pHO
 9bQrCACRoBUH1H+TDo/Li6AHGGYP1h5qYaD6A6iQwQSKX73qSPziRrGiLjN1MiILr71VoDsofjV
 zLxanc16I/xPsnFhy+Ay552qwcFNY9ViCFq1EA5PICwXFO3PYasQnxSnKfOVjcStRf6T7OAdW73
 NMQDKhl6egk7b8y0hyS6fbOVYEZbIbFZLwCuHqr29U5zq2fyEcxn90uCvXXOT7yEUnqoBNVEkWh
 DynkeQ6QH8KoTnbhMmAXTaq6bfNOG2JVUte9xcAPu0p6cmPFnjEJk2WVESudnKZUsviHMBzndKr
 +ZQ835Kqd2SgDof/WWMgOrlGmG/e9/bxA3g6C8c7HT3T/pGx
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-02 14:58 +0100, Konrad Dybcio wrote:
> Bring them in line with docs.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


> ---
> Konrad Dybcio (2):
>       phy: qcom: qmp-combo: Update Glymur USB3 settings
>       phy: qcom: qmp-combo: Update SC8280XP USB3 PCS settings
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 65 ++++++++++++++++---------------
>  1 file changed, 33 insertions(+), 32 deletions(-)
> ---
> base-commit: 7649ba73f9e7e1e04d0b46213e39c79ae09dd55c
> change-id: 20261102-topic-usb3_sequence-bda4bf05eb2e
> 
> Best regards,
> --  
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
