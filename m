Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB419CD128A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TioB2RkewjkBOXPKiP6StLVqjAQhexXijxLPyJJmiU=; b=QqH+iu77RPrxMC
	MFNgJaFx7WEjLveRUvPcZYHtx5LlNYU5CEzMnGkIv99dc0UNb+YQiq8Ygaj3664kT6431mmof6mZm
	9qv8MqIu583ku3XRnPonSt8rqDNc/PW5kkNSOZqBxJjVg7WRnr2MoGxMEmS5jRpkpxIW/QR+7bXP5
	+geN7o1yd4GxzX9w+YIeCXAdSENL8ToRp/YphAhwfhqErYxCPz92VcQ8tNfugo4qEVOnAuqEluSzc
	rBAZd4UoLSNg06MEOSYxrmyyaqS9Lkejj4I2KHvwhB6YtZUy/mJ8Xx+epl0tq9jvPglSXR3jgp9J6
	bHk0hN+6MxIzceCCSyiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI8q-00000003jct-0viJ;
	Tue, 09 Apr 2024 20:32:28 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI8m-00000003jbO-3MKS
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:32:26 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1e3c89f3d32so14545ad.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694744; x=1713299544; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=12JndML8/JCJgkfhvekK/G81mXPrA5btch0gZl1J20Y=;
        b=LnVPcNliiMEv73te/xFGTPESfTwkss+iPErqprKuJ6TGR6AOV0OQn0q564sadOXY6h
         mtqkfrNlBE8gQFgl8gSeRuUqgv3s+RV9UYhge37qveVDpSa3C7d/CzBeBB/auawFYBOx
         DEe5J3t9/9zWn4N4snrYAtkwRnIS6lNL93MyuJh3vpHu1CCmQK7G5g8y3ltYiuZK0Btr
         HarDcjhb88IL61BCKk3jNWZexW2DMC3uMPd5D6DawHdSzyS+e+Mi/c0mdEC7uGd4HKTS
         hAO2/qc090DYr9H49xoPiVic/Po1aOVpjIfRlCvlFLXsDACkZLAn6dezWODK6QWL6gxS
         cCfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694744; x=1713299544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12JndML8/JCJgkfhvekK/G81mXPrA5btch0gZl1J20Y=;
        b=qm3KZ5zbKwUsdIv/u+STCzR4Dd/dtG6Pli4xF+j5fDLEQ4pWCPaLHL8ZpzbmJOZyNv
         yZaLsK+7MlO3hFYcg5OGo7kmqEzJLVbO3z/XPlSAH4YjjybRikSzImGi4NPGgl8cMhnS
         gkdrXli+S8MLHtRemFnPqos9qJnYmxejrLpX6zdiT2b+JZclIyT6hbVv6iaW6tLo7rvz
         pZZVdRPdqgTujS3sXl+ixBa0nbMvdAkCJeH20JnLT7+T8rd9TulFPfhLLAcv9Ry77Ulr
         GIEW+1qXaTcdh54FtWfCBTX7ZlixGtdPkCd8hl4DEPtlfM1scw3b5AbDrnSkHZ0RL8O7
         lRUA==
X-Forwarded-Encrypted: i=1; AJvYcCW96H2NmHzlahGxMkNo8I/QJxNVDe6sy26scAi07t39SjuwvVq0QloBjgP1ivxJ+/QNf4ZB1FmdEg3GHNHpXgJl2nn+QA0CGXdF0soG6w==
X-Gm-Message-State: AOJu0YzU0c2IveO/df3JglvnbDxXqe2uzMHYCzlw2y+IjTMURxwXy7jJ
	170qbcIUhR0FW3xXsCOFwuvftEPNZnEvo9eg1+0K0pJfkLmCaCp5q0i3nHgNPg==
X-Google-Smtp-Source: AGHT+IF6oY374Gn1bXDaQ8XjzUkuKAfKS8zqbkpsnbHTg5x0Nbbqftz5Mn2zC4LTwQ42ph5VlmKPrg==
X-Received: by 2002:a17:903:2451:b0:1e0:294f:17c0 with SMTP id l17-20020a170903245100b001e0294f17c0mr58171pls.4.1712694743398;
        Tue, 09 Apr 2024 13:32:23 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id i18-20020a17090332d200b001e421f98ebdsm4644271plr.280.2024.04.09.13.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:32:22 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:32:19 -0700
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
Subject: Re: [PATCH 14/17] scsi: ufs: host: ufs-exynos: allow max frequencies
 up to 267Mhz
Message-ID: <ZhWl0_LSOIjdza9C@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-15-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-15-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_133224_882553_D6126792 
X-CRM114-Status: UNSURE (   8.76  )
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
> Platforms such as Tensor gs101 the pclk frequency is 267Mhz.
> Increase PCLK_AVAIL_MAX so we don't fail the frequency check.
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
