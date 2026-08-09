Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB935C5AC67
	for <linux-phy@archiver.kernel.org>; Sun,  9 Aug 2026 01:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcRe5JmcNIRd+Z9KI2/RUmRnjaVKgJkl884IkUBD+sU=; b=2jBEnMe34LX2Hv
	mpuD1iqMtOJSn4QOheLkb9OrJACI9yA65E6LggEPqk3wk4kKynWJ638Q4hfVpANZs8bEY5E0Q2njM
	zVd0r2W9sgxohIsK2Vx+VlZC/afTPsGcy0GWok4g1xISqirFSbJ8M0Afaam5lCIW8uDs5TnRlSki/
	H4s4lP2/8rJcQpQl6LxbdiAeaQGvyn3nO4fTsY1KIwSggwEJuR620VXhakHyM4hZBr5VsuMsaq9YU
	Q6qGYawuD2A0W6acZo24/FtSKSeMztMrJexThJar4K8Hof4/kJLO8YEAvDrh0uFt3OHL725AVfr6r
	3ndpcrPneCVcXuYfzV9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsrv0-00000009rKE-1TlR;
	Sun, 09 Aug 2026 01:01:38 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsruy-00000009rJr-0EZR
	for linux-phy@lists.infradead.org;
	Sun, 09 Aug 2026 01:01:37 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c888c001628so530438a12.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 18:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786237295; x=1786842095; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bTU4eIZnw4U9ZhD6oNkBxDN+wvA8F1rOyrlQvDjEprA=;
        b=iXEe6yBC+xU5ThuxJHgC964gG3W3wj8LTffVclEAhSHK5dYVQPB4exhQjPYc6jyvuj
         FxJyxEe76ntjvVCWpIn7yoUOP/HUafVACFQ1tfg0a2A7WCVYg5H6/+Ly9R15khIzGKg9
         WoGzv6c0S3njEPkppshAY8W4WC8huEVsNDHH7A6o+OslqdBsDkW0iGnjjLmyKNX8s8f1
         hqWPhBt5sgij5yo+YfH9PPFIesueZRihAZQwQQt76VymRtlUeRk7L+DP5TDNFYNEpvcB
         kIvVLV0k5CfWt88kEJNzPFRS20aZJqc9A5DosrDoyX9QfIix6R80LAvpcp07YmXlPQoC
         ej5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786237295; x=1786842095;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bTU4eIZnw4U9ZhD6oNkBxDN+wvA8F1rOyrlQvDjEprA=;
        b=Xsrtj8w3dSIK7SPoDUfDQoc8m1JFaDJzzfvm3sMdZDgkFn7NznbQ5iLY8o8rmHU/0p
         Wr6v0OEGwpZUNchlLxK1C6y54RRZ+1GtkZio8BK7DYJaIf8Hng/UAHGvOgXA6HjRVTf8
         JCzHC8ZTM0SUyqbxC+c7G+EI97odO3rql5VwO5+WiFQ0UzYeTIEnuVUEhXiiyVDVWuCW
         9H1VJR7mOCtPu53ZbJVqCrkcaAIuWmOePc2YbvF6OyCU9C3c4vsA95ja+jaUsSYGGszM
         qKSv3ZQFUC7RN+E3mhLH51/ttUfXMmxcNuj8fqt3+Xx03MgJ+t6aTcNWHuGooWQJvNOS
         7TWQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp3Xcqn/589ogjwJL4J2p94SYmH5IYr8/sApDoMngWibt98AYtcUkkwiTMn8ktnaiteHwtoxOF8f8o=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe0cS3De9awQapka6/77N8FJQ4DAf6GqEZ5gPnGXhj3ju7Dylj
	u0dsgozgs4H0VJ7uBjY/IWgvXl/XXtiR6sreXSDIAzY74hFaasVjWVAt
X-Gm-Gg: AR+sD123fJhENlSVQIXrEhrve1JxnGIw2t0QpQqcgv7J8ZW+Qpy1Ge7ZOhcUT0MS4vG
	l/A8ah9491MDG0xzdqs5DNpwMsl7yWTp8Yu/3lag3tf5UCBr/pm7alDXmImf63HG6ga7cujXPX3
	/lKXz7iGk2dGWMfUkSGMDq8EnXhMWg830Oju+XZF5zB4UIGDbawxYmagF9TslhdEAutm2Wi7evq
	aieYryJhSSYg4df7/OYD5W0iZfdfc+LCeT8+LOrkzwMs+C+IWJhughI2soW0u7Y6Ck0BElwviAu
	DmuhCDvNlmuzLAB9TWKPLy7soB5jdORhpnsHAsoMNMQQY2M8+5SLp+PLTeBnJ32CK11kQ8/bUV+
	0xDv+eF4tERvgdRwArOwT/KBRehpQ9rgsWo8HCgMdWXYRK1wjfDUvxSZrANHuFR0PGPVwI01o1A
	CcyOMrPwd7vwES2tCERCJBB7CFD9AFTPCqriA9iLE=
