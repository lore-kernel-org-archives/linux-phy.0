Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C573EB2706
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 19:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1/cdPD29w5LaiEOoVkxNB5PFw/pJ2sjRy/Jj11S8vY=; b=qkjNN1I+L3oFMC
	xBL6xU8+RBkMiINTwQu/U7+Rnil538rCs8+B7uZYmseuciqntaVy9jq2MdVTH2LsBFlonUXDJe76q
	PFF2kQ7wMOVmDSoIX3AogIHIpGYVvubTeRfL+GPSFyj1SxG7AdXQSrrtw9tDVG2K8KkBYvB8G7lLl
	rqFFH31jhvI3ud71sT0eaS/LeJDCRa9TVtMeiQRtznwV0xUO6HTfx/Xf1sCTgXJfBuuhfDPN2HxaN
	mkki71e+qOG7Vxgm/iNbeW6GuoNQrC+TFFFskC0kzsKzQIDp2SY9qCnoY0qDZGVg5x+YZ93LgpGu9
	qwLeRkStShphSD0hwocg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vptYE-0000000HRhg-0dyQ;
	Tue, 10 Feb 2026 19:37:34 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vptYC-0000000HRgD-1PLK
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 19:37:33 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-435a51abad1so768175f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 11:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752250; x=1771357050; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fqDz8Drx8XjDtZc8LsAC+uLDhKgLLYdxTPVtiF/ij7I=;
        b=L0mmvWO5eD3zwMk/wsjcEmG9Gz0VuSuPwJQzRmdEWmoPRkKi5wDrORZ2YkxFEsze68
         qT20Vs7JiLMrcfYvShNbAw1ZIIHmGvZlE/4VZo63tbey7dTX8IqAglmCwTVsQ/UcOMA/
         B5hYkzFDjEoQQEIqJEQYS1D1tLnVZIV9NoBFvhJwfkI8LJqpyS5EWOuTWz+rgvCJEOt5
         scWnJaSpEYc3Rw7qHogAnV2d5s7mI242Ammc3ZijZju+er+hTAslXpvYME+6xDQLxsp4
         mJ0Zx6TeK3LJtAJuUD9uPJorH+RBO8BJGNm9Qkwm7qGaLf1/SYHI5AL5FIvlT8PFBquK
         BaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752250; x=1771357050;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fqDz8Drx8XjDtZc8LsAC+uLDhKgLLYdxTPVtiF/ij7I=;
        b=b1xB/7z4cIEhx+QhLAd+qbdijOxomz7h/EX/ju1bYsCLRg0eFagKqsCnDKBn4SZHyR
         i7LRT7dplbATweWNdSVe0czDh1h3/2HiGOXgvD4q1iFgtxnVLyub4hvyNX2nZTtU/zDr
         +ELnQpOpcr81wlcCv4moVLtj/r07S+B+l4o91t/jAMxcu8BYXNBYB1tgf8aRW0v3qejE
         wgMjhLePRP3Chnhitowxjohud3T4ISyhrSBNJ4+5irBQpH7ecCCfdiw+iT0wt7YUqU/k
         CIptDhSf5JVut8IyXoFNC0JpV96k30qTvxwnHqhlSPczM4x2IgxedRuR3QG4EXQWdAp7
         0HEg==
X-Forwarded-Encrypted: i=1; AJvYcCVStpwWiPqX7mwSgruiN6fNwyaDjtFHFioM9+vgnwfcioQUIfkul5SsGuE3leK7P77EjhnYSfl5Rtc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5LRLwDDBTM/cD5KpG9/seWn8B/SxjxPZEToJkuag2cjwZICYg
	xS/fhqEKi2f8GeNiy28KuqKk3lZUBqEnqatMleR4ULpIZnXhgxQPt2jp
X-Gm-Gg: AZuq6aJKugpjRyNK5BlP6dM1GL9uiZuiU4xPmdxbLz0QugNlV57XGjIdHTUWu9cSXMg
	a3nXA9XXd6q6hDX5YQ3ksUH93YLYsMkWv84kmlcwfM6N5yYvLSw6kj5l4E3EeiYFV+R38+C+p2q
	BA/JAD+w8Ehx/xGO/h2/OJIUO6a+Wn/tyK4s+3ofyd5wyYGQDwYQWDxvdamCgf7qGdIOQFuxAR+
	eJRYUNAzXvHCQardxYTyZGx2Lwwqm4HEodKm5j2AHwCd68GRSAJbSNKRq99XJnI+NT58d7f0sEm
	PltiCHo5UZ9b5e8od+dhukQNM3tr4y8FgJlRdekmfoe/H1yvFuBdGd5vP3O35mfL8U5wpM77KWt
	MyzYTy0kLoWRCfJgh7M/qr2BuvUf5W3e0knqFxeCpk1SgLz0IqQ3FI89NDzrHz31tOmFaXniEVg
	+mzB37RGFVO4fXZt0=
X-Received: by 2002:a05:6000:3104:b0:437:771e:9dbd with SMTP id ffacd0b85a97d-4377aba5bd2mr2497517f8f.0.1770752250206;
        Tue, 10 Feb 2026 11:37:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm36328520f8f.17.2026.02.10.11.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:37:29 -0800 (PST)
Date: Tue, 10 Feb 2026 21:37:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: =?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 2/8] phy: sort Kconfig and Makefile
Message-ID: <20260210193726.h6fc65gekida65la@skbuf>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_113732_386450_F64E0A2E 
X-CRM114-Status: UNSURE (   8.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Theo,

On Tue, Jan 27, 2026 at 06:09:30PM +0100, Th=E9o Lebrun wrote:
> Neither Kconfig nor Makefile are sorted; reorder them.
> =

> $ diff -U100 <(grep ^config drivers/phy/Kconfig) \
>              <(grep ^config drivers/phy/Kconfig | sort)
> =

> $ diff -U100 <(grep ^obj-\\$ drivers/phy/Makefile) \
>              <(grep ^obj-\\$ drivers/phy/Makefile | sort)
> =

> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---

This patch is appreciated, however it no longer applies on top of
current linux-phy/next.

Since we are in the merge window currently, would you mind reposting in
2 weeks (or as RFC in the meantime)?

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
