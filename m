Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF85960A3813
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cFpFfq2V;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MfGvGrX1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=03nOPrrrKHNPM26+KWVQAQdgw3VrNqTj8YDsaFhd7hY=; b=cFpFfq2VcYT4YzvQ+tx9KHNa4w
	ppmGehKM7tPTAWu37z2o+nLuMKfjVdTfcYsq9ux06Ji3sc4kTtXF71FsJa+kCbH6jZIhb/+2O/P+N
	L+vUwqTVtruNFOy80l6S8TpItDppzlK0jEvxSIPPkHecPZvinyUXZn8w+nGInevIt3KwzuJy96Ab7
	SjsNYV406msoabOkDUYmhyX5qltrfuoTEq/seQ//2dL/KeKmIeEla8kL1jA2xvbpVTMkvuVwHV4Il
	7X35CiOJDe2nNuFqpKJ1BDIV32IVbOCnFYdcCSa5UeJ+t0r4009ySBn8QiNxMiPFMdheZbDu6iaDN
	v/SzUZWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsYd-0000000Gh6K-2Kk8;
	Mon, 02 Nov 2026 13:58:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsYd-0000000Gh5J-0PZ3
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:58:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6DC906053E;
	Mon,  2 Nov 2026 13:58:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C23091F00A1C;
	Mon,  2 Nov 2026 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793627922;
	bh=3QToyCmrd5g9TGZqXK1YjfzTCUE1p2g5NVCSB13BeBQ=;
	h=From:Subject:Date:To:Cc;
	b=MfGvGrX1P1+cglTbpqI1vZaM2K0nI+uFQ1+36cUw/jgKT8EnDsvizrgwSWVztQaaz
	 YBAKTZUpffdCawP/zF/9TKSp1uUW8TabuqWV6SYKazBOsO0X9Apj86CIdJ/4Lzo/BF
	 YpCmSTbhNlFxE18bjNON+4f7MPYHzhVM2h34EF236Uz4VBlbQoAGRv/M24ZKCUYe90
	 5AoIrEiOR/+kxotVjpaeLnzQuD4UQYiS3KxQLUV9fbTCPalMnNn6asusOZgAWmxhwP
	 bjnUhjXGDBJP6gcVovnm9gYKFxG9Dujjn5lEvkK2qVn9f8W1nEkezfrIJVtpk0x+CZ
	 P9ck4zc9M4SuQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH 0/2] Patch up sc8280xp/Glymur USB3 PHY sequences
Date: Mon, 02 Nov 2026 14:58:35 +0100
Message-Id: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBG4auQWdukreKCqxhjmPKDw6JghxITw
 t2tsPwW722kSAKlptooYRWVKRa4S0Xh3cYBRrpi8tbfnbPeLNMswWTl60vxyYgBhrv2xr2twR5
 Uyjmhl+9xfTxPa+YRYfmvaN9/6+0KoXcAAAA=
X-Change-ID: 20261102-topic-usb3_sequence-bda4bf05eb2e
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793627920; l=561;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=JHvM33Z5VlAyKZP57NR5Bvtojwx029Z16yzsmS1JpoM=;
 b=6026gVPkyhGc77uIUhjiHsW3oUGbTen/5nZKBU8XdN44MJCpCROlW0TRgDonw7Bd+1LfnulDr
 /elvGuaAXo6AMgM+/CrgeQmBkYzNyCzpaTD5pSSujO+snDZLP/SzHID
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

Bring them in line with docs.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (2):
      phy: qcom: qmp-combo: Update Glymur USB3 settings
      phy: qcom: qmp-combo: Update SC8280XP USB3 PCS settings

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 65 ++++++++++++++++---------------
 1 file changed, 33 insertions(+), 32 deletions(-)
---
base-commit: 7649ba73f9e7e1e04d0b46213e39c79ae09dd55c
change-id: 20261102-topic-usb3_sequence-bda4bf05eb2e

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
