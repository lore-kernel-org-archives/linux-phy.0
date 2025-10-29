Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4042BCCF9E9
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 09:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leVhyJ5+D1E4bbNdisFtO+GPoz1uOdYVk1fvTl5IxP0=; b=W/kd7v+qleIF23
	AkfPQZisJl9s5YGsI/cy8RB2B0MZOPPUcd/Zn1kruROb62Kp892qA+gkFxrD1j3aCuXMiAJiYQZEY
	sV2wNGgDkD39LqXMFFrQC54Hcs7dtKrTuMxdXg/Bsx/Zj0lKUERaPDX5peNWTzUC8h8Pr4upgd4yi
	XFCEy5ajFiKVOC736dUQIeOQTRltXfg+exEGkBnn3Kkktc5wkJPKzJB8zr98xso4Jy8o61/6fMMjq
	32427uWVyXW5183K0rL0yDFxGwlELt4Ec+/mdjmvrKz4wGtS+O5ZMrkijrm6Iyp3czqhJ0zyZTbdB
	D8m+NbIMIR7DvriOcrDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE2ki-00000000YQN-3KNf;
	Wed, 29 Oct 2025 09:46:00 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE2kg-00000000YNm-0Tog
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 09:45:59 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-781421f5bf5so78768247b3.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 02:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761731156; x=1762335956; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T+0dV49Z0hZQvL1JwoyFgg+j9v/HxeFYx2d1Gt9wCQ4=;
        b=a+peMUuGxCoOvXz6HsNOPn78cLSWdz7CQzNVVx9ieT+qqaWW0UTsKDO2CAX9phlyZY
         DMjv/vgJTO582mXirCldoXVbraQXg2IcZFvpy/lL/bihElzUYqFKODhaDHNgZzxStdrj
         TlhfknfEd8nUy7MsJ6CmQ6KgQNYuO7tIpTKikbjAQuDu8aLoC1qmeR/CrpUf8jXpeQlI
         w07oQdqyLcILxk7wAMIMT7OVH6CmAE17m/RL1TyIMCuz95jVJ++A+NKFOyQV9PcJd08n
         yVtHdA69noI9y0k1qOCQFTcXqeg1vxCxXELquXwHDwvHg1JVu7B1e0805T32Tc+Q5IuX
         SoAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731156; x=1762335956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+0dV49Z0hZQvL1JwoyFgg+j9v/HxeFYx2d1Gt9wCQ4=;
        b=sXzT5GvGnBy2zYhpHpwXGtyt41T0cMzXQ7qn3A2ulSvs9bl+rz+at1Lrnt5KL7Q6vb
         g7cbsnvi7001eypqjAdc25k0iznTJikLeN+ulMVjOwnQvEjAlhs4yIdUf5pvkpCUlB+P
         xOPdO2y4hBshQDfNPVuiB1X2J+IHru0YYNEdZV99yl5R97s2CUS2eT5QxTGIXv1DPhZA
         d8Z+1VfkG/C1sN7yoYybfvY7v0t+C2Lbusx4pMGxL6zY6rVdptS1vc+pdZcfeo+F/mR6
         ljnnBfKU19d7LZWmugCI3YrpCyWtuyQLsJhIAxAxv75uFpB7dM1jeTrj8iocBBS0L96q
         eMjw==
X-Forwarded-Encrypted: i=1; AJvYcCU6KWnRfYcyTnnz893gJiKcOwKCnq0Aqnkgz+vvDa57ZucgtUT4IeO4SOA+BgqYsJnMyZKVCu2V86Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQBW6KGjpDYNXbdSpn1ONZI1L05Gvx1Ka5JgdNV1Q+4cmMF3AU
	AH7PPo6t30EN3SVsmmTTDooC5kxm6CA0yCwM9cpTX/FBI0DAG0I1wOeoQP5j+8PvbY17+xcTjl0
	lMHrMzDhRNRkdAY+ZK2JrHggsKPKb3bA=
X-Gm-Gg: ASbGnctPlUaNWyvc/uJMVeAIN5CCumb1SvPXMiUXbPI2XMWzVSqCKl50yDDv4PMCig1
	E/LR7Ba0pOkUwo5sE4ItUP8rK/NIWt/y8eXpU7QgDDHirWx20QpOckOtOHQF3t5TfGAYQuuj0NN
	CDKMLosk/EQ75UqxwHr8DQoXM9qP3HyHtCuLekU3UAMmNbDerUkvybHPzRAJWEDOFg668yh661n
	xT03gkPVWfRN8icySNmPbi0dr98ryCqTr47KlPgPip3IBIWlnKoNWxGon3hK6JDft/DLQ==
X-Google-Smtp-Source: AGHT+IFXTGFBQZQCvoFTcD2XW69zJNvRv2jA1skYdjLaN3X9V8WOQAc0sJLs73yBIhsOL2y0JL1ybcsga9Zkjczkf4s=
X-Received: by 2002:a05:690c:680d:b0:785:bfd8:c4ad with SMTP id
 00721157ae682-78629298707mr36580707b3.3.1761731156514; Wed, 29 Oct 2025
 02:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
In-Reply-To: <20251029071435.88-11-kernel@airkyi.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Wed, 29 Oct 2025 17:45:45 +0800
X-Gm-Features: AWmQ_blYmsodv_vg4uKolYRe0NzpqIhwJ3rq0FrOe8J4voY-HqIG6eRi0roVBPc
Message-ID: <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_024558_159572_108FC8F2 
X-CRM114-Status: UNSURE (   8.90  )
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

> +&i2c4 {
> +       i2c-scl-rising-time-ns = <475>;
> +       i2c-scl-falling-time-ns = <26>;
> +       status = "okay";
> +
> +       usbc0: typec-portc@22 {
> +               compatible = "fcs,fusb302";
> +               reg = <0x22>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&usbc0_int>;
> +               vbus-supply = <&vbus_typec>;
> +
> +               usb_con: connector {
> +                       compatible = "usb-c-connector";
> +                       label = "USB-C";
> +                       data-role = "dual";
> +                       power-role = "dual";
> +                       try-power-role = "sink";
> +                       op-sink-microwatt = <1000000>;
> +                       sink-pdos =
> +                               <PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +                       source-pdos =
> +                               <PDO_FIXED(5000, 1500, PDO_FIXED_USB_COMM)>;
> +
> +                       altmodes {
> +                               displayport {
> +                                       svid = /bits/ 16 <0xff01>;
> +                                       vdo = <0x00001c46>;
> +                               };
> +                       };
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +
> +                                       usbc_hs: endpoint {
> +                                               remote-endpoint = <&u2phy0_typec_hs>;
> +                                       };
> +                               };
> +

Why USB2 PHY needs to be notified for Type-C connection?

> +                               port@1 {
> +                                       reg = <1>;
> +
> +                                       usbc_ss: endpoint {
> +                                               remote-endpoint = <&tcphy0_typec_ss>;
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +
> +                                       usbc_dp: endpoint {
> +                                               remote-endpoint = <&tcphy0_typec_dp>;
> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +};
> +

.....
>
>  &u2phy0 {
>         status = "okay";
> +
> +       port {
> +               u2phy0_typec_hs: endpoint {
> +                       remote-endpoint = <&usbc_hs>;
> +               };
> +       };
>  };
>

There is no switch and mux, how to co-work with Type-C?

Best regards,
Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
