Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B996CD4F24
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 09:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t74TZ/8JfID+jG1tP6mWJTk1o5pWdg01Vf8h6lVLL3g=; b=QJizTksgw8DYUw
	lFu7kbNLYwICpraL21/o9gzTPsW8KS9qeIHYvagZcj0dPzFZlm4gu4+v/HuXWt+wVACnCNpBsHX93
	8eZA8F5Nn3MZvaQ6gOZOqNhjPwxFW82XU8Px/XJ08RpwNMMxPowAfAP6pWgQgLuormDYixDxLO9s4
	WyXdowK9oa9wFUfMbBlkSilNIGA0RAG1qQ/cL5VKZoL2SnRxjGDShOlcpDumHCp+WCn2FjA9nCiy+
	1PjX/1mm0DMLphd+8tdndNQSVxA+MktzlcwEjHoTKaP2d0+4Gy9CYueidsBqhK2+qs7LaEglzMfoF
	zxWb3LwHSKRKMFXgYqrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5n5-00000001tz1-0TBY;
	Wed, 13 May 2026 09:22:07 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5n1-00000001txg-05mt
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 09:22:05 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-449cdc12a8aso710850f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 02:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778664121; x=1779268921; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sI2bUBKrXRudUJ7ah8zfcT6Ih3qhp2uRzxDn72XJgC0=;
        b=m0bStNHzJXJI3sTEpiKgLrkwa12qfh7ryV4fvSSjJsBBYHU7T1Sy/YewgsCThShQYl
         koyNeUZtbK8LpBST/h2sQCE6aXGLhkf/AKOsr7f4MtR8dbI77e5R1O1RlqLc/O0uM4GV
         Orml+9k1WrbqZvUG+9gnt0/GjBLAi3qmIs4n5usmrIINytUaQPnVLeo0q4pM9CnDYtnv
         Guhs16heNU77N1fEPWY4WhPY/xQ6jzpz78WZtq1JSo4+JOmVqYDOIS3K3M5WS2MiV6t7
         6z34v/As+AV7/HGhwlVlKIA4xg3QJOjofzzzZtKN4FCa2wFTFw1LmjINZhXoBWHT6VIw
         DmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778664121; x=1779268921;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sI2bUBKrXRudUJ7ah8zfcT6Ih3qhp2uRzxDn72XJgC0=;
        b=sUYAaK4awT7uryMIrooPaSWOmUt5ILGISvV78GVZefv7S7rxCh13oYDNKkpspEaKYM
         Oz1EkXPuPHMNdcqjQyA049simrep19Ehle3bBpbTpxzeVilcI5AKoxa4j6ceDhk9oSw1
         ZNd0K1XaVK03BDWp4bnp6I3it1MMTY4pb4tEEPCUpeY8UEKVC/60AGGl8flKH64AnnJF
         HhlUbFIE2AuSxYGotoeSt6fBadsnUcY9DDkSk3zYs6JjMsA3o7e2MtA/0P0SzShCDrzU
         KeCF4gJLARIYkOsVGye76PsMNb4ILv4PvAiJ4Xfdv/hAVyDAUxresoYzXVtvS1eyr8fo
         QBSg==
X-Forwarded-Encrypted: i=1; AFNElJ/XCyoG4aOUG5VXEyAFjsbxF7jc+79Xzy/0o9bkQYUg8h/N2OL62PRw89aiUJHnlvfmCXpOZm3UeLY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy68ynS3AqlkkMaaV9nBDaSwODBvc3l3UQe49TujsqLeIFY7H+A
	C3inD/VQGn08iBSJE+OtL/am8iOoadEqvxoipaAOP9lIc10Lr9j3dXxy
X-Gm-Gg: Acq92OHFpp+LjKedNDjWjmu3rWJCgD6tTOKwdtjLFlcjIw3FYVgPvn6BBFHCcbYBihN
	0loBg6nBDlO6/uGraFzh6l0T8voyHsvOUAPDwLnud/EcPjGM7H71CLHD0/QkkYi3n2UNYfNk1ry
	0rSu9RVkA2VcDeWSLCKUeun4YQRd/eJjg1UJaMr13b5BmtDvSZNWDxVDQ35JXUFg3D8hoAO98Bd
	rRVGxEBfHtkj+jK1w2vU407ng7PfZQgYQNXpqcrteRxnUbWDhSM3xRfURjBmk5I622C4wwgkPNM
	k0J4Z4jKzhVDLUeKMcLSLpBaLha8iqRc2/KwQWfKycQbCGMJgtfKtwLzINHLB7PBuVhT04K/+h0
	jbXwVbA65hXvcF698rbdO4qSWUid4fgDOTDxYwhH1Mg3tnc8nlMKdcMEw7MpSvppPglfl4XSX32
	h2qPulQE0kJ4JQtw==
X-Received: by 2002:a05:6000:2909:b0:455:1688:d421 with SMTP id ffacd0b85a97d-45c59dce051mr1505299f8f.3.1778664120692;
        Wed, 13 May 2026 02:22:00 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d003:300:83b8:207a:1814:3806])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4549120ec0asm38402342f8f.17.2026.05.13.02.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 02:22:00 -0700 (PDT)
Date: Wed, 13 May 2026 12:21:57 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org,
	kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH] phy: ti: pipe3: Fix clock resource leak on probe errors
Message-ID: <20260513092157.uvxxsofyoqxqgyqo@skbuf>
References: <20260513063902.113956-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513063902.113956-1-zenghongling@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_022203_105376_6E21FA22 
X-CRM114-Status: GOOD (  10.13  )
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

On Wed, May 13, 2026 at 02:39:02PM +0800, Hongling Zeng wrote:
> When devm_phy_create() or devm_of_phy_provider_register() fails,
> the refclk that was enabled earlier is not disabled, causing a
> resource leak.
> 
> Fix this by adding an error handling path to disable the clock
> when these functions fail.
> 
> Fixes: 234738ea3390 ("phy: ti-pipe3: Add PHY driver for TI PIPE3 PHY")
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---

Fixes tag: Fixes: 234738ea3390 ("phy: ti-pipe3: Add PHY driver for TI PIPE3 PHY")
Has these problem(s):
	- Subject does not match target commit subject
	  Just use
		git log -1 --format='Fixes: %h ("%s")'

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
