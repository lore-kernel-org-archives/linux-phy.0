Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E95CCD128A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70fqLlIvfIuH7KzVpBqvbiQGGkItMVk0rf6BZix/VIo=; b=ZAjdYh/8zN8NkP
	LCayjZAIP2CAcd91wDrSEOQ5RZB+c/GGH2JaYNks8bEupFWQ/QHEVl8hIZVHsD4TweVjzkwp6njpr
	10dtkV4j2G+sU1Nu1KXcwk4qQZAj48u0hv6Qn6Fnu889f+NAmWqKGTfChNRMlAU2LK1WijcqDTxW8
	vXLEv5HF/TvzTAJJv6VQ/ytYAG72oXquQzxD02AlyBLQPRjYougZkzaceVYqzqVHvoqFT34Zon9/O
	INn1cdw06YnMb1usAHp12fnQS9wxBpHJne37r7ORaYe5Wd+yRqscAyYsYoi1v/iLhAg7gp0ruhgyH
	Xu7Q1QmDp0iXl91jUY1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI8M-00000003jRI-3r9N;
	Tue, 09 Apr 2024 20:31:58 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI8K-00000003jQS-3JMp
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:31:57 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1e42a6158d5so10675ad.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694716; x=1713299516; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SUvgfC3w6ZX2fpsTKLPWf6JUERZbrXuQ25CP7Jh3l6s=;
        b=YIIRoTuF6FP8Ajwn+nojoyHX3qnsn9rjLFwpNevn4nF/1f1S+JFJ97BhJbhgqmVaaX
         HuNWc0yEONHdec765aqOE66432Ggp/T/pDarCDcBud2Fx+8vSWP5bHheks+6nTOcOQaG
         bUdZhTV+AD1aZr8WSMA7SO41/F9fubNKiYCvqB21o4/5JNonykcix29TLX9zlsMfNImO
         g6XWP4hjdmfJQfrSjJg0CEVnQMfZqsIZgo5md9gAHntXewwPIdNKlqh0MaVf6pawQaLO
         +g+TqT+83oO7Uz9n7TlAlFFAFsu26N19npYhv+JDbwCwW3ZMynBlDcKYtgoTY7gEWbso
         L7jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694716; x=1713299516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUvgfC3w6ZX2fpsTKLPWf6JUERZbrXuQ25CP7Jh3l6s=;
        b=MI8cqphAfo8IqzGcyNniksS0M3TRLUMB9AzcgPq0bbceRm8NirkThfoHwfXI4zSV3p
         XdYDpy2Fiai2Nbh6VN2z0WeBfqIcvUB6+/8wq5oR73ouCXUjcav7wossYdJxT2WS0gye
         wNnl2dhvXARjqUKNzD+8yXHic1k2qN+0jX6X7QmGwwC1IKsFXFUF6QPRLYYtI0Rc+8lX
         O57i6+eywqLWC6Fseqs6VzFGUxwmryKpyoGPj5oWbRe/2yzpputWkB7whQvtI4YMxLO1
         Bv3nUiwKeFtF6+eRcvDZS570h951EqSuDeCEJr2dVi6YceL1ybcGuzZtsSUeCxPV1PvO
         t0Wg==
X-Forwarded-Encrypted: i=1; AJvYcCXHymUabTlWuChSF6KJVMSbo3yWSJgVmIS8EhINe29nnCnSLWivYQe/j7Pls+Ggaqr/I/admXVlcYmRqbWumMv2f3vRqRSOFLGmHr1Qqg==
X-Gm-Message-State: AOJu0YyC5rZGXtW7+87K2CpyzPkpShiASaTztH0l3Dd1KaExOEVuzJn9
	OMSUNlb1IJ9Xpux//aBY9J5n6F4Xo3alif8zlL7Gz8MPI/e1DEi0LKwxfa6NEA==
X-Google-Smtp-Source: AGHT+IH9ezbINF2W8M0K+P7GqpiAb9inpFocjNUgpuAn1raw2RBR1YlfC+PSle2MldBPfMVs9xAsEw==
X-Received: by 2002:a17:902:f544:b0:1e2:aa6c:3c72 with SMTP id h4-20020a170902f54400b001e2aa6c3c72mr3010plf.3.1712694715690;
        Tue, 09 Apr 2024 13:31:55 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id fe17-20020a056a002f1100b006eab9ef5d4esm8768874pfb.50.2024.04.09.13.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:31:55 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:31:52 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	chanho61.park@samsung.com, ebiggers@kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, saravanak@google.com
Subject: Re: [PATCH 13/17] scsi: ufs: host: ufs-exynos: add
 EXYNOS_UFS_OPT_TIMER_TICK_SELECT option
Message-ID: <ZhWluEU4aG3E2NcI@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-14-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-14-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_133156_877595_25C10842 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 04/04/2024, Peter Griffin wrote:
> This option is intended to be set for SoCs that have HCI_V2P1_CTRL
> register and can select their tick source via IA_TICK_SEL bit.
> 
> Source clock selection for timer tick
> 0x0 = Bus clock (aclk)
> 0x1 = Function clock (mclk)
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Tested-by: Will McVicker <willmcvicker@google.com>

I tested this patch series on a Pixel 6 device. I was able to successfully
mount two of the Android ext4 partitions -- efs and metadata.

  root@google-gs:~# mount | grep /dev/sda
  /dev/sda5 on /mnt/efs type ext4 (rw,relatime)
  /dev/sda8 on /mnt/metadata type ext4 (rw,relatime)

Regards,
Will

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
