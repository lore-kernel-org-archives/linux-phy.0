Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF14C67861
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nI0fWql6ueDo83pZyHICOsB+t0RTG4Cr35NQhNQgd/Q=; b=T4NDKIFppeiUsP
	MVmeRuqwmoiqb3voYmzeii9slDnEmFrbALBUdkzLxUmEbro0l6ZhLmBxg7Sbm/YPsgvtzluQ9n6QY
	1KqhX27pz7eqde9Gwg8gJeB1TJLkg7U4XZCVFbrTPxJhpp7cI6SIl4VgbwFspI++BpjITFAuDpfJV
	c6DpPJbQ5MQdVKarx8XuUtRG48jAP6LHur2IHmVR8KYdRhkfbSaPs5rS+0uTBSnaSNyrgGp9OMnr5
	XCBQfdtbD4RdQjbDGnKc0WiDfzY/b0p36EBvHYlhkSYMNNYgDfF/qznZyqM5DFAYT/IEk52jftheP
	kcjuWT+r2ZJpblDvx7xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI7Y-00000003jDW-1kqa;
	Tue, 09 Apr 2024 20:31:08 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruI7U-00000003jCP-0IjM
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:31:05 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1e062f3a47bso7095ad.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694661; x=1713299461; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z81f+s7l+/sD/O4M1th1Ei9VKKDjA495zju8Z/WH8ss=;
        b=u/DYDZGZ91tXdkrPfrnWqeL2WAXekKCB82amjGs+kFp3yDeDBFW70UCfpUl9ukrXMS
         AswTutroLfXmFk0KaL0iEREjvGCJHB62L7i+1d6/0hKS0pFtpJUL87/hV9UiRe5priaJ
         XcKK+9FaLuFsPBiT366jXxm6MlG9G8SOnRGQDtlJlfy/jLmlnIqEgyEw3S4EzFANQ+5J
         Jq7FCr1wnD/RNLPNUOB/hqZ/oHOqTcnMg1Jy9bMFINVj49UKMeaM0V4LALC1SKeAGDIo
         q0kgqbR/1zHuOCKWyqWuIx36k3v+jggg00z5imu6637/cj4McV6rNgTuN3SPekUt3sF1
         uEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694661; x=1713299461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z81f+s7l+/sD/O4M1th1Ei9VKKDjA495zju8Z/WH8ss=;
        b=iAmM6861wigaIrtc1Yv6K0O34gT6heCr3NawaCO2mzGB/+RrVCipQTA6jbObtZtuII
         V4sMlepJH0DySeV88uUwjrmuNUhP3neVh5tud8cnyTX4um2SwzFd/ecWNmlMK5sM0sTP
         14GC0VV0L2lU5zbR9NiY0NONr785NrGJrcjUY0yxswXzBDFbaIf6esjwFzbSbcWKJPIX
         ejg6kmOGUfMp9SDbVD+SeG9MHguEp+g4TVrLwuqCCGsC+CUgBGSTQBH6tEswu4/OOQvz
         HEyW8qPZ25pxo0HX4S1+d77Z9B1u+uov3+a6reoWqirMHflVBWRigHfiHOyVfRwM/jMs
         VVBA==
X-Forwarded-Encrypted: i=1; AJvYcCWNlg6lI3f2pCrGR+dAKOmcfLyXkViMgtHLnuOQVUaFfHhQVGhYFc2SGk2otAvk7P5Tu1esOA2fAEl1Snj0uGTV8pdaWWz7t/xz7YOEsg==
X-Gm-Message-State: AOJu0YwUwkbODZKWZ8SyhbViQO6XUCWiP7szb6POaHrjJ6ffcu8700xF
	KziHey44LTtxOT5EygOtL9z+HwCu6oVtxTC7ghBeDRnifFrOBSE62NQUSn44cQ==
X-Google-Smtp-Source: AGHT+IGofJ0FRNLk0LpXknrDyp7g83W59LBbnXT2y0rqsdR+bsPBjGeybgw55IXdE9IT7Wgz9305lQ==
X-Received: by 2002:a17:902:ec87:b0:1e2:a5ce:8dd0 with SMTP id x7-20020a170902ec8700b001e2a5ce8dd0mr53730plg.10.1712694660951;
        Tue, 09 Apr 2024 13:31:00 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id u21-20020aa78495000000b006e580678dfbsm8698540pfn.193.2024.04.09.13.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:31:00 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:30:57 -0700
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
Subject: Re: [PATCH 12/17] scsi: ufs: host: ufs-exynos: Add
 EXYNOS_UFS_OPT_UFSPR_SECURE option
Message-ID: <ZhWlgcTJ-4KeQqmP@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-13-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-13-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_133104_145358_4519C06C 
X-CRM114-Status: UNSURE (   8.70  )
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
> This option is intended to be set on platforms whose ufspr
> registers are only accessible via smc call (such as gs101).
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
