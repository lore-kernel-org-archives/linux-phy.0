Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F70606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZEjHwL9O;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=XFV/wMUb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=THMQ4Dr5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OcUrJoGhXjfhtojAz9puvBu0yPWd1NL8eTg9pBGlZbo=; b=ZEjHwL9O5aansQgTxfzMg8tTxs
	bNUuC9O+p7LmWlg75igKDyhZ+9YAe6d+LBzRqfaxn3Ed8xipRBNDbGZrYx88SYjvPb5NbHE+19Qsq
	h/wb3qlAFCmeFE6zyKorICUGEshB5TS9Vf95TQFlhSOdG+HlSsHvfBsMA684yOjmVhwMAW8DIuPgF
	KO+ZNjYq2KIPNmlbQKdNAmlHmo4GgQpSnc+zrUdyk3zz1y8aDPQ0OVCK0JwfuMYN/h+hIXVlUAs4W
	8CKCSV9t6M/wxIZwimee7dJBpbMUUSHt0EeYOpLvb5DJ9WVBFAc73pePJ+nidMctnZht6Xeqv2g4p
	0Lq3HbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1y-0000000HNPO-3rup;
	Sat, 24 Oct 2026 03:02:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1n-0000000HNOA-0zPV
	for linux-phy@bombadil.infradead.org;
	Sat, 24 Oct 2026 03:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GbN4SqJ4UovFCwps805z/P2L2TfzFeTdUNr1Xb5RGPA=; b=XFV/wMUbETRLdaY/Jr5UmmfP7h
	j4aMy4Y0BPmDu14mtUmi0TiNpMT8veDXmSWamoSUXcq00vayq1Gr4HcjXPItIVl59SwrFHw2Ejefp
	mRxGzon747T6Y7s4Bk+O4WvyDkEfgL40SQF1RtITR87yaH64N3pgWVCElWlAsh9hxqwSg8UjmyVI8
	ifMsJbCcNEib79AN250/o0qLyGaURBDvPV3HR8U4NDFvLhQmC5Ugo5/UmKCFhAy6e1Z8YYD7zyrwp
	m4pcYD8aXDdBCMowOgUkszofNShmLx2Ln04IzQ6UIRuIFOu35kfoAvHMYegMq82ibSh1G4puoOqax
	hkeejR3A==;
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1i-0000000B9Nh-3yxg
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:37 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-6de1ca1b05aso931972eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810953; x=1793415753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GbN4SqJ4UovFCwps805z/P2L2TfzFeTdUNr1Xb5RGPA=;
        b=THMQ4Dr5kslw1jmfnU57qoDeWNGGgcMs+ioXUHj2fdSwStZ829QESuqHh3yPHxSKBd
         eHXXNLgk2m9l+J2dYziduY9GAFP04gg1Ko89mRzvsgyCGVO6wJx0MC4GF476I+9dY15V
         lMQ1qCcfBbGb0Yhj2yBzfCqtQP5rCkD4OUXEyUeui+VOy+7LQdBYGN78gmL8y8aTA4q7
         WxY+PVpBp8EHKaBQFaE3pNd3ecB0FwP14BOJ9/NsMTeFp1kAD7YcsqOaZ5qKw7yBCIBg
         SpWVb3++Ao+NrFinENyBs49ZNlVS+XgdhHc1CWv+GeNo7AQE2FXF9FNqy32GFIeYUJ/R
         AwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810953; x=1793415753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GbN4SqJ4UovFCwps805z/P2L2TfzFeTdUNr1Xb5RGPA=;
        b=dfZHO7cRw0CAEV42+HuUtjKlysfU11CvgBn0vWyHXV2/JEIxhfHBBf8Ixo85BlhE9t
         pTO661JqBLnG/BXXyLjWveiGROV/zr/F5FHYr17cLe2N7E4zgmbu3k9BMFEJVMHOcV6e
         xBvB/Dfzc48Mcj8DHQ9YxQxp5heQeDPTBkpFkwMNz/6ioCtgOjVL9fP2dVFFyJ85KB6p
         g6PwLB2U6kfJ3aJSVfMQqVTEtplcDZHwXMER+w++Sp/fkTAx+YdTWv9qAVyB8unmV51N
         DM+OhZhV9IqUssXCsXyC3FQpAndTbyCqCnvv3NYKO95RryjTGDVS0zkpUP5djV8oc32E
         Nzig==
