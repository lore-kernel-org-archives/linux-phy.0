Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AB51125808
	for <linux-phy@archiver.kernel.org>; Wed, 11 Mar 2026 13:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YESgnMB21nsz817YcvvXt34TpjqmQphWjnMLUmlqcWU=; b=nYE/sNRYtLXM3V
	wIQL4u7pVzLd8OE9mhQstCsE5tZMeMVKJrkuNght2JTa2BHuJjfydfLIplMyrL4s0Sjim2xSzBTLX
	KfTxhecOzb59KCblocDZ6LTgxnBKA0eolrXhDqggyhLZvoq9XoMm0/JIpYHSZeY20e8TtGpALereZ
	5ZtbnvSrSqsLfm5AELFbfAeLZaRsFW77dAShGKY7pkUY/fURewOwXmNlIl40nmIKYbPeyqikOJVDr
	UMCASSMRoV/9PRFYE7f+OxARc+v1nDu6pOxk7SWUyIdph/G8c/dW1y9+r5XDhCsDzyF794tZnEQ3j
	rPoWYbOmp8Eit1BdXcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JWH-0000000Bd7m-1mae;
	Wed, 11 Mar 2026 13:22:37 +0000
Received: from mail-vs1-f45.google.com ([209.85.217.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JWE-0000000Bd74-4A78
	for linux-phy@lists.infradead.org;
	Wed, 11 Mar 2026 13:22:36 +0000
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5fff18d44fbso3421495137.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 06:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235353; x=1773840153;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34DR94e/1PAvLLEaib58vFA4GW0m5SGe6jvxchEhMek=;
        b=Blx9GYCsW19bITzBkUuMSvNT9qMbyehV5WAZ9unoZzojUG9jupyGfsLbHo1yZWisIj
         SeFCz5rut62DcGPJ7uuzoDYBrzwhgbW1aLJdJdZuT5eIaBveUbA6Q4RbDJ1DMROCbb/6
         dbYX3Hr06nXZzsaX4SzaiL6OL2rw7V3I4xwOwWWL/lgEC69D0MPR8Nq7IOit+A6n0i2X
         fnnIZNAp/XXIm5Cwa6wqjvjhBb3WhejlXzjEdSq4hDZRCBbJp4TtY64RvYdPtKcUdNwj
         Ckz1/BfMAfeWKF2Hsfmn3v9jhODTH3w0DDHcC8kZ9hQNBqgtW/Y4aVCWXrxw0sE3Owc8
         nv7w==
X-Forwarded-Encrypted: i=1; AJvYcCXqS6vXryp0LEV8Y/X9p7YSxZVLfIKKk5uHbp61hQj0ROb3UQ+OcNDAoqG2Fj0Y1ii/AV6UJNOeoSY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNxN+e1sGuMEZ/yENQ2/KF2Su8bzgtenPsCWm0wQLVO2tJDVEP
	o2s+UH5to1K/IRiubPiMVETmtzVW0VWQZs7yilRJXPBM7ryAS5zJgZUyBbwh3Sp3oPw=
X-Gm-Gg: ATEYQzzh1JuHCYUJCnoVXgUWMAfPp9Gqmd0ic8PUcSTQBKShbx9mzqUKBB1fM3Mbahx
	pVNwDHdwPhM3QvGYCVyAqKdGv62CZMpls87XYo7JDnO8xNxEbRFxvUH1JRgNVXzki+W3tjzBuZk
	mALjJo97sw5na0Ml9x7W9ftYF/ht7FmlS94gUFWHGF+Es4CyHZLDCX7b2Q7gMgjHE17142cjClY
	Z9W+CvUFel08iK+2wtDyJAYnJAxEsyaJf8WrPoOE8ExnG5GNjcX3VjasTo8Z25QDX1vJFM6wkAN
	XxUhaex8F1i2qsmVejZKbiKWqETCx7ux1l67Q5FVhWSPlJR19bdLkSJFqJKBdbziPs+Cqup7QXY
	7wTiJCmAJFCgKYDcPk+te9MR/zAcqIaTj1GFfSIi15Nrp6etZtenhZTZ827wuXlghMEv+wUHkHa
	Kv/CzHeKigNU+zDjsmPexMwg0U5oBPO9pBrTPSqMoXkQSZbbdL8NopYFEZ/gNI
X-Received: by 2002:a05:6102:390f:b0:5ff:c6b2:efde with SMTP id ada2fe7eead31-601debd1f15mr938669137.6.1773235353330;
        Wed, 11 Mar 2026 06:22:33 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601deaa379asm700642137.8.2026.03.11.06.22.33
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:22:33 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94de88e52e5so8499931241.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 06:22:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWl23nAMTsHWVX0/tRbXbh7jXBB28epBI81+n9isz4Sk4jUJc3AZduVwIxSgRABQgqnk7DuFHeDA8g=@lists.infradead.org
X-Received: by 2002:a05:6122:1d05:b0:55b:7494:177b with SMTP id
 71dfb90a1353d-56b4752d806mr922396e0c.10.1773234967338; Wed, 11 Mar 2026
 06:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de> <20260310-b4-is_err_or_null-v1-36-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-36-bd63b656022d@avm.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 14:15:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXQ8Q4jvkgFRJYhghz2BZRDC-9Mk6DbXxuaOc6C9DFHZQ@mail.gmail.com>
X-Gm-Features: AaiRm52J84H77ROK64ZWWtJfaiCpnFeKyoSRmPbi-NC8CN6Ju1TJEFxJU9gZQQ8
Message-ID: <CAMuHMdXQ8Q4jvkgFRJYhghz2BZRDC-9Mk6DbXxuaOc6C9DFHZQ@mail.gmail.com>
Subject: Re: [PATCH 36/61] arch/sh: Prefer IS_ERR_OR_NULL over manual NULL check
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_062235_054891_7891FDF8 
X-CRM114-Status: GOOD (  14.73  )
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

On Tue, 10 Mar 2026 at 12:56, Philipp Hahn <phahn-oss@avm.de> wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
>
> Change generated with coccinelle.
>
> To: Yoshinori Sato <ysato@users.sourceforge.jp>
> To: Rich Felker <dalias@libc.org>
> To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
> Cc: linux-sh@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
