Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA5B8CF9C6F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 13:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/5eDdIqF48/evRxi/3ePju64xONErVh/mfLs/N+FkE=; b=LrpsClwXwtguD/
	nSBgK7pLLajU5H2oBgSl+m5/YexQ0aw5vQeI2YdS+JqgezG42FXg5NPw3oqbxxAQAj1J7Z7GrjoX6
	YGid+CEeBqHYbHO+wFiL8l3lReacbnsA9pn4/qojGlIAhfOJaxbsYspdQvpd8fww16Wc+EiIcD+nd
	A+EdZMD/eE3rzF8qAVActL1a9t1wCvYdLOsIRkR3Ax7dVTKS8S0KKqkjWzhKb4NL+XL+u3w08IWTm
	blZ+9SdVBKgO9iDxoq0kv6GaaRXkjsRIOyJKDO0KuVpCaPgIXL9ttbSIX8M/nOLMZbbY/GiKxiqU9
	xZn7cOuLd/4O/KTv+Sig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st5uZ-00000002TLP-1ft4;
	Tue, 24 Sep 2024 13:49:03 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st5tP-00000002TBi-40ny
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 13:47:53 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5365aa568ceso6514438e87.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 06:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727185670; x=1727790470; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kBt3x6ALV42ewF+LrxPLGBD5z1fDXU5VRBYVjXfLHqA=;
        b=Mo/bSwhwfQk6vN5q1jXmj86oZAIq3eomfc/oSRlh1zuO3RJAEieuf4oFo/H8Kf7WWT
         eqni/QPEHWo8PRQrqXmtM/f3qACgkCb7ZwJ7/yZ6Xbb9kj8u3p9zZEJ+yH7ejXZzEBZG
         P+oNgGWh1k82c+EkoSW+fmDOwa8zdDxv+Ex3sdgO1dUNzBs7vf+oliX3cStUjLogNbYw
         jSfRI3FFBgWLalk3PoskYhQxVFeoNyAaew1Mana34TicOHd5eYkX0fuuTW+lYKNF9FZO
         2hEm/nYR6q9yORrDCB+hkvXQg84kwsRUjOsJq3sLG4t2hJQ0dxbGZi805ru96BRTTjuC
         DVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727185670; x=1727790470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBt3x6ALV42ewF+LrxPLGBD5z1fDXU5VRBYVjXfLHqA=;
        b=lvvEzkAw/S0th/zLrc9O/Xdw/iXv/3dg6+3cNO6bNRSqOcyA1Dg7hkkd7GEyNi8bSa
         uittgifwF0qkRLsGMrmg0LKo5T9Og7EABG1kVjHpU2PDpPBpPnIz2LNNYyJOuLJ1ecSE
         WH+sNkbBGaCBAgQyGvs6uGY4OsZW1lj3lcTg1vfm7p5WMNl6oogBX8UuR9QvKo1V/nQu
         D+DW/tvL+wo3nolMoYVAZJA2pf2YuQSzatqxCfO4PtRv94AFuqCih1TQJE6lRuqiiga5
         LcGcvx6sc2HedaJSJzo3meFHWNpZH8qC7CbJpYXX6bVlEowhn6i/0QlxqSXlasQnNUr7
         aCyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWopo2KZ/tgwM8sjfLySdt7tS9VqkudBUr96xQfnTk4kXiH9u8nDyvoh0NgW7+6D6hYFWE65ufRUYM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxhFZmVBmmsxvpNrXORdTrllcNI0T/7Gl/oEkW/X7b+mpC4hu+
	eiA5pUpqWDfluFTxws4D86wTA7OE4l8vwefjkCCnVTPVPPsq5I3RvL24rur1oIg=
X-Google-Smtp-Source: AGHT+IGJKZpf6QQ+S8K3ti23EiAXeRY+081fsTj6EyFFUngV4d81tjNwb7xcXTbrQdu0LscMt/VsWQ==
X-Received: by 2002:a05:6512:3048:b0:533:4785:82ab with SMTP id 2adb3069b0e04-536ac2d6a6bmr9755530e87.1.1727185669530;
        Tue, 24 Sep 2024 06:47:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a86408cesm233908e87.149.2024.09.24.06.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 06:47:48 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:47:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
	vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v17 4/8] drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
Message-ID: <2mug3ii2vi735sk7nwwu2rcj63d3mlgazlhg4sydcxb6uf5nsc@qi5ut5pmajsv>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <8bdf573bfd7e3feb45d7ccb53765a978a685ce2d.1727159906.git.Sandor.yu@nxp.com>
 <20240924-mottled-psychedelic-lorikeet-ef8f4c@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924-mottled-psychedelic-lorikeet-ef8f4c@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_064752_004549_7AF6C566 
X-CRM114-Status: GOOD (  11.88  )
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

On Tue, Sep 24, 2024 at 12:16:27PM GMT, Maxime Ripard wrote:
> On Tue, Sep 24, 2024 at 03:36:49PM GMT, Sandor Yu wrote:
> > +static int cdns_mhdp8501_read_hpd(struct cdns_mhdp8501_device *mhdp)
> > +{
> > +	u8 status;
> > +	int ret;
> > +
> > +	mutex_lock(&mhdp_mailbox_mutex);
> > +
> > +	ret = cdns_mhdp_mailbox_send(&mhdp->base, MB_MODULE_ID_GENERAL,
> > +				     GENERAL_GET_HPD_STATE, 0, NULL);
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	ret = cdns_mhdp_mailbox_recv_header(&mhdp->base, MB_MODULE_ID_GENERAL,
> > +					    GENERAL_GET_HPD_STATE,
> > +					    sizeof(status));
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	ret = cdns_mhdp_mailbox_recv_data(&mhdp->base, &status, sizeof(status));
> > +	if (ret)
> > +		goto err_get_hpd;
> > +
> > +	mutex_unlock(&mhdp_mailbox_mutex);
> 
> That's better I guess, but it's still not a good API design. If you
> can't have concurrent accesses, then cdns_mhdp_mailbox_send et al.
> should take the mutex themselves.

I think that a proper API might be:

int cdns_mhdp_mailbox_send_recv(struct cdns_mhdp_device *mhdp,
			u8 module_id, u8 opcode,
			u16 size, const u8 *message,
			u16 buf_size, u8 *buf);

Internally it should take the lock, exchange the data, then return.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
