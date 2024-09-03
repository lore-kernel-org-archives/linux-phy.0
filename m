Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0153BCA101E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgwNtUul9VFXVvXKsZH5vdZCM4tQQakNUQC4Iw9xm8A=; b=wGtUA+S9cZBa3f
	m7n9aRXHD8ura268zHTSK1lcA+9EC/oMNulVrq1d8gbO2eU6dA53l61GH4mzD+0AGfcbUWw+G/Wfp
	nkKfNVILE3oW3tt/bUbMN6nPJUW7d/TKLyHcUZaj4uiM+SWQLNcFbJ4DNnAbjQJV15KqwbiIeuoOc
	9QLlB39kjejSjoJvCo6qfo/DpAqPN4Aa/n5Sc5V0FqKUB4tcu9GJJRoK79AnFi+NadTzMJRXeky0z
	ya4NBAOtXMQlm/myjDrSSA4LZAYdfrjkndgPlACXXhy8xte3xTMBGKfu1KNQvaD336XMUDlAWH/Lr
	65nHJovvB7ueSCaOulyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slLqX-0000000GLha-2hMY;
	Tue, 03 Sep 2024 05:12:53 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slLqU-0000000GLga-2gxi
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 05:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1725340368;
	bh=wWO2bj7xnGRGn6uerGFHpllvxA3WXeC78hSILIY+YSk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S/kz9qYF19e6lRc0s5BeqE1b0XD8+U+z3gnaSXb1E2gRdfdfm21Qjio0J/mNFrcHR
	 dQIswzqH9+KA2KD4ydlW7eh5IqnYe2jh0akLtwU8M4IjzgCZk1fqfuqBkZJ33KpEhk
	 YDTvcN88PsT2nGzmUZQCylaGT/9q17B+ZRfe87hrwzAteAizgAm+kxTIK3cpskBE50
	 11OH+CfD/p3eY+ESXeNqlMWQUU7OxO3aNjmsKSVgWv+EiDctFuAteSSFSFBnZq1JES
	 fkYIHniN4Mdg2k5ZvnspXcv371kTwWXNkY6FpbD7Ulmkb69xbOme47On/TfeZ2TlHc
	 kWP1jBVdaRyPA==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 3E32F9D0
	for <linux-phy@lists.infradead.org>; Tue,  3 Sep 2024 14:12:48 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=StcKrLCU;
	dkim-atps=neutral
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 6B34F9D1
	for <linux-phy@lists.infradead.org>; Tue,  3 Sep 2024 14:12:46 +0900 (JST)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2da511a99e1so859840a91.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 22:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725340365; x=1725945165; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WTVet2hwtDQC+7RYNH41N/xrPAZsrbreOOChXWn2n14=;
        b=StcKrLCUJ40UO1Ryv9EYYO5JJv9GRJZpBvJhLrCCEO0PAx2Wow8ksiGvPj6k7xajwW
         2rhnsWVqayFoMh2RBhXVFbw+MbU0Qi/NcwAP+ErzjrtV4YbXvU0KF4QDvS4ZY3mq+XZu
         oeA/eg4cVBZHlXnCtdd58IEX/JmK6SxPvkoLF3oYLaYQjHyZjYZ1LeWCJOKgLpNUCJUt
         kQqSnz515kv9GZtYxspRxVzFncoSFgIzCw/D/9RykJcqajKZhysTRd0fNU04WFsmBFKh
         HXFwRWV+Ea/wYBhopNVUUJI1sS5TS+tiXMERP2trBrdJq7RritLB3FeZGLHPRVmpvH3t
         wpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725340365; x=1725945165;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTVet2hwtDQC+7RYNH41N/xrPAZsrbreOOChXWn2n14=;
        b=HkbbJWUV7SBUFYIyPiXgc09YZbD399T1kfzJ87tNSi2ZIWY50EsIP5/Pwc9VqYt4KH
         YRnEbuwOk6On+P+443yBqAzrJLkuvYecxqHLRrCIIaRkwczp4cNY/Ue/GtqUMV11VqJ1
         5hGqjS1p9EI/2snuS1iDeu+wTjq7dG9lSZI0LnPCiqVWW3oZ7/xm8EjP/97b1NFicQPm
         EUOoESiru5trf9am0zsbdcrHfq6YZSwx5Gk3CE8OJVfSqhYFLm6LdTVwhULMj+LwdCnV
         opis/1GUxcxHnubvMtXIr3Hn5B39LGX6TDLjHpK49Duus1X/mQoCXThLhKLtGQNs59Fq
         qq1A==
