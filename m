Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7318AFD2D79
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 13:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh+g7mW1dJWkftANd+03NlJMytkjIYjsqjLuaLYxJLs=; b=mI/7N0kmCrFJnD
	9vm0i61roJ0BQHVAZVfDYu4gvUzuw3izbrjASzGk0+0OialAy7DmYLYMq/hx7nFE/f/BQsrFlcV5Z
	AL/bbRcis5h1LwrE3nglORqOlaIBO9atLy4iQoa2fbyuYNT1hAEjYbsWj5+Ujb1VLJFihxfmu78lo
	plCvLmiFi1oNs1+non/oyxSCE2yr3B1b4ucM9K1PtYAIdZ724u/UGWJyf50WdXL7asD6MZVYlFg44
	ft2hVnnPre/24in5wNKHuKfWCaj3iepVw+7tWR4i2ahryi/aYKahQh2poJNhZb20ORMPAgf7zfyEa
	aFO8APrGytBbpoqr55Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzx2J-00000009aIb-45tN;
	Tue, 10 Mar 2026 13:22:11 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzx2G-00000009aHA-292B
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 13:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773148927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5/adDEbR57gUpYJcJq84OoDVxrrM3xMPFmZCRo0jKXM=;
	b=E51kNjIN4UKbGW9DyZ5aBLaeo/X1fN08TYjWYCgYq8Q8qw25+tZQtb5W5ajU6MN7BBBW11
	0YDBivfD6ObYrVaZ07AfmguXniohVg3EyJDviAgsAuscNKdssFGgICyGTgh1yznjOgNpE3
	ekU6IHdwiHFWZVShb4nqu/2AD28lhx4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-47-s7qx_tXwPIuoa_CyX5Wqhg-1; Tue, 10 Mar 2026 09:22:05 -0400
X-MC-Unique: s7qx_tXwPIuoa_CyX5Wqhg-1
X-Mimecast-MFC-AGG-ID: s7qx_tXwPIuoa_CyX5Wqhg_1773148925
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd773dd39bso2180670985a.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 06:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148925; x=1773753725;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5/adDEbR57gUpYJcJq84OoDVxrrM3xMPFmZCRo0jKXM=;
        b=vWah1J/YWB2FqAbLHib7qhggrLK28yRLrVmwKINBpZs008tcKmxjAC//qRmpCtGfV5
         CNc6VRoh8TC9OvwXq1VqwB+FTZqTczjVSNqe0GoC3iHWuO1PcZ4qQboHI2w66HD+dh6g
         8FnjW3mOQYn6gPJVpjmlGxrWS2hNapgTqzLuqcjGKyUgXrrwyFAZKFM1Xw3q6hBNF2vs
         ogOgUjRVSfzc1JjrOyO0Tvrl8McsQkVorjY5yLsQSw/1Iz/6LDlLDiG6d+A/3CmQLqvd
         JpnheObyqkwZksz5YzX2oJTDz0Wuno4NrQP1JoHf9T8FKz/oHHxa0b7pVM2nksJ3MCVX
         SqJA==
X-Forwarded-Encrypted: i=1; AJvYcCU9uttY4iVKXdJM/T3I+i6Nu8kTgv3xhfwUMsxp1eVuCUI7fuukYcQFS/Q6gf6Z7qOiRKMYEhgkn68=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRYFPOqIVSetl2QlzndiCJlMxW8n63vehmIMOtK5MSM0vaUdla
	FfsW1AY2u2NiJvIYHM2Qv5PjJaH7qaBk6s+u6uMNq1Ut26Ou++qQktdCo7rG8vEraUmzTsqzYJ1
	HIOkT2xZ/OOxsl6FEKjxmOX2DlCIxKof2uBuJ5f7ExVqa+yb4dYsDykl2/H4KlXvXhsE=
X-Gm-Gg: ATEYQzyKI/2loa93eUvVo25awz9H9Yx10sDeM4ez3g2xEsjg8XRiRd5NDoE7qWscuJ8
	0lZ5CVvXwkxSMaNU3Yk38Uq79Z0MdxTH/POsywQxyd6E+9RUDKeOQxyqmDMz20yQgUynPZV3wo+
	9+i+WsXNhGsc14HK3ftM0bqfDVGwYcxMh8iRRbhayAaNMk5jJmAZjoRTAdqDbqegjqActLIs6Nl
	qcuqWSAOL2kj8xO/VNQMKJ0z0c6OCYt9Ww48Chzn/AHrCZcGt1MPb6Y56hmQKahwaMmcX3DDaoO
	hygDwm/4HPNzxkJCelcOTB+QLDmkhtywyJOHHPbgytLqmOsvfvTmKzBOOyT3qeV2BT67h9uzjWU
	FHelY9OA+pTVFfj8zymgqMWqbM7vaN5PMIzrFSWPMzH8opbWyNJhsRtX+
X-Received: by 2002:a05:620a:3713:b0:8ca:1240:4991 with SMTP id af79cd13be357-8cd6d4f9469mr1830789285a.45.1773148924768;
        Tue, 10 Mar 2026 06:22:04 -0700 (PDT)
X-Received: by 2002:a05:620a:3713:b0:8ca:1240:4991 with SMTP id af79cd13be357-8cd6d4f9469mr1830766185a.45.1773148922638;
        Tue, 10 Mar 2026 06:22:02 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd8576db0esm474754485a.47.2026.03.10.06.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:22:01 -0700 (PDT)
Date: Tue, 10 Mar 2026 09:21:58 -0400
From: Brian Masney <bmasney@redhat.com>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
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
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>
Subject: Re: [PATCH 56/61] clk: Prefer IS_ERR_OR_NULL over manual NULL check
Message-ID: <abAa9vQg4BSxl1BJ@redhat.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
MIME-Version: 1.0
In-Reply-To: <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RoYqdC9mZ_Q7XXKER8t0BJOzfgTVcldwKI7swtRz8Zo_1773148925
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_062208_727644_5971A750 
X-CRM114-Status: GOOD (  10.93  )
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

On Tue, Mar 10, 2026 at 12:49:22PM +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Semantich change: Previously the code only printed the warning on error,

Semantic ...

> but not when the pointer was NULL. Now the warning is printed in both
> cases!
> 
> Change found with coccinelle.
> 
> To: Michael Turquette <mturquette@baylibre.com>
> To: Stephen Boyd <sboyd@kernel.org>
> To: Daniel Lezcano <daniel.lezcano@kernel.org>
> To: Thomas Gleixner <tglx@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

With the minor typo addressed:

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
