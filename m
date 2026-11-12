Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F9E60A262F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 11:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IeJxcUk8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Q/VXGkMM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aMevbxUtRFLv/dMygmdT6o3bzq0e/fVR9zuTTpGek3o=; b=IeJxcUk88y5nYJW03vONaPUIde
	cHcwfV9SMhWqveGn3g9Qvvkchnr40iUeFmAdPC58IqxC1YsQu/AIC/TEAXvkuNON28o4Rnjz0h5m7
	s41FU5vxwQ8bzr4ngZ5wgAJ2iZZRsaw8Zw1wCqb9wdc85EL2DsYz6wELIbLnneEaMMuwKjcjpdBVY
	aqBvKhogOujyr+8OgDBW/D45pEYn3QS4D9qEyvpSQ9fHhwYoI4XPK74wL7RCPaXmAa1Bh0SG1yW+E
	z5A+lE2OkIxEbE2cmmvCRUqZ7xh/K5iNVZHr7Z6gY5CueKSkaj3JM7d9mkxYqXaq9ZjwSmLLN6Hyx
	AYUlxh1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSqm-00000009f24-2My6;
	Thu, 12 Nov 2026 11:20:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSqk-00000009f0Z-42Zv
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 11:20:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1955365785;
	Thu, 12 Nov 2026 11:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 667351F00A05;
	Thu, 12 Nov 2026 11:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794482413;
	bh=M92eLyM5Sw0gwYUIgBq4EZJwQthDYZqVWWHI2GtVQoQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Q/VXGkMMwSnZU5/vlXZvG4MwejYzQM7DZIAWt/7/U+a8QqpWaBrajY76Dxnww3yhV
	 xthV+dAbeP+4qv/0T1NrDe66Qzt9Kp29SQ6HtOF7ORMY/lY14fptdEWKZjGtA/rfEH
	 cxZoYSXZaQx9DeZqtFlaXjoDZIw5u5DKb5/2SISwfFBLd+nemAaWUxrpaGrDg71nOH
	 GJPuej9zqV/bAhSMhDtGyMpwgqxKksqdMpbK51evE8z9HsPCFnoYEsGrGNtaAzIRhD
	 /ELEZ11+ZtSa6A4FB60SZ4vSxzURR6p/CW6GJVraqpqmW5IBEh9W11BndjKs2rrCYH
	 55Gbb1WKeY48Q==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
In-Reply-To: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
References: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
Subject: Re: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB
 Power leakage issue
Message-Id: <179448241104.492462.10336704424380926541.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 16:50:11 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 12 Nov 2026 14:07:15 +0530, Krishna Kurapati wrote:
> On Glymur, it is observed that although the exit call is done, there is a
> power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
> well). As per recommendation of HW team, disable the repeater during the
> exit call to prevent this power leakage.
> 
> 

Applied, thanks!

[1/1] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power leakage issue
      commit: a6d71ecf65b357ae036012bc84b313b2e4fff679

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