X-Gm-Message-State: AOJu0YyFH1TdWCozqhg4SexI+85aHRSfL+ggLqtg7Ny3YYMBHtKPzwiK
	QiBKfbkJ1bDalWIFIFGcAkSWMm1tdmTXpyceeObqWAAIUvvBrElcp2fyOeeLV32c7kyAaayyU0r
	tm+9TUIpt2JERvGf66qYB4mbR9Q+b6fiRZvRUKfiADdxcsqTuV4i80SblFAjtRcm27Iixgd255Z
	M=
X-Received: by 2002:a17:90a:51c4:b0:2c2:df58:bb8c with SMTP id 98e67ed59e1d1-2d85619f138mr17306765a91.18.1725340365190;
        Mon, 02 Sep 2024 22:12:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI/W6ki+54ibKrTj4V308dUfrgyQoxjyaoSQGc5uK59zJxNKhhGRxaLH+SmdhuJ8T3mWPCXQ==
X-Received: by 2002:a17:90a:51c4:b0:2c2:df58:bb8c with SMTP id 98e67ed59e1d1-2d85619f138mr17306741a91.18.1725340364813;
        Mon, 02 Sep 2024 22:12:44 -0700 (PDT)
Received: from pc-0182.atmarktech (145.82.198.104.bc.googleusercontent.com. [104.198.82.145])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8445e7faesm12597893a91.16.2024.09.02.22.12.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Sep 2024 22:12:44 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1slLqM-003XDw-37;
	Tue, 03 Sep 2024 14:12:42 +0900
Date: Tue, 3 Sep 2024 14:12:32 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH V4 4/5] phy: freescale: fsl-samsung-hdmi:  Use closest
 divider
Message-ID: <ZtaawD3vb8gmnVmO@atmark-techno.com>
References: <20240903013113.139698-1-aford173@gmail.com>
 <20240903013113.139698-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903013113.139698-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_221250_822467_CF2463D0 
X-CRM114-Status: GOOD (  17.64  )
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

Thank you!

Adam Ford wrote on Mon, Sep 02, 2024 at 08:30:46PM -0500:
> +	/* Calculate the differences and use the closest one */
> +	delta_frac = (rate - phy_pll_cfg[i].pixclk);
> +	delta_int = (rate - int_div_clk);

This assumes rate > whatever pixclk was found, that doesn't look true to
me for the integer calculation (`delta = abs(fout - tmp)` so it looks
like it can pick a larger value)

For the LUT, the way the lookup works is by picking the closest smaller
value so this is not a problem, but someone might come fix that later so
I'd rather just use abs() everywhere for future-proofing


That aside it looks good to me, I'll add a 0.5% tolerance patch and test
this all ASAP (might be a few days); will send the tolerance patch
properly after testing but for reference it will probably look like
this:
---
From 12479386c955a59330232c84f4f856606c3a53e0 Mon Sep 17 00:00:00 2001
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
Date: Tue, 3 Sep 2024 13:47:24 +0900
Subject: [PATCH] drm/bridge: imx8mp-hdmi-tx: allow 0.5% margin with selected clock

This allows the hdmi driver to pick e.g. 64.8MHz instead of 65Mhz when we
cannot output the exact frequency, enabling the imx8mp HDMI output to
support more modes

Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
index 13bc570c5473..9431cd5e06c3 100644
--- a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
+++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
@@ -23,6 +23,7 @@ imx8mp_hdmi_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 		       const struct drm_display_mode *mode)
 {
 	struct imx8mp_hdmi *hdmi = (struct imx8mp_hdmi *)data;
+	long round_rate;
 
 	if (mode->clock < 13500)
 		return MODE_CLOCK_LOW;
@@ -30,8 +31,9 @@ imx8mp_hdmi_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	if (mode->clock > 297000)
 		return MODE_CLOCK_HIGH;
 
-	if (clk_round_rate(hdmi->pixclk, mode->clock * 1000) !=
-	    mode->clock * 1000)
+	round_rate = clk_round_rate(hdmi->pixclk, mode->clock * 1000);
+	/* accept 0.5% = 5/1000 tolerance (mode->clock is 1/1000) */
+	if (abs(round_rate - mode->clock * 1000) > mode->clock * 5)
 		return MODE_CLOCK_RANGE;
 
 	/* We don't support double-clocked and Interlaced modes */
---
--
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
