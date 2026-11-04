Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F35606A326
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 07:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gpQTMe/E;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nP6vOVj0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wyoxMPAHiahGvO24abek9QoyRy5EyRFrxoIeiS1Lamk=; b=gpQTMe/EoAu9oTJ+JhOBgBCg5V
	bg1VcHTBEK0wjP6/GOrTkH2Yo8ETKIm486txKZFgr34RoFUF2bSvDfehOhJmS49YQ8jO4VUCJVgGQ
	aXFq7kDhqRDcb3bP1hSk2g5b4oLWBjev+1ArFZoKkWg9gPD4zS/B2epUKBcplhkWr6RvguX62SwxP
	drqXyVk9hU/HO+y39HXy9iZuxXDLpB3oN81pWUQKvyTTvpSJn7nR/NBneTftwmsgVbZVPkm+cUB4D
	J6ao/LgTUZc9X2ndgjDyEm2eG4wErDfh5b5k2P43UO3weQVuaKPHDfpuGYq/sSVBCETUrrhl6l5Mz
	1LW2fTSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVPN-00000004Wvq-2Xdh;
	Wed, 04 Nov 2026 07:27:45 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVPL-00000004WvN-0xX9
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 07:27:44 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3ac78f4c10bso200340a91.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 23:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793777262; x=1794382062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2eIrsdGclmsUkVstChbgZeSp9y9jcEYAK+IEJRWBFtw=;
        b=nP6vOVj0I/w7lDbPnTOLpxJi7LFl9vCGdgHa9uqDN9uS3hiuEEfFlsVAHWQLQ/169a
         rDUBpPHB34mwWYxfSd2y82G2sdl3a/P4E/eUEGFf9GdPX4NNf2iO+kb4JYRNw6ptEe8U
         VbowSrgkpy4sPQDX8ZUyBURxtx0JdwwnMqK+nxaAx+joJhHRUA1c5Y897nq3pdvhszqO
         eE7aaCkD30odbNxqZJfcMcn9LoaplVQbUO7eYHB3zsdJvZR5Jf6fyg5pBrxaNcoHiKuB
         TqXUyyRcVG0n1tL4uxgwosmplhAwmiEy6+BCGleL02SXFDv+5AGmZ4fOGT0TQpso39W5
         fdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793777262; x=1794382062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2eIrsdGclmsUkVstChbgZeSp9y9jcEYAK+IEJRWBFtw=;
        b=DZgNi5qlyusK+pI806oNHd/cLau4kDZbAxTnXFmUnyZ/dD/ks0H715UAcwHCcpJww9
         lZJzhQeIln7ka8e09R5BUPM7udJs9/I7eCVntmdg/Oec8T79rT2xvqCuC1WSisZmf5dj
         jA0vqfvaqqQHVn2caakaVP916JzEdMhDc9bjIt53NXmPSNZJtSeML2XhHBdHiZQJ52En
         QYG0+d5suE2xuGBBx4VzD0rzxODgk+N4cK23/+t+mAWkn8CzVkMjxBxCVWCaiK2oFaY6
         jPqNa+Pz/YMYe7kPz/zjRHF2htlcW0cT+qZ8+XYsznAohZoVvwFn0c4GWsUEK3uh5etl
         RgoA==
X-Forwarded-Encrypted: i=1; AKwUvByknVp4q246A1QklsPNgszUJgyqGy5G0189egjvwSRemcWvTGqiz0CuKaoYjjqYzSuieEjJuljBSpI=@lists.infradead.org
X-Gm-Message-State: APuU4Z8QPeXWby0d7yQ9nAzrIXikyidCyfGhyuvv4hWuhKJLou0WEVdr
	eX2WmpvI8je/FOw34wqQE3CbbwyyS7Mz6wWOqr2O62EzcgA7Jpm5niY=
X-Gm-Gg: AYBFou3EjFEOs/BWd3iEfRfgp6GdokjNi7Lgj60e6WmPcCApJRyppl4vFVdDcZfn5uF
	YTyG59yeeExI3v/ZY5D7/Vct8mcea8I5/ZC3oOVktYq0BDRcbngAmrXvqfDDtAIqOWEQjhsc+wb
	iEvqfJCKbAnkgBgU+4ozXVbtwc0rYKHwx2rI5rEA1Hdrg//p+qtZoDMLrKehFTXWZGlFG3PptEH
	v7fbqW1n2ElbJyvpCDMsfvKeV9U5CDakr/ZGQY9jvDRDVJYYdCyGU/7sHVknhRh3cO+JDi47hpq
	zKdLeaOVt6YMXIvj6P2atR2c9/rmJ9L4g5QbUQTRLBuTKNIYDpEii7pIayjWDxX6PgrK31vbaZK
	CUehQgk3qyt90lAlYNeREM6whkBx6NCAVp3b5L5zEVKbUPnBfWwdLjyf84iAVKGClQuiK/oM7z8
	6gDhrB8Z337ppqfSlZd/RRD0I8aWDlm0buUQ21QqFrE/ptQQrWDLvUjqUxrRdqKBgJbwdahCb3B
	St6DMabs9rklVw0miTuBImBFaqx+flOXnoE32xoqRqiYGPKJvgdw+zmqwAXzjLhPnLq5HSjIx2w
	YobQmaThTa5TnkV3AmsDSvP7dPp76zl23PmMrng0SC+xCzZCVMKMp+259x5j+sy8+RztCNqKPeN
	zzHB+HWdHkGbjKA==
X-Received: by 2002:a17:90b:3951:b0:3a4:945e:bc33 with SMTP id 98e67ed59e1d1-3ae89798089mr12661430a91.47.1793777261725;
        Tue, 03 Nov 2026 23:27:41 -0800 (PST)
Received: from freddie-kane.lan ([71.212.222.246])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b07c7e087csm8019210a91.4.2026.11.03.23.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 23:27:41 -0800 (PST)
From: Burke Cates <burke.cates@gmail.com>
To: ccortner@gmail.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: edp: update v8 power-on programming sequence
Date: Tue,  3 Nov 2026 23:27:37 -0800
Message-ID: <20261104072737.3489383-1-burke.cates@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <179346367993.44447.8683103034067826560.x2e-share-edp@gmail.com>
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com> <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com> <fc3d0dfc-20cb-4289-a0dd-67ace50d42d8@oss.qualcomm.com> <179346367993.44447.8683103034067826560.x2e-share-edp@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_232743_295585_2AD33599 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Oct 31, 2026 at 11:24:31AM -0500, Christian Cortner wrote:
> Writing the firmware values at the end of power-on, all 120 enables
> over two boots trained 4 lanes cleanly, and 10 of 10 resumes. Which
> register matters is not known. Happy to test a revision.

Same result on another Zenbook A16 (eDP at HBR2 x4): v7.4-rc1 with
Bjorn's v1 as posted (ldo_config 0xd0, not 0x91), out-of-tree Glymur
board patches, and your five values written after DCC. Link enables
with at least one failed training attempt, over fbdev blank/unblank
cycles and boots:

  without the values: 30 of 400 enables, 8 of 61 boots
  with the values:     0 of 500 enables, 0 of 162 boots

One dpu_encoder_virt_atomic_disable() "enc42 timeout pending" at a
blank (1 in 500) appeared only with the values; cause unknown.

AI coding assistants helped run these tests and draft this reply; the
results are from the hardware runs.

Thanks,
Burke

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
