Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265B5C982FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 06:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbDr5f29Ygc4VCpKpjPn66oRltIJ6u0HZtZ2RP3a0bo=; b=RlNNNEwOYALdEv
	37q0dToKj1IRS7SrZY9AvFBFYluZ0SELv/X6TTn5Esm1cYD9cFh7eM1xniZ2e+5wxd7uwbiO6HwXA
	LsAI9TFvIo7XK5LfOebtRU7Zc1wy5lnj8oG9YTuMmnvzGgYox1OZ4N9EJ4PNWYEW/YU1RNLACozFS
	B5uQZHO0iZPqYRRKaozhYQ8gFna5wMqKC3o17lY4VMuYKAlbrWeJUKcRXEE+ZXNMRJ3T0ICW+46wB
	stKbzGiGxnIFhj+zm+3X7B8z3gr6rbh451ys919KtqpaTSbuvArQrpyAZTU8YPcOS+EKhEPd3XTLA
	EYgnWp+Eb/3Ng9aHXgaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tjm-00000004JX5-3Zuj;
	Tue, 22 Sep 2026 06:12:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8tjm-00000004JWw-0ZZZ
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Sep 2026 06:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=KARpXPYlM2wZhUyrKSogeHTLUD5EXLXuvN4rvW+uIK8=; b=aeXAEYBFI44qPPu1eEF5Cliwh6
	XKiR2sNIxnKkoqFzmZuc40Z4tqdbtlGXpcxChrtHFi9jUVgyiFRUqycVJKw8bymwe15YeVgWnll/e
	kVVgKIGevgjHZyTvZT9mCbk4ndVoP3fqz3M97gLduZ/8k9K4v8u8Bv9RScGglcgOY21L7Ou+FDt71
	pUt91xCmABeU+Gb1lvTyvoRNTU5udtPruh1NJI9fphDV2tSDcUirGoVrCvbScKuitVCSEk45K6Uqa
	dLxUuIm6eo9JA77wpTf+ZLMjW3rH9jUTx9xT84YMJsYCrxadAQuLKyJpZBaO0dspJvydWE81IWMcx
	zx7X1gQQ==;
Received: from mail-pz2-x0c.google.com ([2607:f8b0:4864:3b::c])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8tjW-0000000D9BA-1kjQ
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 06:12:07 +0000
Received: by mail-pz2-x0c.google.com with SMTP id d2e1a72fcca58-87ac7657a24so786270b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 23:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790057519; x=1790662319; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KARpXPYlM2wZhUyrKSogeHTLUD5EXLXuvN4rvW+uIK8=;
        b=Qp0+0NsBngbJ1vW6R1sDb2y6MB25dSKdMvCTbKYLMKZ2K3wEMpF4X6hd0LL64QX9uk
         rYwXpn2U+vQnjcyYyC+NqAF5t1FouuY/SIWX1BGv6nmCg8JkYUZ9F1ypF8XX/67+trxf
         H7I4cGzcz0iMlZi5OfY9MCedYnO3mxiE0PYNFKSlWw00NTwqzj6zN/Anj8T62Z26Ges2
         bH79N22hszkq3Eh/x3vGV6rsmODTrApL0SeuCy5lhxd/X6O37foniXzu1BUoN0MR9OpB
         qxPMXjVFACqsLeiF+2TtJI24UpMxkhlJbR+vBr5sca25+wfxoBM9aldPfEUZG7Tdja4r
         m5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790057519; x=1790662319;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KARpXPYlM2wZhUyrKSogeHTLUD5EXLXuvN4rvW+uIK8=;
        b=1XRO2sjmC39lslczDxybnUgmqedNmsHBfF0gnEcaVQO5V+QfbWLagV02Wc2QUjwPNF
         WSY/C93x6A+JBCClTkyI810vY4n8p/gIBgE2SrGezmbGr4c9vQo9zj7fnMTpMZYZLPtj
         nUOcnxQV+7qDcpHnAcDobkLUfIT3c/BwyFSaUVnia4FkfbBD6FRgR0dv0E9QSzcl2/Ug
         4fSQloURkVS69V+Gf8zTfRyH2AByce9vyo78Mbgt7tIupJmfCi/xpHDvkZ1UD+KpBKV1
         i93DC8EromTndbKpxWnMKkaAPwRjLZlImIMZHD06FuP+NOT9lP4lFvDDQqx1N41WTKhQ
         D8PA==
