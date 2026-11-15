Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24C0606A890
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 20:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=n9DDXvLb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MRCcmoq8FxHL861WcdB91hCwDZCwY58a1E0vASYo7aE=; b=n9DDXvLb0WuYQUSUgVFb/jKKby
	iC60CmZHR82tRWUbvhHsKwf4mhug+ZTOs4PXHHcYq4ew7z1NLuQDblG7QRad2kPMGSVqbCPQxwgtk
	3SQkwfBGgVq85WWzWF8WiNix0Mt7u+4PtHW/uqrHjRyikRk+rmq4tqBXDAN7gfgIx1QWw91ghnbou
	MHFcPTMEvQp8MDTEi7p2Hg25yFiGSj6nQNr/5/CCJR4fz5d2SMqEL3MxWuPBHeMsJzThbZc3nWs8/
	BVJ1bkJFEnOMT7I2m/Z4gfgaJR+XTzEZdfDVZJO5RAJQlHgSBdF7FDVpmYucIQQHyVK+3cUcDcRO+
	NG3QsMcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSh0K-00000000SBR-2UmH;
	Sun, 15 Nov 2026 20:39:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSh0J-00000000SBH-0wmD
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 20:39:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F29C34343D;
	Sun, 15 Nov 2026 20:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C1AB1F000C4;
	Sun, 15 Nov 2026 20:39:05 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] Fix up AON clamps on qmp-combo-phy
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
Date: Sun, 15 Nov 2026 12:39:01 -0800
Message-Id: <179477514161.135135.15496134606156270634.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=549;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=CE9Usf85/MZHkoZKgSpfe9pR+KrAbG6HfA4cqMAWr3Q=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+hhoO0zCatM3Dit24TYBspItj3Ja0VYwmTW17
 smj+vasr0qJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoYaAAKCRBVnxHm/pHO
 9dZTB/471eIwW+6+m7DLfD8yfvSqizbOeA06WnzmsbBlpJ2XIH+OOfnJ7wLSDIDY9wE9qSH2pQi
 IEGxV/PWLeblkXDHyWWeV+u1YWMXQfA7wFl0hgT9dxsduWikem45rX1Jf7DAob1h7MTkAvjxgm5
 DX0BRer1Qd4dskKp0kl1Gu5Mof5h2sS6uADiAoJadHwd1kj5mbEzrSb1dz8XsxtDy/o/350M0lY
 2IeFPaK0kruDuP1APaPe4glm2gosIQgo39zqQTnGzjwIC+nGXBQaeOi0EDyceAbGXTlTsuM1MDp
 gfCCz0rXUCRFunnGfOOyJdzZHOfejqTS8qK0BzmISxYvykTv
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

On 2026-11-02 14:59 +0100, Konrad Dybcio wrote:
> Various platforms have apparently not had the AON clamp writes end up
> at the desired registers. This fixes that up, based on the robot's
> findings.
> 
> Depends on (reviewed and ready to be picked up):
> https://lore.kernel.org/linux-arm-msm/20261023123512.1912-1-26rote@gmail.com/
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

No Fixes tag for any of these patches? Anyhow

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
