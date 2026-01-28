Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A95D46BFA
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 19:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gW1wRxrq2bZFY86LleewiK/iFJrAxXNunNGV0pt7AE=; b=zd5fKhicr0mcJH
	ckZhsXS0p/FOmhMW6VFbsVQZ1QyH3ORc236n6OkOlq+O9b4XXQ7+J+LPCnpWkfCDzgCGcyebmwsVe
	cpo+VuJL+b8uQtyTdAA1kEz01S8H4DT+e+///NqBSBRkBjJFPgb1HAe3gY08sME5LlQyG30wANxKr
	fAfBt1Xm1mHYrrfUlBZ/ZV6EiWfe7c4NqfvueS6Y6E516+o9eosWBKfmjTvX6Gkds8VK9TiABFwby
	tngKeGraT5Hoduk9sC7IxWItiwE7WZ++n8Y9SFsv548azQaDozKW+Dptsq7WK2wy5rRm4URC8V8Ql
	oF88OPdaO/6VJUydHgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlBfC-0000000Ghcq-1uOZ;
	Wed, 28 Jan 2026 19:57:18 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlBf9-0000000Ghbs-00cj
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 19:57:16 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4806bf03573so1296315e9.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 11:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769630233; x=1770235033; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QWXVTrWWSL0uRDUDAgPurGbnp5Ffp2t05SD0ZhbJZ+8=;
        b=OmzgUNspL0u2SCevreJhOrrP3vmDPkyOFisBLDVSE3+DDj5A/K3NoJIw2qhfjAeoye
         lt01VKcq1HD9LNUxBd6AlyIjSFxmj5gnP71C5Q/riwXzGZdjjvM7efamkHx5Kz+DUyfC
         lPF5AN7zNZKYwgIQ6pDjDVJ01xE4ezmYlOJguMcDN5EbnNNdQP5CsMsdPuOcuPniBJHv
         rHBfSo2chHemW6Ua12Vc4fN507RVzSoGu2vo7mod9eTebYj9Wr3M0X0ITB2cWOD6a3bz
         84Cpv9quaxWJph0JP9IY09MDbBNZ71p1+X3rbaeYDhgZq1AAGoH/G2k9XOP7Dusc95EE
         YsjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769630233; x=1770235033;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QWXVTrWWSL0uRDUDAgPurGbnp5Ffp2t05SD0ZhbJZ+8=;
        b=pJh01clRmA4gIe8SdmKLgK4viKbxXsp564FGGmOrp5dS/K5Jk+ZPsO3nzyFiJY6LWJ
         WZdH55UL/XfMQi76adMrYTTwnoGNDZhooMYs+iSKjv+4wA4U2hyL+7eYOo5MWCejJQu0
         Z0zcS4kryLgK7GMyRuyt3XfchdjB6DqbZNxxDLI6iuNmjAR68IRtAWT5DeJe58CF3w3r
         L1fK9nDnKeLVFikvQDVerFsQNyosvVzJY7e8dpBBP2N4/qE1COYTCT4gua50pIVBxc14
         h/95xFna18fzFxVl8svhlvL0N6vV4suURQGSzxTUCfouX0r8FSNxId0Knu7pJVnwF2FI
         JQfg==
X-Forwarded-Encrypted: i=1; AJvYcCWiF5ocWoWoWQIXwFRpjdFdSDup72oNFdsk419eKhe+0paeHp0ShPapguJzb7VAbnIYoVZQxToxz6c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yznk/BcbLFiRuqYwPBTTO4inmUXoZ28rClFtSHf3B3tJie3ObWg
	6/4UtfxzFLzrmGzHpG2iOF9K3OcKZY0kF+LlDGDtheY5adQjWzKusyywiHfN+Acb2xk=
X-Gm-Gg: AZuq6aLuyRxOIyqN4+ivjankpfT3dOTQ6r+6DcBu2gtobJx5SdQHodLiqxGBSLm7Drr
	AJjgSSFIK4wOFg8oj2lJmua8qpHEmZxqzovoVnoEPlbJwuAFvnxUS994ufzSKzW+gDreHIamwZo
	v9sU/nh9em52M5dy7wSCB0ncJOA6tHKdO+uJZQSF5EkukYPvW5R7dYeWjS9ECC4kULdxSF6wbxj
	gdoBqFC5+T8g8oTGVCEoJMOTvd7F4INdLpAGnrDXc03JN7vvcQr+lD7r3ND4TTVqiiW8ph2Pr0c
	1prPg41MBJMeCHgsN7j27ouJNbUAFQRG0VSYxuDL6UruVP5tl88RXPJUQ4WfNzOIlvhXyRc4x9D
	oZhaQebyyS1ClxToq229KPWkbO7Unmf/M7seG6S8UpeKVms6s7nOoBG3bip/uOi+N2nGsAn4VMi
	xU+dmpegSaN9++uZXGz4LYi1E=
X-Received: by 2002:a05:600c:6995:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-48069c92c03mr92248975e9.31.1769630233039;
        Wed, 28 Jan 2026 11:57:13 -0800 (PST)
Received: from [192.168.235.30] ([80.233.74.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c40e04sm149805675e9.13.2026.01.28.11.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 11:57:12 -0800 (PST)
Message-ID: <f13cf27da2d1d7d8a54448391c16a8eae349e8a5.camel@linaro.org>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google
 Tensor USB PHY
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty	
 <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel test robot	 <lkp@intel.com>
Date: Wed, 28 Jan 2026 19:57:09 +0000
In-Reply-To: <CA+zupgztBHTJwNPEOfXjdw9TpcpiVGO=hdFBYk3PUo-0Vf95mg@mail.gmail.com>
References: <20260121-next-v1-1-c18068b091b9@google.com>
	 <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
	 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
	 <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
	 <CA+zupgwEWM4c9yK1f-Y_Cv5gk=0zYNuUb3kZyZ6O3FDRbPPvKw@mail.gmail.com>
	 <eebefae5273bccce2d0fcd97afe3ea28bedf27cd.camel@linaro.org>
	 <CA+zupgztBHTJwNPEOfXjdw9TpcpiVGO=hdFBYk3PUo-0Vf95mg@mail.gmail.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_115715_081406_2A8C13D9 
X-CRM114-Status: UNSURE (   7.44  )
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

Hi Roy,

On Mon, 2026-01-26 at 18:34 -0800, Roy Luo wrote:
> the wrong example. Let's look at this build error scenario with
> "depends on TYPEC || COMPILE_TEST":
> Given COMPILE_TEST=y and CONFIG_TYPEC=m, the
> "depends on" would be evaluated as max(y,m) = y.
> Hence, CONFIG_PHY_GOOGLE_USB is allowed to be
> set to y, m or n. When it's set to y, the exact build error
> would be introduced. I also tested this locally and saw
> the build error.

Thanks for trying Roy. In that case, it should be written as

depends on TYPEC || (TYPEC=n && COMPILE_TEST)


Cheers,
Andre'

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
