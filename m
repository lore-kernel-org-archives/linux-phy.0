Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EB3606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=g+PlG/fR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=d5+xoPg0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZxsmVLgqArIg7XZ+GvuUxD0MLOgQv2c9cJLRs04JY4Y=; b=g+PlG/fRd8Nky7Hzfqz1mFpE0V
	zqohN8MjXLUL3WqZ7qrYMyzPOw9KCwnOOow+zL1GWuB2qPcvastFxiEEyHNqNtv43NI9zXFEeW7Ne
	fo+cZfN3IcLmZkjInikG0ywK4+DiPMUQKYopb6fYSYL5h74lTbDYMBWuumKUKF5uByD4AC5JffsFB
	V3e1ItsmSYVQLCOXgjq5cgO9QvJzoTJVU7Fp3WmZTYlQaydWu+wZONGsjwueAAuj0CFFJ5GH635Yj
	oUpVmogK29lCzR9M/gZ74/5U5zbaOmYtQev5kJ38s+clkpdis+NdL3EAtLEa16VQm7govAh/aY9Lt
	qtPZX7LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyV4-0000000H0bi-3cGA;
	Fri, 27 Nov 2026 16:08:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyV3-0000000H0b3-3XmE
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 16:08:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E5E4E61FEA;
	Fri, 27 Nov 2026 16:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 069DC1F00897;
	Fri, 27 Nov 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795716;
	bh=WneMhUtYT7GCCkrtardTYDdWfz3E/bfhRnNtrw0oie4=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=d5+xoPg03pIiA/Qr2Jv11rbntXxHkQZrIOFEMMUDsuaBJToACpkfuGp9240rO9fVK
	 L51jNBTLeXNQRSe/hZDgRHd2oXlXnj71Gxn3/FhbvgP7XlialsQueZFYORtVK0MwJx
	 Rsx7+zHzgQJERoGC/y8ws+ZUCoTpcyHhH+Dd6mEOwt1J+KCXGy0QnAFslIjUi9dyU3
	 jHw4AugRusIIYkD6KNbQVBPVGa/XVgiGWnbDQUQV8pZW4ZAP1ZfFemyM+hfZ8xZiXA
	 sLqyqVcag1Siy6auSFwSVvBiH8XNql0U4UJRje4xzzZTRnjWRp23fu/K8AxkmYzvF1
	 BM9FTTc4axCQw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qcom: phy-snps-eusb2: Ensure reset is held for 10
 us for QC PHYs
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-phy@lists.infradead.org, usb4-upstream@oss.qualcomm.com
In-Reply-To: <20261124-topic-qc_spns_eusb2-v1-1-9030230a4cba@oss.qualcomm.com>
References: <20261124-topic-qc_spns_eusb2-v1-1-9030230a4cba@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 21:38:30 +0530
Message-Id: <179579571011.13164.13931544386259690727.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=416; i=mani@kernel.org;
 h=from:subject:message-id; bh=cfgwLfB5VjUVyfggamLXHSdb7CKI7ZlEbRTkrDm6MrM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCasBNTF1Go7/hgHfB3+fGB/0H//AWB/N8pj0j
 5YG5hGajGaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmrAQAKCRBVnxHm/pHO
 9clGB/49MrhkyG9hHLJAsfgkiRqOwPSgmtzDTzEO25UesSOPx9CCqQzUHdTiA67KdN3VUDzh6dj
 tSO5/l+yyQj5+VBwSlce3A2lKZnhXK92OIY0xpgEKAw1z+TxMQ2PuWaCJfaO/FOFDCyMpR7/c6k
 JkoRYyMN0pnjGLnwVr5L0a19kn2Bowhk31QDmxnb/1cyOIMlvYzG8AzXAXixKM/Z9qIP3/nYinn
 GOBP1imusEXQWiLzGZnn3b2m23b9CF0VFjU6PITK/DhKEw2KCd+o2t3gmw4gnY5/eEPoQFKqGuN
 xzL7hfCSFr7jkj5vL5x81naMC0Lal0yyZ72Ao9CZCBM5CqNz
X-Developer-Key: i=mani@kernel.org; a=openpgp;
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-24 15:58 +0100, Konrad Dybcio wrote:
> The Hardware Programming Guide states that the POR bit must be asserted
> for at least 10 us after the supplies had ramped up. Ensure that.
> 
> Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
