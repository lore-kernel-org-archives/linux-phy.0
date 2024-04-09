Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3870C67861
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Hlz7PTCAxeVpPJ48Mzlc3HyXuk65pAGGeP5un22oBo=; b=qcloBFLE9Bae6v
	gpNPNMlyrc9r83yOubK5sK/UQmZ5TukZN07ZrMmQKqe2rq1Y71YpaE3XAol7XB3blRKjBHAooroE1
	+x8eQf4++FcCfaZfCX4HtR1Zsav0A5TBBh7Lur5bPbwgKD780j98+l616FjPTEct9ERw/Pe2jJUzG
	xBQO/of4kyH/ozIE5zD7nSY81uFweIX/S8xKtUfLHFBbj0ulHUvVGH/tcv3ku2SIVSQ3UBQj6ilP2
	GwQCwKB0QC1y7l5OTgccQ+eCPs1yndoVH3r4TXWf51999JqW6CULprULERLwpIHXr67ffoHaKoFc5
	AhItCctnm+OyJf5wALPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruIBl-00000003kIx-2Vqz;
	Tue, 09 Apr 2024 20:35:29 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruIBi-00000003kHw-0QhU
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:35:27 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1e062f3a47bso8065ad.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694923; x=1713299723; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sbzjIXGi8MY3xAo287kFRCnEJlxM2VAYg6QbjiGNyVw=;
        b=P0JWAoDqtG2IH65wtzVcUaUAS98JaGiQn/auX8BbkmCKZDfLmR81++fd90CuFi+xEG
         NHmokCCy+myrfeBmYw4qt2w96amvu0sZoixQaS05y3pVCPYz+KI5Yj7+CIrGGw2ZHu0F
         1E0BW2m9necMfXY6gyXiueV3lSKqZ167U5n1zaB/XQV9ruPAw8csEEsRoERK6+Xrgx0s
         zaHpOk+dajIoReJIo2Yl3814UVsVZqnhnN/e3hcB1JYXzuuH3e5Z29gNsLtKV0K82Fe3
         4/J5ew0Uz6sUeEivDZyENy5kInuuG9XFluWPxF0jW2w71BCP8KNMfCIeJHt1xA60SIC9
         Bdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694923; x=1713299723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbzjIXGi8MY3xAo287kFRCnEJlxM2VAYg6QbjiGNyVw=;
        b=P335ifmJjpAckVi7KpjRDgwXkI6LpYBao770+nHLGIfP8qHATqrwHDgqRU32rTpCZp
         dhK1B3roB7EpCuC4PDCvTJTjB8CvkIsEqiS/BNEI4gRxgKBxWHC/mJdxGpoNsYuimg0P
         tzckOBC8vkvn5I6r+yuTsFQBaZPRotGt2JxA6yqQX7+67UARXAkWQtNbbNnEgWmGipHA
         cBoRMBNgBMhk7CATmvdNDpfHvPWFHTPSf61CuwQjSe5XV021+EVJExyRGujvx9XGzizr
         sWLW/85DV++8Z3XWSb+AIJEr8y+fVRyjVPrGCG8JDG4E1bm/WVdT5kaHp8hJcqJdxShq
         vsLA==
X-Forwarded-Encrypted: i=1; AJvYcCVANbb0tJP7mNb6W8r05xHlqY2WoQ8w06a5T2+npmcRMj0NG0MGJZ07K+YYomHPyK6BQ8gsU3xUBxEoPmrHII9hGKiOCTXCUbbdk0WHlA==
X-Gm-Message-State: AOJu0YxbWf+Cw0tzkPHX55IIxOCYA88vcyEj9laQ4aya0vTVB5ZxVv83
	D7Fx0II9q8t2sDaIY7hPu4s1xY9yf5csaPdTUw1j9uYns0jxcnT5W9xdAx0Ouw==
X-Google-Smtp-Source: AGHT+IFbAgqRaIQQnQohL03A2IR6pwfXasIyq+0yEDQ6FgLyJnqBCuWghjNFqobOCKa2d0RR48njlA==
X-Received: by 2002:a17:902:9a87:b0:1e4:32ec:7679 with SMTP id w7-20020a1709029a8700b001e432ec7679mr2786plp.19.1712694922933;
        Tue, 09 Apr 2024 13:35:22 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id j5-20020a170902da8500b001e424ccf438sm4564732plx.97.2024.04.09.13.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:35:22 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:35:19 -0700
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
Subject: Re: [PATCH 15/17] scsi: ufs: host: ufs-exynos: add some pa_dbg_
 register offsets into drvdata
Message-ID: <ZhWmh1NUmj2h02Ua@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-16-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-16-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_133526_205587_B1B93ABB 
X-CRM114-Status: UNSURE (   9.31  )
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
> This allows these registers to be at different offsets or not
> exist at all on some SoCs variants.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

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