X-Received: by 2002:a05:6a00:2a0e:b0:848:6c37:cd74 with SMTP id d2e1a72fcca58-84f696a0369mr12238522b3a.22.1786237295147;
        Sat, 08 Aug 2026 18:01:35 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a55f304sm2378524b3a.49.2026.08.08.18.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 18:01:33 -0700 (PDT)
Date: Sun, 09 Aug 2026 09:01:28 +0800
Message-ID: <4da43aa690649fda8565941ee576338b.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
 devicetree@vger.kernel.org, sashiko-bot@kernel.org
Subject: Re: [PATCH 11/17] drm/spacemit: add Saturn DPU DRM device driver
In-Reply-To: <20260725051713.B60E61F000E9@smtp.kernel.org>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
 <20260724-k3-display-v1-11-f22a10a52867@gmail.com>
 <20260725051713.B60E61F000E9@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_180136_126080_04E71C5D 
X-CRM114-Status: GOOD (  21.28  )
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

On Sat, 25 Jul 2026 05:17:13 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Missing IS_ERR() check for 'match' causes an ERR_PTR dereference inside component_master_add_with_match().
> - [Medium] The atomic commit tail stalls the commit pipeline by waiting for flip completion before signaling hardware done.
> --
>
> --- Patch [11]: [PATCH 11/17] drm/spacemit: add Saturn DPU DRM device driver ---
> commit e12174b9614adeccb5a06f03b5944837004e96f4
> Author: Cody Kang <codykang.hk@gmail.com>
>
> drm/spacemit: add Saturn DPU DRM device driver
>
> This commit adds the DRM device for the SpacemiT K3 Saturn display processing
> unit. The SoC has two DPU instances, each driving one CRTC that scans out a
> single primary plane in linear RGB, feeding a downstream DP/eDP controller
> over an OF-graph endpoint.
>
> > diff --git a/drivers/gpu/drm/spacemit/spacemit_drm.c b/drivers/gpu/drm/spacemit/spacemit_drm.c
> > new file mode 100644
> > --- /dev/null
> > +++ b/drivers/gpu/drm/spacemit/spacemit_drm.c
> > @@ -0,0 +1,132 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2025-2026 SpacemiT Co., Ltd.
> > + *
> > + */
>
> [ ... ]
>
> > +static void spacemit_drm_atomic_commit_tail(struct drm_atomic_commit *old_state)
> > +{
> > +	struct drm_device *dev = old_state->dev;
> > +
> > +	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> > +
> > +	drm_atomic_helper_commit_modeset_enables(dev, old_state);
> > +
> > +	drm_atomic_helper_commit_planes(dev, old_state,
> > +					DRM_PLANE_COMMIT_ACTIVE_ONLY);
> > +
> > +	drm_atomic_helper_wait_for_flip_done(dev, old_state);
> > +
> > +	drm_atomic_helper_commit_hw_done(old_state);
>
> [Severity: Medium]
> Does calling drm_atomic_helper_wait_for_flip_done() before
> drm_atomic_helper_commit_hw_done() stall the commit pipeline?

Deliberate: the cmdlist engine reads the old state's DMA buffers
until the frame boundary, so the next commit must not start
programming (nor the old buffers be freed) before the flip
completes. Will add a comment in v2 saying so.

> By waiting for the flip completion before signaling hardware done, the CPU work
> for the next frame (such as state preparation and buffer pinning) is blocked
> until the hardware flip completes.
>
> Should commit_hw_done() be called before wait_for_flip_done() to avoid
> degrading atomic commit performance?
>
> > +
> > +	drm_atomic_helper_cleanup_planes(dev, old_state);
> > +}
>
> [ ... ]
>
> > +int spacemit_drm_of_component_probe(struct device *dev)
> > +{
> > +	struct device_node *ports, *port, *ep;
> > +	struct device_node *remote;
> > +	struct component_match *match = NULL;
>
> [ ... ]
>
> > +	for_each_child_of_node(ports, port) {
> > +		if (!of_node_name_eq(port, "port"))
> > +			continue;
> > +		for_each_child_of_node(port, ep) {
> > +			if (!of_node_name_eq(ep, "endpoint"))
> > +				continue;
> > +			remote = of_graph_get_remote_port_parent(ep);
> > +			if (!remote)
> > +				continue;
> > +			if (of_device_is_available(remote))
> > +				drm_of_component_match_add(dev, &match,
> > +							   compare_of, remote);
> > +			of_node_put(remote);
> > +		}
> > +	}
> > +	of_node_put(ports);
> > +
> > +	if (!match) {
> > +		dev_err(dev, "no downstream component available\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	return component_master_add_with_match(dev, &spacemit_drm_master_ops,
> > +					       match);
>
> [Severity: High]
> Can match be an ERR_PTR here instead of just NULL?

Real; will add the IS_ERR() check in v2.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
