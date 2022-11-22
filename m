Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE61C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 18:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLF5R7kmIW+tt1Bc45tJMQBetMCy+iQlvnyNBdNKFzI=; b=VDOoK+TzsA51Pm
	zcYdM351hT9dyGKk2o5G5/fZ459DvVuzRSRibvMRgtqqA8QvIlOF5fGBku1xZdX6EnARTtzXavq/V
	nP8Q0KbI5bS0RxTBmlv/nDFXmke5xQTvmI9Fn/x4VVcJ/oJFxL2lbR0Or57/EREeAHXA/Q4FHNw36
	JHVj4DUta5mbo7j8oUk/3scY70etOp/yNZm7iGlzqI7+aT9gY0KYYVZ3G1kQOVRYiOYfxqm7qI6qY
	fvVj/a6v5LvLgt6Bwt/3oprn0Vuz8LeRsr+qTVo485vZzyoTjLETeI/zZ1GX4gOJbXoC4XD6jYoR0
	uzt2oHpUTyUjHAOTEM0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxXi4-00BERy-SI; Tue, 22 Nov 2022 18:09:28 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxXhu-00BEPc-0V; Tue, 22 Nov 2022 18:09:19 +0000
Received: by mail-pl1-x630.google.com with SMTP id y4so14445412plb.2;
        Tue, 22 Nov 2022 10:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KRMhYB9UPO2WtEP0UfvsFBZ6e6YdwWgScP76/C9Yycs=;
        b=M+5E7ETSufWPx+E2mZBDiYBpsWvhg9NS+0oud8xN7L+y/ywZzwWx/9Yk/wEeBqhXWv
         7HrtF9k+BVmfh30B3TvMo3srXrtTKrKImB11ADbg1f6WsBv8/+LRwJRqE2Q2ZoycdkUM
         yVYfNaFdBfvZtt0zDSu2yVoH73SydK6cyBkNUXm1Xvd8zNFMJAs2SwlqDJbo++OFjXNf
         yJNhBwgY6ZC8S79K4yR70xw96ZczaPZj9p6nLble4XdItCPmSGZ/FyJbZVjHQ1/2TECb
         4W2ozvOAxBJZkfCy7UCiNbT9O5FjRR1FKuS74TUBYfJMPe0ds2AH3L+N7xW4T2fSVNyO
         J3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KRMhYB9UPO2WtEP0UfvsFBZ6e6YdwWgScP76/C9Yycs=;
        b=26YxARrRfbGy/W5VCfIstNelI7YYUMTwwW7t5m1YSWKvGGG7gOW8Z3FH9eHI0fi2Cv
         XPUwlSS5YzJNF9SJnzM1nb7/aPTZy8xRABdVGQHOBc+oTPqLbnhczvXMbAM4wQTxpqn9
         eBMohVMKdurcHgF8GktE6TuzJdRfEsN16QstdnvcLfOI+MT0eaPio2IhN/Y2P6Jin9I9
         BHPuFFpWD2YMZcGPSBE0Ib+/3Km1uGwRPKNIwBfwcNoHAbLeaBj4KbV8COC6+MYTfxKk
         ZQPfQiUCM7+noCVrAi1OGfWHY7plfndTam59G0TLZx05uN5XZk8PqZ30F9W2S9KAYbIs
         yoHA==
X-Gm-Message-State: ANoB5plQzjpG+2bw1lHSdW8IHZo/tO61dCp8rMZUfSHKKAdRjj+pN+Oj
	YKZsrLG99Z8R3KZLruxcOi3lVXojHLugQwmh7OA=
X-Google-Smtp-Source: AA0mqf4AGbu14xUfrouQH/rCMsj54a7vqxbpp4i6D4+jiZZqOK8c52s9h5B66FphmMpWdVoYct8FUOYE5AJyW6IBqDc=
X-Received: by 2002:a17:90a:4147:b0:214:2214:869e with SMTP id
 m7-20020a17090a414700b002142214869emr33794590pjg.76.1669140552412; Tue, 22
 Nov 2022 10:09:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1669013346.git.Sandor.yu@nxp.com> <be4532b834109595b0fbf3562bf072caf2852a01.1669013346.git.Sandor.yu@nxp.com>
In-Reply-To: <be4532b834109595b0fbf3562bf072caf2852a01.1669013346.git.Sandor.yu@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 22 Nov 2022 15:08:54 -0300
Message-ID: <CAOMZO5AwwyZofwQNRnamNiLcj74HayNgocKsKx9epNGm8O-8-A@mail.gmail.com>
Subject: Re: [PATCH v4 01/10] drm: bridge: cadence: convert mailbox functions
 to macro functions
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kishon@ti.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, alexander.stein@ew.tq-group.com, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_100918_114786_0CEE3193 
X-CRM114-Status: UNSURE (   6.76  )
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

Hi Sandor,

On Mon, Nov 21, 2022 at 4:27 AM Sandor Yu <Sandor.yu@nxp.com> wrote:
>
> Mailbox access functions could be share to other mhdp driver and
> HDP-TX HDMI/DP PHY drivers, move those functions to head file
> include/drm/bridge/cdns-mhdp-mailbox.h and convert them to
> macro functions.

What is the reason for converting the functions to macro?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
