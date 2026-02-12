Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11254EB48EE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 09:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4w6mo2FIj01ZHc2yvC9FB25LNqttSxlj4OoDBBSJVQ=; b=LYe6OWZ22xyTk+
	s4M66/c/eF4MYgoCJywTbeTCPxhuO5TFwg74VkTiN4AdzIPbDcJ1IsRlLw0Bcz7ShToCV1IqAWFIM
	ltvGYKCq0k6tvJzX+o69nl8VLG4Y+f1WUzJaaAaDWc8lbeeNyZcLbeu4QlJA/AZeDq3q0gyTsjSsi
	mqRk3RP13HaDBUInuAjQqUFZhu3w9q3aCBAoUzUri/vm/tP4Q66q9UO5aKsdyN//dy2HJWr4bfXWq
	FmDohzfebKFNM2+S1YWM6q+QH9doH/D6fcBLp551oh2XSS3U5wCWroe6VKwuNNyHsPgA3jbXbo3i7
	u/arkdEFYvcNkWi2oPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqSlW-00000001onv-36oS;
	Thu, 12 Feb 2026 09:13:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqSlV-00000001onW-1Hfn
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 09:13:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5b1f17b1804b1-4806a7ec499so8272125e9.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 01:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770887615; x=1771492415; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v52+nJkOYCsoxRiSmOJCpaAdmkTUJTGO81WVi4TlMMY=;
        b=FbUWA8xkOmZ3NHpuyA1YMZysmLSXbPCGg3OP0o6ylfYGHBtML13D5NSV5t0cob/RAw
         vpblY8diag1LQqxyA8YBjy4i+qT04VbHmBx1m7KbJtkYCcNzePa6+gEca2JYarNYBAIp
         t6vqq+YxZsGpM0sHufvueEvKn6tX5jGrAPVJdujP/Y+03w7hNbkDeqlCxlo2tfg85DXI
         bArGEWwYDCm6+aI3+e55Kq9eUZZOCr0V1TFvW34oUOXaoKEObjyAEjX3jqXS5ij1nnkS
         yKslKLWwUX9R3gFwmN7ldR4gnbYaWC1SdGl4U7jPYTnkiqzTKrr/s6K53dfbstc+nz6K
         T+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887615; x=1771492415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v52+nJkOYCsoxRiSmOJCpaAdmkTUJTGO81WVi4TlMMY=;
        b=LBwMds6+/nov0yMaoet7G7eKymluoEPX4wBDV471bqmDJuzBrya3ChSA2aj/LpOg+j
         IozxvoSWtLI0+A5fyjZcg5BJfTkvJR3P/BGSCy3q7Y7fvcZOfOYt740KZvDAuAf2LQtt
         SpbAnXRHBb+748L0Fixaro3VJcxAexxKgaeCwnbPxVDMDDmZ2cLSqPBv2vMHbMu2BmTY
         1yI+Ja6Z1gJONHB/Tiqaj+tAWIudRXnFaPkmfqpZ14V2uTlzGzX6v4dqTZqyfazWkmBC
         0DZKy9bc5HjBBXp1cZtoNpsraafKK/u978ZvbCVn3z2+ZoxhJmkP9LJrfPnJ0ItSoMN+
         PJaw==
X-Forwarded-Encrypted: i=1; AJvYcCWVYAwoMZ0YwvTAEgc7KKYU/CPGkaucU8KqADZPnZcP0dupr8XZtAJyXl7vcs8fhdB0UIiESSpk2gM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxoZemtRXlNdrVOLxOupKtv7FAzagktqNlUtQ0Of6kOVnyGoTen
	0gx63q29gNNK6ZkBrakvAsRdUPadKs7GGkIUFPIVVGnpinJ0moaTSrYt
X-Gm-Gg: AZuq6aJjkOp8H+QSGXyYFrsWmcrrurLidQmV028OTmMXMo6vgVnpcmr44LJv39IwGaX
	nnZpU1ZH7sopRr4SQb+PDZyxZsAOFqJUqgtIffPemik0rTbfy8sKoarMCiJEzxDXZOcV8dEj+wK
	Bi4L/Kqd1teSjWd5xxpw9DaWRKNYUBBBFDXnK2StY9J/P/VoVdl7prqQHWo4KMZphvgtdHqh1NV
	PUQ9mftnzUiZMTusioUpsdRyEpvlVcle6Bbn5xtmKMKxZSzLp8/IS88vGHmv2MaT2Gisljv7qIQ
	LZMtSQ1kesXZNK7bTlFbtljQQWMmenfRNTNptB+rKalwkxOB2EWQSptn2yHu7n1RetAoEInXFSS
	wAz+72N/2T0Wv4si7mwvpus9ibeNNVuaF9qdGlGVLReLfcbko2J0VMI6XIy+8lMYf5PSFg5zekl
	7T2/LMP5UPuODY9cA=
X-Received: by 2002:a05:600c:1d9a:b0:47d:6f12:de57 with SMTP id 5b1f17b1804b1-4836570b489mr15560455e9.4.1770887615033;
        Thu, 12 Feb 2026 01:13:35 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836131d52bsm34123735e9.28.2026.02.12.01.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 01:13:34 -0800 (PST)
Date: Thu, 12 Feb 2026 11:13:32 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <20260212091332.qcpi3qyynmdp4acv@skbuf>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
 <aYznE1FIbs_0OcPR@shell.armlinux.org.uk>
 <aY1hs4XKZSpvKd3B@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY1hs4XKZSpvKd3B@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_011337_364288_04AA24E7 
X-CRM114-Status: GOOD (  17.50  )
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

On Thu, Feb 12, 2026 at 10:44:27AM +0530, Vinod Koul wrote:
> Lets document that call order is immaterial and driver is expected to
> work both ways? As I said earlier logically people would set things up
> and power up, and on the fly mode changes can be handled internally in
> the driver by doing off-set-on dance.

FWIW, I already started telling people during review to not rely on call
order:
https://lore.kernel.org/linux-phy/20260210193516.temrg46yozxma7xb@skbuf

I don't mind continuing to scan for this in new submissions. Then, only
the topic of existing drivers remains to be resolved.

> Thinking out loud, we can also move this into framework and ensure when
> modes are set, we do off-set-on dance so that onus on providers is
> removed. Moving into fwk might expose some bugs in drivers though...
> 
> One thing I agree is that we should have consistency. How we drive that
> can be agreed upon.
> 
> Thanks
> -- 
> ~Vinod

I kind of like the fact that the framework doesn't have power vs mode
assumptions built in.

Also thinking out loud, we could do something else - introduce something
similar in spirit to CONFIG_DEBUG_TEST_DRIVER_REMOVE, which would be a
debug option that sees what power state the PHY is in during the
phy_set_mode_ext() call, flips it before calling ->set_mode() (calling
either ->power_on() or ->power_off()), and restores it after the call.

Having this option should also give PHY provider developers a quick way
of testing both calling orders without modifying the consumers.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