X-Forwarded-Encrypted: i=1; AKwUvBwI+1gaLbbsKlEu0+j7iRWjXH/Y3s1C3AGSRfM9HLW9A0wzSfvHZz/srxXP58gAhVvQbouqECAoRa4=@lists.infradead.org
X-Gm-Message-State: AFuF++mlzTGR2pT46/d3ukKgIHfl4nifNCBzOtO9T08HMEHzWqr3z5dY
	t2QgyPQpRoABIwZGN1CzYSK5VHWqD5XeQPeu/3F02+PFgWYHC+xoG+P6
X-Gm-Gg: AYBFou1O7RrP3q4FgY6K53VdfiXI3a/zPta1iezuOSL/wogg49imqYHLmDdwWb4nNlR
	nmdgKr4zWOzLlQ0Zn47FxnGSxASMURTwAXYbgMFP7i3RDdgBBq3rOkqatkxZooIYJxVxboWkhVj
	uux1HfUBIMF+a+nKy/1RjlN2fhJO40RzuP/TjpdYENzP/XUv77mATHIx/DNP33Q40THRY5VLNHJ
	GMbZ18gKpPSdpXYfvoJaet7WgNSc3BNEEuMbmP7AmQBWzLvHk/VqAqQ2VENZFoNS/cJRwGEWVlK
	EA5DaJwm9egByI6dCK32W0s5KAQYxv9VpzpfxpuuOWDjF1CJtpisRg8tire6a95y1xhl8ApDjB7
	NytWSc40hJnx05pFHlydB5At/d7NEF22dYqbHIQF3YFU/MfJgIBzwyS8CZJAu3DSKX05D7jhggF
	9y65D6v0/a3RKmxgHaMQImetKnNyRNkH1tYZDfomC8pRnId4LBc1QUHR1DakB6robGMRUD
X-Received: by 2002:a05:6a00:844:b0:879:1046:f4a2 with SMTP id d2e1a72fcca58-87c83c49a03mr112992b3a.33.1790057519137;
        Mon, 21 Sep 2026 23:11:59 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-87c31ee8a96sm317135b3a.20.2026.09.21.23.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 23:11:58 -0700 (PDT)
Date: Tue, 22 Sep 2026 14:11:06 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Hans de Goede <hansg@kernel.org>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Minas Harutyunyan <hminas@synopsys.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Heiko Stuebner <heiko@sntech.de>, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [RFC PATCH 4/5] usb: dwc3: core: Adapt the return value changed
 for disabled blob
Message-ID: <arIb22v8tjUBpGEn@inochi.infowork>
References: <20260922024724.191412-1-inochiama@gmail.com>
 <20260922024724.191412-5-inochiama@gmail.com>
 <2026092202-armband-avatar-0dd7@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2026092202-armband-avatar-0dd7@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_071203_060429_C1447DD2 
X-CRM114-Status: UNSURE (   9.89  )
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

On Tue, Sep 22, 2026 at 07:34:31AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Sep 22, 2026 at 10:47:19AM +0800, Inochi Amaoto wrote:
> > Check EOPNOTSUPP for disabled helper function as the change in phy core.
> 
> That says what, but not why.  And what "as the change" specifically?  Be
> verbose please.
> 
> thanks,
> 
> greg k-h

Thanks for this reminder, I will express this verbosely in the
next version.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
