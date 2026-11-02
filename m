Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806260A382E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 13:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lyf1YuYO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Dzj/uu64
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ZYTGEih4oyGXhrOAoYmYrKhlJquZBQjJWiTOAoof0YY=; b=lyf1YuYOFYk/Ow4cdqg7myj5sr
	Ar8s2V4FMcnP9qxb7sIxY0LFxzKfxb4jM5VKMJbf9wp5zWgv4dOD4DBJdC6Lk19E2oFCp/hMYke1f
	8ye27EL3Nj8XHkMMzHc3fpKYXPG2KuSNWir4a5Si4N9+oiydLDNmQs1aafxY1uQdOPhYbmAqw/AYU
	w2ng/9LgYqo+bWLas8OrhTE0njqF8Z5dsutTabHo8pFcgTa44MnF/Hun3G686KPWPPn0wIyCP8mOz
	77VDAHBtrFaKyra3m5oAslp6D/sOqM55scpv6P0ovTx40DcehfxjlYGdaHPwMghc3zRYNXCtjy+H1
	mQ4NkplA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZU-0000000GhNP-3VwF;
	Mon, 02 Nov 2026 13:59:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNsZU-0000000GhN5-0ExB
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 13:59:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CD55C43C6A;
	Mon,  2 Nov 2026 13:59:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EC3D1F00A16;
	Mon,  2 Nov 2026 13:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793627975;
	bh=5D+sICZvhFnCjFfCw1VmJULsIsceti0DLUKwMTNcXyw=;
	h=From:Subject:Date:To:Cc;
	b=Dzj/uu64jL9b7TkhbTE0JiUIe3j29Gnwt/BWDvw/QF2MyCEEzkuNM1XLWdekkm2da
	 mzPke2g5/TPgLpqEIjxKxN3CiIAsOIQKDwUxLCRUktWFw+y6vzkYHD5+290FTtrJfv
	 pl5GYQSVgeBHe/NmMPgXdw0HjBr7+n21qld0k6apbSCq2Vlq9S6HtIeiK1VP449vku
	 YdLOJGxu7aWTATuP6UIj87ZJ2V4fx2xpUX7MdmLPs8IZjzlYyBdUs+M1l/J7QHX9lB
	 zwCXdFqHlNGTbrReO8KPcTatEIOwiCADxHQSQi4wgC0OMWDWmtuaO81aibnyXnGsLa
	 VCU3df1R9knig==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH 0/3] Fix up AON clamps on qmp-combo-phy
Date: Mon, 02 Nov 2026 14:59:31 +0100
Message-Id: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrBvIBA3Yq5QiMY46pSZpoiKId
 zfV5Vv8v0OiyJTgWewQaeXE3mXgowA7GjeQ4C4blFQaUSox+8BW/KbQGO8a+zVTEKhJ15XsSpQ
 achki9bxd19f7dlraD9n5v4LjOAHNbkqfdwAAAA==
X-Change-ID: 20261102-topic-qmp_aon_clamp-16e6950d4106
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793627973; l=936;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=ef1OmLeK2CMWnQe+G8q55VFeGP3F1KeLA44wMqE/CMs=;
 b=e7VQOZt/RzSULLFP0ACSRjmBbDU2FKMI2UU8p3rBagRUqn/EKrMjznTfjGGqb/NloR3uMmvlL
 m22ikmlFmfCDho3uI6DUZFIOD2tAV1ttbXN1fhJt0Gu6QDPpz59hZaH
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

Various platforms have apparently not had the AON clamp writes end up
at the desired registers. This fixes that up, based on the robot's
findings.

Depends on (reviewed and ready to be picked up):
https://lore.kernel.org/linux-arm-msm/20261023123512.1912-1-26rote@gmail.com/

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (3):
      phy: qcom: qmp-combo: Separate PCS misc clamp mapping
      phy: qcom: qmp-combo: Make v4/v5 targets use the right clamp
      phy: qcom: qmp-combo: Use V6 offsets for PCS-AON clamps

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c  | 30 +++++++++++++++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h |  1 +
 2 files changed, 20 insertions(+), 11 deletions(-)
---
base-commit: 63ad76011c4162b0e0e516e5eb76acc554683cae
change-id: 20261102-topic-qmp_aon_clamp-16e6950d4106

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
