Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92395E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Dec 2024 11:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oM1OGM+1mnhkyXDMBahQfvacb84gLpB98NT+fLhyJUg=; b=UV7w4WtpKNsWDh
	w2Iy8dHfQNfb0Tt+xIu+tnG7n9EaSDHru4RgqhWozaaqJI+oTZdG5u2t2pi4KaW0juS/Suu0gIPp6
	SKaYT9i1zIKjQF6J94sHhChtLWy6kEYr2WseiFcoV/RjBjQISjN9CfueNJUZu1h2D0Y072eTWXf6l
	xdfGTvCmDJJgeUEfr9BpMplZGwRsvASV8Bin3BkP32nV6xMpildCIKug6Su4qstpSu+rUEinpbuLw
	nrlENfPgmyN9e/jnmTTzdZUYdIAmjJNJhQAEW38zt0aUmmc+X1QEVqO3oiXTNv1oHV7Q6UaKQVEo2
	7H1zTnAXDUUd53i3wr4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNVS5-0000000DDbN-1Rqc;
	Tue, 17 Dec 2024 11:09:21 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNVQd-0000000DDNM-2gYa
	for linux-phy@lists.infradead.org;
	Tue, 17 Dec 2024 11:07:53 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53df6322ea7so7037441e87.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Dec 2024 03:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734433670; x=1735038470; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uYia6bkOtOvm8zyMUkFTLmAVFFk1rfM5TLia+8wKurw=;
        b=wSof8217BsqzVb5riG2K6d4IU6K73Z5HH+NjVtDoHaGw0HjZjeMK6lu+4dURJ/lXlB
         f5UvtIcGKZlVIAUg/1VEmlUiAdDKNyh3CqHBZJ0SSR6xqLO2u7XHUksa4yBMHOw/0VGh
         T+He5iKRTzRzllC88tSVK6MrhgfZPin/UD7aABVvdMmADd6isPg6w9fZZgnaT5g+JVVd
         xutdx6hPxSZTFv6LGjpwDo7+OdUWr7hCgbCUyZtC178ojF9LHmHJhU3UY1R/Vg6o1iGm
         vdI2Fwrb8I/dG0XQ4Pq/M+P1dUDfQi6ONBCbY9UTovhBSM0ZlxZJqPLLhssuEgg9xgaL
         mpqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734433670; x=1735038470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYia6bkOtOvm8zyMUkFTLmAVFFk1rfM5TLia+8wKurw=;
        b=nUSdp7De5Gj1nAg44gQ1gWQL4OJPuSZxcIdoZG1i2vxc/1FyMC/yUY6h4RFujp8wqj
         MfFjepbOjeGEzhSi8O1V/MXiIFzy9Or0QoG3gEOojiCooYdd9/ET2KaHIi071yMO7joE
         7M8vDoylb803rfmgnGe3MyYH5HbDcK/PZ/PuieMomYDzmQSrUV78bZ3T2CrVLhfw/+CS
         7dTtBCxBElPe39j80VCixLk7KQa8hC1gE2Uov/JLePgQd4OouGofYwydHIyGSnOS6u/G
         /kXVMsAjQVCv6X+dup2wIT5SIy7EcbEfw5IzDgHLmxsUzUgWBfv04FMQPofrnZpIpRLW
         pALA==
X-Forwarded-Encrypted: i=1; AJvYcCWPZsbx/10mGT1i8MfmyuYFIdnBpUFsexsYfL8TXZ+Ho//YtDWYkKvPvxTSMrmsi0moupfI1MM1EPk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrbCvQx/gCqDIzUJ3yI/zF+f6IB+B4MLHdoPmgqsW/4A5j6/c1
	1nB4Q+7azRJBHLfWBTyFrzhVmtZC3Nys3sW9M6wrKE1365kJ3YY8vHtEZTUOsLU=
X-Gm-Gg: ASbGncv307mS0ybUw5DZ/RKnyE/4kCtA4D8E7JdN4/mwQqNn6M4SgMmkSiMSgW0lM+F
	KGd2a7L48k3v1laafXGW6aZsmhfGHNQ8r2XW6SS5HNk7GqQEeeQ73suYMNIEdypYUIbSIls/lH/
	mjsMqyPgwx8cN21PoZ7Cye9NOk0hDl3Q1lZj5ULxcmdGJMmAi1Lor6Qv5PKSzTBu5GywSms8r+z
	dBn55kWJPbOY5qBIagWNNaGrX5iYLp79aGdDe32S1lnD/wK5NpkCxcyCU/5T5N6Ir0ugw4pUV5/
	3c4ZPn1LGcd3eFAb9APE7fV1eeME/KlzxBna
X-Google-Smtp-Source: AGHT+IF9wRRafyTuXG62lAlU9PV2hBrxozyuUj5pTu0s/yHqf/P45mfDC//C58CWkkxQbTLd1cCzgA==
X-Received: by 2002:a05:6512:4012:b0:53f:22f5:afdb with SMTP id 2adb3069b0e04-540905958a8mr5350614e87.35.1734433669649;
        Tue, 17 Dec 2024 03:07:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9db5sm1122725e87.88.2024.12.17.03.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 03:07:48 -0800 (PST)
Date: Tue, 17 Dec 2024 13:07:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 2/9] drm: bridge: cadence: Update mhdp8546 mailbox
 access functions
Message-ID: <z4cmwy6vh6nncq445hvm23n4ar4quciemvcj5zvofevulyofx6@w266vucwqv7s>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <74bc3f2ff56348afd9d773589236ddf06dc3d45c.1734340233.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74bc3f2ff56348afd9d773589236ddf06dc3d45c.1734340233.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_030751_670533_454B79D9 
X-CRM114-Status: GOOD (  13.56  )
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

On Tue, Dec 17, 2024 at 02:51:44PM +0800, Sandor Yu wrote:
> Basic mailbox access functions are removed, they are replaced by
> mailbox helper functions:
> - cdns_mhdp_mailbox_send()
> - cdns_mhdp_mailbox_send_recv()
> - cdns_mhdp_mailbox_send_recv_multi()
> - cdns_mhdp_secure_mailbox_send()
> - cdns_mhdp_secure_mailbox_send_recv()
> - cdns_mhdp_secure_mailbox_send_recv_multi()
> 
> All MHDP commands that need to be passed through the mailbox
> have been rewritten using these new helper functions.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - remove mhdp helper functions from the patch.
> 
> v18->v19:
> - Use guard(mutex)
> - Add kerneldocs for all new APIs.
> - Detail comments for mailbox access specific case.
> - Remove cdns_mhdp_dp_reg_write() because it is not needed by driver now.
> 
> v17->v18:
> - Create three ordinary mailbox access APIs
>     cdns_mhdp_mailbox_send
>     cdns_mhdp_mailbox_send_recv
>     cdns_mhdp_mailbox_send_recv_multi
> - Create three secure mailbox access APIs
>     cdns_mhdp_secure_mailbox_send
>     cdns_mhdp_secure_mailbox_send_recv
>     cdns_mhdp_secure_mailbox_send_recv_multi
> - MHDP8546 DP and HDCP commands that need access mailbox are rewrited
>   with above 6 API functions.
> 
> v16->v17:
> - Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_mutex
> 
> v12->v16:
>  *No change.
> 
>  drivers/gpu/drm/bridge/cadence/Kconfig        |   1 +
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 487 +++---------------
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  47 +-
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.c   | 212 +-------
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.h   |  18 +-
>  5 files changed, 104 insertions(+), 661 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
