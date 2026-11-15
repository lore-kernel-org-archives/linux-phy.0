Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A9B606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 19:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z1AJLMQ7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g+5eTfeIQXVG+DOkIGwYoTW8EcXFH2WrkI7ExzPylO4=; b=Z1AJLMQ7NX8QCHVhvRbo+KsuMp
	mgEWc7a01I9iQjsAvwJ2cZvs3Dxiqj69xphOBsbn9ceGcV2xiJV0aQdhPcGv6OTCJ9Uo6HMmPA1BZ
	rdjCbfBW9zPtynXjo0wbLpgju5oATCUCJhOlDWFgaUfd5NY2DeqEWQF49gDprYn2P1x2kLyUMHyGb
	ajqhMvkPWxP5MvZQNO/NwiAG91deBQSTLEs/KJuBU+p6DKdZrg/gI/yu2PsPAyVeDLgTdGYZZfNMy
	wFhOZ4ifDe/KX19P/grdLwbrJxBToF9CDXELs07v2wUh0/nflZpRHvx91H8DmxYjsWYg/U8Ml/w9m
	QhBQBjQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgAK-00000000Odj-0mCo;
	Sun, 15 Nov 2026 19:45:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgAI-00000000Odd-0lad
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 19:45:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2AD00609E0;
	Sun, 15 Nov 2026 19:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2F321F000C4;
	Sun, 15 Nov 2026 19:45:22 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: update offsets table for
 x1e80100
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Tapas Rana <tapas.rana@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
References: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
Date: Sun, 15 Nov 2026 11:45:19 -0800
Message-Id: <179477191938.132702.13137454785343235801.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=762;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=JRUjBJXo+GEfXop0V8NK49VdWI5pwUUQAk7AQE3FkZI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+gvSBpFntFsicBl+nr7S2MAtRjt2KJYNvqFG+
 w3g9FVDOrmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoL0gAKCRBVnxHm/pHO
 9ZmaB/4naZcfHpZ/Es4f1bIYGrXJ3XitoD9kofj9bvPqgNF6RQ3gAPeolQ7LocGLtU283VAoq7c
 C5dQLqw/MRpBbMMc9YDng5pbJdfN4A5vFQUKbl/z9xPysJ5YZV6zeChF2YjOxLsSjngtFIMElJp
 QlgqvhyOhI+InOajCpKgXRor3+9MHeYm1XrQRQEGDgivUXQOL+MNhHg8RBzOCQfX4sDCuywPxOY
 /zYQcJYPg++RaItUjdftoHMfFVO/KmfykWQkD22I7GpZVqvTOfZRDXynratNmhosHWX4zREkAGv
 ueu6kO13e6gv7FYFnwTCQhbI4fTRB4ZY/7X1uCNc9pD+7yZm
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-30 16:24 +0530, Tapas Rana wrote:
> x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
> places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
> it uses qmp_combo_offsets_v5 currently, which does not define the
> usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
> autonomous mode falls back to pcs_misc for clamp control.
> 
> Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
> and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
> through the correct PCS_AON register space.
> 
> Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>

Missing Fixes tag. With that,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
