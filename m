Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0291460A3831
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NjYzorCT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=rbdb/FVL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=GjczBN0t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ly8jvHsKLx/9u0dX1daMpxgRkd5iTPIXrBmTZRz7sLE=; b=NjYzorCT5M8mlasCeG7LpXar70
	iCCf1TQmb88b5aedAEEIjBpDGzuy1A7xRxrWi0BlW/bWra4Ug6ar5xPumRBVYDCOQwh+pzYGjiPrM
	et71LaoAZ2q4ZSQQPjM8QIreQuqAszzxeD3KqHW0xcaFIG7XL5t9L8aZNGQLyPcz+SzZUXwTUsqYb
	faOpijCH/0e4VdgI+nRJnhgp2egqyZnvxQaVKtMXMfxHeIaq84beWyTccnO/bz9eQZ/zU/ZSlU/HN
	qayHBburfFO5KCFPla510w+EbyP/Cu4zCj+ZribBr9IwcS6mlht9Q+38bumZeofSApTJ678CxgZX/
	sx2meweQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000HNM1-2KWL;
	Sat, 24 Oct 2026 03:02:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1h-0000000HNKr-14ta
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sP4ZKsXWKOirRhbwpXuRq25+zM6aYIHZ5krwTSsRttc=; b=rbdb/FVL/nMdK1PBpgHZaoInFW
	r1ZaA+QGw70rXPCv/Jgh8G31UyAdY3bAU9NFA+EwYnbdEemv047hP9SDBPfUpCCgNHoe9ycJZm0Wq
	vw5GLwcr9p+rdZktDs23+KQLwJ+UoiDccS3dc0AiMPaVnLi28DbfzMhPpv2xZe2clwqUMn/iysgIE
	DGio/oQ6Ome4LjYsIy5j7lMXzUG+MilG5j40uxMIewXM/Ty/dZlJCf4F/yqzCy9+rppGMrW/R3bm2
	4IcHN5+2IsiFym+rEmfIcl3KD5p3pmqctPKOcHEWjpkOFG/KABNIUlvdfMH0rQpndH9kvbGVgq4Jo
	fIUs9y/g==;
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1e-0000000B9Mc-1rvv
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:32 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-703be215729so670867eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810949; x=1793415749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sP4ZKsXWKOirRhbwpXuRq25+zM6aYIHZ5krwTSsRttc=;
        b=GjczBN0tDbrudLz7gx+c6dyeJ9hfL7NbJChwQhembnxT2nD0KSz2n94vEbBd48iE9a
         6Bo5ldC2otYHIvv6md4rOm+i4sWzB8KDLvRm7oGwrz9yB1TASrshnR6sa1+kdXwLOobF
         mdQKyPPL3dDZWX1w/xB1nTfzm2kEoHfcavOWrszZArg0tI5KnGyJSshVyWPa+Cdk/+hi
         NsNsQwSj/bTeu8F2QfV3/oQPASDHa4WmHcYfCqJL4YJvAN2ENQGIhTAvsc44LSFBQT2+
         79kZtxaYCNTnFXZw224tOGzDYjxPjVp9OuH23ht9k68ODeyUu27V7vXyxvR2XyZSM+C0
         55ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810949; x=1793415749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sP4ZKsXWKOirRhbwpXuRq25+zM6aYIHZ5krwTSsRttc=;
        b=2ikOJrclZ85mezrHMgC5KfXf5UMI/UgSSyBfAtwNtfihcJvHCYwdMTFT7S5RbOXkth
         /sQXDQt5pnR+8gLqA1sXJt8z1MzwWcrtcSp8hjS3EeVOu8NofHgqK7dEe0wzgc0w+565
         9uoS9pXkEcdbE/GRSjNFHiCGZpDz9uE058GdXTkseJBk//6ydm27vNhjNoMPBoZldC/A
         iSL1QxYfv/Ud87YJs8kGWXgIXvWWztRA91EM86wbjABuAOJcRn3w4vfTUSTcg6ICpy2y
         DcpTIOiyzlidPL3n00C+N7bA30ET6dzIJziYcTtXiWRR7h2RIhA6l8kfSFvMUP/PNCrq
         uVtg==
X-Forwarded-Encrypted: i=1; AKwUvBzo95BKJNExcgZbE5kZTitvbGNvUXNnWmBcTIR1sdXIBF/OV4IWjdzYnu9vClJ5BaFtIbzwJdLql8I=@lists.infradead.org
X-Gm-Message-State: AFq9FYIGPjGtQOHX26WSrSo7Ogj6+sMofu+OH0vYce+FWnYz4vG2NL6R
	5iJbJfKwLMDMQgKhyB6x9khxrKZ5JertS9TbFmqMGtH3Igvl5LCtG/0B
X-Gm-Gg: AYBFou0Nb8hngKVqhf2CvEflpEAvAT1FoV8EYjEHunV5D9j7V6phFjL/EQpgo0FITxA
	4f9cHVftRyS42jgm/NuIOiuuw8LD7kfp3aPUNQAcHCvfEiquObaF0zVfcLuehEvvZu0EIAdjbeV
	WL4TU/4/8x2c8nhZ9rKpFwjrPxcbQY0pALLrM5l/gcaeVupOLSG/E5I2QIqCqtr8OWFaJyzRKcx
	NEFLDjQuOc/7PQr4E31LCHSYMD94xlZ2qpFV/J7Z+7CM9AtmttNmckdVv9OP5pzGEQaMT7fmXci
	z8ANn/meBSEcUhF7QVxsfN+ITSGvsx0AusuBskY6y05MC6dW68GeB3sFEWNNghjczfz//9hLMvb
	VaHjXp7Xi0vyfZzGGQkXN/sQVGwjGZTh6hLtc7w+0eV519te0Bd0L36Gs0q1Jv7fmfBTpehS5UY
	CAjfYRKmSkLp2sQt86J8D1FRaYpDLTP17cRJ8rUSwYvNE0v3jWWnQPxzVmylB3C5aXnRRd0TnBH
	6gKcgwJF1ekgmQzA/9xQkuGrOZCDEH61toUgZkjYlwlufEBbafdoaeAcQDRWZg9GCYltcrbMHh2
	enViUQ==
X-Received: by 2002:a05:6820:c2c3:20b0:70b:8916:547a with SMTP id 006d021491bc7-70ba0f090f6mr264783eaf.65.1792810948906;
        Fri, 23 Oct 2026 20:02:28 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:28 -0700 (PDT)
From: Jeff Roach <jeff.roach0@gmail.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v5 06/11] phy: qualcomm: qmp-combo: Add v8 PCS-level drive level tables for Glymur
Date: Fri, 23 Oct 2026 22:01:31 -0500
Message-ID: <20261024030142.13643-8-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040230_631229_FC7880E7 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 01 Oct 2026 15:04:23 +0530, Nabige Aala wrote:
> Add PCS-level drive level tables for the Glymur (V8) DP PHY:
> - qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
> - qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
> - qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
>  HBR/RBR
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
