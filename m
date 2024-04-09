Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E82C67861
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyQmhKur9PN1KtepU6dDNP0QbJvfxZ6SWfb3PvDADjI=; b=qOXwDDtogiaDEU
	C7OI8Jh456BQnbUlqDLU3+ua2aYYvdV0DFVWBevLn947WHaiQ6NqL9Rh5oQ7ybnIBZjwQcOgBILxZ
	+D7YtGgO/rXH0wcPcztD8oGf/q03u0yd8+PUcEhA8YG7PlhDR/kRshEtrLFIj2/jn/1K9kuGqK+IA
	sHolB80EuLqMs++AvZHN982wbhwjzL5yDUVyTC5T6lwlOIU0vWPR+7CmFjX139p6ZRYQYNNMw0f2e
	boF57OejKUjP6pK6BM+QZj9uJF4KrH+VuV5To6Oj7hVaVEnStCxTQAGYdH61CBVuKIUByDw3KBKj2
	fwmRSvtxFouU7UJfTEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruICY-00000003kWQ-1GG4;
	Tue, 09 Apr 2024 20:36:18 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruICT-00000003kUm-007k
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:36:14 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1e062f3a47bso8255ad.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694972; x=1713299772; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FtKLykK9jwbUT4Fzl0KoJ4iyIWu8adwZgz3p8Ke5vm0=;
        b=08hjbP9jNZBihlvXLNXWlk9KVTAtTzy8UxeCGFScuo+Z8iRtOK+ujJHF9Jj7JfThlR
         nQ+fvDzxGRkn1yjKwclor9CRa9UlYoXJiJn8E12kZGbDXJVaa2KDKSxy7Lzxz7wm1Gxl
         zTRpREMbfFDszTWf/OHU+ksTAM41px3M10uMgQ3WwMPgHYlNW1ybkfYjJlaI6vykt3J1
         Scd1yhBio0Iiv0zk2WDgKzPlQoMCSZ/3+ZUOqCnd2bV4JqJQ+F7gaV1n15jj9FJo0lfE
         I7NqPde46hKBjRHftPrjNdUwisozEHcv1NQZ5xemJUcqQ6Dq40gVSw2LvM7OSDXXfqmp
         1cAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694972; x=1713299772;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtKLykK9jwbUT4Fzl0KoJ4iyIWu8adwZgz3p8Ke5vm0=;
        b=r9W2jeVf6KmO6NeqJ9Nfd4HwsKlczIMiDByi+bzpbCh6qC5Xl3y4SP18sL5SCABLyJ
         jckbqCMU1dYTDYZBwILaFmiUYrSTJFIJDK8uSYMcFB/6lvZuXxc4EPehbm4aqRsK7Mf6
         gP5cZwM/1ckn5y85lAU/0FD/NeV9h7uYpc55livRJq4l9L9h2v2Nam7jxqY1z9VeNqku
         kqdUp94VlqC4xs0TEZhEc76ICyupjlbj+BqgE728ONk8D1xqTcQSTGAdLJ1PozQYu+Vh
         XdnKElOys5Mgdef3EMbwejNXpfbkoWJ/WoYDmVxZFzYUK9uaQ/qsim+sIflA5MhdHytU
         W+gg==
X-Forwarded-Encrypted: i=1; AJvYcCWOg9mmv7fiMpgoWVXvJdUe2INvNBfjBTwpvjgXVRXuR7tj0eSFp76eLcPFuT3HDZYOUoiZOGpIfz4WlDzC+LuRt0PUiagv+I3H9YHovQ==
X-Gm-Message-State: AOJu0YwMIGT6bv2xYJ/qceKKVwjrg/+7iqC0cgqSs7zgz9r7Hcj4MYeg
	CpIiIWPOzCoCxMYkHpIrJ2nNpeUL8ZahevW1+j5nDSXqlh9T/E6wQaAs9HNNxA==
X-Google-Smtp-Source: AGHT+IHd30uGplg5xyQFoQxM7LYuLhmgBewG96nQ2RKlakgBuH10CSs80ZE9WAcaT01+APzsir2vJw==
X-Received: by 2002:a17:902:ce8d:b0:1e3:e08c:5a98 with SMTP id f13-20020a170902ce8d00b001e3e08c5a98mr1193plg.29.1712694971618;
        Tue, 09 Apr 2024 13:36:11 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id hq8-20020a056a00680800b006eaf186e078sm8748246pfb.132.2024.04.09.13.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:36:10 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:36:07 -0700
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
Subject: Re: [PATCH 16/17] scsi: ufs: host: ufs-exynos: Add support for
 Tensor gs101 SoC
Message-ID: <ZhWmt2n-Njkzf6Rk@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-17-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-17-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_133613_116857_EFD330EF 
X-CRM114-Status: GOOD (  12.93  )
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
> Add a dedicated compatible and drv_data with associated
> hooks for gs101 SoC found on Pixel 6.
> 
> Note we make use of the previously added EXYNOS_UFS_OPT_UFSPR_SECURE
> option, to skip initialisation of UFSPR registers as these are only
> accessible via SMC call.
> 
> EXYNOS_UFS_OPT_TIMER_TICK_SELECT option is also set to select tick
> source. This has been done so as not to effect any existing platforms.
> 
> DBG_OPTION_SUITE on gs101 has different address offsets to other SoCs
> so these register offsets now come from uic_attr struct.
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