X-Forwarded-Encrypted: i=1; AKwUvBzYPUNTJfKjEO02xwjtese9oE7U7h5SxfN0gjhIvEkJwEbiBa3VOKnX8SJ9sXA5INuMOnqsdE9RC2g=@lists.infradead.org
X-Gm-Message-State: AFq9FYIwYZi33VFvNk+To/nnSJiSxHrzudGAKBVzutDE24Bug0qCByyT
	L05ffZQDnmmZOubHyGTO/GPiGd/AkG7cs5HHmBV6gaNdzZg/N7SN0o4U
X-Gm-Gg: AYBFou3Ry9TfmXC9PIaPLIvpqCvco8JGeSEnRJZzVSR7mhCxro7DyONVAEh9SLEYhUv
	tGfwP4XmBKeFGV6OFElL1LZ9GpzqugDIDeB3wbxuQF4fdEpNz0ucTBoi3+kZRKzA3mGjZf7JA00
	MAK0UzmEjnqIrQ93jizYvO2DtBE4aly218ZnmyhPc6xTCzcB94ve8Xv+wevHMlm/Adywi1zpeRM
	jbWNwQdW6UoRTW6VsLfIvR7rINY6GcCS7pzay01N+kFAr9WsYbxdppEMXZrLZwkCvBuZng0Ft0X
	EO0+gyd2iLQvS8y9UUYj7qZzT7dqZFeHDlO7/xHM3+ZE7If3CJVo65rhjiJLNPkNl9qCjGYHeYi
	kPt8ld5zhn4k8MLd5Je69W7PSPu1XmhdqpvX8qA9zOKoaH+GMMMeukrbpV1vLpolpGI5lkP71gV
	fXYpoC5Dot9M0qJzO3kn/NtjwFI7k/MmuTwxoPP7dHsNoI8NUdmEZpB7nKnBGSlGpGQQxfsK985
	jGoIWE8QOCqYha1ESSXbhx5XfFjTXJIg/5roXBI0aYSsQkAjPI6EM3vqHzUP66uwfjR4Ru+3ubw
	HvdD
X-Received: by 2002:a05:6820:a08a:b0:6de:1457:fe27 with SMTP id 006d021491bc7-70ba0e76707mr330211eaf.57.1792810952975;
        Fri, 23 Oct 2026 20:02:32 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:32 -0700 (PDT)
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
Subject: Re: [PATCH v5 09/11] phy: qualcomm: qmp-combo: Add per-link-rate auxless/LFPS and drive level for Glymur
Date: Fri, 23 Oct 2026 22:01:34 -0500
Message-ID: <20261024030142.13643-11-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-9-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-9-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_040236_395092_D9498FD9 
X-CRM114-Status: UNSURE (   5.28  )
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

On Thu, 01 Oct 2026 15:04:26 +0530, Nabige Aala wrote:
> Add per-link-rate auxless setup/silence cycle and LFPS period values
> instead of using fixed constants:
>   RBR (1.62 Gbps): setup=0x03, silence=0x06, lfps_period=0x00
>   HBR (2.70 Gbps): setup=0x04, silence=0x08, lfps_period=0x11
>   HBR2 (5.40 Gbps): setup=0x09, silence=0x11, lfps_period=0x33
>   HBR3 (8.10 Gbps): setup=0x0f, silence=0x1a, lfps_period=0x55
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
