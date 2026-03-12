Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EE4105A591
	for <linux-phy@archiver.kernel.org>; Thu, 12 Mar 2026 12:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+MRmFiO3RN9vhRGbQHGltWOG7RFmpjEZigd8HbIBV8=; b=iUQFmkPqeqUpSj
	e7+P40Fsxq9ADw4eJYMUKii5w/GHTStkX3IhXZISRhA0Bxf8l8QiHtbnfNGN9Hw64cA/W6+/Ds+1r
	bEG1l7nOzmaB9xtNI4UHoN9mqeWExPgtWEUz0bYMnzsRLolB+2zpP6YgYotc78PSuFXxZaCLeF17Y
	pUfSBjZ9J2dp7Mi7S2ZvAkb+jz8zbm8AAOM+UI3nI4B6YaI/YnY1ZP+fWVk+Z/QkyfK3026SuQwFd
	zQR604kIcuFcorSvS6fUdvRRyR6h7O/3SJN1drBNzx0pGkKJYYEEb8xJAQn9FV0Wv6N/hmuNCCFdF
	TOa20tT3XTirzQzrnTJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fbc-0000000E5bY-3hR3;
	Thu, 12 Mar 2026 12:57:36 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fbZ-0000000E5Zx-2IR8
	for linux-phy@lists.infradead.org;
	Thu, 12 Mar 2026 12:57:35 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-506251815a3so8617421cf.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Mar 2026 05:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773320252; x=1773925052; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J1SF1XBHkHR0j7NZVucv0LxpGoGXl67PUefLsfwpAbo=;
        b=iw5qPPT34HDEMIsXfVuGQVadqiiLiCX9PSYu6mfSb5q8pG2Zta++Bi5jO5hu2g6YFJ
         wTc1x4CTfGSRObks11vRzEMH0mSz+45H7uSO3crnDdnisto+K8YOB10zRI6ki0FMCFsl
         quYIW0rxZamxVD0Dvo41iehkwXSFpyOoaEKCRjIdmnKSkyfT9qp/tn9EWTZSyUGjskqL
         L0tHRaj/DsG8f62JeRyuh3eRb4WbBZYm7Us9AVQUnVgVM7W9mZjWm7bYERmVff30jOwO
         3xQXwyYZejNFjkOKkdENzhA0keU8N9kA7HoVCtMQNarVUa6rmwTyDoQj4IqEckHnTW6K
         dJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773320252; x=1773925052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1SF1XBHkHR0j7NZVucv0LxpGoGXl67PUefLsfwpAbo=;
        b=SiR4czV2soJPIYgZ29tV8tA+y1+XNhBA/7dl3NkGRiriIEEMUb/nLJ3W1uM1K5XqCV
         jdppJZhIRWzJ2zvzdkEcMGL0UvJyQ4ITB+MQm+Ve/FOPX2Q4SEfsIb0QlUiX3XdzJ9DX
         WdUGIXwK9e+T0FrLVKiMNf+NIatlfS+39ltef2KmPW1+96QVsFqcH14PJJSZaJSbNZzV
         //p6h/3JEPgml7k83dG12eamFf9lfxBjcdcUIzA45zEWXwaAfTyjdMsJ8oSHEVGO5vQC
         jtxfUGBd5sxoMISNneEab0/EVqr8Df6kDmKQKt9G1fY3XVVdpPsmyvu58EDF8+BrYtnf
         R+vA==
X-Forwarded-Encrypted: i=1; AJvYcCWsTQBE09ly8u4wLnSjORoFeiszBB9qNnhrN9buARJaz25nVwVhxib4NPgS5T6EraFOe1j0VYFwt9g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh6MquyqCVn4E/MSyJ6fXpIKn/umAwXH9WaT4oPzctmDOqiV9+
	d0747N9KNdeY9YfXnr58gMZGd2AhlqktMf6F5rlwzIGRIibFZ3CgYSo4TO7WOfRhi8U=
X-Gm-Gg: ATEYQzziFCg0/bVZcx5BfvVNKxMgO9MJRX3DRXhJSTjnmuwLG2uu/BRJaNmW+qoWtGt
	pi315hCn3ZLwvodU9OziaqYnDI79GfJ2xagwaRRyHdyzZCuoMqYwNAdt8RmWLAiEThFHRm+fhmw
	1ql/ljal7AI/7XnYtFkrDWFqlSCt6C2lfUWFCpYJUoCKQRWoYQQYMvPqQu7vZsiShlc5Ege91mj
	yzhi7RSsYhkr3Cshc9tl9Ag0on6mPMZtjW5VZkIdqiGkQRwkOTaa4EbgA39tfDCOvzeuy68KOf3
	Eu1VmP4v3qxhqWVx+iOhpfgS2B6gTdEyDOcQk+PHCFNJbUEf+YbGCUyFYoz24Xt9qpoOv+XIutH
	W8vbSlKff9DvdDtNANCSmDbV1XnQq5n9512NkNO6BXaV56OgLnY8NNp6bymhkXPjOEuo5lQBrXy
	JyZsP3GDgG9j1PUMHg2YEw5rjtc69zgCUSPit/l2sUKU8geezfnM0jaSD5f5QIEiG/Xe0wT/Yb8
	z1HA2pq
X-Received: by 2002:ac8:5d4d:0:b0:509:cbc:127b with SMTP id d75a77b69052e-5093a1bd58fmr77950521cf.60.1773320251710;
        Thu, 12 Mar 2026 05:57:31 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65bd318fsm33341196d6.8.2026.03.12.05.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:57:31 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0fbW-00000006fKD-1POa;
	Thu, 12 Mar 2026 09:57:30 -0300
Date: Thu, 12 Mar 2026 09:57:30 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org,
	apparmor@lists.ubuntu.com, bpf@vger.kernel.org,
	ceph-devel@vger.kernel.org, cocci@inria.fr,
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
	linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
	linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-mm@kvack.org,
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
	sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev
Subject: Re: [PATCH 00/61] treewide: Use IS_ERR_OR_NULL over manual NULL
 check - refactor
Message-ID: <20260312125730.GI1469476@ziepe.ca>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <abBlpGKO842B3yl9@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abBlpGKO842B3yl9@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_055733_592831_BA625628 
X-CRM114-Status: UNSURE (   8.52  )
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

On Wed, Mar 11, 2026 at 02:40:36AM +0800, Kuan-Wei Chiu wrote:

> IMHO, the necessity of IS_ERR_OR_NULL() often highlights a confusing or
> flawed API design. It usually implies that the caller is unsure whether
> a failure results in an error pointer or a NULL pointer. 

+1

IS_ERR_OR_NULL() should always be looked on with suspicion. Very
little should be returning some tri-state 'ERR' 'NULL' 'SUCCESS'
pointer. What does the middle condition even mean? IS_ERR_OR_NULL()
implies ERR and NULL are semanticly the same, so fix the things to
always use ERR.

If you want to improve things work to get rid of the NULL checks this
script identifies. Remove ERR or NULL because only one can ever
happen, or fix the source to consistently return ERR.

Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
