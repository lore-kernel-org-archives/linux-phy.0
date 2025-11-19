Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCCDCF3966
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 16:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnymaKCnDKDk18Ap9UwbjsovclMrjH//35lSkaUj+Qg=; b=TZo1UgFrPrJJQy
	48wN0/Nm0+hFkdnn/yQYoONcWYBxn6vWZEIdEc6xK7rxcLNAiQgRsW3LqVOkYs9JyuTfuTY4N5a4G
	J+OAkgGpMhvwbgv8DtnU1Tj5B4KpdlNxmmfuXocX4XyL31xXvAhXpClISXxKPF7hrDLcTQtJ1kE/J
	4RAaDWIgIKpxfkwH0T5iCouDPrHRd/nc4x9RoAxqSwN3+OLvgNYrAGpLgqUP3v6Eul9keUh9XkDUh
	CFR9AGnY0i6iNKVCcY33OG6ejYdhQ/eWUbN8K1xcA+r5RCWZTFaSDXi05zvp4y1uggDhMGaQAxDvl
	ytninWdpoEx0PavpbPnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLlMt-00000003jcM-0RDw;
	Wed, 19 Nov 2025 16:49:19 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLlMl-00000003jZ4-2prD
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 16:49:13 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-42bb288c219so3640875f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 08:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763570949; x=1764175749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6AOLChH/q7xFQ5th9G1DIz4KNOULF7t5D3A23AyCZ4w=;
        b=Unw392MNPOIXz8SZrCWTvnPbKCAx8HCOoL8pA4kieG3xNmsCLtvr4/9/kNAC+HaFBd
         ZcRg1OOwAovr5fheIOKBBEbWHXr3A0NiQfSJ2+J9PDxfWMQ5WisWiZzJRgSjIjWwVf/Z
         UmINQiQd8fyogBmrGYATnYLIFtRCPRubcx5b08vGHZ/TNaIYA+8de6ueyocfL6tN82DG
         TdBL1+VScX34W/9asbNn91x/F7GcJHNA2I3bkBa84sP+d26L4zMVjpavvcETV/ycMOuE
         vU+LJbDCs5smr4v0UY6c42D/Dib7+A46cj+N2cL5rEZqktwhgPxze7ET8f4S+i64IPSa
         VXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763570949; x=1764175749;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6AOLChH/q7xFQ5th9G1DIz4KNOULF7t5D3A23AyCZ4w=;
        b=f1eTX8wDIooQzm8kuc5FdAljhlCH70Fgit1/PnTqwDtaLBkHLAVPlaU7zvwcr4igQJ
         UBvtnOsBaFPPK+DoiNUWMM6gogxWW17CQTR/atzlGdYMxvMGneHl0ZgvX64XEprnhn9s
         vilPsweCX7rwxcoVoqrVCO8+asaHxji6ny316t9qJrCE/mN5ks9tmsbdVPLETYr3I6pR
         RXrUPRovGCZD+S6NpsNcaN72uiHPCxMsDnlKU2t0VRNgQQjMQSuuFjwFne1j286aIEWM
         mUHtO0fHBIA3UaJ1vKI1nOyz98Mz1evgv7xe1fneH0J0IO13GN3UKaOqBQwG3wJ02Hmx
         jLcw==
X-Forwarded-Encrypted: i=1; AJvYcCWzEYOe2uh30glfJZTgkOfki2ShzkuvUm6s3mohuLBRvKGYIibD+WFmCjFASqMxPn98uhFRdmMBEig=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA3gctH+4laW31KECh0xgOLNG/2BB++JHf0JLoJ05dsGWnGFui
	4X1HbwCBnr8OHWaULBk2sSbVH378nKNl2P0un7Yr634o1aeX314eJRC9JlaiWK55g6E=
X-Gm-Gg: ASbGncviySMVvA76VTojk3q+DiF/M4Ci5Jqd0uF9Hdv1HCQYeGJL2aDg4EzYs3lDD4g
	whqbw6ivohgkikl7SRtkZPdGYtgnzBx90ufrPLxnZrXV062B7hrQQqIz8bVLG83gdPRqgdSBDlb
	jQ9cTIhyItTNB/0o6uOm2pZTTayUGxY8M6OHW8IQFbMPC6qtE5EloAlbun1Bk2xS6u/lfslIm8/
	w4ClrAkWpX81Vaf7FjbU8wwGJf5zh0IJt2Zr+huXnNUdayLb3YDcd98OzJJHQH34m/r3KrqG1w6
	bjSrWDddaFXoBQqmuB0wf937DDVG5Q1Uc9mDwLI32LKlIZw31EtEOxSBRxmk4F1plSs7AV5FMd6
	JN2btNeg0f11EyVdIyMAGf24u9DyRIJzMs/cVk9KYuN+m+EUg/kVzx57bgJx6V13aZy6r8jiLcg
	yHDzC/CC8LsmVzM8qkfTFI21IaSU3NTBMeks+lR+r4Lg==
X-Google-Smtp-Source: AGHT+IEQBWB0Eg1zUiaC+C6Q6xYJagNpfFV4B79UXSjGVI8G4Xbkzgsvf6WhQGX2JHCRNzTrOV+mmw==
X-Received: by 2002:a05:6000:1ace:b0:429:d33e:def1 with SMTP id ffacd0b85a97d-42b59378443mr21197697f8f.29.1763570949083;
        Wed, 19 Nov 2025 08:49:09 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3592sm117957f8f.21.2025.11.19.08.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 08:49:08 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506
 VOP
Message-Id: <176357094817.280640.17849339974679922280.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 17:49:08 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_084911_871154_1AC43134 
X-CRM114-Status: UNSURE (   7.77  )
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

Hi,

On Thu, 06 Nov 2025 10:06:23 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The VOP on rk3506:
> - Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
> - Support RGB interface.
> - Max output resolution is 1280x1280@60fps.
> - WIN1 layer support RGB888/ARGB8888/RGB565.
> - Support Gamma LUT.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/9] dt-bindings: ili9881c: Add compatible string for Wanchanglong w552946aaa
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/15e794bcbc9527736d33c96412ce077bd817d9af
[5/9] drm/panel: ilitek-ili9881d: Add support for Wanchanglong W552946AAA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/89b34ebed02ee39ae02069dcf2e5728aceec9deb

-- 
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
