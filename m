Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED7A5FEFB6A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe7xG8Q7+3OYC1RpYYcrcrsJXkir9EViG0CJdeYFBEI=; b=hpO7xGfZ3xIcmv
	KrE2aKFtzZrWQxOnTAvDWziL5tZSy/YvpS4BofClDg5+yM+l9UsgnZPxShriul+8PhGcPAZZ9ioJU
	OIRd+kbvlCvWDV4/yp5WQZRVKnL/NuDTtt2DRqVL0rl3C2ENsI25/dJGQxPDxRfDSrPq7avlMJJdG
	JUXA3a5eUu0PjomAU598hReUb4UeYwhd+jTMCsUK0BKWDT1v9Lh89jmOhvymfPzE1/o0tXxjrO7Xu
	UNaH22LWZ7UJIf1ynvDL4K9GzvMS4C2UjhCcJjZpdK/QU9J/xLMp/O7bbPtUxZdw29Z7s57wuSEvI
	Pg3pIeJ8cv6Bijn8VQxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1QT-00000008mZh-2sQa;
	Fri, 27 Feb 2026 17:14:53 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1QR-00000008mZE-1MIz
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 17:14:52 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4376bd50b01so142114f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 09:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772212489; x=1772817289; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FmUltvU54hbRRy0xFqpsv0WciP4Yo3wnOvw1sK4/T7k=;
        b=ZP8ojXm+XfaKjoNg9shWBBCgLNv9FtC6gSaBkv351/hxtvUmQ+kNJ2QnfwJ81dtMqr
         tX16uEzanoGAPhJmEnNcddok7LP8/w81tXp5Dc3fLqGf8vtSY8IVKzujdEI6UyxBGQEN
         Oq+pEdfctJCmXBXxUkIIV9KmwgvxX/NwyG8Io5LLdUfIGCczCh3Axf7s1z/zLiYxZ7Fd
         nASLDJ92D3AblxDFhXa4wSSyI7U4D2wu2/IqN7x7zGKwq5MjxSAt+FfctGZvpsW/mZhQ
         Oj+h1sqwYk3pY/SSdXgAZ4tnHodaTII0kOLrmUtAmYz0828eeWrqAHx/MMc6yDfLY1Ae
         DeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212489; x=1772817289;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FmUltvU54hbRRy0xFqpsv0WciP4Yo3wnOvw1sK4/T7k=;
        b=E4B70uH8uUr8jdH68lJFMFHrEtpG61knv8Of2lDp0TQ66vkXxRHNXt7A++KvB+c9hk
         w4go5OOxZHkr9XkUoYliLLckG/UWPF2BaF5noFLCmXjc5eWMsDLZs5sgJadVdP7w+d/Y
         Zg3KjkVRkQOa63V7+uXK929ilRUCzmWLXsC0mMlRriNie0MIfmxNge89YegWw2RNDq/4
         tXTwjx+IR5xrj1mZKJle7XAMJwolx0+h+34rw0mTDZQayDfqxkt3pjdSJKqZBZB4y78D
         y6GI/rn2jlKeRpIt2lBw/F5Nac+EN5iuYfkhkFjV59lnQ/bfqzsSKmpVuTw560cmAhPT
         Ac6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWd91muIcBqLfbSuliQ0EnXbcQarBpgFnm2n0if6rQtHYBSm0OOPkONOZuNY/IPiYz0/FnA3SXj9U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGiR5Ai3ssXzY1TxQEmgaBSHLe/oQ219i8zHRxlLn7m87awEIv
	wr9OsATLzoLXPJBbQD6pfMOALUo1B96bW4lGAJMY4zXzJ8Zk8HUzGxNNd2AoiA==
X-Gm-Gg: ATEYQzxfAoOI9ISzPrzIQjiyoOmOa74/w7+tScuDMfcWdaQZEa1JEykL+o97etpxVJb
	eGzD0NcnjbIcvmtP87dpx5PA2w7QCBAsXogsqybTCMjdW6ehJpmErnweIDMtuQP7XDWl7C1N56A
	bbJ1i7oCrUZeQg/KTxoO4WqcEXKCtPFXdRdyFoVkNeZfwaLpMF7B2JednGtMJZcBPol52bMF5gH
	De6DduhRl5XZ0Uk/aqym0PKJ/IKdhqi+dOhRtexzK+ZEnfKjzRA8eddny0ne72Bz3WlBR26ElUZ
	mTO6FSDIs3ypM2Lva4xTf2gyNlQpsLQaGNgERmJLHS5V2PKns6v/ntEW56/4qyCj9iAzdi+SWcd
	pTqbqvvUpRHPtSD+MLlFxi4Mp0EkH5+08wQsyOpi+8fV5NJEnfdBuB7ed7R2r9OvtDIp2mImc6m
	0yjOntGDtXSbcZCUMoHw6JJ6QA+wei
X-Received: by 2002:a05:600c:3493:b0:47d:3ffa:9838 with SMTP id 5b1f17b1804b1-483c9b999e0mr31630165e9.1.1772212489064;
        Fri, 27 Feb 2026 09:14:49 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb8724bsm85551835e9.11.2026.02.27.09.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:14:48 -0800 (PST)
Date: Fri, 27 Feb 2026 19:14:46 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v7 2/2] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <20260227171446.mqygrv35s5jdae46@skbuf>
References: <20260225-macb-phy-v7-0-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-0-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-2-e5211a61db56@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_091451_378482_93A4A2B5 
X-CRM114-Status: GOOD (  10.56  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Feb 25, 2026 at 05:54:41PM +0100, Th=E9o Lebrun wrote:
> +static int eq5_phy_set_mode(struct phy *phy, enum phy_mode mode, int sub=
mode)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +
> +	if (eq5_phy_validate(phy, mode, submode, NULL))
> +		return -EOPNOTSUPP;

Propagate the phy_validate() return code, don't generate your own.
-EINVAL should be preferable to -EOPNOTSUPP, so that callers can
distinguish between "phy_set_mode() not implemented" and "phy_set_mode()
failed".

(yeah, phy_set_mode() was made optional a while ago, IMO incorrectly,
but that's another story)

> +
> +	if (submode =3D=3D inst->phy_interface)
> +		return 0;

I think this simple comparison fails to serve its intended purpose
(avoid PHY reset when not changing modes) for RGMII modes, of which
there exist 4 variants.

Maybe:
	if ((phy_interface_mode_is_rgmii(submode) &&
	     phy_interface_mode_is_rgmii(inst->phy_interface)) ||
	    submode =3D=3D inst->phy_interface)
		return 0;

Does the EyeQ5 platform support internal RGMII delays? If yes, which
layer enables them? The Generic PHY?

> +
> +	inst->phy_interface =3D submode;
> +
> +	if (phy->power_count) {
> +		eq5_phy_init(phy);
> +		return eq5_phy_power_on(phy);
> +	}
> +
> +	return 0;
> +}

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
